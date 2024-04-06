object FInputPass: TFInputPass
  Left = 603
  Top = 128
  ActiveControl = MaskEdit1
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1585#1605#1586' '#1593#1576#1608#1585
  ClientHeight = 93
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 93
    Align = alClient
    TabOrder = 0
    DesignSize = (
      346
      93)
    object Label1: TLabel
      Left = 181
      Top = 11
      Width = 147
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1604#1591#1601#1575' '#1585#1605#1586' '#1705#1575#1585#1576#1585#1610' '#1582#1608#1583' '#1585#1575' '#1608#1575#1585#1583' '#1705#1606#1610#1583':'
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 29
      Width = 329
      Height = 21
      Anchors = [akTop, akRight]
      PasswordChar = '*'
      TabOrder = 0
      OnKeyDown = MaskEdit1KeyDown
    end
    object BtnOK: TButton
      Left = 89
      Top = 58
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      OnClick = BtnOKClick
    end
    object BtnCancel: TButton
      Left = 9
      Top = 58
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 2
      OnClick = BtnCancelClick
    end
  end
end
