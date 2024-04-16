inherited FsetPriority: TFsetPriority
  Left = 603
  Top = 108
  Width = 357
  Height = 390
  BorderIcons = []
  Caption = #1575#1608#1604#1608#1610#1578' '#1711#1584#1575#1585#1610
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 349
    Height = 34
    Align = alTop
    TabOrder = 0
    DesignSize = (
      349
      34)
    object Label1: TLabel
      Left = 247
      Top = 11
      Width = 90
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1576#1585' '#1575#1587#1575#1587
    end
    object ComboBox1: TComboBox
      Left = 106
      Top = 7
      Width = 137
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ItemHeight = 13
      ItemIndex = 0
      ParentBiDiMode = False
      TabOrder = 0
      Text = #1607#1610#1670' '#1603#1583#1575#1605
      Items.Strings = (
        #1607#1610#1670' '#1603#1583#1575#1605
        #1606#1608#1593' '#1601#1593#1575#1604#1610#1578
        #1588#1607#1585' '#1607#1575
        #1576#1575#1586#1575#1585#1610#1575#1576' '#1607#1575
        #1575#1587#1578#1575#1606' '#1607#1575)
    end
    object Button2: TButton
      Left = 8
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1608#1604#1608#1610#1578' '#1711#1584#1575#1585#1610
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object YDBGrid1: TYDBGrid [1]
    Left = 0
    Top = 34
    Width = 349
    Height = 264
    Align = alTop
    Color = 15921906
    DataSource = Dsp_SetOrder
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
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = #1593#1606#1608#1575#1606
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLUMN1'
        Title.Caption = #1578#1593#1583#1575#1583
        Width = 76
        Visible = True
      end>
  end
  object Button1: TButton [2]
    Left = 16
    Top = 320
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 2
    OnClick = Button1Click
  end
  object sp_SetOrder: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_SetOrder;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Grouping'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end>
    Left = 184
    Top = 112
  end
  object Dsp_SetOrder: TDataSource
    DataSet = sp_SetOrder
    Left = 192
    Top = 168
  end
end
