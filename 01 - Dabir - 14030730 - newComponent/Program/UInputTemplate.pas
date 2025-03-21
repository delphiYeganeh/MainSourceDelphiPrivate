unit UInputTemplate;

interface

uses
  Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,windows,
  XPStyleActnCtrls,  xpBitBtn, Menus,Types,Graphics, TntDialogs, ExcelXP, ComObj,
  AppEvnts, TlHelp32, MSWBase, MSWord, AdvGlowButton;

type
  TEditTemplates = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    AText: TAction;
    WordDocument: TWordDocument;
    WordAppTemp: TWordApplication;
    TimerWord: TTimer;
    Panel1: TPanel;
    YDBGrid2: TYDBGrid;
    Panel2: TPanel;
    ButtonEdit: TAdvGlowButton;
    ButtonView: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    ButtonChgName: TAdvGlowButton;
    Button6: TAdvGlowButton;
    BitBtnDel: TAdvGlowButton;
    BitBtnRead: TAdvGlowButton;
    Panel4: TPanel;
    SBArchive: TAdvGlowButton;
    Label1: TLabel;
    DBGrid2: TYDBGrid;
    OpenDialog: TTntOpenDialog;
    TimerExcel: TTimer;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    ExcelWorkbook: TExcelWorkbook;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure YDBGridDblClick(Sender: TObject);
    procedure ATextExecute(Sender: TObject);
    procedure ButtonEditClick(Sender: TObject);
    procedure WordAppTempDocumentBeforeClose(ASender: TObject;
              const Doc: _Document; var Cancel: WordBool);
    procedure ButtonViewClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TimerWordTimer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ButtonChgNameClick(Sender: TObject);
    procedure EnableDsiable(En:boolean);
    procedure Button6Click(Sender: TObject);
    {Ranjbar 89.10.06 ID=267}
    //procedure AbortClose(Sender: TObject; var Action: TCloseAction);
    //---
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnReadClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtnDelClick(Sender: TObject);
    procedure SBArchiveClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure YDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function FileSize(fileName : wideString) : Int64;
    procedure CorrectFile(fileName : string);
    procedure ExcelApplicationWorkbookBeforeClose(ASender: TObject;
      const Wb: _Workbook; var Cancel: WordBool);
    procedure TimerExcelTimer(Sender: TObject);
    function  processExists(exeFileName: string): Boolean;
  private
    //LCID: Cardinal;
    procedure OpenFileWord(ReadOnly:boolean;OD:boolean = false);
    procedure OpenFileExcel(ReadOnly:boolean);
    procedure openFileWordOD(ReadOnly:boolean);
    procedure NewFile;
    procedure NewFileExcel;
    procedure OpenANewExcelFileAndSave(ExcelFileName : String);
  public

  end;

var
  EditTemplates: TEditTemplates;

implementation

Uses Dmu,UMain,richedit,ShellAPI, CreateTextU, ADODB,
     UEditLetterGroup,YShamsiDate, UTemplateGroup, businessLayer;

const
    LCID: DWORD = LOCALE_SYSTEM_DEFAULT;

{$R *.dfm}

var
   IsReadOnly,
   Saved:boolean;

procedure TEditTemplates.FormCreate(Sender: TObject);
begin
  inherited;
  { TODO -oparsa : 1402-12-19 }
   if FileExists(pchar(_TempPath+_WordFileName)) then
   begin
      SysUtils.FileSetReadOnly(pchar(_TempPath+_WordFileName), false);
     DeleteFile(pchar(_TempPath+_WordFileName));
   end;
  { TODO -oparsa : 1402-12-19 }
  IsReadOnly := True;
  Saved := False;
  with Dm.LetterTemplate do
  begin
    if not Active then
      Open
    else
      First;
  end;
end;

procedure TEditTemplates.AcloseExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TEditTemplates.YDBGridDblClick(Sender: TObject);
begin
  inherited;
  AText.Execute;
end;

procedure TEditTemplates.ATextExecute(Sender: TObject);
begin
  inherited;
  dm.RefreshTemplate;
end;

procedure TEditTemplates.openFileWord(ReadOnly:boolean;OD:boolean = false);
var
  RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
  Word : TWordApplication;
  D : _Document;
  O : OleVariant;
  IsError : Boolean;
  Handle : THandle;
