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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 530
    Top = 11
    Width = 59
    Height = 13
    Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
  end
  object SpeedButton1: TSpeedButton
    Left = 190
    Top = 8
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
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
    TabOrder = 0
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
  object SHARH: TEdit
    Left = 216
    Top = 8
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 520
    Top = 424
    Width = 75
    Height = 25
    Caption = #1606#1605#1575#1610#1588' '#1601#1575#1610#1604
    TabOrder = 2
    OnClick = BitBtn1Click
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
    object SRCH_QRYSecretariatID: TWordField
      FieldName = 'SecretariatID'
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
  end
end
