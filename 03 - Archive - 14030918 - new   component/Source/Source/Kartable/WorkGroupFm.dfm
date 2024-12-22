object FmWorkGroup: TFmWorkGroup
  Left = 764
  Top = 133
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1705#1575#1585#1610
  ClientHeight = 274
  ClientWidth = 412
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 412
    Height = 233
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1705#1575#1585#1610
      DesignSize = (
        404
        205)
      object Label4: TLabel
        Left = 352
        Top = 72
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' :'
      end
      object Label6: TLabel
        Left = 241
        Top = 46
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
      end
      object Label7: TLabel
        Left = 352
        Top = 46
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1711#1585#1608#1607' :'
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 404
        Height = 32
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        DesignSize = (
          404
          32)
        object ActionToolBar1: TActionToolBar
          Left = 52
          Top = 2
          Width = 345
          Height = 28
          ActionManager = ActionManager1
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
      end
      object DBEdit3: TDBEdit
        Left = 7
        Top = 72
        Width = 341
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'Descript'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 7
        Top = 46
        Width = 231
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Title'
        TabOrder = 2
      end
      object EdtUserName: TEdit
        Left = 304
        Top = 46
        Width = 44
        Height = 19
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1578#1593#1610#1610#1606' '#1711#1585#1608#1607' '#1705#1575#1585#1610
      ImageIndex = 1
      DesignSize = (
        404
        205)
      object Label1: TLabel
        Left = 327
        Top = 38
        Width = 68
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1711#1585#1608#1607' '#1705#1575#1585#1610' :'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 128
        Top = 36
        Width = 195
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 404
        Height = 32
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        DesignSize = (
          404
          32)
        object ActionToolBar2: TActionToolBar
          Left = 272
          Top = 2
          Width = 125
          Height = 28
          ActionManager = ActionManager1
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
      end
      object OrgList: TYchecklistBox
        Left = 4
        Top = 62
        Width = 394
        Height = 142
        TabStop = False
        BevelInner = bvNone
        Columns = 3
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 2
        Ydataset = dm.FromOrganizations
        TitleField = 'title'
        IDField = 'id'
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 233
    Width = 412
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 0
      Kind = bkClose
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
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
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
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            LastSession = 262
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            LastSession = 262
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end>
    Images = dm.LetterImages
    Left = 32
    Top = 70
    StyleName = 'XP Style'
    object DataSetPrior1: TDataSetPrior
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1602#1576#1604#1610
      ImageIndex = 19
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      ImageIndex = 16
    end
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
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 262
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert1
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetEdit1
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
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
                Action = DataSetInsert1
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetEdit1
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost1
                ImageIndex = 4
                ShortCut = 113
              end
              item
                Action = DataSetCancel1
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
            Action = DataSetInsert1
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetEdit1
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert1
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit1
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 6
            ShortCut = 32776
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert1
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit1
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 6
            ShortCut = 32776
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = DataSetCancel1
            ImageIndex = 6
            ShortCut = 32776
          end
          item
            Action = DataSetPost1
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetEdit1
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetInsert1
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
            Action = DataSetPrior2
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext2
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel1
            ImageIndex = 6
            ShortCut = 32776
          end
          item
            Action = DataSetPost1
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetEdit1
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetInsert1
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetPrior2
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext2
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel1
            ImageIndex = 6
            LastSession = 262
            ShortCut = 32776
          end
          item
            Action = DataSetPost1
            ImageIndex = 32
            LastSession = 262
            ShortCut = 113
          end
          item
            Action = DataSetEdit1
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetInsert1
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetPost1
            ImageIndex = 32
            LastSession = 262
            ShortCut = 113
          end
          item
            Action = DataSetEdit1
            ImageIndex = 9
            ShortCut = 115
          end>
        ActionBar = ActionToolBar2
      end>
    Images = dm.LetterImages
    Left = 32
    Top = 120
    StyleName = 'XP Style'
    object DataSetPrior2: TDataSetPrior
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1602#1576#1604#1610
      ImageIndex = 19
    end
    object DataSetNext2: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      ImageIndex = 16
    end
    object DataSetInsert1: TDataSetInsert
      Tag = 1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 14
      ShortCut = 45
    end
    object DataSetEdit1: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 9
      ShortCut = 115
    end
    object DataSetPost1: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 32
      ShortCut = 113
    end
    object DataSetCancel1: TDataSetCancel
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 6
      ShortCut = 32776
    end
  end
end
