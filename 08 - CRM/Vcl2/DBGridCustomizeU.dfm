object DBGCustomizeForm: TDBGCustomizeForm
  Left = 193
  Top = 83
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '
  ClientHeight = 556
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  DesignSize = (
    742
    556)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 742
    Height = 400
    Align = alTop
    Caption = #1587#1578#1608#1606' '#1607#1575#1610' '#1575#1606#1578#1582#1575#1576#1610
    TabOrder = 0
    object ColumnList: TCheckListBox
      Left = 2
      Top = 15
      Width = 738
      Height = 383
      Align = alClient
      Columns = 4
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 527
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 528
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object Panel1: TPanel
    Left = 0
    Top = 433
    Width = 742
    Height = 42
    Align = alTop
    TabOrder = 3
    object Oreintion: TRadioGroup
      Left = 1
      Top = 1
      Width = 175
      Height = 40
      Align = alClient
      Caption = #1580#1607#1578' '#1589#1601#1581#1607' A4'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Portrait'
        'Landscape')
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 176
      Top = 1
      Width = 565
      Height = 40
      Align = alRight
      TabOrder = 1
      object Label3: TLabel
        Left = 347
        Top = 14
        Width = 76
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1578#1607#1610#1607' '#1711#1586#1575#1585#1588
      end
      object Label4: TLabel
        Left = 483
        Top = 14
        Width = 61
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607
      end
      object Label5: TLabel
        Left = 239
        Top = 14
        Width = 56
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1585#1705#1608#1585#1583
      end
      object Label6: TLabel
        Left = 100
        Top = 16
        Width = 75
        Height = 13
        Caption = #1586#1605#1575#1606' '#1578#1607#1610#1607' '#1711#1586#1575#1585#1588
      end
      object Label7: TLabel
        Left = 15
        Top = 13
        Width = 22
        Height = 13
        Caption = #1585#1583#1610#1601
      end
      object PageNumber: TCheckBox
        Left = 544
        Top = 12
        Width = 17
        Height = 17
        Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object RecordNumber: TCheckBox
        Left = 295
        Top = 12
        Width = 18
        Height = 17
        Caption = #1588#1605#1575#1585#1607' '#1585#1705#1608#1585#1583
        TabOrder = 1
      end
      object ReportTime: TCheckBox
        Left = 178
        Top = 14
        Width = 15
        Height = 17
        Caption = #1586#1605#1575#1606' '#1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        TabOrder = 2
      end
      object ReportDate: TCheckBox
        Left = 424
        Top = 12
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object HasIndex: TCheckBox
        Left = 39
        Top = 12
        Width = 18
        Height = 17
        TabOrder = 4
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 742
    Height = 33
    Align = alTop
    TabOrder = 4
    object Label1: TLabel
      Left = 637
      Top = 8
      Width = 98
      Height = 13
      Caption = #1593#1606#1608#1575#1606' '#1583#1585' '#1711#1586#1575#1585#1588' '#1670#1575#1662#1610
    end
    object ETitle: TEdit
      Left = 304
      Top = 6
      Width = 329
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 475
    Width = 742
    Height = 49
    Align = alTop
    Caption = #1601#1608#1606#1578' '#1607#1575#1610' '#1604#1610#1587#1578' '#1583#1585' '#1711#1586#1575#1585#1588' '#1670#1575#1662#1610
    TabOrder = 5
    object ColumnF: TBitBtn
      Left = 240
      Top = 16
      Width = 75
      Height = 25
      Caption = #1587#1578#1608#1606' '#1607#1575
      TabOrder = 0
      OnClick = ColumnFClick
    end
    object HeaderF: TBitBtn
      Left = 403
      Top = 16
      Width = 75
      Height = 25
      Caption = #1587#1585#1587#1578#1608#1606' '#1607#1575
      TabOrder = 1
      OnClick = HeaderFClick
    end
    object TitleF: TBitBtn
      Left = 536
      Top = 16
      Width = 75
      Height = 25
      Caption = #1593#1606#1608#1575#1606
      TabOrder = 2
      OnClick = TitleFClick
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 184
    Top = 97
  end
end
