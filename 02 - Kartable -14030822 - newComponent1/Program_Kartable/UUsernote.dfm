inherited FUserNote: TFUserNote
  Left = 311
  Top = 176
  Caption = #1610#1575#1583#1583#1575#1588#1578
  ClientHeight = 467
  ClientWidth = 789
  Constraints.MinHeight = 350
  Constraints.MinWidth = 450
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 50
    Width = 789
    Height = 376
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 787
      Height = 374
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 606
        Height = 372
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object Label1: TLabel
          Left = 555
          Top = 43
          Width = 45
          Height = 14
          Caption = #1610#1575#1583#1583#1575#1588#1578
          FocusControl = DBMemo1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 545
          Top = 16
          Width = 50
          Height = 14
          Caption = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
          FocusControl = DBEdit1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBMemo1: TDBMemo
          Left = 1
          Top = 43
          Width = 604
          Height = 328
          Align = alBottom
          DataField = 'Note'
          DataSource = Dsp_checkusernotes
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 401
          Top = 13
          Width = 130
          Height = 22
          DataField = 'CreateDate'
          DataSource = Dsp_checkusernotes
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object YDBGrid1: TYDBGrid
        Left = 607
        Top = 1
        Width = 179
        Height = 372
        Align = alRight
        BiDiMode = bdRightToLeft
        Color = clWhite
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        ParentFont = False
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
        PrintTitle = #1593#1606#1608#1575#1606
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582
            Title.Color = 16377053
            Width = 140
            Visible = True
          end>
      end
      object YDBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 606
        Height = 372
        Cursor = crHandPoint
        Align = alClient
        Color = 15794175
        DataSource = Dsp_checkusernotes
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDblClick = YDBGrid2DblClick
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
            Expanded = False
            FieldName = 'CreateDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
            Title.Color = 16377053
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Abstract'
            Title.Alignment = taCenter
            Title.Caption = #1610#1575#1583#1583#1575#1588#1578
            Title.Color = 16377053
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 500
            Visible = True
          end>
      end
    end
  end
  object Psearch: TPanel [1]
    Left = 0
    Top = 0
    Width = 789
    Height = 50
    Align = alTop
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      789
      50)
    object Label3: TLabel
      Left = 733
      Top = 19
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 603
      Top = 20
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1610#1575#1583#1583#1575#1588#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DateWhere: TYWhereEdit
      Left = 651
      Top = 16
      Width = 73
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Color = 15531993
      ParentBiDiMode = False
      TabOrder = 0
      isLike = False
      isDate = False
      EveryLike = False
      isString = True
      FieldName = 'CreateDate'
      CodeField = 'Code'
      TitleField = 'Title'
    end
    object NoteWhere: TYWhereEdit
      Left = 284
      Top = 16
      Width = 312
      Height = 21
      Anchors = [akTop, akRight]
      Color = 15531993
      TabOrder = 1
      isLike = True
      isDate = False
      EveryLike = True
      isString = True
      FieldName = 'Note'
      CodeField = 'Code'
      TitleField = 'Title'
    end
    object BitBtn1: TAdvGlowButton
      Left = 196
      Top = 13
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 48
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
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
  object Panel4: TPanel [2]
    Left = 0
    Top = 426
    Width = 789
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      789
      41)
    object BitBtn5: TAdvGlowButton
      Left = 541
      Top = 7
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
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
      OnClick = BitBtn5Click
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
    object BitBtn4: TAdvGlowButton
      Left = 622
      Top = 7
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
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
      TabOrder = 1
      OnClick = BitBtn4Click
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
    object BitBtn3: TAdvGlowButton
      Left = 703
      Top = 7
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1580#1583#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
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
      TabOrder = 2
      OnClick = BitBtn3Click
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
      Left = 6
      Top = 7
      Width = 83
      Height = 28
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
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
      TabOrder = 3
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
  inherited DSForm: TDataSource
    DataSet = sp_distinctDate
    Left = 48
    Top = 144
  end
  inherited ActionList: TActionList
    Left = 344
    Top = 104
  end
  object sp_checkusernotes: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'sp_checkusernotes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@USERID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@DateID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 168
    Top = 92
    object sp_checkusernotesUserNoteID: TAutoIncField
      FieldName = 'UserNoteID'
      ReadOnly = True
    end
    object sp_checkusernotesUserID: TIntegerField
      FieldName = 'UserID'
    end
    object sp_checkusernotesNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object sp_checkusernotesCreateDate: TStringField
      FieldName = 'CreateDate'
      FixedChar = True
      Size = 10
    end
    object sp_checkusernotesAbstract: TWideStringField
      FieldName = 'Abstract'
      ReadOnly = True
      Size = 104
    end
  end
  object sp_distinctDate: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = sp_distinctDateAfterScroll
    CommandText = 'Sp_DistinctDate;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@MyFarsiToday'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end>
    Left = 48
    Top = 92
    object sp_distinctDateid: TIntegerField
      FieldName = 'id'
    end
    object sp_distinctDateTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object sp_distinctDatebeginDate: TStringField
      FieldName = 'beginDate'
      FixedChar = True
      Size = 10
    end
    object sp_distinctDateEnddate: TStringField
      FieldName = 'Enddate'
      FixedChar = True
      Size = 10
    end
  end
  object Dsp_checkusernotes: TDataSource
    AutoEdit = False
    DataSet = sp_checkusernotes
    Left = 168
    Top = 144
  end
end
