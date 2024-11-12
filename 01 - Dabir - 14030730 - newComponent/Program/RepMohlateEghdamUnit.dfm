inherited FRepMohlateEghdam: TFRepMohlateEghdam
  Left = 486
  Top = 229
  Caption = #1576#1585#1585#1587#1610' '#1605#1607#1604#1578' '#1575#1602#1583#1575#1605' '#1575#1585#1580#1575#1593#1575#1578' '#1583#1575#1583#1607' '#1588#1583#1607
  ClientHeight = 562
  ClientWidth = 895
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 895
    Height = 562
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 893
      Height = 62
      Align = alTop
      BorderWidth = 5
      TabOrder = 0
      DesignSize = (
        893
        62)
      object GroupBox1: TGroupBox
        Left = 702
        Top = 8
        Width = 185
        Height = 47
        Anchors = [akTop, akRight]
        Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
        TabOrder = 0
        object SpeedButton1: TAdvGlowButton
          Left = 20
          Top = 17
          Width = 23
          Height = 22
          ImageIndex = 100
          Images = Dm.LetterImages_New
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = SpeedButton1Click
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
        object cmbFilter: TComboBox
          Left = 111
          Top = 18
          Width = 64
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnCloseUp = cmbFilterCloseUp
          Items.Strings = (
            #1705#1608#1670#1705#1578#1585' '#1575#1586
            #1576#1585#1575#1576#1585' '#1576#1575
            #1576#1586#1585#1711#1578#1585' '#1575#1586)
        end
        object edtDate: TMaskEdit
          Left = 43
          Top = 18
          Width = 66
          Height = 21
          EditMask = '9999/99/99;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '    /  /  '
        end
      end
      object BitBtn1: TAdvGlowButton
        Left = 8
        Top = 16
        Width = 75
        Height = 25
        Action = acRep
        ImageIndex = 176
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
      Top = 63
      Width = 893
      Height = 498
      Align = alClient
      BorderWidth = 5
      TabOrder = 1
      object YDBGrid1: TMssDBGrid
        Left = 6
        Top = 6
        Width = 881
        Height = 486
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = ARABIC_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoShowImgInIndicator, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoDynamicSearch, eoShowColumnVisibility]
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 12
        RowCount = 2
        MssImages = <>
        MssGroupHeaderField = 'Enter:HeaderFieldName'
        MssGroupHeaderFieldValue = 'Enter:HeaderFieldValue'
        MssGroupHeaderFieldCaption = 'Enter:HeaderFieldCaption'
        MssGroupHeaderColor = clBtnFace
        ModalDialogColor = clBtnFace
        Columns = <
          item
            Expanded = False
            FieldName = 'SecTitle'
            Title.Caption = #1583#1576#1610#1585#1582#1575#1606#1607
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkLetterType'
            Title.Caption = #1606#1608#1593
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MYear'
            Title.Caption = #1587#1575#1604
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IncommingNO'
            Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkfromorganization'
            Title.Caption = #1711#1610#1585#1606#1583#1607
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lktoorganization'
            Title.Caption = #1601#1585#1587#1578#1606#1583#1607
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DeadLineDate'
            Title.Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'viewdate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1585#1608#1610#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Caption = #1605#1590#1605#1608#1606' '#1606#1575#1605#1607
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LetterRecommites'
            Title.Caption = #1570#1582#1585#1610#1606' '#1662#1575#1585#1575#1601
            Width = 300
            Visible = True
          end>
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.qRepMohlateEghdam
    Left = 56
    Top = 360
  end
  inherited ActionList: TActionList
    Left = 192
    Top = 360
    object acRep: TAction
      Caption = #1606#1605#1575#1610#1588
      ImageIndex = 15
      OnExecute = acRepExecute
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
    Top = 380
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssSilver
    Left = 296
    Top = 16
  end
end
