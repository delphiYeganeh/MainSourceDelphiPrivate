object MainForm: TMainForm
  Tag = 8
  Left = 391
  Top = 154
  Width = 1022
  Height = 726
  BiDiMode = bdRightToLeft
  Caption = #1575#1578#1608#1605#1575#1587#1610#1608#1606' '#1575#1583#1575#1585#1610' '#1610#1711#1575#1606#1607' '
  Color = 16377053
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 53
    Width = 1006
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Color = clSkyBlue
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object ActionToolBar1: TActionToolBar
      Left = 2
      Top = 2
      Width = 1002
      Height = 26
      ActionManager = MainActionManager
      Align = alClient
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Orientation = boRightToLeft
      Spacing = 0
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 1006
    Height = 53
    UseSystemFont = False
    ActionManager = MainActionManager
    AnimateDuration = 500
    AnimationStyle = asFade
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    Spacing = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 659
    Width = 1006
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = True
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
    object status0: TPanel
      Left = 208
      Top = 0
      Width = 137
      Height = 28
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 0
    end
    object status1: TPanel
      Left = 800
      Top = 0
      Width = 70
      Height = 28
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 1
    end
    object status2: TPanel
      Left = 345
      Top = 0
      Width = 261
      Height = 28
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 2
    end
    object status3: TPanel
      Left = 724
      Top = 0
      Width = 76
      Height = 28
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 3
    end
    object status6: TPanel
      Left = 870
      Top = 0
      Width = 136
      Height = 28
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Caption = #1588#1585#1705#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object status4: TPanel
      Left = 606
      Top = 0
      Width = 118
      Height = 28
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 5
    end
    object statusSemat: TPanel
      Left = 0
      Top = 0
      Width = 208
      Height = 28
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 6
    end
  end
  object MainActionManager: TActionManager
    ActionBars.SessionCount = 599
    ActionBars = <
      item
        Items = <
          item
            Action = AinnerLetter
            ImageIndex = 5
            LastSession = 599
          end
          item
            Action = AnewRecommite
            ImageIndex = 3
            LastSession = 599
            ShortCut = 16463
          end
          item
            Action = Apicture
            ImageIndex = 23
            LastSession = 497
          end
          item
            Action = AExpotToWord
            ImageIndex = 27
            LastSession = 461
            ShortCut = 16471
          end
          item
            Action = AaddLetterData
            ImageIndex = 33
            LastSession = 599
          end
          item
            Action = Arecommite
            ImageIndex = 35
            LastSession = 384
            ShortCut = 16453
          end
          item
            Action = ADoCommite
            ImageIndex = 19
            LastSession = 577
          end
          item
            Action = ADarftIns
            ImageIndex = 30
            LastSession = 482
          end
          item
            Action = Action9
            ImageIndex = 1
            LastSession = 599
          end
          item
            Action = AAnswer
            ImageIndex = 2
            ShortCut = 16449
          end
          item
            Action = AArchive
            ImageIndex = 3
            LastSession = 599
          end
          item
            Action = AviewRecommite
            ImageIndex = 20
            LastSession = 599
          end
          item
            Action = ASign
            Caption = #1575#1605#1590#1575' '#1705#1606#1606#1583#1711#1575#1606
            ImageIndex = 9
          end
          item
            Action = APrintWord
            ImageIndex = 41
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = AAnswer
                ImageIndex = 34
                LastSession = 599
                ShortCut = 16449
              end
              item
                Action = AFollow
                ImageIndex = 13
                LastSession = 599
                ShortCut = 32805
              end
              item
                Action = AretroAction
                ImageIndex = 14
                LastSession = 599
                ShortCut = 16421
              end
              item
                Action = AviewAllletter
                ImageIndex = 46
                LastSession = 599
                ShortCut = 32781
              end
              item
                Action = Apicture
                ImageIndex = 22
                LastSession = 599
              end
              item
                Action = Arefresh
                ImageIndex = 57
                LastSession = 599
                ShortCut = 116
              end
              item
                Action = AEdit
                ImageIndex = 48
                LastSession = 599
                ShortCut = 32781
              end
              item
                Action = AExpotToWord
                ImageIndex = 23
                LastSession = 599
                ShortCut = 16471
              end
              item
                Action = AWordMain
                LastSession = 599
                ShortCut = 16461
              end
              item
                Action = ADarftIns
                ImageIndex = 53
                LastSession = 599
              end>
            Caption = #1605#1705#1575#1578#1576#1575#1578
          end
          item
            Items = <
              item
                Action = Arecommite
                ImageIndex = 52
                LastSession = 599
                ShortCut = 16453
              end
              item
                Action = ADoCommite
                ImageIndex = 9
                LastSession = 599
              end
              item
                Action = AnewRecommite
                ImageIndex = 55
                LastSession = 599
                ShortCut = 16463
              end>
            Caption = #1585#1608#1606#1608#1588#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          end
          item
            Items = <
              item
                Action = AUserSetting
                LastSession = 599
              end
              item
                Action = AsecChange
                ImageIndex = 3
                LastSession = 599
                ShortCut = 16452
              end
              item
                Action = ChangeYear
                ImageIndex = 57
                LastSession = 599
                ShortCut = 16473
              end
              item
                Action = AChangeColor
                LastSession = 599
              end
              item
                Action = AshortCut
                LastSession = 599
              end>
            Caption = #1705#1575#1585#1576#1585#1575#1606
          end>
        GlyphLayout = blGlyphRight
      end
      item
        Items = <
          item
            Items = <
              item
                Action = AActivate
                ImageIndex = 0
                LastSession = 599
              end
              item
                Action = AAnswer
                ImageIndex = 2
                LastSession = 599
                ShortCut = 16449
              end
              item
                Action = Arecommite
                ImageIndex = 35
                LastSession = 599
                ShortCut = 16453
              end
              item
                Action = AviewRecommite
                ImageIndex = 20
                LastSession = 599
              end
              item
                Action = ARecommiteList
                LastSession = 599
              end
              item
                Action = AnewRecommite
                ImageIndex = 3
                LastSession = 599
                ShortCut = 16463
              end
              item
                Action = ADoCommite
                ImageIndex = 19
                LastSession = 599
              end
              item
                Action = SendToSecretariat
                ImageIndex = 3
                LastSession = 599
              end
              item
                Action = ADraftToLetter
                ImageIndex = 32
                LastSession = 599
              end
              item
                Caption = '-'
                LastSession = 599
              end
              item
                Action = AinnerLetter
                ImageIndex = 5
                LastSession = 599
              end
              item
                Action = ADarftIns
                ImageIndex = 30
                LastSession = 599
              end
              item
                Action = AviewAllletter
                ImageIndex = 29
                LastSession = 599
                ShortCut = 32781
              end
              item
                Caption = '-'
                LastSession = 599
              end
              item
                Action = word2
                Caption = '&Word '#1662#1610#1608#1587#1578
                ImageIndex = 27
                LastSession = 599
                ShortCut = 16471
              end
              item
                Action = Action9
                ImageIndex = 1
                LastSession = 599
              end
              item
                Action = AdeleteWord
                Caption = '  W&ord '#1581#1584#1601
                ImageIndex = 8
                LastSession = 599
              end
              item
                Action = AaddLetterData
                ImageIndex = 33
                LastSession = 599
              end
              item
                Action = Apicture
                ImageIndex = 23
                LastSession = 599
              end
              item
                Action = ASaveAttachments
                ImageIndex = 42
                LastSession = 599
              end
              item
                Caption = '-'
                LastSession = 599
              end
              item
                Action = AretroAction
                ImageIndex = 22
                LastSession = 599
                ShortCut = 16421
              end
              item
                Action = AFollow
                ImageIndex = 12
                LastSession = 599
                ShortCut = 32805
              end
              item
                Caption = '-'
                LastSession = 599
              end
              item
                Action = Arefresh
                ImageIndex = 21
                LastSession = 599
                ShortCut = 116
              end
              item
                Action = AArchive
                ImageIndex = 3
                LastSession = 599
              end
              item
                Action = AviewArchiveNote
                ImageIndex = 24
                LastSession = 599
              end
              item
                Action = ABrowsArchive
                ImageIndex = 13
                LastSession = 599
              end
              item
                Caption = '-'
                LastSession = 599
              end
              item
                Action = Act_WorkGroup
                LastSession = 599
              end
              item
                Action = AEditSubject
                ImageIndex = 20
                LastSession = 599
              end>
            Caption = #1605#1705#1575#1578#1576#1575#1578
          end
          item
            Items = <
              item
                Action = AnewRecommite
                ImageIndex = 3
                LastSession = 599
                ShortCut = 16463
              end
              item
                Action = AviewRecommite
                ImageIndex = 20
                LastSession = 599
              end
              item
                Action = ADoCommite
                ImageIndex = 19
                LastSession = 599
              end
              item
                Action = Arecommite
                ImageIndex = 35
                LastSession = 599
                ShortCut = 16453
              end>
            Caption = #1585#1608#1606#1608#1588#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          end
          item
            Items = <
              item
                Action = Action1
                LastSession = 599
              end
              item
                Action = ChangeYear
                ImageIndex = 57
                LastSession = 599
                ShortCut = 16473
              end
              item
                Action = Ahelp
                LastSession = 599
                ShortCut = 112
              end
              item
                Action = AsecChange
                ImageIndex = 3
                LastSession = 599
                ShortCut = 16452
              end
              item
                Action = aarchiveOrganize
                LastSession = 599
                ShortCut = 16474
              end
              item
                Action = Action2
                ImageIndex = 5
                LastSession = 599
              end
              item
                Action = AswitchUser
                LastSession = 599
              end
              item
                Action = AAddAlternativeUser
                ImageIndex = 32
                LastSession = 599
              end
              item
                Action = AChangeOrgID
                ImageIndex = 21
                LastSession = 599
                ShortCut = 16454
              end
              item
                Action = AnotePad
                ImageIndex = 10
                LastSession = 599
              end>
            Caption = #1575#1605#1705#1575#1606#1575#1578
          end
          item
            Items = <
              item
                Action = LetterFollowUp
                LastSession = 599
              end
              item
                Action = Action7
                LastSession = 599
              end
              item
                Action = Action8
                LastSession = 599
              end>
            Caption = #1662#1610#1711#1610#1585#1610' '
          end
          item
            Items = <
              item
                Action = acShowWorkSheetBaseInCartable
                LastSession = 599
              end
              item
                Action = acMyWorkSheet
                LastSession = 599
              end
              item
                Action = acWorkSheetAllRepInCartable
                LastSession = 599
              end
              item
                Action = acShowWorkSheetResult
                LastSession = 599
              end>
            Caption = #1586#1610#1585' '#1587#1610#1587#1578#1605' '#1578#1602#1608#1610#1605' '#1705#1575#1585#1610' '#1608' '#1580#1604#1587#1575#1578
          end
          item
            Items = <
              item
                Action = AChangeColor
                LastSession = 599
              end
              item
                Action = ACustomizeGrid
                ImageIndex = 28
                LastSession = 599
              end
              item
                Action = AUserSetting
                LastSession = 599
              end
              item
                Action = AshortCut
                LastSession = 599
              end
              item
                Action = AchangePassword
                LastSession = 599
              end
              item
                Caption = '-'
                LastSession = 599
              end
              item
                Action = AGetMessage
                LastSession = 599
              end
              item
                Action = ASendMessage
                LastSession = 599
              end
              item
                Action = Email
                ImageIndex = 37
                LastSession = 599
              end
              item
                Action = ActPhone
                ImageIndex = 38
                LastSession = 599
                ShortCut = 16500
              end>
            Caption = #1705#1575#1585#1576#1585#1575#1606
          end
          item
            Items = <
              item
                Action = AFulltext
                LastSession = 599
              end
              item
                Action = ASearchAttachments
                LastSession = 599
              end
              item
                Action = acRepMohlateEghdam
                LastSession = 599
              end>
            Caption = #1711#1586#1575#1585#1588
          end
          item
            Items = <
              item
                Action = ASendMail
                LastSession = 599
              end>
            Caption = #1587#1585#1608#1610#1587' '#1607#1575
            LastSession = 599
          end
          item
            Caption = '-'
            LastSession = 599
          end
          item
            Action = Action2
            ImageIndex = 5
          end
          item
            Action = ASendMessage
            ImageIndex = 17
          end
          item
            Caption = '-'
            LastSession = 599
          end
          item
            Action = Action3
            ImageIndex = 12
          end
          item
            Action = Action4
            ImageIndex = 22
          end
          item
            Action = Arefresh
            ImageIndex = 21
            ShortCut = 116
          end
          item
            Action = ActPhone
            ImageIndex = 38
            ShortCut = 16500
          end>
        ActionBar = ActionMainMenuBar1
        GlyphLayout = blGlyphRight
      end
      item
        Items = <
          item
            Action = AFulltext
          end
          item
            Action = ASearchAttachments
          end
          item
            Action = AEdit
            ImageIndex = 29
            LastSession = 599
            ShortCut = 32781
          end
          item
            Action = Action1
          end
          item
            Action = acRepMohlateEghdam
          end
          item
            Action = AviewRecommite
            ImageIndex = 20
          end
          item
            Action = AnewRecommite
            ImageIndex = 3
            ShortCut = 16463
          end
          item
            Action = ADoCommite
            ImageIndex = 19
          end
          item
            Action = AAnswer
            ImageIndex = 2
            ShortCut = 16449
          end
          item
            Action = Arecommite
            ImageIndex = 35
            ShortCut = 16453
          end
          item
            Action = Arefresh
            ImageIndex = 21
            ShortCut = 116
          end>
        GlyphLayout = blGlyphRight
      end
      item
        GlyphLayout = blGlyphRight
      end
      item
        Items = <
          item
            Items = <
              item
                Action = AFollow
                ImageIndex = 12
                LastSession = 599
                ShortCut = 32805
              end
              item
                Action = AretroAction
                ImageIndex = 22
                LastSession = 599
                ShortCut = 16421
              end
              item
                Action = AviewAllletter
                ImageIndex = 29
                LastSession = 599
                ShortCut = 32781
              end
              item
                Action = Apicture
                ImageIndex = 23
                LastSession = 599
              end
              item
                Action = Arefresh
                ImageIndex = 21
                LastSession = 599
                ShortCut = 116
              end
              item
                Action = AEdit
                ImageIndex = 29
                LastSession = 599
                ShortCut = 32781
              end
              item
                Action = AExpotToWord
                Caption = ' '#1662#1610#1608#1587#1578' &Word '
                ImageIndex = 27
                LastSession = 599
                ShortCut = 16471
              end
              item
                Action = AWordMain
                Caption = 'w&ord '#1582#1608#1575#1606#1583#1606' '#1601#1575#1610#1604
                ImageIndex = 27
                LastSession = 599
                ShortCut = 16461
              end
              item
                Action = ADarftIns
                ImageIndex = 30
                LastSession = 599
              end
              item
                Action = AActivate
                ImageIndex = 0
                LastSession = 599
              end
              item
                Action = AArchive
                ImageIndex = 3
                LastSession = 599
              end
              item
                Action = AinnerLetter
                ImageIndex = 5
                LastSession = 599
              end
              item
                Action = AEditSubject
                ImageIndex = 20
                LastSession = 599
              end
              item
                Action = ABrowsArchive
                ImageIndex = 13
                LastSession = 599
              end
              item
                Action = AaddLetterData
                ImageIndex = 33
                LastSession = 599
              end
              item
                Action = AdeleteWord
                Caption = '  Wo&rd '#1581#1584#1601
                ImageIndex = 8
                LastSession = 599
              end
              item
                Action = Action9
                ImageIndex = 1
                LastSession = 599
              end
              item
                Action = aLoadFile
                LastSession = 599
              end
              item
                Action = Action5
                LastSession = 599
              end
              item
                Action = Act_WorkGroup
                LastSession = 599
              end
              item
                Action = SendToSecretariat
                ImageIndex = 3
                LastSession = 599
              end
              item
                Action = ADraftToLetter
                ImageIndex = 32
                LastSession = 599
              end
              item
                Action = ARecommiteList
                LastSession = 599
              end
              item
                Action = word2
                Caption = 'Wor&d '#1662#1610#1608#1587#1578
                ImageIndex = 27
                LastSession = 599
                ShortCut = 16471
              end
              item
                Action = Services
                LastSession = 599
              end
              item
                Action = ASendMail
                LastSession = 599
              end>
            Caption = #1605#1705#1575#1578#1576#1575#1578
          end>
        GlyphLayout = blGlyphRight
      end>
    Images = Dm.LetterImages
    PrioritySchedule.Strings = (
      '0=3'
      '1=3'
      '10=23'
      '11=23'
      '12=23'
      '13=23'
      '14=31'
      '15=31'
      '16=31'
      '17=31'
      '18=31'
      '19=31'
      '2=6'
      '20=31'
      '21=31'
      '22=31'
      '23=31'
      '24=31'
      '25=31'
      '3=9'
      '4=12'
      '5=12'
      '6=17'
      '7=17'
      '8=17'
      '9=23')
    OnExecute = MainActionManagerExecute
    Left = 42
    Top = 88
    StyleName = 'XP Style'
    object Arecommite: TAction
      Tag = 3
      Category = #1575#1585#1580#1575#1593
      Caption = #1587#1608#1575#1576#1602' '#1575#1585#1580#1575#1593
      ImageIndex = 35
      ShortCut = 16453
      OnExecute = ArecommiteExecute
    end
    object Aclose: TAction
      Tag = -1
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1582#1585#1608#1580' '#1575#1586' '#1587#1610#1587#1578#1605
      ShortCut = 27
      OnExecute = AcloseExecute
    end
    object AChangeColor: TAction
      Tag = 7
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1578#1594#1610#1610#1585' '#1592#1575#1607#1585' '#1587#1610#1587#1578#1605
      OnExecute = AChangeColorExecute
    end
    object AAnswer: TAction
      Tag = 8
      Category = #1575#1585#1580#1575#1593
      Caption = #1580#1608#1575#1576
      ImageIndex = 2
      ShortCut = 16449
      OnExecute = AAnswerExecute
    end
    object AFollow: TAction
      Tag = 9
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1662#1610#1585#1608
      ImageIndex = 12
      ShortCut = 32805
      OnExecute = AFollowExecute
    end
    object AretroAction: TAction
      Tag = 11
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1593#1591#1601
      ImageIndex = 22
      ShortCut = 16421
      OnExecute = AretroActionExecute
    end
    object AviewAllletter: TAction
      Tag = 16
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1580#1586#1574#1610#1575#1578' '#1606#1575#1605#1607
      ImageIndex = 29
      ShortCut = 32781
      OnExecute = AviewAllletterExecute
    end
    object AUserSetting: TAction
      Tag = 18
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1705#1575#1585#1576#1585#1610
      OnExecute = AUserSettingExecute
    end
    object Apicture: TAction
      Tag = 21
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1578#1589#1608#1610#1585
      ImageIndex = 23
      OnExecute = ApictureExecute
    end
    object Aspace: TAction
      Tag = -1
      Caption = '|'
    end
    object Arefresh: TAction
      Tag = -1
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1576#1575#1586#1610#1575#1576#1610
      ImageIndex = 21
      ShortCut = 116
      OnExecute = ArefreshExecute
    end
    object AAbout: TAction
      Tag = -1
      Caption = #1583#1585#1576#1575#1585#1607' '#1606#1585#1605' '#1575#1601#1586#1575#1585
    end
    object AEdit: TAction
      Tag = 16
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588'  '#1606#1575#1605#1607
      ImageIndex = 29
      ShortCut = 32781
      OnExecute = AEditExecute
    end
    object ChangeYear: TAction
      Tag = 22
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1578#1594#1610#1610#1585' '#1587#1575#1604' '#1580#1575#1585#1610
      ImageIndex = 57
      ShortCut = 16473
      OnExecute = ChangeYearExecute
    end
    object AExpotToWord: TAction
      Tag = 24
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = ' '#1662#1610#1608#1587#1578' Word '
      ImageIndex = 27
      ShortCut = 16471
      OnExecute = AExpotToWordExecute
    end
    object AWordMain: TAction
      Tag = 25
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = 'word '#1582#1608#1575#1606#1583#1606' '#1601#1575#1610#1604
      ImageIndex = 27
      ShortCut = 16461
      OnExecute = AWordMainExecute
    end
    object ADarftIns: TAction
      Tag = 26
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1579#1576#1578' '#1662#1610#1588' '#1606#1608#1610#1587' '#1589#1575#1583#1585#1607
      ImageIndex = 30
      OnExecute = ADarftInsExecute
    end
    object Ahelp: TAction
      Tag = -1
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1585#1575#1607#1606#1605#1575#1610' '#1705#1604#1610#1583' '#1607#1575#1610' '#1605#1610#1575#1606#1576#1585' '#1610#1711#1575#1606#1607
      ShortCut = 112
      OnExecute = AhelpExecute
    end
    object AsecChange: TAction
      Tag = 33
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1578#1594#1610#1610#1585' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1580#1575#1585#1610
      ShortCut = 16452
      OnExecute = AsecChangeExecute
    end
    object ADoCommite: TAction
      Tag = 82
      Category = #1575#1585#1580#1575#1593
      Caption = #1575#1602#1583#1575#1605' '#1608' '#1576#1575#1610#1711#1575#1606#1610
      ImageIndex = 19
      OnExecute = ADoCommiteExecute
    end
    object AnewRecommite: TAction
      Tag = 81
      Category = #1575#1585#1580#1575#1593
      Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
      ImageIndex = 3
      ShortCut = 16463
      OnExecute = AnewRecommiteExecute
    end
    object AshortCut: TAction
      Tag = 1
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1705#1604#1610#1583' '#1607#1575#1610' '#1605#1610#1575#1606#1576#1585
      OnExecute = AshortCutExecute
    end
    object AchangePassword: TAction
      Tag = 1
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1578#1594#1610#1610#1585' '#1603#1604#1605#1607' '#1593#1576#1608#1585
      OnExecute = AchangePasswordExecute
    end
    object AActivate: TAction
      Tag = 87
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1601#1593#1575#1604' '#1603#1585#1583#1606' '#1575#1610#1606' '#1575#1585#1580#1575#1593
      ImageIndex = 0
      OnExecute = AActivateExecute
    end
    object AArchive: TAction
      Tag = 6
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1576#1575#1610#1711#1575#1606#1610' '#1606#1575#1605#1607
      ImageIndex = 3
      OnExecute = AArchiveExecute
    end
    object aarchiveOrganize: TAction
      Tag = 43
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1578#1593#1585#1610#1601' '#1586#1608#1606#1603#1606' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610
      ShortCut = 16474
      OnExecute = aarchiveOrganizeExecute
    end
    object AswitchUser: TAction
      Tag = 103
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1582#1585#1608#1580' '#1608' '#1608#1585#1608#1583' '#1705#1575#1585#1576#1585' '#1583#1610#1711#1585
      OnExecute = AswitchUserExecute
    end
    object AviewArchiveNote: TAction
      Tag = 85
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1608#1610#1585#1575#1610#1588' '#1605#1578#1606' '#1576#1575#1610#1711#1575#1606#1610
      ImageIndex = 24
      OnExecute = AviewArchiveNoteExecute
    end
    object AnotePad: TAction
      Tag = 83
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1610#1575#1583#1583#1575#1588#1578' '#1607#1575
      ImageIndex = 10
      OnExecute = AnotePadExecute
    end
    object Action2: TAction
      Tag = 51
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1705#1575#1585#1576#1585#1575#1606' '#1601#1593#1575#1604' '#1583#1585' '#1588#1576#1705#1607
      ImageIndex = 5
      OnExecute = Action2Execute
    end
    object AviewRecommite: TAction
      Tag = 86
      Category = #1575#1585#1580#1575#1593
      Caption = #1605#1588#1575#1607#1583#1607' '#1575#1585#1580#1575#1593
      ImageIndex = 20
      OnExecute = AviewRecommiteExecute
    end
    object ACustomizeGrid: TAction
      Tag = 61
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1578#1606#1592#1610#1605' '#1587#1578#1608#1606' '#1607#1575#1610' '#1580#1583#1608#1604
      ImageIndex = 10
      OnExecute = ACustomizeGridExecute
    end
    object AinnerLetter: TAction
      Tag = 60
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1579#1576#1578' '#1606#1575#1605#1607' '#1583#1575#1582#1604#1610
      ImageIndex = 5
      OnExecute = AinnerLetterExecute
    end
    object ASendMessage: TAction
      Tag = 76
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1594#1575#1605
      ImageIndex = 17
      OnExecute = ASendMessageExecute
    end
    object AGetMessage: TAction
      Tag = 77
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1583#1585#1610#1575#1601#1578' '#1662#1610#1575#1605
      ImageIndex = 13
      OnExecute = AGetMessageExecute
    end
    object AEditSubject: TAction
      Tag = 79
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1605#1588#1582#1589#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
      ImageIndex = 20
      OnExecute = AEditSubjectExecute
    end
    object ABrowsArchive: TAction
      Tag = 80
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1576#1585#1585#1587#1610' '#1587#1575#1576#1602#1607' '#1576#1585' '#1575#1587#1575#1587
      ImageIndex = 13
      OnExecute = ABrowsArchiveExecute
    end
    object Action3: TAction
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1581#1575#1604#1578' '#1575#1606#1578#1592#1575#1585
      ImageIndex = 12
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1608#1585#1608#1583' '#1705#1575#1585#1576#1585' '#1583#1610#1711#1585
      ImageIndex = 22
      OnExecute = Action4Execute
    end
    object AaddLetterData: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1662#1610#1608#1587#1578' '#1607#1575#1610' '#1606#1575#1605#1607
      ImageIndex = 33
      OnExecute = AaddLetterDataExecute
    end
    object AdeleteWord: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = '  Word '#1581#1584#1601
      ImageIndex = 8
      OnExecute = AdeleteWordExecute
    end
    object LetterFollowUp: TAction
      Category = #1662#1610#1711#1610#1585#1610' '
      Caption = #1575#1610#1580#1575#1583' '#1586#1606#1580#1610#1585#1607' '#1662#1610#1711#1610#1585#1610' '#1606#1575#1605#1607
      OnExecute = LetterFollowUpExecute
    end
    object Action7: TAction
      Category = #1662#1610#1711#1610#1585#1610' '
      Caption = #1575#1610#1580#1575#1583' '#1662#1610#1711#1610#1585#1610
      OnExecute = Action7Execute
    end
    object Action8: TAction
      Category = #1662#1610#1711#1610#1585#1610' '
      Caption = #1606#1605#1575#1610#1588' '#1662#1606#1580#1585#1607' '#1662#1610#1711#1610#1585#1610
      OnExecute = Action8Execute
    end
    object F9Key: TAction
      Tag = -1
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = 'F9Key'
      ShortCut = 120
      OnExecute = F9KeyExecute
    end
    object Action1: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
      OnExecute = Action1Execute
    end
    object Action6: TAction
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1570#1605#1575#1585' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
      OnExecute = Action6Execute
    end
    object AAddAlternativeUser: TAction
      Tag = 112
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1578#1593#1610#1610#1606' '#1580#1575#1606#1588#1610#1606' '#1605#1608#1602#1578
      ImageIndex = 32
      OnExecute = AAddAlternativeUserExecute
    end
    object AChangeOrgID: TAction
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1583#1610#1583#1606' '#1705#1575#1585#1578#1575#1576#1604' '#1607#1575#1610' '#1583#1610#1711#1585
      ImageIndex = 21
      ShortCut = 16454
      OnExecute = AChangeOrgIDExecute
    end
    object Action9: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
      ImageIndex = 1
      OnExecute = Action9Execute
    end
    object aLoadFile: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1582#1608#1575#1606#1583#1606' '#1587#1585#1610#1593' '#1601#1575#1610#1604' '#1607#1575' '
      OnExecute = aLoadFileExecute
    end
    object Action5: TAction
      Tag = 105
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1606#1605#1575#1610#1588' '#1604#1610#1587#1578' '#1582#1576#1585#1607#1575
      OnExecute = Action5Execute
    end
    object Email: TAction
      Tag = 109
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1575#1610#1605#1610#1604
      ImageIndex = 37
      OnExecute = EmailExecute
    end
    object Act_WorkGroup: TAction
      Tag = 102
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1575#1585#1580#1575#1593#1575#1578
      OnExecute = Act_WorkGroupExecute
    end
    object SendToSecretariat: TAction
      Tag = 84
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1583#1576#1610#1585#1582#1575#1606#1607
      ImageIndex = 3
      OnExecute = SendToSecretariatExecute
    end
    object ActPhone: TAction
      Tag = 107
      Category = #1705#1575#1585#1576#1585#1575#1606
      Caption = #1583#1601#1578#1585#1670#1607' '#1578#1604#1601#1606
      ImageIndex = 38
      ShortCut = 16500
      OnExecute = ActPhoneExecute
    end
    object ADraftToLetter: TAction
      Tag = 27
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1575#1582#1578#1589#1575#1589' '#1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607
      ImageIndex = 32
      OnExecute = ADraftToLetterExecute
    end
    object Action12: TAction
      Tag = -1
      Caption = 'Action12'
      ShortCut = 16459
      OnExecute = Action12Execute
    end
    object ARecommiteList: TAction
      Tag = 1
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1604#1610#1587#1578' '#1575#1585#1580#1575#1593#1575#1578' '#1576#1585#1575#1610' '#1670#1575#1662
      OnExecute = ARecommiteListExecute
    end
    object acRepMohlateEghdam: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1576#1585#1585#1587#1610' '#1605#1607#1604#1578' '#1575#1602#1583#1575#1605' '#1606#1575#1605#1607' '#1607#1575
      OnExecute = acRepMohlateEghdamExecute
    end
    object acShowWorkSheetBaseInCartable: TAction
      Category = #1586#1610#1585' '#1587#1610#1587#1578#1605' '#1578#1602#1608#1610#1605' '#1705#1575#1585#1610' '#1608' '#1580#1604#1587#1575#1578
      Caption = #1585#1586#1585#1608' '#1580#1604#1587#1607' / '#1605#1604#1575#1602#1575#1578' '#1608' '#1594#1610#1585#1607
      OnExecute = acShowWorkSheetBaseInCartableExecute
    end
    object acMyWorkSheet: TAction
      Category = #1586#1610#1585' '#1587#1610#1587#1578#1605' '#1578#1602#1608#1610#1605' '#1705#1575#1585#1610' '#1608' '#1580#1604#1587#1575#1578
      Caption = #1578#1602#1608#1610#1605' '#1705#1575#1585#1610' '#1705#1575#1585#1576#1585
      OnExecute = acMyWorkSheetExecute
    end
    object acWorkSheetAllRepInCartable: TAction
      Category = #1586#1610#1585' '#1587#1610#1587#1578#1605' '#1578#1602#1608#1610#1605' '#1705#1575#1585#1610' '#1608' '#1580#1604#1587#1575#1578
      Caption = #1711#1586#1575#1585#1588' '#1705#1604#1610
      OnExecute = acWorkSheetAllRepInCartableExecute
    end
    object acShowWorkSheetResult: TAction
      Category = #1586#1610#1585' '#1587#1610#1587#1578#1605' '#1578#1602#1608#1610#1605' '#1705#1575#1585#1610' '#1608' '#1580#1604#1587#1575#1578
      Caption = #1579#1576#1578' '#1606#1578#1575#1610#1580' '#1580#1604#1587#1607
      OnExecute = acShowWorkSheetResultExecute
    end
    object AFulltext: TAction
      Tag = 32
      Category = #1711#1586#1575#1585#1588
      Caption = #1580#1587#1578#1580#1608' '#1610' '#1605#1601#1607#1608#1605#1610' '#1583#1585' '#1605#1578#1606' '#1606#1575#1605#1607' '#1607#1575
      OnExecute = AFulltextExecute
    end
    object ASign: TAction
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1575#1605#1590#1575#1705#1606#1606#1583#1711#1575#1606
      ImageIndex = 9
      OnExecute = ASignExecute
    end
    object APrintWord: TAction
      Caption = #1670#1575#1662' '#1605#1578#1606' '#1576#1575' '#1575#1605#1590#1575
      ImageIndex = 41
      OnExecute = APrintWordExecute
    end
    object ASearchAttachments: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1605#1578#1606' '#1662#1610#1608#1587#1578' '#1607#1575#1610' '#1606#1575#1605#1607
      OnExecute = ASearchAttachmentsExecute
    end
    object word2: TAction
      Tag = 24
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = 'Word '#1662#1610#1608#1587#1578
      ImageIndex = 27
      ShortCut = 16471
      OnExecute = AExpotToWordExecute
    end
    object Services: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1587#1585#1608#1610#1587' '#1607#1575
    end
    object ASendMail: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1575#1585#1587#1575#1604' '#1575#1610#1605#1610#1604
      ImageIndex = 37
      OnExecute = ASendMailExecute
    end
    object ASaveAttachments: TAction
      Category = #1605#1705#1575#1578#1576#1575#1578
      Caption = #1584#1582#1610#1585#1607' '#1662#1610#1608#1587#1578' '#1607#1575
      ImageIndex = 42
      OnExecute = ASaveAttachmentsExecute
    end
    object Action10: TAction
      Category = #1575#1605#1705#1575#1606#1575#1578
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1608#1585#1688#1606
      ShortCut = 16457
      OnExecute = Action10Execute
    end
  end
  object Timer: TTimer
    Interval = 5000
    OnTimer = TimerTimer
    Left = 522
    Top = 184
  end
  object CiaTray: TCiaTray
    PopupMenu = PopupMenu1
    Version = '1.00'
    Left = 522
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 522
    Top = 132
    object N1: TMenuItem
      Caption = #1601#1593#1575#1604' '#1588#1583#1606' '#1606#1585#1605' '#1575#1601#1586#1575#1585
      Default = True
      OnClick = N1Click
    end
    object o1: TMenuItem
      Caption = #1582#1585#1608#1580' '
      OnClick = o1Click
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Word 2003 files|*.doc|Word 2007 Files|*.docx'
    Left = 522
    Top = 236
  end
  object QTemp: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 608
    Top = 152
  end
  object Charset: TTimer
    Interval = 50000
    OnTimer = CharsetTimer
    Left = 836
    Top = 185
  end
  object qryAllAttachmentsWithoutWord: TADOQuery
    Connection = Dm.YeganehConnection
    CommandTimeout = 600
    Parameters = <
      item
        Name = 'p1'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select LD.LetterDataID, LD.[Image],E.Extention'
      
        '  FROM LetterData LD INNER JOIN Extention E ON LD.extention = E.' +
        'ExtentionID'
      'WHERE LetterID = :p1'#10
      'AND LD.extention <> 3')
    Left = 386
    Top = 293
    object qryAllAttachmentsWithoutWordLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object qryAllAttachmentsWithoutWordImage: TBlobField
      FieldName = 'Image'
    end
    object qryAllAttachmentsWithoutWordExtention: TStringField
      FieldName = 'Extention'
      Size = 5
    end
  end
  object AppTerminate: TTimer
    Enabled = False
    OnTimer = AppTerminateTimer
    Left = 689
    Top = 141
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'ID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DefualtSecretariatID'
      'FROM  dbo.Users'
      'WHERE Id =:ID')
    Left = 704
    Top = 280
    object ADOQuery1DefualtSecretariatID: TIntegerField
      FieldName = 'DefualtSecretariatID'
    end
  end
  object Sp_Inbox2: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'sp_inbox2;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@SecretariatID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterFormat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@OrgID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Proceeded'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@date'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@ArchiveFolderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DeadLine'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@orderClause'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@top'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DayOfNow'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@WebOrWin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 256
    Top = 200
    object Sp_Inbox2SubjectTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'SubjectTitle'
      LookupKeyFields = 'SubjectID'
      LookupResultField = 'SubjectTitle'
      KeyFields = 'SubjectID'
      Lookup = True
    end
    object Sp_Inbox2ToOrgRsponsibleStafferTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ToOrgRsponsibleStafferTitle'
      LookupDataSet = Dm.ToOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'ToOrgID'
      Size = 50
      Lookup = True
    end
    object Sp_Inbox2FromResponsibleStafferTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromResponsibleStafferTitle'
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Sp_Inbox2ToOrgTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ToOrgTitle'
      LookupDataSet = Dm.ToOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ToOrgID'
      Size = 255
      Lookup = True
    end
    object Sp_Inbox2UrgencyTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UrgencyTitle'
      LookupDataSet = Dm.Urgenceis
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'UrgencyID'
      Size = 100
      Lookup = True
    end
    object Sp_Inbox2ClassificationTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ClassificationTitle'
      LookupDataSet = Dm.Classifications
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ClassificationID'
      Size = 100
      Lookup = True
    end
    object Sp_Inbox2FromOrgTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromOrgTitle'
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Sp_Inbox2ActionTypeTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'ActionTypeTitle'
      LookupKeyFields = 'ActionTypeID'
      LookupResultField = 'ActionTypeTitle'
      KeyFields = 'ActionTypeID'
      Lookup = True
    end
    object Sp_Inbox2LetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Sp_Inbox2IndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Sp_Inbox2MYear: TWordField
      FieldName = 'MYear'
    end
    object Sp_Inbox2SecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Sp_Inbox2ClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object Sp_Inbox2UrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object Sp_Inbox2ReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object Sp_Inbox2UserID: TIntegerField
      FieldName = 'UserID'
    end
    object Sp_Inbox2OrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object Sp_Inbox2ParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object Sp_Inbox2Proceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object Sp_Inbox2recommiteid: TAutoIncField
      FieldName = 'recommiteid'
      ReadOnly = True
    end
    object Sp_Inbox2id: TSmallintField
      FieldName = 'id'
    end
    object Sp_Inbox2IsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object Sp_Inbox2has_Page: TBooleanField
      FieldName = 'has_Page'
      ReadOnly = True
    end
    object Sp_Inbox2has_WordPage: TBooleanField
      FieldName = 'has_WordPage'
      ReadOnly = True
    end
    object Sp_Inbox2has_file: TBooleanField
      FieldName = 'has_file'
      ReadOnly = True
    end
    object Sp_Inbox2ActionTypeID: TWordField
      FieldName = 'ActionTypeID'
    end
    object Sp_Inbox2toorgid: TIntegerField
      FieldName = 'toorgid'
    end
    object Sp_Inbox2fromorgid: TIntegerField
      FieldName = 'fromorgid'
    end
    object Sp_Inbox2finalized: TBooleanField
      FieldName = 'finalized'
    end
    object Sp_Inbox2sentletterid: TIntegerField
      FieldName = 'sentletterid'
    end
    object Sp_Inbox2SignerID: TWideStringField
      FieldName = 'SignerID'
      Size = 50
    end
    object Sp_Inbox2templateID: TIntegerField
      FieldName = 'templateID'
    end
    object Sp_Inbox2headerID: TIntegerField
      FieldName = 'headerID'
    end
    object Sp_Inbox2fromstaffer: TWideStringField
      FieldName = 'fromstaffer'
      Size = 50
    end
    object Sp_Inbox2sendStatusID: TWordField
      FieldName = 'sendStatusID'
    end
    object Sp_Inbox2LastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object Sp_Inbox2UserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object Sp_Inbox2UserRecomCount: TIntegerField
      FieldName = 'UserRecomCount'
      ReadOnly = True
    end
    object Sp_Inbox2IsAnswer: TBooleanField
      FieldName = 'IsAnswer'
    end
    object Sp_Inbox2ISFollowup: TBooleanField
      FieldName = 'ISFollowup'
    end
    object Sp_Inbox2IsAnswerTitle: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1580#1608#1575#1576#1583#1607#1610
      FieldKind = fkCalculated
      FieldName = 'IsAnswerTitle'
      Size = 15
      Calculated = True
    end
    object Sp_Inbox2subjectid: TIntegerField
      FieldName = 'subjectid'
    end
    object Sp_Inbox2MyTmp_ID: TAutoIncField
      FieldName = 'MyTmp_ID'
      ReadOnly = True
    end
    object Sp_Inbox2IsCopy_In_Dabir: TBooleanField
      FieldName = 'IsCopy_In_Dabir'
    end
    object Sp_Inbox2SentToDabir: TBooleanField
      FieldName = 'SentToDabir'
    end
    object Sp_Inbox2Letter_Type: TIntegerField
      FieldName = 'Letter_Type'
    end
    object Sp_Inbox2letterformat: TIntegerField
      FieldName = 'letterformat'
    end
    object Sp_Inbox2IncommingNO: TStringField
      FieldName = 'IncommingNO'
      Size = 40
    end
    object Sp_Inbox2Incommingdate: TStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Sp_Inbox2Memo: TStringField
      FieldName = 'Memo'
      Size = 1500
    end
    object Sp_Inbox2Tostaffer: TStringField
      FieldName = 'Tostaffer'
      Size = 150
    end
    object Sp_Inbox2AttachTitle: TStringField
      FieldName = 'AttachTitle'
      Size = 150
    end
    object Sp_Inbox2NumberOfAttachPages: TIntegerField
      FieldName = 'NumberOfAttachPages'
    end
    object Sp_Inbox2NumberOfPage: TIntegerField
      FieldName = 'NumberOfPage'
    end
    object Sp_Inbox2RetroactionNo: TStringField
      FieldName = 'RetroactionNo'
    end
    object Sp_Inbox2UserMemo: TStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object Sp_Inbox2RegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      Size = 10
    end
    object Sp_Inbox2FollowLetterNo: TStringField
      FieldName = 'FollowLetterNo'
    end
    object Sp_Inbox2LetterRecommites: TStringField
      FieldName = 'LetterRecommites'
      Size = 1000
    end
    object Sp_Inbox2CenterNo: TStringField
      FieldName = 'CenterNo'
    end
    object Sp_Inbox2CenterDate: TStringField
      FieldName = 'CenterDate'
      Size = 10
    end
    object Sp_Inbox2registrationTime: TStringField
      FieldName = 'registrationTime'
      Size = 6
    end
    object Sp_Inbox2InnerNo: TStringField
      FieldName = 'InnerNo'
      Size = 50
    end
    object Sp_Inbox2Paraph: TStringField
      FieldName = 'Paraph'
      Size = 2000
    end
    object Sp_Inbox2RecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object Sp_Inbox2ProceedDate: TStringField
      FieldName = 'ProceedDate'
      Size = 10
    end
    object Sp_Inbox2ReType: TSmallintField
      FieldName = 'ReType'
    end
    object Sp_Inbox2RecommitTypeTitle: TStringField
      FieldName = 'RecommitTypeTitle'
      Size = 50
    end
    object Sp_Inbox2IsInner: TIntegerField
      FieldName = 'IsInner'
    end
    object Sp_Inbox2RecommiterTitle: TStringField
      FieldName = 'RecommiterTitle'
      Size = 75
    end
    object Sp_Inbox2sendertitle: TStringField
      FieldName = 'sendertitle'
      Size = 100
    end
    object Sp_Inbox2StaffMemo: TStringField
      FieldName = 'StaffMemo'
      Size = 250
    end
    object Sp_Inbox2Yincommingno: TStringField
      FieldName = 'Yincommingno'
      Size = 50
    end
    object Sp_Inbox2PreCode: TStringField
      FieldName = 'PreCode'
    end
    object Sp_Inbox2DeadLineDays: TIntegerField
      FieldName = 'DeadLineDays'
    end
    object Sp_Inbox2ViewDate: TStringField
      FieldName = 'ViewDate'
      Size = 10
    end
    object Sp_Inbox2DeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      Size = 10
    end
    object Sp_Inbox2ChildParaph: TStringField
      FieldName = 'ChildParaph'
      Size = 300
    end
    object Sp_Inbox2ChildOrg: TStringField
      DisplayWidth = 20
      FieldName = 'ChildOrg'
      Size = 200
    end
    object Sp_Inbox2Erja_Or_Answer_Date: TStringField
      FieldName = 'Erja_Or_Answer_Date'
      Size = 10
    end
    object Sp_Inbox2ColorFlag: TStringField
      FieldName = 'ColorFlag'
    end
    object Sp_Inbox2IsSecure: TBooleanField
      FieldName = 'IsSecure'
    end
    object Sp_Inbox2MemoAndRecomUserCount: TStringField
      FieldName = 'MemoAndRecomUserCount'
      Size = 200
    end
    object Sp_Inbox2Has_Sign: TBooleanField
      FieldName = 'Has_Sign'
    end
    object Sp_Inbox2SecretariatTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'SecretariatTitle'
      LookupDataSet = Dm.Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'SecTitle'
      KeyFields = 'SecretariatID'
      Size = 30
      Lookup = True
    end
    object Sp_Inbox2innerNo2: TStringField
      FieldName = 'innerNo2'
      Size = 500
    end
    object Sp_Inbox2RecommiteTime: TStringField
      FieldName = 'RecommiteTime'
      Size = 5
    end
    object Sp_Inbox2HasLetterForms: TBooleanField
      FieldName = 'HasLetterForms'
    end
    object Sp_Inbox2anjam_shod_status: TIntegerField
      FieldName = 'anjam_shod_status'
    end
  end
end
