inherited FrFollowUp: TFrFollowUp
  Left = 552
  Top = 277
  Caption = #1662#1610#1711#1610#1585#1610
  ClientHeight = 517
  ClientWidth = 712
  Constraints.MinHeight = 490
  Constraints.MinWidth = 520
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 712
    Height = 517
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 475
      Width = 710
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        710
        41)
      object BitBtn1: TAdvGlowButton
        Left = 8
        Top = 11
        Width = 80
        Height = 25
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
    end
    object Panel2: TxpPanel
      Left = 1
      Top = 263
      Width = 710
      Height = 38
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
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
      Align = alTop
      TabOrder = 1
      DesignSize = (
        708
        36)
      object BitBtn2: TAdvGlowButton
        Left = 296
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
      object CBNext: TComboBox
        Left = 93
        Top = 9
        Width = 95
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        ParentBiDiMode = False
        TabOrder = 1
        Text = #1601#1585#1583#1575
        Items.Strings = (
          #1575#1605#1585#1608#1586
          #1601#1585#1583#1575
          #1662#1587' '#1601#1585#1583#1575
          #1587#1607' '#1585#1608#1586' '#1583#1610#1711#1585
          #1670#1607#1575#1585' '#1585#1608#1586' '#1583#1610#1711#1585
          #1575#1608#1604' '#1607#1601#1578#1607' '#1570#1610#1606#1583#1607' '
          #1610#1705' '#1607#1601#1578#1607' '#1583#1610#1711#1585
          #1583#1608' '#1607#1601#1578#1607' '#1583#1610#1711#1585
          #1610#1705' '#1605#1575#1607' '#1583#1610#1711#1585)
      end
      object BitBtn3: TAdvGlowButton
        Left = 498
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        ImageIndex = 37
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
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
      object Button2: TAdvGlowButton
        Left = 397
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        ImageIndex = 90
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
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
        Left = 599
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
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
      object Button1: TAdvGlowButton
        Left = 195
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1662#1610#1711#1610#1585#1610' '#1580#1583#1610#1583
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        OnClick = Button1Click
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
    object GroupBox3: TPanel
      Left = 1
      Top = 105
      Width = 710
      Height = 158
      Align = alTop
      TabOrder = 2
      object TGroupBox
        Left = 1
        Top = 1
        Width = 708
        Height = 155
        Align = alTop
        Caption = #1575#1602#1583#1575#1605' '#1580#1575#1585#1610
        TabOrder = 0
        DesignSize = (
          708
          155)
        object Label6: TLabel
          Left = 639
          Top = 72
          Width = 43
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578' '
        end
        object Label7: TLabel
          Left = 635
          Top = 48
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
          FocusControl = DBEdit7
        end
        object Label11: TLabel
          Left = 265
          Top = 50
          Width = 57
          Height = 13
          Caption = #1587#1575#1593#1578' '#1575#1606#1580#1575#1605
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 640
          Top = 24
          Width = 42
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
          FocusControl = FollowTypeCombo
        end
        object DayinWeek: TLabel
          Left = 448
          Top = 51
          Width = 12
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '    '
        end
        object SpeedButton3: TAdvGlowButton
          Left = 496
          Top = 48
          Width = 21
          Height = 21
          Cursor = crHandPoint
          ImageIndex = 94
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 4
          OnClick = SpeedButton3Click
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
        object SpeedButton4: TAdvGlowButton
          Left = 472
          Top = 48
          Width = 21
          Height = 21
          Cursor = crHandPoint
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 93
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = SpeedButton4Click
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
        object DBEdit7: TDBShamsiDateEdit
          Left = 521
          Top = 47
          Width = 110
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CheckValidity = True
          ShowMsg = False
          DataField = 'ToDoDate'
          DataSource = DSForm
          TabOrder = 1
          OnChange = DBEdit7Change
        end
        object DBEdit11: TDBEdit
          Left = 214
          Top = 48
          Width = 47
          Height = 21
          DataField = 'ToDoTime'
          DataSource = DSForm
          TabOrder = 2
        end
        object FollowTypeCombo: TDBLookupComboBox
          Left = 381
          Top = 20
          Width = 250
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'FollowupTypeTitle'
          DataSource = DSForm
          DropDownRows = 12
          ParentBiDiMode = False
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 212
          Top = 77
          Width = 420
          Height = 70
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Comment'
          DataSource = DSForm
          TabOrder = 3
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 301
      Width = 710
      Height = 174
      Align = alClient
      Caption = #1705#1604' '#1575#1602#1583#1575#1605#1575#1578
      TabOrder = 3
      object YDBGrid3: TYDBGrid
        Left = 2
        Top = 15
        Width = 706
        Height = 157
        Cursor = crHandPoint
        TabStop = False
        Align = alClient
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
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
            FieldName = 'FollowupTypeTitle'
            Title.Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ToDoDate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ToDoTime'
            Title.Caption = #1587#1575#1593#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Title.Caption = #1578#1608#1590#1610#1581
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DoneComment'
            Title.Caption = #1578#1608#1590#1610#1581' '#1575#1606#1580#1575#1605' '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 173
            Visible = True
          end>
      end
    end
    object DonePanel: TxpPanel
      Left = 1
      Top = 1
      Width = 710
      Height = 104
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
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
      Align = alTop
      TabOrder = 4
      object DonePanel2: TGroupBox
        Left = 1
        Top = 1
        Width = 706
        Height = 100
        Align = alClient
        Caption = #1575#1606#1580#1575#1605': '
        TabOrder = 0
        DesignSize = (
          706
          100)
        object Label1: TLabel
          Left = 642
          Top = 21
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605
        end
        object Label2: TLabel
          Left = 635
          Top = 44
          Width = 67
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1575#1602#1583#1575#1605
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 494
          Top = 21
          Width = 139
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'DoneStatusTitle'
          DataSource = DSForm
          ParentBiDiMode = False
          TabOrder = 0
        end
        object DBMemo2: TDBMemo
          Left = 208
          Top = 45
          Width = 424
          Height = 46
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DoneComment'
          DataSource = DSForm
          TabOrder = 1
        end
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Select_FollowUp_ByStart
    Left = 216
    Top = 408
  end
  inherited ActionList: TActionList
    Left = 408
    Top = 360
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = DSForm
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = DSForm
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1575#1610#1580#1575#1583' '#1662#1610#1711#1610#1585#1610
      DataSource = DSForm
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = DSForm
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      DataSource = DSForm
    end
  end
  object OpenDialog: TOpenDialog
    Left = 408
    Top = 408
  end
  object Select_FollowUp_ByStart: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = Select_FollowUp_ByStartAfterInsert
    AfterPost = Select_FollowUp_ByStartAfterPost
    AfterCancel = Select_FollowUp_ByStartAfterCancel
    ProcedureName = 'Select_FollowUp_ByStart;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@StartFollowUpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 217
    Top = 360
    object Select_FollowUp_ByStartFollowUPID: TAutoIncField
      FieldName = 'FollowUPID'
      ReadOnly = True
    end
    object Select_FollowUp_ByStartFollowUPTypeID: TIntegerField
      FieldName = 'FollowUPTypeID'
    end
    object Select_FollowUp_ByStartDoneStatusID: TWordField
      FieldName = 'DoneStatusID'
    end
    object Select_FollowUp_ByStartUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_FollowUp_ByStartComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
    object Select_FollowUp_ByStartToDoDate: TStringField
      FieldName = 'ToDoDate'
      FixedChar = True
      Size = 10
    end
    object Select_FollowUp_ByStartToDoTime: TStringField
      FieldName = 'ToDoTime'
      FixedChar = True
      Size = 5
    end
    object Select_FollowUp_ByStartDoneComment: TWideStringField
      FieldName = 'DoneComment'
      Size = 255
    end
    object Select_FollowUp_ByStartHasAlarm: TBooleanField
      FieldName = 'HasAlarm'
    end
    object Select_FollowUp_ByStartDoneStatusTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'DoneStatusTitle'
      LookupDataSet = Dm.DoneStatus
      LookupKeyFields = 'DoneStatusID'
      LookupResultField = 'DoneStatustitle'
      KeyFields = 'DoneStatusID'
      Lookup = True
    end
    object Select_FollowUp_ByStartFollowupTypeTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'FollowupTypeTitle'
      LookupDataSet = Dm.FollowUpType
      LookupKeyFields = 'FollowUpTypeID'
      LookupResultField = 'FollowUpTypeTitle'
      KeyFields = 'FollowUPTypeID'
      Lookup = True
    end
    object Select_FollowUp_ByStartStartFollowUpID: TIntegerField
      FieldName = 'StartFollowUpID'
    end
    object Select_FollowUp_ByStartLetterid: TIntegerField
      FieldName = 'Letterid'
    end
  end
end
