object SHOW_ATF_PEYRO_FRM: TSHOW_ATF_PEYRO_FRM
  Left = 547
  Top = 143
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  ClientHeight = 519
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 697
    Height = 505
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'IndicatorID'
        Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IncommingNO'
        Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Incommingdate'
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEMO'
        Title.Caption = #1605#1590#1605#1608#1606
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SubjectTitle'
        Title.Caption = '-----'
        Width = 130
        Visible = True
      end>
  end
  object SQL: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 8
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = SQL
    Left = 40
    Top = 8
  end
end
