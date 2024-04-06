inherited FrTextFormat: TFrTextFormat
  Left = 789
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1593#1585#1610#1601' '#1588#1705#1604' '#1601#1575#1610#1604' '#1607#1575#1610' '#1605#1578#1606#1610
  ClientHeight = 553
  ClientWidth = 443
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TxpBitBtn [0]
    Left = 8
    Top = 517
    Width = 92
    Height = 31
    startColor = 16645629
    EndColor = 14666957
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 18
    Gradient = True
    TabOrder = 0
    TabStop = True
    OnClick = BitBtn1Click
  end
  object BitBtn2: TxpBitBtn [1]
    Left = 112
    Top = 517
    Width = 92
    Height = 31
    startColor = 16645629
    EndColor = 14666957
    Caption = #1575#1606#1589#1585#1575#1601
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 72
    Gradient = True
    TabOrder = 1
    TabStop = True
    OnClick = BitBtn2Click
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 0
    Width = 443
    Height = 513
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #1580#1586#1574#1610#1575#1578' '#1601#1585#1605#1578' '#1601#1575#1610#1604' '#1605#1578#1606#1610
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 435
        Height = 55
        Align = alTop
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label13: TLabel
          Left = 447
          Top = 24
          Width = 4
          Height = 14
          FocusControl = DBEdit13
        end
        object DBEdit13: TDBEdit
          Left = 8
          Top = 27
          Width = 417
          Height = 21
          DataField = 'TextFormatTitle'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 313
        Width = 435
        Height = 107
        Align = alTop
        Caption = #1587#1575#1610#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label10: TLabel
          Left = 260
          Top = 80
          Width = 111
          Height = 13
          Caption = #1705#1575#1585#1575#1705#1578#1585' '#1587#1574#1608#1575#1604#1575#1578' '#1605#1582#1583#1608#1588
          FocusControl = DBEdit10
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 260
          Top = 27
          Width = 112
          Height = 13
          Caption = #1588#1605#1575#1585#1607' '#1582#1591' '#1705#1604#1610#1583' '#1587#1574#1608#1575#1604#1575#1578
          FocusControl = DBEdit11
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 260
          Top = 53
          Width = 99
          Height = 13
          Caption = #1575#1608#1604#1610#1606' '#1582#1591' '#1575#1604#1711#1608#1610' '#1662#1575#1587#1582
          FocusControl = DBEdit12
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit10: TDBEdit
          Left = 226
          Top = 80
          Width = 17
          Height = 21
          DataField = 'indiscernibleChar'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 109
          Top = 24
          Width = 134
          Height = 21
          DataField = 'KeyLineNumber'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit12: TDBEdit
          Left = 109
          Top = 52
          Width = 134
          Height = 21
          DataField = 'AnswerStartLineNumber'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 55
        Width = 435
        Height = 258
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1607#1585' '#1582#1591' '#1575#1586' '#1601#1575#1610#1604' '#1605#1578#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 230
          Top = 31
          Width = 182
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585'  '#1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
          FocusControl = DBEdit1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 58
          Top = 31
          Width = 104
          Height = 13
          Caption = #1591#1608#1604' '#1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
          FocusControl = DBEdit2
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 232
          Top = 59
          Width = 139
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585'  '#1705#1583' '#1585#1588#1578#1607
          FocusControl = DBEdit3
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 58
          Top = 58
          Width = 61
          Height = 13
          Caption = #1591#1608#1604' '#1705#1583' '#1585#1588#1578#1607
          FocusControl = DBEdit4
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 231
          Top = 111
          Width = 136
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585'  '#1705#1583' '#1583#1585#1587
          FocusControl = DBEdit5
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 58
          Top = 113
          Width = 58
          Height = 13
          Caption = #1591#1608#1604' '#1705#1583' '#1583#1585#1587
          FocusControl = DBEdit6
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 58
          Top = 141
          Width = 81
          Height = 13
          Caption = #1591#1608#1604' '#1705#1583' '#1711#1585#1608#1607' '#1583#1585#1587
          FocusControl = DBEdit8
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 233
          Top = 167
          Width = 155
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585'  '#1575#1604#1711#1608#1610' '#1662#1575#1587#1582
          FocusControl = DBEdit9
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 232
          Top = 86
          Width = 158
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585'  '#1606#1610#1605#1587#1575#1604' '#1608#1585#1608#1583
          FocusControl = DBEdit15
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 58
          Top = 86
          Width = 94
          Height = 13
          Caption = #1591#1608#1604' '#1705#1583' '#1606#1610#1605#1587#1575#1604' '#1608#1585#1608#1583
          FocusControl = DBEdit16
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 231
          Top = 139
          Width = 159
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585'  '#1705#1583' '#1711#1585#1608#1607' '#1583#1585#1587
          FocusControl = DBEdit7
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 232
          Top = 227
          Width = 176
          Height = 13
          Caption = #1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1705#1585' '#1711#1585#1608#1607' '#1576#1585#1711#1586#1575#1585#1610' '#1570#1586#1605#1608#1606
          FocusControl = DBEdit14
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 60
          Top = 169
          Width = 77
          Height = 13
          Caption = #1591#1608#1604' '#1575#1604#1711#1608#1610' '#1662#1575#1587#1582
          FocusControl = DBEdit17
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 230
          Top = 196
          Width = 202
          Height = 13
          Caption = ' '#1605#1608#1602#1593#1610#1578' '#1575#1608#1604#1610#1606' '#1705#1575#1585#1575#1705#1578#1585' '#1575#1604#1711#1608#1610'  '#1662#1575#1587#1582' '#1578#1588#1585#1610#1581#1610
          FocusControl = DBEdit18
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 56
          Top = 197
          Width = 118
          Height = 13
          Caption = #1591#1608#1604' '#1575#1604#1711#1608#1610' '#1662#1575#1587#1582' '#1578#1588#1585#1581#1610
          FocusControl = DBEdit19
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 178
          Top = 28
          Width = 50
          Height = 21
          DataField = 'StnoStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 6
          Top = 28
          Width = 50
          Height = 21
          DataField = 'StnoLength'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 178
          Top = 55
          Width = 50
          Height = 21
          DataField = 'MajorStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 55
          Width = 50
          Height = 21
          DataField = 'MajorLength'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 178
          Top = 110
          Width = 50
          Height = 21
          DataField = 'CourseStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 6
          Top = 110
          Width = 50
          Height = 21
          DataField = 'CourseLength'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 6
          Top = 138
          Width = 50
          Height = 21
          DataField = 'CourseGroupLength'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 178
          Top = 167
          Width = 50
          Height = 21
          DataField = 'AnswerStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit15: TDBEdit
          Left = 178
          Top = 83
          Width = 50
          Height = 21
          DataField = 'TermcodeStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 6
          Top = 83
          Width = 50
          Height = 21
          DataField = 'TermCodeLength'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 178
          Top = 137
          Width = 50
          Height = 21
          DataField = 'CourseGroupStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit14: TDBEdit
          Left = 179
          Top = 224
          Width = 50
          Height = 21
          DataField = 'GroupExamStart'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit17: TDBEdit
          Left = 6
          Top = 166
          Width = 50
          Height = 21
          DataField = 'AnserEnd'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit18: TDBEdit
          Left = 178
          Top = 196
          Width = 50
          Height = 21
          DataField = 'ExPositive_Start'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit19: TDBEdit
          Left = 6
          Top = 194
          Width = 50
          Height = 21
          DataField = 'ExPositive_End'
          DataSource = Dm.DTextFormat
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 139
        Top = 422
        Width = 294
        Height = 33
        DataSource = Dm.DTextFormat
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Flat = True
        TabOrder = 3
      end
      object xpBitBtn1: TxpBitBtn
        Left = 0
        Top = 423
        Width = 121
        Height = 29
        startColor = 16645629
        EndColor = 14666957
        Caption = #1584#1582#1610#1585#1607' '#1576#1575' '#1606#1575#1605' '#1580#1583#1610#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Gradient = True
        TabOrder = 4
        TabStop = True
        OnClick = xpBitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1601#1607#1585#1587#1578' '#1601#1585#1605#1578' '#1607#1575#1610' '#1601#1575#1610#1604' '#1605#1578#1606#1610
      ImageIndex = 1
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 0
        Width = 435
        Height = 397
        Align = alClient
        DataSource = Dm.DTextFormat
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
            FieldName = 'TextFormatTitle'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StnoStart'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StnoLength'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MajorStart'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MajorLength'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CourseStart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CourseLength'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CourseGroupStart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CourseGroupLength'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AnswerStart'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'indiscernibleChar'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KeyLineNumber'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AnswerStartLineNumer'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TermcodeStart'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TermCodeLength'
            Width = 81
            Visible = True
          end>
      end
    end
  end
  inherited ActionList: TActionList
    Left = 239
    Top = 512
    object f2: TAction
      Caption = 'f2'
      ShortCut = 113
      OnExecute = f2Execute
    end
  end
  inherited xpWindow1: TxpWindow
    Top = 40
  end
end
