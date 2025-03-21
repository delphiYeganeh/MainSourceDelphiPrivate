unit AccessInput;

interface

uses
      forms, Classes, ActnList, DB, ADODB, Buttons, Grids, DBGrids,
  YDbgrid, StdCtrls, DBCtrls, Controls,ExtCtrls , Windows,Graphics,SysUtils,Dialogs,baseUnit,
  ExtActns, dbcgrids, ComCtrls,  xpBitBtn, Menus, MssDBGrid;
type
  TAccessForm = class(TMBaseForm)
    Accesses: TADOTable;
    DAccesses: TDataSource;
    DApplicationForms: TDataSource;
    DActionsAccess: TDataSource;
    AccessesTitle: TWideStringField;
    DActions: TDataSource;
    ActionList1: TActionList;
    aclose: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    DBLkCBAccesses: TDBLookupComboBox;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    YDBGrid1: TYDBGrid;
    AccessesID: TWordField;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BBOK: TBitBtn;
    ProgressBar1: TProgressBar;
    Panel4: TPanel;
    SBChAll: TSpeedButton;
    SBChNone: TSpeedButton;
    SBChRev: TSpeedButton;
    Label2: TLabel;
    ActionsAccess: TADOQuery;
    ActionsAccessAccessID: TWordField;
    ActionsAccessActionID: TWideStringField;
    ActionsAccessFormTag: TWordField;
    ActionsAccessHasAccess: TBooleanField;
    LabelAccessUserCount: TLabel;
    MssDBGrid1: TMssDBGrid;
    ActionsAccessActionTitle: TStringField;
    YDBGrid3: TYDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    quLight: TADOQuery;
    dComponentTag: TDataSource;
    btnMenu: TButton;
    btnDefault: TButton;
    qApplicationForms: TADOQuery;
    qcomponentTag: TADOQuery;
    qActions: TADOQuery;
    qApplicationFormsID: TWordField;
    qApplicationFormsTitle: TWideStringField;
    qcomponentTagComponentTagId: TIntegerField;
    qcomponentTagTitle: TStringField;
    MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC: TADOQuery;
    AccessesIsExp: TBooleanField;
    AccessesIsIncom: TBooleanField;
    AccessesIsDoc: TBooleanField;
    AccessesIsInter: TBooleanField;
    Panel5: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure Button1Click(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure acloseExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBChAllClick(Sender: TObject);
    procedure SBChNoneClick(Sender: TObject);
    procedure SBChRevClick(Sender: TObject);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLkCBAccessesClick(Sender: TObject);
    procedure MssDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MssDBGrid1SearchData(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MssDBGrid1CellClick(Column: TColumn);
    procedure YDBGrid3CellClick(Column: TColumn);
    procedure qcomponentTagAfterScroll(DataSet: TDataSet);
    procedure btnDefaultClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure OpenActionsAccess;
    procedure qApplicationFormsAfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    Function GetUserAccessCount: Integer;

  public
    valueAccessesID :Integer;
    { Public declarations }
  end;

var
  AccessForm: TAccessForm;
  valueaccID : Integer;
implementation

uses Dmu, Types, businessLayer, UMain, EnteredLetterInputF,
     ExitedLetterInputF, ReCommiteU, {ScanImageU1, ScanImageU,} ScanImageFm,YShamsiDate,
  UAddDocument, UinnerLetter, Variants, QuickSearch;

{$R *.dfm}

Type
    Code=^integer;

procedure TAccessForm.FormShow(Sender: TObject);
begin
   Accesses.First;
   DBLkCBAccesses.KeyValue := AccessesID.AsInteger;
   //DBLkCBAccessesClick(Sender);
   {Ranjbar}
   GetUserAccessCount;   
   btnDefault.Click;

   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.Close;
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Clear;
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('IF NOT EXISTS (SELECT * FROM dbo.Actions WHERE ID = ''adeletePeyvastInKartabl'')             ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('BEGIN                                                                                        ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('INSERT INTO dbo.Actions ( FormTag , ID , Title , DeactiveInLight , ComponentTag )            ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('VALUES  ( 8 , -- FormTag - tinyint                                                           ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('           N''adeletePeyvastInKartabl'' , -- ID - nvarchar(50)                               ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('           N''��� ����� ��� ���� ���� ����� �������'' , -- Title - nvarchar(50)              ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('           null , -- DeactiveInLight - tinyint                                               ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('           null  -- ComponentTag - int                                                       ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('           )                                                                                 ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('                                                                                             ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('INSERT INTO dbo.ActionsAccess ( AccessID , ActionID , FormTag , HasAccess )                  ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('VALUES  ( 1 , -- AccessID - tinyint                                                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          N''adeletePeyvastInKartabl'' , -- ActionID - nvarchar(50)                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          8 , -- FormTag - tinyint                                                           ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          1  -- HasAccess - bit                                                              ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          )                                                                                  ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('                                                                                             ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('INSERT INTO dbo.ActionsAccess ( AccessID , ActionID , FormTag , HasAccess )                  ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('VALUES  ( 2 , -- AccessID - tinyint                                                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          N''adeletePeyvastInKartabl'' , -- ActionID - nvarchar(50)                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          8 , -- FormTag - tinyint                                                           ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          1  -- HasAccess - bit                                                              ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          )                                                                                  ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('                                                                                             ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('INSERT INTO dbo.ActionsAccess ( AccessID , ActionID , FormTag , HasAccess )                  ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('VALUES  ( 4 , -- AccessID - tinyint                                                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          N''adeletePeyvastInKartabl'' , -- ActionID - nvarchar(50)                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          8 , -- FormTag - tinyint                                                           ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          1  -- HasAccess - bit                                                              ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('          )                                                                                  ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.SQL.Add('END                                                                                          ');
   MAKE_DELETE_PEYVAST_TAVASOTE_KARBAR_PROC.ExecSQL;
end;

procedure TAccessForm.DBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
   if ActionsAccessHasAccess.AsBoolean then
      Color := $0080FFFF
   else
      Color := clMaroon;
end;

procedure TAccessForm.Button1Click(Sender: TObject);
var
  S : String;
  I : byte;
begin
  if Dm.Y_inputQuery('��� ������ ����','��� ������ �����' ,s,'') then
  begin
    I := AccessesID.AsInteger;
    Exec_SaveAs_Accesses(i,s);
    Accesses.Close;
    Accesses.Open;
    Accesses.Last;
    {Ranjbar}
    DBLkCBAccesses.KeyValue := AccessesID.AsInteger;
    valueAccessesID := AccessesID.AsInteger;
    GetUserAccessCount;
    //---
    ActionsAccess.Close;
    ActionsAccess.Open;
  end;
end;

procedure TAccessForm.BBOKClick(Sender: TObject);
begin
   Close;
end;

procedure TAccessForm.acloseExecute(Sender: TObject);
begin
   Close;
end;

procedure TAccessForm.Button2Click(Sender: TObject);
Var
   AccessCount : Integer;
begin
   {Ranjbar}//����
   //AccessCount := StrToIntDef(Qry_GetResult('Select Count(AccessID)as AccessCount from ActionsAccess Where AccessID = '+
   //                           AccessesID.AsString + '  And HasAccess = 1 ',Dm.YeganehConnection),0);

   //���� ���� ����� ����� ������� ����� ��� ��� ������
   if GetUserAccessCount > 0 then
   begin
      ShowMyMessage('�����','����� ����� ����� ������� ��� ��� ������ � ����� ��� �� ���� �����'+ #13 +
                    LabelAccessUserCount.Caption ,[mbOK],mtInformation);
      Exit;
   end;
   //---
   
   if MessageShow(39,True) then
   begin
      {Ranjbar}
      Qry_SetResult('Delete From ActionsAccess Where AccessID =  ' + AccessesID.AsString , Dm.YeganehConnection);
      //---
      Exec_Delete_Accesses(AccessesID.AsInteger); //Accesses ��� ��� ����� �� ����
      Accesses.Close;
      Accesses.Open;
      {Ranjbar}
      DBLkCBAccesses.KeyValue := AccessesID.AsInteger;
//      AccessesAfterScroll(Accesses);
      //---
   end;
end;

procedure TAccessForm.DBGrid2Enter(Sender: TObject);
begin
   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.FormCreate(Sender: TObject);
begin
   {$IFDEF LIGHT}
//         ApplicationForms.Filter := ' id<>5 and id<>8';
//         ApplicationForms.Filtered := true;
//         ActionsAccess.SQL.Text := ActionsAccess.SQL.Text + ' and (isnull(Actions.DeactiveInLight,0)<1 or isnull(Actions.DeactiveInLight,0)>1)';
//         {$IFDEF SINGLE}
//            ActionsAccess.SQL.Text := copy(ActionsAccess.SQL.Text,0,length(ActionsAccess.SQL.Text)-42)+')';
//         {$ENDIF}
//         with TADOQuery.Create(nil) do
//         begin
//            Connection := dm.YeganehConnection;
//            SQL.Text := 'if not exists(select * from syscolumns where name=''DeactiveInLight'' AND id IN(SELECT id FROM sysobjects WHERE NAME = ''Actions'')) ALTER TABLE ACTION ADD DeactiveInLight BIT NULL';
//            ExecSQL;
//         end;
//         quLight.ExecSQL;
  {$ENDIF}
   Accesses.Open;
//   qApplicationForms.Open;
//   qComponentTag.open;
//   ActionsAccess.Open;

end;

procedure TAccessForm.BitBtn1Click(Sender: TObject);
var
   AccID : Integer;
begin
   inherited;
   //����: ���� ����� "�������" ���� �� ������ ��� ����
   //����� ����� �� ���� �� ������ ����� ���
   {if Not Exists(Select * from Actions Where FormTag = 8 And ID = 'ARecommiteList')
   Insert into Actions(FormTag,ID,Title) values(8,'ARecommiteList','���� ������� ���� �ǁ')
   GO}

   if (ActionsAccess.State=dsEdit) or (ActionsAccess.State=dsInsert) then
          ActionsAccess.Post;

   {Ranjbar 89.08.03 ID=169}
   AccID := DBLkCBAccesses.KeyValue;
   //---
   //ProgressBar1.Show;
   ProgressBar1.Position := 1;

   MainForm.RefreshAction.Execute;//MBaseForm

   ProgressBar1.Position := 2;

   ReceivedLetterInputForm := TReceivedLetterInputForm.Create(Application);
   ReceivedLetterInputForm.RefreshAction.Execute;//MBaseForm
   ReceivedLetterInputForm.Free;
   ProgressBar1.Position := 3;

   SentLetterInputForm := TSentLetterInputForm.Create(Application);
   SentLetterInputForm.RefreshAction.Execute; //MBaseForm
   SentLetterInputForm.Free;
   ProgressBar1.Position := 4;

   ReCommite := TReCommite.Create(Application);
   ReCommite.RefreshAction.Execute;//MBaseForm
   ReCommite.Free;
   ProgressBar1.Position := 5;


   FrAddDocument := TFrAddDocument.Create(Application);
   FrAddDocument.RefreshAction.Execute;//MBaseForm
   FrAddDocument.Free;

   FinnerLetter := TFinnerLetter.Create(Application);
   FinnerLetter.RefreshAction.Execute;//MBaseForm
   FinnerLetter.Free;

   QuickSearchF := TQuickSearchF.Create(Application);
   QuickSearchF.RefreshAction.Execute;//MBaseForm
   QuickSearchF.Free;

   {Ranjbar}
   {TifImageF:=TTifImageF.Create(Application);
   TifImageF.RefreshAction.Execute;
   TifImageF.Free;
   ProgressBar1.Position:=6;

   ScanImageF:=TScanImageF.Create(Application);
   ScanImageF.RefreshAction.Execute;
   ScanImageF.Free;}

   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.RefreshAction.Execute; //MBaseForm

   ProgressBar1.Position := 7;

   Exec_insert_newActionsAccess;
   ProgressBar1.Position := 8;

   ActionsAccess.Close;
   ActionsAccess.Open;
   Accesses.Next;
   Accesses.Prior;
   ProgressBar1.Position := 0;
   //ProgressBar1.Hide;

   {Ranjbar 89.08.03 ID=169}
   //��� ������� Refresh ��� ����
   DBLkCBAccesses.KeyValue := DBLkCBAccesses.KeyValue + 1;
   DBLkCBAccesses.KeyValue := AccID;
   btnDefault.Click;

   MBaseForm.messageShowString('��������� �� ������ ����� �� .', False);

   //---
end;

procedure TAccessForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if (MssDBGrid1.DataSource.DataSet.State= dsinsert)and(ActionsAccessAccessID.IsNull) then
      MssDBGrid1.DataSource.DataSet.Cancel;
   MBaseForm.messageShowString('���� ��� ����� ������� � �� ��� ����� ���� � ������ ���� ����', False);
end;

procedure TAccessForm.SBChAllClick(Sender: TObject);
var
   newAccess: boolean;
begin
   inherited;

   if ActionsAccess.IsEmpty then
      Exit;

   ActionsAccess.First;
   While not ActionsAccess.Eof do
   begin

      if Sender = SBChAll then
         newAccess := True;
      if Sender = SBChNone then
         newAccess := False;
      if Sender = SBChRev then
         newAccess := Not ActionsAccessHasAccess.AsBoolean;

      Exec_UPDATE_Acction_Access(newAccess,
                                 //valueAccessesID,//ActionsAccessAccessID.AsInteger,
                                 AccessesID.AsInteger,
                                 ActionsAccessActionID.AsString,
                                 ActionsAccessFormTag.AsInteger);
      ActionsAccess.Next;
   end;
   ActionsAccess.close;
   ActionsAccess.Open;
end;

procedure TAccessForm.SBChNoneClick(Sender: TObject);
begin
   inherited;
   OpenActionsAccess;
   SBChAllClick(Sender);
end;

procedure TAccessForm.SBChRevClick(Sender: TObject);
begin
   inherited;
   SBChAllClick(Sender);
end;

procedure TAccessForm.YDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   inherited;

   {Ranjbar 89.08.03 ID=169}
  // DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlight,clHighlightText );
   //---
end;

procedure TAccessForm.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);

  begin
   inherited;
   {Ranjbar 89.08.03 ID=169}
   DBGrid_SetFocusAfterExit(DBGrid2,Rect,DataCol,Column,State,clHighlight,clHighlightText );
   //---
end;

//���� ���� ����� ����� ������� ����� ��� ��� ������
{Ranjbar}
Function TAccessForm.GetUserAccessCount: Integer;
Var
   AccessCount : Integer;
begin
   AccessCount := StrToIntDef(Qry_GetResult('Select Count(ID) as AccessCount from Users Where AccessID = '+
                                             IntToStr(DBLkCBAccesses.KeyValue),Dm.YeganehConnection),0);
   LabelAccessUserCount.Caption := ' ����� ������� ����� ������ :  ' + IntToStr(AccessCount);
   Result := AccessCount;
end;
//---

procedure TAccessForm.DBLkCBAccessesClick(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   GetUserAccessCount;
   OpenActionsAccess;
   //---
end;

procedure TAccessForm.MssDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlight,clHighlightText );
end;

procedure TAccessForm.MssDBGrid1SearchData(Sender: TObject);
begin
  inherited;
   if (ActionsAccess.State= dsinsert)and(ActionsAccessAccessID.IsNull) then
      ActionsAccess.Cancel;
end;

procedure TAccessForm.Edit1Change(Sender: TObject);
begin
  OpenActionsAccess
end;

procedure TAccessForm.MssDBGrid1CellClick(Column: TColumn);
begin
  inherited;
   try
      ActionsAccess.Edit;
      ActionsAccessHasAccess.AsBoolean := not ActionsAccessHasAccess.AsBoolean;
      ActionsAccess.Post;
   except
      ActionsAccess.Cancel;
   end;
end;

procedure TAccessForm.YDBGrid3CellClick(Column: TColumn);
var
   book : Pointer;
begin
  inherited;
  { try
      ActionsAccess.Edit;
      ActionsAccessHasAccess.AsBoolean := not ActionsAccessHasAccess.AsBoolean;
      ActionsAccess.Post;
   except
      ActionsAccess.Cancel;
   end;    }
   Exec_UPDATE_Acction_Access(not ActionsAccessHasAccess.AsBoolean,
                              ActionsAccessAccessID.AsInteger,
                              ActionsAccessActionID.AsString,
                              ActionsAccessFormTag.AsInteger);
  book := ActionsAccess.GetBookmark;
  ActionsAccess.Close;
  ActionsAccess.Open;
  ActionsAccess.GotoBookmark(book);
end;

procedure TAccessForm.qcomponentTagAfterScroll(DataSet: TDataSet);
begin
  inherited;
  OpenActionsAccess;
end;

procedure TAccessForm.btnDefaultClick(Sender: TObject);
begin
  inherited;
  qApplicationForms.Close;
  DBGrid2.DataSource:=DApplicationForms;
  qApplicationForms.open;

end;

procedure TAccessForm.btnMenuClick(Sender: TObject);
begin
  inherited;
  qcomponentTag.Close;
  DBGrid2.DataSource:=dcomponentTag;
  qcomponentTag.open;

end;

procedure TAccessForm.OpenActionsAccess;
begin
  ActionsAccess.Close;
  {ActionsAccess.sql.Text := 'SELECT DISTINCT aa.* ,a.Title actionTitle'+}
  ActionsAccess.sql.Text := 'SELECT DISTINCT aa.AccessID,aa.ActionID,aa.FormTag,aa.HasAccess ,a.Title actionTitle'+
                              ' FROM ActionsAccess aa '+
                              ' INNER JOIN  actions a ON a.id = aa.actionid AND  AA.FormTag =a.FormTag '+
                              ' left JOIN componentTag ct ON ct.componentTagId=a.componentTag '+
                              ' WHERE aa.AccessID='+vartostr(DBLkCBAccesses.KeyValue)+'and 1=1 ' ;

  if DBGrid2.DataSource=dApplicationForms then
  begin
    ActionsAccess.sql.Add(' and a.FormTag='+qApplicationFormsID.AsString);
  end
  else
  begin
    ActionsAccess.sql.Add(' and a.FormTag=1'+'AND ct.componenttagid='+qcomponentTagComponentTagId.AsString);
  end;

  if trim (Edit1.Text)<>'' then
    ActionsAccess.sql.Add (' And a.Title like ''%'+Edit1.Text+'%''');

  //InputBox('','',ActionsAccess.SQL.Text);

  //ShowMessage(ActionsAccess.sql.Text);

  ActionsAccess.open;
end;

procedure TAccessForm.qApplicationFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  OpenActionsAccess;
end;

procedure TAccessForm.Button3Click(Sender: TObject);
begin
  valueAccessesID := DBLkCBAccesses.KeyValue;
  Panel5.Visible := True;
//  inherited;
  if not(Accesses.State in[dsinsert,dsedit]) then
    Accesses.Edit
  else
   Abort;
end;

procedure TAccessForm.Button5Click(Sender: TObject);
begin
  inherited;
  if Accesses.State in[dsinsert,dsedit] then
    Accesses.Post;
    Panel5.Visible := False;
    Accesses.Close;
    Accesses.Open;
    Accesses.Locate('id',DBLkCBAccesses.KeyValue,[loCaseInsensitive]);
end;

procedure TAccessForm.Button4Click(Sender: TObject);
begin
  inherited;
Panel5.Visible := False;
Accesses.Cancel
end;

end.
