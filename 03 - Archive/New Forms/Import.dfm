inherited FrImport: TFrImport
  Left = 530
  Top = 154
  Width = 630
  Height = 370
  Caption = 'Data Import'
  Constraints.MaxHeight = 370
  Constraints.MaxWidth = 630
  Constraints.MinHeight = 370
  Constraints.MinWidth = 630
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel [0]
    Left = 160
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Label9'
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 622
    Height = 298
    ActivePage = TabSheet3
    Align = alClient
    TabHeight = 20
    TabOrder = 0
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = #1604#1610#1587#1578' '#1601#1610#1604#1583#1607#1575' '
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 0
        Width = 614
        Height = 233
        Cursor = crHandPoint
        Align = alTop
        Color = 16053492
        DataSource = DSForm
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
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
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'FieldName'
            ReadOnly = True
            Title.Caption = #1606#1575#1605' '#1601#1610#1604#1583
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Title.Caption = #1606#1575#1605' '#1601#1575#1585#1587#1610
            Width = 240
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1575#1606#1578#1602#1575#1604' '#1602#1591#1593#1610
      ImageIndex = 1
      OnShow = TabSheet2Show
      DesignSize = (
        614
        268)
      object Label2: TLabel
        Left = 542
        Top = 11
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ' '#1593#1606#1608#1575#1606' '#1601#1575#1610#1604' :'
      end
      object Label3: TLabel
        Left = 25
        Top = 48
        Width = 89
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1578#1576#1583#1610#1604' '#1588#1583#1607
      end
      object ReCreate: TCheckBox
        Left = 300
        Top = 41
        Width = 243
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1608#1604' '#1602#1576#1604#1610' '#1583#1585' '#1589#1608#1585#1578' '#1608#1580#1608#1583' '#1581#1584#1601' '#1588#1608#1583
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object Button7: TButton
        Left = 97
        Top = 8
        Width = 145
        Height = 33
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1602#1575#1604' '#1602#1591#1593#1610' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button7Click
      end
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 252
        Width = 614
        Height = 16
        Align = alBottom
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 313
        Top = 8
        Width = 225
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 3
      end
      object dbgYeganeh: TDBGrid
        Left = 0
        Top = 83
        Width = 614
        Height = 169
        Align = alBottom
        DataSource = DYeganehTable
        TabOrder = 4
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1578#1593#1610#1610#1606' '#1606#1608#1593' '#1601#1575#1610#1604
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 473
        Height = 268
        ActivePage = TabSheet5
        Align = alClient
        MultiLine = True
        TabHeight = 1
        TabOrder = 0
        TabPosition = tpLeft
        TabWidth = 1
        object TabSheet5: TTabSheet
          Caption = 'Access'
          DesignSize = (
            464
            260)
          object Label4: TLabel
            Left = 387
            Top = 46
            Width = 41
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1580#1583#1608#1604
          end
          object Button3: TButton
            Left = 361
            Top = 8
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1601#1575#1610#1604' '#1575#1603#1587#1587
            TabOrder = 0
            OnClick = Button3Click
          end
          object AccessCombo: TComboBox
            Left = 205
            Top = 44
            Width = 178
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ParentBiDiMode = False
            TabOrder = 1
            OnClick = AccessComboClick
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 90
            Width = 464
            Height = 170
            Align = alBottom
            DataSource = DAccessTable
            TabOrder = 2
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'FoxPro Dos'
          ImageIndex = 1
          object Label5: TLabel
            Left = 175
            Top = 35
            Width = 29
            Height = 13
            Caption = #1603#1583' '#1662#1610#1580
          end
          object Button4: TButton
            Left = 320
            Top = 0
            Width = 97
            Height = 25
            Caption = #1601#1575#1610#1604
            TabOrder = 0
            OnClick = Button4Click
          end
          object CBinvert: TCheckBox
            Left = 209
            Top = 29
            Width = 185
            Height = 17
            Caption = #1575#1593#1583#1575#1583' '#1608' '#1578#1575#1585#1610#1582' '#1576#1585#1593#1603#1587' '#1588#1608#1606#1583
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
          object CP: TComboBox
            Left = 48
            Top = 31
            Width = 121
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = #13'Microsoft'
            Items.Strings = (
              #13'Vegaf'
              'Sayeh'
              'Sina'
              #13'Microsoft'
              #10
              '')
          end
          object cbinvertall: TCheckBox
            Left = 209
            Top = 51
            Width = 185
            Height = 17
            Caption = #1603#1604' '#1601#1610#1604#1583' '#1607#1575' '#1576#1585#1593#1603#1587' '#1588#1608#1606#1583
            TabOrder = 3
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 90
            Width = 464
            Height = 170
            Align = alBottom
            DataSource = DBDETable
            TabOrder = 4
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'SQL Server'
          ImageIndex = 2
          object Label8: TLabel
            Left = 339
            Top = 10
            Width = 41
            Height = 13
            Caption = #1606#1575#1605' '#1587#1585#1608#1585
          end
          object Label10: TLabel
            Left = 339
            Top = 45
            Width = 74
            Height = 13
            Caption = #1606#1575#1605' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607' '#1607#1575
          end
          object Label11: TLabel
            Left = 166
            Top = 8
            Width = 41
            Height = 13
            Caption = #1606#1575#1605' '#1580#1583#1608#1604
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 90
            Width = 464
            Height = 170
            Align = alBottom
            DataSource = DSQLTable
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object ServerName: TEdit
            Left = 216
            Top = 8
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object Button6: TButton
            Left = 120
            Top = 40
            Width = 75
            Height = 25
            Caption = #1576#1575#1586#1610#1575#1576#1610' '#1580#1583#1575#1608#1604
            TabOrder = 2
            OnClick = Button6Click
          end
          object DatabseName: TEdit
            Left = 216
            Top = 40
            Width = 121
            Height = 21
            TabOrder = 3
          end
          object SQLCombo: TComboBox
            Left = 8
            Top = 6
            Width = 153
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            OnClick = SQLComboClick
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Other'
          ImageIndex = 3
          object Label7: TLabel
            Left = 366
            Top = 48
            Width = 41
            Height = 13
            Caption = #1606#1575#1605' '#1580#1583#1608#1604
          end
          object DBGrid4: TDBGrid
            Left = 0
            Top = 90
            Width = 464
            Height = 170
            Align = alBottom
            DataSource = DOtherTable
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object Button5: TButton
            Left = 336
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Connection'
            TabOrder = 1
            OnClick = Button5Click
          end
          object otherCombo: TComboBox
            Left = 184
            Top = 46
            Width = 178
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            OnClick = otherComboClick
          end
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 473
        Top = 0
        Width = 141
        Height = 268
        Align = alRight
        Caption = #1606#1608#1593' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607' '#1607#1575
        ItemIndex = 0
        Items.Strings = (
          'Access'
          'FoxPro - Dos'
          'Microsoft SQL Server'
          #1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1607#1575#1610' '#1583#1610#1711#1585)
        TabOrder = 1
        OnClick = RadioGroup1Click
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 298
    Width = 622
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      622
      38)
    object Button1: TButton
      Left = 386
      Top = 7
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1602#1576#1604#1610
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 306
      Top = 7
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1576#1593#1583#1610
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button8: TButton
      Left = 13
      Top = 7
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      TabOrder = 2
      OnClick = Button8Click
    end
  end
  inherited DSForm: TDataSource
    DataSet = Fields
    Left = 120
    Top = 136
  end
  inherited ActionList: TActionList
    Left = 264
    Top = 72
  end
  object AccessConection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Se' +
      'ttings\Administrator\Desktop\'#1607#1606#1585#1587#1578#1575#1606#1607#1575'.mdb;Persist Security Info' +
      '=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 152
  end
  object AccessOpenDialog: TOpenDialog
    Filter = 'Access File|*.mdb'
    Left = 144
    Top = 88
  end
  object AccessTable: TADOTable
    Connection = AccessConection
    CursorType = ctStatic
    Left = 24
    Top = 224
  end
  object BDETable: TTable
    Left = 144
    Top = 216
  end
  object FoxOpenDialog: TOpenDialog
    Filter = 'Fox|*.DBF'
    Left = 80
    Top = 88
  end
  object DSQLTable: TDataSource
    DataSet = SQLTable
    Left = 112
    Top = 168
  end
  object DOtherTable: TDataSource
    DataSet = OtherTable
    Left = 224
    Top = 184
  end
  object DAccessTable: TDataSource
    DataSet = AccessTable
    Left = 40
    Top = 176
  end
  object DBDETable: TDataSource
    DataSet = BDETable
    Left = 192
    Top = 144
  end
  object DataSource5: TDataSource
    Left = 312
    Top = 112
  end
  object SQLTable: TADOTable
    Connection = SQLConnection
    Left = 88
    Top = 216
  end
  object SQLConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=test;Data Source=YEGANEH2'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 232
    Top = 120
  end
  object OtherTable: TADOTable
    Connection = OtherConnection
    Left = 216
    Top = 216
  end
  object OtherConnection: TADOConnection
    LoginPrompt = False
    Left = 336
    Top = 184
  end
  object YeganehTable: TADOTable
    Connection = Dm.YeganehConnection
    Left = 272
    Top = 216
  end
  object DYeganehTable: TDataSource
    DataSet = YeganehTable
    Left = 80
    Top = 24
  end
  object sp_CompleteFieldBook: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'sp_CompleteFieldBook;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 44
      end
      item
        Name = '@tableName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = '0'
      end
      item
        Name = '@description'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = '0'
      end
      item
        Name = '@tableid'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = 44
      end>
    Left = 416
    Top = 120
  end
  object Fields: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = FieldsAfterInsert
    CommandText = 
      'SELECT     *'#13#10'FROM         Fields'#13#10'WHERE     (TableID =:@tableID' +
      ')'
    Parameters = <
      item
        Name = '@tableID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 2
      end>
    Left = 344
    Top = 192
  end
end
