inherited FchangeCricitalFields: TFchangeCricitalFields
  Left = 731
  Top = 206
  BorderIcons = [biSystemMenu]
  Caption = #1578#1594#1610#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1589#1604#1610' '#1606#1575#1605#1607
  ClientHeight = 202
  ClientWidth = 378
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 378
    Height = 202
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 160
      Width = 376
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        376
        41)
      object BitBtn2: TAdvGlowButton
        Left = 211
        Top = 8
        Width = 75
        Height = 25
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
        TabOrder = 0
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
      object BitBtn1: TAdvGlowButton
        Left = 291
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 31
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
    end
    object Panel2: TxpPanel
      Left = 1
      Top = 1
      Width = 376
      Height = 159
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Maximized = True
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alClient
      TabOrder = 1
      DesignSize = (
        374
        157)
      object Label1: TLabel
        Left = 291
        Top = 11
        Width = 69
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 291
        Top = 36
        Width = 21
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1604
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 291
        Top = 61
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1583#1576#1610#1585#1582#1575#1606#1607
        FocusControl = DBLookupComboBox1
      end
      object Label4: TLabel
        Left = 291
        Top = 87
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1606#1575#1605#1607
        FocusControl = DBLookupComboBox2
      end
      object Label5: TLabel
        Left = 29
        Top = 116
        Width = 302
        Height = 26
        Anchors = [akTop, akRight]
        Caption = 
          #1606#1705#1578#1607': '#1607#1606#1711#1575#1605' '#1580#1575#1576#1580#1575#1610#1610' '#1606#1575#1605#1607' '#1576#1610#1606' '#1583#1608' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1610#1575' '#1583#1608' '#1587#1575#1604' '#1605#1582#1578#1604#1601#1548' '#1588#1605#1575#1585#1607' ' +
          #1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1570#1606' '#1585#1575' '#1576#1607' '#1588#1705#1604' '#1583#1585#1587#1578' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object DBEdit1: TDBEdit
        Left = 153
        Top = 7
        Width = 134
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'IndicatorID'
        DataSource = DSForm
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 153
        Top = 32
        Width = 134
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MYear'
        DataSource = DSForm
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 13
        Top = 58
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
        Left = 13
        Top = 84
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'LetterTypeTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 3
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Select_CiticalLetterFields
    Left = 168
    Top = 71
  end
  inherited ActionList: TActionList
    Left = 280
    Top = 119
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 287
    Top = 60
  end
  object Select_CiticalLetterFields: TADOStoredProc
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
    Left = 170
    Top = 23
    object Select_CiticalLetterFieldsLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Select_CiticalLetterFieldsIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Select_CiticalLetterFieldsMYear: TWordField
      FieldName = 'MYear'
    end
    object Select_CiticalLetterFieldsSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Select_CiticalLetterFieldsLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object Select_CiticalLetterFieldsletterformat: TWordField
      FieldName = 'letterformat'
    end
    object Select_CiticalLetterFieldsSecTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'SecTitle'
      LookupDataSet = Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'SecTitle'
      KeyFields = 'SecretariatID'
      Lookup = True
    end
    object Select_CiticalLetterFieldsLetterTypeTitle: TStringField
      Alignment = taRightJustify
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
    Connection = Dm.YeganehConnection
    TableName = 'Secretariats'
    Left = 104
    Top = 8
    object SecretariatsSecID: TAutoIncField
      FieldName = 'SecID'
      ReadOnly = True
    end
    object SecretariatsSecTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SecTitle'
      Size = 50
    end
    object SecretariatsPrecode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Precode'
      Size = 50
    end
    object SecretariatsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object SecretariatsArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object LetterTypes: TADOTable
    Connection = Dm.YeganehConnection
    TableName = 'LetterTypes'
    Left = 40
    Top = 15
    object LetterTypesID: TIntegerField
      FieldName = 'ID'
    end
    object LetterTypesTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object LetterTypesPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
      Size = 10
    end
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
    Left = 281
    Top = 30
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
