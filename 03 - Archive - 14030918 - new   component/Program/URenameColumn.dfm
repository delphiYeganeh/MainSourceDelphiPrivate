object FmRenameColumn: TFmRenameColumn
  Left = 591
  Top = 356
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = '  '#1578#1594#1610#1610#1585' '#1606#1575#1605' '#1587#1578#1608#1606'  '
  ClientHeight = 111
  ClientWidth = 292
  Color = clBtnFace
  Constraints.MaxHeight = 150
  Constraints.MaxWidth = 308
  Constraints.MinHeight = 145
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 111
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label2: TLabel
      Left = 201
      Top = 48
      Width = 75
      Height = 13
      Caption = #1606#1575#1605' '#1580#1583#1610#1583' '#1587#1578#1608#1606' :'
    end
    object Label1: TLabel
      Left = 201
      Top = 16
      Width = 79
      Height = 13
      Caption = #1606#1575#1605' '#1601#1593#1604#1610' '#1587#1578#1608#1606' :'
    end
    object Button1: TAdvGlowButton
      Left = 128
      Top = 80
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      ImageIndex = 1
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
    object Button2: TAdvGlowButton
      Left = 208
      Top = 80
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      Default = True
      ImageIndex = 59
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = Button2Click
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
    object ComboBox1: TComboBox
      Left = 19
      Top = 13
      Width = 177
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 19
      Top = 44
      Width = 177
      Height = 21
      TabOrder = 3
    end
  end
end
