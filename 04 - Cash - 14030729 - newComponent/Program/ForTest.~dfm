object FrForTest: TFrForTest
  Left = 268
  Top = 144
  Width = 500
  Height = 338
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '#1605#1583#1610#1585#1610#1578' '#1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607
  Color = 15724774
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
  object YDBGrid1: TYDBGrid
    Left = 144
    Top = 8
    Width = 320
    Height = 120
    DataSource = Dm.sp_ForTestD
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
    AutoInsert = False
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        Title.Caption = 'DATE'
        Visible = True
      end>
  end
  object ahmadvand: TActionList
    Left = 13
    Top = 11
    object AExit: TAction
      Caption = #1582#1585#1608#1580
      ImageIndex = 75
      ShortCut = 27
      OnExecute = AExitExecute
    end
    object searchAccount: TAction
      ShortCut = 114
      OnExecute = searchAccountExecute
    end
    object AExportToExcel: TAction
      ShortCut = 16453
      OnExecute = AExportToExcelExecute
    end
    object SearchLoan: TAction
      Caption = 'SearchLoan'
      ShortCut = 8306
      OnExecute = SearchLoanExecute
    end
  end
  object Grid_PopupMenu: TPopupMenu
    Tag = 11
    Left = 23
    Top = 60
    object wordMenuItem: TMenuItem
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Word'
      OnClick = wordMenuItemClick
    end
    object ExcelMenuItem: TMenuItem
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnClick = ExcelMenuItemClick
    end
    object PrintMenuItem: TMenuItem
      Caption = #1670#1575#1662'  '#1575#1610#1606' '#1604#1610#1587#1578
      OnClick = PrintMenuItemClick
    end
    object TextMenuItem: TMenuItem
      Caption = ' '#1578#1607#1610#1607' '#1601#1575#1610#1604' Text'
      OnClick = TextMenuItemClick
    end
    object CustomMenuItem: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1608' '#1601#1585#1605#1578' '#1670#1575#1662
      OnClick = CustomMenuItemClick
    end
  end
end
