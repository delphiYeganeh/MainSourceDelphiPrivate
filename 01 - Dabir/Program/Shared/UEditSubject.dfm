inherited FrEditSubject: TFrEditSubject
  Tag = 2
  Left = 624
  Top = 240
  BorderStyle = bsDialog
  Caption = #1605#1608#1590#1608#1593
  ClientHeight = 360
  ClientWidth = 484
  Constraints.MinHeight = 300
  Constraints.MinWidth = 440
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel [0]
    Left = 0
    Top = 60
    Width = 484
    Height = 259
    Align = alClient
    TabOrder = 3
    DesignSize = (
      484
      259)
    object Label2: TLabel
      Left = 429
      Top = 60
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578
    end
    object Label14: TLabel
      Left = 391
      Top = 36
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1590#1608#1593' '#1610#1575' '#1606#1608#1593' '#1606#1575#1605#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object UserField: TLabel
      Left = 391
      Top = 10
      Width = 82
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
      FocusControl = DBEdit12
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 75
      Width = 466
      Height = 177
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdRightToLeftNoAlign
      DataField = 'SubjectDescription'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 169
      Top = 7
      Width = 217
      Height = 21
      Anchors = [akTop, akRight]
      Color = clWhite
      DataField = 'UserMemo'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 169
      Top = 32
      Width = 218
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'SubjectTitle'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox3: TPanel [1]
    Left = 0
    Top = 32
    Width = 484
    Height = 28
    Align = alTop
    Anchors = [akTop, akRight]
    BevelInner = bvLowered
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      484
      28)
    object Label1: TLabel
      Left = 403
      Top = 5
      Width = 73
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1575#1610#1606#1583#1610#1705#1575#1578#1608#1585
      FocusControl = DBEdit1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 115
      Top = 5
      Width = 43
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1586#1605#1575#1606' '#1579#1576#1578' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 255
      Top = 5
      Width = 44
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '
      FocusControl = DBEdit23
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 315
      Top = 4
      Width = 82
      Height = 20
      TabStop = False
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Ctl3D = False
      DataField = 'IndicatorID'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit23: TDBShamsiDateEdit
      Left = 177
      Top = 4
      Width = 76
      Height = 20
      TabStop = False
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      CheckValidity = True
      ShowMsg = False
      Ctl3D = False
      DataField = 'RegistrationDate'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit24: TDBEdit
      Left = 57
      Top = 4
      Width = 57
      Height = 20
      TabStop = False
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Ctl3D = False
      DataField = 'RegistrationTime'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 484
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      484
      32)
    object ActionToolBar1: TActionToolBar
      Left = 285
      Top = 0
      Width = 195
      Height = 32
      ActionManager = ActionManager
      Align = alNone
      Anchors = [akTop, akRight]
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Orientation = boRightToLeft
      Spacing = 0
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 319
    Width = 484
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnArchive: TBitBtn
      Left = 7
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnArchiveClick
      Glyph.Data = {
        86050000424D8605000000000000360000002800000016000000140000000100
        18000000000050050000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89899E7D7D8FB5B591E8E8
        D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61607B00004803
        04713F3F6D8B8B82DDDDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6464780A0B840000C800009A232353858580FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB2B19F1C1D5F0004E40000EA0000861D1D37B1B2ABFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5B81E1F470206DC0307FC0000B909094F
        9F9F98FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6B81F20680509ED0206
        EE0000CC0606658E8E8CFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77776C04
        05970A0EFB0003DD0001CA03035F969694FFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DBDBD2272767080BEC0105EE0204D40102C3080842C1C1B90000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F1BEBEBBFFFFFFFFFF
        FFFFFFFFFFFFFF3B3B530104DB0509F90001DC0306D70000935A5B6C0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8AD46466004043C8A
        8A84FFFFFFFFFFFFE6E6DB2525590002E60408F70002E80002D30001DC0A0A49
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E18A8A810B0B4800009E
        1D1D63E9E9DFFFFFFFBBBBAE4343470205B40003F90003F30002EF0002E00003
        F10000510000FFFFFFFFFFFFFFFFFFFFFFFFEDEDE391918A27274D00007D0000
        CB0101B12C2C306565673536490B0B610000AB0002F20003F30508F40206F201
        04EF0102F21415520000FFFFFFE9E9DDC4C4AF84848426265400007B0000CB02
        04DE0103D70002B200028D0000A20000C30000E20305F70408F10B0EF41013F2
        1114F50C10FF00008A7F7F84000056567030317500007100009E0000E40004F9
        0003EF0002E90002E60002E60002E80003EC0206F1070AF40D11F6171BFA1D21
        FE1C1FFF1215F000007B64656FFFFFFF00000000210002670608C40E11F41C1F
        FF1E21FF1214F20D10F4080CF40408F6070CFE1216FF171BFF1C20FC1D20F117
        1AE41113C91011892829538A8A84FFFFFFFFFFFF0000FFFFFFB6B6B36D6D6639
        395B1717811819C13335FF282BFB1B1EF51518E70C0FC000009B07098A171881
        262673353562585858A1A19BFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAAAA9D56576614156A2324D22F31FF1416C31D1D268F8F839D9C
        8BB2B2A6CCCCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA448495E1112921013E6343661FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69696213146F
        00005C929188FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC6C6C073737FCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = select_LetterSubject
    Left = 347
    Top = 155
  end
  inherited ActionList: TActionList
    Left = 296
    Top = 184
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 71
    Top = 132
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 262
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetDelete
            Caption = #1581#1584#1601' &Ctrl+Del'
            ImageIndex = 3
            ShortCut = 16430
          end
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
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetDelete
                ImageIndex = 3
                ShortCut = 16430
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
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Caption = #1606#1575#1605#1607
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1587#1610#1587#1578#1605
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 2
            ShortCut = 45
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
            Action = DataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end
          item
            Action = Action13
            LastSession = 51
            ShortCut = 16469
          end
          item
            Action = Action13
            ShortCut = 16469
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end>
        ActionBar = ActionToolBar1
      end>
    Images = Dm.LetterImages
    Left = 288
    Top = 128
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 14
      ShortCut = 45
      DataSource = DSForm
    end
    object DataSetDelete: TDataSetDelete
      Tag = 2
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1581#1584#1601' '
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 8
      ShortCut = 16430
      DataSource = DSForm
    end
    object DataSetEdit: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 9
      ShortCut = 115
      DataSource = DSForm
    end
    object DataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 32
      ShortCut = 113
      DataSource = DSForm
    end
    object DataSetCancel: TDataSetCancel
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 6
      ShortCut = 32776
      DataSource = DSForm
    end
    object Action11: TAction
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action11Execute
    end
    object Action13: TAction
      Caption = '|'
      ShortCut = 16469
    end
    object AEnter: TAction
      Caption = 'AEnter'
      ShortCut = 13
      OnExecute = AEnterExecute
    end
  end
  object select_LetterSubject: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'select_LetterSubject;1'
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
    Left = 77
    Top = 181
    object select_LetterSubjectLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object select_LetterSubjectSubjectTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'SubjectTitle'
      LookupDataSet = Dm.Subject
      LookupKeyFields = 'SubjectID'
      LookupResultField = 'SubjectTitle'
      KeyFields = 'SubjectID'
      Lookup = True
    end
    object select_LetterSubjectSubjectID: TIntegerField
      FieldName = 'SubjectID'
    end
    object select_LetterSubjectSubjectDescription: TWideStringField
      FieldName = 'SubjectDescription'
      Size = 255
    end
    object select_LetterSubjectUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object select_LetterSubjectregistrationdate: TStringField
      FieldName = 'registrationdate'
      FixedChar = True
      Size = 10
    end
    object select_LetterSubjectregistrationtime: TStringField
      FieldName = 'registrationtime'
      Size = 5
    end
    object select_LetterSubjectlastupdate: TDateTimeField
      FieldName = 'lastupdate'
    end
    object select_LetterSubjectindicatorid: TIntegerField
      FieldName = 'indicatorid'
    end
  end
  object ReCommites: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT R.*'#13#10'FROM ReCommites R '#13#10'where r.RecommiteID=:@RecommiteI' +
      'D'
    Parameters = <
      item
        Name = '@RecommiteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 65
    Top = 83
    object ReCommitesRecommiteID: TAutoIncField
      FieldName = 'RecommiteID'
      ReadOnly = True
    end
    object ReCommitesLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object ReCommitesID: TSmallintField
      FieldName = 'ID'
    end
    object ReCommitesType: TWordField
      FieldName = 'Type'
    end
    object ReCommitesParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object ReCommitesOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object ReCommitesParaph: TWideStringField
      FieldName = 'Paraph'
      Size = 500
    end
    object ReCommitesRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object ReCommitesUserID: TWordField
      FieldName = 'UserID'
    end
    object ReCommitesIsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object ReCommitesProceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object ReCommitesProceedDate: TStringField
      FieldName = 'ProceedDate'
      Size = 10
    end
    object ReCommitesstaffmemo: TWideStringField
      FieldName = 'staffmemo'
      Size = 255
    end
    object ReCommitesviewdate: TStringField
      FieldName = 'viewdate'
      FixedChar = True
      Size = 10
    end
  end
end
