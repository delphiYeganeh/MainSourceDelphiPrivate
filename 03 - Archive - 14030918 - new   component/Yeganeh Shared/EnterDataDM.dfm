object DMEnterData: TDMEnterData
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 249
  Top = 162
  Height = 178
  Width = 203
  object DSEnterData: TDataSource
    AutoEdit = False
    DataSet = QrEnterData
    Left = 32
    Top = 65
  end
  object QrEnterData: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrEnterDataAfterInsert
    BeforePost = QrEnterDataBeforePost
    Parameters = <
      item
        Name = 'Pa_Data_Ref'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'Users_ID1'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'Users_ID2'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select EnterData_ID,EDCode,EDName,EDDesc,Data_Ref , Users_Ref'
      'From EnterData'
      'Where(Data_Ref = :Pa_Data_Ref )'
      'And(( Users_Ref = :Users_ID1 )or( :Users_ID2 = 0) )'
      'Order By EDCode')
    Left = 32
    Top = 16
    object QrEnterDataEnterData_ID: TIntegerField
      FieldName = 'EnterData_ID'
      Origin = 'MYSOFTDB.EnterData.EnterData_ID'
    end
    object QrEnterDataEDCode: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'EDCode'
      Origin = 'MYSOFTDB.EnterData.EDCode'
    end
    object QrEnterDataEDName: TStringField
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605
      FieldName = 'EDName'
      Origin = 'MYSOFTDB.EnterData.EDName'
      FixedChar = True
      Size = 100
    end
    object QrEnterDataEDDesc: TStringField
      Alignment = taRightJustify
      DisplayLabel = #1588#1585#1581
      FieldName = 'EDDesc'
      Origin = 'MYSOFTDB.EnterData.EDDesc'
      FixedChar = True
      Size = 255
    end
    object QrEnterDataData_Ref: TIntegerField
      FieldName = 'Data_Ref'
      Origin = 'MYSOFTDB.EnterData.Data_Ref'
    end
    object QrEnterDataUsers_Ref: TIntegerField
      FieldName = 'Users_Ref'
    end
  end
end
