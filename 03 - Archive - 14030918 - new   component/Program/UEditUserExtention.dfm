inherited FrEditUserExtention: TFrEditUserExtention
  Tag = 10
  Left = 581
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = ' '#1575#1606#1608#1575#1593' '#1662#1610#1608#1587#1578' '#1607#1575' '#1608' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575' '
  ClientHeight = 389
  ClientWidth = 551
  Constraints.MinHeight = 300
  Constraints.MinWidth = 550
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 551
    Height = 389
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 549
      Height = 346
      Align = alClient
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 0
      object DBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 547
        Height = 344
        Cursor = crHandPoint
        Align = alClient
        Color = 15263976
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            Expanded = False
            FieldName = 'extentionTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1601#1575#1610#1604
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReaderApplication'
            Title.Alignment = taCenter
            Title.Caption = #1605#1587#1610#1585' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1603#1607' '#1575#1610#1606' '#1606#1608#1593' '#1601#1575#1610#1604' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1583' '#1576#1582#1608#1575#1606#1583
            Width = 333
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 347
      Width = 549
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        549
        41)
      object BitBtn1: TAdvGlowButton
        Left = 7
        Top = 6
        Width = 75
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
      object Button3: TAdvGlowButton
        Left = 286
        Top = 6
        Width = 256
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1610#1610#1606' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1705#1607' '#1575#1610#1606' '#1606#1608#1593' '#1601#1575#1610#1604' '#1585#1575' '#1605#1610' '#1582#1608#1575#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 116
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
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Get_UserExtention_by_UserID
    Left = 40
    Top = 136
  end
  inherited ActionList: TActionList
    Left = 224
    Top = 136
  end
  inherited xpWindow1: TxpWindow
    Left = 224
    Top = 192
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 40
    Top = 80
    StyleName = 'XP Style'
    object Action1: TAction
      Tag = 1
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16430
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Application|*.exe;*.com;*.lnk|All files|*.*'
    InitialDir = 'c:\program files'
    Left = 224
    Top = 80
  end
  object TntOpenDialog: TTntOpenDialog
    Filter = 'Application|*.exe;*.com;*.lnk|All files|*.*'
    Left = 336
    Top = 117
  end
end