begin
  try
    emp := '';
    fals := False;
    tru := True;
    olv := wdOpenFormatAuto;
    IsError := False;
    with WordAppTemp do
    begin
        try
          Caption := 'Yeganeh';
        except
          IsError := True;
        end;

        { TODO -oparsa : 14030505-bug349 }
        (*
        if IsError= False then
        begin
          Visible := True;
          ChangeFileOpenDirectory(_TempPath);
          f :=_WordFileName;
          Ro := ReadOnly;

          Handle := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
          SetForegroundWindow(Handle);

          Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

          if ActiveWindow.View.SplitSpecial <> wdPaneNone then
            ActiveWindow.Panes.Item(2).Close;

          if ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] then
            ActiveWindow.ActivePane.View.Type_:= wdPrintView;

          ItemIndex := 1;
          WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
        end else
        begin
          Caption := 'Yeganeh';
          Visible := True;
          ChangeFileOpenDirectory(_TempPath);
          f :=_WordFileName;
          Ro := ReadOnly;

          Handle := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
          SetForegroundWindow(Handle);

          Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

          if ActiveWindow.View.SplitSpecial <> wdPaneNone then
            ActiveWindow.Panes.Item(2).Close;

          if ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] then
            ActiveWindow.ActivePane.View.Type_:= wdPrintView;

          ItemIndex := 1;
          WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
        end;
        *)
        if IsError  then
          Caption := 'Yeganeh';

        try
        
          WordAppTemp.Visible := True;
          ChangeFileOpenDirectory(_TempPath);
          if OD then
            f :=_WordFileName +'.docx'
          else f :=_WordFileName;

          Ro := ReadOnly;

          Handle := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
          SetForegroundWindow(Handle);

          Documents.Open(f,EmptyParam,Ro,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);

          if ActiveWindow.View.SplitSpecial <> wdPaneNone then
            ActiveWindow.Panes.Item(2).Close;

          if ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] then
            ActiveWindow.ActivePane.View.Type_:= wdPrintView;

          ItemIndex := 1;
          WordDocument.ConnectTo(WordAppTemp.Documents.Item(itemindex));

        except  on e:exception do
         begin
           WordAppTemp.Visible := False;
           MBaseForm.MessageShowString('���� ���� ������� ��� ��� ��� ����� ��� ����' +Char(10) + e.Message ,False);
           EnableDsiable(True);
         end  
        end;

        { TODO -oparsa : 14030505-bug349 }
    end;{with wordapplication}
  except on e:exception do
    begin
      //  ShowMessage('YEGANEH ERROR WORD : ' + e.Message);
    end;
  end;
end;

procedure TEditTemplates.openFileWordOD(ReadOnly:boolean);
var
  RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
   Handle :THandle;
   IsError : Boolean;
begin
  emp:='';
  fals:=false;
  tru:=true;
  olv:=wdOpenFormatAuto;
  { TODO -oparsa : 14030505-bug349 }
  //WordApplication.Caption := 'Yeganeh';
  try
    WordAppTemp.Caption := 'Yeganeh';
  except
    IsError := True;
  end;

  if  IsError then
    WordAppTemp.Caption := 'Yeganeh';
  { TODO -oparsa : 14030505-bug349 }

  with WordAppTemp do
  begin
    Visible := True;

    ChangeFileOpenDirectory(_TempPath);
    f:=_WordFileName+'.docx';
    Ro := False;

    Handle := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
    SetForegroundWindow(Handle);

    Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

    if ActiveWindow.View.SplitSpecial <> wdPaneNone Then
      ActiveWindow.Panes.Item(2).Close;

    if ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
      ActiveWindow.ActivePane.View.Type_:= wdPrintView;

    ItemIndex := 1;
    WordDocument.ConnectTo(WordAppTemp.Documents.Item(itemindex));
  end;{with wordapplication}
end;

procedure TEditTemplates.ButtonEditClick(Sender: TObject);
var
  strType : String;
begin
  inherited;
  if Dm.LetterTemplate.RecordCount > 0 then
  begin
    strType := Exec_GetLetterTemplateGroupType(Dm.LetterTemplateTemplateGroupID.AsInteger);
    if strType = 'x' then
      if FileExists(_TempPath + _ExcelFileName) then
      begin
        SysUtils.FileSetReadOnly(pchar(_TempPath + _ExcelFileName), false);
        DeleteFile(pchar(_TempPath + _ExcelFileName));
      end;
    Sleep(1000);
    DM.SaveTemplateToFile(strType);
    Sleep(1000);

    { TODO -oparsa : 14030505-bug349 }
    EnableDsiable(False);
    { TODO -oparsa : 14030505-bug349 }

    if strType = 'w' then
      OpenFileWord(False) //��� ���� ���� ��� ��� ������
    else
      OpenFileExcel(False); //��� ���� ���� ǘ�� ��� ������\

    IsReadOnly := False;
    { TODO -oparsa : 14030505-bug349 }
    //EnableDsiable(False);
    // ButtonEdit.Click;
    { TODO -oparsa : 14030505-bug349 }

  end;
