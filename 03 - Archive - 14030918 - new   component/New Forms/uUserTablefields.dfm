inherited FrTableFields: TFrTableFields
  Left = 751
  Top = 236
  Width = 535
  Height = 493
  BorderIcons = []
  Caption = #1578#1593#1585#1610#1601' '#1601#1610#1604#1583' '#1607#1575
  Color = 16773070
  Constraints.MinHeight = 400
  Constraints.MinWidth = 535
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 519
    Height = 454
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 408
      Width = 517
      Height = 45
      Align = alBottom
      Ctl3D = True
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      object SBExit: TAdvGlowButton
        Left = 7
        Top = 6
        Width = 87
        Height = 33
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = 0
        TabOrder = 0
        OnClick = SBExitClick
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
    object Panel4: TPanel
      Left = 1
      Top = 356
      Width = 517
      Height = 52
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object DBN1: TDBNavigator
        Left = 1
        Top = 1
        Width = 515
        Height = 50
        Cursor = crHandPoint
        DataSource = DSForm
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alClient
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = DBN1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 225
      Width = 517
      Height = 131
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        517
        131)
      object Label5: TLabel
        Left = 429
        Top = 69
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1585#1578#1610#1576' '#1606#1605#1575#1610#1588' :'
      end
      object Label2: TLabel
        Left = 428
        Top = 14
        Width = 66
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1601#1610#1604#1583'        : '
        FocusControl = DBEDescription
      end
      object Label6: TLabel
        Left = 429
        Top = 40
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1601#1610#1604#1583'        :'
        FocusControl = DBLKBoFieldTypeTitle
      end
      object ReferLabel: TLabel
        Left = 429
        Top = 98
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1608#1604' '#1605#1585#1580#1593'   :'
        FocusControl = DBLKBoReferenceTanleTitle
      end
      object DBEDescription: TDBEdit
        Left = 195
        Top = 10
        Width = 230
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Description'
        DataSource = DSForm
        TabOrder = 0
        OnChange = DBEDescriptionChange
      end
      object DBEdit5: TDBEdit
        Left = 365
        Top = 67
        Width = 60
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'order'
        DataSource = DSForm
        TabOrder = 2
      end
      object DBLKBoFieldTypeTitle: TDBLookupComboBox
        Left = 195
        Top = 38
        Width = 230
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'FieldTypeTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = DBLKBoFieldTypeTitleClick
      end
      object DBLKBoReferenceTanleTitle: TDBLookupComboBox
        Left = 195
        Top = 96
        Width = 230
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'ReferenceTanleTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 517
      Height = 224
      Align = alClient
      Caption = 'Panel1'
      ParentColor = True
      TabOrder = 3
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 515
        Height = 222
        Align = alClient
        BorderStyle = bsNone
        Color = 16772332
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Description'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1601#1610#1604#1583
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FieldTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1601#1610#1604#1583
            Width = 105
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'order'
            Title.Alignment = taCenter
            Title.Caption = #1578#1585#1578#1610#1576' '#1606#1605#1575#1610#1588
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'ReferenceTanleTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1580#1583#1608#1604' '#1605#1585#1580#1593
            Width = 136
            Visible = True
          end>
      end
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Get_UserFields_By_TableID
    Left = 72
    Top = 136
  end
  inherited ActionList: TActionList
    Left = 216
    Top = 80
  end
  inherited xpWindow1: TxpWindow
    Left = 216
    Top = 136
  end
  object Get_UserFields_By_TableID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = Get_UserFields_By_TableIDAfterInsert
    BeforeDelete = Get_UserFields_By_TableIDBeforeDelete
    ProcedureName = 'get_userfields_by_tableID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 72
    Top = 80
    object Get_UserFields_By_TableIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Get_UserFields_By_TableIDDescription: TStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 50
    end
    object Get_UserFields_By_TableIDFieldTypeID: TWordField
      FieldName = 'FieldTypeID'
    end
    object Get_UserFields_By_TableIDReferenceTableID: TIntegerField
      FieldName = 'ReferenceTableID'
    end
    object Get_UserFields_By_TableIDorder: TIntegerField
      FieldName = 'order'
    end
    object Get_UserFields_By_TableIDFieldTypeTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'FieldTypeTitle'
      LookupDataSet = Dm.FieldType
      LookupKeyFields = 'FieldTypeID'
      LookupResultField = 'FieldTypeTitle'
      KeyFields = 'FieldTypeID'
      Lookup = True
    end
    object Get_UserFields_By_TableIDReferenceTanleTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ReferenceTanleTitle'
      LookupDataSet = Dm.ReferenceTables
      LookupKeyFields = 'TableId'
      LookupResultField = 'Description'
      KeyFields = 'ReferenceTableID'
      Lookup = True
    end
    object Get_UserFields_By_TableIDTableID: TIntegerField
      FieldName = 'TableID'
    end
    object Get_UserFields_By_TableIDFieldName: TStringField
      Alignment = taRightJustify
      FieldName = 'FieldName'
      Size = 50
    end
  end
end
