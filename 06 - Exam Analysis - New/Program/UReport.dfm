object FReport: TFReport
  Left = 436
  Top = 161
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1607#1575
  ClientHeight = 292
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 292
    Align = alClient
    Color = 15656678
    TabOrder = 0
    DesignSize = (
      454
      292)
    object SpeedButton1: TSpeedButton
      Left = 7
      Top = 234
      Width = 23
      Height = 22
      Anchors = [akLeft, akBottom]
      Caption = '...'
    end
    object Label1: TLabel
      Left = 355
      Top = 237
      Width = 82
      Height = 13
      Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1711#1586#1575#1585#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 258
      Width = 452
      Height = 33
      DataSource = dReports
      Align = alBottom
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 452
      Height = 230
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dReports
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Edit1: TEdit
      Left = 35
      Top = 234
      Width = 318
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 2
    end
  end
  object quReports: TADOQuery
    Connection = Dm.YeganehConnection
    BeforePost = quReportsBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Reports')
    Left = 152
    Top = 32
    object quReportsreportID: TAutoIncField
      FieldName = 'reportID'
      ReadOnly = True
    end
    object quReportsreportName: TWideStringField
      FieldName = 'reportName'
      Size = 50
    end
    object quReportsfirstLeft: TFloatField
      FieldName = 'firstLeft'
    end
    object quReportsfirstTop: TFloatField
      FieldName = 'firstTop'
    end
    object quReportswidth: TFloatField
      FieldName = 'width'
    end
    object quReportsheight: TFloatField
      FieldName = 'height'
    end
    object quReportswidthDistance: TFloatField
      FieldName = 'widthDistance'
    end
    object quReportsheighDistance: TFloatField
      FieldName = 'heighDistance'
    end
    object quReportsreportFile: TBlobField
      FieldName = 'reportFile'
    end
  end
  object dReports: TDataSource
    DataSet = quReports
    Left = 88
    Top = 32
  end
end
