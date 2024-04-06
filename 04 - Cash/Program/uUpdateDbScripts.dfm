object fmUpdateDbScripts: TfmUpdateDbScripts
  Left = 216
  Top = 212
  Width = 1288
  Height = 585
  BiDiMode = bdRightToLeft
  Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1705' '#1583#1575#1583#1607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1272
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1272
      41)
    object lblDbVer: TLabel
      Left = 32
      Top = 13
      Width = 70
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblDbVer'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblDelphiVer: TLabel
      Left = 1115
      Top = 13
      Width = 70
      Height = 20
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'lblDelphiVer'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 1187
      Top = 13
      Width = 70
      Height = 20
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1608#1585#1688#1606' '#1576#1585#1606#1575#1605#1607' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 103
      Top = 13
      Width = 111
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = #1608#1585#1688#1606' '#1576#1575#1606#1705' '#1583#1575#1583#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 505
    Width = 1272
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnUpdate: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Update'
      TabOrder = 0
      OnClick = btnUpdateClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1272
    Height = 464
    Align = alClient
    TabOrder = 2
    DesignSize = (
      1272
      464)
    object memScripts: TMemo
      Left = 8
      Top = 8
      Width = 806
      Height = 449
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
    end
    object memError: TMemo
      Left = 817
      Top = 8
      Width = 447
      Height = 449
      Anchors = [akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
    end
  end
  object qryRunScript: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 96
    Top = 337
  end
  object cmdRunScript: TADOCommand
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 104
    Top = 233
  end
end
