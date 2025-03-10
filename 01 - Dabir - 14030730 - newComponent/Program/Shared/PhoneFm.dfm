inherited FmPhone: TFmPhone
  Left = 602
  Top = 277
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1583#1601#1578#1585#1670#1607' '#1578#1604#1601#1606
  ClientHeight = 512
  ClientWidth = 726
  OldCreateOrder = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 726
    Height = 512
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 66
      Width = 724
      Height = 156
      Align = alClient
      TabOrder = 0
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 722
        Height = 154
        Cursor = crHandPoint
        Align = alClient
        Ctl3D = False
        DataSource = DMPhone.DSPhone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Code'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583
            Width = 35
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Title'
            Title.Caption = #1606#1575#1605' '#1588#1585#1705#1578
            Width = 166
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'PersonName'
            Title.Caption = #1606#1575#1605' '#1605#1587#1574#1608#1604
            Width = 129
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Tel1'
            Title.Caption = #1578#1604#1601#1606'1'
            Width = 93
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Tel2'
            Title.Caption = #1578#1604#1601#1606'2'
            Width = 98
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Mobile'
            Title.Caption = #1607#1605#1585#1575#1607
            Width = 97
            Visible = True
          end
          item
            Color = 16772333
            Expanded = False
            FieldName = 'Email'
            Title.Alignment = taCenter
            Title.Caption = #1575#1610#1605#1610#1604
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fax'
            Title.Caption = #1601#1705#1587
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Internet'
            Title.Caption = #1570#1583#1585#1587' '#1575#1610#1606#1578#1585#1606#1578#1610
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ZipCode'
            Title.Caption = #1705#1583' '#1662#1587#1578#1610
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Address'
            Title.Caption = #1570#1583#1585#1587
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descript'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 724
      Height = 65
      Align = alTop
      TabOrder = 1
      object SBSearch: TAdvGlowButton
        Left = 106
        Top = 4
        Width = 83
        Height = 32
        Cursor = crHandPoint
        Caption = #1580#1587#1578#1580#1608
        ImageIndex = 70
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = 1
        TabOrder = 3
        OnClick = SBSearchClick
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
      object SBCall: TAdvGlowButton
        Left = 10
        Top = 4
        Width = 94
        Height = 32
        Cursor = crHandPoint
        Caption = #1588#1605#1575#1585#1607' '#1711#1610#1585#1610
        ImageIndex = 80
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = 1
        TabOrder = 4
        OnClick = SBCallClick
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
      object SpeedButton3: TAdvGlowButton
        Left = 194
        Top = 4
        Width = 119
        Height = 32
        Cursor = crHandPoint
        Caption = #1578#1594#1610#1610#1585' '#1606#1575#1605' '#1587#1578#1608#1606' '#1607#1575
        ImageIndex = 137
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = 1
        TabOrder = 5
        OnClick = SpeedButton3Click
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
      object DBN1: TDBNavigator
        Left = 317
        Top = 1
        Width = 406
        Height = 63
        Cursor = crHandPoint
        DataSource = DMPhone.DSPhone
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alRight
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        BeforeAction = DBN1BeforeAction
      end
      object PhoneGroup: TDBLookupComboBox
        Left = 10
        Top = 40
        Width = 148
        Height = 21
        BiDiMode = bdLeftToRight
        Enabled = False
        KeyField = 'PhoneGroupID'
        ListField = 'Title'
        ListSource = DMPhone.DSPhoneGroup
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object CheckBox1: TCheckBox
        Left = 163
        Top = 40
        Width = 113
        Height = 17
        Caption = #1601#1610#1604#1578#1585' '#1576#1585#1575#1587#1575#1587' '#1711#1585#1608#1607' :'
        TabOrder = 2
        OnClick = CheckBox1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 471
      Width = 724
      Height = 40
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        724
        40)
      object DBText1: TDBText
        Left = 96
        Top = 5
        Width = 623
        Height = 29
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ShowPhone'
        DataSource = DMPhone.DSPhone
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object xpBitBtn1: TAdvGlowButton
        Left = 17
        Top = 8
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
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
        OnClick = xpBitBtn1Click
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
    object PageControl1: TPageControl
      Left = 1
      Top = 222
      Width = 724
      Height = 249
      ActivePage = TabSheet2
      Align = alBottom
      TabOrder = 3
      object TabSheet1: TTabSheet
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1575#1589#1604#1610
        DesignSize = (
          716
          221)
        object Label1: TLabel
          Left = 609
          Top = 10
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1606#1575#1605' '#1588#1585#1705#1578' :'
          ParentBiDiMode = False
        end
        object Label2: TLabel
          Left = 267
          Top = 63
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1570#1583#1585#1587' '#1575#1610#1606#1578#1585#1606#1578#1610' :'
        end
        object Label3: TLabel
          Left = 609
          Top = 62
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1578#1604#1601#1606' 1 :'
          ParentBiDiMode = False
        end
        object Label4: TLabel
          Left = 267
          Top = 37
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1575#1610#1605#1610#1604' :'
        end
        object Label12: TLabel
          Left = 267
          Top = 138
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578':'
        end
        object Label6: TLabel
          Left = 267
          Top = 11
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1711#1585#1608#1607' :'
        end
        object Label7: TLabel
          Left = 609
          Top = 168
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1606#1575#1605' '#1579#1576#1578' '#1705#1606#1606#1583#1607' :'
          ParentBiDiMode = False
        end
        object Label5: TLabel
          Left = 609
          Top = 36
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1606#1575#1605' '#1605#1587#1574#1608#1604' :'
          ParentBiDiMode = False
        end
        object Label8: TLabel
          Left = 609
          Top = 88
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1578#1604#1601#1606' 2 :'
          ParentBiDiMode = False
        end
        object Label9: TLabel
          Left = 609
          Top = 114
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1607#1605#1585#1575#1607' :'
          ParentBiDiMode = False
        end
        object Label10: TLabel
          Left = 609
          Top = 141
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1601#1575#1705#1587' :'
          ParentBiDiMode = False
        end
        object Label11: TLabel
          Left = 267
          Top = 87
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1570#1583#1585#1587' :'
        end
        object Label13: TLabel
          Left = 267
          Top = 113
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1705#1583' '#1662#1587#1578#1610' :'
        end
        object SpeedButton1: TAdvGlowButton
          Left = 237
          Top = 8
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          ImageIndex = 78
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 14
          OnClick = SpeedButton1Click
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
        object SpeedButton2: TAdvGlowButton
          Left = 13
          Top = 8
          Width = 30
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          ImageIndex = 65
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 15
          OnClick = SpeedButton2Click
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
        object DBETitle: TDBEdit
          Left = 405
          Top = 8
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Title'
          DataSource = DMPhone.DSPhone
          TabOrder = 0
        end
        object DBEInternet: TDBEdit
          Left = 13
          Top = 60
          Width = 250
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'Internet'
          DataSource = DMPhone.DSPhone
          ParentBiDiMode = False
          TabOrder = 1
          OnEnter = DBEInternetEnter
          OnExit = DBEInternetExit
        end
        object DBETel1: TDBEdit
          Left = 405
          Top = 60
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Tel1'
          DataSource = DMPhone.DSPhone
          TabOrder = 2
        end
        object DBEEmail: TDBEdit
          Left = 13
          Top = 34
          Width = 250
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'Email'
          DataSource = DMPhone.DSPhone
          ParentBiDiMode = False
          TabOrder = 3
          OnEnter = DBEEmailEnter
          OnExit = DBEEmailExit
        end
        object DBEDescript: TDBEdit
          Left = 13
          Top = 138
          Width = 250
          Height = 47
          Anchors = [akTop, akRight]
          AutoSize = False
          DataField = 'Descript'
          DataSource = DMPhone.DSPhone
          TabOrder = 4
        end
        object DBLkCBPhoneGroup: TDBLookupComboBox
          Left = 46
          Top = 8
          Width = 185
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'PhoneGroupID'
          DataSource = DMPhone.DSPhone
          KeyField = 'PhoneGroupID'
          ListField = 'Title'
          ListSource = DMPhone.DSPhoneGroup
          ParentBiDiMode = False
          TabOrder = 5
        end
        object DBEUsersTitle: TDBEdit
          Left = 405
          Top = 166
          Width = 200
          Height = 21
          TabStop = False
          Anchors = [akTop, akRight]
          Ctl3D = True
          DataField = 'UsersTitle'
          DataSource = DMPhone.DSPhone
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEPersonName: TDBEdit
          Left = 405
          Top = 34
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PersonName'
          DataSource = DMPhone.DSPhone
          TabOrder = 7
        end
        object DBETel2: TDBEdit
          Left = 405
          Top = 86
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Tel2'
          DataSource = DMPhone.DSPhone
          TabOrder = 8
        end
        object DBEMobile: TDBEdit
          Left = 405
          Top = 112
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Mobile'
          DataSource = DMPhone.DSPhone
          TabOrder = 9
        end
        object DBEFax: TDBEdit
          Left = 405
          Top = 138
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Fax'
          DataSource = DMPhone.DSPhone
          TabOrder = 10
        end
        object DBCBIsPublic: TDBCheckBox
          Left = 138
          Top = 193
          Width = 169
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1576#1604' '#1605#1588#1575#1607#1583#1607' '#1576#1585#1575#1610' '#1607#1605#1607' '#1705#1575#1585#1576#1585#1575#1606
          DataField = 'IsPublic'
          DataSource = DMPhone.DSPhone
          TabOrder = 11
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEAddress: TDBEdit
          Left = 13
          Top = 86
          Width = 250
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          DataField = 'Address'
          DataSource = DMPhone.DSPhone
          ParentBiDiMode = False
          TabOrder = 12
        end
        object DBEZipCode: TDBEdit
          Left = 13
          Top = 112
          Width = 250
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'ZipCode'
          DataSource = DMPhone.DSPhone
          ParentBiDiMode = False
          TabOrder = 13
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1583#1587#1578#1585#1587#1610' '#1705#1575#1585#1576#1585#1575#1606
        ImageIndex = 1
        DesignSize = (
          716
          221)
        object Label14: TLabel
          Left = 591
          Top = 8
          Width = 115
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1576#1585#1575#1606' '#1583#1575#1585#1575#1610' '#1583#1587#1578#1585#1587#1610' :'
        end
        object Label15: TLabel
          Left = 232
          Top = 8
          Width = 53
          Height = 13
          Caption = #1705#1604' '#1705#1575#1585#1576#1585#1575#1606' :'
        end
        object lstAlUsers: TDBLookupListBox
          Left = 8
          Top = 24
          Width = 281
          Height = 186
          KeyField = 'Id'
          ListField = 'Title'
          ListSource = DMPhone.DSUsers
          TabOrder = 0
        end
        object lstAccessUsers: TDBLookupListBox
          Left = 400
          Top = 24
          Width = 310
          Height = 186
          Anchors = [akLeft, akTop, akRight, akBottom]
          KeyField = 'UserID'
          ListField = 'UserTitle'
          ListSource = DMPhone.DS_AccessUsers
          TabOrder = 1
        end
        object BitBtn1: TAdvGlowButton
          Left = 298
          Top = 56
          Width = 91
          Height = 25
          ImageIndex = 87
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
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
        object BitBtn2: TAdvGlowButton
          Left = 298
          Top = 88
          Width = 91
          Height = 25
          ImageIndex = 85
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = BitBtn2Click
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
        object BitBtn3: TAdvGlowButton
          Left = 298
          Top = 120
          Width = 91
          Height = 25
          ImageIndex = 88
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 4
          OnClick = BitBtn3Click
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
        object BitBtn4: TAdvGlowButton
          Left = 298
          Top = 152
          Width = 91
          Height = 25
          ImageIndex = 86
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          OnClick = BitBtn4Click
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
  inherited DSForm: TDataSource
    Left = 632
    Top = 104
  end
  inherited ActionList: TActionList
    Left = 584
    Top = 104
  end
  object PopupCall: TPopupMenu [3]
    Images = Dm.ImageList_MainNew
    TrackButton = tbLeftButton
    Left = 24
    Top = 57
    object NPhone1: TMenuItem
      Caption = #1576#1575' '#1578#1604#1601#1606' 1'
      OnClick = NPhone1Click
    end
    object NPhone2: TMenuItem
      Tag = 1
      Caption = #1576#1575' '#1578#1604#1601#1606' 2'
      OnClick = NPhone1Click
    end
    object NMobile: TMenuItem
      Tag = 2
      Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      OnClick = NPhone1Click
    end
    object NFax: TMenuItem
      Tag = 3
      Caption = #1601#1575#1603#1587
      OnClick = NPhone1Click
    end
    object NMyNumber: TMenuItem
      Tag = 4
      Caption = ' . . . '#1588#1605#1575#1585#1607' '#1583#1604#1582#1608#1575#1607
      OnClick = NPhone1Click
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 175
    Top = 116
  end
  inherited Timer1sssss: TTimer
    Left = 40
    Top = 160
  end
end
