inherited FchangeCricitalFields: TFchangeCricitalFields
  Left = 557
  Top = 119
  Width = 390
  Height = 255
  BorderIcons = [biSystemMenu]
  Caption = #1578#1594#1610#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1589#1604#1610' '#1587#1606#1583
  Constraints.MinHeight = 255
  Constraints.MinWidth = 390
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 374
    Height = 216
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 372
      Height = 173
      Align = alClient
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        372
        173)
      object Label1: TLabel
        Left = 295
        Top = 13
        Width = 69
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 295
        Top = 46
        Width = 21
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1604
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 295
        Top = 82
        Width = 54
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1583#1601#1578#1585' '#1576#1575#1610#1711#1575#1606#1610
        FocusControl = DBLookupComboBox1
      end
      object Label4: TLabel
        Left = 295
        Top = 120
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1587#1606#1583
        FocusControl = DBLookupComboBox2
        Visible = False
      end
      object Label5: TLabel
        Left = 24
        Top = 142
        Width = 327
        Height = 26
        Anchors = [akTop, akRight]
        Caption = 
          #1606#1705#1578#1607': '#1607#1606#1711#1575#1605' '#1580#1575#1576#1580#1575#1610#1610' '#1587#1606#1583' '#1576#1610#1606' '#1583#1608' '#1583#1601#1578#1585' '#1610#1575' '#1583#1608' '#1587#1575#1604' '#1605#1582#1578#1604#1601#1548' '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705 +
          #1575#1578#1608#1585' '#1570#1606' '#1585#1575' '#1576#1607' '#1588#1705#1604' '#1583#1585#1587#1578' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object DBEdit1: TDBEdit
        Left = 156
        Top = 10
        Width = 134
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'IndicatorID'
        DataSource = DSForm
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 156
        Top = 41
        Width = 134
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MYear'
        DataSource = DSForm
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 78
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'SecTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 116
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'LetterTypeTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 3
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 174
      Width = 372
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        372
        41)
      object BitBtn1: TAdvGlowButton
        Left = 292
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BitBtn2: TAdvGlowButton
        Left = 212
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = select_CiticalLetterFields
    Left = 56
    Top = 72
  end
  inherited ActionList: TActionList
    Left = 121
    Top = 80
  end
  inherited xpWindow1: TxpWindow
    Left = 257
    Top = 67
  end
  object select_CiticalLetterFields: TADOStoredProc
    Connection = Dm.YeganehConnection
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
    Left = 58
    Top = 16
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
    object select_CiticalLetterFieldsSecretariatID: TIntegerField
      FieldName = 'SecretariatID'
    end
  end
  object Secretariats: TADOTable
    Connection = Dm.YeganehConnection
    TableName = 'Secretariats'
    Left = 192
    Top = 8
  end
  object LetterTypes: TADOTable
    Connection = Dm.YeganehConnection
    TableName = 'LetterTypes'
    Left = 136
    Top = 8
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
    Images = Dm.LetterImages
    Left = 185
    Top = 62
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
