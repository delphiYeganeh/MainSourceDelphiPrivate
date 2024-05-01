inherited FrReportAll: TFrReportAll
  Left = 467
  Top = 165
  Width = 1070
  Height = 791
  Caption = #1711#1586#1575#1585#1588' '#1607#1575
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 1054
    Height = 752
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 1054
    Height = 752
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 848
      Top = 656
      Width = 161
      Height = 41
      Caption = #1711#1586#1575#1585#1588' '#1705#1604#1610
      TabOrder = 0
      object allEdit: TEdit
        Left = 8
        Top = 16
        Width = 145
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        OnChange = Edit1Change
        OnKeyDown = allEditKeyDown
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1052
      Height = 750
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = #1578#1605#1575#1587
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1044
          Height = 705
          Align = alTop
          Caption = 'Panel1'
          TabOrder = 0
          object Panel3: TPanel
            Left = 508
            Top = 1
            Width = 535
            Height = 703
            Align = alClient
            TabOrder = 0
            object Label1: TLabel
              Left = 362
              Top = 11
              Width = 113
              Height = 13
              Caption = #1711#1586#1575#1585#1588' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '#1576#1607' '#1585#1608#1586
            end
            object dbgCountContact: TYDBGrid
              Left = 1
              Top = 48
              Width = 533
              Height = 654
              Cursor = crHandPoint
              Align = alBottom
              Color = 15728607
              DataSource = DrpConactByDate
              PopupMenu = PopupMenu1
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
              PrintTitle = #1711#1586#1575#1585#1588' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '#1576#1607' '#1585#1608#1586
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'insertdate'
                  Title.Caption = #1585#1608#1586
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1578#1605#1575#1587#1607#1575#1610' '#1605#1601#1610#1583
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1580#1605#1593
                  Width = 38
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1583#1585' '#1581#1575#1604' '#1662#1610#1711#1610#1585#1610
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1605#1588#1578#1585#1610' '#1602#1591#1593#1610
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1575#1606#1589#1585#1575#1601' '#1575#1586' '#1582#1585#1610#1583
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1606#1575#1605#1588#1582#1589
                  Width = 51
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = #1575#1591#1604#1575#1593#1575#1578' '#1578#1605#1575#1587
                  Visible = True
                end>
            end
            object YWhereEdit1: TYWhereEdit
              Left = 196
              Top = 7
              Width = 161
              Height = 21
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              TabOrder = 1
              isLike = False
              isDate = True
              EveryLike = False
              isString = True
              CodeField = 'Code'
              TitleField = 'Title'
            end
            object Button1: TButton
              Left = 114
              Top = 5
              Width = 75
              Height = 25
              Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
              TabOrder = 2
              OnClick = Button1Click
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 507
            Height = 703
            Align = alLeft
            TabOrder = 1
            object dbgCountContactweek: TYDBGrid
              Left = 1
              Top = 41
              Width = 505
              Height = 310
              Align = alClient
              Color = 15728607
              DataSource = DrpConactByWeek
              PopupMenu = PopupMenu1
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
              PrintTitle = #1711#1586#1575#1585#1588' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '#1576#1607' '#1607#1601#1578#1607
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
            end
            object dbgCountContactWeekSoftware: TYDBGrid
              Left = 1
              Top = 392
              Width = 505
              Height = 310
              Cursor = crHandPoint
              Align = alBottom
              Color = 15728607
              DataSource = DrpConactByWeekProduct
              PopupMenu = PopupMenu1
              TabOrder = 1
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
              PrintTitle = #1711#1586#1575#1585#1588' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '#1576#1607' '#1607#1601#1578#1607' '#1608' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
            end
            object Panel5: TPanel
              Left = 1
              Top = 351
              Width = 505
              Height = 41
              Align = alBottom
              TabOrder = 2
              object Label3: TLabel
                Left = 283
                Top = 20
                Width = 176
                Height = 13
                Caption = #1711#1586#1575#1585#1588' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '#1576#1607' '#1607#1601#1578#1607' '#1608' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '
              end
              object YWhereEdit3: TYWhereEdit
                Left = 123
                Top = 12
                Width = 161
                Height = 21
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                TabOrder = 0
                isLike = False
                isDate = True
                EveryLike = False
                isString = True
                CodeField = 'Code'
                TitleField = 'Title'
              end
              object Button3: TButton
                Left = 37
                Top = 9
                Width = 75
                Height = 24
                Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
                TabOrder = 1
                OnClick = Button3Click
              end
            end
            object Panel7: TPanel
              Left = 1
              Top = 1
              Width = 505
              Height = 40
              Align = alTop
              TabOrder = 3
              object Label2: TLabel
                Left = 295
                Top = 11
                Width = 124
                Height = 13
                Caption = #1711#1586#1575#1585#1588' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '#1576#1607' '#1607#1601#1578#1607
              end
              object YWhereEdit2: TYWhereEdit
                Left = 128
                Top = 7
                Width = 161
                Height = 21
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                TabOrder = 0
                isLike = False
                isDate = True
                EveryLike = False
                isString = True
                CodeField = 'Code'
                TitleField = 'Title'
              end
              object Button2: TButton
                Left = 42
                Top = 5
                Width = 75
                Height = 25
                Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
                TabOrder = 1
                OnClick = Button2Click
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1601#1585#1608#1588
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1044
          Height = 332
          Align = alTop
          Caption = 'Panel1'
          TabOrder = 0
          object Panel9: TPanel
            Left = 537
            Top = 1
            Width = 506
            Height = 330
            Align = alRight
            Caption = 'Panel3'
            TabOrder = 0
            object Label5: TLabel
              Left = 386
              Top = 11
              Width = 113
              Height = 13
              Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1576#1575#1586#1575#1585#1610#1575#1576' '#1607#1575' '
            end
            object Label8: TLabel
              Left = 379
              Top = 11
              Width = 7
              Height = 13
              Caption = #1575#1586
            end
            object dbgReportMarketerSales: TYDBGrid
              Left = 1
              Top = 40
              Width = 504
              Height = 289
              Cursor = crHandPoint
              Align = alBottom
              Color = 15925222
              DataSource = DrpContractMarketer
              PopupMenu = PopupMenu1
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
              PrintTitle = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1576#1575#1586#1575#1585#1610#1575#1576' '#1607#1575' '
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
            end
            object Button4: TButton
              Left = 74
              Top = 5
              Width = 75
              Height = 25
              Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
              TabOrder = 1
              OnClick = Button4Click
            end
            object wredtReportMarketerSales: TYWhereEdit
              Left = 192
              Top = 7
              Width = 161
              Height = 21
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              TabOrder = 2
              isLike = False
              isDate = True
              EveryLike = False
              isString = True
              CodeField = 'Code'
              TitleField = 'Title'
            end
          end
          object Panel10: TPanel
            Left = 1
            Top = 1
            Width = 536
            Height = 330
            Align = alClient
            Caption = 'Panel3'
            TabOrder = 1
            object Label6: TLabel
              Left = 362
              Top = 11
              Width = 73
              Height = 13
              Caption = #1593#1605#1604#1705#1585#1583' '#1576#1575#1586#1575#1585#1610#1575#1576#1575#1606
            end
            object dbgMarketerTurnover: TYDBGrid
              Left = 1
              Top = 40
              Width = 534
              Height = 289
              Cursor = crHandPoint
              Align = alBottom
              Color = 15925222
              DataSource = DrpMarketer
              PopupMenu = PopupMenu1
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
              PrintTitle = #1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583' '#1576#1575#1586#1575#1585#1610#1575#1576#1575#1606' '
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'MarketerTitle'
                  Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustomerCount'
                  Title.Caption = #1578#1593#1583#1575#1583' '#1605#1588#1578#1585#1610
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Count1'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Count2'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Count3'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Avg2'
                  Title.Caption = #1662#1610#1711#1610#1585#1610' '#1576#1585#1575#1610' '#1607#1585' '#1605#1588#1578#1585#1610' '#1602#1591#1593#1610
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'avg123'
                  Title.Caption = #1662#1610#1711#1610#1585#1610' '#1576#1585#1575#1610' '#1607#1585' '#1605#1588#1578#1585#1610
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'percent11'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'percent12'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'percent13'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'percent21'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'percent22'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'percent23'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Percent0'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'ContractPercent'
                  Title.Caption = #1583#1585#1589#1583' '#1601#1585#1608#1588
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'followup2'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Followup123'
                  Visible = False
                end>
            end
            object YWhereEdit6: TYWhereEdit
              Left = 192
              Top = 7
              Width = 161
              Height = 21
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              TabOrder = 1
              isLike = False
              isDate = True
              EveryLike = False
              isString = True
              CodeField = 'Code'
              TitleField = 'Title'
            end
            object Button6: TButton
              Left = 106
              Top = 5
              Width = 75
              Height = 25
              Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
              TabOrder = 2
              OnClick = Button6Click
            end
          end
        end
        object Panel8: TPanel
          Left = 538
          Top = 332
          Width = 506
          Height = 390
          Align = alRight
          Caption = 'Panel3'
          TabOrder = 1
          object Label4: TLabel
            Left = 360
            Top = 11
            Width = 139
            Height = 13
            Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1576#1607' '#1605#1575#1607' '#1608' '#1606#1585#1605' '#1575#1601#1586#1575#1585
          end
          object dbgMonthSoftwareSale: TYDBGrid
            Left = 1
            Top = 86
            Width = 504
            Height = 303
            Align = alBottom
            Color = 15925222
            DataSource = DrpContractProduct
            PopupMenu = PopupMenu1
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
            PrintTitle = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1576#1607' '#1605#1575#1607' '#1608' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '
            InvertFarsiDate = True
            TitleSort = True
            AutoInsert = False
            FooterFields = 'Count'
          end
          object YWhereEdit5: TYWhereEdit
            Left = 192
            Top = 7
            Width = 161
            Height = 21
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            isLike = False
            isDate = True
            EveryLike = False
            isString = True
            CodeField = 'Code'
            TitleField = 'Title'
          end
          object Button5: TButton
            Left = 106
            Top = 5
            Width = 75
            Height = 25
            Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
            TabOrder = 2
            OnClick = Button5Click
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 332
          Width = 538
          Height = 390
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 2
          object Label7: TLabel
            Left = 336
            Top = 11
            Width = 163
            Height = 13
            Caption = #1711#1586#1575#1585#1588' '#1606#1587#1576#1578' '#1601#1585#1608#1588' '#1576#1607' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '
          end
          object dbgSaleToMonthNumber: TYDBGrid
            Left = 1
            Top = 86
            Width = 536
            Height = 303
            Cursor = crHandPoint
            Align = alBottom
            Color = 15925222
            DataSource = DrpContractMarketerRate
            PopupMenu = PopupMenu1
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
            PrintTitle = #1711#1586#1575#1585#1588' '#1606#1587#1576#1578' '#1601#1585#1608#1588' '#1576#1607' '#1578#1593#1583#1575#1583' '#1578#1605#1575#1587' '
            InvertFarsiDate = True
            TitleSort = True
            AutoInsert = False
            FooterFields = 'Count'
            Columns = <
              item
                Expanded = False
                FieldName = 'marketerTitle'
                Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AmountRate'
                Title.Caption = #1606#1587#1576#1578' '#1601#1585#1608#1588' '#1576#1585#1575#1610' '#1607#1585' '#1578#1605#1575#1587
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'amount'
                Title.Caption = #1605#1576#1604#1594
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CustomerCount'
                Title.Caption = #1578#1593#1583#1575#1583' '#1578#1605#1575#1587
                Visible = True
              end>
          end
          object YWhereEdit7: TYWhereEdit
            Left = 176
            Top = 7
            Width = 161
            Height = 21
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            isLike = False
            isDate = True
            EveryLike = False
            isString = True
            CodeField = 'Code'
            TitleField = 'Title'
          end
          object Button7: TButton
            Left = 90
            Top = 5
            Width = 75
            Height = 25
            Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
            TabOrder = 2
            OnClick = Button7Click
          end
        end
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 336
    Top = 272
  end
  inherited ActionList: TActionList
    Left = 256
    Top = 216
  end
  object rpContractMarketer: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpContractMarketer'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 224
    Top = 320
  end
  object DrpContractMarketer: TDataSource
    DataSet = rpContractMarketer
    Left = 148
    Top = 72
  end
  object rpContractProduct: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpContractProduct'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 464
    Top = 112
  end
  object DrpContractProduct: TDataSource
    DataSet = rpContractProduct
    Left = 413
    Top = 224
  end
  object DrpConactByDate: TDataSource
    DataSet = rpConactByDate
    Left = 110
    Top = 168
  end
  object rpConactByWeek: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpConactByWeek'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 112
    Top = 224
  end
  object rpConactByWeekProduct: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpConactByWeekProduct'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 204
    Top = 520
  end
  object DrpConactByWeekProduct: TDataSource
    DataSet = rpConactByWeekProduct
    Left = 368
    Top = 128
  end
  object DrpConactByWeek: TDataSource
    DataSet = rpConactByWeek
    Left = 57
    Top = 136
  end
  object rpMarketer: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpMarketer'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 576
    Top = 96
  end
  object DrpMarketer: TDataSource
    DataSet = rpMarketer
    Left = 227
    Top = 152
  end
  object rpConactByDate: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpConactByDate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 60
    Top = 112
  end
  object rpContractMarketerRate: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'rpContractMarketerRate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/04/01'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1388/05/01'
      end>
    Left = 296
    Top = 472
  end
  object DrpContractMarketerRate: TDataSource
    DataSet = rpContractMarketerRate
    Left = 269
    Top = 480
  end
  object PopupMenu1: TPopupMenu
    Left = 617
    Top = 161
    object excel1: TMenuItem
      Caption = #1582#1585#1608#1580#1610' '#1576#1607'   Excel '
      OnClick = excel1Click
    end
    object Excel2: TMenuItem
      Caption = ' '#1582#1585#1608#1580#1610' '#1576#1607'   Word'
      OnClick = Excel2Click
    end
  end
end
