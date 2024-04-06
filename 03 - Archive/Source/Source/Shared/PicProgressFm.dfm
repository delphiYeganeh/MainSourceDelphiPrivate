inherited FmPicProgress: TFmPicProgress
  Left = 653
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1575#1589#1604#1575#1581' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585
  ClientHeight = 248
  ClientWidth = 292
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 292
    Height = 207
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 290
      Height = 205
      ActivePage = TShPicResize
      Align = alClient
      TabOrder = 0
      object TShPicResize: TTabSheet
        Caption = #1578#1593#1610#1610#1606' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585
        DesignSize = (
          282
          177)
        object Label5: TLabel
          Left = 85
          Top = 126
          Width = 187
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '2 * 3 : '#1610#1593#1606#1610' '#1606#1587#1576#1578' '#1593#1585#1590' '#1576#1607' '#1575#1585#1578#1601#1575#1593' '#1578#1589#1608#1610#1585
        end
        object RGPicResize: TRadioGroup
          Left = 8
          Top = 9
          Width = 268
          Height = 114
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1610#1610#1606' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585'   ('#1593#1585#1590' '#1608' '#1575#1585#1578#1601#1575#1593' )'
          Columns = 3
          ItemIndex = 8
          Items.Strings = (
            #13'A4'
            'A3'
            'A5'
            '1 * 1'
            '3 * 2'
            '2 * 3'
            #1583#1608'  '#1576#1585#1575#1576#1585
            #1606#1589#1601
            #1575#1576#1593#1575#1583' '#1575#1608#1604#1610#1607)
          TabOrder = 0
          OnClick = RGPicResizeClick
        end
        object ChBoAllPic: TCheckBox
          Left = 16
          Top = 152
          Width = 257
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1575#1576#1593#1575#1583' '#1578#1605#1575#1605#1610' '#1578#1589#1575#1608#1610#1585' '#1576#1607' '#1575#1576#1593#1575#1583' A4 '#1578#1594#1610#1610#1585' '#1608' '#1584#1582#1610#1585#1607' '#1588#1608#1606#1583
          TabOrder = 1
          OnClick = ChBoAllPicClick
        end
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 207
    Width = 292
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      292
      41)
    object BBOK: TBitBtn
      Left = 204
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = BBOKClick
    end
    object BBCancel: TBitBtn
      Left = 124
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 1
      OnClick = BBCancelClick
    end
  end
  inherited DSForm: TDataSource
    Left = 64
    Top = 88
  end
  inherited ActionList: TActionList
    Left = 24
    Top = 72
  end
end
