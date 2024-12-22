inherited BackupRestore: TBackupRestore
  Left = 301
  Top = 277
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1607#1610#1607' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606
  ClientHeight = 138
  ClientWidth = 493
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 97
    Width = 493
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      493
      41)
    object BitBtn1: TBitBtn
      Left = 201
      Top = 6
      Width = 82
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      Default = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D002000000000000000000000000000000000000008080008080
        0080800080808000008000000080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800080000000
        8080008080008080008080008080008080008080008080008080008080008080
        8000000080000080000080000080008000000080800080800080800080800080
        8000808000808000808000808080000000800000800000800000800000800000
        8000800000008080008080008080008080008080008080008080800000008000
        00800000800000FF000080000080000080000080008000000080800080800080
        8000808000808000808000800000800000800000FF0000808000808000800000
        800000800080000000808000808000808000808000808000808000FF00008000
        00FF0000808000808000808000FF000080000080000080008000000080800080
        8000808000808000808000808000FF0000808000808000808000808000808000
        FF00008000008000008000800000008080008080008080008080008080008080
        00808000808000808000808000808000808000FF000080000080000080008000
        0000808000808000808000808000808000808000808000808000808000808000
        808000808000FF00008000008000008000800000008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000800080000000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        00808000808000808000808000808000808000808000808000808000808000FF
        0000800000800080000000808000808000808000808000808000808000808000
        808000808000808000808000808000808000FF00008000008000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000FF00008080}
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 493
    Height = 97
    Align = alClient
    TabOrder = 1
    DesignSize = (
      493
      97)
    object Lpath: TLabel
      Left = 369
      Top = 21
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
    end
    object SpeedButton1: TSpeedButton
      Left = 342
      Top = 16
      Width = 23
      Height = 23
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object StaticText1: TLabel
      Left = 135
      Top = 48
      Width = 189
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1610#1606' '#1593#1605#1604' '#1585#1575' '#1585#1608#1610' '#1705#1575#1605#1662#1610#1608#1578#1585' '#1587#1585#1608#1585' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583
    end
    object EPath: TEdit
      Left = 19
      Top = 18
      Width = 321
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      OnChange = EPathChange
      OnEnter = EPathEnter
      OnExit = EPathExit
    end
    object ProgressBar1: TProgressBar
      Left = 18
      Top = 70
      Width = 455
      Height = 18
      TabOrder = 1
    end
  end
  inherited DSForm: TDataSource
    Left = 80
    Top = 88
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 80
  end
  inherited xpWindow1: TxpWindow
    Left = 440
    Top = 88
  end
  object ActionManager: TActionManager
    Images = dm.LetterImages
    Left = 320
    Top = 88
    StyleName = 'XP Style'
    object Aclose: TAction
      Caption = 'Aclose'
      ShortCut = 27
      OnExecute = AcloseExecute
    end
  end
  object OpenDialog: TOpenDialog
    FileName = '*.yeg'
    Filter = 'Yeganeh backup files|*.yeg'
    FilterIndex = 0
    Left = 384
    Top = 88
  end
end
