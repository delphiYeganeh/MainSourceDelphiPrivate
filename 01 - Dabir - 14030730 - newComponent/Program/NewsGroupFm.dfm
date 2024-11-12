object FmNewsGroup: TFmNewsGroup
  Left = 742
  Top = 207
  Width = 480
  Height = 554
  BiDiMode = bdRightToLeft
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1582#1576#1585#1610
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 515
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 462
      Height = 52
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object DBN1: TDBNavigator
        Left = 6
        Top = 1
        Width = 455
        Height = 50
        Cursor = crHandPoint
        DataSource = DMNewsGroup.DSNewsGroup
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alRight
        Constraints.MaxHeight = 50
        Constraints.MaxWidth = 468
        Constraints.MinHeight = 50
        Constraints.MinWidth = 450
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
    object Panel2: TPanel
      Left = 1
      Top = 53
      Width = 462
      Height = 152
      Align = alClient
      ParentColor = True
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 460
        Height = 150
        Cursor = crHandPoint
        Align = alClient
        Color = 15528703
        DataSource = DMNewsGroup.DSNewsGroup
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = YDBGrid1CellClick
        OnKeyUp = YDBGrid1KeyUp
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
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descript'
            Title.Alignment = taCenter
            Width = 209
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 205
      Width = 462
      Height = 260
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        462
        260)
      object Label4: TLabel
        Left = 403
        Top = 34
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' :'
      end
      object Label6: TLabel
        Left = 403
        Top = 10
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
      end
      object Label1: TLabel
        Left = 312
        Top = 61
        Width = 146
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1610#1610#1606' '#1593#1590#1608#1607#1575#1610' '#1610#1705' '#1711#1585#1608#1607' '#1582#1576#1585#1610' :'
      end
      object DBEDescript: TDBEdit
        Left = 14
        Top = 34
        Width = 383
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'Descript'
        DataSource = DMNewsGroup.DSNewsGroup
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBETitle: TDBEdit
        Left = 142
        Top = 8
        Width = 255
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Title'
        DataSource = DMNewsGroup.DSNewsGroup
        TabOrder = 0
      end
      object CKLBUsers: TYchecklistBox
        Left = 14
        Top = 76
        Width = 445
        Height = 173
        TabStop = False
        Anchors = [akTop, akRight]
        BevelInner = bvNone
        Columns = 3
        Ctl3D = False
        Enabled = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 2
        Ydataset = DMNewsGroup.QrUsersList
        TitleField = 'title'
        IDField = 'id'
        OnChecked = CKLBUsersChecked
        OnNeedCheck = CKLBUsersNeedCheck
        ClearInDb = CKLBUsersClearInDb
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 465
      Width = 462
      Height = 49
      Align = alBottom
      ParentColor = True
      TabOrder = 3
      object BitBtn1: TAdvGlowButton
        Left = 16
        Top = 10
        Width = 80
        Height = 25
        Cursor = crHandPoint
        Cancel = True
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
        OnClick = BitBtn1Click
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
  end
end
