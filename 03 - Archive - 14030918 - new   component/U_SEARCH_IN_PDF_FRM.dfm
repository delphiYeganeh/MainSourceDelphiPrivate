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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 358
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 512
      Top = 11
      Width = 60
      Height = 13
      Caption = #1605#1578#1606' '#1605#1608#1585#1583' '#1606#1592#1585
    end
    object SpeedButton1: TAdvGlowButton
      Left = 252
      Top = 6
      Width = 23
      Height = 22
      ImageIndex = 35
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = SpeedButton1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object TXT: TEdit
      Left = 280
      Top = 8
      Width = 225
      Height = 21
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 569
      Height = 289
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 1
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
    object BitBtn1: TAdvGlowButton
      Left = 480
      Top = 328
      Width = 97
      Height = 25
      Caption = #1606#1605#1575#1610#1588
      ImageIndex = 14
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      Visible = False
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
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
