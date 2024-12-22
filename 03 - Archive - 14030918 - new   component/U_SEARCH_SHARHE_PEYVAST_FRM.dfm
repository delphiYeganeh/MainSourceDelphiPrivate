object SEARCH_SHARHE_PEYVAST_FRM: TSEARCH_SHARHE_PEYVAST_FRM
  Left = 452
  Top = 261
  BorderStyle = bsDialog
  Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1588#1585#1581' '#1662#1610#1608#1587#1578
  ClientHeight = 457
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 457
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 530
      Top = 11
      Width = 59
      Height = 13
      Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
    end
    object SpeedButton1: TAdvGlowButton
      Left = 190
      Top = 7
      Width = 23
      Height = 22
      ImageIndex = 35
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object SHARH: TEdit
      Left = 216
      Top = 8
      Width = 305
      Height = 21
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 34
      Width = 585
      Height = 383
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IncommingNO'
          Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IndicatorID'
          Title.Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Memo'
          Title.Caption = #1593#1606#1608#1575#1606' '#1605#1583#1585#1705
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtentionTitle'
          Title.Caption = #1606#1608#1593' '#1601#1575#1610#1604
          Width = 80
          Visible = True
        end>
    end
    object BitBtn1: TAdvGlowButton
      Left = 488
      Top = 424
      Width = 103
      Height = 25
      Caption = #1606#1605#1575#1610#1588' '#1601#1575#1610#1604
      ImageIndex = 14
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
  end
  object DataSource1: TDataSource
    DataSet = SRCH_QRY
    Left = 8
  end
  object SRCH_QRY: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT E.Extention AS EX,* FROM dbo.LetterData LD'
      'INNER JOIN dbo.Letter L ON L.LetterID = LD.LetterID'
      'INNER JOIN Extention E  ON LD.extention = E.ExtentionID')
    Left = 40
    object SRCH_QRYEX: TStringField
      FieldName = 'EX'
      Size = 5
    end
    object SRCH_QRYLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object SRCH_QRYLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object SRCH_QRYPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object SRCH_QRYImage: TBlobField
      FieldName = 'Image'
    end
    object SRCH_QRYextention: TWordField
      FieldName = 'extention'
    end
    object SRCH_QRYDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object SRCH_QRYLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SRCH_QRYListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object SRCH_QRYIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object SRCH_QRYColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object SRCH_QRYVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 50
    end
    object SRCH_QRYVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object SRCH_QRYLetterID_1: TAutoIncField
      FieldName = 'LetterID_1'
      ReadOnly = True
    end
    object SRCH_QRYIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object SRCH_QRYMYear: TWordField
      FieldName = 'MYear'
    end
    object SRCH_QRYLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object SRCH_QRYletterformat: TWordField
      FieldName = 'letterformat'
    end
    object SRCH_QRYIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object SRCH_QRYIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object SRCH_QRYCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object SRCH_QRYCenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object SRCH_QRYFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object SRCH_QRYToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object SRCH_QRYSignerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object SRCH_QRYClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object SRCH_QRYUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object SRCH_QRYMemo: TWideStringField
      FieldName = 'Memo'
      Size = 2000
    end
    object SRCH_QRYAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object SRCH_QRYNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object SRCH_QRYNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object SRCH_QRYReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object SRCH_QRYUserID: TIntegerField
      FieldName = 'UserID'
    end
    object SRCH_QRYRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object SRCH_QRYUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object SRCH_QRYRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object SRCH_QRYRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object SRCH_QRYFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object SRCH_QRYToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object SRCH_QRYSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object SRCH_QRYTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object SRCH_QRYHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object SRCH_QRYLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object SRCH_QRYFromStaffer: TWideStringField
      FieldName = 'FromStaffer'
      Size = 50
    end
    object SRCH_QRYLastUpdate_1: TDateTimeField
      FieldName = 'LastUpdate_1'
    end
    object SRCH_QRYSendStatusID: TWordField
      FieldName = 'SendStatusID'
    end
    object SRCH_QRYUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object SRCH_QRYFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object SRCH_QRYUserMemo1: TWideStringField
      FieldName = 'UserMemo1'
      Size = 255
    end
    object SRCH_QRYUserMemo2: TWideStringField
      FieldName = 'UserMemo2'
      Size = 255
    end
    object SRCH_QRYColor: TIntegerField
      FieldName = 'Color'
    end
    object SRCH_QRYLinked_LetterID: TIntegerField
      FieldName = 'Linked_LetterID'
    end
    object SRCH_QRYVersionDate_1: TStringField
      FieldName = 'VersionDate_1'
      FixedChar = True
      Size = 10
    end
    object SRCH_QRYVersionNumber: TStringField
      FieldName = 'VersionNumber'
      Size = 50
    end
    object SRCH_QRYSubject: TWideStringField
      FieldName = 'Subject'
      Size = 250
    end
    object SRCH_QRYExtentionID: TAutoIncField
      FieldName = 'ExtentionID'
      ReadOnly = True
    end
    object SRCH_QRYExtentionTitle: TWideStringField
      FieldName = 'ExtentionTitle'
      Size = 100
    end
    object SRCH_QRYExtention_1: TStringField
      FieldName = 'Extention_1'
      Size = 5
    end
    object SRCH_QRYIsSystem: TBooleanField
      FieldName = 'IsSystem'
    end
    object SRCH_QRYSecretariatID: TIntegerField
      FieldName = 'SecretariatID'
    end
  end
end
