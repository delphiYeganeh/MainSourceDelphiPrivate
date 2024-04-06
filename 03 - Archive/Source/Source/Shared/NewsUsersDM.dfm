object DMNewsUsers: TDMNewsUsers
  OldCreateOrder = False
  Left = 237
  Top = 134
  Height = 177
  Width = 304
  object QrNews: TADOQuery
    Connection = dm.YeganehConnection
    AfterScroll = QrNewsAfterScroll
    Parameters = <
      item
        Name = 'Pa_UsersID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'Pa_LikeText1'
        DataType = ftString
        Size = 4
        Value = 'Null'
      end
      item
        Name = 'Pa_LikeText2'
        DataType = ftString
        Size = 4
        Value = 'Null'
      end>
    SQL.Strings = (
      'Select N.* , NU.UsersID as ReciverUserID , NU.ISRead'
      
        '       ,(Select Title from Users Where ID = N.UserID) as UsersTi' +
        'tle'
      
        '       ,(Select Title From Urgenceis Where ID = N.UrgenceisID) a' +
        's Urgenceis'
      '       ,(Select ImDa.FileName from ImageData ImDa'
      '         Where ImDa.TableName = '#39'News'#39
      '         And ImDa.TableID = N.NewsID )as AttachFileName'
      'From News N'
      'Inner Join NewsUsers NU On NU.NewsID = N.NewsID'
      'Where(NU.UsersID = :Pa_UsersID )'
      'And(NU.NotShow = 0)'
      
        'And(N.Title like '#39'%'#39'+ :Pa_LikeText1 + '#39'%'#39' or '#39'Null'#39' = :Pa_LikeTe' +
        'xt2 )'
      '')
    Left = 32
    Top = 16
    object QrNewsNewsID: TAutoIncField
      FieldName = 'NewsID'
      ReadOnly = True
    end
    object QrNewsCode: TIntegerField
      DisplayLabel = #1705#1583' '#1582#1576#1585
      FieldName = 'Code'
    end
    object QrNewsTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606' '#1582#1576#1585
      FieldName = 'Title'
      Size = 300
    end
    object QrNewsMemo: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1605#1578#1606' '#1582#1576#1585
      FieldName = 'Memo'
      Size = 3000
    end
    object QrNewsUrgenceisID: TSmallintField
      DisplayLabel = #1601#1608#1585#1610#1578' '#1582#1576#1585
      FieldName = 'UrgenceisID'
    end
    object QrNewsDateAnnounce: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1593#1604#1575#1606
      FieldName = 'DateAnnounce'
      Size = 10
    end
    object QrNewsTimeAnnounce: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1587#1575#1593#1578' '#1575#1593#1604#1575#1606
      FieldName = 'TimeAnnounce'
      Size = 10
    end
    object QrNewsDateExpire: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
      FieldName = 'DateExpire'
      Size = 10
    end
    object QrNewsUserID: TIntegerField
      DisplayLabel = #1570#1610#1583#1610' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      FieldName = 'UserID'
    end
    object QrNewsUsersTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      FieldName = 'UsersTitle'
      ReadOnly = True
      Size = 50
    end
    object QrNewsReciverUserID: TIntegerField
      DisplayLabel = #1570#1610#1583#1610' '#1705#1575#1585#1576#1585' '#1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' '#1582#1576#1585
      FieldName = 'ReciverUserID'
    end
    object QrNewsUrgenceis: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1601#1608#1585#1610#1578' '#1582#1576#1585
      FieldName = 'Urgenceis'
      ReadOnly = True
      Size = 50
    end
    object QrNewsAttachFileName: TWideStringField
      FieldName = 'AttachFileName'
      ReadOnly = True
      Size = 50
    end
    object QrNewsISRead: TBooleanField
      FieldName = 'ISRead'
    end
  end
  object DSNews: TDataSource
    DataSet = QrNews
    Left = 32
    Top = 64
  end
  object DSImageData: TDataSource
    DataSet = SPImageData
    Left = 211
    Top = 64
  end
  object SPImageData: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Sp_Sel_ImageData;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TableName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = #39#39
      end
      item
        Name = '@TableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 211
    Top = 16
    object SPImageDataImageDataID: TAutoIncField
      FieldName = 'ImageDataID'
      ReadOnly = True
    end
    object SPImageDataData: TBlobField
      Alignment = taRightJustify
      FieldName = 'Data'
    end
    object SPImageDataTableName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'TableName'
      Size = 50
    end
    object SPImageDataTableID: TIntegerField
      FieldName = 'TableID'
    end
    object SPImageDataTag: TIntegerField
      FieldName = 'Tag'
    end
    object SPImageDataFileName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FileName'
      Size = 50
    end
  end
  object QrNewsUsers: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_NewsID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'Pa_UsersID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select * '
      'From NewsUsers'
      'Where(NewsID = :Pa_NewsID)'
      'And(UsersID = :Pa_UsersID)')
    Left = 113
    Top = 16
    object QrNewsUsersNewsUsersID: TAutoIncField
      FieldName = 'NewsUsersID'
      ReadOnly = True
    end
    object QrNewsUsersNewsID: TIntegerField
      FieldName = 'NewsID'
    end
    object QrNewsUsersUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrNewsUsersIsRead: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsRead'
    end
    object QrNewsUsersNotShow: TBooleanField
      Alignment = taRightJustify
      FieldName = 'NotShow'
    end
  end
  object DSNewsUsers: TDataSource
    DataSet = QrNewsUsers
    Left = 113
    Top = 64
  end
end
