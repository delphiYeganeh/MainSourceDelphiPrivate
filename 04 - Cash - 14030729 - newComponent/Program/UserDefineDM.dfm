object DMUserDefine: TDMUserDefine
  OldCreateOrder = False
  Left = 794
  Top = 278
  Height = 269
  Width = 472
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
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 224
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
    object Sp_Sel_UserAccArchiveArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
    object Sp_Sel_UserAccArchiveSecID: TIntegerField
      FieldName = 'SecID'
    end
  end
  object DSUserAccArchive: TDataSource
    AutoEdit = False
    DataSet = Sp_Sel_UserAccArchive
    Left = 224
    Top = 56
  end
  object QrUserSec: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select S.* , US.UserID'
      
        '       ,(Select ArchiveCenterTitle From ArchiveCenter Where Arch' +
        'iveCenterID = S.ArchiveCenterID)As ArchiveCenterTitle'
      'From Secretariats S , UserSecretariats US'
      'Where(US.UserID = :UserID)'
      '  And(S.SecID = US.Secid)')
    Left = 24
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
    object QrUserSecPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
      Size = 50
    end
    object QrUserSecArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
    object QrUserSecUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrUserSecArchiveCenterTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ArchiveCenterTitle'
      ReadOnly = True
      Size = 50
    end
  end
  object DSUserSec: TDataSource
    DataSet = QrUserSec
    Left = 24
    Top = 56
  end
  object DSArchiveFolder: TDataSource
    DataSet = QrArchiveFolder
    Left = 112
    Top = 56
  end
  object QrArchiveFolder: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ArchiveCenterID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'From ArchiveFolder '
      'Where ArchiveCenterID = :ArchiveCenterID')
    Left = 112
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
