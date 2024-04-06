object FInputUserPass: TFInputUserPass
  Left = 697
  Top = 128
  ActiveControl = MaskEdit1
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610' '#1608' '#1585#1605#1586' '#1593#1576#1608#1585' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 156
  ClientWidth = 284
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
    Width = 284
    Height = 156
    Align = alClient
    TabOrder = 0
    DesignSize = (
      284
      156)
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 258
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1604#1591#1601#1575' '#1606#1575#1605' '#1705#1575#1585#1576#1585#1610' '#1608' '#1585#1605#1586' '#1593#1576#1608#1585' '#1576#1585#1606#1575#1605#1607' '#1576#1575#1610#1711#1575#1606#1610' '#1582#1608#1583' '#1585#1575' '#1608#1575#1585#1583' '#1705#1606#1610#1583':'
    end
    object Label2: TLabel
      Left = 210
      Top = 52
      Width = 53
      Height = 13
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610' :'
    end
    object Label3: TLabel
      Left = 211
      Top = 89
      Width = 52
      Height = 13
      Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585' :'
    end
    object MaskEdit1: TMaskEdit
      Left = 24
      Top = 86
      Width = 180
      Height = 21
      Anchors = [akTop, akRight]
      PasswordChar = '*'
      TabOrder = 0
      OnKeyDown = MaskEdit1KeyDown
    end
    object BtnOK: TButton
      Left = 104
      Top = 120
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      OnClick = BtnOKClick
    end
    object BtnCancel: TButton
      Left = 24
      Top = 120
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 2
      OnClick = BtnCancelClick
    end
    object edUsername: TEdit
      Left = 24
      Top = 48
      Width = 180
      Height = 21
      TabOrder = 3
    end
  end
end
