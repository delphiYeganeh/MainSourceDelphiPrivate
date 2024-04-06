object SEARCH_IN_PDF_FRM: TSEARCH_IN_PDF_FRM
  Left = 457
  Top = 309
  BorderStyle = bsDialog
  Caption = 'PDF '#1580#1587#1578#1580#1608' '#1583#1585' '#1601#1575#1610#1604' '
  ClientHeight = 358
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 11
    Width = 60
    Height = 13
    Caption = #1605#1578#1606' '#1605#1608#1585#1583' '#1606#1592#1585
  end
  object SpeedButton1: TSpeedButton
    Left = 251
    Top = 8
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 569
    Height = 289
    BiDiMode = bdRightToLeft
    DataSource = DataSource1
    ParentBiDiMode = False
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IncommingNO'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1605#1583#1585#1705
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IndicatorID'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Memo'
        Title.Alignment = taCenter
        Title.Caption = #1593#1606#1608#1575#1606' '#1605#1583#1585#1705
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAGE'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607
        Width = 80
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 502
    Top = 328
    Width = 75
    Height = 25
    Caption = #1606#1605#1575#1610#1588
    TabOrder = 1
    Visible = False
  end
  object TXT: TEdit
    Left = 280
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = SRCH_QRY
    Left = 8
    Top = 8
  end
  object SRCH_QRY: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LETTER_PEYVAST_PDF'
      
        'INNER JOIN dbo.LetterData LD ON LD.LetterDataID = LETTER_PEYVAST' +
        '_PDF.LETTER_DATA_ID'
      
        'INNER JOIN dbo.Letter     L  ON L.LetterID      = LETTER_PEYVAST' +
        '_PDF.LETTERID')
    Left = 40
    Top = 8
  end
end
