inherited FmEmailAddresses: TFmEmailAddresses
  Left = 456
  Top = 410
  BorderIcons = [biSystemMenu]
  Caption = #1579#1576#1578' '#1575#1610#1605#1610#1604' '#1607#1575#1610' '#1587#1610#1587#1578#1605#1610
  ClientHeight = 340
  ClientWidth = 587
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 587
    Height = 340
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 287
      Width = 585
      Height = 52
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      object SBExit: TAdvGlowButton
        Left = 8
        Top = 1
        Width = 55
        Height = 50
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = 0
        TabOrder = 1
        OnClick = SBExitClick
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
        Layout = blGlyphTop
      end
      object DBNavigator1: TDBNavigator
        Left = 126
        Top = 1
        Width = 458
        Height = 50
        Cursor = crHandPoint
        DataSource = DMEmails.DEmailAddresses
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alRight
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
      end
    end
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 585
      Height = 286
      ActivePage = TabSheet1
      Align = alClient
      TabHeight = 30
      TabOrder = 1
      OnChange = PageControlChange
      object TabSheet1: TTabSheet
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1605#1610#1604' '#1607#1575
        DesignSize = (
          577
          246)
        object Label5: TLabel
          Left = 5
          Top = 37
          Width = 124
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Connection Encrypt Type '
        end
        object Label4: TLabel
          Left = 35
          Top = 11
          Width = 94
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'AuthenticationType'
        end
        object Label8: TLabel
          Left = 130
          Top = 34
          Width = 3
          Height = 13
          Anchors = [akTop, akRight]
        end
        object Label12: TLabel
          Left = 415
          Top = 89
          Width = 135
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1570#1583#1585#1587' Host '#1580#1607#1578' '#1575#1585#1587#1575#1604' '#1575#1610#1605#1610#1604
          ParentBiDiMode = False
        end
        object Label13: TLabel
          Left = 100
          Top = 88
          Width = 52
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1662#1608#1585#1578' '#1575#1585#1587#1575#1604
          ParentBiDiMode = False
        end
        object Label14: TLabel
          Left = 415
          Top = 137
          Width = 72
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1605#1583#1578' '#1586#1605#1575#1606' '#1575#1578#1589#1575#1604
          ParentBiDiMode = False
        end
        object Label15: TLabel
          Left = 100
          Top = 113
          Width = 54
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1662#1608#1585#1578' '#1583#1585#1610#1575#1601#1578
          ParentBiDiMode = False
        end
        object Label27: TLabel
          Left = 415
          Top = 112
          Width = 137
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1570#1583#1585#1587' Host '#1580#1607#1578' '#1583#1585#1610#1575#1601#1578' '#1575#1610#1605#1610#1604
          ParentBiDiMode = False
        end
        object Label32: TLabel
          Left = 344
          Top = 137
          Width = 19
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1579#1575#1606#1610#1607
          ParentBiDiMode = False
        end
        object Label1: TLabel
          Left = 511
          Top = 13
          Width = 53
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1570#1583#1585#1587' '#1575#1610#1605#1610#1604
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 511
          Top = 38
          Width = 46
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 511
          Top = 62
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 415
          Top = 165
          Width = 109
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1711#1610#1585#1606#1583#1607' '#1575#1610#1605#1610#1604' '#1607#1575
          FocusControl = DBLookupComboBox1
        end
        object Label7: TLabel
          Left = 415
          Top = 188
          Width = 102
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1578#1575#1576#1604' '#1711#1610#1585#1606#1583#1607' '#1575#1610#1605#1610#1604' '#1607#1575
          FocusControl = DBLookupComboBox2
        end
        object ComboBox1: TDBComboBox
          Left = 133
          Top = 10
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'AuthenticationType'
          DataSource = DMEmails.DEmailAddresses
          ItemHeight = 13
          Items.Strings = (
            'None'
            'Login')
          ParentBiDiMode = False
          TabOrder = 3
        end
        object ComboBox2: TDBComboBox
          Left = 133
          Top = 34
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'SSLOption'
          DataSource = DMEmails.DEmailAddresses
          ItemHeight = 13
          Items.Strings = (
            'None'
            'SSLv2'
            'SSLv23'
            'SSLv3,'
            'TLSv1')
          ParentBiDiMode = False
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 309
          Top = 10
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'EmailAddress'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 309
          Top = 34
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'UserName'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 309
          Top = 58
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'PassWord'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          PasswordChar = '*'
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 174
          Top = 84
          Width = 235
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'SendHost'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 47
          Top = 108
          Width = 50
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'RecivePort'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 8
        end
        object DBEdit7: TDBEdit
          Left = 47
          Top = 84
          Width = 50
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'SendPort'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 6
        end
        object DBCheckBox1: TDBCheckBox
          Left = 326
          Top = 217
          Width = 191
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1575#1585#1587#1575#1604' '#1575#1610#1606' '#1575#1610#1605#1610#1604' '#1601#1593#1575#1604' '#1575#1587#1578
          DataField = 'IsActive'
          DataSource = DMEmails.DEmailAddresses
          TabOrder = 10
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit10: TDBEdit
          Left = 366
          Top = 134
          Width = 43
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ConnectionTimeOut'
          DataSource = DMEmails.DEmailAddresses
          TabOrder = 9
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 209
          Top = 161
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'SecTitle'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 11
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 209
          Top = 185
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'ReciveOrgTitle'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 12
        end
        object DBEdit4: TDBEdit
          Left = 174
          Top = 108
          Width = 235
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'Recievehost'
          DataSource = DMEmails.DEmailAddresses
          ParentBiDiMode = False
          TabOrder = 7
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1604#1610#1587#1578' '#1575#1610#1605#1610#1604' '#1607#1575
        ImageIndex = 1
        object YDBGrid1: TYDBGrid
          Left = 0
          Top = 0
          Width = 577
          Height = 246
          Cursor = crHandPoint
          Align = alClient
          DataSource = DMEmails.DEmailAddresses
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = YDBGrid1DblClick
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
              FieldName = 'EmailAddress'
              Title.Alignment = taCenter
              Title.Caption = #1570#1583#1585#1587' '#1575#1610#1605#1610#1604
              Width = 207
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserName'
              Title.Alignment = taCenter
              Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SecTitle'
              Title.Alignment = taCenter
              Title.Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1606#1583#1607' '#1575#1610#1605#1610#1604
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IsActive'
              Title.Alignment = taCenter
              Title.Caption = #1601#1593#1575#1604
              Width = 57
              Visible = True
            end>
        end
      end
    end
  end
  inherited DSForm: TDataSource
    Top = 184
  end
  inherited ActionList: TActionList
    Left = 56
    Top = 200
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 191
    Top = 164
  end
end