end;

procedure TEditTemplates.WordAppTempDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var
  fileName: OleVariant;
begin
  inherited;
  fileName := _TempPath +_WordFileName ;
  if not IsReadOnly then
  begin
    WordDocument.SaveAs(fileName);
    TimerWord.Enabled := True; //����� ��� �� �������
    Saved := False;
  end
  else EnableDsiable(True);
  WordAppTemp.Disconnect;
  { TODO -oparsa : 14030605-bug349 }
  WordDocument.Disconnect;
  { TODO -oparsa : 14030605-bug349 }
  if processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
end;

procedure TEditTemplates.ButtonViewClick(Sender: TObject);
var
  strType : String;
begin
  inherited;
  if Dm.LetterTemplate.RecordCount > 0 then
  begin
    strType := Exec_GetLetterTemplateGroupType(Dm.LetterTemplateTemplateGroupID.AsInteger);

    if strType = 'x' then
      if FileExists(_TempPath + _ExcelFileName) then
      begin
        SysUtils.FileSetReadOnly(pchar(_TempPath + _ExcelFileName), false);
        DeleteFile(pchar(_TempPath + _ExcelFileName));
      end;
    Sleep(500);
    DM.SaveTemplateToFile(strType);
    Sleep(500);
    { TODO -oparsa : 14030505-bug349 }
    EnableDsiable(False);
    { TODO -oparsa : 14030505-bug349 }
    if strType = 'w' then
      OpenFileWord(True) //��� ���� ���� ��� ��� ������
    else
      OpenFileExcel(True); //��� ���� ���� ��� ��� ������\

    IsReadOnly := True;
    { TODO -oparsa : 14030505-bug349 }
    //EnableDsiable(False);
    { TODO -oparsa : 14030505-bug349 }
  end;
end;

procedure TEditTemplates.Button3Click(Sender: TObject);
begin
  inherited;
{
  if FileExists(_TempPath + _ExcelFileName) then
    DeleteFile(pchar(_TempPath + _ExcelFileName));
}
  if Dm.TemplateGroup.RecordCount = 0 then
  Begin
    MessageShowString('����� ���� ���� �� �� ����� ����',false);
    Exit;
  end;

  {Ranjbar 89.10.06 ID=267}
  //if MessageShow(42,True) then
  with Dm,LetterTemplate do
  begin
    Insert;
    LetterTemplateTemplateGroupID.Value := Dm.TemplateGroupTemplateGroupID.AsInteger;
    FEditLetterGroup:=TFEditLetterGroup.Create(Application);

    if FEditLetterGroup.ShowModal= mrCancel then
      Exit;

    with dm,LetterTemplateDoc do
    begin
      Close;
      Parameters.ParamByName('id').Value := dm.LetterTemplateID.AsInteger;
      Open;
    end;
    IsReadOnly := False;

    if Exec_GetLetterTemplateGroupType(dm.TemplateGroupTemplateGroupID.AsInteger) = 'w' then
      NewFile //��� ��� ���� ���
    else
      NewFileExcel;

    EnableDsiable(False);
  end;
end;

procedure TEditTemplates.NewFile;
var
  Template,NewTemplate,ItemIndex:OleVariant;
  ver : integer;
  IsError : Boolean;
begin
  IsError := False;
  Template := EmptyParam;
  NewTemplate := False;
  ItemIndex := 1;

  try
    ver := StrToint(copy(WordAppTemp.Version,0,length(WordAppTemp.Version)-2));
  except
    IsError := True;
  end;

  { TODO -oparsa : 14030505-bug349 }
  (*
  if IsError = False then
  begin
    if ver < 12 then
    begin
      ShowMessage('���� ������ ���� �� ���� 2007 �� ���� ������� ����');
      Exit;
    end;

//    WordApplication.Caption :=  '�������� '+_yeganeh;
    WordApplication.Visible := True;
    WordApplication.Caption := 'Yeganeh';
    {Create new document}
    Template := EmptyParam;
    NewTemplate := False;
    WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
    WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));
  end else
  begin
    WordApplication.Visible := True;
