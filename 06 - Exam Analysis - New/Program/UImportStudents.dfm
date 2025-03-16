inherited FrImportStudents: TFrImportStudents
  Left = 482
  Top = 304
  BorderStyle = bsDialog
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1587#1582#1606#1575#1605#1607' '#1607#1575
  ClientHeight = 150
  ClientWidth = 548
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 449
    Top = 5
    Width = 77
    Height = 13
    Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1605#1578#1606#1610
  end
  object Label3: TLabel [1]
    Left = 428
    Top = 63
    Width = 87
    Height = 13
    Caption = #1580#1583#1575' '#1705#1606#1606#1583#1607' '#1587#1578#1608#1606' '#1607#1575
  end
  object SpeedButton1: TxpBitBtn [2]
    Left = 80
    Top = 3
    Width = 23
    Height = 22
    startColor = 16645629
    EndColor = 14666957
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Gradient = True
    TabOrder = 6
    TabStop = True
    OnClick = SpeedButton1Click
  end
  object Button2: TxpBitBtn [3]
    Left = 16
    Top = 88
    Width = 97
    Height = 36
    startColor = 16645629
    EndColor = 14666957
    Caption = #1582#1585#1608#1580
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 72
    Gradient = True
    TabOrder = 0
    TabStop = True
    OnClick = Button2Click
  end
  object EdPath: TEdit [4]
    Left = 112
    Top = 3
    Width = 329
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
  end
  object BitBtn1: TxpBitBtn [5]
    Left = 144
    Top = 88
    Width = 209
    Height = 36
    startColor = 16645629
    EndColor = 14666957
    Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 28
    Gradient = True
    TabOrder = 2
    TabStop = True
    OnClick = BitBtn1Click
  end
  object ProgressBar: TProgressBar [6]
    Left = 0
    Top = 134
    Width = 548
    Height = 16
    Align = alBottom
    Max = 1000000
    TabOrder = 3
  end
  object Ch_FirstLine: TCheckBox [7]
    Left = 248
    Top = 35
    Width = 273
    Height = 17
    Caption = #1575#1608#1604#1610#1606' '#1582#1591' '#1601#1575#1610#1604' '#1605#1578#1606#1610' '#1604#1581#1575#1592' '#1606#1588#1608#1583' ( '#1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1607#1575')'
    TabOrder = 4
  end
  object DelimeterComo: TComboBox [8]
    Left = 360
    Top = 59
    Width = 57
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = ','
    Items.Strings = (
      ','
      ';'
      'Tab')
  end
  inherited ActionList: TActionList
    Left = 135
    Top = 160
  end
  inherited xpWindow1: TxpWindow
    Left = 224
    Top = 35
  end
  object OpenDialog: TOpenDialog
    Left = 24
    Top = 8
  end
end
