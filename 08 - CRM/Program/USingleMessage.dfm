inherited FSingleMessage: TFSingleMessage
  Left = 516
  Top = 499
  Width = 546
  Height = 219
  Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605' '
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 530
    Height = 180
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 530
    Height = 180
    Align = alClient
    TabOrder = 0
    OnCanResize = pnlMainCanResize
    DesignSize = (
      530
      180)
    object Label1: TLabel
      Left = 469
      Top = 16
      Width = 38
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606' '#1662#1610#1575#1605
    end
    object btnMessage: TSpeedButton
      Left = 11
      Top = 130
      Width = 92
      Height = 36
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000EF8325FFEF8325FF7741127F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000EF8325FFEF8325FFEF8325FF7741127F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000EF8325FFEF8325FFEF8325FFEF8325FF7741127F0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000EF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF83
        25FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFF7E56167F00000000EF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF83
        25FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFF7E56167FEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF83
        25FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFF69829FFEF8325FFEF8325FFEF8325FFEF8325FFEF83
        25FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFFF4E4A2FFF4E4A2FFFCAD2DFFFCAD2DFFF4E4A2FFF4E4A2FFFCAD
        2DFFFCAD2DFFFCAD2DFFEF8325FFEF8325FFEF8325FFEF8325FFFCAD2DFFFCAD
        2DFFFCAD2DFFF4E4A2FFF4E4A2FFFCAD2DFFFCAD2DFFF4E4A2FFF4E4A2FFFCAD
        2DFFFCAD2DFFFCAD2DFF00000000000000000000000000000000FCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFF00000000000000000000000000000000FCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFF00000000000000000000000000000000FCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD2DFFFCAD
        2DFFFCAD2DFFFCAD2DFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      OnClick = btnMessageClick
    end
    object phonenumber: TLabel
      Left = 199
      Top = 14
      Width = 4
      Height = 14
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 226
      Top = 14
      Width = 94
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1605#1588#1578#1585#1610' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Etebar: TLabel
      Left = 388
      Top = 102
      Width = 4
      Height = 14
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtMessage: TEdit
      Left = 10
      Top = 35
      Width = 500
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 113
      Top = 125
      Width = 398
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      Caption = #1606#1608#1593' '#1662#1610#1575#1605' '#1575#1585#1587#1575#1604#1610
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1662#1610#1575#1605#1705)
      TabOrder = 1
    end
  end
end