//    WordApplication.Caption := '�������� '+_yeganeh;
    WordApplication.Caption := 'Yeganeh';
    {Create new document}
    Template := EmptyParam;
    NewTemplate := False;
     WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
    WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));
  end;
  *)
  if not (IsError) and (ver < 12) then
  begin
    ShowMessage('���� ������ ���� �� ���� 2007 �� ���� ������� ����');
    Exit;
  end;

  WordAppTemp.Visible := True;
  WordAppTemp.Caption := 'Yeganeh';

  {Create new document}
  Template := EmptyParam;
  NewTemplate := False;
  WordAppTemp.Documents.Add(Template, NewTemplate,Template,Template);
  WordDocument.ConnectTo(WordAppTemp.Documents.Item(ItemIndex));

  { TODO -oparsa : 14030505-bug349 }
end;

procedure TEditTemplates.TimerWordTimer(Sender: TObject);
begin
  inherited;
  if Saved then
    Exit;

  with Dm,LetterTemplateDoc do
  begin
    Edit;
    try
      LetterTemplateDocDocument.LoadFromFile(_TempPath +_WordFileName);
      Post;
      TimerWord.Enabled := False;
      Saved := True;
      EnableDsiable(True);
    except
      TimerWord.Interval := 500;
    end;
  end;
end;

procedure TEditTemplates.Button4Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TEditTemplates.ButtonChgNameClick(Sender: TObject);
begin
  inherited;
  with  dm,LetterTemplate do
  begin
    Edit;
    FEditLetterGroup := TFEditLetterGroup.Create(Application);
    FEditLetterGroup.ShowModal;
  end;
end;

procedure TEditTemplates.Button6Click(Sender: TObject);
begin
  inherited;
  CreateText := TCreateText.Create(Application);
  CreateText.ShowModal;
end;

procedure TEditTemplates.EnableDsiable(En:boolean);
begin
  inherited;
  Button3.Enabled := En;
  {Ranjbar 89.10.06 ID=267}
  ButtonChgName.Enabled := En;
  BitBtnDel.Enabled := En;
  ButtonEdit.Enabled := En;
  ButtonView.Enabled := En;
  BitBtnRead.Enabled := En;
  {YDBGrid2.Enabled := En;
  DBGrid2.Enabled := En;
  if En then
    OnClose := Nil
  else
    OnClose := AbortClose;}
  //---
end;

{Ranjbar 89.10.06 ID=267}
{procedure TEditTemplates.AbortClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   abort;
end;}

procedure TEditTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {Ranjbar 89.10.06 ID=267}
  if ButtonEdit.Enabled = False then
    if ShowMyMessage('�����','����� ����� ������� ���� ��� ���� ����� ���� ���'+#13+
                               '             ��� ���� �� ���� �� ��� ��� ����Ͽ' ,mbOKCancel,mtWarning)=mrCancel then
      Abort;
   //---

   { TODO -oparsa : 1402-12-19 }
   if FileExists(pchar(_TempPath+_WordFileName)) then
   begin
     SysUtils.FileSetReadOnly(pchar(_TempPath + _WordFileName), false);
     DeleteFile(pchar(_TempPath+_WordFileName));
   end;
   { TODO -oparsa : 1402-12-19 }
   { TODO -oparsa : 14030505-bug349 }
   if FileExists(pchar(_TempPath+_WordFileName+ '.docx')) then
   begin
     SysUtils.FileSetReadOnly(pchar(_TempPath + _WordFileName+ '.docx'), false);
     DeleteFile(pchar(_TempPath+_WordFileName+ '.docx'));
   end;
   { TODO -oparsa : 14030505-bug349 }

end;

procedure TEditTemplates.BitBtnReadClick(Sender: TObject);
var
  i,en: Integer;
  fn, strFilter, strType, strTempFileName : String;
