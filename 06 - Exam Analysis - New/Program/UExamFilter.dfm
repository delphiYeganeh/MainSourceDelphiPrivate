inherited FrExamFilter: TFrExamFilter
  Left = 387
  Top = 205
  Width = 646
  Height = 148
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 524
    Top = 12
    Width = 54
    Height = 13
    Caption = #1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606
    FocusControl = DBEdit1
  end
  object Label3: TLabel [1]
    Left = 524
    Top = 44
    Width = 49
    Height = 13
    Caption = #1578#1575#1585#1610#1582' '#1570#1586#1605#1608#1606
    FocusControl = DBEdit3
  end
  object Label7: TLabel [2]
    Left = 524
    Top = 77
    Width = 86
    Height = 13
    Caption = #1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1607' '#1602#1576#1608#1604#1610
    FocusControl = DBEdit7
  end
  object Label9: TLabel [3]
    Left = 236
    Top = 13
    Width = 22
    Height = 13
    Caption = #1583#1585#1587
    FocusControl = DBLookupComboBox1
  end
  object Label10: TLabel [4]
    Left = 236
    Top = 45
    Width = 25
    Height = 13
    Caption = #1585#1588#1578#1607
    FocusControl = DBLookupComboBox2
  end
  object Label11: TLabel [5]
    Left = 236
    Top = 78
    Width = 43
    Height = 13
    Caption = #1606#1608#1593' '#1570#1586#1605#1608#1606
    FocusControl = DBLookupComboBox3
  end
  object DBEdit1: TYWhereEdit [6]
    Left = 315
    Top = 8
    Width = 200
    Height = 21
    TabOrder = 0
    isLike = False
    EveryLike = True
    isString = True
    FieldName = 'ExamTitle'
    TableName = 'Exam'
    CodeField = 'Code'
    TitleField = 'Title'
  end
  object DBEdit3: TYWhereEdit [7]
    Left = 316
    Top = 40
    Width = 200
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    isLike = False
    EveryLike = False
    isString = True
    FieldName = 'ExamDate'
    TableName = 'Exam'
    CodeField = 'Code'
    TitleField = 'Title'
  end
  object DBEdit7: TYWhereEdit [8]
    Left = 316
    Top = 73
    Width = 200
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    isLike = False
    EveryLike = False
    isString = True
    FieldName = 'MinPassedMark'
    TableName = 'Exam'
    CodeField = 'Code'
    TitleField = 'Title'
  end
  object DBLookupComboBox1: TYWhereEdit [9]
    Left = 32
    Top = 9
    Width = 200
    Height = 21
    BiDiMode = bdLeftToRight
    Color = 15984895
    ParentBiDiMode = False
    TabOrder = 3
    OnKeyDown = CtrlSpace
    isLike = False
    EveryLike = False
    isString = False
    FieldName = 'CourseID'
    TableName = 'Exam'
    ListTable = 'Course'
    CodeField = 'CourseID'
    TitleField = 'CourseTitle'
    Connection = Dm.YeganehConnection
  end
  object DBLookupComboBox2: TYWhereEdit [10]
    Left = 32
    Top = 41
    Width = 200
    Height = 21
    BiDiMode = bdLeftToRight
    Color = 15984895
    ParentBiDiMode = False
    TabOrder = 4
    OnKeyDown = CtrlSpace
    isLike = False
    EveryLike = False
    isString = False
    FieldName = 'MajorID'
    TableName = 'Exam'
    ListTable = 'Major'
    CodeField = 'Majorid'
    TitleField = 'MajorTitle'
    Connection = Dm.YeganehConnection
  end
  object DBLookupComboBox3: TYWhereEdit [11]
    Left = 32
    Top = 74
    Width = 200
    Height = 21
    Color = 15984895
    TabOrder = 5
    OnKeyDown = CtrlSpace
    isLike = False
    EveryLike = False
    isString = False
    FieldName = 'ExamTypeID'
    TableName = 'Exam'
    ListTable = 'ExamType'
    CodeField = 'ExamTypeID'
    TitleField = 'ExamTypeTitle'
    Connection = Dm.YeganehConnection
  end
  inherited ActionList: TActionList
    Left = 146
    Top = 224
  end
  inherited xpWindow1: TxpWindow
    Left = 208
    Top = 384
  end
end
