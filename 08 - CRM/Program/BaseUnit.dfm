object MBaseForm: TMBaseForm
  Left = 881
  Top = 207
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ShapeBase: TShape
    Left = 0
    Top = 0
    Width = 338
    Height = 258
    Align = alClient
    Brush.Color = 12615680
  end
  object DSForm: TDataSource
    Left = 22
    Top = 199
  end
  object ActionList: TActionList
    Left = 18
    Top = 141
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
