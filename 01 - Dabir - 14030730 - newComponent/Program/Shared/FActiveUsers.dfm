inherited ActiveUsers: TActiveUsers
  Left = 468
  Top = 170
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1705#1575#1585#1576#1585#1575#1606' '#1601#1593#1575#1604' '#1583#1585' '#1588#1576#1705#1607
  ClientHeight = 369
  ClientWidth = 432
  Constraints.MinHeight = 300
  Constraints.MinWidth = 440
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Number: TLabel [0]
    Left = 202
    Top = 340
    Width = 23
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = #1578#1593#1583#1575#1583
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 432
    Height = 369
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 430
      Height = 325
      TabStop = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = DSForm
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = False
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'UserName'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585
          Title.Color = clBtnHighlight
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 171
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'logintime'
          Title.Alignment = taCenter
          Title.Caption = #1586#1605#1575#1606' '#1608#1585#1608#1583
          Title.Color = clBtnHighlight
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 134
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Program'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1576#1585#1606#1575#1605#1607
          Title.Color = clBtnHighlight
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 327
      Width = 430
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        430
        41)
      object Button5: TAdvGlowButton
        Left = 6
        Top = 8
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Cancel = True
        Caption = #1582#1585#1608#1580
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
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
      object Button2: TAdvGlowButton
        Left = 90
        Top = 8
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 112
        Images = Dm.ImageList_MainNew
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
      object BitBtn2: TAdvGlowButton
        Left = 264
        Top = 4
        Width = 101
        Height = 32
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = #1582#1585#1608#1580' '#1575#1580#1576#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
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
      object BitBtn1: TAdvGlowButton
        Left = 376
        Top = 4
        Width = 45
        Height = 32
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn1Click
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
  inherited DSForm: TDataSource
    DataSet = Get_ActiveUser
    Left = 225
    Top = 92
  end
  inherited ActionList: TActionList
    Left = 134
    Top = 18
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 103
    Top = 100
  end
  object Get_ActiveUser: TADOStoredProc
    Connection = Dm.YeganehConnection
    OnCalcFields = Get_ActiveUserCalcFields
    ProcedureName = 'Get_ActiveUser'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 176
    Top = 192
    object Get_ActiveUserUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object Get_ActiveUserlogintime: TStringField
      FieldName = 'logintime'
      ReadOnly = True
      Size = 5
    end
    object Get_ActiveUserisCartable: TBooleanField
      FieldName = 'isCartable'
    end
    object Get_ActiveUserProgram: TStringField
      FieldKind = fkCalculated
      FieldName = 'Program'
      Size = 10
      Calculated = True
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 304
    Top = 144
  end
end
