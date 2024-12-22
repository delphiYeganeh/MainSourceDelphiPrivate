inherited FArchiveLetterImage: TFArchiveLetterImage
  Left = 293
  Top = 156
  Width = 476
  Height = 270
  BorderIcons = [biHelp]
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 1
    Width = 468
    Height = 205
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Delete'
      ImageIndex = 1
      object BitBtn2: TBitBtn
        Left = 163
        Top = 66
        Width = 118
        Height = 34
        Caption = #1581#1584#1601' '#1606#1575#1605#1607' '#1607#1575' '#1575#1586' SQL'
        Enabled = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Archive'
      ImageIndex = 2
      object Label1: TLabel
        Left = 297
        Top = 20
        Width = 158
        Height = 13
        Caption = #1576#1575#1610#1711#1575#1606#1610'  '#1578#1589#1575#1608#1610#1585' '#1575#1586'  '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' :'
      end
      object Label2: TLabel
        Left = 135
        Top = 23
        Width = 88
        Height = 13
        Caption = #1578#1575'  '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' :'
      end
      object Label3: TLabel
        Left = 422
        Top = 53
        Width = 27
        Height = 13
        Caption = #1605#1587#1610#1585
      end
      object SpeedButton1: TSpeedButton
        Left = 61
        Top = 49
        Width = 23
        Height = 22
        Caption = '...'
      end
      object Edit1: TEdit
        Left = 229
        Top = 18
        Width = 66
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object Edit2: TEdit
        Left = 62
        Top = 18
        Width = 66
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object Edit3: TEdit
        Left = 90
        Top = 50
        Width = 325
        Height = 21
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 170
        Top = 90
        Width = 118
        Height = 34
        Caption = #1576#1575#1610#1711#1575#1606#1610' '#1578#1589#1575#1608#1610#1585' '#1606#1575#1605#1607' '#1607#1575
        TabOrder = 3
      end
    end
  end
  object BitBtn3: TBitBtn [1]
    Left = 21
    Top = 211
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 1
  end
  inherited DSForm: TDataSource
    Left = 549
    Top = 26
  end
  inherited ActionList: TActionList
    Left = 281
    Top = 151
  end
end
