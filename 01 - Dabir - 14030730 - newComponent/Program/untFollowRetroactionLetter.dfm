inherited frmFollowRetroactionLetter: TfrmFollowRetroactionLetter
  Left = 650
  Top = 310
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1662#1610#1585#1608'/'#1593#1591#1601' '#1606#1575#1605#1607
  ClientHeight = 359
  ClientWidth = 484
  Constraints.MinHeight = 300
  Constraints.MinWidth = 500
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 484
    Height = 359
    Align = alClient
    Caption = 'pnlMain'
    TabOrder = 0
    DesignSize = (
      484
      359)
    object Panel2: TxpPanel
      Left = 1
      Top = 1
      Width = 482
      Height = 129
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alTop
      TabOrder = 0
      DesignSize = (
        480
        127)
      object Label1: TLabel
        Left = 394
        Top = 42
        Width = 79
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' : '
      end
      object Label2: TLabel
        Left = 241
        Top = 67
        Width = 54
        Height = 13
        Caption = #1606#1608#1593' '#1575#1604#1581#1575#1602'  :'
      end
      object Label3: TLabel
        Left = 394
        Top = 13
        Width = 79
        Height = 13
        Caption = '                '#1587#1575#1604' : '
      end
      object Label4: TLabel
        Left = 239
        Top = 11
        Width = 55
        Height = 13
        Caption = #1606#1608#1593' '#1606#1575#1605#1607'     :'
      end
      object Label5: TLabel
        Left = 240
        Top = 41
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607':'
      end
      object btnExit: TAdvGlowButton
        Left = 6
        Top = 94
        Width = 75
        Height = 27
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
        OnClick = Action1Execute
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
      object btnDel: TAdvGlowButton
        Left = 172
        Top = 94
        Width = 75
        Height = 27
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnDelClick
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
      object btnSave: TAdvGlowButton
        Left = 248
        Top = 94
        Width = 75
        Height = 27
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 31
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnSaveClick
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
      object AddBtn: TAdvGlowButton
        Left = 400
        Top = 94
        Width = 75
        Height = 27
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = AddBtnClick
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
      object btnedit: TAdvGlowButton
        Left = 324
        Top = 94
        Width = 75
        Height = 27
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btneditClick
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
      object edtIndicatorID: TEdit
        Left = 336
        Top = 38
        Width = 56
        Height = 21
        TabOrder = 5
      end
      object cmbFRKind: TComboBox
        Left = 173
        Top = 63
        Width = 62
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 6
        Text = #1662#1610#1585#1608
        Items.Strings = (
          #1662#1610#1585#1608
          #1593#1591#1601)
      end
      object cmbxLetterType: TDBLookupComboBox
        Left = 88
        Top = 7
        Width = 147
        Height = 21
        KeyField = 'ID'
        ListField = 'Title'
        ListSource = dsLetterTypes
        TabOrder = 7
        OnCloseUp = cmbxLetterTypeCloseUp
      end
      object edtLetterNO: TEdit
        Left = 88
        Top = 37
        Width = 147
        Height = 21
        TabOrder = 8
        OnChange = edtLetterNOChange
        OnExit = edtLetterNOExit
        OnKeyDown = edtLetterNOKeyDown
        OnKeyPress = edtLetterNOKeyPress
      end
      object edtLetterYear: TSpinEdit
        Left = 336
        Top = 10
        Width = 56
        Height = 22
        Anchors = [akLeft]
        MaxValue = 1450
        MinValue = 0
        TabOrder = 9
        Value = 0
      end
      object ChBoIncommingNO: TCheckBox
        Left = 344
        Top = 68
        Width = 129
        Height = 16
        Caption = #1606#1605#1575#1610#1588' '#1576#1607' '#1589#1608#1585#1578' '#1601#1575#1585#1587#1610
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
    object DBGrid2: TYDBGrid
      Left = 1
      Top = 130
      Width = 482
      Height = 228
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      YeganehColor = True
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'FRLetterNO'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRIndicatorID'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRKindTitle'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1604#1581#1575#1602
          Width = 150
          Visible = True
        end>
    end
    object dbgIncommingNo: TYDBGrid
      Left = 144
      Top = 136
      Width = 180
      Height = 77
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Color = 16773862
      DataSource = dsIncommingNo
      Options = [dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnCellClick = dbgIncommingNoCellClick
      OnKeyDown = dbgIncommingNoKeyDown
      YeganehColor = False
      YeganehFinish = True
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1593#1606#1608#1575#1606
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'IncommingNo'
          Visible = True
        end>
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Dm.adoFollow_Retroaction_Letter
    Left = 24
    Top = 179
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 169
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 176
    Top = 164
  end
  inherited Timer1sssss: TTimer
    Left = 88
    Top = 176
  end
  object dsLetterTypes: TDataSource
    AutoEdit = False
    DataSet = Dm.QLetterTypes
    Left = 64
    Top = 115
  end
  object DataSource1: TDataSource
    Left = 160
    Top = 224
  end
  object qryIncommingNo: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'Select IncommingNo From Letter Where IsNull(IncommingNo, '#39#39') <> ' +
        #39#39)
    Left = 24
    Top = 232
    object qryIncommingNoIncommingNo: TWideStringField
      FieldName = 'IncommingNo'
      Size = 50
    end
  end
  object dsIncommingNo: TDataSource
    DataSet = qryIncommingNo
    Left = 64
    Top = 232
  end
end
