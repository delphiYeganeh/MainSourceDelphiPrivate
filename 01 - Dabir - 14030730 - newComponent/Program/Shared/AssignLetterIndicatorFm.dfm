inherited fmAssignLetterIndicator: TfmAssignLetterIndicator
  Left = 869
  Top = 184
  Caption = #1575#1582#1578#1589#1575#1589' '#1588#1605#1575#1585#1607' '#1606#1575#1605#1607
  ClientHeight = 186
  ClientWidth = 457
  Constraints.MinHeight = 220
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 457
    Height = 186
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 455
      Height = 148
      Align = alClient
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        455
        148)
      object lblMessage: TLabel
        Left = 8
        Top = 8
        Width = 424
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'Message'
        Color = 16771304
        ParentColor = False
        WordWrap = True
      end
      object IsCopy: TCheckBox
        Left = 223
        Top = 48
        Width = 209
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1662#1610#1608#1587#1578' '#1607#1575#1610' '#1606#1575#1605#1607' '#1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610' '#1588#1608#1583
        TabOrder = 0
      end
      object Proceed: TCheckBox
        Left = 239
        Top = 74
        Width = 193
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605#1607' '#1575#1586' '#1705#1575#1585#1578#1575#1576#1604' '#1583#1610#1711#1585' '#1705#1575#1585#1605#1606#1583#1575#1606' '#1581#1584#1601' '#1588#1608#1583
        TabOrder = 1
      end
      object ArchiveCurrent: TCheckBox
        Left = 264
        Top = 100
        Width = 168
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605#1607' '#1575#1586' '#1705#1575#1585#1578#1575#1576#1604'  '#1601#1593#1604#1610' '#1581#1584#1601' '#1588#1608#1583
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object IsCopy_In_Dabir: TCheckBox
        Left = 190
        Top = 128
        Width = 241
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1662#1610#1608#1587#1578#1607#1575#1610' '#1606#1575#1605#1607' '#1583#1585' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610' '#1588#1608#1583
        TabOrder = 3
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 149
      Width = 455
      Height = 36
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        455
        36)
      object BitBtn1: TAdvGlowButton
        Left = 357
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
        Left = 279
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
  end
  inherited DSForm: TDataSource
    Left = 48
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 8
    Top = 24
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
  end
  object ReCommites: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT R.*'#13#10'FROM ReCommites R '#13#10'where r.RecommiteID=:@RecommiteI' +
      'D'
    Parameters = <
      item
        Name = '@RecommiteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 89
    Top = 27
    object ReCommitesRecommiteID: TAutoIncField
      FieldName = 'RecommiteID'
      ReadOnly = True
    end
    object ReCommitesLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object ReCommitesID: TSmallintField
      FieldName = 'ID'
    end
    object ReCommitesType: TWordField
      FieldName = 'Type'
    end
    object ReCommitesParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object ReCommitesOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object ReCommitesParaph: TWideStringField
      FieldName = 'Paraph'
      Size = 500
    end
    object ReCommitesRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object ReCommitesUserID: TWordField
      FieldName = 'UserID'
    end
    object ReCommitesIsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object ReCommitesProceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object ReCommitesProceedDate: TStringField
      FieldName = 'ProceedDate'
      Size = 10
    end
    object ReCommitesstaffmemo: TWideStringField
      FieldName = 'staffmemo'
      Size = 255
    end
    object ReCommitesviewdate: TStringField
      FieldName = 'viewdate'
      FixedChar = True
      Size = 10
    end
    object ReCommitesOrgStaff: TWideStringField
      FieldName = 'OrgStaff'
      Size = 50
    end
    object ReCommitesDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object ReCommitesLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object ReCommitesActionTypeID: TWordField
      FieldName = 'ActionTypeID'
    end
  end
end
