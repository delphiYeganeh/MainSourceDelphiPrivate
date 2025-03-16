inherited FrAddSubCourse: TFrAddSubCourse
  Left = 300
  Top = 134
  Width = 702
  Height = 497
  Caption = #1608#1610#1585#1575#1610#1588' '#1608' '#1583#1585#1580' '#1587#1585#1601#1589#1604' '#1607#1575
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 694
    Height = 415
    Align = alTop
    ParentColor = True
    TabOrder = 0
    object xpBitBtn4: TxpBitBtn
      Left = 24
      Top = 375
      Width = 82
      Height = 30
      startColor = 16645629
      EndColor = 14666957
      Caption = #1581#1584#1601
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 0
      TabStop = True
      OnClick = xpBitBtn4Click
    end
    object xpBitBtn5: TxpBitBtn
      Left = 116
      Top = 375
      Width = 82
      Height = 30
      startColor = 16645629
      EndColor = 14666957
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 1
      TabStop = True
      OnClick = xpBitBtn5Click
    end
    object xpBitBtn6: TxpBitBtn
      Left = 208
      Top = 375
      Width = 82
      Height = 30
      startColor = 16645629
      EndColor = 14666957
      Caption = #1583#1585#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 2
      TabStop = True
      OnClick = xpBitBtn6Click
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 692
      Height = 76
      Align = alTop
      ParentColor = True
      TabOrder = 3
      object Label3: TLabel
        Left = 592
        Top = 14
        Width = 71
        Height = 14
        Caption = #1593#1606#1608#1575#1606' '#1583#1585#1587' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 11
        Top = 56
        Width = 84
        Height = 13
        Caption = #1604#1610#1587#1578' '#1587#1585#1601#1589#1604' '#1607#1575
      end
      object Label2: TLabel
        Left = 593
        Top = 44
        Width = 35
        Height = 13
        Caption = #1580#1587#1578#1580#1608
      end
      object DBlookupCourse: TDBLookupComboBox
        Left = 360
        Top = 12
        Width = 230
        Height = 21
        KeyField = 'CourseID'
        ListField = 'CourseTitle'
        ListSource = Dm.DCourse
        TabOrder = 0
        OnClick = DBlookupCourseClick
      end
      object Edit1: TEdit
        Left = 429
        Top = 40
        Width = 161
        Height = 21
        TabOrder = 1
        OnChange = Edit1Change
      end
    end
    object YDBGrid2: TYDBGrid
      Left = 1
      Top = 77
      Width = 692
      Height = 260
      Align = alTop
      Color = 16118257
      DataSource = Dselect_SubCourse_By_CourseID
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = False
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      Columns = <
        item
          Expanded = False
          FieldName = 'SubCourseTitle'
          Title.Caption = #1593#1606#1608#1575#1606' '#1587#1585#1601#1589#1604
          Width = 627
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Width = -1
          Visible = False
        end>
    end
  end
  object xpBitBtn1: TxpBitBtn [1]
    Left = 16
    Top = 425
    Width = 101
    Height = 32
    startColor = 16645629
    EndColor = 14666957
    Caption = #1582#1585#1608#1580
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      32040000424D3204000000000000360000002800000014000000110000000100
      180000000000FC030000000000000000000000000000000000001816136788FF
      0012D16F6CC6F7F1EC9997D90000B1262FBBCBC8DFFFF8CFFFE9C8FFEACCFFEB
      CCFFEBCBFFEBCBFFEBCBFFECCBFFECCCFFE7C4FFF6EB1D18117987FF0F57FF08
      37E4060084031FC60753FF002DE78370A4FFCA66FFB156FFB359FFB25AFFB159
      FFAF59FFAE59FFAC58FFAB59FFAC53FF9B0D282310C0B8E60017CE2565FF154B
      FC1852FF0B34DF4447BDD8D6EEFFFAFFFFEEFFFFEDFEFFEBFDFFE8FAFFE5F9FF
      E2F8FFDEF5FFD9EDFFF0FFFF9C13171309FFFFE88079BC1232D32B65FF1C54FE
      2733B8C3B9D3FFFFF6FFEAE8FFE7E6FFE4E3FFE1E0FFDDDCFFDCDBFFD8D6FFD5
      D3FFCFCAFFE6FFFFA015161109FFFFED7674CD2257E12355F11344EA1242E565
      65C7F1EDEDFFF4F0FFEAEBFFE8E8FFE6E6FFE3E3FFE0E0FFDCDCFFD9D9FFD2CF
      FFE8FFFF9F151B160CEFEDE32739D31952EF363DB66062C00434E6153BDAABA8
      D8FFFFF7FFECEDFFEBEBFFE8E8FFE5E5FFE1E1FFDDDDFFDADAFFD4D1FFEBFFFF
      9F141A150CF7F7E53C4ED7021BC3B1AAD7FFFCF76167D5031ED48E93DCFEFFFA
      FFF0F0FFEDEDFFEBEBFFE5E5FFE3E3FFDEDEFFDCDCFFD5D2FFEAFFFF9F141511
      0AFFFFE9D8D6F88B89D6F6F5FBFFFFFFF0EFF8A3A3DFD5D2EBFFFFFBFFF3F3FF
      F0F0FFEDEDFFE8E8FFE4E4FFE0E0FFDEDEFFD6D4FFECFFFFA01315100AFFFFEA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAFAFFF4F4FFF2F2FFEF
      EFFFE9E9FFE5E5FFE1E1FFDFDFFFD8D5FFEEFFFFA01415100AFFFFEAFAFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF5F5FFF3F3FFEFEFFFEBEB
      FFE7E7FFE3E3FFDEDEFFD8D5FFEEFFFFA01415100AFFFFEAFAFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF5F5FFF3F3FFF0F0FFECECFFE8E8FF
      E4E4FFDFDFFFD9D6FFEFFFFFA01415100AFFFFE9FAFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFFF4F4FFF3F2FFEFEFFFEAEAFFE6E6FFE2E2FFDD
      DDFFD7D5FFEEFFFFA01415100AFFFFF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFFF5F9FFF1F5FFEDF1FFE7ECFFE3E4
      FFF8FFFFA11616120DFFFFD4D5D5D6DCD8D4DCD8D4DCD8D4DCD8D4DCD8D4DCD7
      D2DCD7D2DCD2CDDCD0CCDCCCC7DCC9C4DCC5C0DCC2BDDCBFBADCB8B1D9C8E0FA
      9E18141611FFE153F87600F77E00F77E00F77E00F77E00F77E00F77E00F77E00
      F78000F78000F78000F78100F78000F78100F78200F78200F78500FF93001413
      0DFFFEA7F1A159EFA35CF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0
      A55DF0A55DF0A55DF0A55DF0A55DF0A55EEFA661F29B3BFD9300131B21FFFCAE
      FE9809FEA31CFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA3
      1DFEA31DFEA31DFEA31DFEA31DFEA21AFE9B0BFED99E}
    Gradient = True
    TabOrder = 1
    TabStop = True
    OnClick = xpBitBtn1Click
  end
  inherited ActionList: TActionList
    Left = 63
    Top = 120
  end
  inherited xpWindow1: TxpWindow
    Left = 40
    Top = 160
  end
  object select_SubCourse_By_CourseID: TADOStoredProc
    Connection = Dm.YeganehConnection
    AfterInsert = select_SubCourse_By_CourseIDAfterInsert
    ProcedureName = 'select_SubCourse_By_CourseID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CourseID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 312
    Top = 168
    object select_SubCourse_By_CourseIDSubCourseID: TIntegerField
      FieldName = 'SubCourseID'
    end
    object select_SubCourse_By_CourseIDParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object select_SubCourse_By_CourseIDCourseID: TIntegerField
      FieldName = 'CourseID'
    end
    object select_SubCourse_By_CourseIDSubCourseTitle: TWideStringField
      FieldName = 'SubCourseTitle'
      Size = 50
    end
    object select_SubCourse_By_CourseIDComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
  end
  object Dselect_SubCourse_By_CourseID: TDataSource
    DataSet = select_SubCourse_By_CourseID
    Left = 208
    Top = 272
  end
end
