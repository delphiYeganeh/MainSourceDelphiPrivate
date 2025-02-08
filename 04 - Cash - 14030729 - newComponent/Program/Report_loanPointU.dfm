inherited FrReport_loanPoint: TFrReport_loanPoint
  Left = 417
  Top = 147
  Width = 790
  Height = 564
  Caption = #1711#1586#1575#1585#1588' '#1575#1605#1578#1610#1575#1586' '#1608#1575#1605
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 774
    Height = 525
    Align = alClient
    Caption = 'pnlMain'
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 772
      Height = 423
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      DesignSize = (
        772
        423)
      object Label1: TLabel
        Left = 685
        Top = 11
        Width = 76
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576':'
      end
      object YDBGrid: TYDBGrid
        Left = 1
        Top = 48
        Width = 770
        Height = 374
        Cursor = crHandPoint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 14540253
        DataSource = dm.DReport_LoanPoint
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
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count,PartDelay,monthlyDelay,LastLoanAmount,RemainOfLoan'
        Columns = <
          item
            Expanded = False
            FieldName = 'LastLoanNo'
            Title.Caption = #1588' '#1570#1582#1585#1610#1606' '#1608#1575#1605
            Title.Color = clMoneyGreen
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Caption = #1588' '#1581#1587#1575#1576
            Title.Color = clMoneyGreen
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountTitle'
            Title.Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
            Title.Color = clMoneyGreen
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LastLoanDate'
            Title.Caption = #1578' '#1570#1582#1585#1610#1606' '#1608#1575#1605
            Title.Color = clMoneyGreen
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LastLoanAmount'
            Title.Caption = #1605#1576#1604#1594' '#1608#1575#1605' '#1570#1582#1585
            Title.Color = clMoneyGreen
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NumberOfPart'
            Title.Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591
            Title.Color = clMoneyGreen
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RemainOfLoan'
            Title.Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605
            Title.Color = clMoneyGreen
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RequestDate'
            Title.Caption = #1578' '#1583#1585#1582#1608#1575#1587#1578
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountDate'
            Title.Caption = #1575#1601#1578#1578#1575#1581' '#1581#1587#1575#1576
            Title.Color = clMoneyGreen
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AvgPoint'
            Title.Caption = #1575#1605#1578#1610#1575#1586' '#1605#1608#1580#1608#1583#1610
            Title.Color = clSkyBlue
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monthlyDelay'
            Title.Caption = #1578#1575#1582#1610#1585' '#1605#1575#1607#1610#1575#1606#1607
            Title.Color = clSkyBlue
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PartDelay'
            Title.Caption = #1578#1575#1582#1610#1585' '#1575#1602#1587#1575#1591
            Title.Color = clSkyBlue
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Point'
            Title.Caption = #1575#1605#1578#1610#1575#1586
            Title.Color = clSkyBlue
            Width = 80
            Visible = True
          end>
      end
      object EdtAccountNo: TEdit
        Left = 408
        Top = 4
        Width = 255
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 424
      Width = 772
      Height = 59
      Align = alBottom
      Enabled = False
      TabOrder = 1
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 770
        Height = 57
        Align = alClient
        BorderStyle = bsNone
        Color = 15198425
        Ctl3D = True
        Lines.Strings = (
          
            #1575#1605#1578#1610#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1575#1586' '#1578#1575#1585#1610#1582' '#1575#1582#1584' '#1570#1582#1585#1610#1606' '#1608#1575#1605' ('#1610#1575' '#1575#1601#1578#1578#1575#1581' '#1581#1587#1575#1576') '#1578#1575' '#1575#1605#1585#1608#1586' '#1607 +
            #1585' '#1607#1586#1575#1585' '#1578#1608#1605#1575#1606' '#1583#1585'  '#1605#1575#1607' '#1610#1705' '#1575#1605#1578#1610#1575#1586#1605#1581#1575#1587#1576#1607' '#1605#1610' '#1588#1608#1583
          
            '- '#1578#1575#1582#1610#1585' '#1575#1602#1587#1575#1591' '#1576#1585' '#1575#1587#1575#1587' '#1578#1606#1592#1610#1605#1575#1578#1610' '#1705#1607' '#1705#1575#1585#1576#1585' '#1583#1585' '#1601#1585#1605' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1575#1606#1580 +
            #1575#1605' '#1605#1610' '#1583#1607#1583' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1575#1587#1578
          
            '- '#1578#1575#1582#1610#1585' '#1605#1575#1607#1610#1575#1606#1607' '#1607#1575'  '#1576#1585' '#1575#1587#1575#1587' '#1578#1606#1592#1610#1605#1575#1578#1610' '#1705#1607' '#1705#1575#1585#1576#1585' '#1583#1585' '#1601#1585#1605' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587 +
            #1578#1605' '#1575#1606#1580#1575#1605' '#1605#1610' '#1583#1607#1583' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1575#1587#1578
          ''
          '')
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 483
      Width = 772
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        772
        41)
      object MakeRep: TAdvGlowButton
        Left = 657
        Top = 7
        Width = 110
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 176
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = MakeRepClick
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
      object Button2: TAdvGlowButton
        Left = 429
        Top = 7
        Width = 110
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 112
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
        Left = 315
        Top = 7
        Width = 110
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Word '#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
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
      object Button4: TAdvGlowButton
        Left = 201
        Top = 7
        Width = 110
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Excel'#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 135
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button4Click
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
      object Button5: TAdvGlowButton
        Left = 4
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
        TabOrder = 4
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
      object Button6: TAdvGlowButton
        Left = 543
        Top = 7
        Width = 110
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 137
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button6Click
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
  inherited ahmadvand: TActionList
    Left = 69
    Top = 139
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 71
    Top = 188
  end
  object Update_Rep_LOANPOINT: TADOStoredProc
    Connection = dm.YeganehConnection
    CommandTimeout = 100
    ProcedureName = 'Update_Rep_LOANPOINT'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ACCountID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TODAY'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@AccountNO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@AccountTitle'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 136
    Top = 224
  end
  object Rep_Loan_Point: TADOQuery
    Connection = dm.YeganehConnection
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'p1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Rep_LoanPoint'
      'where (AccountNO= :p1) or(1= :p2)'
      'ORDER BY POINT DESC')
    Left = 472
    Top = 160
  end
end
