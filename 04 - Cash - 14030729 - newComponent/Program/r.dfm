object Form2: TForm2
  Left = 192
  Top = 107
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1576#1575#1586#1711#1585#1583#1575#1606#1583#1606' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606' -  '#1588#1585#1705#1578' '#1610#1711#1575#1606#1607
  ClientHeight = 170
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 427
    Top = 34
    Width = 59
    Height = 13
    Caption = #1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
  end
  object Label3: TLabel
    Left = 431
    Top = 60
    Width = 60
    Height = 13
    Caption = #1605#1587#1610#1585' '#1576#1575#1586#1610#1575#1576#1610
  end
  object SpeedButton1: TSpeedButton
    Left = 2
    Top = 32
    Width = 23
    Height = 20
    Caption = '...'
  end
  object SpeedButton3: TSpeedButton
    Left = 2
    Top = 56
    Width = 23
    Height = 22
    Caption = '...'
  end
  object Label4: TLabel
    Left = 25
    Top = 125
    Width = 478
    Height = 26
    Caption = 
      #1576#1575' '#1575#1606#1580#1575#1605' '#1575#1610#1606' '#1593#1605#1604#1610#1575#1578' '#1705#1604#1610#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1593#1604#1610' '#1588#1605#1575' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575 +
      #1606#1610' '#1705#1607' '#1605#1593#1585#1601#1610' '#1605#1610' '#1705#1606#1610#1583' '#1580#1575#1610#1711#1586#1610#1606' '#1605#1610' '#1588#1608#1583' '#1604#1591#1601#1575' '#1583#1602#1578' '#1705#1606#1610#1583'.'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object BackupPath: TEdit
    Left = 26
    Top = 31
    Width = 398
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
  end
  object RestorePath: TEdit
    Left = 26
    Top = 56
    Width = 398
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 183
    Top = 83
    Width = 145
    Height = 33
    Caption = #1576#1575#1586#1610#1575#1576#1610' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object ProgressBar: TProgressBar
    Left = 0
    Top = 154
    Width = 518
    Height = 16
    Align = alBottom
    TabOrder = 3
  end
  object OpenDialog: TOpenDialog
    Left = 48
    Top = 72
  end
  object ADOConnection: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=master'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 8
  end
  object ADOCommand: TADOCommand
    CommandTimeout = 3000
    Connection = ADOConnection
    Parameters = <>
    Left = 160
    Top = 16
  end
  object dbinfo: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 240
    Top = 24
  end
end
