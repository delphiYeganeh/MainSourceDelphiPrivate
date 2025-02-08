inherited frAddForcePayment: TfrAddForcePayment
  Tag = 11
  Left = 547
  Top = 320
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
  ClientHeight = 252
  ClientWidth = 360
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 360
    Height = 252
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 358
      Height = 209
      Align = alClient
      TabOrder = 0
      DesignSize = (
        358
        209)
      object Label1: TLabel
        Left = 324
        Top = 9
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
        FocusControl = DBEdit2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 271
        Top = 48
        Width = 74
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1587#1585' '#1585#1587#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 302
        Top = 89
        Width = 43
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578
        FocusControl = DBEdit5
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 282
        Top = 127
        Width = 63
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607'-'#1578#1585#1578#1610#1576
        FocusControl = OrderNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 3
        Width = 264
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'Amount'
        DataSource = dm.DSelect_ForcePayment_byForcePaymentID
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 10
        Top = 82
        Width = 262
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'Comment'
        DataSource = dm.DSelect_ForcePayment_byForcePaymentID
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object OrderNo: TDBEdit
        Left = 144
        Top = 122
        Width = 128
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'OrderNo'
        DataSource = dm.DSelect_ForcePayment_byForcePaymentID
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
      end
      object InterestPanel: TPanel
        Left = 32
        Top = 165
        Width = 321
        Height = 37
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          321
          37)
        object Label9: TLabel
          Left = 288
          Top = 6
          Width = 27
          Height = 14
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1587#1608#1583' '
          FocusControl = DBEdit9
          ParentBiDiMode = False
        end
        object DBEdit9: TDBEdit
          Left = 47
          Top = 0
          Width = 193
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'InterestAmount'
          DataSource = dm.DSelect_ForcePayment_byForcePaymentID
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBEMatureDate: TSolarDatePicker
        Left = 64
        Top = 42
        Width = 208
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Enabled = True
        DateKind = dkSolar
        CheckInputOnExit = False
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtCalendar
        ShowDefaultDate = False
        AutoCheck = False
        AutoDeleteDelimiter = False
        EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
        MaskEnabled = False
        ColorCaptionStart = 13158600
        ColorCaptionStop = clWhite
        ColorBodyStart = clWhite
        ColorBodyStop = clWhite
        ColorTodayLine = clBlack
        ColorSelectBrush = 14474460
        ColorDisableMonth = clGray
        ColorVacationDay = clRed
        ColorNormalDay = clBlack
        ColorStyle = csWhiteGray
        ButtonStyle = bsRound
        DataSource = dm.DSelect_ForcePayment_byForcePaymentID
        DataField = 'MatureDate'
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 210
      Width = 358
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        358
        41)
      object BitBtn1: TAdvGlowButton
        Left = 270
        Top = 6
        Width = 75
        Height = 28
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
        Left = 193
        Top = 6
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
    end
  end
  inherited ahmadvand: TActionList
    Left = 37
    Top = 35
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 39
    Top = 84
  end
  object ActionManager: TActionManager
    Images = dm.LetterImages
    Left = 41
    Top = 140
    StyleName = 'XP Style'
  end
end
