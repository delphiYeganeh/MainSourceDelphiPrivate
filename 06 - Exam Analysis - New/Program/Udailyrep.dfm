inherited Fdailyrep: TFdailyrep
  Left = 88
  Top = 4
  Width = 709
  Height = 426
  BiDiMode = bdRightToLeft
  Caption = #1711#1586#1575#1585#1588' '#1585#1608#1586#1575#1606#1607
  Color = clBtnFace
  Ctl3D = True
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 657
    Top = 354
    Width = 44
    Height = 13
    Caption = '  '#1575#1586' '#1578#1575#1585#1610#1582
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 566
    Top = 355
    Width = 8
    Height = 13
    Caption = #1578#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton [2]
    Left = 374
    Top = 347
    Width = 80
    Height = 27
    Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [3]
    Left = 191
    Top = 347
    Width = 80
    Height = 27
    Caption = #1670#1575#1662
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton [4]
    Left = 99
    Top = 347
    Width = 80
    Height = 27
    Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' Word'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button5: TButton [5]
    Left = 4
    Top = 347
    Width = 80
    Height = 27
    Caption = #1582#1585#1608#1580
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton [6]
    Left = 282
    Top = 347
    Width = 80
    Height = 27
    Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
    TabOrder = 5
    OnClick = Button6Click
  end
  inherited Wow: TButton
    Left = 184
    Top = 104
    Width = 17
    Height = 17
  end
  object StatusBar1: TStatusBar [8]
    Left = 0
    Top = 380
    Width = 701
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object PageControl1: TPageControl [9]
    Left = 0
    Top = 0
    Width = 701
    Height = 338
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabIndex = 0
    TabOrder = 7
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = #1606#1575#1605#1607' '#1607#1575
      object Label2: TLabel
        Left = 650
        Top = 2
        Width = 36
        Height = 13
        Caption = #1606#1608#1593' '#1606#1575#1605#1607
      end
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 22
        Width = 693
        Height = 290
        Cursor = crHandPoint
        Align = alBottom
        Color = 14934982
        DataSource = DSForm
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poLandscape
        HasDate = False
        InvertFarsiDate = True
        TitleSort = True
        Columns = <
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Title.Alignment = taCenter
            Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MYear'
            Title.Alignment = taCenter
            Title.Caption = #1587#1575#1604
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Alignment = taCenter
            Title.Caption = #1582#1604#1575#1589#1607' '#1606#1575#1605#1607
            Width = 288
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AttachTitle'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1608#1587#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'toorgtitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumberOfAttachPages'
            Title.Alignment = taCenter
            Title.Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607' '#1662#1610#1608#1587#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NumberOfPage'
            Title.Alignment = taCenter
            Title.Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RetroactionNO'
            Title.Alignment = taCenter
            Title.Caption = #1593#1591#1601
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FollowLetterNo'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1585#1608
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UserMemo'
            Title.Alignment = taCenter
            Title.Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ToStaffer'
            Title.Alignment = taCenter
            Title.Caption = #1588#1582#1589' '#1591#1585#1601' '#1605#1705#1575#1578#1576#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SignerTitle'
            Title.Alignment = taCenter
            Title.Caption = #1575#1605#1590#1575' '#1705#1606#1606#1583#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'no1'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegistrationDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CenterNo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CenterDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SentLetterIndicatorID'
            Title.Alignment = taCenter
            Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1606#1575#1605#1607' '#1580#1608#1575#1576
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SentLettermYear'
            Title.Alignment = taCenter
            Title.Caption = #1587#1575#1604' '#1606#1575#1605#1607' '#1580#1608#1575#1576
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ClassificatioTitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UrgencyTitle'
            Title.Alignment = taCenter
            Title.Caption = #1601#1608#1585#1610#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UserTitle'
            Title.Alignment = taCenter
            Title.Caption = #1705#1575#1585#1576#1585
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FormatTitle'
            Title.Alignment = taCenter
            Title.Caption = #1601#1585#1605#1578' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TemplateTitle'
            Title.Alignment = taCenter
            Title.Caption = #1602#1575#1604#1576' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LetterTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'recommites'
            Title.Caption = #1575#1585#1580#1575#1593#1575#1578
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReceiveMode'
            Title.Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607#1567
            Visible = True
          end>
      end
      object ComboBox1: TComboBox
        Left = 496
        Top = 0
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1607#1605#1607' '#1606#1575#1605#1607' '#1607#1575
        OnChange = ComboBox1Change
        Items.Strings = (
          #1607#1605#1607' '#1606#1575#1605#1607' '#1607#1575
          #1608#1575#1585#1583#1607' '
          #1589#1575#1583#1585#1607)
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1575#1602#1583#1575#1605' '#1607#1575
      ImageIndex = 1
      object YDBGrid2: TYDBGrid
        Left = 0
        Top = 0
        Width = 693
        Height = 312
        Align = alClient
        Color = 14934982
        DataSource = Dsp_Recommites_Number
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poLandscape
        HasDate = False
        InvertFarsiDate = True
        TitleSort = True
        Columns = <
          item
            Expanded = False
            FieldName = 'Title'
            Title.Caption = #1587#1605#1578
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Proceed'
            Title.Caption = #1575#1602#1583#1575#1605' '#1588#1583#1607
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NotProceed'
            Title.Caption = #1575#1602#1583#1575#1605' '#1606#1588#1583#1607
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SumProceed'
            Title.Caption = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1575#1582#1578#1604#1575#1601' '#1576#1610#1606' '#1575#1585#1580#1575#1593' '#1608' '#1575#1602#1583#1575#1605
            Width = -1
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'avgProceed'
            Title.Caption = #1605#1578#1608#1587#1591' '#1578#1575#1582#1610#1585
            Width = 70
            Visible = True
          end>
      end
    end
  end
  object Edit1: TEdit [10]
    Left = 586
    Top = 352
    Width = 68
    Height = 21
    TabOrder = 8
    Text = '1384/12/30'
  end
  object Edit2: TEdit [11]
    Left = 490
    Top = 352
    Width = 68
    Height = 21
    TabOrder = 9
    Text = '1384/12/30'
  end
  inherited DSForm: TDataSource
    DataSet = sp_dailyRep
    Left = 196
    Top = 159
  end
  inherited ActionList: TActionList
    Left = 134
    Top = 18
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = Action1Execute
    end
  end
  object sp_dailyRep: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'sp_dailyRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 84
      end
      item
        Name = '@bdate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1384/02/18'
      end
      item
        Name = '@edate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1384/02/18'
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end>
    Left = 100
    Top = 90
    object sp_dailyRepIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object sp_dailyRepMYear: TWordField
      FieldName = 'MYear'
    end
    object sp_dailyRepSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object sp_dailyRepToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object sp_dailyRepMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object sp_dailyRepAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object sp_dailyRepRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object sp_dailyRepReceiveMode: TBooleanField
      FieldName = 'ReceiveMode'
    end
    object sp_dailyRepSentLetterIndicatorID: TIntegerField
      FieldName = 'SentLetterIndicatorID'
    end
    object sp_dailyRepSentLetterFormat: TIntegerField
      FieldName = 'SentLetterFormat'
    end
    object sp_dailyRepSentLettermYear: TWordField
      FieldName = 'SentLettermYear'
    end
    object sp_dailyRepno1: TWideStringField
      FieldName = 'no1'
      Size = 50
    end
    object sp_dailyReprecommites: TStringField
      FieldName = 'recommites'
      Size = 1000
    end
    object sp_dailyReptoorgtitle: TStringField
      FieldKind = fkLookup
      FieldName = 'toorgtitle'
      LookupDataSet = dm.Toorganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ToOrgID'
      Lookup = True
    end
  end
  object sp_Recommites_Number: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_Recommites_Number;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@bdate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1384/02/18'
      end
      item
        Name = '@edate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1384/02/18'
      end>
    Left = 108
    Top = 258
  end
  object Dsp_Recommites_Number: TDataSource
    DataSet = sp_Recommites_Number
    Left = 300
    Top = 231
  end
end
