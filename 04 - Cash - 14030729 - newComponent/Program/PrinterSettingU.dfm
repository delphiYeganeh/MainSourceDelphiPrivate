inherited frPrinterSetting: TfrPrinterSetting
  Left = 819
  Top = 464
  BorderStyle = bsToolWindow
  Caption = #1578#1606#1592#1610#1605' '#1670#1575#1662#1711#1585
  ClientHeight = 144
  ClientWidth = 398
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 398
    Height = 144
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 396
      Height = 101
      Align = alClient
      TabOrder = 0
      DesignSize = (
        396
        101)
      object Label1: TLabel
        Left = 330
        Top = 18
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1670#1575#1662#1711#1585
      end
      object PaperSize: TRadioGroup
        Left = 131
        Top = 48
        Width = 193
        Height = 41
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1583#1575#1586#1607' '#1705#1575#1594#1584
        Columns = 3
        ItemIndex = 1
        Items.Strings = (
          'A3'
          'A4'
          'A5')
        TabOrder = 0
      end
      object CBPrinters: TComboBox
        Left = 27
        Top = 16
        Width = 297
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        ParentBiDiMode = False
        TabOrder = 1
        Text = #1670#1575#1662#1711#1585' '#1662#1610#1588' '#1601#1585#1590
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 102
      Width = 396
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        396
        41)
      object BitBtn1: TAdvGlowButton
        Left = 302
        Top = 7
        Width = 85
        Height = 29
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
        Left = 214
        Top = 7
        Width = 85
        Height = 29
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
    Left = 101
    Top = 51
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 167
    Top = 28
  end
end
