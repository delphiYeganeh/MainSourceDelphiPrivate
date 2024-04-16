inherited frCaseBasicData: TfrCaseBasicData
  Left = 498
  Top = 118
  Width = 739
  Height = 546
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 467
    Width = 731
    Height = 45
    Align = alBottom
    TabOrder = 0
    object btnCancel: TBitBtn
      Left = 9
      Top = 7
      Width = 98
      Height = 32
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object GroupBox4: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 731
    Height = 467
    Align = alClient
    Caption = '    '#1605#1608#1575#1585#1583'   '
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 337
      Top = 15
      Height = 241
    end
    object GroupBox2: TGroupBox
      Left = 340
      Top = 15
      Width = 389
      Height = 241
      Align = alClient
      Caption = '  '#1606#1608#1593'  '
      TabOrder = 0
      object Panel5: TPanel
        Left = 2
        Top = 216
        Width = 385
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btndCaseType: TBitBtn
          Left = 4
          Top = 1
          Width = 30
          Height = 21
          Caption = '+'
          TabOrder = 0
          OnClick = btndCaseTypeClick
        end
      end
      object dbgCaseType: TYDBGrid
        Left = 2
        Top = 15
        Width = 385
        Height = 201
        Align = alClient
        DataSource = Dm.DsCaseType
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
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
        AutoInsert = True
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'CaseTypeTitle'
            Title.Caption = #1578#1610#1578#1585
            Width = 131
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'ManagerUserName'
            Title.Caption = #1605#1583#1610#1585' '#1605#1585#1576#1608#1591#1607
            Width = 117
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 335
      Height = 241
      Align = alLeft
      Caption = '  '#1575#1608#1604#1608#1610#1578'  '
      TabOrder = 1
      object Panel2: TPanel
        Left = 2
        Top = 216
        Width = 331
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 4
          Top = 1
          Width = 30
          Height = 21
          Caption = '+'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
      object YDBGrid1: TYDBGrid
        Left = 2
        Top = 15
        Width = 331
        Height = 201
        Cursor = crHandPoint
        Align = alClient
        DataSource = Dm.dsCasePriority
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
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
        AutoInsert = True
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'CasePriorityTitle'
            Title.Caption = #1578#1610#1578#1585
            Width = 131
            Visible = True
          end>
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 256
      Width = 727
      Height = 209
      Align = alBottom
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 337
        Top = 1
        Height = 207
      end
      object GroupBox5: TGroupBox
        Left = 1
        Top = 1
        Width = 336
        Height = 207
        Align = alLeft
        Caption = #1608#1590#1593#1610#1578' '#1603#1575#1585#1607#1575'  '
        TabOrder = 0
        object Panel4: TPanel
          Left = 2
          Top = 182
          Width = 332
          Height = 23
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn4: TBitBtn
            Left = 4
            Top = 1
            Width = 30
            Height = 21
            Caption = '+'
            TabOrder = 0
            OnClick = BitBtn4Click
          end
        end
        object YDBGrid4: TYDBGrid
          Left = 2
          Top = 15
          Width = 332
          Height = 167
          Cursor = crHandPoint
          Align = alClient
          DataSource = Dm.DsTaskStatus
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
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
          AutoInsert = True
          FooterFields = 'Count'
          Columns = <
            item
              Expanded = False
              FieldName = 'TaskStatusTitle'
              Title.Caption = #1578#1610#1578#1585
              Width = 138
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 340
        Top = 1
        Width = 386
        Height = 207
        Align = alClient
        Caption = #1605#1606#1576#1593
        TabOrder = 1
        object YDBGrid2: TYDBGrid
          Left = 2
          Top = 15
          Width = 382
          Height = 167
          Cursor = crHandPoint
          Align = alClient
          DataSource = Dm.DsCaseOriginal
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
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
          AutoInsert = True
          FooterFields = 'Count'
          Columns = <
            item
              Expanded = False
              FieldName = 'CaseOriginalTitle'
              Title.Caption = #1578#1610#1578#1585
              Width = 138
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 2
          Top = 182
          Width = 382
          Height = 23
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn2: TBitBtn
            Left = 4
            Top = 1
            Width = 30
            Height = 21
            Caption = '+'
            TabOrder = 0
            OnClick = BitBtn2Click
          end
        end
      end
    end
  end
end
