object MainForm: TMainForm
  Left = 287
  Top = 300
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 365
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 64
    Width = 417
    Height = 281
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object Label2: TLabel
      Left = 224
      Top = 64
      Width = 49
      Height = 13
      Caption = 'Select file:'
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 76
      Height = 13
      Caption = 'Select directory:'
    end
    object Label4: TLabel
      Left = 24
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Choose drive:'
    end
    object FileListBox1: TFileListBox
      Left = 224
      Top = 80
      Width = 169
      Height = 185
      BevelKind = bkFlat
      ItemHeight = 16
      MultiSelect = True
      PopupMenu = AddMenu
      ShowGlyphs = True
      TabOrder = 0
      OnChange = FileListBox1Change
      OnDblClick = FileListBox1DblClick
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 24
      Top = 80
      Width = 169
      Height = 185
      BevelKind = bkFlat
      FileList = FileListBox1
      ItemHeight = 16
      PopupMenu = AddMenu
      TabOrder = 1
      OnContextPopup = DirectoryListBox1ContextPopup
    end
    object DriveComboBox1: TDriveComboBox
      Left = 24
      Top = 24
      Width = 169
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 2
    end
    object mComment: TMemo
      Left = 224
      Top = -80
      Width = 185
      Height = 89
      BevelKind = bkFlat
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
    object Label1: TEdit
      Left = 24
      Top = 48
      Width = 377
      Height = 13
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 449
    Height = 36
    ButtonHeight = 32
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 1
    object ToolButton8: TToolButton
      Left = 0
      Top = 2
      Action = ANew
      Caption = '&Create archive'
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 32
      Top = 2
      Action = AOpen
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton3: TToolButton
      Left = 64
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 72
      Top = 2
      Action = AAdd
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton5: TToolButton
      Left = 104
      Top = 2
      Action = AExtract
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton7: TToolButton
      Left = 136
      Top = 2
      Hint = 'Update files in archive'
      Action = AUpdate
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton1: TToolButton
      Left = 168
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 176
      Top = 2
      Action = AClose
      ParentShowHint = False
      ShowHint = True
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 312
    Top = 16
    object File1: TMenuItem
      Caption = 'File'
      object Createarchive1: TMenuItem
        Action = ANew
        Caption = '&Create archive'
      end
      object Open1: TMenuItem
        Action = AOpen
      end
      object Close1: TMenuItem
        Action = AClose
      end
      object Separator: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = ACloseApp
      end
    end
    object Actions1: TMenuItem
      Caption = 'Actions'
      object Add1: TMenuItem
        Action = AAdd
      end
      object Extract1: TMenuItem
        Action = AExtract
      end
      object Updatearchive2: TMenuItem
        Action = AUpdate
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Action = AAbout
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 280
    Top = 16
    object AOpen: TAction
      Caption = '&Open Archive'
      Hint = 'Open an existing archive'
      ImageIndex = 4
      OnExecute = AOpenExecute
    end
    object AClose: TAction
      Caption = '&Close Archive'
      Enabled = False
      Hint = 'Close archive'
      ImageIndex = 1
      OnExecute = ACloseExecute
    end
    object AAdd: TAction
      Caption = '&Add...'
      Hint = 'Add files to the archive'
      ImageIndex = 3
      OnExecute = AAddExecute
    end
    object AExtract: TAction
      Caption = '&Extract...'
      Enabled = False
      Hint = 'Extract files from the archive'
      ImageIndex = 2
      OnExecute = AExtractExecute
    end
    object ACloseApp: TAction
      Caption = '&Exit'
      ImageIndex = 6
      OnExecute = ACloseAppExecute
    end
    object AAbout: TAction
      Caption = '&About...'
      OnExecute = AAboutExecute
    end
    object AUpdate: TAction
      Caption = '&Update archive...'
      Enabled = False
      Hint = 'Update selected archive'
      ImageIndex = 7
      OnExecute = AUpdateExecute
    end
    object ANew: TAction
      Caption = 'ANew'
      Hint = 'Create a new archive...'
      ImageIndex = 8
      OnExecute = ANewExecute
    end
  end
  object ImageList1: TImageList
    Left = 344
    Top = 16
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000EF3DEF3DEF3D
      E07FE07FEF3DEF3DEF3DEF3DE07FE07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F0000000000000000
      000000000000000000000000E07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E07FE07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07FE07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7F0000E07F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000E07FE07F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F0000000000000000
      00000000000000000000E07FE07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E07F000000000000000000000000
      E07F0000000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF3D0000EF3DEF3D000000000000E07FE07F0000104210421042
      E07FE07F1042104210421042E07FE07F000000000000000000000000FF7F1042
      007C1042FF7F0000000000000000000000000000000000000040E07FE07FE07F
      E07FE07FE07FE07FE07F00000000000000000000000000000000000000000000
      000000000000F75E0000F75EF75E0000000000000000E07F0000000000000000
      000000000000000000000000E07F00000000000000000000E07FFF7FE07F007C
      007C007CE07FFF7FE07F000000000000000000000000000000400040E07FE07F
      E07FE07FE07FE07FE07F00000000000000000000000000000000000000000000
      000000000000F75EF75EF75EF75E000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000010420000000000000000E07FFF7FE07FFF7F1042
      007C1042FF7FE07FFF7FE07F000000000000000000000000004000400040E07F
      E07FE07FE07FE07FE07F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00001042000000000000E07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07FFF7FE07F000000000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7F00000000
      FF7F000000000000FF7F00001042000000000000FF7FE07FFF7FE07FFF7FE07F
      007CE07FFF7FE07FFF7FE07FFF7F000000000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000104200000000FF7FE07FFF7FE07FFF7FE07FFF7F
      007C1042E07FFF7FE07FFF7FE07FFF7F00000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7FFF7FFF7FFF7F0000E07FE07FE07F0000FF7F00000000
      00000000FF7F0000FF7F0000E07FE07F0000E07FFF7FE07FFF7FE07FFF7FE07F
      007C007CFF7FE07FFF7FE07FFF7FE07F00000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7F00000000FF7F00000000
      F75E00001F001F001F00007C1F001F0000000000E07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07FE07FFF7FE07FFF7FE07FFF7FE07FFF7F
      E07F007C007CFF7FE07FFF7FE07FFF7F00000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000000007C007C007C000000000000000000000000FF7F00000000
      FF7F00000000000000000000000000000000E07FFF7FE07FFF7F10421042E07F
      FF7F1042007C007CFF7FE07FFF7FE07F00000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7F0000000000000000FF7F
      0000FF7F0000007C007C007C007C007C00000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F00000000000000000000FF7FE07FFF7FE07F007C007CFF7F
      E07F1042007C007CE07FFF7FE07FFF7F0000000000000000004000400040E07F
      0000E07FE07FE07FE07F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F007C007C007C007C007C007C007C0000000000000000FF7F00001863
      FF7F0000FF7F0000E07F00000000000000000000FF7FE07FFF7F007C007C1042
      FF7F1042007C007CFF7FE07FFF7F000000000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7F00000000FF7F00000000
      0000000000000000007C007C007C000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000E07FE07F0000000000000000E07FFF7FE07FFF7F007C007C
      007C007C007CFF7FE07FFF7FE07F000000000000000000000040004000400000
      E07FE07FE07FE07FE07F00000000000000000000FF7FFF7FFF7FFF7F0000FF7F
      FF7F000000000000007C007C007C0000000000000000E07F0000000000000000
      00000000000000000000E07FE07F0000000000000000E07FFF7FE07FFF7F007C
      007C007CFF7FE07FFF7FE07F0000000000000000000000000040FF0300400000
      E07FE07FE07FE07FE07F00000000000000000000FF7F0000F75EFF7F0000FF7F
      000000000000EF3D007C007C007C000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F0000000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000000000000040FF03FF030000
      E07FE07FE07FE07FE07F00000000000000000000FF7FFF7FFF7FFF7F00000000
      0000007C007C007C007C007C000000000000E07F000000000000000000000000
      E07F0000000000000000000000000000E07F00000000000000000000FF7FE07F
      FF7FE07FFF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000104210421042
      E07FE07F1042104210421042E07FE07F00000000E07F00000000000000000000
      E07FE07F00000000000000000000E07F00000000000000000000000000000000
      000000000000007C000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F0000000000000000
      000000000000000000000000E07F000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F00000000000000000000000000000000
      000000000000007C007C00000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000010420000000000000000E07FE07F104210421042
      E07FE07F104210421042E07FE07F00000000000000000000000000000000007C
      007C007C007C007C007C007C0000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00001042000000000000000000000000000000000000
      00000000000000000000E07F0000000000000000FF7FFF7FFF7FFF7F0000007C
      007C007C007C007C007C007C007C000000000000000000000000000000000000
      FF7F00000000FF7F000000000000FF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000104200000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000FF7FFF7FFF7FFF7F0000007C
      007C007C007C007C007C007C007C007C00000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000104200000000000000000000FF7F00000000FF7F
      000000000000FF7F000000000000000000000000FF7F00000000FF7F0000007C
      007C007C007C007C007C007C007C00000000000000000000007C000000000000
      FF7F0000186300000000FF7F0000FF7F0000E07FE07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07F0000E07FE07F0000FF7FFF7FFF7F1863
      FF7FFF7FFF7FFF7F0000E07FE07FE07F00000000FF7FFF7FFF7FFF7F0000007C
      007C007C007C007C007C007C000000000000000000000000007C007C00000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000E07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07FE07F0000E07F0000FF7F000018631042
      00000000000000000000000000000000E07F0000FF7F00000000FF7FFF7FFF7F
      FF7FFF7F0000007C007C00000000000000000000007C007C007C007C007C0000
      FF7F00000000FF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000001863186318630000
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000007C000000000000000000000000007C007C007C007C007C007C
      0000FF7FFF7FFF7F0000FF7FFF7F000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F00000000000000000000000000000000186300001042FF7F
      FF7FFF7FFF7FFF7F186300000000000000000000FF7F00000000FF7F00000000
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      007C00001863FF7F0000FF7F0000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7F0000E07F00000000000000000000000000000000000000000000
      00000000000000000000E07F0000000000000000FF7FFF7FFF7FFF7F0000FF7F
      FF7F000000000000000000000000000000000000007C007C007C007C007C007C
      0000FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000E07FE07F00000000000000000000E07FE07F000000000000
      E07FE07F000000000000E07FE07F000000000000FF7F00001863FF7F0000FF7F
      0000000000000000000000000000000000000000007C007C007C007C007C0000
      00000000000000000000000000000000000000000000E07F0000000000000000
      00000000000000000000E07FE07F000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F00000000FF7FFF7FFF7FFF7F00000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F00000000E07F00000000000000000000
      E07FE07F00000000000000000000E07F00000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C000000000000
      000000000000000000000000000000000000E07F000000000000000000000000
      E07F0000000000000000000000000000E07FE07F000000000000000000000000
      E07F0000000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF7E0000000000009001000000000000
      C003000000000000E003000000000000E003000000000000E003000000000000
      E00300000000000000010000000000008000000000000000E007000000000000
      E00F000000000000E00F000000000000E027000000000000C073000000000000
      9E790000000000007EFE000000000000FF7EFFFFC007FF009001F83FC007FF00
      C003E00FC007FF00E003C007C007FF00E0038003C0070000E0038003C0070000
      E0030001C007000000010001C007000080000001C0070023E0070001C0070001
      E00F0001C0070000E00F8003C0070023E0278003C0070063C073C007C00700C3
      9E79E00FC00701077EFEF83FC00703FFFF7EFF7EFFDFFFFF9001BE7DFFCFFC00
      C0039E79FFC7FC00E003C0030003FC00E003C0070001FC00E003C00F0000EC00
      E003C00F0001E400000100010003E0008000800000070000E007C003000F0001
      E00FC007001F0003E00FE007007F0007E027CE7300FF000FC0739E7901FFE3FF
      9E79BE7D03FFE7FF7EFE7EFEFFFFEFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofNoNetworkButton, ofEnableSizing]
    Title = 'Find archive'
    Left = 376
    Top = 16
  end
  object AddMenu: TPopupMenu
    MenuAnimation = [maTopToBottom]
    Left = 408
    Top = 16
    object Addfiles1: TMenuItem
      Action = AAdd
    end
    object Extract2: TMenuItem
      Action = AExtract
    end
    object Updatearchive1: TMenuItem
      Action = AUpdate
      Caption = '&Update'
    end
  end
end