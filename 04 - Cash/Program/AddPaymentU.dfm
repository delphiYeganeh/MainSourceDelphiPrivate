inherited FrAddPayment: TFrAddPayment
  Left = 531
  Top = 250
  BorderStyle = bsDialog
  Caption = ' '#1576#1585#1583#1575#1588#1578' '#1575#1586' '#1581#1587#1575#1576
  ClientHeight = 583
  ClientWidth = 702
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SearchPanel: TPanel [0]
    Left = 0
    Top = 0
    Width = 702
    Height = 29
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      702
      29)
    object Label1: TLabel
      Left = 568
      Top = 8
      Width = 112
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608#1610' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SearchEdit: TEdit
      Left = 399
      Top = 5
      Width = 163
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnExit = TEditExit
      OnKeyDown = SearchEditKeyDown
    end
  end
  object PAccountDeatil: TPanel [1]
    Left = 0
    Top = 29
    Width = 702
    Height = 188
    Align = alTop
    TabOrder = 1
  end
  object YDBGrid1: TYDBGrid [2]
    Left = 0
    Top = 217
    Width = 702
    Height = 88
    Cursor = crHandPoint
    TabStop = False
    Align = alTop
    DataSource = dm.DReport_LatestPayment_ByAccountID
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -8
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
    Top = 305
    Width = 702
    Height = 84
    Align = alTop
    ParentColor = True
    TabOrder = 3
    DesignSize = (
      702
      84)
    object Label5: TLabel
      Left = 350
      Top = 10
      Width = 34
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object StatusLabel: TLabel
      Left = 598
      Top = 10
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 598
      Top = 37
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 451
      Top = 37
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 598
      Top = 63
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AmountTitle: TLabel
      Left = 1
      Top = 2
      Width = 213
      Height = 55
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1585#1610#1575#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 165
      Top = 63
      Width = 37
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 350
      Top = 37
      Width = 34
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588' '#1670#1705
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBAmount: TDBEdit
      Left = 214
      Top = 7
      Width = 132
      Height = 21
      Anchors = [akTop, akRight]
      Color = clWhite
      DataField = 'Amount'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DBAmountChange
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit5: TDBEdit
      Left = 389
      Top = 33
      Width = 58
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Time'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit8: TDBEdit
      Left = 214
      Top = 59
      Width = 381
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clWhite
      DataField = 'Comment'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object MajorAccount: TDBLookupComboBox
      Left = 389
      Top = 7
      Width = 206
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'CreditorAccountID'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      Left = 29
      Top = 59
      Width = 132
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = True
      DataField = 'DocumentNo'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      Left = 505
      Top = 33
      Width = 90
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
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
      Left = 214
      Top = 33
      Width = 132
      Height = 21
      DataField = 'NoteNo'
      DataSource = dm.DSelect_Payment
      TabOrder = 6
    end
  end
  object FinancialNotePanel: TPanel [4]
    Left = 0
    Top = 389
    Width = 702
    Height = 153
    ParentColor = True
    TabOrder = 4
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 542
    Width = 702
    Height = 41
    Align = alBottom
    TabOrder = 5
    DesignSize = (
      702
      41)
    object Label4: TLabel
      Left = 99
      Top = 8
      Width = 162
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1662#1585#1601#1585#1575#1688' :  ..\Reports\PerfrajRep.fr3'
      ParentBiDiMode = False
    end
    object Label6: TLabel
      Left = 102
      Top = 22
      Width = 141
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1602#1576#1590' :  ..\Reports\BillPrint.fr3'
      ParentBiDiMode = False
    end
    object PerferazeBtn: TBitBtn
      Left = 424
      Top = 5
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1662#1585#1601#1585#1575#1688
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = PerferazeBtnClick
    end
    object DocPrintBtn: TBitBtn
      Left = 348
      Top = 5
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1587#1606#1583
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DocPrintBtnClick
    end
    object PrintBtn: TBitBtn
      Left = 273
      Top = 5
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1602#1576#1590
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = PrintBtnClick
    end
    object DoBtn: TBitBtn
      Left = 500
      Top = 5
      Width = 108
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1576#1585#1583#1575#1588#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DoBtnClick
    end
    object BitBtn1: TBitBtn
      Left = 9
      Top = 8
      Width = 75
      Height = 28
      Action = AExit
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object AddPaymentInsert: TBitBtn
      Left = 609
      Top = 5
      Width = 75
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1580#1583#1610#1583
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = AddPaymentInsertClick
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
