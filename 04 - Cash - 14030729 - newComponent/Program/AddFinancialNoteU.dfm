object FrAddFinancialNote: TFrAddFinancialNote
  Left = 424
  Top = 207
  Width = 517
  Height = 380
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1670#1603' '#1607#1575' '#1610#1575' '#1587#1601#1578#1607' '#1607#1575
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Label1: TLabel
    Left = 363
    Top = 42
    Width = 76
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1670#1603'  '#1610#1575' ...'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 509
    Height = 307
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1604#1610#1587#1578
      OnShow = TabSheet1Show
      object Button1: TButton
        Left = 0
        Top = 291
        Width = 105
        Height = 25
        Caption = #1606#1605#1575#1610#1588' '#1575#1610#1606' '#1670#1603
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 37
        Width = 501
        Height = 201
        Align = alClient
        DataSource = dm.DSelect_FinancialNote_Like
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NoteNo'
            Title.Caption = #1588#1605#1575#1585#1607
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MatureDate'
            Title.Caption = #1578#1575#1585#1610#1582' '
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Caption = #1605#1576#1604#1594
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Branch'
            Title.Caption = #1588#1593#1576#1607
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BankAccountNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FinancialNoteTypeTitle'
            Title.Caption = #1606#1608#1593
            Width = 65
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 238
        Width = 501
        Height = 41
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          501
          41)
        object xpBitBtn2: TBitBtn
          Left = 303
          Top = 9
          Width = 102
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1605#1588#1575#1607#1583#1607'  '#1575#1591#1604#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = xpBitBtn2Click
        end
        object Button3: TButton
          Left = 415
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1580#1583#1610#1583
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 501
        Height = 37
        Align = alTop
        TabOrder = 3
        DesignSize = (
          501
          37)
        object Label10: TLabel
          Left = 457
          Top = 12
          Width = 35
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608
        end
        object SearchEdit: TEdit
          Left = 271
          Top = 9
          Width = 177
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          OnChange = SearchEditChange
        end
        object FinancialType: TDBLookupComboBox
          Left = 15
          Top = 9
          Width = 140
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'FinancialNoteTypeID'
          ListField = 'FinancialNoteTypeTitle'
          ListSource = dm.DFinancialNoteType
          ParentBiDiMode = False
          TabOrder = 1
        end
        object CbFinancialType: TCheckBox
          Left = 159
          Top = 10
          Width = 94
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608' '#1601#1602#1591' '#1583#1585' '
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
      ImageIndex = 1
      DesignSize = (
        501
        279)
      object Label2: TLabel
        Left = 422
        Top = 39
        Width = 33
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 422
        Top = 142
        Width = 21
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
      end
      object Label4: TLabel
        Left = 422
        Top = 168
        Width = 20
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 422
        Top = 194
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 422
        Top = 91
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1593#1576#1607' '
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 422
        Top = 116
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1588#1593#1576#1607
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 422
        Top = 65
        Width = 18
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1575#1606#1603
      end
      object Label9: TLabel
        Left = 422
        Top = 14
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1587#1606#1583
      end
      object amount: TLabel
        Left = 23
        Top = 167
        Width = 248
        Height = 38
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-------------'
        WordWrap = True
      end
      object DBEdit2: TDBEdit
        Left = 336
        Top = 36
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'NoteNo'
        DataSource = dm.DSelect_FinancialNote
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 280
        Top = 165
        Width = 136
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Amount'
        DataSource = dm.DSelect_FinancialNote
        TabOrder = 6
        OnChange = DBEdit4Change
      end
      object DBEdit5: TDBEdit
        Left = 280
        Top = 191
        Width = 136
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'BankAccountNo'
        DataSource = dm.DSelect_FinancialNote
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 224
        Top = 88
        Width = 192
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Branch'
        DataSource = dm.DSelect_FinancialNote
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 336
        Top = 113
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'BranchCode'
        DataSource = dm.DSelect_FinancialNote
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 224
        Top = 11
        Width = 192
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'FinancialNoteType'
        DataSource = dm.DSelect_FinancialNote
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 224
        Top = 62
        Width = 192
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'BankTitle'
        DataSource = dm.DSelect_FinancialNote
        ParentBiDiMode = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 424
        Top = 238
        Width = 70
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = False
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
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object BitBtn3: TBitBtn
        Left = 351
        Top = 238
        Width = 70
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        TabStop = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
          0000000000000000000000000000FF00FF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF000000000000FFFF
          FF0000000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF000000000000FFFF
          FF00FFFFFF000000000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
          FF00FFFF00000000000000FFFF00000000000000000000000000000000000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000FFFF0000000000FFFF000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
          000000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FFFF000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
          000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000848484000000000084848400000000008484840000000000848484000000
          00000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000848484000000000084848400000000008484840000000000848484000000
          0000FF00FF00000000000000FF0000000000FF00FF00FF00FF0000000000FF00
          FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object BitBtn4: TBitBtn
        Left = 278
        Top = 238
        Width = 70
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
          84000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00848484000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00848484000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00848484000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object BitBtn5: TBitBtn
        Left = 205
        Top = 238
        Width = 70
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        TabStop = False
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
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object BitBtn6: TBitBtn
        Left = 132
        Top = 238
        Width = 70
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1604#1594#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        TabStop = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF0084848400000000008484
          8400FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF0000000000000000000000
          0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0084848400000000008484
          84000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00000000000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000000000000
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF0000008400000000000000
          84000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000000000000000
          00000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000000000000000
          00000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF0000000000000000000000
          0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF0084848400000000008484
          8400FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object Button2: TButton
        Left = 125
        Top = 89
        Width = 84
        Height = 27
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1585#1587#1610#1583
        TabOrder = 13
        OnClick = Button2Click
      end
      object xpBitBtn1: TBitBtn
        Left = 124
        Top = 59
        Width = 84
        Height = 27
        Anchors = [akTop, akRight]
        Caption = #1575#1587#1705#1606' '#1578#1589#1575#1608#1610#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = xpBitBtn1Click
      end
      object DBEMatureDate: TDBEdit
        Left = 336
        Top = 139
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clWhite
        DataField = 'MatureDate'
        DataSource = dm.DSelect_FinancialNote
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 307
    Width = 509
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      509
      41)
    object Button4: TButton
      Left = 333
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button4Click
    end
    object BitBtn1: TBitBtn
      Left = 421
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
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
  object ActionManager: TActionManager
    ActionBars.SessionCount = 23
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert1
            ImageIndex = 16
            ShortCut = 16429
          end
          item
            Action = DataSetDelete1
            ImageIndex = 17
            ShortCut = 16430
          end
          item
            Action = DataSetEdit1
            ImageIndex = 48
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 0
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 56
            ShortCut = 32776
          end>
        AutoSize = False
      end>
    Left = 47
    Top = 240
    StyleName = 'XP Style'
    object DataSetInsert1: TDataSetInsert
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 16
      ShortCut = 16429
      OnExecute = DataSetInsert1Execute
      DataSource = dm.DSelect_FinancialNote
    end
    object DataSetDelete1: TDataSetDelete
      Caption = #1581#1584#1601
      Hint = 'Delete'
      ImageIndex = 17
      ShortCut = 16430
      DataSource = dm.DSelect_FinancialNote
    end
    object DataSetEdit1: TDataSetEdit
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = 'Edit'
      ImageIndex = 48
      ShortCut = 115
      DataSource = dm.DSelect_FinancialNote
    end
    object DataSetPost1: TDataSetPost
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 0
      ShortCut = 113
      DataSource = dm.DSelect_FinancialNote
    end
    object DataSetCancel1: TDataSetCancel
      Caption = #1604#1594#1608
      Hint = 'Cancel'
      ImageIndex = 56
      ShortCut = 32776
      DataSource = dm.DSelect_FinancialNote
    end
    object Action1: TAction
      Caption = #1580#1587#1578#1580#1608
      ShortCut = 114
    end
  end
end
