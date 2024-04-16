inherited frmContractType: TfrmContractType
  Left = 582
  Top = 228
  Width = 482
  Height = 529
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 222
    Width = 474
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 474
    Height = 222
    Align = alTop
    Caption = #1575#1606#1608#1575#1593' '#1602#1585#1575#1585' '#1583#1575#1583
    TabOrder = 0
    object dbgContractType: TYDBGrid
      Left = 2
      Top = 15
      Width = 470
      Height = 175
      Cursor = crHandPoint
      Align = alClient
      DataSource = DsContractType
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = GotoNextGrid
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
          Title.Caption = #1705#1583' '#1602#1585#1575#1585#1583#1575#1583
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = #1578#1610#1578#1585' '#1602#1585#1575#1585#1583#1575#1583
          Width = 231
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 190
      Width = 470
      Height = 30
      Align = alBottom
      TabOrder = 1
      object Button2: TButton
        Left = 24
        Top = 3
        Width = 23
        Height = 25
        Caption = '-'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
  object dbgSub: TYDBGrid [2]
    Left = 0
    Top = 225
    Width = 474
    Height = 229
    Cursor = crHandPoint
    Align = alClient
    DataSource = dsSub
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = GotoNextGrid
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
        Title.Caption = #1705#1583' '#1586#1610#1585' '#1602#1585#1575#1585' '#1583#1575#1583
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = #1578#1610#1578#1585' '#1586#1610#1585' '#1602#1585#1575#1585#1583#1575#1583
        Width = 231
        Visible = True
      end>
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 454
    Width = 474
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      474
      41)
    object BitBtn2: TBitBtn
      Left = 312
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 0
      Kind = bkCancel
    end
    object BitBtn1: TBitBtn
      Left = 391
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      Kind = bkOK
    end
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 27
      Height = 25
      Caption = '-'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  inherited DSForm: TDataSource
    Left = 32
    Top = 80
  end
  object qryContractType: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = qryContractTypeAfterScroll
    Parameters = <>
    Left = 144
    Top = 88
  end
  object DsContractType: TDataSource
    DataSet = qryContractType
    Left = 264
    Top = 80
  end
  object qrySub: TADOQuery
    Connection = Dm.YeganehConnection
    BeforePost = qrySubBeforePost
    Parameters = <>
    Left = 144
    Top = 144
  end
  object dsSub: TDataSource
    DataSet = qrySub
    Left = 248
    Top = 144
  end
end
