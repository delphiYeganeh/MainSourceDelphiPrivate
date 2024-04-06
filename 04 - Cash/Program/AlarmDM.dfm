object DMAlarm: TDMAlarm
  OldCreateOrder = False
  Left = 243
  Top = 110
  Height = 176
  Width = 255
  object DSAlarm: TDataSource
    AutoEdit = False
    DataSet = QrAlarm
    Left = 28
    Top = 66
  end
  object DSUsers: TDataSource
    AutoEdit = False
    DataSet = QrUsers
    Left = 100
    Top = 66
  end
  object DSAlarm_Users: TDataSource
    AutoEdit = False
    DataSet = QrAlarm_Users
    Left = 172
    Top = 66
  end
  object QrAlarm: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = QrAlarmAfterInsert
    BeforeDelete = QrAlarmBeforeDelete
    Parameters = <
      item
        Name = 'LetterID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'UsersID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'from Alarm'
      'Where( LetterID = :LetterID )'
      '  And( TagText = '#39'LetterAlerm'#39' )'
      '  And(AlarmID in (Select Au.AlarmID'
      '                  From AlarmUsers Au'
      '                  Where Au.AlarmID = Alarm.AlarmID'
      '                  And Au.UsersID = :UsersID ))'
      '')
    Left = 28
    Top = 17
    object QrAlarmAlarmID: TAutoIncField
      FieldName = 'AlarmID'
      ReadOnly = True
    end
    object QrAlarmTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 300
    end
    object QrAlarmMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 3000
    end
    object QrAlarmDateAlarm: TWideStringField
      FieldName = 'DateAlarm'
      EditMask = '!1399/99/99;1;_'
      Size = 10
    end
    object QrAlarmTimeAlarm: TWideStringField
      FieldName = 'TimeAlarm'
      EditMask = '!99:99;1;_'
      Size = 5
    end
    object QrAlarmTagText: TWideStringField
      Alignment = taRightJustify
      FieldName = 'TagText'
    end
    object QrAlarmUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrAlarmLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrAlarmUsersTitle_LK: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UsersTitle_LK'
      LookupDataSet = QrUsers
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'UsersID'
      Lookup = True
    end
  end
  object QrUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Id, Title '
      'from Users')
    Left = 100
    Top = 17
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
  object QrAlarm_Users: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'AlarmID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'from AlarmUsers'
      'Where( AlarmID = :AlarmID ) ')
    Left = 172
    Top = 17
    object QrAlarm_UsersAlarmUsersID: TAutoIncField
      FieldName = 'AlarmUsersID'
      ReadOnly = True
    end
    object QrAlarm_UsersAlarmID: TIntegerField
      FieldName = 'AlarmID'
    end
    object QrAlarm_UsersUsersID: TIntegerField
      FieldName = 'UsersID'
    end
  end
end
