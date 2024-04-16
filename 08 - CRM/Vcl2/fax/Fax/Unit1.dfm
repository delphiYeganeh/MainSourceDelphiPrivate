object Form1: TForm1
  Left = 402
  Top = 77
  Caption = 'Form1'
  ClientHeight = 408
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 19
    Height = 13
    Caption = 'Line'
  end
  object Label2: TLabel
    Left = 8
    Top = 378
    Width = 83
    Height = 13
    Caption = 'Rate Negotiated:'
  end
  object Label3: TLabel
    Left = 8
    Top = 65
    Width = 37
    Height = 13
    Caption = 'Number'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 36
    Width = 249
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'Combobox1'
    OnChange = ComboBox1Change
  end
  object Memo1: TMemo
    Left = 8
    Top = 88
    Width = 249
    Height = 274
    BiDiMode = bdRightToLeft
    Lines.Strings = (
      'Memo1')
    ParentBiDiMode = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 182
    Top = 62
    Width = 75
    Height = 21
    Caption = 'Send Fax'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 51
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object StaticText1: TStaticText
    Left = 96
    Top = 376
    Width = 59
    Height = 17
    BevelInner = bvNone
    BevelKind = bkSoft
    Caption = 'StaticText1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object KDPhone1: KDPhone
    Version = '3.6 (Build 71)'
    AutoDisconnect = True
    MediaMode = mmFax
    LinePrivilege = lpOwner
    ExtDevHandSet.MicGain = 10
    ExtDevHandSet.SpeakerVolume = 10
    ExtDevAux.MicGain = 10
    ExtDevAux.SpeakerVolume = 10
    ModemSpeaker.Volume = svDefault
    ModemSpeaker.Mode = smDefault
    ShowModemIcon = False
    WaitForDialTone = False
    TimeOut = 10000
    InitialRingNumber = 1
    AddressID = 0
    OnCallState = KDPhone1CallState
    Left = 200
    Top = 368
  end
  object KDFax1: KDFax
    Version = '3.6 (Build 71)'
    TIFFSaveOptions.Compression = ftcMR
    MaxSpeedLimit = lmtUnlimited
    LinkedTo = KDPhone1
    CoverPageEnabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    OnFaxState = KDFax1FaxState
    Left = 232
    Top = 368
  end
end
