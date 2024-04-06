object PDF_TO_TXT_FRM: TPDF_TO_TXT_FRM
  Left = 533
  Top = 354
  BorderStyle = bsDialog
  ClientHeight = 70
  ClientWidth = 164
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PDF_ADRS: TLabel
    Left = 660
    Top = 9
    Width = 473
    Height = 13
    AutoSize = False
    Caption = 'PDF_ADRS'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 148
    Height = 13
    Caption = #1593#1605#1604#1610#1575#1578' '#1576#1575' '#1605#1608#1601#1602#1610#1578' '#1576#1607' '#1575#1578#1605#1575#1605' '#1585#1587#1610#1583
  end
  object Memo1: TMemo
    Left = 662
    Top = 33
    Width = 473
    Height = 217
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 46
    Top = 33
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583' '#1608' '#1579#1576#1578
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object PDFDoc: TgtPDFDocument
    About = 'Gnostice PDFtoolkit (www.gnostice.com)'
    Version = '5.0.0.297'
    OpenAfterSave = False
    MergeOptions = []
    EMailAfterSave = False
    ShowSetupDialog = False
    Left = 720
    Top = 72
  end
end
