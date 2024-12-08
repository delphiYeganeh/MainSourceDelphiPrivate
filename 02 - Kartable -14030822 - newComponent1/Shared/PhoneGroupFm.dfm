inherited FmPhoneGroup: TFmPhoneGroup
  Left = 543
  Top = 229
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1575#1610#1605#1610#1604
  ClientHeight = 404
  ClientWidth = 474
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCreate = nil
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 474
    Height = 404
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 472
      Height = 52
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object DBN1: TDBNavigator
        Left = 14
        Top = 1
        Width = 457
        Height = 50
        Cursor = crHandPoint
        DataSource = DMPhoneGroup.DSPhoneGroup
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
        BeforeAction = DBN1BeforeAction
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 53
      Width = 472
      Height = 269
      Align = alClient
      ParentColor = True
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 470
        Height = 267
        Cursor = crHandPoint
        Align = alClient
        Ctl3D = False
        DataSource = DMPhoneGroup.DSPhoneGroup
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = False
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Code'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583
            Width = 48
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
            Width = 380
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 363
      Width = 472
      Height = 40
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      object xpBitBtn1: TAdvGlowButton
        Left = 9
        Top = 8
        Width = 75
        Height = 26
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
    object Panel4: TPanel
      Left = 1
      Top = 322
      Width = 472
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        472
        41)
      object Label1: TLabel
        Left = 420
        Top = 10
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1711#1585#1608#1607' :'
      end
      object Label2: TLabel
        Left = 299
        Top = 10
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
      end
      object DBETitle: TDBEdit
        Left = 14
        Top = 8
        Width = 281
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Title'
        DataSource = DMPhoneGroup.DSPhoneGroup
        TabOrder = 1
      end
      object DBECode: TDBEdit
        Left = 369
        Top = 8
        Width = 48
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'Code'
        DataSource = DMPhoneGroup.DSPhoneGroup
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 384
    Top = 200
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 96
  end
end
