inherited FRestorLetterData: TFRestorLetterData
  Left = 595
  Top = 302
  Width = 405
  Height = 260
  Caption = #1576#1575#1586#1711#1585#1583#1575#1606#1583#1606' '#1578#1589#1575#1608#1610#1585' '#1587#1606#1583#1607#1575
  Constraints.MaxHeight = 260
  Constraints.MaxWidth = 405
  Constraints.MinHeight = 260
  Constraints.MinWidth = 405
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 389
    Height = 221
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 387
      Height = 178
      Align = alClient
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        387
        178)
      object Label1: TLabel
        Left = 249
        Top = 12
        Width = 130
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1587#1610#1585' '#1606#1711#1607#1583#1575#1585#1610' '#1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
      end
      object Label2: TLabel
        Left = 248
        Top = 69
        Width = 131
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1575#1610#1608' '#1578#1588#1603#1610#1604' '#1601#1575#1610#1604' '#1607#1575#1610' '#1605#1608#1602#1578
      end
      object SpeedButton1: TAdvGlowButton
        Left = 358
        Top = 32
        Width = 21
        Height = 19
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        ImageIndex = 26
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
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
      object path: TEdit
        Left = 105
        Top = 31
        Width = 251
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 0
      end
      object DriveComboBox1: TDriveComboBox
        Left = 249
        Top = 87
        Width = 130
        Height = 19
        Anchors = [akTop, akRight]
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 1
        TextCase = tcUpperCase
      end
      object BitBtn1: TAdvGlowButton
        Left = 109
        Top = 143
        Width = 158
        Height = 31
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1576#1585#1711#1585#1583#1575#1606#1583#1606' '#1575#1587#1606#1575#1583' '#1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 21
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
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
      object ProgressBar: TProgressBar
        Left = 8
        Top = 120
        Width = 371
        Height = 16
        Anchors = [akTop, akRight]
        Max = 10
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 179
      Width = 387
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object Button1: TAdvGlowButton
        Left = 11
        Top = 6
        Width = 75
        Height = 31
        Cursor = crHandPoint
        Cancel = True
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
  end
  inherited DSForm: TDataSource
    Left = 100
    Top = 59
  end
  inherited ActionList: TActionList
    Left = 186
    Top = 10
  end
  inherited xpWindow1: TxpWindow
    Left = 192
    Top = 56
  end
  object OpenDialog: TOpenDialog
    Left = 186
    Top = 101
  end
  object dbinfo: TADOQuery
    Connection = Dm.YeganehConnection
    CommandTimeout = 3000000
    Parameters = <>
    Left = 25
    Top = 21
  end
  object ADOCommand: TADOCommand
    CommandTimeout = 3000000
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 31
    Top = 75
  end
end
