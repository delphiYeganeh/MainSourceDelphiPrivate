object DMWorkGroup: TDMWorkGroup
  OldCreateOrder = False
  Left = 174
  Top = 307
  Height = 301
  Width = 369
  object SPWorkGroup: TADOStoredProc
    Connection = Dm.YeganehConnection
    AfterInsert = SPWorkGroupAfterInsert
    ProcedureName = 'Sp_Select_WorkGroup;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 40
    Top = 8
    object SPWorkGroupWorkGroupID: TAutoIncField
      FieldName = 'WorkGroupID'
      ReadOnly = True
    end
    object SPWorkGroupTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object SPWorkGroupDescript: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Descript'
      Size = 300
    end
    object SPWorkGroupUserID: TIntegerField
      FieldName = 'UserID'
    end
  end
  object DSWorkGroup: TDataSource
    AutoEdit = False
    DataSet = SPWorkGroup
    Left = 40
    Top = 56
  end
  object FromOrganizations: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT * FROM FromOrganizations'#13#10'where IsInnerOrg=1 and isactive' +
      '=1'#13#10'order by title'
    Parameters = <>
    Left = 270
    Top = 8
    object FromOrganizationsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromOrganizationsTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object FromOrganizationsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromOrganizationsPhone: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phone'
      Size = 30
    end
    object FromOrganizationsFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
      Size = 30
    end
    object FromOrganizationsEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 30
    end
    object FromOrganizationsResponsibleStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromOrganizationsIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object FromOrganizationsPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
      Size = 50
    end
    object FromOrganizationsIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object FromOrganizationsCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Code'
      Size = 50
    end
    object FromOrganizationsUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
  end
  object DFromOrganizations: TDataSource
    DataSet = FromOrganizations
    Left = 270
    Top = 56
  end
  object QrWorkGroupOrg: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrWorkGroupOrgBeforeOpen
    Parameters = <
      item
        Name = 'Pa_WorkGroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select * '
      'From WorkGroupOrg'
      'Where WorkGroupID = :Pa_WorkGroupID')
    Left = 152
    Top = 8
    object QrWorkGroupOrgWorkGroupOrgID: TAutoIncField
      FieldName = 'WorkGroupOrgID'
      ReadOnly = True
    end
    object QrWorkGroupOrgWorkGroupID: TIntegerField
      FieldName = 'WorkGroupID'
    end
    object QrWorkGroupOrgFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
  end
  object DSWorkGroupOrg: TDataSource
    AutoEdit = False
    DataSet = QrWorkGroupOrg
    Left = 152
    Top = 56
  end
  object SpDelWorkGroupOrg: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Sp_Del_WorkGroupOrg;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@WorkGroupID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 48
    Top = 128
  end
  object DSDelWorkGroupOrg: TDataSource
    DataSet = SpDelWorkGroupOrg
    Left = 48
    Top = 176
  end
end
