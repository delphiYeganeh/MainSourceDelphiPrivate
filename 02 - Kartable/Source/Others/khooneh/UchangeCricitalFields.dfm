inherited FchangeCricitalFields: TFchangeCricitalFields
  Left = 255
  Top = 218
  Width = 496
  Height = 244
  BorderIcons = [biSystemMenu]
  Caption = #1578#1594#1610#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1589#1604#1610' '#1606#1575#1605#1607
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 393
    Top = 5
    Width = 69
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 393
    Top = 42
    Width = 21
    Height = 13
    Caption = #1587#1575#1604
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 393
    Top = 79
    Width = 65
    Height = 13
    Caption = #1593#1606#1608#1575#1606' '#1583#1576#1610#1585#1582#1575#1606#1607
    FocusControl = DBLookupComboBox1
  end
  object Label4: TLabel [3]
    Left = 393
    Top = 117
    Width = 36
    Height = 13
    Caption = #1606#1608#1593' '#1606#1575#1605#1607
    FocusControl = DBLookupComboBox2
  end
  object Label5: TLabel [4]
    Left = 0
    Top = 152
    Width = 488
    Height = 13
    Caption = 
      #1606#1705#1578#1607': '#1607#1606#1711#1575#1605' '#1580#1575#1576#1580#1575#1610#1610' '#1606#1575#1605#1607' '#1576#1610#1606' '#1583#1608' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1610#1575' '#1583#1608' '#1587#1575#1604' '#1605#1582#1578#1604#1601#1548' '#1588#1605#1575#1585#1607' ' +
      #1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1570#1606' '#1585#1575' '#1576#1607' '#1588#1705#1604' '#1583#1585#1587#1578' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit [5]
    Left = 255
    Top = 0
    Width = 134
    Height = 21
    DataField = 'IndicatorID'
    DataSource = DSForm
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [6]
    Left = 255
    Top = 37
    Width = 134
    Height = 21
    DataField = 'MYear'
    DataSource = DSForm
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox [7]
    Left = 115
    Top = 74
    Width = 274
    Height = 21
    DataField = 'SecTitle'
    DataSource = DSForm
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox [8]
    Left = 115
    Top = 112
    Width = 274
    Height = 21
    DataField = 'LetterTypeTitle'
    DataSource = DSForm
    TabOrder = 3
  end
  object BitBtn1: TxpBitBtn [9]
    Left = 15
    Top = 176
    Width = 85
    Height = 29
    startColor = 16645629
    EndColor = 14666957
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      06030000424D06030000000000003600000028000000100000000F0000000100
      180000000000D002000000000000000000000000000000000000008080008080
      0080800080808000008000000080800080800080800080800080800080800080
      8000808000808000808000808000808000808080000000800000800080000000
      8080008080008080008080008080008080008080008080008080008080008080
      8000000080000080000080000080008000000080800080800080800080800080
      8000808000808000808000808080000000800000800000800000800000800000
      8000800000008080008080008080008080008080008080008080800000008000
      00800000800000FF000080000080000080000080008000000080800080800080
      8000808000808000808000800000800000800000FF0000808000808000800000
      800000800080000000808000808000808000808000808000808000FF00008000
      00FF0000808000808000808000FF000080000080000080008000000080800080
      8000808000808000808000808000FF0000808000808000808000808000808000
      FF00008000008000008000800000008080008080008080008080008080008080
      00808000808000808000808000808000808000FF000080000080000080008000
      0000808000808000808000808000808000808000808000808000808000808000
      808000808000FF00008000008000008000800000008080008080008080008080
      00808000808000808000808000808000808000808000808000FF000080000080
      0000800080000000808000808000808000808000808000808000808000808000
      808000808000808000808000FF00008000008000008000800000008080008080
      00808000808000808000808000808000808000808000808000808000808000FF
      0000800000800080000000808000808000808000808000808000808000808000
      808000808000808000808000808000808000FF00008000008000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000FF00008080}
    Gradient = True
    TabOrder = 4
    TabStop = True
    Default = True
    OnClick = BitBtn1Click
  end
  object BitBtn2: TxpBitBtn [10]
    Left = 111
    Top = 176
    Width = 85
    Height = 29
    startColor = 16645629
    EndColor = 14666957
    Caption = #1575#1606#1589#1585#1575#1601
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      AA030000424DAA03000000000000360000002800000011000000110000000100
      1800000000007403000000000000000000000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      800080800080800080805465D400008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080803B4CD10000
      C0000080800000BF0006C13446CF008080008080008080008080008080008080
      008080008080008080008080263BD10001C54153D4000080800000C50013C800
      0CC72E43D2008080008080008080008080008080008080008080008080132AD1
      0000C93B4FD7008080000080800080801027D10010CE000DCD1026D200808000
      80800080800080800080800080800017D10006CE4356DA008080008080000080
      800080800080804053DD000FD4000CD30080800080800080800080808D9AE705
      1DD50005D24355DD008080008080008080000080800080800080800080806A7B
      E5000ED9000BD80080800080807385E60016D80008D64558E000808000808000
      8080008080000080800080800080800080800080800080800822DF0000FF0000
      FF0018DC000BDA485CE300808000808000808000808000808000008080008080
      008080008080008080008080008080162EE30013E00013E04A5EE60080800080
      8000808000808000808000808000008080008080008080008080008080008080
      3D52E90016E20015E3001AE50A26EA97A4F00080800080800080800080800080
      80000080800080800080800080800080802740EB000DE7000EE75467EC008080
      011DEC0018ED8B99F10080800080800080800080800000808000808000808000
      80801E37ED000FEC000EEC5165EF008080008080008080132DF3000EF28F9EF4
      00808000808000808000008080008080008080112BF00013EF0010EF5063F100
      80800080800080800080800080803148F6000DF891A0F6008080008080000080
      800080800011F20015F30012F35B6DF500808000808000808000808000808000
      80800080806074F80014FD798AFA008080000080800014F70019F8000EF8586C
      F700808000808000808000808000808000808000808000808000808092A2FA88
      98FA00808000008080000DFD000EFC586CF90080800080800080800080800080
      80008080008080008080008080008080008080008080008080000080802D47FC
      7588FB0080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000}
    Gradient = True
    TabOrder = 5
    TabStop = True
    Cancel = True
    OnClick = BitBtn2Click
  end
  inherited DSForm: TDataSource
    DataSet = select_CiticalLetterFields
    Left = 312
    Top = 120
  end
  object select_CiticalLetterFields: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'select_CiticalLetterFields'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 258
    Top = 64
    object select_CiticalLetterFieldsLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object select_CiticalLetterFieldsIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object select_CiticalLetterFieldsMYear: TWordField
      FieldName = 'MYear'
    end
    object select_CiticalLetterFieldsSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object select_CiticalLetterFieldsLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object select_CiticalLetterFieldsletterformat: TWordField
      FieldName = 'letterformat'
    end
    object select_CiticalLetterFieldsSecTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'SecTitle'
      LookupDataSet = Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'SecTitle'
      KeyFields = 'SecretariatID'
      Lookup = True
    end
    object select_CiticalLetterFieldsLetterTypeTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'LetterTypeTitle'
      LookupDataSet = LetterTypes
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'Letter_Type'
      Lookup = True
    end
  end
  object Secretariats: TADOTable
    Connection = dm.YeganehConnection
    TableName = 'Secretariats'
    Left = 320
    Top = 184
  end
  object LetterTypes: TADOTable
    Connection = dm.YeganehConnection
    TableName = 'LetterTypes'
    Left = 272
    Top = 80
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 302
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetEdit
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = DataSetPost
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            Caption = #1604#1594#1608' C&trl+Z'
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Action11
            Caption = '&Esc '#1582#1585#1608#1580
            ImageIndex = 12
            LastSession = 19
            ShortCut = 27
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1576#1585#1606#1575#1605#1607
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end
          item
            Action = DataSetEdit
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = Action12
            ShortCut = 16469
          end
          item
            Action = Action12
            LastSession = 63
            ShortCut = 16469
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetEdit
            ImageIndex = 48
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 40
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 56
            ShortCut = 32776
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetPost
            ImageIndex = 40
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 48
            ShortCut = 115
          end
          item
            Action = DataSetCancel
            ImageIndex = 56
            ShortCut = 32776
          end>
      end>
    Images = dm.LetterImages
    Left = 313
    Top = 246
    StyleName = 'XP Style'
    object DataSetEdit: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 48
      ShortCut = 115
      DataSource = DSForm
    end
    object DataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 40
      ShortCut = 113
      DataSource = DSForm
    end
    object DataSetCancel: TDataSetCancel
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 56
      ShortCut = 32776
      DataSource = DSForm
    end
    object Action11: TAction
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1582#1585#1608#1580
      ShortCut = 27
    end
    object Action12: TAction
      Caption = '|'
      ShortCut = 16469
    end
  end
end
