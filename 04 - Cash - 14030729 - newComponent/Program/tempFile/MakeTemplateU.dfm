inherited FrMakeTemplate: TFrMakeTemplate
  Left = 565
  Top = 176
  AutoScroll = False
  Caption = #1575#1585#1587#1575#1604' '#1576#1607' WORD'
  ClientHeight = 118
  ClientWidth = 436
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 270
    Top = 55
    Width = 3
    Height = 13
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 77
    Width = 436
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      436
      41)
    object ExpToWord: TAdvGlowButton
      Left = 349
      Top = 5
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = ' Word'
      ImageIndex = 43
      Images = dm.ImageList_MainNew	  
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ExpToWordClick
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
    object Button1: TAdvGlowButton
      Left = 11
      Top = 5
      Width = 75
      Height = 28
      Cancel = True
      Caption = #1582#1585#1608#1580
      ImageIndex = 84
      Images = dm.ImageList_MainNew	  
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 436
    Height = 77
    Align = alClient
    TabOrder = 1
    DesignSize = (
      436
      77)
    object Label1: TLabel
      Left = 341
      Top = 13
      Width = 84
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1602#1575#1604#1576' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 10
      Width = 311
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      KeyField = 'WordTemplateID'
      ListField = 'TemplateTitle'
      ListSource = Dm.DDSelect_WordTemplateList
      ParentBiDiMode = False
      TabOrder = 0
    end
    object CBNewPage: TCheckBox
      Left = 258
      Top = 43
      Width = 157
      Height = 18
      Anchors = [akTop, akRight]
      Caption = #1607#1585' '#1602#1575#1604#1576' '#1583#1585' '#1610#1705' '#1589#1601#1581#1607#1567
      Checked = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
  end
  inherited ahmadvand: TActionList
    Left = 165
    Top = 11
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 175
    Top = 12
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentBeforeClose = WordApplicationDocumentBeforeClose
    Left = 157
    Top = 12
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 147
    Top = 14
  end
  object Yeganeh_Word: TYeganeh_Word
    WordApplication = WordApplication
    WordDocument = WordDocument
    WordTitle = #1606#1605#1608#1606#1607
    NewPage = False
    InvertDateNo = True
    ReplaceInHeader = False
    OnNeedDataBaseField = Yeganeh_WordNeedDataBaseField
    OnNeedTextOnNull = Yeganeh_WordNeedTextOnNull
    invertNumber = False
    Left = 112
    Top = 56
  end
end
