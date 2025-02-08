inherited FrReport_GroupForcePayment: TFrReport_GroupForcePayment
  Left = 479
  Top = 170
  Width = 703
  Height = 454
  Caption = #1711#1586#1575#1585#1588' '#1583#1575#1585#1606#1583#1711#1575#1606' '#1581#1587#1575#1576
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 687
    Height = 415
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 685
      Height = 372
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 683
        Height = 370
        Align = alClient
        Color = 15987689
        DataSource = dm.DReport_GroupForcePayment
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poLandscape
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count,SumPart,SumMonthly,SumAmount,SumAmerce'
        Columns = <
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountTitle'
            Title.Caption = #1606#1575#1605' '#1593#1590#1608
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUMPART'
            Title.Caption = #1575#1602#1587#1575#1591
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUMMONTHLY'
            Title.Caption = #1605#1575#1607#1610#1575#1606#1607
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SumAmount'
            Title.Caption = #1605#1580#1605#1608#1593
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sumdelay'
            Title.Caption = #1578#1575#1582#1610#1585'- '#1585#1608#1586
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUMAMERCE'
            Title.Caption = #1580#1585#1610#1605#1607' '#1583#1610#1585#1705#1585#1583
            Width = 81
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 373
      Width = 685
      Height = 41
      Align = alBottom
      TabOrder = 1
      object Button5: TAdvGlowButton
        Left = 6
        Top = 7
        Width = 75
        Height = 28
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
  end
end
