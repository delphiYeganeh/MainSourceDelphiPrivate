object DBGCustomizeForm: TDBGCustomizeForm
  Left = 556
  Top = 96
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '
  ClientHeight = 502
  ClientWidth = 519
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
    519
    502)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 459
    Width = 519
    Height = 43
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      519
      43)
    object BitBtn2: TBitBtn
      Left = 353
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 0
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object BitBtn1: TBitBtn
      Left = 433
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 459
    Align = alClient
    TabOrder = 2
    DesignSize = (
      519
      459)
    object GroupBox4: TGroupBox
      Left = 9
      Top = 246
      Width = 502
      Height = 203
      Anchors = [akTop, akRight]
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1670#1575#1662
      TabOrder = 0
      DesignSize = (
        502
        203)
      object Label1: TLabel
        Left = 396
        Top = 23
        Width = 98
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1583#1585' '#1711#1586#1575#1585#1588' '#1670#1575#1662#1610
      end
      object GroupBox3: TGroupBox
        Left = 96
        Top = 130
        Width = 254
        Height = 62
        Anchors = [akTop, akRight]
        Caption = #1601#1608#1606#1578' '#1607#1575#1610' '#1604#1610#1587#1578' '#1583#1585' '#1711#1586#1575#1585#1588' '#1670#1575#1662#1610
        TabOrder = 0
        DesignSize = (
          254
          62)
        object ColumnF: TBitBtn
          Left = 11
          Top = 24
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1587#1578#1608#1606' '#1607#1575
          TabOrder = 0
          OnClick = ColumnFClick
        end
        object HeaderF: TBitBtn
          Left = 89
          Top = 24
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1587#1585#1587#1578#1608#1606' '#1607#1575
          TabOrder = 1
          OnClick = HeaderFClick
        end
        object TitleF: TBitBtn
          Left = 168
          Top = 24
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606
          TabOrder = 2
          OnClick = TitleFClick
        end
      end
      object Oreintion: TRadioGroup
        Left = 96
        Top = 53
        Width = 254
        Height = 48
        Anchors = [akTop, akRight]
        Caption = #1580#1607#1578' '#1589#1601#1581#1607' A4'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Portrait'
          'Landscape')
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 361
        Top = 53
        Width = 133
        Height = 139
        Anchors = [akTop, akRight]
        Caption = #1601#1610#1604#1583#1607#1575#1610' '#1605#1608#1585#1583' '#1606#1610#1575#1586' '#1583#1585' '#1670#1575#1662
        TabOrder = 2
        DesignSize = (
          133
          139)
        object Label3: TLabel
          Left = 24
          Top = 45
          Width = 76
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        end
        object Label4: TLabel
          Left = 39
          Top = 22
          Width = 61
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607
        end
        object Label5: TLabel
          Left = 44
          Top = 69
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1585#1705#1608#1585#1583
        end
        object Label6: TLabel
          Left = 25
          Top = 92
          Width = 75
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1586#1605#1575#1606' '#1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        end
        object Label7: TLabel
          Left = 78
          Top = 116
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1585#1583#1610#1601
        end
        object PageNumber: TCheckBox
          Left = 104
          Top = 20
          Width = 17
          Height = 17
          Anchors = [akTop, akRight]
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object RecordNumber: TCheckBox
          Left = 104
          Top = 68
          Width = 17
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object ReportTime: TCheckBox
          Left = 106
          Top = 92
          Width = 15
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
        object ReportDate: TCheckBox
          Left = 104
          Top = 44
          Width = 17
          Height = 17
          Anchors = [akTop, akRight]
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object HasIndex: TCheckBox
          Left = 103
          Top = 116
          Width = 18
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 4
        end
      end
      object ETitle: TEdit
        Left = 96
        Top = 20
        Width = 293
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 3
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 8
    Width = 502
    Height = 233
    Anchors = [akTop, akRight]
    Caption = #1587#1578#1608#1606' '#1607#1575#1610' '#1575#1606#1578#1582#1575#1576#1610
    TabOrder = 0
    DesignSize = (
      502
      233)
    object ColumnList: TCheckListBox
      Left = 8
      Top = 23
      Width = 484
      Height = 199
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = 3
      ItemHeight = 13
      TabOrder = 0
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
