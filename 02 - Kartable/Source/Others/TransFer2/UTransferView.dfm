object Frmain: TFrmain
  Left = 231
  Top = 220
  Width = 568
  Height = 456
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1610#1606' '#1587#1585#1608#1585' '#1607#1575
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Number: TLabel
    Left = 8
    Top = 265
    Width = 6
    Height = 13
    Caption = '  '
  end
  object Label7: TLabel
    Left = 363
    Top = 345
    Width = 121
    Height = 13
    Caption = #1606#1575#1605#1607' '#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607' '#1575#1586' '#1578#1575#1585#1610#1582
  end
  object Label1: TLabel
    Left = 255
    Top = 344
    Width = 27
    Height = 13
    Caption = #1576#1607' '#1576#1593#1583
  end
  object FromDate: TShamsiDateEdit
    Left = 286
    Top = 342
    Width = 72
    Height = 21
    TabOrder = 0
    Text = #0
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 389
    Width = 560
    Height = 16
    Align = alBottom
    TabOrder = 1
    Visible = False
  end
  object YDBGrid2: TYDBGrid
    Left = 0
    Top = 0
    Width = 560
    Height = 165
    Cursor = crHandPoint
    Align = alTop
    Color = 16773345
    DataSource = DTransfer_shared_RelatedSecs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
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
    Columns = <
      item
        Expanded = False
        FieldName = 'RelatedSecretariatTitle'
        Title.Caption = #1606#1575#1605' '#1583#1576#1610#1585#1582#1575#1606#1607
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServerIP'
        Title.Caption = #1570#1583#1585#1587' '#1587#1585#1608#1585
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DbName'
        Title.Caption = #1606#1575#1605' '#1662#1575#1610#1711#1575#1607' '#1575#1591#1604#1575#1593#1575#1578#1610
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SourceSecID'
        Title.Caption = #1705#1583' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1576#1583#1575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DestinationSecID'
        Title.Caption = #1705#1583' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1602#1589#1583
        Visible = True
      end>
  end
  object YDBGrid1: TYDBGrid
    Left = 0
    Top = 165
    Width = 560
    Height = 165
    Cursor = crHandPoint
    Align = alTop
    Color = 16773345
    DataSource = Transfer_dm.DTransfer_Get_ShareLetter
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
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
    Columns = <
      item
        Expanded = False
        FieldName = 'Letterid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UniqueID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lastupdate'
        Width = 64
        Visible = True
      end>
  end
  object Transfer: TButton
    Left = 117
    Top = 333
    Width = 116
    Height = 39
    Caption = #1578#1608#1602#1601' '#1575#1606#1578#1602#1575#1604
    TabOrder = 4
    OnClick = TransferClick
  end
  object ProgressBar2: TProgressBar
    Left = 0
    Top = 373
    Width = 560
    Height = 16
    Align = alBottom
    TabOrder = 5
    Visible = False
  end
  object StatusPanel: TPanel
    Left = 0
    Top = 405
    Width = 560
    Height = 17
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
  end
  object Button1: TButton
    Left = 8
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Shot'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Timer: TTimer
    Interval = 600000
    OnTimer = TimerTimer
    Left = 80
    Top = 112
  end
  object Transfer_shared_RelatedSecs: TADOStoredProc
    Connection = Transfer_dm.ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Transfer_shared_RelatedSecs;1'
    Parameters = <>
    Left = 432
    Top = 216
    object Transfer_shared_RelatedSecsRelatedSecretariatID: TAutoIncField
      FieldName = 'RelatedSecretariatID'
      ReadOnly = True
    end
    object Transfer_shared_RelatedSecsRelatedSecretariatTitle: TWideStringField
      FieldName = 'RelatedSecretariatTitle'
      Size = 50
    end
    object Transfer_shared_RelatedSecsDestinationOrgID_inSource: TIntegerField
      FieldName = 'DestinationOrgID_inSource'
    end
    object Transfer_shared_RelatedSecsServerIP: TStringField
      FieldName = 'ServerIP'
      Size = 50
    end
    object Transfer_shared_RelatedSecsDbName: TStringField
      FieldName = 'DbName'
      Size = 50
    end
    object Transfer_shared_RelatedSecsDestinationSecID: TIntegerField
      FieldName = 'DestinationSecID'
    end
    object Transfer_shared_RelatedSecsRelationType: TWordField
      FieldName = 'RelationType'
    end
    object Transfer_shared_RelatedSecsSourceSecID: TIntegerField
      FieldName = 'SourceSecID'
    end
  end
  object DTransfer_shared_RelatedSecs: TDataSource
    DataSet = Transfer_shared_RelatedSecs
    Left = 432
    Top = 272
  end
  object Tray: TPopupMenu
    Left = 176
    Top = 96
    object N1: TMenuItem
      Caption = #1588#1585#1608#1593' '#1575#1606#1578#1602#1575#1604
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1578#1608#1602#1601' '#1575#1606#1578#1602#1575#1604
      OnClick = N2Click
    end
    object Show1: TMenuItem
      Bitmap.Data = {
        46040000424D4604000000000000360000002800000011000000140000000100
        1800000000001004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F7F7C4A4A4B08686D3BDBDEEE6E6F9F7F7FEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF4EEEEC7A1A1
        DBA6A6BA8484A56D6D9E6262AA7676BC9797D2B9B9E6D9D9F1EBEBFCF9F9FFFF
        FF00FFFFFFFFFFFFFFFFFFFAF9F9C09595E7BBBBFBD2D2BB8888E0C9C9E0C5C5
        C79C9CB47E7EA56969A16B6BB08484C8A8A8FAF7F700FFFFFFFFFFFFF7F2F2BD
        9292E9CACAFFE1E1F5CDCDBA8585EEE5E5FFFFFFFFF7F7F6EBEBE9DBDBE1BCBC
        BE8888A57171F2EDED00FFFFFFF7F1F1C59B9BE9CECEFFE6E6FFDADAF7D0D0BC
        8888EAE0E0FFFFFFFFFCFCFFFEFEFFFAFAFFFFFFE1C2C2A77373F2EDED00FAF7
        F7CDA6A6EFD0D0FFE9E9FFDCDCFFD9D9FAD2D2BF8A8AE9DFDFFFFFFFEFE0E0EC
        E2E2FDFEFEFFF9F9DEC1C1A87272F1ECEC00F2ECECD6B1B1FEE8E8FFE1E1FFDB
        DBFFD8D8FBD4D4C28E8EE9E1E1FFFFFFAF9393875D5DC2A1A1FFFFFFDFC4C4A9
        7373F1ECEC00F2ECECD7B0B0FEE1E1FFDDDDFFD9D9FFD6D6FCD6D6C79292CEB1
        B1F1E8E8C8B2B2D7C5C5C1A6A6FFFFFFE5CECEA97373F1EBEB00F2EBEBD8AFAF
        FFDEDEFFDBDBFFD6D6FFD4D4FCD5D5CC9999C18E8EB98282BB8787CEA8A8D2B3
        B3E5D5D5D5BBBBAB7676F1EAEA00F2EBEBDAAEAEFFDCDCFFD9D9FFD4D4FFD2D2
        FCD4D4CC9B9BEBE0E0F3E6E6E7C7C7D39F9FBE7F7FAC6E6EBA8585AF7979F0EA
        EA00F1EBEBDAACACFFD6D6FFD2D2FFD0D0FFCDCDFFD6D6CF9D9DF2EAEAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFECC5C5B17979EEE9E900F1EAEADBAAAAFFD4D4FF
        D0D0FECECEFECACAFED5D5D19F9FF0E7E7FFFDFDFFF9F9FFFDFDFFF7F7FFF9F9
        EED5D5B17A7AEEE8E800F1EBEBDDA9A9FFD1D1FECCCCFCCACAFBC5C5FCD4D4D2
        A1A1EEE7E7FFFFFFE2D3D3C7B1B1EDE3E3FFFBFBECD2D2B17979EEE7E700F1E9
        E9DDA7A7FFCCCCFAC7C7F8C5C5F5BFBFFBD3D3D5A5A5EFEDEDFFFFFFAF929291
        6666AE8989FFFFFFEDD4D4B37979EFE7E700F1EAEADBA3A3F9C7C7F4C2C2F5C1
        C1EFB7B7F7CFCFD7A4A4D0B4B4EBDCDCC4AEAEE5DCDCC7B2B2FFFFFFF4E4E4B3
        7B7BEEE5E500F3E9E9D9A0A0F5C2C2EFBBBBEDB6B6ECBBBBF9DEDEFCE2E2EBC4
        C4DAAAAADDAFAFD4A4A4D4A9A9CCA5A5CDA7A7B27878EEE5E500F1EAEAD69C9C
        EDB8B8EAB5B5F0CACAFCE8E8FFE6E6FFE4E4FFE5E5FFE2E2FFDFDFFFDFDFF9D0
        D0EABABADAA5A5B67C7CEEE6E600F1E8E8D49B9BF4CDCDFAE9E9FFF9F9FFECEC
        FFE6E6FFE2E2FFDEDEFFE2E2FFE0E0F7D0D0EEC2C2E0B6B6DFBABADFC8C8FBF9
        F900F4E9E9D49C9CE5C0C0E2C6C6E9C9C9EED0D0F5D7D7FFE1E1FFE4E4ECC4C4
        DBACACD9B1B1DEC2C2ECDEDEF5F1F1FFFFFFFFFFFF00FEFEFEF8F0F0F4EAEAEF
        E2E2EDDFDFEBDADAE8D4D4E6CFCFE5CACAE7D5D5F2E8E8FAF8F8FDFEFEFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Caption = #1606#1605#1575#1610#1588' '#1608#1590#1593#1610#1578
      Default = True
      OnClick = Show1Click
    end
    object Exit1: TMenuItem
      Caption = #1578#1608#1602#1601' '#1608' '#1582#1585#1608#1580
      OnClick = Exit1Click
    end
  end
  object CiaTray: TCiaTray
    PopupMenu = Tray
    Version = '1.00'
    Left = 368
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = Transfer_dm.SrcLetter
    Left = 104
    Top = 80
  end
end
