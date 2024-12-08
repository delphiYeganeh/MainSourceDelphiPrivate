inherited FrSendMessage: TFrSendMessage
  Tag = 125
  Left = 570
  Top = 224
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1587#1578#1575#1583#1606' '#1610#1603' '#1662#1610#1575#1605
  ClientHeight = 600
  ClientWidth = 568
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 568
    Height = 600
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Tag = 4
      Left = 1
      Top = 217
      Width = 566
      Height = 66
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label4: TLabel
        Tag = 6
        Left = 503
        Top = 42
        Width = 41
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1662#1610#1575#1605
        FocusControl = DBEMsgDate
      end
      object Label5: TLabel
        Tag = 7
        Left = 381
        Top = 43
        Width = 31
        Height = 13
        Caption = #1587#1575#1593#1578
        FocusControl = DBEMsgTime
      end
      object Label3: TLabel
        Tag = 8
        Left = 503
        Top = 11
        Width = 41
        Height = 13
        Caption = #1605#1608#1590#1608#1593
        FocusControl = DBESubject
      end
      object DBEMsgDate: TDBEdit
        Tag = 10
        Left = 430
        Top = 40
        Width = 67
        Height = 21
        TabStop = False
        DataField = 'MsgDate'
        DataSource = dsMessage
        ReadOnly = True
        TabOrder = 1
      end
      object DBEMsgTime: TDBEdit
        Tag = 11
        Left = 323
        Top = 40
        Width = 52
        Height = 21
        DataField = 'MsgTime'
        DataSource = dsMessage
        ReadOnly = True
        TabOrder = 2
      end
      object DBESubject: TDBEdit
        Tag = 12
        Left = 37
        Top = 8
        Width = 460
        Height = 21
        DataField = 'Subject'
        DataSource = dsMessage
        TabOrder = 0
      end
    end
    object Panel2: TGroupBox
      Tag = 2
      Left = 1
      Top = 283
      Width = 566
      Height = 249
      Align = alTop
      Caption = #1605#1578#1606' '#1662#1610#1575#1605
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object DBMemo1: TDBMemo
        Tag = 3
        Left = 2
        Top = 15
        Width = 562
        Height = 232
        Align = alClient
        DataField = 'Message'
        DataSource = dsMessage
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 566
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        566
        46)
      object Label6: TLabel
        Left = 694
        Top = 7
        Width = 57
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 511
        Top = 4
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1610#1585#1606#1583#1607
      end
      object Label7: TLabel
        Left = 501
        Top = 28
        Width = 38
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1610#1585#1606#1583#1711#1575#1606
      end
      object OneOrg: TRadioButton
        Left = 542
        Top = 4
        Width = 13
        Height = 17
        Anchors = [akTop, akRight]
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = OneOrgClick
      end
      object MoreUser: TRadioButton
        Left = 542
        Top = 27
        Width = 14
        Height = 17
        Anchors = [akTop, akRight]
        TabOrder = 1
        OnClick = MoreUserClick
      end
      object pnlOneOrg: TPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 46
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        DesignSize = (
          465
          46)
        object SpeedButton1: TAdvGlowButton
          Left = 442
          Top = 5
          Width = 21
          Height = 21
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          ImageIndex = 78
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
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
        object DBLkCBTo_: TDBLookupComboBox
          Left = 203
          Top = 5
          Width = 237
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'To_'
          DataSource = dsMessage
          KeyField = 'Id'
          ListField = 'Title'
          ListSource = Dm.Dusers
          ParentBiDiMode = False
          TabOrder = 1
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 532
      Width = 566
      Height = 51
      Align = alTop
      TabOrder = 3
      DesignSize = (
        566
        51)
      object BitBtn1: TAdvGlowButton
        Tag = 15
        Left = 350
        Top = 7
        Width = 102
        Height = 35
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 179
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
        Tag = 16
        Left = 458
        Top = 7
        Width = 90
        Height = 35
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1662#1610#1575#1605' '#1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 180
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
      object BitBtn3: TAdvGlowButton
        Tag = 17
        Left = 8
        Top = 11
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
    end
    object statusbar: TPanel
      Left = 1
      Top = 583
      Width = 566
      Height = 18
      Align = alTop
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'statusbar'
      ParentBiDiMode = False
      ParentColor = True
      TabOrder = 4
    end
    object UserPanel: TPanel
      Left = 1
      Top = 47
      Width = 566
      Height = 170
      Align = alTop
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 5
      DesignSize = (
        566
        170)
      object SpeedButton2: TAdvGlowButton
        Left = 462
        Top = 147
        Width = 85
        Height = 20
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
        ImageIndex = 105
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
      object SpeedButton3: TAdvGlowButton
        Left = 352
        Top = 147
        Width = 107
        Height = 20
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1593#1583#1605' '#1575#1606#1578#1582#1575#1576' '#1607#1605#1607
        ImageIndex = 104
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
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
      object UserList: TYchecklistBox
        Left = 1
        Top = 1
        Width = 564
        Height = 144
        Align = alTop
        BevelInner = bvNone
        Columns = 3
        Ctl3D = False
        ItemHeight = 13
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
        Ydataset = Dm.Users
        TitleField = 'Title'
        IDField = 'id'
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 224
    Top = 104
  end
  inherited ActionList: TActionList
    Left = 336
    Top = 120
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 335
    Top = 76
  end
  object tbMessage: TADODataSet
    Tag = 26
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = messagesAfterInsert
    BeforePost = messagesBeforePost
    AfterPost = messagesAfterPost
    CommandText = 
      'select * from UserMessage where from_ = :FromWhom order by MsgDa' +
      'te'
    Parameters = <
      item
        Name = 'FromWhom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 48
    Top = 56
    object tbMessageTo_: TIntegerField
      Tag = 27
      FieldName = 'To_'
    end
    object tbMessageCode: TIntegerField
      Tag = 28
      FieldName = 'Code'
    end
    object tbMessageFrom_: TIntegerField
      Tag = 29
      FieldName = 'From_'
    end
    object tbMessageMsgDate: TStringField
      Tag = 30
      FieldName = 'MsgDate'
      Size = 10
    end
    object tbMessageMsgTime: TStringField
      Tag = 31
      FieldName = 'MsgTime'
      Size = 6
    end
    object tbMessageSubject: TWideStringField
      Tag = 32
      Alignment = taRightJustify
      FieldName = 'Subject'
      Size = 50
    end
    object tbMessageStatus: TIntegerField
      Tag = 34
      FieldName = 'Status'
    end
    object tbMessageUserMessageID: TLargeintField
      FieldName = 'UserMessageID'
      ReadOnly = True
    end
    object tbMessageMessage: TMemoField
      FieldName = 'Message'
      BlobType = ftMemo
    end
  end
  object dsMessage: TDataSource
    Tag = 35
    AutoEdit = False
    DataSet = tbMessage
    Left = 48
    Top = 104
  end
  object dsspgetusernames: TDataSource
    Tag = 36
    AutoEdit = False
    Left = 144
    Top = 104
  end
end
