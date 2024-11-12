inherited FmImageData: TFmImageData
  Left = 683
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1589#1575#1608#1610#1585
  ClientHeight = 442
  ClientWidth = 481
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 481
    Height = 442
    Align = alClient
    Caption = 'pnlMain'
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 400
      Width = 479
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      object xpBitBtn1: TAdvGlowButton
        Left = 9
        Top = 6
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = xpBitBtn1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 479
      Height = 52
      Align = alTop
      ParentColor = True
      TabOrder = 1
      object DBN1: TDBNavigator
        Left = 21
        Top = 1
        Width = 457
        Height = 50
        Cursor = crHandPoint
        DataSource = FmScanImage.DSListItems
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alRight
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = DBN1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 53
      Width = 479
      Height = 281
      Align = alClient
      ParentColor = True
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 477
        Height = 279
        Align = alClient
        DataSource = FmScanImage.DSListItems
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Width = 201
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Notes'
            Title.Alignment = taCenter
            Width = 242
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 334
      Width = 479
      Height = 66
      Align = alBottom
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        479
        66)
      object Label1: TLabel
        Left = 420
        Top = 11
        Width = 33
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' :'
      end
      object Label2: TLabel
        Left = 420
        Top = 35
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' :'
      end
      object DBETitle: TDBEdit
        Left = 182
        Top = 8
        Width = 234
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Title'
        DataSource = FmScanImage.DSListItems
        TabOrder = 0
      end
      object DBENotes: TDBEdit
        Left = 30
        Top = 33
        Width = 386
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Notes'
        DataSource = FmScanImage.DSListItems
        TabOrder = 1
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 40
    Top = 160
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 104
  end
end