begin
  inherited;

  strType := Exec_GetLetterTemplateGroupType(dm.TemplateGroupTemplateGroupID.AsInteger);

  if strType = 'w' then
    strFilter := 'Word Files (*.docx)|*.docx'
  else
    strFilter := 'Excel Files (*.xls)|*.xls';

  OpenDialog.Filter := strFilter;

  if OpenDialog.Execute then
  begin
    if UpperCase(ExtractFileExt(OpenDialog.FileName)) = '.DOC' then
    begin
      ShowMessage('���� ���� ���� 2007 ������ ����');
      Exit;
    end;

    With Dm,LetterTemplate do
    begin
      Insert;
      LetterTemplateTemplateGroupID.Value:= dm.TemplateGroupTemplateGroupID.AsInteger;
      FEditLetterGroup := TFEditLetterGroup.Create(Application);
      
      if FEditLetterGroup.ShowModal = mrCancel then
        Exit;
        
      with Dm,LetterTemplateDoc do
      begin
        Close;
        Parameters.ParamByName('id').Value := dm.LetterTemplateID.AsInteger;
        Open;
        Edit;
        if (strType = 'w') then
          strTempFileName := _TempPath + _WordFileName + '.docx'

        else
          strTempFileName := _TempPath + _ExcelFileName;
           
        //LetterTemplateDocDocument.LoadFromFile(OpenDialog.FileName);
        if FileExists(_ApplicationPath + 'tmpFile')then
        begin
          SysUtils.FileSetReadOnly(pchar(_ApplicationPath + 'tmpFile'), false);
          DeleteFile(pchar(_ApplicationPath + 'tmpFile'));
        end;

        { TODO -oparsa : 14030505-bug349 }
        if FileExists(strTempFileName )then
        begin
          SysUtils.FileSetReadOnly(pchar(strTempFileName ), false);
          DeleteFile(pchar(strTempFileName ));
        end;
        Sleep(1000);
        { TODO -oparsa : 14030505-bug349 }


        if CopyFileW(replacePWC(StringToPWide(OpenDialog.filename,i)), StringToPWide(strTempFileName, i), False) then
          fn := strTempFileName
        else if CopyFilew(StringToPWide(OpenDialog.filename, i), StringToPWide(strTempFileName, i), False) then
          fn := strTempFileName
        else
        begin
          fn := '';
          ShowMessage('��� �� ������ ���� ����');
        end;

        if trim(fn)<>'' then
        begin
          LetterTemplateDocDocument.LoadFromFile(fn);
        end;
        Post;
      end;

      if strType = 'w' then
      begin
        try
          { TODO -oparsa : 14030505-bug349 }
          //OpenFileWordOD(false);
          OpenFileWord(False,True);
          { TODO -oparsa : 14030505-bug349 }
        except
          { TODO -oparsa : 14030505-bug349 }
          //OpenFileWordOD(false);
          OpenFileWord(False,True);
          { TODO -oparsa : 14030505-bug349 }
        end;

        en := WordAppTemp.Selection.End_ - 1;
        if en = 0 then
          WordAppTemp.Selection.TypeText(' ');
      end
      else
      begin
        OpenFileExcel(False);
      end;

      IsReadOnly := False;
      EnableDsiable(False);
    end;
  end;
end;

function TEditTemplates.FileSize(fileName : wideString) : Int64;
var
  sr : TSearchRec;
begin
  if FindFirst(fileName, faAnyFile, sr ) = 0 then
    result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) + Int64(sr.FindData.nFileSizeLow)
  else
    result := -1;
//   FindClose(sr);
end;

procedure TEditTemplates.CorrectFile(fileName : string);
begin
   //
end;

procedure TEditTemplates.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
  with dm,LetterTemplate do
  begin
    Close;
    Parameters.ParamByName('@TemplateGroupID').Value:=TemplateGroupTemplateGroupID.Value;
    Open;
  end;
end;

procedure TEditTemplates.BitBtnDelClick(Sender: TObject);
begin
  inherited;
  if MessageShow(43,True) then
    Dm.LetterTemplate.Delete;
end;

procedure TEditTemplates.SBArchiveClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.10.06 ID=267}
  FrUTemplateGroup := TFrUTemplateGroup.Create(Application);
  FrUTemplateGroup.ShowModal;
  Dm.TemplateGroup.Close;
  Dm.TemplateGroup.Open;
  //---
end;

