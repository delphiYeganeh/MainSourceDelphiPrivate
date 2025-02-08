object frmSmsSetting: TfrmSmsSetting
  Left = 850
  Top = 235
  Anchors = [akTop, akRight]
  AutoScroll = False
  BiDiMode = bdRightToLeft
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1662#1610#1575#1605#1705
  ClientHeight = 306
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCanResize = FormCanResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 306
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 264
      Width = 485
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        485
        41)
      object BitBtn1: TAdvGlowButton
        Left = 396
        Top = 5
        Width = 75
        Height = 29
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
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
      object BitBtn2: TAdvGlowButton
        Left = 312
        Top = 5
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Cancel = True
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
        TabOrder = 1
        OnClick = BitBtn2Click
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
      object Button1: TAdvGlowButton
        Left = 11
        Top = 5
        Width = 75
        Height = 28
        Cancel = True
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
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 485
      Height = 263
      ActivePage = TabSheet1
      Align = alClient
      TabHeight = 1
      TabOrder = 1
      TabWidth = 1
      object TabSheet1: TTabSheet
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1662#1610#1575#1605#1705
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 477
          Height = 252
          Align = alClient
          TabOrder = 0
          DesignSize = (
            477
            252)
          object lblTerminalID: TLabel
            Left = 415
            Top = 9
            Width = 46
            Height = 14
            Anchors = [akTop, akRight]
            Caption = 'SmsUser'
          end
          object lblSmsPassWord: TLabel
            Left = 386
            Top = 46
            Width = 75
            Height = 14
            Anchors = [akTop, akRight]
            Caption = 'SmsPassWord'
          end
          object Label1: TLabel
            Left = 51
            Top = 13
            Width = 82
            Height = 14
            Caption = #1601#1593#1575#1604' '#1576#1608#1583#1606' '#1662#1610#1575#1605#1705
          end
          object Label2: TLabel
            Left = 408
            Top = 83
            Width = 53
            Height = 14
            Anchors = [akTop, akRight]
            Caption = 'SmsTimer'
          end
          object Label5: TLabel
            Left = 408
            Top = 155
            Width = 53
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1589#1606#1583#1608#1602
          end
          object Label6: TLabel
            Left = 141
            Top = 84
            Width = 51
            Height = 14
            Caption = #1605#1610#1604#1610' '#1579#1575#1606#1610#1607
          end
          object S: TLabel
            Left = 358
            Top = 120
            Width = 103
            Height = 14
            Anchors = [akTop, akRight]
            Caption = 'SMSCenterNumber'
          end
          object SmsUser: TEdit
            Left = 200
            Top = 3
            Width = 150
            Height = 37
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object SmsPassWord: TEdit
            Left = 200
            Top = 41
            Width = 150
            Height = 37
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object EnableSms: TCheckBox
            Left = 142
            Top = 12
            Width = 14
            Height = 17
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 2
          end
          object SmsTimer: TEdit
            Left = 200
            Top = 79
            Width = 150
            Height = 37
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object CashNameForSms: TEdit
            Left = 50
            Top = 156
            Width = 300
            Height = 37
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object SMSCenterNumber: TEdit
            Left = 200
            Top = 117
            Width = 150
            Height = 37
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object Panel3: TPanel
            Left = 1
            Top = 199
            Width = 475
            Height = 52
            Align = alBottom
            TabOrder = 6
            DesignSize = (
              475
              52)
            object Label3: TLabel
              Left = 167
              Top = 4
              Width = 297
              Height = 14
              Anchors = [akTop, akRight]
              Caption = #1580#1607#1578' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1587#1610#1587#1578#1605' '#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705' '#1605#1610#1576#1575#1610#1587#1578' '#1575#1586'  '#1587#1575#1610#1578' '
            end
            object Label4: TLabel
              Left = 19
              Top = 4
              Width = 105
              Height = 16
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Caption = 'ghasedaksms.com'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label4Click
            end
            object Label8: TLabel
              Left = 326
              Top = 25
              Width = 138
              Height = 14
              Anchors = [akTop, akRight]
              Caption = #1662#1606#1604' '#1575#1585#1578#1576#1575#1591#1610' '#1582#1585#1610#1583#1575#1585#1610' '#1606#1605#1575#1610#1610#1583'.'
            end
          end
        end
      end
    end
  end
end
