object FrListofContacts: TFrListofContacts
  Left = 584
  Top = 309
  Width = 469
  Height = 436
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1604#1610#1587#1578' '#1575#1601#1585#1575#1583
  Color = 15724774
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 397
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 355
      Width = 451
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        451
        41)
      object Button5: TAdvGlowButton
        Left = 5
        Top = 6
        Width = 68
        Height = 30
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object Button1: TAdvGlowButton
        Left = 371
        Top = 6
        Width = 75
        Height = 30
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        ImageIndex = 59
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 451
      Height = 48
      Align = alTop
      TabOrder = 1
      DesignSize = (
        451
        48)
      object Label1: TLabel
        Left = 399
        Top = 12
        Width = 42
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608':'
      end
      object SpeedButton1: TAdvGlowButton
        Left = 224
        Top = 10
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 70
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
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
      object SearchEdit: TEdit
        Left = 248
        Top = 9
        Width = 146
        Height = 37
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = SearchEditChange
      end
      object RBPersonalNo: TRadioButton
        Left = 159
        Top = 16
        Width = 38
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1705#1583
        TabOrder = 1
        OnClick = RBPersonalNoClick
      end
      object RBTitle: TRadioButton
        Left = 98
        Top = 16
        Width = 55
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object RBContactTypeTitle: TRadioButton
        Left = 12
        Top = 16
        Width = 79
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1593#1590#1608#1610#1578
        TabOrder = 3
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 49
      Width = 451
      Height = 306
      Align = alClient
      TabOrder = 2
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 449
        Height = 304
        Cursor = crHandPoint
        Align = alClient
        Color = clCream
        DataSource = dm.DContactQ
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'ContactID'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583' '
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ContactTitle'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ContactTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1593#1590#1608#1610#1578
            Width = 88
            Visible = True
          end>
      end
    end
  end
  object ahmadvand: TActionList
    Left = 117
    Top = 43
    object AExit: TAction
      Caption = #1582#1585#1608#1580
      ImageIndex = 75
      ShortCut = 27
      OnExecute = AExitExecute
    end
    object searchAccount: TAction
      ShortCut = 114
      OnExecute = searchAccountExecute
    end
    object AExportToExcel: TAction
      ShortCut = 16453
      OnExecute = AExportToExcelExecute
    end
    object SearchLoan: TAction
      Caption = 'SearchLoan'
      ShortCut = 8306
      OnExecute = SearchLoanExecute
    end
  end
  object Grid_PopupMenu: TPopupMenu
    Tag = 11
    Left = 119
    Top = 100
    object wordMenuItem: TMenuItem
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Word'
      OnClick = wordMenuItemClick
    end
    object ExcelMenuItem: TMenuItem
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnClick = ExcelMenuItemClick
    end
    object PrintMenuItem: TMenuItem
      Caption = #1670#1575#1662'  '#1575#1610#1606' '#1604#1610#1587#1578
      OnClick = PrintMenuItemClick
    end
    object TextMenuItem: TMenuItem
      Caption = ' '#1578#1607#1610#1607' '#1601#1575#1610#1604' Text'
      OnClick = TextMenuItemClick
    end
    object CustomMenuItem: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1608' '#1601#1585#1605#1578' '#1670#1575#1662
      OnClick = CustomMenuItemClick
    end
  end
end
