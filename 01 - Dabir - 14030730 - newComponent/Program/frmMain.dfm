object Form_WorkGroupFM: TForm_WorkGroupFM
  Left = 682
  Top = 203
  Width = 574
  Height = 755
  AutoSize = True
  BiDiMode = bdRightToLeft
  Caption = #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1575#1585#1580#1575#1593#1575#1578
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 716
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 307
      Width = 556
      Height = 367
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        556
        367)
      object Label1: TLabel
        Left = 407
        Top = 85
        Width = 142
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1610#1610#1606' '#1593#1590#1608#1607#1575#1610' '#1610#1705' '#1711#1585#1608#1607' '#1705#1575#1585#1610' :'
      end
      object Label_AllRec: TLabel
        Left = 11
        Top = 344
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label_Grid: TLabel
        Left = 294
        Top = 344
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Edit1: TEdit
        Left = 356
        Top = 104
        Width = 193
        Height = 21
        TabOrder = 0
        Text = #1580#1607#1578' '#1580#1587#1578#1580#1608' '#1606#1575#1605' '#1610#1575' '#1587#1605#1578' '#1585#1575' '#1608#1575#1585#1583' '#1705#1606#1610#1583
        OnChange = Edit1Change
        OnClick = Edit1Click
      end
      object Button1: TAdvGlowButton
        Left = 91
        Top = 99
        Width = 75
        Height = 25
        Caption = #1584#1582#1610#1585#1607
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        Visible = False
        OnClick = Button1Click
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
      object ListBox1: TListBox
        Left = 4
        Top = 144
        Width = 273
        Height = 201
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnDblClick = ListBox1DblClick
      end
      object DBGrid1: TDBGrid
        Left = 284
        Top = 144
        Width = 265
        Height = 201
        DataSource = DataSource2
        TabOrder = 3
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Title'
            Title.Caption = #1587#1605#1578#1607#1575
            Width = 250
            Visible = True
          end>
      end
      object ListBox2: TListBox
        Left = 576
        Top = 120
        Width = 225
        Height = 201
        ItemHeight = 13
        TabOrder = 4
        Visible = False
        OnDblClick = ListBox1DblClick
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 554
        Height = 80
        Align = alTop
        ParentColor = True
        TabOrder = 5
        DesignSize = (
          554
          80)
        object Label2: TLabel
          Left = 494
          Top = 36
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578'    :'
        end
        object Label3: TLabel
          Left = 494
          Top = 12
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
        end
        object DBEDescript: TDBEdit
          Left = 8
          Top = 34
          Width = 483
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = True
          DataField = 'Descript'
          DataSource = DataSource1
          Enabled = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBETitle: TDBEdit
          Left = 262
          Top = 8
          Width = 229
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Title'
          DataSource = DataSource1
          Enabled = False
          TabOrder = 0
        end
      end
      object BitBtn3: TAdvGlowButton
        Left = 243
        Top = 101
        Width = 104
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BitBtn3Click
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
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 556
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = True
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
      DesignSize = (
        556
        32)
      object Button2: TAdvGlowButton
        Left = 7
        Top = 6
        Width = 75
        Height = 25
        Caption = #1580#1583#1610#1583
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        Visible = False
        OnClick = Button2Click
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
      object Button3: TAdvGlowButton
        Left = 31
        Top = -1
        Width = 75
        Height = 25
        Caption = #1608#1610#1585#1575#1610#1588
        ImageIndex = 2
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        Visible = False
        OnClick = Button3Click
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
      object BBOK: TAdvGlowButton
        Left = 239
        Top = 5
        Width = 104
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBOKClick
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
        Enabled = False
      end
      object NewRecommite: TAdvGlowButton
        Left = 449
        Top = 5
        Width = 104
        Height = 25
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
        TabOrder = 0
        OnClick = NewRecommiteClick
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
      object BBDelRecommite: TAdvGlowButton
        Left = 134
        Top = 5
        Width = 104
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        ImageIndex = 90
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = BBDelRecommiteClick
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
      object BitBtn2: TAdvGlowButton
        Left = 344
        Top = 5
        Width = 104
        Height = 25
        Cursor = crHandPoint
        Caption = #1608#1610#1585#1575#1610#1588' '
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
        TabOrder = 1
        OnClick = BitBtn2Click
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
    object Panel3: TPanel
      Left = 1
      Top = 674
      Width = 556
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      object BitBtn1: TAdvGlowButton
        Left = 10
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
    object Panel4: TPanel
      Left = 1
      Top = 33
      Width = 556
      Height = 274
      Align = alClient
      ParentColor = True
      TabOrder = 3
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 554
        Height = 272
        Cursor = crHandPoint
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = YDBGrid1CellClick
        OnKeyDown = YDBGrid1KeyDown
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
            Title.Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descript'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 349
            Visible = True
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 152
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 40
    Top = 96
  end
  object ADOQuery2: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 40
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 40
    Top = 264
  end
end
