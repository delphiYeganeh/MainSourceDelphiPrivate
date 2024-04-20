object MBaseForm: TMBaseForm
  Left = 869
  Top = 196
  Width = 354
  Height = 297
  BiDiMode = bdRightToLeft
  Caption = #1601#1585#1605
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DSForm: TDataSource
    Left = 64
    Top = 104
  end
  object ActionList: TActionList
    Left = 64
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
    end
    object AHelp: TAction
      Caption = #1585#1575#1607#1606#1605#1575
      ShortCut = 112
    end
    object LoadHtm: TBrowseURL
      Caption = '&Browse URL'
      Hint = 'Browse URL'
      ShortCut = 16455
      URL = 'c:\YeganehHelp.htm'
      AfterBrowse = LoadHtmAfterBrowse
    end
    object ads: TAction
      Caption = 'yahoo'
      ShortCut = 16473
      OnExecute = adsExecute
    end
    object selectall: TAction
      Caption = 'selectall'
      ShortCut = 16449
      OnExecute = selectallExecute
    end
    object Aexit: TAction
      Caption = 'Aexit'
      ShortCut = 27
      OnExecute = AexitExecute
    end
    object RefreshAction: TAction
      Caption = 'RefreshAction'
      OnExecute = RefreshActionExecute
    end
  end
end
