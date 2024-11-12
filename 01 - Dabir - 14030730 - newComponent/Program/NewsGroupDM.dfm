object DMNewsGroup: TDMNewsGroup
  OldCreateOrder = False
  Left = 246
  Top = 110
  Height = 286
  Width = 369
  object DSNewsGroup: TDataSource
    AutoEdit = False
    DataSet = SPNewsGroup
    Left = 40
    Top = 56
  end
  object DSUsersList: TDataSource
    DataSet = QrUsersList
    Left = 270
    Top = 56
  end
  object QrNewsGroupUsers: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrNewsGroupUsersBeforeOpen
    Parameters = <
      item
        Name = 'Pa_NewsGroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From NewsGroupUsers'
      'Where NewsGroupID = :Pa_NewsGroupID')
    Left = 152
    Top = 8
    object QrNewsGroupUsersNewsGroupUsersID: TIntegerField
      FieldName = 'NewsGroupUsersID'
    end
    object QrNewsGroupUsersUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrNewsGroupUsersNewsGroupID: TIntegerField
      FieldName = 'NewsGroupID'
    end
  end
  object DSNewsGroupUsers: TDataSource
    AutoEdit = False
    DataSet = QrNewsGroupUsers
    Left = 152
    Top = 56
  end
  object SpDelNewsGroupUsers: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Sp_Del_NewsGroupUsers;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NewsGroupID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 128
  end
  object DSDelNewsGroupUsers: TDataSource
    DataSet = SpDelNewsGroupUsers
    Left = 48
    Top = 176
  end
  object QrUsersList: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Id,Title,UserName,PassWord'
      'From Users')
    Left = 272
    Top = 8
    object QrUsersListId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QrUsersListTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object QrUsersListUserName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserName'
      Size = 50
    end
    object QrUsersListPassWord: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PassWord'
      Size = 50
    end
  end
  object SPNewsGroup: TADOStoredProc
    Connection = Dm.YeganehConnection
    AfterInsert = SPNewsGroupAfterInsert
    BeforePost = SPNewsGroupBeforePost
    BeforeDelete = SPNewsGroupBeforeDelete
    ProcedureName = 'Sp_Sel_NewsGroup;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UsersID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 40
    Top = 8
    object SPNewsGroupNewsGroupID: TIntegerField
      FieldName = 'NewsGroupID'
    end
    object SPNewsGroupTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1582#1576#1585#1610
      FieldName = 'Title'
      Size = 50
    end
    object SPNewsGroupDescript: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Descript'
      Size = 300
    end
    object SPNewsGroupUsersID: TIntegerField
      FieldName = 'UsersID'
    end
  end
end
