object FrmSearchDataSet: TFrmSearchDataSet
  Left = 468
  Top = 401
  BiDiMode = bdRightToLeft
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 288
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      501
      41)
    object Label1: TLabel
      Left = 336
      Top = 12
      Width = 153
      Height = 16
      Caption = #1580#1587#1578#1580#1608' '#1576#1585#1575#1587#1575#1587' '#1705#1583' / '#1593#1606#1608#1575#1606
    end
    object edtSearch: TEdit
      Left = 98
      Top = 8
      Width = 227
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtSearchChange
    end
    object btnSearch: TxpBitBtn
      Left = 8
      Top = 7
      Width = 80
      Height = 26
      startColor = 16645629
      EndColor = 14666957
      Caption = #1580#1587#1578#1580#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Gradient = True
      Visible = False
      Anchors = [akLeft, akBottom]
      TabOrder = 1
      TabStop = True
      OnClick = btnSearchClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 228
    Width = 501
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      501
      41)
    object btnSelect: TxpBitBtn
      Left = 415
      Top = 7
      Width = 80
      Height = 26
      startColor = 16645629
      EndColor = 14666957
      Caption = #1578#1575#1610#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210688
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Gradient = True
      Anchors = [akLeft, akBottom]
      TabOrder = 0
      TabStop = True
      OnClick = btnSelectClick
    end
    object btnCancel: TxpBitBtn
      Left = 330
      Top = 7
      Width = 80
      Height = 26
      startColor = 16645629
      EndColor = 14666957
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Gradient = True
      Anchors = [akLeft, akBottom]
      TabOrder = 1
      TabStop = True
      OnClick = btnCancelClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 269
    Width = 501
    Height = 19
    Panels = <
      item
        Width = 100
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 501
    Height = 187
    Align = alClient
    TabOrder = 3
    object ExamGrid: TYDBGrid
      Left = 1
      Top = 1
      Width = 499
      Height = 185
      Cursor = crHandPoint
      Align = alClient
      Color = clScrollBar
      DataSource = DsSearch
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = ExamGridDblClick
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
      Columns = <
        item
          Expanded = False
          FieldName = 'Code'
          Title.Caption = #1705#1583
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Title'
          Title.Caption = #1593#1606#1608#1575#1606
          Width = 331
          Visible = True
        end>
    end
  end
  object QSearch: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Course')
    Left = 155
    Top = 148
  end
  object DsSearch: TDataSource
    DataSet = QSearch
    Left = 135
    Top = 114
  end
  object ActionList1: TActionList
    Left = 276
    Top = 123
    object ActionCancel: TAction
      Caption = #1575#1606#1589#1585#1575#1601
      ShortCut = 27
      OnExecute = btnCancelClick
    end
  end
end
