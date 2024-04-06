object ADD_PEYVAST_DIALOG_FRM: TADD_PEYVAST_DIALOG_FRM
  Left = 604
  Top = 183
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 309
    Top = 11
    Width = 59
    Height = 13
    Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
  end
  object Label2: TLabel
    Left = 309
    Top = 43
    Width = 51
    Height = 13
    Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
  end
  object Label3: TLabel
    Left = 309
    Top = 75
    Width = 55
    Height = 13
    Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578
  end
  object Label4: TLabel
    Left = 309
    Top = 107
    Width = 61
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1606#1587#1582#1607
  end
  object SpeedButton1: TSpeedButton
    Left = 280
    Top = 72
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 136
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = BitBtn2Click
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
    TabOrder = 2
  end
  object Path: TEdit
    Left = 8
    Top = 73
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object DESCRIPTION: TDBEdit
    Left = 8
    Top = 8
    Width = 297
    Height = 21
    DataField = 'Description'
    DataSource = SEE_PAYVAST_ERJA_FRM.DataSource2
    TabOrder = 4
  end
  object VersionNo: TDBEdit
    Left = 160
    Top = 104
    Width = 145
    Height = 21
    DataField = 'VersionNo'
    DataSource = SEE_PAYVAST_ERJA_FRM.DataSource1
    TabOrder = 5
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
