inherited UserDefineF: TUserDefineF
  Tag = 2
  Left = 667
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 625
  ClientWidth = 671
  OldCreateOrder = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 671
    Height = 625
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 583
      Width = 669
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        669
        41)
      object BitBtn1: TAdvGlowButton
        Left = 579
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 79
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
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
    object xpPageControl1: TxpPageControl
      Left = 1
      Top = 1
      Width = 669
      Height = 582
      ActivePage = userTab
      Align = alClient
      ParentShowHint = False
      ShowHint = True
      Style = pcsXP
      TabHeight = 30
      TabOrder = 1
      TabPosition = tpTop
      BorderColor = clSilver
      TabTextAlignment = taCenter
      object userTab: TxpTabSheet
        Caption = '  '#1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585'  '
        Color = clWindow
        BGStyle = bgsNone
        GradientStartColor = clWindow
        GradientEndColor = clSilver
        GradientFillDir = fdTopToBottom
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 661
          Height = 542
          Align = alClient
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 0
          DesignSize = (
            661
            542)
          object Label1: TLabel
            Left = 580
            Top = 137
            Width = 77
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
          end
          object Label3: TLabel
            Left = 611
            Top = 59
            Width = 46
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
            FocusControl = DBEUserName
          end
          object Label4: TLabel
            Left = 612
            Top = 85
            Width = 45
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
          end
          object Label10: TLabel
            Left = 588
            Top = 111
            Width = 69
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1705#1585#1575#1585' '#1705#1604#1605#1607' '#1593#1576#1608#1585
          end
          object Label9: TLabel
            Left = 619
            Top = 34
            Width = 38
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1705#1575#1605#1604
            FocusControl = DBEUserName
          end
          object Label5: TLabel
            Left = 412
            Top = 344
            Width = 123
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575#1610' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587
          end
          object Label6: TLabel
            Left = 251
            Top = 344
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '
          end
          object Label11: TLabel
            Left = 571
            Top = 163
            Width = 86
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1662#1610#1588' '#1601#1585#1590
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label13: TLabel
            Left = 601
            Top = 189
            Width = 56
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1585#1608#1593' '#1575#1593#1578#1576#1575#1585
            FocusControl = DBEBeginActiveDate
          end
          object Label14: TLabel
            Left = 415
            Top = 190
            Width = 47
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1662#1575#1610#1575#1606' '#1575#1593#1578#1576#1575#1585
            FocusControl = DBEEndActiveDate
          end
          object Label17: TLabel
            Left = 413
            Top = 366
            Width = 122
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1586#1608#1606#1705#1606' '#1607#1575#1610' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587#1610
          end
          object Label2: TLabel
            Left = 632
            Top = 216
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1610#1605#1610#1604
          end
          object Label7: TLabel
            Left = 202
            Top = 365
            Width = 73
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1610#1610#1606' '#1711#1585#1608#1607' '#1705#1575#1585#1610
            Visible = False
          end
          object SpeedButton1: TAdvGlowButton
            Left = 538
            Top = 340
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            ImageIndex = 26
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 11
            OnClick = SpeedButton1Click
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
            Left = 366
            Top = 340
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            ImageIndex = 26
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 20
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
          object SBAccessToZonkan: TAdvGlowButton
            Left = 538
            Top = 363
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            ImageIndex = 26
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 21
            OnClick = SBAccessToZonkanClick
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
          object SpeedButton6: TAdvGlowButton
            Left = 81
            Top = 360
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
            Anchors = [akTop, akRight]
            ImageIndex = 65
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
            Visible = False
            OnClick = SpeedButton6Click
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
          object GroupBox1: TGroupBox
            Left = 1
            Top = 32
            Width = 242
            Height = 267
            Anchors = [akTop, akRight]
            Caption = #1578#1589#1608#1610#1585' '#1575#1605#1590#1575
            TabOrder = 12
            DesignSize = (
              242
              267)
            object DBImage1: TImage
              Left = 7
              Top = 21
              Width = 226
              Height = 206
              Anchors = [akTop, akRight]
              Stretch = True
            end
            object xpBitBtn3: TAdvGlowButton
              Left = 48
              Top = 233
              Width = 73
              Height = 25
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Caption = #1578#1594#1610#1610#1585
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 37
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = xpBitBtn3Click
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
            object xpBitBtn2: TAdvGlowButton
              Left = 131
              Top = 233
              Width = 70
              Height = 25
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Caption = #1606#1605#1575#1610#1588
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 103
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = xpBitBtn2Click
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
              Left = 8
              Top = 233
              Width = 33
              Height = 24
              Caption = #1575#1605#1590#1575#1569' '#1605#1608#1602#1578
              Font.Charset = ARABIC_CHARSET
              Font.Color = clMaroon
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
              TabOrder = 2
              Visible = False
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
          end
          object DBLkCBAccessID: TDBLookupComboBox
            Left = 320
            Top = 134
            Width = 240
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'AccessID'
            DataSource = DSForm
            KeyField = 'ID'
            ListField = 'Title'
            ListSource = DMUserDefine.DAccess2
            ParentBiDiMode = False
            TabOrder = 4
          end
          object DBETitle: TDBEdit
            Left = 410
            Top = 30
            Width = 150
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Title'
            DataSource = DSForm
            TabOrder = 0
          end
          object DBEUserName: TDBEdit
            Left = 410
            Top = 56
            Width = 150
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UserName'
            DataSource = DSForm
            TabOrder = 1
          end
          object ActionToolBar1: TActionToolBar
            Left = 0
            Top = 0
            Width = 661
            Height = 27
            ActionManager = ActionManager
            Caption = 'ActionToolBar1'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            EdgeOuter = esRaised
            Orientation = boRightToLeft
            Spacing = 0
          end
          object EdtPassword: TEdit
            Left = 410
            Top = 82
            Width = 150
            Height = 21
            Anchors = [akTop, akRight]
            PasswordChar = '*'
            TabOrder = 2
            OnKeyPress = EdtPasswordKeyPress
          end
          object EdtConfirmPassword: TEdit
            Left = 410
            Top = 108
            Width = 150
            Height = 21
            Anchors = [akTop, akRight]
            PasswordChar = '*'
            TabOrder = 3
            OnKeyPress = EdtConfirmPasswordKeyPress
          end
          object DBCBIsSecretariatStaffer: TDBCheckBox
            Left = 440
            Top = 302
            Width = 120
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1605#1606#1583' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1587#1578' '
            DataField = 'IsSecretariantStaffer'
            DataSource = DSForm
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBLkCBDefaultSec: TDBLookupComboBox
            Left = 320
            Top = 160
            Width = 240
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'DefaultSec'
            DataSource = Dm.Dusers
            ParentBiDiMode = False
            TabOrder = 5
          end
          object DBEBeginActiveDate: TDBShamsiDateEdit
            Left = 471
            Top = 187
            Width = 89
            Height = 21
            Anchors = [akTop, akRight]
            CheckValidity = True
            ShowMsg = False
            DataField = 'BeginActiveDate'
            DataSource = DSForm
            TabOrder = 6
          end
          object DBEEndActiveDate: TDBShamsiDateEdit
            Left = 320
            Top = 187
            Width = 89
            Height = 21
            Anchors = [akTop, akRight]
            CheckValidity = True
            ShowMsg = False
            DataField = 'EndActiveDate'
            DataSource = DSForm
            TabOrder = 7
          end
          object DBChBoHasSecureLetterAccess: TDBCheckBox
            Left = 390
            Top = 239
            Width = 170
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1606#1575#1605#1607' '#1607#1575#1610' '#1605#1581#1585#1605#1575#1606#1607
            DataField = 'HasSecureLetterAccess'
            DataSource = DSForm
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 384
            Width = 661
            Height = 161
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1610#1610#1606' '#1587#1605#1578' '#1705#1575#1585#1576#1585
            TabOrder = 13
            DesignSize = (
              661
              161)
            object Label8: TLabel
              Left = 591
              Top = 21
              Width = 58
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1605#1578' '#1575#1589#1604#1610
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 591
              Top = 47
              Width = 48
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1605#1578' '#1583#1608#1605
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 590
              Top = 102
              Width = 58
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1605#1578' '#1670#1607#1575#1585#1605
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 590
              Top = 128
              Width = 53
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1605#1578' '#1662#1606#1580#1605
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 593
              Top = 75
              Width = 54
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1605#1578' '#1587#1608#1605
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 200
              Top = 22
              Width = 106
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1705#1575#1585#1610' '#1587#1605#1578' '#1575#1589#1604#1610
            end
            object Label21: TLabel
              Left = 210
              Top = 49
              Width = 96
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1705#1575#1585#1610' '#1587#1605#1578' '#1583#1608#1605
            end
            object Label22: TLabel
              Left = 204
              Top = 76
              Width = 102
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1705#1575#1585#1610' '#1587#1605#1578' '#1587#1608#1605
            end
            object Label23: TLabel
              Left = 200
              Top = 102
              Width = 106
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1705#1575#1585#1610' '#1587#1605#1578' '#1670#1607#1575#1585#1605
            end
            object Label24: TLabel
              Left = 204
              Top = 128
              Width = 101
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1705#1575#1585#1610' '#1587#1605#1578' '#1662#1606#1580#1605
            end
            object SpeedButton5: TAdvGlowButton
              Left = 330
              Top = 44
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              OnClick = SpeedButton5Click
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
            object SpeedButton3: TAdvGlowButton
              Left = 565
              Top = 44
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 26
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 11
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
            object SpeedButton2: TAdvGlowButton
              Left = 565
              Top = 17
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 26
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 12
              OnClick = SpeedButton2Click
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
              Left = 329
              Top = 122
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
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
            object SpeedButton8: TAdvGlowButton
              Left = 564
              Top = 96
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 26
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 14
              OnClick = SpeedButton8Click
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
            object SpeedButton9: TAdvGlowButton
              Left = 564
              Top = 122
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 26
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 15
              OnClick = SpeedButton9Click
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
            object SpeedButton11: TAdvGlowButton
              Left = 565
              Top = 70
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 26
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 16
              OnClick = SpeedButton11Click
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
            object SpeedButton10: TAdvGlowButton
              Left = 329
              Top = 70
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 17
              OnClick = SpeedButton10Click
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
            object SpeedButton12: TAdvGlowButton
              Left = 329
              Top = 96
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 18
              OnClick = SpeedButton12Click
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
            object SpeedButton13: TAdvGlowButton
              Left = 33
              Top = 19
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 19
              Visible = False
              OnClick = SpeedButton6Click
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
            object SpeedButton14: TAdvGlowButton
              Left = 33
              Top = 46
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 20
              Visible = False
              OnClick = SpeedButton6Click
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
            object SpeedButton15: TAdvGlowButton
              Left = 33
              Top = 72
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 21
              Visible = False
              OnClick = SpeedButton6Click
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
            object SpeedButton16: TAdvGlowButton
              Left = 33
              Top = 99
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 22
              Visible = False
              OnClick = SpeedButton6Click
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
            object SpeedButton17: TAdvGlowButton
              Left = 33
              Top = 127
              Width = 22
              Height = 22
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
              Anchors = [akTop, akRight]
              ImageIndex = 65
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 23
              Visible = False
              OnClick = SpeedButton6Click
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
            object SpeedButton18: TAdvGlowButton
              Left = 11
              Top = 19
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 78
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 24
              Visible = False
              OnClick = SpeedButton18Click
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
            object SpeedButton19: TAdvGlowButton
              Left = 11
              Top = 46
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 78
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 25
              Visible = False
              OnClick = SpeedButton19Click
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
            object SpeedButton20: TAdvGlowButton
              Left = 11
              Top = 72
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 78
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 26
              Visible = False
              OnClick = SpeedButton20Click
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
            object SpeedButton21: TAdvGlowButton
              Left = 11
              Top = 99
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 78
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 27
              Visible = False
              OnClick = SpeedButton21Click
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
            object SpeedButton22: TAdvGlowButton
              Left = 11
              Top = 127
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              ImageIndex = 78
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 28
              Visible = False
              OnClick = SpeedButton22Click
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
            object DBLkCBFromOrgTitle: TDBLookupComboBox
              Left = 354
              Top = 19
              Width = 210
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'FromOrgTitle'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'Title'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
            end
            object DBLkCBSecondOrgTitle: TDBLookupComboBox
              Left = 354
              Top = 45
              Width = 210
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'SecondOrgTitle'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'Title'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 1
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 354
              Top = 97
              Width = 210
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'FourOrgTitle'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'Title'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 354
              Top = 123
              Width = 210
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'FiveOrgTitle'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'Title'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 3
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 354
              Top = 71
              Width = 210
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'TreeOrgTitle'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'Title'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 4
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 105
              Top = 19
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'GroupName1'
              DataSource = DSForm
              Enabled = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'GroupName1'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 5
            end
            object DBLookupComboBox6: TDBLookupComboBox
              Left = 105
              Top = 45
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'GroupName2'
              DataSource = DSForm
              Enabled = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'GroupName2'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 6
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 105
              Top = 71
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'GroupName3'
              DataSource = DSForm
              Enabled = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'GroupName3'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 7
            end
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 105
              Top = 97
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'GroupName4'
              DataSource = DSForm
              Enabled = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'GroupName4'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 8
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 105
              Top = 123
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'GroupName5'
              DataSource = DSForm
              Enabled = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ListField = 'GroupName5'
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 9
            end
          end
          object DBEEmail: TDBEdit
            Left = 320
            Top = 214
            Width = 240
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'Email'
            DataSource = DSForm
            ParentBiDiMode = False
            TabOrder = 8
            OnEnter = DBEEmailEnter
            OnExit = DBEEmailExit
          end
          object DBCheckBox1: TDBCheckBox
            Left = 398
            Top = 259
            Width = 162
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1575#1585#1580#1575#1593#1575#1578' '#1605#1581#1585#1605#1575#1606#1607
            DataField = 'CanViewSecureRecommite'
            DataSource = DSForm
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 104
            Top = 361
            Width = 97
            Height = 21
            DataField = 'GroupID'
            DataSource = DSForm
            KeyField = 'GroupID'
            ListField = 'GroupName'
            ListSource = Dm.dsChartWorkGroup
            TabOrder = 15
            Visible = False
          end
          object chkShowPassword: TCheckBox
            Left = 298
            Top = 106
            Width = 97
            Height = 17
            Caption = #1606#1605#1575#1610#1588' '#1585#1605#1586#1593#1576#1608#1585
            TabOrder = 16
            Visible = False
            OnClick = chkShowPasswordClick
          end
          object DBCheckBox2: TDBCheckBox
            Left = 262
            Top = 322
            Width = 298
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607' '#1576#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1587#1575#1610#1585' '#1587#1605#1578' '#1607#1575' '#1608' '#1575#1605#1705#1575#1606' '#1581#1584#1601' '#1575#1585#1580#1575#1593
            DataField = 'CanRecommiteWithOtherOrg'
            DataSource = DSForm
            TabOrder = 17
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object chkArchiveClassification: TDBCheckBox
            Left = 350
            Top = 281
            Width = 210
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1575#1587#1606#1575#1583' '#1605#1581#1585#1605#1575#1606#1607' '#1576#1575#1610#1711#1575#1606#1610
            DataField = 'canViewClassifiedArchiveDocs'
            DataSource = DSForm
            TabOrder = 18
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 264
            Top = 303
            Width = 120
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1576#1585' '#1705#1575#1585#1578#1575#1576#1604' '#1575#1587#1578
            DataField = 'iscartableuser'
            DataSource = DSForm
            TabOrder = 19
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object xpTabSheet2: TxpTabSheet
        Caption = ' '#1604#1610#1587#1578' '#1705#1575#1585#1576#1585#1575#1606' '
        Color = clWhite
        BGStyle = bgsNone
        GradientStartColor = clWhite
        GradientEndColor = clSilver
        GradientFillDir = fdTopToBottom
        object DBGFromORG: TYDBGrid
          Left = 0
          Top = 34
          Width = 661
          Height = 508
          Align = alClient
          Color = 14671871
          DataSource = DMUserDefine.Dsearch
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGFromORGDblClick
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
              Color = 16434943
              Expanded = False
              FieldName = 'Title'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #1593#1606#1608#1575#1606
              Width = 209
              Visible = True
            end
            item
              Alignment = taRightJustify
              Color = 15790335
              Expanded = False
              FieldName = 'username'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
              Width = 168
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 661
          Height = 34
          Align = alTop
          TabOrder = 1
          DesignSize = (
            661
            34)
          object Label12: TLabel
            Left = 618
            Top = 9
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1580#1587#1578#1580#1608
          end
          object SEdit: TEdit
            Left = 400
            Top = 6
            Width = 213
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 0
            OnChange = SEditChange
          end
          object cbAccess: TDBLookupComboBox
            Left = 17
            Top = 5
            Width = 192
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Enabled = False
            KeyField = 'ID'
            ListField = 'Title'
            ListSource = DMUserDefine.DAccess2
            ParentBiDiMode = False
            TabOrder = 1
            OnClick = FilterAccessClick
          end
          object FilterAccess: TCheckBox
            Left = 216
            Top = 8
            Width = 161
            Height = 17
            Caption = #1705#1575#1585#1576#1585#1575#1606' '#1583#1575#1585#1575#1610' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610' '
            TabOrder = 2
            OnClick = FilterAccessClick
          end
        end
      end
      object xpTabSheet1: TxpTabSheet
        Caption = #1604#1610#1587#1578' '#1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
        Color = clWhite
        BGStyle = bgsNone
        GradientStartColor = clWhite
        GradientEndColor = clSilver
        GradientFillDir = fdTopToBottom
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 661
          Height = 45
          Align = alTop
          TabOrder = 0
          object BitBtn2: TAdvGlowButton
            Left = 552
            Top = 10
            Width = 105
            Height = 25
            Action = acShowDeactivateUsers
            Caption = #1606#1605#1575#1610#1588' '#1705#1575#1585#1576#1585#1575#1606
            ImageIndex = 102
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
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
          object BitBtn4: TAdvGlowButton
            Left = 440
            Top = 10
            Width = 105
            Height = 25
            Action = acActivateUser
            Caption = #1601#1593#1575#1604' '#1705#1585#1583#1606' '#1705#1575#1585#1576#1585
            ImageIndex = 100
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
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
          object BitBtn3: TAdvGlowButton
            Left = 328
            Top = 10
            Width = 105
            Height = 25
            Action = acDeleteUser
            Caption = #1581#1584#1601' '#1705#1575#1585#1576#1585
            ImageIndex = 101
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
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
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 45
          Width = 661
          Height = 497
          Align = alClient
          Color = clBtnFace
          DataSource = DsDeactivateUsers
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Color = 14736093
              Expanded = False
              FieldName = 'Id'
              Title.Alignment = taCenter
              Title.Caption = #1588#1606#1575#1587#1607' '#1705#1575#1585#1576#1585
              Width = 80
              Visible = True
            end
            item
              Color = 14736093
              Expanded = False
              FieldName = 'UserName'
              Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585
              Width = 250
              Visible = True
            end
            item
              Color = 14736093
              Expanded = False
              FieldName = 'Title'
              Title.Caption = #1606#1575#1605' '#1705#1575#1605#1604
              Width = 290
              Visible = True
            end>
        end
      end
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Dm.Users
    Left = 253
    Top = 331
  end
  inherited ActionList: TActionList
    Left = 174
    Top = 136
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 174
    Top = 236
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 171
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = DataSetPost
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            Caption = #1604#1594#1608' C&trl+Z'
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Action11
            Caption = '&Esc '#1582#1585#1608#1580
            ImageIndex = 12
            LastSession = 19
            ShortCut = 27
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1576#1585#1606#1575#1605#1607
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetNext1
            ImageIndex = 26
            LastSession = 137
          end
          item
            Action = DataSetPrior1
            ImageIndex = 1
            LastSession = 137
          end
          item
            Action = DataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end
          item
            Action = DataSetEdit
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 4
            ShortCut = 113
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetPrior1
                ImageIndex = 1
              end
              item
                Action = DataSetNext1
                ImageIndex = 26
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1576#1585#1606#1575#1605#1607
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 60
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 2
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 59
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 1
            ShortCut = 32776
          end
          item
            Action = DeleteUser
            ImageIndex = 99
            ShortCut = 16430
          end
          item
            Caption = '-'
            LastSession = 171
          end
          item
            Action = DataSetPrior1
            ImageIndex = 97
          end
          item
            Action = DataSetNext1
            ImageIndex = 98
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end>
    Images = Dm.ImageList_MainNew
    Left = 174
    Top = 88
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1705#1575#1585#1576#1585' '#1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 60
      ShortCut = 45
      OnExecute = DataSetInsertExecute
      DataSource = DSForm
    end
    object DataSetEdit: TDataSetEdit
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 2
      ShortCut = 115
      DataSource = DSForm
    end
    object DataSetPost: TDataSetPost
      Tag = 6
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 59
      ShortCut = 113
      OnExecute = DataSetPostExecute
      DataSource = DSForm
    end
    object DataSetCancel: TDataSetCancel
      Tag = 7
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 1
      ShortCut = 32776
      DataSource = DSForm
    end
    object Action11: TAction
      Tag = 18
      Category = #1576#1585#1606#1575#1605#1607
      Caption = #1582#1585#1608#1580
      ImageIndex = 84
      ShortCut = 27
      OnExecute = Action11Execute
    end
    object DataSetPrior1: TDataSetPrior
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1602#1576#1604#1610
      Hint = 'Prior'
      ImageIndex = 97
      OnExecute = DataSetPrior1Execute
      DataSource = DSForm
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 98
      OnExecute = DataSetNext1Execute
      DataSource = DSForm
    end
    object Action1: TAction
      Caption = '|'
    end
    object DeleteUser: TAction
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1594#1610#1585#1601#1593#1575#1604' '#1705#1585#1583#1606' '#1705#1575#1585#1576#1585
      ImageIndex = 99
      ShortCut = 16430
      OnExecute = DeleteUserExecute
    end
    object acShowDeactivateUsers: TAction
      Category = #1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      Caption = 'acShowDeactivateUsers'
      ImageIndex = 101
      OnExecute = acShowDeactivateUsersExecute
    end
    object acActivateUser: TAction
      Category = #1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      ImageIndex = 100
      OnExecute = acActivateUserExecute
      OnUpdate = acActivateUserUpdate
    end
    object acDeleteUser: TAction
      Category = #1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      Caption = 'acDeleteUser'
      ImageIndex = 102
      OnExecute = acDeleteUserExecute
      OnUpdate = acDeleteUserUpdate
    end
  end
  object OpenPictureDialogT: TOpenPictureDialog
    Filter = 'JPG|*.jpg'
    Left = 110
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Images = Dm.ImageList_MainNew
    Left = 192
    Top = 332
    object N1: TMenuItem
      Caption = #1575#1601#1586#1608#1583#1606'/'#1578#1594#1610#1610#1585
      ImageIndex = 4
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1581#1584#1601
      ImageIndex = 5
      OnClick = N2Click
    end
  end
  object DsDeactivateUsers: TDataSource
    DataSet = Dm.qDeactivateUsers
    Left = 276
    Top = 164
  end
  object PopupMenu2: TPopupMenu
    Images = Dm.ImageList_MainNew
    Left = 312
    Top = 284
    object MenuItem1: TMenuItem
      Caption = #1575#1605#1590#1575' '#1575#1589#1604#1610
      ImageIndex = 103
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1575#1605#1590#1575' '#1605#1608#1602#1578
      ImageIndex = 37
      OnClick = MenuItem2Click
    end
  end
  object qrySecoundSign: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SecoundSign FROM UserSign'
      'WHERE UserID = :p1')
    Left = 56
    Top = 320
    object qrySecoundSignSecoundSign: TBlobField
      FieldName = 'SecoundSign'
    end
  end
  object qryUpdate: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Param2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE UserSign '
      'SET SecoundSign= :p1'
      'WHERE UserID = :p2')
    Left = 40
    Top = 144
  end
  object OpenPictureDialog: TTntOpenPictureDialog
    Filter = 'JPG|*.jpg|PNG|*.png'
    Left = 95
    Top = 188
  end
  object DataSource1: TDataSource
    DataSet = Dm.qry_FromOrganizations
    Left = 275
    Top = 290
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '   ISNULL(COUNT(*),0) Cnt'
      'FROM Secretariats'
      'WHERE SecTitle like '#39'%'#1570#1607#1606'%'#39' ')
    Left = 612
    Top = 356
    object ADOQuery1Cnt: TIntegerField
      FieldName = 'Cnt'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'UID'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    SQL.Strings = (
      'Select FullAdmin'
      'from Users'
      'where id =  :UID')
    Left = 608
    Top = 304
    object ADOQuery2FullAdmin: TIntegerField
      FieldName = 'FullAdmin'
    end
  end
end
