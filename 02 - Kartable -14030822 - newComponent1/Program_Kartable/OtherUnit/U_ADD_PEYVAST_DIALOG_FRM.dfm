object ADD_PEYVAST_DIALOG_FRM: TADD_PEYVAST_DIALOG_FRM
  Left = 735
  Top = 354
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1606#1605#1608#1583#1606' '#1662#1610#1608#1587#1578
  ClientHeight = 171
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 171
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label3: TLabel
      Left = 315
      Top = 75
      Width = 55
      Height = 13
      Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578
    end
    object Label1: TLabel
      Left = 311
      Top = 11
      Width = 59
      Height = 13
      Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
    end
    object Label2: TLabel
      Left = 319
      Top = 43
      Width = 51
      Height = 13
      Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
    end
    object Label4: TLabel
      Left = 309
      Top = 107
      Width = 61
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1606#1587#1582#1607
    end
    object SpeedButton1: TAdvGlowButton
      Left = 280
      Top = 72
      Width = 23
      Height = 22
      ImageIndex = 78
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
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
    object BitBtn1: TAdvGlowButton
      Left = 295
      Top = 136
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      ImageIndex = 59
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
      Left = 216
      Top = 136
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      ImageIndex = 90
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
    object DESCRIPTION: TDBEdit
      Left = 8
      Top = 8
      Width = 297
      Height = 21
      DataField = 'Description'
      DataSource = SEE_PAYVAST_ERJA_FRM.DataSource2
      TabOrder = 2
    end
    object ExtentionTitle: TDBLookupComboBox
      Left = 160
      Top = 40
      Width = 145
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'extention'
      DataSource = SEE_PAYVAST_ERJA_FRM.DataSource2
      KeyField = 'ExtentionID'
      ListField = 'ExtentionTitle'
      ListSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 3
    end
    object VersionNo: TDBEdit
      Left = 160
      Top = 104
      Width = 145
      Height = 21
      DataField = 'VersionNo'
      DataSource = SEE_PAYVAST_ERJA_FRM.DataSource1
      TabOrder = 4
    end
    object Path: TEdit
      Left = 8
      Top = 73
      Width = 265
      Height = 21
      TabOrder = 5
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM dbo.Extention')
    Left = 80
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    Left = 112
    Top = 96
  end
end
