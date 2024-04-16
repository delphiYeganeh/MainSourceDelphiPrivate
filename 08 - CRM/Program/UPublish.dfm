inherited FPublish: TFPublish
  Left = 558
  Top = 151
  Width = 576
  Height = 356
  BorderIcons = [biSystemMenu, biHelp]
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1605#1575#1585#1607' '#1607#1575#1610' '#1606#1588#1585#1610#1575#1578
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 568
    Height = 289
    ActivePage = TabSheet1
    Align = alTop
    TabHeight = 28
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
      object Label1: TLabel
        Left = 490
        Top = 39
        Width = 30
        Height = 13
        Caption = #1588#1605#1575#1585#1607
        FocusControl = DBEdit1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 490
        Top = 72
        Width = 53
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1575#1606#1578#1588#1575#1585
        FocusControl = DBEdit2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 490
        Top = 105
        Width = 54
        Height = 13
        Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607
        FocusControl = DBEdit3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 490
        Top = 138
        Width = 19
        Height = 13
        Caption = #1578#1610#1585#1575#1688
        FocusControl = DBEdit4
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 490
        Top = 172
        Width = 40
        Height = 13
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 490
        Top = 6
        Width = 45
        Height = 13
        Caption = #1606#1575#1605' '#1606#1588#1585#1610#1607
        FocusControl = DBLookupComboBox1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 384
        Top = 33
        Width = 100
        Height = 21
        DataField = 'JournalNo'
        TabOrder = 1
      end
      object DBEdit2: TDBShamsiDateEdit
        Left = 350
        Top = 67
        Width = 134
        Height = 21
        CheckValidity = True
        ShowMsg = False
        DataField = 'Publishdate'
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 350
        Top = 100
        Width = 134
        Height = 21
        DataField = 'Page'
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 350
        Top = 134
        Width = 134
        Height = 21
        DataField = 'Tiraz'
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 272
        Top = 0
        Width = 212
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'journalName'
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 88
        Top = 168
        Width = 396
        Height = 33
        DataField = 'Memo'
        TabOrder = 5
      end
      object DBNavigator1: TDBNavigator
        Left = 152
        Top = 216
        Width = 231
        Height = 33
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Flat = True
        TabOrder = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1604#1610#1587#1578
      ImageIndex = 1
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 0
        Width = 560
        Height = 243
        Cursor = crHandPoint
        Align = alClient
        Color = 14869218
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
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'journalName'
            Title.Caption = #1606#1575#1605' '#1606#1588#1585#1610#1607
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JournalNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1606#1588#1585#1610#1607
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Publishdate'
            Title.Caption = #1606#1575#1605' '#1578#1575#1585#1610#1582' '#1575#1606#1578#1588#1575#1585
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Page'
            Title.Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tiraz'
            Title.Caption = #1588#1605#1575#1585#1711#1575#1606#1607
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Caption = #1578#1608#1590#1610#1581
            Width = 140
            Visible = True
          end>
      end
    end
  end
  object BitBtn1: TBitBtn [1]
    Left = 8
    Top = 292
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
