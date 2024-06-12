inherited frmContractType: TfrmContractType
  Left = 582
  Top = 228
  Width = 385
  Height = 454
  Caption = ''
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 369
    Height = 415
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 369
    Height = 415
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 223
      Width = 367
      Height = 7
      Cursor = crVSplit
      Align = alTop
    end
    object Panel1: TPanel
      Left = 1
      Top = 373
      Width = 367
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        367
        41)
      object BitBtn2: TBitBtn
        Left = 211
        Top = 7
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 0
        Kind = bkCancel
      end
      object BitBtn1: TBitBtn
        Left = 290
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
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 367
      Height = 222
      Align = alTop
      Caption = #1575#1606#1608#1575#1593' '#1602#1585#1575#1585' '#1583#1575#1583
      TabOrder = 1
      object dbgContractType: TYDBGrid
        Left = 2
        Top = 15
        Width = 363
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
        Width = 363
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
    object dbgSub: TYDBGrid
      Left = 1
      Top = 230
      Width = 367
      Height = 143
      Cursor = crHandPoint
      Align = alClient
      DataSource = dsSub
      TabOrder = 2
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
