inherited LetterReport: TLetterReport
  Left = 643
  Top = 218
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1606#1575#1605#1607' '#1607#1575
  ClientHeight = 617
  ClientWidth = 684
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 684
    Height = 617
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 682
      Height = 369
      Align = alTop
      TabOrder = 0
      object DBEdit1: TDBEdit
        Left = 328
        Top = 336
        Width = 121
        Height = 21
        DataSource = DSForm
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 512
      Width = 682
      Height = 104
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        682
        104)
      object Label1: TLabel
        Left = 12
        Top = 12
        Width = 124
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1607#1605#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575
      end
      object Number: TLabel
        Left = 649
        Top = 74
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583
      end
      object Button4: TAdvGlowButton
        Left = 149
        Top = 66
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Excel'#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 135
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button4Click
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
      object Button3: TAdvGlowButton
        Left = 261
        Top = 66
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Word '#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button3Click
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
      object Button6: TAdvGlowButton
        Left = 373
        Top = 66
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 137
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button6Click
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
      object MakeRep: TAdvGlowButton
        Left = 486
        Top = 66
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 176
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = MakeRepClick
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
      object Button5: TAdvGlowButton
        Left = 4
        Top = 71
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Cancel = True
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
        TabOrder = 4
        OnClick = Button5Click
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
      object Allsec: TCheckBox
        Left = 139
        Top = 11
        Width = 17
        Height = 17
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        TabOrder = 5
      end
      object BitBtn1: TAdvGlowButton
        Left = 373
        Top = 5
        Width = 221
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1582#1585#1608#1580#1610' word '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1607#1575
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
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
        Left = 373
        Top = 37
        Width = 221
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1582#1585#1608#1580#1610' excell '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1607#1575
        ImageIndex = 135
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 7
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
    object Panel3: TPanel
      Left = 1
      Top = 370
      Width = 682
      Height = 142
      Align = alClient
      TabOrder = 2
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 680
        Height = 140
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
        OnDblClick = YDBGrid1DblClick
        YeganehColor = True
        ImageList = MainForm.ImageList_New
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poLandscape
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        OnNeedImageIndex = YDBGrid1NeedImageIndex
        Columns = <
          item
            Expanded = False
            FieldName = 'Has_Page'
            Title.Caption = ' '
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Has_WordPage'
            Title.Caption = ' '
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Has_File'
            Title.Caption = ' '
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Title.Alignment = taCenter
            Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MYear'
            Title.Alignment = taCenter
            Title.Caption = #1587#1575#1604
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Alignment = taCenter
            Title.Caption = #1582#1604#1575#1589#1607' '#1606#1575#1605#1607
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AttachTitle'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1608#1587#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ToOrgTitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FromTitle'
            Title.Alignment = taCenter
            Title.Caption = #1605#1705#1575#1578#1576#1607' '#1705#1606#1606#1583#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NumberOfAttachPages'
            Title.Alignment = taCenter
            Title.Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607' '#1662#1610#1608#1587#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NumberOfPage'
            Title.Alignment = taCenter
            Title.Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ATF'
            Title.Alignment = taCenter
            Title.Caption = #1593#1591#1601
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PEY'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1585#1608
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UserMemo'
            Title.Alignment = taCenter
            Title.Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ToStaffer'
            Title.Alignment = taCenter
            Title.Caption = #1588#1582#1589' '#1591#1585#1601' '#1605#1705#1575#1578#1576#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IncommingNO'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Incommingdate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CenterNo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CenterDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ReciveTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1583#1585#1610#1575#1601#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ClassificatioTitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UrgencyTitle'
            Title.Alignment = taCenter
            Title.Caption = #1601#1608#1585#1610#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UserTitle'
            Title.Alignment = taCenter
            Title.Caption = #1705#1575#1585#1576#1585
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FormatTitle'
            Title.Alignment = taCenter
            Title.Caption = #1601#1585#1605#1578' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TemplateTitle'
            Title.Alignment = taCenter
            Title.Caption = #1602#1575#1604#1576' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LetterTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AnswerIndicatorID'
            Title.Alignment = taCenter
            Title.Caption = #1575#1606#1583#1610#1603#1575#1578#1608#1585' '#1606#1575#1605#1607' '#1580#1608#1575#1576
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AnswerMYear'
            Title.Alignment = taCenter
            Title.Caption = #1587#1575#1604' '#1606#1575#1605#1607' '#1580#1608#1575#1576
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RegistrationDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegistrationTime'
            Title.Alignment = taCenter
            Title.Caption = #1586#1605#1575#1606' '#1579#1576#1578
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LetterTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LetterRecommites'
            Title.Alignment = taCenter
            Title.Caption = #1575#1585#1580#1575#1593#1575#1578' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'InnerNO'
            Title.Caption = #1588#1605#1575#1585#1607' '#1578#1585#1705#1610#1576#1610
            Width = 150
            Visible = True
          end>
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = SelectLetter
    Left = 68
    Top = 79
  end
  inherited ActionList: TActionList
    Left = 294
    Top = 18
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = Action1Execute
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 295
    Top = 68
  end
  object SelectLetter: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'SelectLetter;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end>
    Left = 132
    Top = 26
    object SelectLetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object SelectLetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object SelectLetterMYear: TWordField
      FieldName = 'MYear'
    end
    object SelectLetterSecretariatID: TIntegerField
      FieldName = 'SecretariatID'
    end
    object SelectLetterLetter_Type: TIntegerField
      FieldName = 'Letter_Type'
    end
    object SelectLetterletterformat: TIntegerField
      FieldName = 'letterformat'
    end
    object SelectLetterIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object SelectLetterIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object SelectLetterCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object SelectLetterCenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object SelectLetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object SelectLetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object SelectLetterSignerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object SelectLetterClassificationID: TIntegerField
      FieldName = 'ClassificationID'
    end
    object SelectLetterUrgencyID: TIntegerField
      FieldName = 'UrgencyID'
    end
    object SelectLetterMemo: TWideStringField
      FieldName = 'Memo'
      Size = 2000
    end
    object SelectLetterAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 255
    end
    object SelectLetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object SelectLetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object SelectLetterReceiveTypeID: TIntegerField
      FieldName = 'ReceiveTypeID'
    end
    object SelectLetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object SelectLetterRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object SelectLetterRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object SelectLetterRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object SelectLetterFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object SelectLetterToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object SelectLetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object SelectLetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object SelectLetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object SelectLetterLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object SelectLetterPreCode: TWideStringField
      FieldName = 'PreCode'
      Size = 50
    end
    object SelectLetterfromstaffer: TWideStringField
      FieldName = 'fromstaffer'
      Size = 50
    end
    object SelectLetterFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object SelectLetterSendStatusID: TIntegerField
      FieldName = 'SendStatusID'
    end
    object SelectLetterLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SelectLetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object SelectLetterUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object SelectLetterArchived: TBooleanField
      FieldName = 'Archived'
    end
    object SelectLetterSubjectDescription: TWideStringField
      FieldName = 'SubjectDescription'
      Size = 255
    end
    object SelectLetterSubjectID: TIntegerField
      FieldName = 'SubjectID'
    end
    object SelectLetterLatestActionTypeID: TIntegerField
      FieldName = 'LatestActionTypeID'
    end
    object SelectLetterLatestActionReason: TWideStringField
      FieldName = 'LatestActionReason'
      Size = 255
    end
    object SelectLetterDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object SelectLetterActionTypeID: TIntegerField
      FieldName = 'ActionTypeID'
    end
    object SelectLetterUserTableID2: TIntegerField
      FieldName = 'UserTableID2'
    end
    object SelectLetterEmailNuFromDate: TWideStringField
      FieldName = 'EmailNuFromDate'
    end
    object SelectLetterReciveTitle: TWideStringField
      FieldName = 'ReciveTitle'
      Size = 50
    end
    object SelectLetterClassificatioTitle: TWideStringField
      FieldName = 'ClassificatioTitle'
      Size = 50
    end
    object SelectLetterUrgencyTitle: TWideStringField
      FieldName = 'UrgencyTitle'
      Size = 50
    end
    object SelectLetterUserTitle: TWideStringField
      FieldName = 'UserTitle'
      Size = 50
    end
    object SelectLetterFormatTitle: TWideStringField
      FieldName = 'FormatTitle'
      Size = 50
    end
    object SelectLetterLetterTypeTitle: TWideStringField
      FieldName = 'LetterTypeTitle'
      Size = 50
    end
    object SelectLetterToOrgTitle: TWideStringField
      FieldName = 'ToOrgTitle'
      Size = 100
    end
    object SelectLetterTemplateTitle: TWideStringField
      FieldName = 'TemplateTitle'
      Size = 50
    end
    object SelectLetterFromTitle: TWideStringField
      FieldName = 'FromTitle'
      Size = 100
    end
    object SelectLetterAnswerMYear: TWordField
      FieldName = 'AnswerMYear'
    end
    object SelectLetterAnswerIndicatorID: TIntegerField
      FieldName = 'AnswerIndicatorID'
    end
    object SelectLetterUserMemo: TWideStringField
      DisplayWidth = 200
      FieldName = 'UserMemo'
      Size = 255
    end
    object SelectLetterOldSecretariatID: TIntegerField
      FieldName = 'OldSecretariatID'
    end
    object SelectLetterCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object SelectLetterInnerNO: TStringField
      FieldName = 'InnerNO'
      Size = 50
    end
    object SelectLetterHas_File: TBooleanField
      FieldName = 'Has_File'
    end
    object SelectLetterHas_Page: TBooleanField
      FieldName = 'Has_Page'
    end
    object SelectLetterHas_WordPage: TBooleanField
      FieldName = 'Has_WordPage'
    end
    object SelectLetterATF: TStringField
      FieldName = 'ATF'
      Size = 100
    end
    object SelectLetterPEY: TStringField
      FieldName = 'PEY'
      Size = 100
    end
  end
end
