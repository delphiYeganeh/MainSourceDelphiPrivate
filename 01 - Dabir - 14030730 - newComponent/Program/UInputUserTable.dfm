inherited FrInputUserTable: TFrInputUserTable
  Left = 431
  Top = 179
  BorderIcons = []
  Caption = #1578#1593#1585#1610#1601' '#1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610
  ClientHeight = 648
  ClientWidth = 882
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 882
    Height = 648
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 287
      Top = 1
      Width = 594
      Height = 646
      Align = alRight
      ParentColor = True
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 12
        Top = 8
        Width = 571
        Height = 47
        Caption = #1580#1587#1578#1580#1608
        TabOrder = 0
        object Label1: TLabel
          Left = 429
          Top = 18
          Width = 103
          Height = 13
          Caption = #1576#1585' '#1575#1587#1575#1587' '#1593#1606#1608#1575#1606' '#1601#1585#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SearchEdit: TEdit
          Left = 24
          Top = 15
          Width = 399
          Height = 21
          Color = clWhite
          TabOrder = 0
          OnChange = SearchEditChange
        end
      end
      object YDBGrid1: TYDBGrid
        Left = 11
        Top = 64
        Width = 572
        Height = 541
        Cursor = crHandPoint
        Color = clBtnFace
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = YDBGrid1DblClick
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
        OnNeedColorCondition = YDBGrid1NeedColorCondition
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Description'
            Title.Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
            Title.Color = 11184810
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TableCode'
            Title.Caption = #1705#1583' '#1575#1610#1586#1608
            Title.Color = 12829635
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserField1'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578' 1'
            Title.Color = 14145495
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserField2'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578' 2'
            Title.Color = 15658734
            Width = 130
            Visible = True
          end>
      end
      object xpBitBtn4: TAdvGlowButton
        Left = 477
        Top = 611
        Width = 105
        Height = 28
        Cursor = crHandPoint
        Caption = #1608#1610#1585#1575#1610#1588' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = xpBitBtn4Click
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
      object xpBitBtn1: TAdvGlowButton
        Left = 371
        Top = 611
        Width = 105
        Height = 28
        Cursor = crHandPoint
        Caption = #1608#1610#1585#1575#1610#1588' '#1601#1610#1604#1583' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 37
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = xpBitBtn1Click
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
      object xpBitBtn2: TAdvGlowButton
        Left = 265
        Top = 611
        Width = 105
        Height = 28
        Cursor = crHandPoint
        Caption = #1601#1585#1605' '#1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = xpBitBtn2Click
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
      object xpBitBtn5: TAdvGlowButton
        Left = 159
        Top = 611
        Width = 105
        Height = 28
        Cursor = crHandPoint
        Caption = #1581#1584#1601' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 47
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = xpBitBtn5Click
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
      object btnMoveToList: TAdvGlowButton
        Left = 13
        Top = 611
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1604#1610#1587#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 68
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnMoveToListClick
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
    object Panel1: TxpPanel
      Left = 1
      Top = 1
      Width = 286
      Height = 646
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
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 282
        Height = 601
        Align = alTop
        Caption = #1604#1610#1587#1578' '#1601#1585#1605' '#1607#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
        TabOrder = 0
        object lstSelectedForms: TListBox
          Left = 2
          Top = 15
          Width = 278
          Height = 529
          Align = alTop
          Color = clWhite
          ItemHeight = 13
          TabOrder = 0
        end
        object BitBtn1: TAdvGlowButton
          Left = 32
          Top = 557
          Width = 97
          Height = 28
          Cursor = crHandPoint
          Caption = #1581#1584#1601' '#1575#1586' '#1604#1610#1587#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 3
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
        object btnAddFormToLetter: TAdvGlowButton
          Left = 131
          Top = 557
          Width = 97
          Height = 28
          Cursor = crHandPoint
          Caption = #1575#1601#1586#1608#1583#1606' '#1576#1607' '#1606#1575#1605#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 4
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnAddFormToLetterClick
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
      object xpBitBtn3: TAdvGlowButton
        Left = 10
        Top = 610
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = xpBitBtn3Click
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
    DataSet = sp_get_userTable_by_UserID
    Left = 547
    Top = 226
  end
  inherited ActionList: TActionList
    Left = 680
    Top = 360
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 671
    Top = 204
  end
  object get_userfields_by_tableID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_userfields_by_tableID;1'
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
        Value = Null
      end>
    Left = 528
    Top = 336
    object get_userfields_by_tableIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object get_userfields_by_tableIDFieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object get_userfields_by_tableIDTableID: TIntegerField
      FieldName = 'TableID'
    end
    object get_userfields_by_tableIDDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object get_userfields_by_tableIDIsWhere: TBooleanField
      FieldName = 'IsWhere'
    end
    object get_userfields_by_tableIDISString: TBooleanField
      FieldName = 'ISString'
    end
    object get_userfields_by_tableIDIsLike: TBooleanField
      FieldName = 'IsLike'
    end
    object get_userfields_by_tableIDEveryLike: TBooleanField
      FieldName = 'EveryLike'
    end
    object get_userfields_by_tableIDVisibleInGrid: TBooleanField
      FieldName = 'VisibleInGrid'
    end
    object get_userfields_by_tableIDisblob: TBooleanField
      FieldName = 'isblob'
    end
    object get_userfields_by_tableIDFieldTypeID: TIntegerField
      FieldName = 'FieldTypeID'
    end
    object get_userfields_by_tableIDReferenceTableID: TIntegerField
      FieldName = 'ReferenceTableID'
    end
    object get_userfields_by_tableIDorder: TIntegerField
      FieldName = 'order'
    end
    object get_userfields_by_tableIDFieldGroupID: TIntegerField
      FieldName = 'FieldGroupID'
    end
    object get_userfields_by_tableIDisboolean: TBooleanField
      FieldName = 'isboolean'
    end
  end
  object QInsertSelectedFormsToLetter: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO letterForms(LetterID,FormID,UserID)'
      'VALUES(:LetterID , :FormID , :UserID )')
    Left = 144
    Top = 56
  end
  object Insert_TableAccess: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Insert_TableAccess;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 416
    Top = 224
  end
  object sp_get_userTable_by_UserID: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'get_userTable_by_UserID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 125
    Top = 302
    object sp_get_userTable_by_UserIDTableId: TIntegerField
      FieldName = 'TableId'
    end
    object sp_get_userTable_by_UserIDTableName: TWideStringField
      FieldName = 'TableName'
      Size = 50
    end
    object sp_get_userTable_by_UserIDDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object sp_get_userTable_by_UserIDTableType: TWordField
      FieldName = 'TableType'
    end
    object sp_get_userTable_by_UserIDTableCode: TStringField
      FieldName = 'TableCode'
      Size = 50
    end
    object sp_get_userTable_by_UserIDUserField1: TWideStringField
      FieldName = 'UserField1'
      Size = 50
    end
    object sp_get_userTable_by_UserIDUserField2: TWideStringField
      FieldName = 'UserField2'
      Size = 50
    end
    object sp_get_userTable_by_UserIDhasAccess: TBooleanField
      FieldName = 'hasAccess'
    end
    object sp_get_userTable_by_UserIDAccessName: TStringField
      FieldKind = fkCalculated
      FieldName = 'AccessName'
      Size = 5
      Calculated = True
    end
  end
end
