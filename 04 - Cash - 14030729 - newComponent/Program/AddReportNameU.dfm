object FrAddReportName: TFrAddReportName
  Left = 679
  Top = 298
  Width = 693
  Height = 343
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1604#1610#1587#1578' '#1711#1586#1575#1585#1588#1575#1578
  Color = 15724774
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 304
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 256
      Width = 675
      Height = 47
      Align = alBottom
      TabOrder = 0
      object Button5: TAdvGlowButton
        Left = 5
        Top = 3
        Width = 84
        Height = 38
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button5Click
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
      Width = 675
      Height = 208
      Align = alTop
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 673
        Height = 206
        Align = alClient
        DataSource = dm.DReportsName
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnEditButtonClick = DBGrid1EditButtonClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ReportCode'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583' '#1711#1586#1575#1585#1588
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ObjectName_Look'
            Title.Alignment = taCenter
            Title.Caption = #1601#1585#1605' '#1608#1575#1576#1587#1578#1607
            Width = 142
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ReportName'
            Title.Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588
            Width = 194
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ReportDescription'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 242
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 207
      Width = 675
      Height = 49
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        675
        49)
      object DBNavigator1: TDBNavigator
        Left = 80
        Top = 0
        Width = 500
        Height = 49
        DataSource = dm.DReportsName
        Anchors = [akTop, akRight]
        Flat = True
        TabOrder = 0
      end
    end
  end
  object ahmadvand: TActionList
    Left = 157
    Top = 35
    object AExit: TAction
      Caption = #1582#1585#1608#1580
      ImageIndex = 75
      ShortCut = 27
      OnExecute = AExitExecute
    end
    object searchAccount: TAction
      ShortCut = 114
      OnExecute = searchAccountExecute
    end
    object AExportToExcel: TAction
      ShortCut = 16453
      OnExecute = AExportToExcelExecute
    end
    object SearchLoan: TAction
      Caption = 'SearchLoan'
      ShortCut = 8306
      OnExecute = SearchLoanExecute
    end
  end
  object Grid_PopupMenu: TPopupMenu
    Tag = 11
    Left = 159
    Top = 68
    object wordMenuItem: TMenuItem
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Word'
      OnClick = wordMenuItemClick
    end
    object ExcelMenuItem: TMenuItem
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnClick = ExcelMenuItemClick
    end
    object PrintMenuItem: TMenuItem
      Caption = #1670#1575#1662'  '#1575#1610#1606' '#1604#1610#1587#1578
      OnClick = PrintMenuItemClick
    end
    object TextMenuItem: TMenuItem
      Caption = ' '#1578#1607#1610#1607' '#1601#1575#1610#1604' Text'
      OnClick = TextMenuItemClick
    end
    object CustomMenuItem: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1608' '#1601#1585#1605#1578' '#1670#1575#1662
      OnClick = CustomMenuItemClick
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Reports(*.fr3)|*.fr3'
    Left = 368
    Top = 72
  end
end
