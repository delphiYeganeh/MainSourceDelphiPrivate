object FmReceipt: TFmReceipt
  Left = 639
  Top = 151
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1670#1575#1662' '#1585#1587#1610#1583' '#1576#1585#1575#1610' '#1570#1608#1585#1606#1583#1607' '#1606#1575#1605#1607
  ClientHeight = 317
  ClientWidth = 592
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 32
    Width = 592
    Height = 285
    Align = alClient
    TabOrder = 0
    DesignSize = (
      592
      285)
    object Label1: TLabel
      Left = 453
      Top = 197
      Width = 122
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1589#1575#1583#1585' '#1705#1606#1606#1583#1607' '#1585#1587#1610#1583' :'
    end
    object Label2: TLabel
      Left = 522
      Top = 4
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606' '#1585#1587#1610#1583' :'
    end
    object Label3: TLabel
      Left = 453
      Top = 223
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1585#1587#1578#1606#1583#1607' :'
    end
    object SpeedButton2: TSpeedButton
      Left = 172
      Top = 220
      Width = 21
      Height = 20
      Caption = '...'
    end
    object Label4: TLabel
      Left = 453
      Top = 251
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' :'
    end
    object DBEdit1: TDBEdit
      Left = 195
      Top = 195
      Width = 253
      Height = 19
      Anchors = [akTop, akRight]
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBRichEdit1: TDBRichEdit
      Left = 16
      Top = 20
      Width = 561
      Height = 169
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 195
      Top = 221
      Width = 212
      Height = 19
      Anchors = [akTop, akRight]
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 249
      Width = 433
      Height = 21
      Anchors = [akTop, akRight]
      Ctl3D = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object MaskEdit2: TMaskEdit
      Left = 411
      Top = 219
      Width = 38
      Height = 21
      TabOrder = 4
      Text = 'MaskEdit1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 32
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      592
      32)
    object ActionToolBar1: TActionToolBar
      Left = 344
      Top = 2
      Width = 241
      Height = 28
      ActionManager = ActionManager
      Align = alNone
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      ParentBiDiMode = False
      Spacing = 0
    end
    object BitBtn1: TBitBtn
      Left = 12
      Top = 4
      Width = 75
      Height = 25
      Caption = #1670#1575#1662
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 262
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = DataSetPost
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            Caption = #1604#1594#1608' C&trl+Z'
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Caption = #1606#1575#1605#1607
          end
          item
            Caption = #1587#1610#1587#1578#1605
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
        ActionBar = ActionToolBar1
      end>
    Images = dm.LetterImages
    Left = 64
    Top = 115
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 14
      ShortCut = 45
    end
    object DataSetEdit: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 9
      ShortCut = 115
    end
    object DataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 32
      ShortCut = 113
    end
    object DataSetCancel: TDataSetCancel
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 6
      ShortCut = 32776
    end
  end
end
