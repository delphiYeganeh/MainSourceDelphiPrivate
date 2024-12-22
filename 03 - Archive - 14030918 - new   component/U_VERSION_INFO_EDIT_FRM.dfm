object VERSION_INFO_EDIT_FRM: TVERSION_INFO_EDIT_FRM
  Left = 682
  Top = 263
  Width = 394
  Height = 374
  BiDiMode = bdRightToLeft
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1608#1585#1688#1606
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 232
    Top = 8
    Width = 65
    Height = 17
    DataField = 'IDX'
    DataSource = VERSION_INFO_FRM.DataSource1
  end
  object Label1: TLabel
    Left = 304
    Top = 63
    Width = 20
    Height = 13
    Caption = #1608#1585#1688#1606
  end
  object Label2: TLabel
    Left = 304
    Top = 87
    Width = 21
    Height = 13
    Caption = #1578#1575#1585#1610#1582
  end
  object Label3: TLabel
    Left = 304
    Top = 111
    Width = 40
    Height = 13
    Caption = #1578#1608#1590#1610#1581#1575#1578
  end
  object Label4: TLabel
    Left = 304
    Top = 199
    Width = 37
    Height = 13
    Caption = #1605#1588#1578#1585#1610
  end
  object Label5: TLabel
    Left = 304
    Top = 223
    Width = 67
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = 'SQL '#1575#1587#1705#1585#1610#1662#1578' '
    ParentBiDiMode = False
  end
  object Label6: TLabel
    Left = 304
    Top = 247
    Width = 58
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = 'DELPHI '#1601#1585#1605' '
    ParentBiDiMode = False
  end
  object Label7: TLabel
    Left = 304
    Top = 9
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label8: TLabel
    Left = 304
    Top = 39
    Width = 38
    Height = 13
    Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 61
    Width = 145
    Height = 21
    DataField = 'VERSION_'
    DataSource = VERSION_INFO_FRM.DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 85
    Width = 145
    Height = 21
    DataField = 'DATE_'
    DataSource = VERSION_INFO_FRM.DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 197
    Width = 289
    Height = 21
    DataField = 'CUSTOMER'
    DataSource = VERSION_INFO_FRM.DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 221
    Width = 289
    Height = 21
    DataField = 'SQL_SP'
    DataSource = VERSION_INFO_FRM.DataSource1
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 245
    Width = 289
    Height = 21
    DataField = 'DELPHI_FORM'
    DataSource = VERSION_INFO_FRM.DataSource1
    TabOrder = 6
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 112
    Width = 289
    Height = 81
    DataField = 'INFO_'
    DataSource = VERSION_INFO_FRM.DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 272
    Width = 288
    Height = 25
    DataSource = VERSION_INFO_FRM.DataSource1
    VisibleButtons = [nbPost, nbCancel]
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 304
    Width = 145
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object DBComboBox1: TDBComboBox
    Left = 152
    Top = 36
    Width = 145
    Height = 21
    BiDiMode = bdLeftToRight
    DataField = 'SOFTWARE_NAME'
    DataSource = VERSION_INFO_FRM.DataSource1
    ItemHeight = 13
    Items.Strings = (
      #1583#1576#1610#1585#1582#1575#1606#1607
      #1705#1575#1585#1578#1575#1576#1604)
    ParentBiDiMode = False
    TabOrder = 0
  end
end
