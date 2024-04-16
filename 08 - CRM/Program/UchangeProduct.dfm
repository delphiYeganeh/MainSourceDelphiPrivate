object ChangeProduct: TChangeProduct
  Left = 335
  Top = 109
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1601#1585#1605' '#1575#1606#1578#1582#1575#1576' '#1605#1581#1589#1608#1604
  ClientHeight = 102
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 61
    Width = 377
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 61
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 299
      Top = 19
      Width = 66
      Height = 13
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1581#1589#1608#1604
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 16
      Width = 265
      Height = 21
      BiDiMode = bdLeftToRight
      KeyField = 'ProductID'
      ListField = 'ProductTitle'
      ListSource = Dm.DProduct
      ParentBiDiMode = False
      TabOrder = 0
    end
  end
end
