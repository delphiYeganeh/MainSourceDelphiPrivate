object DMLetterEdit: TDMLetterEdit
  OldCreateOrder = False
  Left = 271
  Top = 117
  Height = 192
  Width = 216
  object QrLetterEdit: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'UsersID1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'UsersID2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    SQL.Strings = (
      'Select LE.* , U.Title as UsersTitle'
      'From LetterEdit LE , Letter L , Users U'
      'Where (1=1)'
      '  And(LE.LetterID = :LetterID)'
      '  And(LE.UsersID = :UsersID1 or :UsersID2 = 0)'
      '  And(LE.LetterID = L.LetterID)'
      '  And(LE.UsersID = U.ID)'
      'Order By LetterEditID desc,UserID,EditDate,EditTime desc'
      ''
      ''
      ''
      '')
    Left = 40
    Top = 16
    object QrLetterEditLetterEditID: TAutoIncField
      FieldName = 'LetterEditID'
      ReadOnly = True
    end
    object QrLetterEditEditDate: TWideStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1610#1585#1575#1610#1588
      FieldName = 'EditDate'
    end
    object QrLetterEditEditTime: TWideStringField
      DisplayLabel = #1587#1575#1593#1578' '#1608#1610#1585#1575#1610#1588
      FieldName = 'EditTime'
      Size = 5
    end
    object QrLetterEditLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrLetterEditUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrLetterEditStatement: TWideStringField
      DisplayLabel = #1593#1605#1604#1610#1575#1578' '#1575#1606#1580#1575#1605' '#1588#1583#1607
      FieldName = 'Statement'
      Size = 300
    end
    object QrLetterEditUsersTitle: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1585#1576#1585
      FieldName = 'UsersTitle'
      Size = 50
    end
  end
  object DSLetterEdit: TDataSource
    DataSet = QrLetterEdit
    Left = 40
    Top = 64
  end
  object DSUsers: TDataSource
    DataSet = QrUsers
    Left = 124
    Top = 64
  end
  object QrUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,Title'
      'from users')
    Left = 124
    Top = 16
    object QrUsersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QrUsersTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
  end
end
