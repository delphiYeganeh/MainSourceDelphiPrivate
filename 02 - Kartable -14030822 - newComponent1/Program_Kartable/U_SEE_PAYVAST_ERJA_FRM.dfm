object SEE_PAYVAST_ERJA_FRM: TSEE_PAYVAST_ERJA_FRM
  Left = 520
  Top = 154
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1605#1588#1575#1607#1583#1607' '#1662#1610#1608#1587#1578' '#1607#1575#1610' '#1575#1585#1580#1575#1593
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      784
      562)
    object Label1: TLabel
      Left = 463
      Top = 7
      Width = 314
      Height = 13
      Anchors = [akTop, akRight]
      Caption = ' '#1576#1575' '#1583#1575#1576#1604' '#1705#1604#1610#1705' '#1585#1608#1610' '#1607#1585' '#1662#1610#1608#1587#1578' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1605#1581#1578#1608#1610#1575#1578' '#1570#1606' '#1585#1575' '#1605#1588#1575#1607#1583#1607' '#1606#1605#1575#1610#1610#1583
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 769
      Height = 425
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRIPTION'
          Title.Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtentionTitle'
          Title.Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VersionNo'
          Title.Caption = #1588#1605#1575#1585#1607' '#1606#1587#1582#1607
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VersionDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1606#1587#1582#1607
          Width = 180
          Visible = True
        end>
    end
    object BitBtn6: TAdvGlowButton
      Left = 472
      Top = 464
      Width = 99
      Height = 25
      Caption = #1581#1584#1601
      ImageIndex = 90
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = BitBtn6Click
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
    object BitBtn5: TAdvGlowButton
      Left = 576
      Top = 464
      Width = 99
      Height = 25
      Caption = #1608#1610#1585#1575#1610#1588
      ImageIndex = 2
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = BitBtn5Click
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
      Left = 680
      Top = 496
      Width = 99
      Height = 25
      Caption = #1606#1605#1575#1610#1588' '#1601#1575#1610#1604
      ImageIndex = 9
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object BitBtn2: TAdvGlowButton
      Left = 680
      Top = 528
      Width = 99
      Height = 25
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
      ImageIndex = 143
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
    object BitBtn1: TAdvGlowButton
      Left = 8
      Top = 528
      Width = 99
      Height = 25
      Caption = #1582#1585#1608#1580
      ImageIndex = 84
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
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
    object AddBtn: TAdvGlowButton
      Left = 680
      Top = 464
      Width = 99
      Height = 25
      Caption = #1575#1590#1575#1601#1607
      ImageIndex = 60
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = AddBtnClick
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
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT RecommitePayvast.ID,LetterData.archiveID,Archived,dbo.Ext' +
        'ention.Extention,dbo.RecommitePayvast.Image,dbo.Extention.Extent' +
        'ionTitle,Letter.letterid, RecommitePayvast.extention, dbo.Recomm' +
        'itePayvast.DESCRIPTION , RecommitePayvast.VersionNo, RecommitePa' +
        'yvast.VersionDate ,letter.Archived AS isDocument'
      'FROM dbo.Letter'
      
        'INNER JOIN dbo.RecommitePayvast ON dbo.RecommitePayvast.LetterID' +
        ' = letter.LetterID'
      
        'INNER JOIN dbo.Extention        ON RecommitePayvast.extention   ' +
        ' = Extention.ExtentionID'
      
        'LEFT JOIN LetterData           ON dbo.LetterData.LetterID = dbo.' +
        'Letter.LetterID')
    Left = 16
    Top = 40
    object ADOQuery1Extention: TStringField
      FieldName = 'Extention'
      Size = 5
    end
    object ADOQuery1ExtentionTitle: TWideStringField
      FieldName = 'ExtentionTitle'
      Size = 200
    end
    object ADOQuery1letterid: TAutoIncField
      FieldName = 'letterid'
      ReadOnly = True
    end
    object ADOQuery1extention_1: TWordField
      FieldName = 'extention_1'
    end
    object ADOQuery1DESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object ADOQuery1VersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
    object ADOQuery1VersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object ADOQuery1archiveID: TIntegerField
      FieldName = 'archiveID'
    end
    object ADOQuery1Archived: TBooleanField
      FieldName = 'Archived'
    end
    object ADOQuery1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    Left = 80
    Top = 40
  end
  object popAdd: TPopupMenu
    Left = 117
    Top = 37
    object N1: TMenuItem
      Caption = #1575#1586' '#1601#1575#1610#1604
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1570#1585#1588#1610#1608
      Visible = False
      OnClick = N2Click
    end
  end
  object QRY: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM RecommitePayvast')
    Left = 16
    Top = 80
    object QRYID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QRYLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QRYRecommiteID: TIntegerField
      FieldName = 'RecommiteID'
    end
    object QRYImage: TBlobField
      FieldName = 'Image'
    end
    object QRYextention: TWordField
      FieldName = 'extention'
    end
    object QRYDescription: TWideStringField
      FieldName = 'Description'
      Size = 200
    end
    object QRYPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QRYLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QRYVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
    object QRYVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = QRY
    Left = 48
    Top = 80
  end
  object ADOQuery2: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'RecommitePayvast.ID,'
      'dbo.Extention.Extention,                      '
      
        'dbo.RecommitePayvast.Image,                                     ' +
        '                                '
      'Letter.letterid '
      
        'FROM   dbo.Letter                                               ' +
        '                                '
      
        'INNER  JOIN dbo.RecommitePayvast ON dbo.RecommitePayvast.LetterI' +
        'D = letter.LetterID             '
      
        'INNER  JOIN dbo.Extention        ON RecommitePayvast.extention  ' +
        '  = Extention.ExtentionID       '
      
        'LEFT   JOIN LetterData           ON dbo.LetterData.LetterID = db' +
        'o.Letter.LetterID               ')
    Left = 16
    Top = 120
    object ADOQuery2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery2Extention: TStringField
      FieldName = 'Extention'
      Size = 5
    end
    object ADOQuery2Image: TBlobField
      FieldName = 'Image'
    end
    object ADOQuery2letterid: TAutoIncField
      FieldName = 'letterid'
      ReadOnly = True
    end
  end
end
