object SearchFromCRM: TSearchFromCRM
  Left = 456
  Top = 169
  Width = 413
  Height = 437
  BiDiMode = bdRightToLeft
  Caption = #1580#1587#1578#1580#1608
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 350
    Top = 34
    Width = 24
    Height = 15
    Caption = #1605#1602#1583#1575#1585' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 283
    Top = 8
    Width = 93
    Height = 15
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1587#1578#1608#1606' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 313
    Height = 22
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 59
    Width = 397
    Height = 320
    Cursor = crHandPoint
    Align = alBottom
    DataSource = DSYDabir_Select_List_Customers
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CustomerNO'
        Title.Caption = #1705#1583' '#1605#1588#1578#1585#1610
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustomerID'
        Title.Caption = #1705#1583' '#1587#1610#1587#1578#1605
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PersonTitle'
        Title.Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
        Width = 150
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 379
    Width = 397
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object DSYDabir_Select_List_Customers: TDataSource
    DataSet = Dm.YDabir_Select_List_Customers
    Left = 120
    Top = 192
  end
end
