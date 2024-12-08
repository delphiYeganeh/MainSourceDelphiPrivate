inherited FrParaphDialog: TFrParaphDialog
  Left = 312
  Top = 230
  Caption = #1602#1575#1604#1576' '#1575#1585#1580#1575#1593
  ClientHeight = 269
  ClientWidth = 458
  Constraints.MinHeight = 300
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 458
    Height = 269
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      458
      269)
    object Label2: TLabel
      Left = 427
      Top = 40
      Width = 18
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606
    end
    object Label1: TLabel
      Left = 426
      Top = 13
      Width = 26
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
    end
    object BitBtn2: TAdvGlowButton
      Left = 270
      Top = 237
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
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
    object BitBtn1: TAdvGlowButton
      Left = 346
      Top = 237
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1578#1575#1610#1610#1583
      Default = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 59
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
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
    object Title: TEdit
      Left = 8
      Top = 8
      Width = 413
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object Paraph: TMemo
      Left = 8
      Top = 40
      Width = 413
      Height = 193
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
    end
  end
end
