inherited FmAlarm: TFmAlarm
  Left = 658
  Top = 328
  Width = 640
  Height = 385
  Caption = #1601#1585#1605' '#1578#1593#1610#1610#1606' '#1570#1604#1575#1585#1605' '#1576#1585#1575#1610' '#1575#1587#1606#1575#1583
  Constraints.MinHeight = 320
  Constraints.MinWidth = 540
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 624
    Height = 346
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 502
      Height = 292
      Align = alClient
      ParentColor = True
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 183
        Width = 500
        Height = 108
        Align = alBottom
        Caption = #1705#1575#1585#1576#1585#1575#1606' '#1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' '#1570#1604#1575#1585#1605' '
        TabOrder = 0
        object ChLBUsers: TYchecklistBox
          Left = 2
          Top = 15
          Width = 496
          Height = 91
          TabStop = False
          Align = alClient
          BevelInner = bvNone
          Columns = 2
          Ctl3D = False
          Enabled = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          Ydataset = DMAlarm.QrUsers
          TitleField = 'title'
          IDField = 'Id'
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 76
        Width = 500
        Height = 107
        Align = alClient
        Caption = #1605#1578#1606' '
        TabOrder = 1
        object RichEdit1: TDBMemo
          Left = 2
          Top = 15
          Width = 496
          Height = 90
          Align = alClient
          DataField = 'Memo'
          DataSource = DMAlarm.DSAlarm
          TabOrder = 0
        end
      end
      object Panel3: TxpPanel
        Left = 1
        Top = 1
        Width = 500
        Height = 40
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        TitleShow = False
        Caption = 'xpPanel'
        Title = 'xpPanelTitle'
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleAlignment = taCenter
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        DefaultHeight = 60
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 2
        DesignSize = (
          498
          38)
        object Label2: TLabel
          Left = 436
          Top = 11
          Width = 57
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606' '#1570#1604#1575#1585#1605' :'
          Transparent = True
        end
        object DBETitle: TDBEdit
          Left = 8
          Top = 8
          Width = 426
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Title'
          DataSource = DMAlarm.DSAlarm
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 41
        Width = 500
        Height = 35
        Align = alTop
        ParentColor = True
        TabOrder = 3
        DesignSize = (
          500
          35)
        object Label4: TLabel
          Left = 438
          Top = 9
          Width = 55
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582'          :'
        end
        object Label5: TLabel
          Left = 310
          Top = 10
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1593#1578' :'
        end
        object DBEDateAlarm: TDBEdit
          Left = 366
          Top = 5
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'DateAlarm'
          DataSource = DMAlarm.DSAlarm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
        end
        object DBETimeAlarm: TDBEdit
          Left = 255
          Top = 6
          Width = 49
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'TimeAlarm'
          DataSource = DMAlarm.DSAlarm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 293
      Width = 622
      Height = 52
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object SpeedButton1: TAdvGlowButton
        Left = 10
        Top = 8
        Width = 73
        Height = 33
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
      object DBNav1: TDBNavigator
        Left = 404
        Top = 1
        Width = 217
        Height = 50
        Cursor = crHandPoint
        DataSource = DMAlarm.DSAlarm
        VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
        Align = alRight
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        BeforeAction = DBNav1BeforeAction
        OnClick = DBNav1Click
      end
    end
    object Panel5: TxpPanel
      Left = 503
      Top = 1
      Width = 120
      Height = 292
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alRight
      TabOrder = 2
      DesignSize = (
        118
        290)
      object Label1: TLabel
        Left = 18
        Top = 178
        Width = 86
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607' '
        Transparent = True
      end
      object Image1: TImage
        Left = 30
        Top = 76
        Width = 63
        Height = 73
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000040
          000000400806000000AA6971DE0000000467414D410000B18F0BFC6105000000
          097048597300000B1300000B1301009A9C180000046F49444154785EED99318C
          54451CC64743240A89166A6334062B6DAC88565279FBEEB84820B958D259A951
          1A4A6C4C2C6C88C668678C8589B4D869257A2624103A1A200482E4760F3C2024
          A22EDF64BFCBFC6FFD66DEBCF776EFF63DF6977C016EBF99F97FEFCD9BF7DFC3
          CD9933674718BA952706AEF8D4CBFF9D3F7E34E8BBE235043F3B708B432FFCFB
          C2BA5B789D1F7797A1738F21F87BD0BDCDF046F7F1F3E34377E271DABBC5BA5B
          7E09017F11C1B708BBE1CC6D57BCC261DD00C157FA6E71A00247F497DF291CDE
          5E6EB943CF20F8F72260A68A531B6EF9594ED72E06AED743806B3A5825DD5C73
          BD7738EDEC73D5AD3C89A24FE2CEFF3716A4A18AEF6EBA037BB9CC6CD2774B6F
          A0D08B3A4073E1A25E5E774B6F71B9D961B3A9C109FE8F2A3C26EFAF33C6AF35
          33CD130ADAD2D4E46AF36ED6DD355877679BA792A6A6445B9FE706E7C6CE344F
          B94D8D50F244AFFBE6C06ED8BEE60905566D6AA8BC777A83DE61BACDD3761736
          ED0B5D89065BF3D7265B938FDACF6AEE124DA6799A85C36992876D2566EDF584
          7A5E453DB55FB79CA69CA13BB00B033F41901A4DCDE267D36C5046B515C7B1CE
          DFAA869850DBBFF8F364696D30D66D6A2EE55EE5A12B76F75DEF43ACB38AB177
          472A56B1F607FE33DA924C6577E2C38F61C2B3AB072BF9B301FAFA867B7B0FA7
          49D277075F80FFBC9ACB0B359CF31EDA93F835FDDABE06355742F77D564E1310
          C612157F56396947773E1E7E53FE22E4EE040FFC0BA8A5F21B8AC303CA1457F5
          77ED68DBABB9FE2F5CA8F7392C8B3A3D0A87069449A876B785B17F8CCD95D2EF
          1C5609D496DD3C71484099ACB0D5D0D41CDC477B6530C79DF13913BAC36195C9
          6D9E68DF1E7C33A28A48E9BA5B7E8AC3DB8FDF392A644AB75CEF650E6F3F3800
          8FA89029ADB9A5431CDE7EF04C7EA942A6557CC1E1DBC3D3873F1FA6445B65FC
          B38C93B9AF43C6E54FF3DC064BA13258D11650262BDA2A8330C7C6C3E50A6F9E
          8F384D6554062BDA02CA64455B25FC4186ADBCA1C265EA6EDDDF27A80C56B405
          94C98AB66CFC372FDCC133225425E151F8ADCE374C95C18AB6803259D1960D0A
          FF4605AAA96F396D362A83156D0165B2A22D0BDCF9A3224423F939397D162A83
          156D0165B2A2AD94D157DE625D856822ECA8DB03B7F02297294565B0A22DA04C
          56B49582F03FA90093102EC2692E538ACA60455B4099AC684BB2E68AFDAAF049
          0A17F84D2E974465B0A22DA04C56B42541813F8E173C69E102FCC0E592A80C56
          B40594C98AB628E8DA9EC7167DA08A9EA4FC1A1BAE788ECB465119AC680B2893
          156D5150DCBBE3C54E4FC50A978DA23258D11650262BDAA24CF8BD9F14D6FA8A
          CB465119AC680B2893156D515058955F793554B1CA65A3A80C56B40594C98AB6
          28389CAEE862272FEC804B5C368ACA60455B4099AC688B82BB52E3FFEEEAAAB8
          C765A3A80C56B40594C98AB6D6A03258D11650262BDA5A83CA60455B4099AC68
          6B0D2A83156D0165B2A2AD35A80C56B40594A9CB62EC803275598C1D50A62E8B
          B103CAD46531764099BA2CC60E285397C5D80165EAB2183BA04C5D1663CF9933
          E791C6B9877A1435DEFFBE21740000000049454E44AE426082}
      end
      object DBEUsersTitle_LK: TDBEdit
        Left = 2
        Top = 208
        Width = 113
        Height = 25
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        BorderStyle = bsNone
        Color = 16772337
        Ctl3D = False
        DataField = 'UsersTitle_LK'
        DataSource = DMAlarm.DSAlarm
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 64
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 16
    Top = 176
  end
  inherited xpWindow1: TxpWindow
    Left = 456
    Top = 96
  end
end
