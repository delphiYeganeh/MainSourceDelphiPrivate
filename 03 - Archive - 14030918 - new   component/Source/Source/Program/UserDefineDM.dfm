object DMUserDefine: TDMUserDefine
  OldCreateOrder = False
  Left = 306
  Top = 111
  Height = 152
  Width = 464
  object Access2: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'ID'
    MasterFields = 'AccessID'
    TableName = 'Accesses'
    Left = 20
    Top = 8
    object Access2ID: TWordField
      FieldName = 'ID'
    end
    object Access2Title: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
  end
  object DAccess2: TDataSource
    DataSet = Access2
    Left = 20
    Top = 56
  end
  object Search: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'select id,Title,username from users '
    Parameters = <>
    Left = 82
    Top = 8
    object Searchid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SearchTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object Searchusername: TWideStringField
      FieldName = 'username'
      Size = 50
    end
  end
  object Dsearch: TDataSource
    DataSet = Search
    Left = 82
    Top = 56
  end
  object Sp_Sel_UserAccArchive: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Sp_Sel_UserAccArchive;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 376
    Top = 8
    object Sp_Sel_UserAccArchiveUserAccArchiveID: TAutoIncField
      FieldName = 'UserAccArchiveID'
      ReadOnly = True
    end
    object Sp_Sel_UserAccArchiveUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Sp_Sel_UserAccArchiveArchiveFolderID: TIntegerField
      FieldName = 'ArchiveFolderID'
    end
    object Sp_Sel_UserAccArchiveISAccess: TBooleanField
      FieldName = 'ISAccess'
    end
    object Sp_Sel_UserAccArchiveSecID: TIntegerField
      FieldName = 'SecID'
    end
  end
  object DSUserAccArchive: TDataSource
    AutoEdit = False
    DataSet = Sp_Sel_UserAccArchive
    Left = 376
    Top = 56
  end
  object QrUserSec: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'ArchiveCenterID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'Select S.* , US.UserID'
      'From Secretariats S'
      'Inner Join UserSecretariats US On S.SecID = US.Secid'
      'Where userid = :ArchiveCenterID')
    Left = 192
    Top = 8
    object QrUserSecSecID: TAutoIncField
      FieldName = 'SecID'
      ReadOnly = True
    end
    object QrUserSecSecTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SecTitle'
      Size = 50
    end
    object QrUserSecPrecode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Precode'
      Size = 50
    end
    object QrUserSecServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object QrUserSecArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
    object QrUserSecUserID: TIntegerField
      FieldName = 'UserID'
    end
  end
  object DSUserSec: TDataSource
    DataSet = QrUserSec
    Left = 192
    Top = 56
  end
  object DSArchiveFolder: TDataSource
    DataSet = QrArchiveFolder
    Left = 272
    Top = 56
  end
  object QrArchiveFolder: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'archiveCenterID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'Select *'
      'From ArchiveFolder'
      'Where archiveCenterID= :archiveCenterID')
    Left = 272
    Top = 8
    object QrArchiveFolderFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object QrArchiveFolderParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object QrArchiveFolderTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object QrArchiveFolderUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrArchiveFolderNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object QrArchiveFolderPlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
  end
end
