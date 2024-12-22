inherited FrReportUserTable: TFrReportUserTable
  Left = 443
  Top = 194
  Caption = #1711#1586#1575#1585#1588' '
  ClientHeight = 210
  ClientWidth = 674
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object EditsPanel: TScrollBox [0]
    Left = 0
    Top = 0
    Width = 674
    Height = 210
    Align = alClient
    TabOrder = 0
  end
  inherited DSForm: TDataSource
    Left = 114
    Top = 32
  end
  inherited ActionList: TActionList
    Left = 173
    Top = 32
  end
  object DSample: TDataSource
    Left = 232
    Top = 312
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
    Left = 56
    Top = 32
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
end