procedure TEditTemplates.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid_SetFocusAfterExit(DBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TEditTemplates.YDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid_SetFocusAfterExit(YDBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TEditTemplates.NewFileExcel;
var
  strFileName : String;
  //ver : Integer;
begin
  strFileName := _TempPath + _ExcelFileName;

  if FileExists(strFileName)then
  begin
    SysUtils.FileSetReadOnly(pchar(strFileName), false);
    DeleteFile(pchar(strFileName));
  end;

  OpenANewExcelFileAndSave(strFileName);

  Sleep(1000);

{  S := ExcelApplication.Version[LCID];
  if (copy(S, 3, 1) <> '.') or (S < '12') then
    ShowMessage(S);

  ver := StrToInt(copy(ExcelApplication.Version[LCID], 0, length(ExcelApplication.Version[LCID])-2));
  if ver < 12 then
  begin
    ShowMessage('���� ������ ���� �� ���� 2007 �� ���� ������� ����');
    Exit;
  end;
}
  OpenFileExcel(False);
  {
  ExcelApplication.DisplayAlerts[LCID] := False;

  ExcelApplication.Visible[LCID] := False;
  ExcelApplication.Connect;
  ExcelApplication.Visible[LCID] := True;
  ExcelApplication.Workbooks.Add(strFileName, LCID);
  }
end;

procedure TEditTemplates.ExcelApplicationWorkbookBeforeClose(
  ASender: TObject; const Wb: _Workbook; var Cancel: WordBool);
var
  strFileName: OleVariant;
begin
  inherited;

  strFileName := _TempPath + _ExcelFileName;

  try
    ExcelApplication.UserControl := False;
    ExcelApplication.DisplayAlerts[LCID] := False;

    if not IsReadOnly then
      ExcelApplication.ActiveWorkbook._SaveAs(strFileName, xlExcel7, '', '', false, false, xlNoChange,
        xlUserResolution, false, EmptyParam, EmptyParam, LCID);
    ExcelApplication.DisplayAlerts[LCID] := True;
    ExcelApplication.Disconnect;
  except on e:Exception do
    begin
      ShowMessage('Error ::' + e.Message);
    end;
  end;

  if not IsReadOnly then
  begin
    TimerExcel.Enabled := True;
    Saved := False;
  end
  else
    EnableDsiable(True);

  {if not IsReadOnly then
  begin
    try

      ExcelApplication.UserControl := False;
      ExcelApplication.DisplayAlerts[LCID] := False;

      ExcelApplication.ActiveWorkbook._SaveAs(strFileName, xlNormal, '', '', false, false, xlNoChange,
        xlUserResolution, false, EmptyParam, EmptyParam, LCID);

      ExcelApplication.DisplayAlerts[LCID] := True;
      ExcelApplication.Disconnect;
    except on e:Exception do
      begin
        ShowMessage('Error ::' + e.Message);
      end;
    end;

    TimerExcel.Enabled := True;
    Saved := False;
  end
  else
    EnableDsiable(True);}
end;

procedure TEditTemplates.TimerExcelTimer(Sender: TObject);
begin
  inherited;

  if Saved then
    Exit;

  with Dm,LetterTemplateDoc do
  begin
    Edit;
    try
      LetterTemplateDocDocument.LoadFromFile(_TempPath +_ExcelFileName);
      Post;
      TimerExcel.Enabled := False;
      Saved := True;
      EnableDsiable(True);
    except
      TimerExcel.Interval := 500;
    end;
  end;

end;

procedure TEditTemplates.OpenANewExcelFileAndSave(ExcelFileName : String);
var
  ExcelApp, ExcelWB, ExcelWS: Variant;
begin
  ExcelApp := Null;
  ExcelWB := Null;
  ExcelWS := Null;

  try
    ExcelApp := CreateOleObject('Excel.Application');
  except
    ExcelApp := Null;
  end;

  if VarIsNull(ExcelApp) = False then
  begin
    try
      ExcelApp.Visible := False;
      ExcelApp.DisplayAlerts := False;

      try
        ExcelWB := ExcelApp.WorkBooks.Add(-4167);
      except
        ExcelWB := Null;
      end;

      if VarIsNull(ExcelWB) = False then
      begin
        try
          ExcelWS := ExcelWB.WorkSheets[1];
        except
          ExcelWS := Null;
        end;

        if VarIsNull(ExcelWS) = False then
        begin
          ExcelWB.SaveAs(ExcelFileName);
        end;
      end;
    finally
      ExcelApp.Workbooks.Close;
      ExcelApp.DisplayAlerts := True;
      ExcelApp.Quit;

      ExcelWS := Unassigned;
      ExcelWB := Unassigned;
      ExcelApp := Unassigned;
    end;
  end;
end;

procedure TEditTemplates.OpenFileExcel(ReadOnly: boolean);
var
  strFileName : OleVariant;
begin
  strFileName := _TempPath + _ExcelFileName;

  ExcelApplication.DisplayAlerts[LCID] := False;

  ExcelApplication.Visible[LCID] := False;
  ExcelApplication.Connect;
  ExcelApplication.Visible[LCID] := True;
  ExcelApplication.Workbooks.Add(strFileName, LCID);
end;

function TEditTemplates.processExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

end.
