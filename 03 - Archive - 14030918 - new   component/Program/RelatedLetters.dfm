inherited fmRelatedLetters: TfmRelatedLetters
  Left = 674
  Top = 278
  Caption = ' '#1606#1575#1605#1607' '#1607#1575#1610' '#1605#1585#1578#1576#1591' '#1576#1575' '#1587#1606#1583
  ClientHeight = 313
  ClientWidth = 462
  Constraints.MinHeight = 300
  Constraints.MinWidth = 470
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 313
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 271
      Width = 460
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      object Button1: TAdvGlowButton
        Left = 16
        Top = 8
        Width = 75
        Height = 25
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 460
      Height = 270
      Align = alClient
      ParentColor = True
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 458
        Height = 268
        Cursor = crHandPoint
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            FieldName = 'DocPart'
            Title.Caption = #1576#1582#1588' '#1662#1610#1608#1587#1578' '#1588#1583#1607
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DabirIndicatorID'
            Title.Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1606#1575#1605#1607
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DabirKhanehName'
            Title.Caption = #1606#1575#1605' '#1583#1576#1610#1585#1582#1575#1606#1607
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DabirMyear'
            Title.Caption = #1587#1575#1604' '#1606#1575#1605#1607
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'isDocument'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ArchiveID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ArchiveLetterID'
            Visible = False
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FrAddDocument.sp_AutomationLetters_by_ArchiveLetterID
    Left = 48
    Top = 24
  end
end
