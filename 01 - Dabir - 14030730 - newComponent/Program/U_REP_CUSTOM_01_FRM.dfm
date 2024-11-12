object REP_CUSTOM_01_FRM: TREP_CUSTOM_01_FRM
  Left = 485
  Top = 233
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1711#1586#1575#1585#1588
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 321
    Width = 784
    Height = 200
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IndicatorID'
        Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1578#1575#1585#1610#1582
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Memo'
        Title.Caption = #1605#1590#1605#1608#1606
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LetterTypeTitle'
        Width = 149
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 321
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 521
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 704
      Top = 8
      Width = 75
      Height = 25
      Caption = #1711#1586#1575#1585#1588
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Fields: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_userfields_by_tableID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 16
    Top = 16
    object FieldsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FieldsTableID: TIntegerField
      FieldName = 'TableID'
    end
    object FieldsFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object FieldsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object FieldsIsWhere: TBooleanField
      FieldName = 'IsWhere'
    end
    object FieldsISString: TBooleanField
      FieldName = 'ISString'
    end
    object FieldsIsLike: TBooleanField
      FieldName = 'IsLike'
    end
    object FieldsEveryLike: TBooleanField
      FieldName = 'EveryLike'
    end
    object FieldsVisibleInGrid: TBooleanField
      FieldName = 'VisibleInGrid'
    end
    object FieldsISBlob: TBooleanField
      FieldName = 'ISBlob'
    end
    object FieldsFieldGroupID: TIntegerField
      FieldName = 'FieldGroupID'
    end
    object Fieldsorder: TIntegerField
      FieldName = 'order'
    end
    object Fieldsisboolean: TBooleanField
      FieldName = 'isboolean'
    end
    object FieldsFieldTypeID: TWordField
      FieldName = 'FieldTypeID'
    end
    object FieldsReferenceTableID: TIntegerField
      FieldName = 'ReferenceTableID'
    end
  end
  object DataSource1: TDataSource
    DataSet = Report_UserTable
    Left = 120
    Top = 128
  end
  object Report_UserTable: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Report_UserTable'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = -1
      end
      item
        Name = '@tableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterWhere'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end
      item
        Name = '@UserTableWhere'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end>
    Left = 140
    Top = 74
  end
end
