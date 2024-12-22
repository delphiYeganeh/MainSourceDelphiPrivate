object MBaseForm: TMBaseForm
  Left = 226
  Top = 87
  Width = 404
  Height = 216
  BiDiMode = bdRightToLeft
  Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DSForm: TDataSource
    Left = 32
    Top = 104
  end
  object ActionList: TActionList
    Left = 144
    Top = 56
    object APrint: TAction
      Caption = 'APrint'
      ShortCut = 16464
      OnExecute = APrintExecute
    end
    object ACustomizePrint: TAction
      Caption = 'ACustomizePrint'
      ShortCut = 16459
      OnExecute = ACustomizePrintExecute
    end
    object SearchAddedInfo: TAction
      ShortCut = 121
      OnExecute = SearchAddedInfoExecute
    end
    object AHelp1: TAction
      Caption = #1585#1575#1607#1606#1605#1575
      ShortCut = 112
    end
    object LoadHtm: TBrowseURL
      Caption = '&Browse URL'
      Hint = 'Browse URL'
      URL = 'c:\YeganehHelp.htm'
    end
    object RefreshAction: TAction
      Caption = 'RefreshAction'
      ShortCut = 49220
      OnExecute = RefreshActionExecute
    end
  end
  object xpWindow1: TxpWindow
    Active = True
    SizeInfo.MaxSizeWidth = 1032
    SizeInfo.MaxSizeHeight = 746
    SizeInfo.MaxPositionX = 0
    SizeInfo.MaxPositionY = 0
    SizeInfo.MinTrackWidth = 123
    SizeInfo.MinTrackHeight = 34
    SizeInfo.MaxTrackWidth = 1036
    SizeInfo.MaxTrackHeight = 780
    SizeInfo.UseSystemSettings = False
    xpCaption.Height = 26
    xpCaption.ImageAlign = iaCenter
    xpCaption.Font.Charset = DEFAULT_CHARSET
    xpCaption.Font.Color = clWindowText
    xpCaption.Font.Height = -11
    xpCaption.Font.Name = 'MS Sans Serif'
    xpCaption.Font.Style = []
    xpCaption.BorderColor = 13903108
    xpCaption.BorderInActiveColor = 14594977
    xpCaption.GradientFill = False
    xpCaption.FillDirection = fdTopToBottom
    xpCaption.ActiveStartColor = 14961664
    xpCaption.ActiveEndColor = 16675077
    xpCaption.InActiveStartColor = 15381654
    xpCaption.InActiveEndColor = 15180928
    Left = 144
    Top = 104
  end
end
