inherited FrAddLetterDataDialog: TFrAddLetterDataDialog
  Tag = 11
  Left = 665
  Top = 331
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1662#1610#1608#1587#1578
  ClientHeight = 250
  ClientWidth = 372
  Constraints.MaxHeight = 300
  Constraints.MaxWidth = 388
  Constraints.MinHeight = 266
  Constraints.MinWidth = 380
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 372
    Height = 250
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 205
      Width = 370
      Height = 44
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        370
        44)
      object BitBtn1: TAdvGlowButton
        Left = 277
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
        Left = 199
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 370
      Height = 204
      Align = alClient
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1610#1608#1587#1578
      TabOrder = 1
      DesignSize = (
        370
        204)
      object Label2: TLabel
        Left = 294
        Top = 24
        Width = 59
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
      end
      object Label1: TLabel
        Left = 294
        Top = 73
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
      end
      object Label3: TLabel
        Left = 294
        Top = 99
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578
      end
      object SpeedButton1: TSpeedButton
        Left = 261
        Top = 97
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0018A2D600109ACE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0084D3EF006BEBFF0031B6DE00109ACE00088EB500088EB500088EB500FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0039AADE0084FFFF007BFFFF005AD3F7005AD3F7005AD3F7005AD3F70031B6
          DE00109ACE00088EB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0039AADE009CFFFF0073F7FF0073EBFF0073EBFF0073EBFF005AD3F7005AD3
          F7005AD3F70031B6EF00109ACE00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE00109ACE009CD3EF007BF7FF007BF7FF0073EBFF0073EBFF0073EBFF0073EB
          FF005AD3F7005AD3F70031B6EF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE005AD3F700109ACE0084FFFF0073F7FF0073F7FF0073F7FF0073EBFF0073EB
          FF0073EBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00FF00FF00109A
          CE007BF7FF00109ACE009CD3EF008CEBF7008CEBF7008CF7FF0073EBFF0073EB
          FF0073EBFF005AD3F7005AD3F70021AADE00FF00FF00FF00FF00FF00FF00109A
          CE0084FFFF005AD3F700109ACE00088EB500088EB500088EB5009CD3EF0073F7
          FF006BEBFF006BEBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00109A
          CE0084FFFF007BF7FF0084868400005100000051000000510000109ACE009CD3
          EF006BEBFF006BEBFF006BEBFF007BEBFF00188ECE00FF00FF00FF00FF00109A
          CE0084FFFF007BF7FF008C8E8C00318E31000051000000200000001C0000109A
          CE00088EB500108ECE00108ECE00108ECE00088EB500FF00FF00FF00FF00109A
          CE00B5FFFF007BFFFF009C9AA50039AA4A00318E310000380000003C0000B551
          0000BD490000D6510000D65900006B696B00FF00FF00FF00FF00FF00FF00109A
          CE0084D3EF00B5FFFF00A5A2A500189A210010710800398621007B792900D661
          1000B53C0000AD300000B53800006B696B00FF00FF00FF00FF00FF00FF00FF00
          FF0018A2D600109ACE00ADAAAD00FFCB6B00FFBE4A00FFB63900FFB63900FFBE
          4A00FFDF7300F7D3AD00BD865A006B696B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00B5B6B500F7BE7300FFA22900FF9A1000FFAA3900FFAA
          3900FFD38C00F7EBB500FFFFBD006B696B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00B5B6B500A5A2AD00A5A2AD00A5A2AD00A5A2AD00A5A2
          AD00A5A2AD00A5A2AD00A5A2AD0073717B00FF00FF00FF00FF00}
        OnClick = SpeedButton1Click
      end
      object Label4: TLabel
        Left = 257
        Top = 128
        Width = 90
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1608#1610#1585#1575#1610#1588' '#1587#1606#1583
      end
      object Label5: TLabel
        Left = 261
        Top = 157
        Width = 81
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1608#1610#1585#1575#1610#1588' '#1587#1606#1583
      end
      object Title: TDBEdit
        Left = 17
        Top = 20
        Width = 243
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        DataField = 'description'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 17
        Top = 70
        Width = 243
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'ExtentionTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = DBLookupComboBox1Click
      end
      object path: TEdit
        Left = 18
        Top = 95
        Width = 243
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object ChBFolder: TCheckBox
        Left = 145
        Top = 48
        Width = 113
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1575#1605#1603#1575#1606' '#1662#1610#1608#1587#1578' '#1601#1608#1604#1583#1585' '
        TabOrder = 3
        OnClick = ChBFolderClick
      end
      object edtVersionNo: TDBEdit
        Left = 18
        Top = 125
        Width = 213
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'VersionNo'
        DataSource = DSForm
        TabOrder = 4
      end
      object edtVersionDate: TDBEdit
        Left = 141
        Top = 155
        Width = 89
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'VersionDate'
        DataSource = DSForm
        TabOrder = 5
      end
      object ProgressBar1: TProgressBar
        Left = 2
        Top = 185
        Width = 366
        Height = 17
        Align = alBottom
        TabOrder = 6
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Get_LetterData_by_LetterID
    Left = 144
    Top = 25
  end
  inherited ActionList: TActionList
    Left = 96
    Top = 1
  end
  inherited xpWindow1: TxpWindow
    Left = 198
    Top = 4
  end
  object OpenDialog: TOpenDialog
    Filter = #1607#1605#1607' '#1601#1575#1610#1604' '#1607#1575'|*.*'
    Left = 64
    Top = 97
  end
  object TntOpenDialog: TTntOpenDialog
    Filter = 'Word Files |*.docx;*.doc'
    Left = 162
    Top = 75
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    OnWorkEnd = IdFTP1WorkEnd
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 22
    Top = 185
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 67
    Top = 138
  end
end
