inherited FrAddUser: TFrAddUser
  Tag = 2
  Left = 537
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 225
  ClientWidth = 481
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 481
    Height = 179
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      481
      179)
    object Label1: TLabel
      Left = 393
      Top = 118
      Width = 77
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
    end
    object Label3: TLabel
      Left = 424
      Top = 62
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 425
      Top = 90
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
    end
    object Label10: TLabel
      Left = 173
      Top = 90
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1705#1585#1575#1585
    end
    object Label9: TLabel
      Left = 432
      Top = 38
      Width = 38
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1705#1575#1605#1604
      FocusControl = DBEdit2
    end
    object Label2: TLabel
      Left = 388
      Top = 145
      Width = 66
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1583#1575#1606#1588#1711#1575#1607' '#1605#1585#1578#1576#1591
    end
    object Label5: TLabel
      Left = 375
      Top = 227
      Width = 87
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1583#1575#1606#1588#1711#1575#1607' '#1662#1610#1588' '#1601#1585#1590
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 30
      Top = 114
      Width = 349
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'AccessID'
      DataSource = Dm.Dsys_User
      KeyField = 'AccessID'
      ListField = 'AccessTitle'
      ListSource = Dm.Dsys_Access
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 228
      Top = 33
      Width = 151
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Title'
      DataSource = Dm.Dsys_User
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 228
      Top = 60
      Width = 151
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'UserName'
      DataSource = Dm.Dsys_User
      TabOrder = 1
    end
    object ActionToolBar1: TActionToolBar
      Left = 1
      Top = 1
      Width = 479
      Height = 30
      ActionManager = ActionManager
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      EdgeOuter = esRaised
      Orientation = boRightToLeft
      Spacing = 0
    end
    object Pass: TDBEdit
      Left = 228
      Top = 87
      Width = 151
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'PassWord'
      DataSource = Dm.Dsys_User
      PasswordChar = '*'
      TabOrder = 2
    end
    object ConfirmPass: TEdit
      Left = 30
      Top = 86
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      PasswordChar = '*'
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 30
      Top = 143
      Width = 349
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'UTID'
      DataSource = Dm.Dsys_User
      KeyField = 'UTID'
      ListField = 'UTName'
      ListSource = DataSource1
      TabOrder = 6
    end
    object CLBUTIDs: TYchecklistBox
      Left = 22
      Top = 224
      Width = 349
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Columns = 2
      ItemHeight = 13
      TabOrder = 7
      Ydataset = ADOQuery1
      TitleField = 'UTName'
      IDField = 'UTID'
    end
    object Button1: TButton
      Left = 5
      Top = 221
      Width = 22
      Height = 20
      Caption = '*'
      TabOrder = 8
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 179
    Width = 481
    Height = 46
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      481
      46)
    object BitBtn1: TxpBitBtn
      Left = 5
      Top = 10
      Width = 85
      Height = 29
      startColor = 16645629
      EndColor = 14666957
      Caption = #1578#1575#1610#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D002000000000000000000000000000000000000008080008080
        0080800080808000008000000080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800080000000
        8080008080008080008080008080008080008080008080008080008080008080
        8000000080000080000080000080008000000080800080800080800080800080
        8000808000808000808000808080000000800000800000800000800000800000
        8000800000008080008080008080008080008080008080008080800000008000
        00800000800000FF000080000080000080000080008000000080800080800080
        8000808000808000808000800000800000800000FF0000808000808000800000
        800000800080000000808000808000808000808000808000808000FF00008000
        00FF0000808000808000808000FF000080000080000080008000000080800080
        8000808000808000808000808000FF0000808000808000808000808000808000
        FF00008000008000008000800000008080008080008080008080008080008080
        00808000808000808000808000808000808000FF000080000080000080008000
        0000808000808000808000808000808000808000808000808000808000808000
        808000808000FF00008000008000008000800000008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000800080000000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        00808000808000808000808000808000808000808000808000808000808000FF
        0000800000800080000000808000808000808000808000808000808000808000
        808000808000808000808000808000808000FF00008000008000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000FF00008080}
      Gradient = True
      Anchors = [akLeft, akBottom]
      TabOrder = 0
      TabStop = True
      OnClick = BitBtn1Click
    end
  end
  inherited ActionList: TActionList
    Left = 72
    Top = 32
  end
  inherited xpWindow1: TxpWindow
    Left = 24
    Top = 16
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 171
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetDelete
            Caption = #1581#1584#1601' &Ctrl+Del'
            ImageIndex = 3
            ShortCut = 16430
          end
          item
            Action = DataSetEdit
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = DataSetPost
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            Caption = #1604#1594#1608' C&trl+Z'
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Action11
            Caption = '&Esc '#1582#1585#1608#1580
            ImageIndex = 12
            LastSession = 19
            ShortCut = 27
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end
              item
                Action = DataSetDelete
                ImageIndex = 3
                ShortCut = 16430
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1576#1585#1606#1575#1605#1607
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetNext1
            ImageIndex = 26
            LastSession = 137
          end
          item
            Action = DataSetPrior1
            ImageIndex = 1
            LastSession = 137
          end
          item
            Action = DataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end
          item
            Action = DataSetEdit
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 4
            ShortCut = 113
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetDelete
                ImageIndex = 3
                ShortCut = 16430
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetPrior1
                ImageIndex = 1
              end
              item
                Action = DataSetNext1
                ImageIndex = 26
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1576#1585#1606#1575#1605#1607
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 29
          end
          item
            Action = DataSetNext1
            ImageIndex = 30
          end
          item
            Action = DataSetEdit
            ImageIndex = 70
            ShortCut = 115
          end
          item
            Action = DataSetCancel
            ImageIndex = 69
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 38
            ShortCut = 113
          end
          item
            Action = DataSetInsert
            ImageIndex = 58
            ShortCut = 45
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 163
    Top = 40
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1705#1575#1585#1576#1585' '#1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 58
      ShortCut = 45
      OnExecute = DataSetInsertExecute
      DataSource = Dm.Dsys_User
    end
    object DataSetDelete: TDataSetDelete
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1581#1584#1601
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 10
      ShortCut = 16430
      DataSource = Dm.Dsys_User
    end
    object DataSetEdit: TDataSetEdit
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 70
      ShortCut = 115
      DataSource = Dm.Dsys_User
    end
    object DataSetPost: TDataSetPost
      Tag = 6
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 38
      ShortCut = 113
      OnExecute = DataSetPostExecute
      DataSource = Dm.Dsys_User
    end
    object DataSetCancel: TDataSetCancel
      Tag = 7
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 69
      ShortCut = 32776
      DataSource = Dm.Dsys_User
    end
    object Action11: TAction
      Tag = 18
      Category = #1576#1585#1606#1575#1605#1607
      Caption = #1582#1585#1608#1580
      ImageIndex = 0
      ShortCut = 27
      OnExecute = Action11Execute
    end
    object DataSetPrior1: TDataSetPrior
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1602#1576#1604#1610
      Hint = 'Prior'
      ImageIndex = 29
      OnExecute = DataSetPrior1Execute
      DataSource = Dm.Dsys_User
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 30
      OnExecute = DataSetNext1Execute
      DataSource = Dm.Dsys_User
    end
    object Action1: TAction
      Caption = '|'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      '  SELECT 0 UTID ,'#39#1578#1605#1575#1605' '#1583#1575#1606#1588#1711#1575#1607' '#1607#1575#39'  UTName'
      '  UNION ALL '
      '   SELECT  UTID ,  UTName FROM dbo.University AS U')
    Left = 416
    Top = 88
    object ADOQuery1UTID: TIntegerField
      FieldName = 'UTID'
    end
    object ADOQuery1UTName: TStringField
      FieldName = 'UTName'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 400
    Top = 40
  end
end
