object PasswordDlgFrm: TPasswordDlgFrm
  Left = 192
  Top = 116
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1601#1600#1600#1600#1600#1585#1605' '#1578#1593#1610#1610#1606' '#1575#1580#1575#1586#1607' '#1593#1576#1608#1585
  ClientHeight = 186
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object UserNameLbl: TLabel
    Left = 209
    Top = 24
    Width = 75
    Height = 14
    Caption = #1606#1600#1600#1575#1605' '#1603#1600#1600#1600#1600#1600#1600#1600#1575#1585#1576#1585' :'
  end
  object PasswordLbl: TLabel
    Left = 212
    Top = 56
    Width = 71
    Height = 14
    Caption = #1603#1604#1605#1600#1600#1600#1607' '#1593#1576#1600#1600#1608#1585' :'
  end
  object Bevel1: TBevel
    Left = 13
    Top = 8
    Width = 289
    Height = 119
  end
  object CompanyLbl: TLabel
    Left = 207
    Top = 91
    Width = 84
    Height = 14
    Caption = #1588#1600#1600#1600#1600#1600#1600#1600#1585#1705#1600#1600#1600#1600#1600#1600#1600#1578' :'
  end
  object PasswordEdt: TEdit
    Left = 64
    Top = 54
    Width = 137
    Height = 22
    BiDiMode = bdRightToLeft
    MaxLength = 8
    ParentBiDiMode = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object OkBitBtn: TBitBtn
    Left = 165
    Top = 144
    Width = 75
    Height = 25
    Caption = '&'#1578#1575#1574#1610#1583
    TabOrder = 3
    Kind = bkOK
  end
  object CancelBitBtn: TBitBtn
    Left = 64
    Top = 144
    Width = 75
    Height = 25
    Caption = '&'#1575#1606#1589#1585#1575#1601
    TabOrder = 4
    Kind = bkCancel
  end
  object UserNameEdt: TEdit
    Left = 64
    Top = 22
    Width = 137
    Height = 22
    MaxLength = 8
    TabOrder = 0
  end
  object Company_ComboBox: TDBLookupComboBox
    Left = 63
    Top = 89
    Width = 138
    Height = 22
    KeyField = 'COMPANY_CODE'
    ListField = 'COMPANY_CODE;COMPANY_DESC'
    ListSource = DataSource1
    TabOrder = 2
  end
  object SearchPassQry: TQuery
    Left = 8
  end
  object CodePassSp: TStoredProc
    DatabaseName = 'NE_DB_Personely_DS'
    StoredProcName = 'Pass_Code_SP;1'
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = '@Pass'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CodePass'
        ParamType = ptInputOutput
      end>
  end
  object DataSource1: TDataSource
    DataSet = CompaniesSP
    Left = 56
    Top = 88
  end
  object CompaniesSP: TStoredProc
    DatabaseName = 'PersDB'
    StoredProcName = 'Companies_SP;1'
    Left = 16
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end>
  end
end
