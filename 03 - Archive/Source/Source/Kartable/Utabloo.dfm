object FBoard: TFBoard
  Tag = 1
  Left = 349
  Top = 155
  Width = 836
  Height = 601
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1610#1575#1583#1583#1575#1588#1578' '#1607#1575
  Color = clWhite
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 595
    Top = 32
    Height = 535
    Align = alRight
    Color = clSilver
    ParentColor = False
  end
  object List: TPanel
    Left = 0
    Top = 32
    Width = 595
    Height = 535
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object PSearch: TPanel
      Left = 2
      Top = 2
      Width = 591
      Height = 531
      Align = alClient
      BevelOuter = bvNone
      Caption = 'PSearch'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 481
        Width = 591
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Color = clSilver
        ParentColor = False
      end
      object Pdata: TPanel
        Left = 0
        Top = 486
        Width = 591
        Height = 45
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          591
          45)
        object Label1: TLabel
          Left = 539
          Top = 4
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1590#1605#1608#1606':'
        end
        object DBMemo1: TDBMemo
          Left = 2
          Top = 2
          Width = 587
          Height = 41
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataField = 'Memo'
          DataSource = Dcommon
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object lettersDbGrid: TYDBGrid
        Left = 0
        Top = 0
        Width = 591
        Height = 481
        Cursor = crHandPoint
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = clTeal
        Ctl3D = True
        DataSource = Dcommon
        FixedColor = clBtnHighlight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = LetterPopup
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = True
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1593#1606#1608#1575#1606
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        OnNeedColorCondition = lettersDbGridNeedColorCondition
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Title.Alignment = taCenter
            Title.Caption = #1575#1606#1583#1610#1603#1575#1578#1608#1585
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecommiteDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Paraph'
            Title.Alignment = taCenter
            Title.Caption = #1605#1578#1606' '#1575#1585#1580#1575#1593
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Alignment = taCenter
            Title.Caption = #1605#1590#1605#1608#1606
            Width = 470
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ToOrgTitle'
            Title.Alignment = taCenter
            Title.Caption = #1601#1585#1587#1578#1606#1583#1607
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FromOrgTitle'
            Title.Alignment = taCenter
            Title.Caption = #1711#1610#1585#1606#1583#1607
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegistrationDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'no1'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserMemo'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1585#1576#1585
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FollowLetterNo'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1585#1608
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RetroactionNO'
            Title.Alignment = taCenter
            Title.Caption = #1593#1591#1601
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
            FieldName = 'RegistrationTime'
            Title.Alignment = taCenter
            Title.Caption = #1586#1605#1575#1606' '#1579#1576#1578
            Visible = False
          end>
      end
    end
  end
  object PtoolBar: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 16311249
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      828
      32)
    object SpeedButton1: TSpeedButton
      Left = 636
      Top = 2
      Width = 175
      Height = 27
      Cursor = crHandPoint
      Hint = #1583#1587#1578#1607' '#1576#1606#1583#1610' '#1576#1585' '#1575#1587#1575#1587' '#1587#1605#1578' '#1583#1585#1608#1606' '#1587#1575#1586#1605#1575#1606#1610
      Anchors = [akTop, akRight]
      Caption = #1583#1587#1578#1607' '#1576#1606#1583#1610' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '#1575#1604#1589#1575#1602
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F333FFFFF337F330FFF70007FF
        F03337F33777773F37F330FF08FFF80FF03337F373333373F7F330F78FFFFF87
        F03337F7F3333337F7F330F0FFFFFFF0F03337F7F333FFF7F7F330F0FFF900F0
        F03337F7F3377737F7F330F0FFF0FFF0F03337F7F337F337F7F330F78FF0FF87
        F03337F73F37F33737F330FF08F0F80FF03337F373F7FF7337F330FFF70007FF
        F03337F33777773FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 556
      Top = 2
      Width = 71
      Height = 27
      Cursor = crHandPoint
      Action = Action1
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008442
        0000844200008442000084420000844200008442000084420000844200008442
        00008442000084420000844200008442000084420000FF00FF00FF004200FF00
        4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
        4200FF004200FF004200FF004200FF00420084420000FF00FF00FF004200FF84
        8400E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
        D600D6D6D600D6D6D600DEDEDE00FF00420084420000FF00FF00FF004200FF84
        8400FF848400FF848400FF848400FF848400FF848400FF848400FF848400FF84
        8400FF848400FF848400FF848400FF00420084420000FF00FF00FF004200FF84
        0000FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
        4200FF004200FF004200FF004200FF004200FF00FF00FF00FF00FF00FF00FF84
        0000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF84
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
    end
  end
  object GroupingPanel: TPanel
    Left = 598
    Top = 32
    Width = 230
    Height = 535
    Align = alRight
    BevelInner = bvLowered
    Caption = 'GroupingPanel'
    TabOrder = 2
    Visible = False
    object PDate: TPanel
      Left = 2
      Top = 2
      Width = 226
      Height = 531
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object ToOrgDbgrid: TYDBGrid
        Left = 0
        Top = 0
        Width = 226
        Height = 531
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = clWhite
        DataSource = Dsp_distinctDate
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgIndicator, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        ParentFont = False
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
        PrintTitle = #1593#1606#1608#1575#1606
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'RecommiteDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582
            Width = 170
            Visible = True
          end>
      end
    end
  end
  object MainActionManager: TActionManager
    ActionBars.SessionCount = 363
    ActionBars = <
      item
        Visible = False
        AutoSize = False
      end
      item
        Items = <
          item
            Caption = #1585#1608#1575#1604#1607#1575
          end>
        AutoSize = False
      end
      item
        Visible = False
        AutoSize = False
      end
      item
        Items = <
          item
            Caption = '&Dataset'
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Caption = #1605#1603#1575#1578#1576#1575#1578' '#1575#1583#1575#1585#1610
          end
          item
            Caption = #1711#1586#1575#1585#1588
          end
          item
            Caption = #1605#1583#1610#1585#1610#1578' '#1587#1610#1587#1578#1605
          end
          item
            Caption = #1603#1575#1585#1576#1585#1575#1606
          end
          item
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1610#1587#1578#1605#1610
          end
          item
            Caption = #1575#1605#1603#1575#1606#1575#1578
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 248
    Top = 72
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = #1578#1589#1608#1610#1585
      ImageIndex = 22
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1601#1575#1610#1604' '
      ImageIndex = 23
    end
    object Ahome: TAction
      Caption = 'Ahome'
      OnExecute = AHomeExecute
    end
  end
  object LetterPopup: TPopupMenu
    Images = Dm.LetterImages
    Left = 480
    Top = 221
    object N1: TMenuItem
      Action = MainForm.AviewAllletter
    end
    object N2: TMenuItem
    end
    object N3: TMenuItem
    end
    object N32: TMenuItem
      Action = MainForm.AAnswer
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Action = MainForm.Arecommite
    end
    object TMenuItem
      Action = MainForm.AFollow
    end
    object N11: TMenuItem
      Action = MainForm.AretroAction
    end
    object N12: TMenuItem
      Action = MainForm.Apicture
    end
    object N14: TMenuItem
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1606#1605#1575#1610#1588' '#1601#1607#1585#1587#1578
      OnClick = N13Click
    end
    object N9: TMenuItem
      Caption = #1670#1575#1662' '#1601#1607#1585#1587#1578
      ImageIndex = 37
      OnClick = N9Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object AOtherSenders1: TMenuItem
    end
    object N6: TMenuItem
    end
    object N4: TMenuItem
    end
    object ExactCopy1: TMenuItem
    end
  end
  object Dcommon: TDataSource
    AutoEdit = False
    DataSet = sp_board
    Left = 160
    Top = 112
  end
  object Dsp_distinctDate: TDataSource
    DataSet = sp_distinctDate
    Left = 449
    Top = 172
  end
  object sp_distinctDate: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'sp_distinctDate;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@OrgID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 83
      end>
    Left = 448
    Top = 140
    object sp_distinctDateRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
  end
  object sp_board: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'sp_board;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@OrgID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@date'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '0'
      end>
    Left = 248
    Top = 400
    object sp_boardIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object sp_boardMYear: TWordField
      FieldName = 'MYear'
    end
    object sp_boardSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object sp_boardLetter_type: TWordField
      FieldName = 'Letter_type'
    end
    object sp_boardFromOrgID: TSmallintField
      FieldName = 'FromOrgID'
    end
    object sp_boardToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object sp_boardUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object sp_boardMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object sp_boardLetterFormat: TWordField
      FieldName = 'LetterFormat'
    end
    object sp_boardAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object sp_boardRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object sp_boardRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object sp_boardFollowLetterNo: TStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object sp_boardToStaffer: TStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object sp_boardParaph: TStringField
      DisplayWidth = 3000
      FieldName = 'Paraph'
      Size = 3000
    end
    object sp_boardRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object sp_boardno1: TWideStringField
      FieldName = 'no1'
      ReadOnly = True
      Size = 50
    end
  end
end
