object DMAddDocument: TDMAddDocument
  OldCreateOrder = False
  Left = 514
  Top = 156
  Height = 212
  Width = 287
  object QrSrchLinked: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Secretariatid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'mYear1'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'mYear2'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'Select LetterID , IndicatorID , IncommingNo , Memo'
      'from Letter'
      'Where (1=1)'
      'And( Secretariatid = :Secretariatid )'
      'And( mYear Between :mYear1 And :mYear2 )')
    Left = 112
    Top = 24
    object QrSrchLinkedLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrSrchLinkedIndicatorID: TIntegerField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585
      FieldName = 'IndicatorID'
    end
    object QrSrchLinkedIncommingNo: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      DisplayWidth = 10
      FieldName = 'IncommingNo'
      Size = 50
    end
    object QrSrchLinkedMemo: TWideStringField
      Tag = 1
      DisplayLabel = #1582#1604#1575#1589#1607' '#1587#1606#1583
      DisplayWidth = 40
      FieldName = 'Memo'
      Size = 2000
    end
  end
  object QrLinked: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select LetterID , IndicatorID , IncommingNo , Memo'
      'from Letter'
      'Where( LetterID = :LetterID )'
      '')
    Left = 32
    Top = 24
    object QrLinkedLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrLinkedIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object QrLinkedIncommingNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'IncommingNo'
      Size = 50
    end
    object QrLinkedMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 2000
    end
  end
  object DSLinked: TDataSource
    DataSet = QrLinked
    Left = 32
    Top = 72
  end
  object QrSrchIndic: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'IndicatorID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select LetterID , IndicatorID'
      'from Letter'
      'Where (IndicatorID = :IndicatorID)'
      '')
    Left = 112
    Top = 72
    object QrSrchIndicLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrSrchIndicIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
  end
  object QrUserMemo: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Top 100 LetterID,UserMemo'
      'from Letter'
      'Where (1=1)'
      '  And(RTrim(LTRim(UserMemo))) <> '#39#39
      '')
    Left = 208
    Top = 24
    object QrUserMemoLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrUserMemoUserMemo: TWideStringField
      Tag = 1
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585#1610
      DisplayWidth = 55
      FieldName = 'UserMemo'
      Size = 255
    end
  end
  object QrUserMemo1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Top 100 LetterID,UserMemo1'
      'from Letter'
      'Where (1=1)'
      '  And(RTrim(LTRim(UserMemo1))) <> '#39#39
      '')
    Left = 208
    Top = 72
    object AutoIncField1: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrUserMemo1UserMemo1: TWideStringField
      Tag = 1
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585#1610' 1'
      DisplayWidth = 55
      FieldName = 'UserMemo1'
      Size = 255
    end
  end
  object QrUserMemo2: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Top 100 LetterID,UserMemo2'
      'from Letter'
      'Where (1=1)'
      '  And(RTrim(LTRim(UserMemo2))) <> '#39#39)
    Left = 208
    Top = 120
    object AutoIncField2: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrUserMemo2UserMemo2: TWideStringField
      Tag = 1
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585#1610' 2'
      DisplayWidth = 55
      FieldName = 'UserMemo2'
      Size = 255
    end
  end
end
