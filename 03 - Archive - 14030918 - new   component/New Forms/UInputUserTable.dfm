inherited FrInputUserTable: TFrInputUserTable
  Left = 707
  Top = 313
  Width = 561
  Height = 460
  BorderIcons = [biSystemMenu]
  Caption = #1578#1593#1585#1610#1601' '#1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610
  Constraints.MinHeight = 400
  Constraints.MinWidth = 528
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 545
    Height = 421
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 375
      Width = 543
      Height = 45
      Align = alBottom
      Ctl3D = True
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      object SBExit: TAdvGlowButton
        Left = 6
        Top = 6
        Width = 105
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
      Top = 34
      Width = 543
      Height = 52
      Align = alTop
      ParentColor = True
      TabOrder = 1
      object DBN1: TDBNavigator
        Left = 1
        Top = 1
        Width = 541
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
      Top = 86
      Width = 543
      Height = 245
      Align = alClient
      Caption = 'Panel3'
      ParentColor = True
      TabOrder = 2
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 541
        Height = 243
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Description'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1601#1585#1605
            Width = 479
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 331
      Width = 543
      Height = 44
      Align = alBottom
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        543
        44)
      object Label2: TLabel
        Left = 492
        Top = 11
        Width = 43
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1601#1585#1605' : '
        FocusControl = DBEDescription
      end
      object xpBitBtn1: TAdvGlowButton
        Left = 98
        Top = 4
        Width = 105
        Height = 30
        Cursor = crHandPoint
        Caption = #1578#1593#1585#1610#1601' '#1601#1610#1604#1583#1607#1575
        Font.Charset = DEFAULT_CHARSET
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
        TabOrder = 0
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
      object DBEDescription: TDBEdit
        Left = 208
        Top = 8
        Width = 280
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Description'
        DataSource = DSForm
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 543
      Height = 33
      Align = alTop
      ParentColor = True
      TabOrder = 4
      DesignSize = (
        543
        33)
      object Label1: TLabel
        Left = 486
        Top = 8
        Width = 42
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608' :'
      end
      object SearchEdit: TEdit
        Left = 263
        Top = 6
        Width = 219
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnChange = SearchEditChange
      end
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Get_UserTable
    Left = 72
    Top = 152
  end
  inherited ActionList: TActionList
    Left = 200
    Top = 104
  end
  inherited xpWindow1: TxpWindow
    Left = 200
    Top = 160
  end
  object Get_UserTable: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = Get_UserTableAfterInsert
    BeforeDelete = Get_UserTableBeforeDelete
    ProcedureName = 'get_userTable;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 73
    Top = 104
    object Get_UserTableTableId: TWordField
      FieldName = 'TableId'
    end
    object Get_UserTableTableName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'TableName'
      Size = 50
    end
    object Get_UserTableDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 50
    end
    object Get_UserTableTableType: TIntegerField
      FieldName = 'TableType'
    end
  end
end
