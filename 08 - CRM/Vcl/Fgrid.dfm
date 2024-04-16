object Grid: TGrid
  Left = 263
  Top = 385
  BiDiMode = bdRightToLeft
  BorderStyle = bsNone
  Caption = 'Grid'
  ClientHeight = 137
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TYDBGrid
    Left = 0
    Top = 0
    Width = 368
    Height = 137
    Align = alClient
    Color = clWhite
    DataSource = Dquery
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
    OnKeyDown = DBGridKeyDown
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
    OnNeedColorCondition = DBGridNeedColorCondition
    OnNeedFontCondition = DBGridNeedFontCondition
    Columns = <
      item
        Expanded = False
        FieldName = 'title'
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code2'
        Width = 50
        Visible = True
      end>
  end
  object query: TADODataSet
    Parameters = <>
    Left = 336
    Top = 8
  end
  object Dquery: TDataSource
    DataSet = query
    Left = 336
    Top = 56
  end
end
