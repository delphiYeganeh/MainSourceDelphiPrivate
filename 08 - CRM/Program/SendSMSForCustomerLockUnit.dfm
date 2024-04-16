inherited FSendSMSForCustomerLock: TFSendSMSForCustomerLock
  Left = 307
  Top = 61
  Width = 897
  Height = 631
  Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705' '#1576#1585#1575#1610' '#1605#1588#1578#1585#1610#1575#1606
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 889
    Height = 73
    Align = alTop
    TabOrder = 0
    object lblCount: TLabel
      Left = 126
      Top = 51
      Width = 3
      Height = 13
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFBFBFBF4F4F4F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7EFEFEFE4E4E4D6D6D6D8
        D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
        F0F0F0DCDADAC6ADA8B88A83AC7771AC7771AFAFAFC5C5C5E7E7E7F0F0F0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEBE0DEC79F95B07C75C18D81DFB2A1FCF4EEAC
        77718D8D8D979797ADADADDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC7771
        CE9683EEB89DF7C7AEF6CEB8FEF6F1AC77711C759D1E7EAA1E7EAAEFEFEFFBFB
        FBFEFEFEFFFFFFFFFFFFFFFFFFAC7771F7BB99F8C0A2F7C7AEF7CEB8FEF6F1AC
        77715CB6D55DC3E4179DC9FDFEFEF6CDB4FEFEFEFFFFFFFFFFFFFFFFFFAC7771
        F8BB99F7C0A2F7C7AEF7CFB9FEF6F1AC777168BBD672CBE745B1D4F5CDB4E556
        01FDFEFEFFFFFFFFFFFFFFFFFFAC7771F8BB99C18C7FB37F77F6CFB9FEF6F1AC
        777187C7DBA1DDEFAFB0A4E65C09E55600FBFEFEFDFEFEFDFEFEFFFFFFAC7771
        F7BB99AC7771FFFFFFF6CFB9FEF6F1AC7771A3D4E2D4C4B2E55600E55600E556
        00E55600E55600E55600FFFFFFAC7771F7BB99D29C8AAC7771F6CEB8FEF6F1AC
        7771BBDFE9E55600E55600E55600E55600E55600E55600E55600FFFFFFAC7771
        F8BB99F7C1A3F7C7ADF7CEB8FEF6F1AC7771BFE0E9E4B291E35D0BE55600E556
        00E55600E55600E55600FFFFFFAC7771F8BB99F7C1A2F7C7ADF7CEB9FEF6F1AC
        7771B7DBE4D7F1F7CAAD94E65D0BE55600FAFDFDFBFDFDFCFEFEFFFFFFAC7771
        F7BB99F7C1A3F7C8AEF7CEB8FEF6F1AC7771B2D7E1C6EAF483CBE2F2C0A1E557
        01FCFEFEFFFFFFFFFFFFFFFFFFAC7771C79080EAB39AF7C8AEF7CEB9FEF6F1AC
        7771B8D9E2C5EAF42BA5CEFCFEFEF4C3A6FEFEFEFFFFFFFFFFFFFFFFFFFCFAF9
        D8B7ADB48078C28E82E5BAA7FEF6F1AC7771098FBB0997C60997C6FEFEFEFEFE
        FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCDDC4BFBC8E86AC7771AC
        7771FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox1: TGroupBox
      Left = 205
      Top = 2
      Width = 679
      Height = 63
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
      object Label1: TLabel
        Left = 444
        Top = 29
        Width = 25
        Height = 13
        Caption = #1605#1602#1583#1575#1585
      end
      object RadioGroup1: TRadioGroup
        Left = 472
        Top = 14
        Width = 198
        Height = 41
        Caption = #1608#1575#1581#1583' '#1586#1605#1575#1606
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          #1587#1575#1604
          #1605#1575#1607
          #1585#1608#1586)
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object cmbDays: TComboBox
        Left = 394
        Top = 27
        Width = 40
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = '10'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29')
      end
      object cmbMonths: TComboBox
        Left = 395
        Top = 27
        Width = 40
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
      end
      object cmbYears: TComboBox
        Left = 393
        Top = 27
        Width = 45
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3')
      end
      object Button1: TButton
        Left = 331
        Top = 24
        Width = 58
        Height = 25
        Caption = #1606#1605#1575#1610#1588
        TabOrder = 4
        OnClick = Button1Click
      end
      object RadioGroup2: TRadioGroup
        Left = 9
        Top = 14
        Width = 276
        Height = 41
        Caption = #1588#1585#1591' '#1601#1610#1604#1578#1585
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          #1575#1585#1587#1575#1604' '#1606#1588#1583#1607
          #1575#1585#1587#1575#1604' '#1588#1583#1607
          #1607#1605#1607)
        TabOrder = 5
        OnClick = RadioGroup2Click
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 73
    Width = 889
    Height = 407
    Align = alClient
    TabOrder = 1
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 887
      Height = 405
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 0
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
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      OnNeedColorCondition = YDBGrid1NeedColorCondition
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'CustomerID'
          Title.Caption = #1705#1583' '#1605#1588#1578#1585#1610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonTitle'
          Title.Caption = #1605#1588#1578#1585#1610
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CompanyName'
          Title.Caption = #1606#1575#1605' '#1588#1585#1705#1578
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Phone'
          Title.Caption = #1578#1604#1601#1606
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MobilePhone'
          Title.Caption = #1605#1608#1576#1575#1610#1604
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXPIREDATE'
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575' '#1602#1601#1604
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mean'
          Title.Caption = #1608#1590#1593#1610#1578
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 480
    Width = 889
    Height = 117
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 837
      Top = 16
      Width = 42
      Height = 13
      Caption = #1605#1578#1606' '#1662#1610#1575#1605':'
    end
    object Label3: TLabel
      Left = 839
      Top = 64
      Width = 40
      Height = 13
      Caption = #1578#1608#1590#1610#1581#1575#1578
    end
    object Button2: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1585#1587#1575#1604' SMS'
      TabOrder = 0
      OnClick = Button2Click
    end
    object edtMessage: TEdit
      Left = 104
      Top = 12
      Width = 729
      Height = 21
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 104
      Top = 48
      Width = 729
      Height = 57
      TabOrder = 2
    end
  end
  inherited DSForm: TDataSource
    DataSet = spGetCustomersForLockSMS
    Left = 504
    Top = 224
  end
  inherited ActionList: TActionList
    Left = 88
    Top = 208
  end
  object Customers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT CustomerID,PersonTitle, CompanyName FROM Customer')
    Left = 321
    Top = 194
    object CustomersCustomerID: TAutoIncField
      FieldName = 'CustomerID'
      ReadOnly = True
    end
    object CustomersPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object CustomersCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
  end
  object spGetCustomersForLockSMS: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'spGetCustomersForLockSMS;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@ToDay'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@SMSGroupSID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SMSSubGroupsID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Flag'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 209
    Top = 202
    object spGetCustomersForLockSMSCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object spGetCustomersForLockSMSCustomerNo: TStringField
      FieldName = 'CustomerNo'
      Size = 50
    end
    object spGetCustomersForLockSMSPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object spGetCustomersForLockSMSCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object spGetCustomersForLockSMSPhone: TWideStringField
      FieldName = 'Phone'
      Size = 100
    end
    object spGetCustomersForLockSMSMobilePhone: TWideStringField
      FieldName = 'MobilePhone'
      Size = 30
    end
    object spGetCustomersForLockSMSEXPIREDATE: TStringField
      FieldName = 'EXPIREDATE'
      Size = 50
    end
    object spGetCustomersForLockSMSToday_SMS_Recieve: TBooleanField
      FieldName = 'Today_SMS_Recieve'
    end
    object spGetCustomersForLockSMSMean: TStringField
      FieldName = 'Mean'
      Size = 50
    end
  end
  object QTMP: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 664
    Top = 201
  end
  object pm1: TPopupMenu
    Left = 176
    Top = 369
    object N1: TMenuItem
      Caption = #1575#1585#1587#1575#1604' '#1605#1608#1575#1585#1583' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1575#1585#1587#1575#1604' '#1607#1605#1607' '#1605#1608#1575#1585#1583
      OnClick = N2Click
    end
  end
end
