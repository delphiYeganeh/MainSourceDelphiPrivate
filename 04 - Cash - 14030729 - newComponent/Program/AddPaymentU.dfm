inherited FrAddPayment: TFrAddPayment
  Left = 601
  Top = 245
  BorderStyle = bsDialog
  Caption = ' '#1576#1585#1583#1575#1588#1578' '#1575#1586' '#1581#1587#1575#1576
  ClientHeight = 686
  ClientWidth = 751
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SearchPanel: TPanel [0]
    Left = 0
    Top = 0
    Width = 751
    Height = 39
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      751
      39)
    object Label1: TLabel
      Left = 577
      Top = 9
      Width = 160
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1580#1600#1600#1587#1600#1600#1600#1578#1600#1580#1608#1610' '#1588#1600#1600#1605#1575#1585#1607' '#1581#1600#1600#1587#1600#1600#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SearchEdit: TEdit
      Left = 152
      Top = 0
      Width = 411
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = TEditExit
      OnKeyDown = SearchEditKeyDown
    end
  end
  object PAccountDeatil: TPanel [1]
    Left = 0
    Top = 39
    Width = 751
    Height = 235
    Align = alTop
    TabOrder = 1
  end
  object YDBGrid1: TYDBGrid [2]
    Left = 0
    Top = 274
    Width = 751
    Height = 88
    Cursor = crHandPoint
    TabStop = False
    Align = alTop
    DataSource = dm.DReport_LatestPayment_ByAccountID
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Nazanin'
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
        FieldName = 'Date'
        Title.Caption = #1578#1575#1585#1610#1582
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Time'
        Title.Caption = #1586#1605#1575#1606
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'AccountTitle'
        Title.Caption = #1581#1587#1575#1576
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Caption = #1605#1576#1604#1594
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'debit'
        Title.Caption = #1576#1583#1607#1705#1575#1585
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credit'
        Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FullName'
        Title.Caption = #1705#1575#1585#1576#1585
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end>
  end
  object PanelData: TPanel [3]
    Left = 0
    Top = 362
    Width = 751
    Height = 118
    Align = alTop
    ParentColor = True
    TabOrder = 3
    DesignSize = (
      751
      118)
    object Label5: TLabel
      Left = 435
      Top = 6
      Width = 21
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object StatusLabel: TLabel
      Left = 710
      Top = 7
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 719
      Top = 45
      Width = 22
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 535
      Top = 37
      Width = 34
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 712
      Top = 81
      Width = 29
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AmountTitle: TLabel
      Left = 60
      Top = 3
      Width = 220
      Height = 71
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1585#1610#1575#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 231
      Top = 83
      Width = 42
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 418
      Top = 42
      Width = 39
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588' '#1670#1705
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBAmount: TDBEdit
      Left = 285
      Top = 0
      Width = 132
      Height = 22
      Anchors = [akTop, akRight]
      Color = clWhite
      DataField = 'Amount'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DBAmountChange
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit5: TDBEdit
      Left = 476
      Top = 38
      Width = 58
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'Time'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit8: TDBEdit
      Left = 285
      Top = 76
      Width = 397
      Height = 22
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clWhite
      DataField = 'Comment'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object MajorAccount: TDBLookupComboBox
      Left = 476
      Top = 0
      Width = 206
      Height = 22
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'CreditorAccountID'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'AccountID'
      ListField = 'AccountTitle'
      ListSource = dm.DSelect_Cash_Accounts
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 76
      Width = 212
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = True
      DataField = 'DocumentNo'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEDate: TSolarDatePicker
      Left = 577
      Top = 38
      Width = 105
      Height = 22
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Enabled = True
      OnEnter = TEditEnter
      OnExit = TEditExit
      DateKind = dkSolar
      CheckInputOnExit = False
      Divider = dSlash
      ShowToDay = True
      MonthObject = moPopupMenu
      Glyph = gtCalendar
      ShowDefaultDate = False
      AutoCheck = False
      AutoDeleteDelimiter = False
      EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
      MaskEnabled = False
      ColorCaptionStart = 13158600
      ColorCaptionStop = clWhite
      ColorBodyStart = clWhite
      ColorBodyStop = clWhite
      ColorTodayLine = clBlack
      ColorSelectBrush = 14474460
      ColorDisableMonth = clGray
      ColorVacationDay = clRed
      ColorNormalDay = clBlack
      ColorStyle = csWhiteGray
      ButtonStyle = bsRound
      DataSource = dm.DSelect_Payment
      DataField = 'Date'
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
    object DBEdit1: TDBEdit
      Left = 285
      Top = 38
      Width = 132
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'NoteNo'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object FinancialNotePanel: TPanel [4]
    Left = 0
    Top = 480
    Width = 751
    Height = 165
    Align = alClient
    ParentColor = True
    TabOrder = 4
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 645
    Width = 751
    Height = 41
    Align = alBottom
    TabOrder = 5
    DesignSize = (
      751
      41)
    object Label4: TLabel
      Left = 94
      Top = 6
      Width = 179
      Height = 14
      BiDiMode = bdLeftToRight
      Caption = #1662#1600#1585#1601#1585#1575#1688' :  ..\Reports\PerfrajRep.fr3'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 91
      Top = 20
      Width = 165
      Height = 14
      BiDiMode = bdLeftToRight
      Caption = #1602#1600#1576#1600#1600#1590' :  ..\Reports\BillPrint.fr3'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object PerferazeBtn: TAdvGlowButton
      Left = 468
      Top = 5
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1662#1600#1600#1585#1601#1585#1575#1688
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 260
      Images = dm.LetterImages_New
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = PerferazeBtnClick
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
      Enabled = False
    end
    object DocPrintBtn: TAdvGlowButton
      Left = 392
      Top = 5
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1587#1606#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 99
      Images = dm.LetterImages_New
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DocPrintBtnClick
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
      Enabled = False
    end
    object PrintBtn: TAdvGlowButton
      Left = 309
      Top = 5
      Width = 82
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1602#1576#1590
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 158
      Images = dm.LetterImages_New
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = PrintBtnClick
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
      Enabled = False
    end
    object DoBtn: TAdvGlowButton
      Left = 624
      Top = 5
      Width = 120
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1576#1585#1583#1575#1588#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 39
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DoBtnClick
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
    object BitBtn1: TAdvGlowButton
      Left = 9
      Top = 5
      Width = 75
      Height = 28
      Action = AExit
      Font.Charset = DEFAULT_CHARSET
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
    object AddPaymentInsert: TAdvGlowButton
      Left = 548
      Top = 5
      Width = 75
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1580#1583#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 60
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = AddPaymentInsertClick
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
      Enabled = False
    end
  end
  inherited ahmadvand: TActionList
    Left = 37
    Top = 35
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 37
    Top = 78
  end
  inherited qSetting: TADOQuery
    CommandTimeout = 0
    Left = 128
    Top = 96
  end
  object ActionManager1: TActionManager
    Left = 37
    Top = 121
    StyleName = 'XP Style'
    object Acancel: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      ShortCut = 32776
    end
    object asearchCheque: TAction
      Caption = '...'
      ShortCut = 114
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object Apost: TAction
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = ApostExecute
    end
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 37
    Top = 164
    object NShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object NOldVersion: TMenuItem
      Caption = #1662#1585#1601#1585#1575#1688' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = N11Click
    end
  end
  object PopupMenuBill: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 128
    Top = 36
    object BillShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = BillShowClick
    end
    object BillPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = BillShowClick
    end
    object BillDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = BillShowClick
    end
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1602#1576#1590' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = N1Click
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = MenuItem6Click
    end
  end
end
