inherited FraddLetterData: TFraddLetterData
  Tag = 4
  Left = 617
  Top = 277
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1662#1610#1608#1587#1578
  ClientHeight = 405
  ClientWidth = 692
  Constraints.MinHeight = 360
  Constraints.MinWidth = 700
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 692
    Height = 405
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 42
      Width = 690
      Height = 288
      Align = alClient
      TabOrder = 0
      DesignSize = (
        690
        288)
      object DBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 688
        Height = 286
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
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
            FieldName = 'description'
            Title.Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
            Width = 332
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExtentionTitle'
            Title.Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VersionNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1608#1610#1585#1575#1610#1588' '#1587#1606#1583
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VersionDate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1608#1610#1585#1575#1610#1588' '#1587#1606#1583
            Width = 90
            Visible = True
          end>
      end
      object BBLoadFile: TAdvGlowButton
        Tag = 6
        Left = 582
        Top = 249
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 142
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = BBLoadFileClick
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
      object Panel3: TPanel
        Left = 192
        Top = 96
        Width = 321
        Height = 105
        BorderStyle = bsSingle
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'B Traffic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        DesignSize = (
          317
          101)
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 315
          Height = 21
          Align = alTop
          Caption = '       '#1605#1587#1610#1585' '#1584#1582#1610#1585#1607' '#1601#1575#1610#1604': '
        end
        object SpeedButton1: TAdvGlowButton
          Left = 287
          Top = 27
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          ImageIndex = 26
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = SpeedButton1Click
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
        object Edit1: TEdit
          Left = 8
          Top = 24
          Width = 269
          Height = 29
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
          Text = 'C:\Temp\'
        end
        object BitBtn2: TAdvGlowButton
          Tag = 5
          Left = 117
          Top = 61
          Width = 105
          Height = 28
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 36
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
      object Panel_Wait: TPanel
        Left = 211
        Top = 192
        Width = 281
        Height = 49
        Caption = #1583#1585' '#1581#1575#1604' '#1584#1582#1610#1585#1607' '#1601#1575#1610#1604' '#1604#1591#1601#1575' '#1670#1606#1583' '#1604#1581#1592#1607' '#1605#1606#1578#1592#1585' '#1576#1605#1575#1606#1610#1583
        TabOrder = 3
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 330
      Width = 690
      Height = 74
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        690
        74)
      object BitBtn1: TAdvGlowButton
        Left = 12
        Top = 37
        Width = 77
        Height = 28
        Cursor = crHandPoint
        Action = Action1
        Cancel = True
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
      object BtnInsert: TAdvGlowButton
        Tag = 1
        Left = 589
        Top = 5
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
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
        TabOrder = 1
        OnClick = BtnInsertClick
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
      object BtnDelete: TAdvGlowButton
        Tag = 2
        Left = 327
        Top = 6
        Width = 147
        Height = 28
        Cursor = crHandPoint
        Action = aDeleteAttachment
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 90
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
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
      object BtnEdit: TAdvGlowButton
        Tag = 3
        Left = 476
        Top = 6
        Width = 111
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
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
        TabOrder = 3
        OnClick = BtnEditClick
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
      object BBSaveFile: TAdvGlowButton
        Tag = 5
        Left = 476
        Top = 37
        Width = 111
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 36
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BBSaveFileClick
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
      object BBShow: TAdvGlowButton
        Tag = 4
        Left = 589
        Top = 37
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1606#1605#1575#1610#1588' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 11
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BBShowClick
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
        Left = 327
        Top = 37
        Width = 147
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'WORD '#1608#1610#1585#1575#1610#1588' '#1662#1610#1608#1587#1578#1607#1575#1610
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
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
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 690
      Height = 41
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        690
        41)
      object Label2: TLabel
        Left = 628
        Top = 11
        Width = 45
        Height = 13
        Caption = #1580#1587#1578#1580#1608' : '
      end
      object edtSearch: TEdit
        Left = 16
        Top = 8
        Width = 609
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnChange = edtSearchChange
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Get_LetterData_by_LetterID
    Left = 40
    Top = 100
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 48
  end
  inherited xpWindow1: TxpWindow
    Left = 512
    Top = 88
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 40
    Top = 48
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16430
    end
    object aDeleteAttachment: TAction
      Tag = 1
      Caption = #1581#1584#1601' '#1662#1610#1608#1587#1578#1607#1575
      OnExecute = aDeleteAttachmentExecute
    end
  end
  object OpenDialog: TOpenDialog
    Left = 400
    Top = 48
  end
  object SaveDialog: TSaveDialog
    Left = 528
    Top = 52
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentBeforeClose = WordApplicationDocumentBeforeClose
    Left = 287
    Top = 48
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 191
    Top = 52
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 120
    Top = 104
  end
  object TntOpenDialog: TTntOpenDialog
    Filter = 'Word Files |*.docx;*.doc'
    Left = 112
    Top = 149
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    OnWork = IdFTP1Work
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 160
    Top = 224
  end
end
