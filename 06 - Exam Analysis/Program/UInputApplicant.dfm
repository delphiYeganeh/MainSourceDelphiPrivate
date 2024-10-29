inherited FrInputApplicant: TFrInputApplicant
  Left = 473
  Top = 279
  Width = 497
  Height = 464
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 358
    Top = 40
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
    FocusControl = DBEdit1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 358
    Top = 132
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1606#1575#1605' '#1705#1575#1605#1604
    FocusControl = DBEdit2
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 358
    Top = 192
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1606#1610#1605#1587#1575#1604' '#1608#1585#1608#1583
    FocusControl = DBEdit3
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 358
    Top = 215
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1585#1588#1578#1607
    FocusControl = DBLookupComboBox1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 358
    Top = 72
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1606#1575#1605' '
    FocusControl = DBEdit4
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 358
    Top = 101
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '
    FocusControl = DBEdit5
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 358
    Top = 162
    Width = 105
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1606#1575#1605' '#1662#1583#1585
    FocusControl = DBEdit6
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText [7]
    Left = 358
    Top = 244
    Width = 105
    Height = 17
    Anchors = [akTop, akRight]
    DataField = 'CFC1'
    DataSource = Dm.Dsp_Table_CustomFieldsCaption
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText [8]
    Left = 358
    Top = 274
    Width = 105
    Height = 17
    Anchors = [akTop, akRight]
    DataField = 'CFC2'
    DataSource = Dm.Dsp_Table_CustomFieldsCaption
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText [9]
    Left = 358
    Top = 304
    Width = 105
    Height = 17
    Anchors = [akTop, akRight]
    DataField = 'CFC3'
    DataSource = Dm.Dsp_Table_CustomFieldsCaption
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText [10]
    Left = 358
    Top = 334
    Width = 105
    Height = 17
    Anchors = [akTop, akRight]
    DataField = 'CFC4'
    DataSource = Dm.Dsp_Table_CustomFieldsCaption
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText [11]
    Left = 358
    Top = 362
    Width = 105
    Height = 17
    Anchors = [akTop, akRight]
    DataField = 'CFC5'
    DataSource = Dm.Dsp_Table_CustomFieldsCaption
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit [12]
    Left = 176
    Top = 40
    Width = 176
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'ApplicantCode'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit [13]
    Left = 88
    Top = 127
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FullName'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [14]
    Left = 264
    Top = 185
    Width = 88
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Termcode'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 5
    OnEnter = DBEdit3Enter
  end
  object DBLookupComboBox1: TDBLookupComboBox [15]
    Left = 88
    Top = 214
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'majorTitle'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 6
  end
  object ActionMainMenuBar1: TActionMainMenuBar [16]
    Left = 0
    Top = 0
    Width = 481
    Height = 30
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object xpBitBtn1: TxpBitBtn [17]
    Left = 8
    Top = 389
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
    Anchors = [akLeft, akBottom]
    TabOrder = 14
    TabStop = True
    OnClick = xpBitBtn1Click
  end
  object DBEdit4: TDBEdit [18]
    Left = 52
    Top = 69
    Width = 300
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FirstName'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 1
    OnChange = DBEdit5Change
  end
  object DBEdit5: TDBEdit [19]
    Left = 52
    Top = 98
    Width = 300
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'LastName'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 2
    OnChange = DBEdit5Change
  end
  object CheckBox1: TCheckBox [20]
    Left = 176
    Top = 392
    Width = 177
    Height = 17
    Anchors = [akTop, akRight]
    Caption = #1576#1607' '#1570#1586#1605#1608#1606' '#1580#1575#1585#1610' '#1575#1582#1578#1589#1575#1589' '#1583#1575#1583#1607' '#1588#1608#1583
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object DBEdit6: TDBEdit [21]
    Left = 88
    Top = 156
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FatherName'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 4
  end
  object DBEdit7: TDBEdit [22]
    Left = 88
    Top = 243
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CustomField1'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [23]
    Left = 88
    Top = 272
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CustomField2'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 8
  end
  object DBEdit9: TDBEdit [24]
    Left = 88
    Top = 302
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CustomField3'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 9
  end
  object DBEdit10: TDBEdit [25]
    Left = 88
    Top = 331
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CustomField4'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [26]
    Left = 88
    Top = 359
    Width = 264
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CustomField5'
    DataSource = DSelect_Applicant_By_ApplicantID
    TabOrder = 11
  end
  inherited ActionList: TActionList
    Left = 7
    Top = 224
  end
  inherited xpWindow1: TxpWindow
    Left = 48
    Top = 312
  end
  object Select_Applicant_By_ApplicantID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_Applicant_By_ApplicantID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ApplicantID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 156
    Top = 171
    object Select_Applicant_By_ApplicantIDApplicantID: TAutoIncField
      FieldName = 'ApplicantID'
      ReadOnly = True
    end
    object Select_Applicant_By_ApplicantIDApplicantCode: TStringField
      FieldName = 'ApplicantCode'
    end
    object Select_Applicant_By_ApplicantIDFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object Select_Applicant_By_ApplicantIDLastName: TWideStringField
      FieldName = 'LastName'
      Size = 50
    end
    object Select_Applicant_By_ApplicantIDFullName: TWideStringField
      FieldName = 'FullName'
      Size = 80
    end
    object Select_Applicant_By_ApplicantIDMajorID: TSmallintField
      FieldName = 'MajorID'
    end
    object Select_Applicant_By_ApplicantIDTermcode: TStringField
      FieldName = 'Termcode'
      FixedChar = True
      Size = 3
    end
    object Select_Applicant_By_ApplicantIDmajorTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'majorTitle'
      LookupDataSet = Dm.Major
      LookupKeyFields = 'MajorID'
      LookupResultField = 'MajorTitle'
      KeyFields = 'MajorID'
      Lookup = True
    end
    object Select_Applicant_By_ApplicantIDFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 50
    end
    object Select_Applicant_By_ApplicantIDCustomField1: TWideStringField
      FieldName = 'CustomField1'
      Size = 50
    end
    object Select_Applicant_By_ApplicantIDCustomField2: TWideStringField
      FieldName = 'CustomField2'
      Size = 50
    end
    object Select_Applicant_By_ApplicantIDCustomField3: TStringField
      FieldName = 'CustomField3'
      Size = 100
    end
    object Select_Applicant_By_ApplicantIDCustomField4: TStringField
      FieldName = 'CustomField4'
      Size = 100
    end
    object Select_Applicant_By_ApplicantIDCustomField5: TStringField
      FieldName = 'CustomField5'
      Size = 100
    end
  end
  object DSelect_Applicant_By_ApplicantID: TDataSource
    AutoEdit = False
    DataSet = Select_Applicant_By_ApplicantID
    Left = 24
    Top = 128
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert1
            ImageIndex = 13
            ShortCut = 45
          end
          item
            Action = DataSetPost1
            ImageIndex = 37
            ShortCut = 113
          end
          item
            Action = DataSetEdit1
            ImageIndex = 42
            ShortCut = 115
          end
          item
            Action = adelete
            ImageIndex = 21
            ShortCut = 16430
          end
          item
            Action = DataSetCancel1
            ImageIndex = 72
            ShortCut = 16474
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = Dm.LetterImages
    Left = 80
    Top = 16
    StyleName = 'XP Style'
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1575#1610#1580#1575#1583
      ImageIndex = 13
      ShortCut = 45
      DataSource = DSelect_Applicant_By_ApplicantID
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ImageIndex = 42
      ShortCut = 115
      DataSource = DSelect_Applicant_By_ApplicantID
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      ImageIndex = 37
      ShortCut = 113
      OnExecute = DataSetPost1Execute
      DataSource = DSelect_Applicant_By_ApplicantID
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      ImageIndex = 72
      ShortCut = 16474
      DataSource = DSelect_Applicant_By_ApplicantID
    end
    object Action1: TAction
      Category = 'Dataset'
      Caption = #1582#1585#1608#1580
      ImageIndex = 33
    end
    object adelete: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1583#1575#1606#1588#1580#1608
      ImageIndex = 21
      ShortCut = 16430
      OnExecute = adeleteExecute
    end
  end
end
