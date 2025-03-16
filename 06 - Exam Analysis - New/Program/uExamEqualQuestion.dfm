object frmExamEqualQuestion: TfrmExamEqualQuestion
  Left = 609
  Top = 215
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1580#1575#1576#1580#1575#1610#1610' '#1587#1608#1575#1604#1575#1578
  ClientHeight = 530
  ClientWidth = 324
  Color = 15656678
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 324
    Height = 41
    Align = alTop
    Color = 15656678
    TabOrder = 0
    DesignSize = (
      324
      41)
    object xpBitBtn1: TxpBitBtn
      Left = 10
      Top = 6
      Width = 101
      Height = 27
      startColor = 16645629
      EndColor = 14666957
      Caption = #1575#1606#1578#1582#1575#1576' '#1601#1575#1610#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 0
      TabStop = True
      OnClick = xpBitBtn1Click
    end
  end
  object ExamGrid: TYDBGrid
    Left = 0
    Top = 41
    Width = 324
    Height = 489
    Cursor = crHandPoint
    Align = alClient
    Color = 16770790
    DataSource = dViewExamEqualQuestion
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    YeganehColor = True
    YeganehFinish = False
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = False
    PrintTitle = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1705#1604#1610' '#1570#1586#1605#1608#1606' '#1607#1575
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    FooterFields = 'Count'
  end
  object OpenDialog1: TOpenDialog
    Filter = #1601#1575#1610#1604' '#1575#1705#1587#1604'|*.xls;*.xlsx'
    Left = 44
    Top = 272
  end
  object qExcel: TADOQuery
    AutoCalcFields = False
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Documents and S' +
      'ettings\D06\My Documents\ExamEqualQuestion.xls;Extended Properti' +
      'es="Excel 12.0 Xml;HDR=YES;IMEX=1";'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from [Sheet1$]')
    Left = 136
    Top = 112
  end
  object spViewExamEqualQuestion: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'ViewExamEqualQuestion'
    Parameters = <>
    Left = 216
    Top = 184
  end
  object dViewExamEqualQuestion: TDataSource
    DataSet = spViewExamEqualQuestion
    Left = 184
    Top = 56
  end
end
