object FMWaitPlease: TFMWaitPlease
  Left = 724
  Top = 287
  AutoSize = True
  BiDiMode = bdRightToLeft
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1604#1591#1601#1575' '#1603#1605#1610' '#1589#1576#1585' '#1603#1606#1610#1583
  ClientHeight = 152
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object EmailPanel: TPanel
    Left = 0
    Top = 59
    Width = 463
    Height = 93
    Align = alClient
    TabOrder = 0
    DesignSize = (
      463
      93)
    object Label2: TLabel
      Left = 368
      Top = 8
      Width = 75
      Height = 16
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1575#1610#1605#1610#1604'        '#1575#1586
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LableFrom: TLabel
      Left = 382
      Top = 8
      Width = 24
      Height = 16
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '1'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LableTo: TLabel
      Left = 330
      Top = 8
      Width = 26
      Height = 16
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '1'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 167
      Top = 68
      Width = 277
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1575#1585#1576#1585' '#1711#1585#1575#1605#1610' : '#1601#1602#1591' '#1575#1610#1605#1610#1604' '#1607#1575#1610' '#1580#1583#1610#1583' '#1608#1575#1585#1583' '#1587#1610#1587#1578#1605' '#1582#1608#1575#1607#1606#1583' '#1588#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 21
      Top = 35
      Width = 425
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 59
    Align = alTop
    TabOrder = 1
    DesignSize = (
      463
      59)
    object Label1: TLabel
      Left = 127
      Top = 17
      Width = 210
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #1604#1591#1601#1575' '#1603#1605#1610' '#1589#1576#1585' '#1603#1606#1610#1583' . . .'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer: TTimer
    Left = 56
    Top = 24
  end
end
