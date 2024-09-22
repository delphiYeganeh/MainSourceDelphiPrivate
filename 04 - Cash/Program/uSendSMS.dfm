object frmSendSMS: TfrmSendSMS
  Left = 359
  Top = 225
  AutoScroll = False
  BiDiMode = bdRightToLeft
  ClientHeight = 606
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 33
    Align = alTop
    TabOrder = 0
    DesignSize = (
      931
      33)
    object Label1: TLabel
      Left = 815
      Top = 6
      Width = 92
      Height = 16
      Anchors = [akTop, akRight]
      Caption = #1575#1593#1578#1576#1575#1585' '#1576#1575#1602#1610' '#1605#1575#1606#1583#1607
    end
    object Button5: TButton
      Left = 13
      Top = 4
      Width = 100
      Height = 25
      Caption = #1605#1581#1575#1587#1576#1607' '#1575#1593#1578#1576#1575#1585
      TabOrder = 0
      OnClick = Button5Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 931
    Height = 423
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705
      object YRotateLabel1: TYRotateLabel
        Left = 152
        Top = 296
        Width = 90
        Height = 90
        Caption = 'YRotateLabel1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 923
        Height = 57
        Align = alTop
        TabOrder = 0
        DesignSize = (
          923
          57)
        object Label2: TLabel
          Left = 892
          Top = 16
          Width = 16
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605
        end
        object Label3: TLabel
          Left = 685
          Top = 16
          Width = 71
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        end
        object Label4: TLabel
          Left = 502
          Top = 16
          Width = 51
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
        end
        object Label9: TLabel
          Left = 358
          Top = 16
          Width = 45
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1580#1606#1587#1610#1578
        end
        object Button1: TButton
          Left = 13
          Top = 11
          Width = 100
          Height = 36
          Caption = #1578#1607#1610#1607' '#1604#1610#1587#1578
          TabOrder = 0
          OnClick = Button1Click
        end
        object edFirstName: TEdit
          Left = 762
          Top = 16
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object edLastName: TEdit
          Left = 561
          Top = 16
          Width = 121
          Height = 24
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
        object dlcbSexes: TDBLookupComboBox
          Left = 262
          Top = 16
          Width = 89
          Height = 24
          Anchors = [akTop, akRight]
          KeyField = 'Sexid'
          ListField = 'Title'
          ListSource = dm.dSexes
          TabOrder = 3
        end
        object edBirthdate: TSolarDatePicker
          Left = 408
          Top = 15
          Width = 90
          Height = 24
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          TabOrder = 4
          Enabled = True
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
          Glyph = gtCalendar
          ShowDefaultDate = False
          AutoCheck = False
          AutoDeleteDelimiter = False
          EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
          MaskEnabled = False
          ColorCaptionStart = 13158600
          ColorCaptionStop = clWhite
          ColorBodyStart = clWhite
          ColorBodyStop = clWhite
          ColorTodayLine = clBlack
          ColorSelectBrush = 14474460
          ColorDisableMonth = clGray
          ColorVacationDay = clRed
          ColorNormalDay = clBlack
          ColorStyle = csWhiteGray
          ButtonStyle = bsRound
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
      end
      object YDBGrid2: TYDBGrid
        Left = 0
        Top = 57
        Width = 923
        Height = 335
        Cursor = crHandPoint
        Align = alClient
        DataSource = dSelectContact
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = True
        PageNumber = False
        RecordNumber = True
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'FirstName'
            Title.Caption = #1606#1575#1605
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LastName'
            Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FatherName'
            Title.Caption = #1606#1575#1605' '#1662#1583#1585
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BirthPlace'
            Title.Caption = #1605#1581#1604' '#1578#1608#1604#1583
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BirthDate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Address'
            Title.Caption = #1570#1583#1585#1587
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Phones'
            Title.Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' '
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Job'
            Title.Caption = #1588#1594#1604
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IsActive'
            Title.Caption = #1601#1593#1575#1604
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SendSms'
            Title.Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705
            Width = 76
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705' '#1575#1602#1587#1575#1591' '#1593#1602#1576' '#1575#1601#1578#1575#1583#1607
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 923
        Height = 41
        Align = alTop
        TabOrder = 0
        DesignSize = (
          923
          41)
        object Label6: TLabel
          Left = 776
          Top = 9
          Width = 65
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1585#1608#1586' , '#1578#1575' '#1578#1575#1585#1610#1582
        end
        object Button3: TButton
          Left = 3
          Top = 2
          Width = 100
          Height = 36
          Caption = #1578#1607#1610#1607' '#1604#1610#1587#1578
          TabOrder = 0
          OnClick = Button3Click
        end
        object SpDay: TSpinEdit
          Left = 844
          Top = 7
          Width = 57
          Height = 26
          Anchors = [akTop, akRight]
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnChange = SpDayChange
        end
        object ShamsiDateEdit1: TSolarDatePicker
          Left = 656
          Top = 7
          Width = 104
          Height = 24
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          TabOrder = 2
          Text = '1403/07/01'
          Enabled = True
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
          Glyph = gtCalendar
          ShowDefaultDate = True
          AutoCheck = False
          AutoDeleteDelimiter = False
          EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
          MaskEnabled = False
          ColorCaptionStart = 13158600
          ColorCaptionStop = clWhite
          ColorBodyStart = clWhite
          ColorBodyStop = clWhite
          ColorTodayLine = clBlack
          ColorSelectBrush = 14474460
          ColorDisableMonth = clGray
          ColorVacationDay = clRed
          ColorNormalDay = clBlack
          ColorStyle = csWhiteGray
          ButtonStyle = bsRound
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
      end
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 81
        Width = 923
        Height = 311
        Cursor = crHandPoint
        Align = alClient
        DataSource = dREPORT_FORCEPAYMENTSMS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = True
        PageNumber = False
        RecordNumber = True
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SimilarWord'
            ReadOnly = True
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'accounttitle'
            ReadOnly = True
            Title.Caption = #1606#1575#1605' '#1589#1575#1581#1576' '#1581#1587#1575#1576
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'accountno'
            ReadOnly = True
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'loanno'
            ReadOnly = True
            Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FOCETYPETITLE'
            ReadOnly = True
            Title.Caption = #1606#1608#1593
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DelayCount'
            Title.Caption = #1605#1610#1586#1575#1606' '#1578#1575#1582#1610#1585
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Phones'
            ReadOnly = True
            Title.Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
            Width = 100
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 41
        Width = 923
        Height = 40
        Align = alTop
        TabOrder = 2
        DesignSize = (
          923
          40)
        object Label7: TLabel
          Left = 770
          Top = 11
          Width = 125
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        end
        object edSerach: TEdit
          Left = 656
          Top = 9
          Width = 104
          Height = 24
          Anchors = [akTop, akRight]
          TabOrder = 0
          OnChange = edSerachChange
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1662#1610#1575#1605#1607#1575#1610' '#1575#1585#1587#1575#1604#1610
      ImageIndex = 2
      object YDBGrid3: TYDBGrid
        Left = 0
        Top = 41
        Width = 923
        Height = 351
        Cursor = crHandPoint
        Align = alClient
        DataSource = dSentSMS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = True
        PageNumber = False
        RecordNumber = True
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'SmsNumber'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1605#1582#1575#1591#1576
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Shamsi'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1585#1587#1575#1604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InProcess'
            Title.Alignment = taCenter
            Title.Caption = #1583#1585' '#1581#1575#1604' '#1601#1585#1587#1578#1575#1583#1606
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IsSend'
            Title.Alignment = taCenter
            Title.Caption = #1575#1585#1587#1575#1604' '#1588#1583#1607
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SmsStatus'
            Title.Alignment = taCenter
            Title.Caption = #1608#1590#1593#1610#1578' '#1662#1610#1575#1605#1705
            Width = 436
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 923
        Height = 41
        Align = alTop
        TabOrder = 1
        DesignSize = (
          923
          41)
        object Label10: TLabel
          Left = 817
          Top = 15
          Width = 75
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578' '#1662#1610#1575#1605#1705
        end
        object Button2: TButton
          Left = 6
          Top = 2
          Width = 100
          Height = 36
          Caption = #1578#1607#1610#1607' '#1604#1610#1587#1578
          TabOrder = 0
          OnClick = Button2Click
        end
        object RadioButton1: TRadioButton
          Left = 688
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1607#1605#1607
          TabOrder = 1
          OnClick = Button2Click
        end
        object RadioButton2: TRadioButton
          Left = 560
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1587#1575#1604' '#1606#1588#1583#1607
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = Button2Click
        end
        object RadioButton3: TRadioButton
          Left = 432
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1587#1575#1604' '#1588#1583#1607
          TabOrder = 3
          OnClick = Button2Click
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 456
    Width = 931
    Height = 150
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      931
      150)
    object Label8: TLabel
      Left = 859
      Top = 23
      Width = 59
      Height = 16
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606' '#1662#1610#1575#1605#1705
    end
    object Label5: TLabel
      Left = 787
      Top = 1
      Width = 142
      Height = 16
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1591#1585' : Ctrl + Click'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button4: TButton
      Left = 16
      Top = 105
      Width = 100
      Height = 36
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705
      TabOrder = 1
      OnClick = Button4Click
    end
    object memoSms: TEdit
      Left = 15
      Top = 45
      Width = 902
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object rgSendSms: TRadioGroup
      Left = 152
      Top = 72
      Width = 185
      Height = 73
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705
      ItemIndex = 0
      Items.Strings = (
        #1607#1605#1607
        #1605#1608#1575#1585#1583' '#1575#1606#1578#1582#1575#1576#1610)
      TabOrder = 2
    end
  end
  object spREPORT_FORCEPAYMENTSMS: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = spREPORT_FORCEPAYMENTSMSAfterScroll
    ProcedureName = 'REPORT_FORCEPAYMENTSMS'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FOCETYPEID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@PAYSTATUS'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@GROUPINGBYACCOUNT'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@DELAYDAYS'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@ONLYLATEST'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@NO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@SEARCHBYLOANNO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@MATUREDATEFROM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@MATUREDATETO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@FAMILYID'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@LOANTYPEID'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@MONTHLYTYPEID'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@TODAY'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@TOP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SUMAMOUNT'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = '0'
      end
      item
        Name = '@SUMAMERCE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = '0'
      end
      item
        Name = '@SUMINTEREST'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = '0'
      end>
    Left = 120
    Top = 280
    object spREPORT_FORCEPAYMENTSMSaccountno: TStringField
      FieldName = 'accountno'
    end
    object spREPORT_FORCEPAYMENTSMSaccounttitle: TWideStringField
      FieldName = 'accounttitle'
      Size = 100
    end
    object spREPORT_FORCEPAYMENTSMSloanno: TStringField
      FieldName = 'loanno'
      Size = 10
    end
    object spREPORT_FORCEPAYMENTSMSFOCETYPETITLE: TWideStringField
      FieldName = 'FOCETYPETITLE'
      Size = 50
    end
    object spREPORT_FORCEPAYMENTSMSDelayCount: TIntegerField
      FieldName = 'DelayCount'
      ReadOnly = True
    end
    object spREPORT_FORCEPAYMENTSMSFOCETYPEID: TWordField
      FieldName = 'FOCETYPEID'
    end
    object spREPORT_FORCEPAYMENTSMSContactID: TIntegerField
      FieldName = 'ContactID'
    end
    object spREPORT_FORCEPAYMENTSMSPhones: TWideStringField
      FieldName = 'Phones'
      Size = 50
    end
    object spREPORT_FORCEPAYMENTSMSSimilarWord: TStringField
      FieldName = 'SimilarWord'
      Size = 100
    end
    object spREPORT_FORCEPAYMENTSMSFromDate: TStringField
      FieldName = 'FromDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
  end
  object dREPORT_FORCEPAYMENTSMS: TDataSource
    DataSet = spREPORT_FORCEPAYMENTSMS
    Left = 152
    Top = 280
  end
  object qShamsiDate: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 72
    Top = 280
  end
  object spSelectContact: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'SelectContact;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FirstName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@LastName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@BirthDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@SexId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 168
    object spSelectContactContactID: TAutoIncField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object spSelectContactPersonalNo: TWideStringField
      FieldName = 'PersonalNo'
      Size = 50
    end
    object spSelectContactFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 30
    end
    object spSelectContactLastName: TWideStringField
      FieldName = 'LastName'
      Size = 40
    end
    object spSelectContactFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 30
    end
    object spSelectContactIdno: TWideStringField
      FieldName = 'Idno'
      Size = 10
    end
    object spSelectContactBirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 30
    end
    object spSelectContactBirthDate: TStringField
      FieldName = 'BirthDate'
      Size = 10
    end
    object spSelectContactAddress: TWideStringField
      FieldName = 'Address'
      Size = 100
    end
    object spSelectContactPhones: TWideStringField
      FieldName = 'Phones'
      Size = 50
    end
    object spSelectContactJob: TWideStringField
      FieldName = 'Job'
      Size = 50
    end
    object spSelectContactIsActive: TBooleanField
      FieldName = 'IsActive'
    end
    object spSelectContactSign: TBlobField
      FieldName = 'Sign'
    end
    object spSelectContactMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object spSelectContactUserField1: TWideStringField
      FieldName = 'UserField1'
      Size = 100
    end
    object spSelectContactUserField2: TWideStringField
      FieldName = 'UserField2'
      Size = 100
    end
    object spSelectContactpicture: TBlobField
      FieldName = 'picture'
    end
    object spSelectContactCalField: TIntegerField
      FieldName = 'CalField'
    end
    object spSelectContactContactTypeID: TWordField
      FieldName = 'ContactTypeID'
    end
    object spSelectContactHAVEINTEREST: TBooleanField
      FieldName = 'HAVEINTEREST'
    end
    object spSelectContactContactTitle: TStringField
      FieldName = 'ContactTitle'
      Size = 100
    end
    object spSelectContactSexId: TIntegerField
      FieldName = 'SexId'
    end
    object spSelectContactSendSms: TBooleanField
      FieldName = 'SendSms'
    end
  end
  object dSelectContact: TDataSource
    DataSet = spSelectContact
    Left = 88
    Top = 168
  end
  object qSentSMS: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = qSentSMSAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select *,dbo.Shamsi(SendDate) Shamsi from outbox')
    Left = 448
    Top = 296
    object qSentSMSOutBoxId: TAutoIncField
      FieldName = 'OutBoxId'
      ReadOnly = True
    end
    object qSentSMSSmsNumber: TStringField
      FieldName = 'SmsNumber'
      Size = 11
    end
    object qSentSMSSmsText: TMemoField
      FieldName = 'SmsText'
      BlobType = ftMemo
    end
    object qSentSMSSendDate: TDateTimeField
      FieldName = 'SendDate'
    end
    object qSentSMSInProcess: TBooleanField
      FieldName = 'InProcess'
    end
    object qSentSMSIsSend: TBooleanField
      FieldName = 'IsSend'
    end
    object qSentSMSShamsi: TStringField
      FieldName = 'Shamsi'
      ReadOnly = True
      Size = 10
    end
    object qSentSMSSmsStatus: TStringField
      FieldName = 'SmsStatus'
      Size = 4000
    end
  end
  object dSentSMS: TDataSource
    DataSet = qSentSMS
    Left = 484
    Top = 300
  end
end
