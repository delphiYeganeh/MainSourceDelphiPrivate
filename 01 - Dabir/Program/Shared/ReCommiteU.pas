unit ReCommiteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls,
  Grids, DBGrids, DBActns, ActnList, ActnMan, ToolWin, Mask, DBCtrls, StrUtils,
  ActnCtrls, ActnMenus, jpeg, UemsVCL, Menus, DBTreeView, ExtActns,
 xpBitBtn, XPStyleActnCtrls, YDbgrid, ShowRouneveshtUnit, ImgList, AppEvnts;

type
  TReCommite = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetDelete1: TDataSetDelete;
    Action1: TAction;
    GroupBox1: TGroupBox;
    desc: TLabel;
    Label8: TLabel;
    AInsert: TAction;
    Label6: TLabel;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBParaph: TDBMemo;
    DBIsCopy: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    AArchiveRecommite: TAction;
    AtypeRecommite: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    BBOK: TBitBtn;
    NewRecommite: TBitBtn;
    ReCommitesTree: TDBTreeView;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBELatestActionReason: TDBEdit;
    BBDelRecommite: TBitBtn;
    DSRecommites: TDataSource;
    QrRecommites: TADOQuery;
    QrRecommitesRecommiteID: TAutoIncField;
    QrRecommitesProceeded: TBooleanField;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    acShowAllRounevesht: TAction;
    Label1: TLabel;
    DBText1: TDBText;
    AaddLetterData: TBitBtn;
    StatImages: TImageList;
    DBCheckBox2: TDBCheckBox;
    lblSecure: TLabel;
    QTemp: TADOQuery;
    DBEdit1: TDBEdit;
    AEditRecomites: TAction;
    ImageList1: TImageList;
    DBText2: TDBText;
    Label2: TLabel;
    procedure Action1Execute(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Refresh;
    procedure FormShow(Sender: TObject);
    procedure ReCommitesTreeDblClick(Sender: TObject);
    procedure AnswerClick(Sender: TObject);
    procedure DBShamsiDateEdit2Enter(Sender: TObject);
    procedure DBShamsiDateEdit2Exit(Sender: TObject);
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure NewRecommiteClick(Sender: TObject);
    procedure ReCommitesTreeChange(Sender: TObject; Node: TTreeNode);
    procedure BBOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReCommitesTreeGetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure YDBGrid1NeedColorCondition(Column: TColumn; State: TGridDrawState; var Color: TColor);
    procedure acShowAllRouneveshtExecute(Sender: TObject);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure AEditRecomitesExecute(Sender: TObject);
  private
    FShowRounevesht: TFShowRounevesht;
    function  OrgId: integer;
    function GetID:Integer;
    procedure TreePeymayesh;
    procedure SetShowRounevesht(const Value: TFShowRounevesht);
    procedure DoSecure;
    procedure DoNotSecure;
    function User_IS_Girandeh:Boolean;
    procedure ForDBClick;
  public
    SHOW_TYP : String;
    LetterID , RecommiteId :Integer;
    IsFromReceivedLetters : boolean; // Amin 1391/12/02
    property ShowRounevesht:TFShowRounevesht read FShowRounevesht write SetShowRounevesht;
  end;

var
  ReCommite: TReCommite;

implementation

Uses  ReCommitedialog, YShamsiDate, Dmu, UMain, BusinessLayer,
  UaddLetterData;
{$R *.dfm}

var
  IsCopy : Boolean;

procedure TReCommite.Action1Execute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TReCommite.AInsertExecute(Sender: TObject);
var
   ParentID : integer; // Amin 1391/12/08
begin
  inherited;

  with dm do
  begin
    // Amin 1391/12/07 Start
    if not _CanRecommiteWithOtherOrg then
    begin
      {
      if (ReCommitesTree.DataSource.DataSet as TADOStoredProc).RecordCount > 0 then
        ShowMessage('True')
      else
        ShowMessage('False');
      }
      (ReCommitesTree.DataSource.DataSet as TADOStoredProc).Locate('ID', Integer(ReCommitesTree.Selected.Data), [loCaseInsensitive]);
      if integer((ReCommitesTree.DataSource.DataSet as TADOStoredProc).FieldValues['OrgID']) <> _UserFromOrgID then
      begin
        if MessageDlg('.‘„« ‰„Ì  Ê«‰Ìœ »« «” ›«œÂ «“ «Ì‰ ”„  «ﬁœ«„ »Â «—Ã«⁄ ‰«„Â ò‰Ìœ'+ #13 + '¬Ì« „«Ì· »Â «—Ã«⁄ ‰«„Â »« «” ›«œÂ «“ ”„  ŒÊœ Â” Ìœ ø',
            mtInformation, mbOKCancel, 0) = mrOk then
          ParentID := 1
        else
          exit;
      end
      else
        ParentID := Integer(ReCommitesTree.Selected.Data);
    end
    else
      try
        ParentID := Integer(ReCommitesTree.Selected.Data);
      except
        ParentID := 0;
      end;
      // Amin 1391/12/07 End

    RecommiteSave := TRecommiteSave.Create(nil);
    try
      RecommiteSave.Erja_Or_Rounevesht := 3;
      IsCopy := Dm.Select_LetterReCommiteIsCopy.AsBoolean;
      if IsCopy then
        ReCommiteSave.DBIsCopy.Enabled := False;

      //Amin 1391/12/07 RecommiteSave.ParentID := Integer(ReCommitesTree.Selected.Data);
      RecommiteSave.ParentID := ParentID; // Amin 1391/12/08
      ReCommitesTree.DataSource := nil;

      Select_LetterReCommite.Insert;
      //Select_LetterReCommiteID.AsInteger:=Exec_NewRecommiteID(LetterID,3);
      Select_LetterReCommiteID.AsInteger:=GetID;
      Select_LetterReCommiteType.AsInteger:=3;
      Select_LetterReCommiteActionTypeID.AsInteger:=atDefault;
      Select_LetterReCommiteRecommiteDate.AsString:=_Today;
      dm.Select_LetterReCommiteRecommiteTime.AsString:= Time_GetTime(Dm.YeganehConnection,False);
      //TimeToStr(now,);
      Select_LetterReCommiteParentID.Value:=RecommiteSave.ParentID;

      if IsCopy then
        Select_LetterReCommiteIsCopy.AsBoolean := True
      else
        Select_LetterReCommiteIsCopy.AsBoolean := Dm.DefaultisCopy; //œ— œ»Ì—Œ«‰Â »Â ÿÊ— ÅÌ‘ ›—÷ ‰«„Â »Â ’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì «—Ã«⁄ ‘Êœ .

      //Amin 1391/11/02 Select_LetterReCommiteLetterID.AsInteger:=LetterID;

      RecommiteSave.letterid:=LetterID;
      RecommiteSave.RecommiteID:= GetID;
      RecommiteSave.IsFromReceivedLetters := IsFromReceivedLetters; // Amin 1391/12/02
      RecommiteSave.ShowModal;
    finally
      RecommiteSave.Free;
    end;
  end;
  Refresh;
  ReCommitesTree.DataSource:=DSForm;
  ReCommitesTree.Items[0].Expand(true);

end;

procedure TReCommite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  bbok.SetFocus;
  dm.Select_LetterReCommite.Close;
end;

procedure TReCommite.Refresh;
var
  i : Integer;
begin
  inherited;
  //ShowMessage(IntToStr(ReCommitesTree.Items.Count));
  //ShowMessage(DSForm.DataSet.Name);
  Exec_Select_LetterReCommite(LetterID,3);
  //ShowMessage(IntToStr(ReCommitesTree.Items.Count));
  Exec_Get_LetterAction_By_LetterID(LetterID);

  //ShowMessage(IntToStr(ReCommitesTree.Items.Count));
  if ReCommitesTree.Items.Count>0 then
    for i:=0 to ReCommitesTree.Items.Count-1 do
      ReCommitesTreeGetImageIndex(Application,ReCommitesTree.Items.Item[i]);

  //ShowMessage(IntToStr(ReCommitesTree.Items.Count));
end;

procedure TReCommite.FormShow(Sender: TObject);
begin
  inherited;
//  ReCommitesTree.Images:= Dm.LetterImages; commented by saeedi chon statimage ezafeh kardam ghablan statimage nadasht
//   ShowMessage(IntToStr(ReCommitesTree.Items.Count));
  if _Kartable then
  begin
    AInsert.Enabled := False;
    NewRecommite.Hide;
  end;
//   ShowMessage(IntToStr(ReCommitesTree.Items.Count));
  Refresh;
//   ShowMessage(IntToStr(ReCommitesTree.Items.Count));
  if ReCommitesTree.Items.Count>0 then
    ReCommitesTree.Items[0].Expand(true);
//   ShowMessage(IntToStr(ReCommitesTree.Items.Count));

  if SHOW_TYP = 'SHOW' then
  begin
      //BBOK.Visible           := False;
    NewRecommite.Visible          := False;
    BBDelRecommite.Visible        := False;
//      Label3.Visible                := False;
//      Label4.Visible                := False;
//      DBLookupComboBox1.Visible     := False;
//      DBELatestActionReason.Visible := False;
  end
  else
   if SHOW_TYP = 'EDIT' then
   begin
      //BBOK.Visible           := True;
     NewRecommite.Visible          := True;
     BBDelRecommite.Visible        := True;
//      Label3.Visible                := True;
//      Label4.Visible                := True;
//      DBLookupComboBox1.Visible     := True;
//      DBELatestActionReason.Visible := True;
  end;

end;

procedure TReCommite.ReCommitesTreeDblClick(Sender: TObject);
begin
  inherited;
  if SHOW_TYP = 'EDIT' then
    if Exec_Has_Access(_UserID,ReCommite.Tag,'AEditRecomites') then
      AEditRecomitesExecute(self);
end;

procedure TReCommite.AnswerClick(Sender: TObject);
begin
  inherited;
  MainForm.AAnswer.Execute;
end;

procedure TReCommite.DBShamsiDateEdit2Enter(Sender: TObject);
begin
  inherited;
  ReCommitesTree.Changing:=true;
end;

procedure TReCommite.DBShamsiDateEdit2Exit(Sender: TObject);
begin
  inherited;
  if not (dm.Select_LetterReCommite.State in [dsEdit, dsInsert]) then
    dm.Select_LetterReCommite.edit;
  dm.Select_LetterReCommite.Post;
  ReCommitesTree.Changing:=false;
end;

procedure TReCommite.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
  if ReCommitesTree.Selected.HasChildren then
  begin
    MessageShowString('«» œ« «—Ã«⁄«  “Ì—„Ã„Ê⁄Â «Ì‰ «—Ã«⁄ —« Õ–› ò‰Ìœ',false);
    Exit;
  end;

  if ReCommitesTree.Selected.Level=0 then
  begin
    MessageShowString('«Ê·Ì‰ «—Ã«⁄ —« ‰„Ì  Ê«‰ Õ–› ò—œ',false);
    Exit;
  end;

  {Ranjbar 87.12.14}
  if Trim(dm.Select_LetterReCommiteviewdate.AsString) = '' then
  begin
    if _kartable then
    begin
      if GetRecommiter(dm.Select_LetterReCommiteRecommiteID.AsInteger)=_UserFromOrgID then
      begin
        if MessageShowString('¬Ì« «“ Õ–› «—Ã«⁄ „ÿ„∆‰ Â” Ìœ',True) then
        begin
          Exec_delete_ReCommites(dm.Select_LetterReCommiteRecommiteID.AsInteger);
          Exec_insert_UserLog(Self.Tag,'DataSetDelete1',LetterID);
        end
        else
          Exit;
      end
      else
      begin
        ShowMessage('‘„« ›ﬁÿ „Ì  Ê«‰Ìœ «—Ã«⁄ Ì —« òÂ ŒÊœ «ÌÃ«œ ò—œÂ «Ìœ Õ–› ‰„«ÌÌœ');
        exit;
      end;
    end
    else
      if MessageShowString('¬Ì« «“ Õ–› «—Ã«⁄ „ÿ„∆‰ Â” Ìœ',True) then
      begin
        Exec_delete_ReCommites(dm.Select_LetterReCommiteRecommiteID.AsInteger);
        Exec_insert_UserLog(Self.Tag,'DataSetDelete1',LetterID);
      end
      else
        Exit;

     //œ— ò«— «»·
    if _Kartable then
      if MessageShowString('¬Ì« „«Ì·Ìœ ‰«„Â «‰ Œ«» ‘œÂ œ— ﬁ”„  «—”«· ‘œÂ Â« ° œÊ»«—Â œ— ò«— «»· ﬁ—«— êÌ—œ',True) then
      begin
        try
          if RecommiteId > 0 then
          begin
            QrRecommites.Close;
            QrRecommites.Parameters.ParamByName('Pa_RecommiteID').Value := RecommiteId;
            QrRecommites.Open;
            if QrRecommites.RecordCount > 0 then
            begin
              QrRecommites.Edit;
              QrRecommitesProceeded.AsBoolean := False; //«ﬁœ«„ ‰‘œÂ
              QrRecommites.Post;
            end;
          end;
        finally
          QrRecommites.Close;
        end;
      end;

    Refresh;
  end
  else
    MBaseForm.MessageShowString('‰«„Â „Ê—œ ‰Ÿ—  Ê”ÿ ò«—»— êÌ—‰œÂ ŒÊ«‰œÂ ‘œÂ «”  »‰«»—«Ì‰ «„ò«‰ Õ–› ¬‰ ÊÃÊœ ‰œ«—œ',False);
end;

procedure TReCommite.NewRecommiteClick(Sender: TObject);
begin
  inherited;
  AInsert.Execute;
end;

procedure TReCommite.ReCommitesTreeChange(Sender: TObject;Node: TTreeNode);
begin
  inherited;
  if _Kartable then
  begin
    AInsert.Enabled := (Dm.Select_LetterReCommiteOrgID.AsInteger = _UserFromOrgID);
    {Ranjbar 87.12.14}
    NewRecommite.Enabled := AInsert.Enabled;
    if ReCommitesTree.Selected.HasChildren then
      BBDelRecommite.Enabled := False
    else
      BBDelRecommite.Enabled := True;
    //---
  end;
end;

procedure TReCommite.BBOKClick(Sender: TObject);
begin
  inherited;
  if Dm.Get_LetterAction_By_LetterID.State = dsEdit then
    Dm.Get_LetterAction_By_LetterID.Post;
end;

procedure TReCommite.FormCreate(Sender: TObject);
begin
  inherited;
  //ShowMessage(IntToStr(ReCommitesTree.Items.Count));

  dsform.DataSet := dm.Select_LetterReCommite;
  BidiModeToRight(ReCommitesTree);
  IsFromReceivedLetters:= false; // Amin 1391/12/02
 // DR.DataSet := dm.MYSP;

//  ShowMessage(IntToStr(ReCommitesTree.Items.Count));

end;

function TReCommite.OrgId: integer;
begin
  Dm.Select_LetterReCommite.Close;

  if MainForm.GetSearch then
    Result:=_ResultOrgID
  else
    Result:=0;
end;

function TReCommite.GetID: Integer;
begin
  Result:=0;
  Dm.qGetID.Close;
  Dm.qGetID.Parameters.ParamByName('letterID').Value:=LetterID;
  Dm.qGetID.Open;

  if not Dm.qGetID.IsEmpty then
   Result:=Dm.qGetID.FieldValues['ID'];
end;

procedure TReCommite.TreePeymayesh;
var
  i : Integer;
begin
  for i := 0 to ReCommitesTree.Items.Count-1 do
    ReCommitesTree.Items[i].Selected:=True;

  ReCommitesTree.Items[0].Selected:=True;
end;

procedure TReCommite.ReCommitesTreeGetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
//  Node.ImageIndex:=12;
  if PosEx('_',Node.Text)>0 then
    Node.ImageIndex:=1
  else
    Node.ImageIndex:=0;
end;

procedure TReCommite.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
    Color := clWhite
  else
    Color := clBtnFace;
end;

procedure TReCommite.SetShowRounevesht(const Value: TFShowRounevesht);
begin
  FShowRounevesht := Value;
end;

procedure TReCommite.acShowAllRouneveshtExecute(Sender: TObject);
begin
//   if not Dm.Select_LetterReCommite.IsEmpty then
  with dm,spShowRounevesht,parameters do
  begin
    Close;
    ParamByName('@letterID').value:=LetterID;
    open;
  end;

  if ShowRounevesht<>nil then
  begin
    ShowRounevesht:=nil;
    ShowRounevesht:=TFShowRounevesht.Create(Self);
  end
  else
    ShowRounevesht:=TFShowRounevesht.Create(Self);

  ShowRounevesht.ShowModal;
end;

procedure TReCommite.AaddLetterDataClick(Sender: TObject);
begin
  FraddLetterData := TFraddLetterData.Create(Application);
  FrAddLetterData.SHOW_TYP := SHOW_TYP;
  FraddLetterData.LetterID := Dm.Select_LetterReCommiteLetterID.AsInteger;
  FraddLetterData.RecommitID := Dm.Select_LetterReCommiteRecommiteID.AsInteger;

  Dm.Get_RecommitePayvast_by_RecommiteID.Close;
  Dm.Get_RecommitePayvast_by_RecommiteID.Parameters.ParamByName('@RecommiteID').Value := Dm.Select_LetterReCommiteRecommiteID.AsInteger;
  Dm.Get_RecommitePayvast_by_RecommiteID.open;

  FrAddLetterData.DSForm.DataSet:=Dm.Get_RecommitePayvast_by_RecommiteID;

  FrAddLetterData.Letter_Or_Erja:='Erja';
  FraddLetterData.ShowModal;
  Refresh;
  ReCommitesTree.Items[0].Expand(true);
end;

procedure TReCommite.DSFormDataChange(Sender: TObject; Field: TField);
begin
  if (Dm.Select_LetterReCommiteIsSecure.AsBoolean=True) then
    if (_CanViewSecureRecommite) or (User_IS_Girandeh) then
      DoNotSecure
    else
      DoSecure
  else
    DoNotSecure;
end;

procedure TReCommite.DoSecure;
begin
  DBParaph.Visible:= False;
  lblSecure.Visible:=True;
  DBELatestActionReason.Visible:=False;
  DBMemo1.Visible:=False;
  DBShamsiDateEdit2.Visible:=False;
  DBLookupComboBox1.Visible:=False;

  if (AaddLetterData.Visible) then
    AaddLetterData.Enabled:=False;

  if (BitBtn2.Visible) then
    BitBtn2.Enabled:=False;
end;

procedure TReCommite.DoNotSecure;
begin
  DBParaph.Visible:=True;
  lblSecure.Visible:=False;
  DBELatestActionReason.Visible:=True;
  DBMemo1.Visible:=True;
  DBShamsiDateEdit2.Visible:=True;
  DBLookupComboBox1.Visible:=True;

  if (AaddLetterData.Visible) then
    AaddLetterData.Enabled:=True;

  if (BitBtn2.Visible) then
    BitBtn2.Enabled:=True;
end;

function TReCommite.User_IS_Girandeh: Boolean;
var
  Girandeh:Integer;
begin
  Result:=False;
  Girandeh:=Dm.Select_LetterReCommiteOrgID.AsInteger;
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT FromOrgID FROM Users WHERE Id='+IntToStr(_UserID));
  QTemp.Open;

  if not QTemp.IsEmpty then
    if QTemp.FieldByName('FromOrgID').AsInteger=Girandeh then Result:=True;
end;

procedure TReCommite.ForDBClick;
begin
  ReCommitesTree.DataSource:=nil;
  RecommiteSave:=TRecommiteSave.Create(Application);
  RecommiteSave.RecommiteID:=dm.Select_LetterReCommiteRecommiteID.AsInteger;
  RecommiteSave.proceeded.Checked:=dm.Select_LetterReCommiteProceeded.AsBoolean;
  RecommiteSave.DBIsCopy.Checked:=dm.Select_LetterReCommiteIsCopy.AsBoolean;
  dm.Select_LetterReCommite.Edit;
  RecommiteSave.ShowModal;

  Refresh;
  ReCommitesTree.DataSource:=DSForm;
  ReCommitesTree.Items[0].Expand(true);
end;

procedure TReCommite.AEditRecomitesExecute(Sender: TObject);
begin
  inherited;
  if (dm.Select_LetterReCommiteUserID.AsInteger=_UserID)then  // «ê— ŒÊœ «—Ã«⁄ œÂ‰œÂ »ŒÊ«Âœ «—Ã«⁄ —« ÊÌ—«Ì‘ ò‰œ
  begin
    if (Dm.Select_LetterReCommiteIsSecure.AsBoolean=True) then
      if (_CanViewSecureRecommite) or (User_IS_Girandeh) then
        ForDBClick
      else
        ShowMsgString('«Ì‰ «—Ã«⁄ „Õ—„«‰Â «”  „Ã«“ »Â „‘«ÂœÂ ‰Ì” Ìœ')
    else
      ForDBClick;
  end;
end;

end.

