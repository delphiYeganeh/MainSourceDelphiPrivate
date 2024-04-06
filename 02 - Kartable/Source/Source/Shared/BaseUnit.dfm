object MBaseForm: TMBaseForm
  Left = 256
  Top = 236
  Anchors = [akTop, akRight]
  AutoScroll = False
  BiDiMode = bdRightToLeft
  Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1610#1711#1575#1606#1607
  ClientHeight = 473
  ClientWidth = 778
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DSForm: TDataSource
    Left = 104
    Top = 120
  end
  object ActionList: TActionList
    Left = 200
    Top = 112
    object APrint: TAction
      Tag = -1
      Caption = 'APrint'
      ShortCut = 16464
      OnExecute = APrintExecute
    end
    object ACustomizePrint: TAction
      Tag = -1
      Caption = 'ACustomizePrint'
      ShortCut = 16459
      OnExecute = ACustomizePrintExecute
    end
    object SearchAddedInfo: TAction
      Tag = -1
      ShortCut = 121
      OnExecute = SearchAddedInfoExecute
    end
    object AHelp1: TAction
      Tag = -1
      Caption = '??????'
      ShortCut = 112
    end
    object LoadHtm: TBrowseURL
      Tag = -1
      Caption = '&Browse URL'
      Hint = 'Browse URL'
      URL = 'c:\YeganehHelp.htm'
    end
    object RefreshAction: TAction
      Tag = -1
      Caption = 'RefreshAction'
      ShortCut = 49220
      OnExecute = RefreshActionExecute
    end
  end
  object Grid_PopupMenu: TPopupMenu
    Tag = 11
    Left = 223
    Top = 52
    object wordMenuItem: TMenuItem
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1601#1585#1605#1578' Word'
      OnClick = wordMenuItemClick
    end
    object ExcelMenuItem: TMenuItem
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' Excel'
      OnClick = ExcelMenuItemClick
    end
    object PrintMenuItem: TMenuItem
      Caption = #1670#1575#1662' '#1575#1610#1606' '#1604#1610#1587#1578
      OnClick = PrintMenuItemClick
    end
    object TextMenuItem: TMenuItem
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' Text'
      OnClick = TextMenuItemClick
    end
    object CustomMenuItem: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606
      OnClick = CustomMenuItemClick
    end
  end
  object Timer1sssss: TTimer
    OnTimer = Timer1sssssTimer
    Left = 56
    Top = 40
  end
end
