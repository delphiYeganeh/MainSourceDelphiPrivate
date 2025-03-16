inherited BackupRestore: TBackupRestore
  Left = 484
  Top = 275
  ActiveControl = EPath
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Yeganeh'
  ClientHeight = 110
  ClientWidth = 522
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Lpath: TLabel [0]
    Left = 431
    Top = 28
    Width = 89
    Height = 13
    Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
  end
  object SpeedButton1: TSpeedButton [1]
    Left = 8
    Top = 16
    Width = 25
    Height = 25
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object StaticText1: TLabel [2]
    Left = 276
    Top = 72
    Width = 189
    Height = 13
    Caption = #1575#1610#1606' '#1593#1605#1604' '#1585#1575' '#1585#1608#1610' '#1705#1575#1605#1662#1610#1608#1578#1585' '#1587#1585#1608#1585' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583
  end
  object EPath: TEdit [3]
    Left = 40
    Top = 18
    Width = 345
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentColor = True
    TabOrder = 0
    OnChange = EPathChange
  end
  object BitBtn1: TxpBitBtn [4]
    Left = 8
    Top = 56
    Width = 86
    Height = 29
    startColor = 16645629
    EndColor = 14666957
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 17
    Gradient = True
    TabOrder = 1
    TabStop = True
    OnClick = BitBtn1Click
  end
  object ProgressBar1: TProgressBar [5]
    Left = 0
    Top = 94
    Width = 522
    Height = 16
    Align = alBottom
    TabOrder = 2
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 248
    Top = 8
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
    Left = 120
    Top = 48
  end
  object DataSource1: TDataSource
    Left = 128
    Top = 32
  end
end
