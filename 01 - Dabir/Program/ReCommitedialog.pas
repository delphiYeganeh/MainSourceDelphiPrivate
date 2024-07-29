{
  Erja_Or_Rounevesht=1 —Ê‰Ê‘ 
  Erja_Or_Rounevesht=3 «—Ã«⁄
}

unit ReCommitedialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,ExportToWord,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ExtActns,  xpBitBtn,UaddLetterData,
  CheckLst, YchecklistBox, ADODB, ImgList, DBTreeView, Menus, AppEvnts;

type
  TRecommiteSave = class(TMBaseForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    desc: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    DBparaph: TDBMemo;
    DBIsCopy: TDBCheckBox;
    proceeded: TCheckBox;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBDeadLineDate: TDBShamsiDateEdit;
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    OrgCombo: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    OneOrg: TRadioButton;
    MoreOrg: TRadioButton;
    DBEdit9: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    OrgTree: TDBTreeView;
    statimages: TImageList;
    FromOrganizations: TADOStoredProc;
    FromOrganizationsTitle: TWideStringField;
    FromOrganizationsParentID: TIntegerField;
    FromOrganizationsPhone: TWideStringField;
    FromOrganizationsFax: TWideStringField;
    FromOrganizationsEmail: TWideStringField;
    FromOrganizationsResponsibleStaffer: TWideStringField;
    FromOrganizationsIsActive: TBooleanField;
    FromOrganizationsPreCode: TWideStringField;
    FromOrganizationsIsInnerOrg: TBooleanField;
    FromOrganizationsID: TAutoIncField;
    FromOrganizationsCode: TWideStringField;
    DFromOrganizations: TDataSource;
    FromOrganizationsName_Semat: TWideStringField;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnExit: TBitBtn;
    AaddLetterData: TBitBtn;
    QCheckAccess: TADOQuery;
    DBCheckBox1: TDBCheckBox;
    QTemp: TADOQuery;
    Edit1: TEdit;
    CheckAccessForErja: TADOStoredProc;
    CheckAccessForErjaResult: TIntegerField;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SetReceiveMode(value:boolean);
    procedure DBEdit9Exit(Sender: TObject);
    procedure OrgComboClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure update_OrgStaffer;
    procedure MoreOrgClick(Sender: TObject);
    procedure DBDeadLineDateEnter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure OrgTreeClick(Sender: TObject);
    procedure OrgTreeKeyPress(Sender: TObject; var Key: Char);
    procedure DoGroupRecommite;
    function NodeSelected: integer;
    procedure DoRecommite;
    procedure BitBtn1Click(Sender: TObject);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
  private
    FReceiveMode:boolean;
    FErja_Or_Rounevesht: Integer;
    FNewRecommitID: Integer;
    FGroupFlag1: Boolean;
    procedure SetErja_Or_Rounevesht(const Value: Integer);
    procedure SetNewRecommitID(const Value: Integer);
    procedure SetGroupFlag1(const Value: Boolean);
    function CheckWorkGroup(OrgID:Integer):Boolean;
    procedure UpdateNewRecommite(NewReCommitesID : Integer);
  public
    RecommiteID: integer;
    LetterID,ParentID: Integer;
    IsFromReceivedLetters : boolean;   // Amin 1391/12/02
    property ReceiveMode:boolean read Freceivemode write SetreceiveMode;
    property Erja_Or_Rounevesht:Integer read FErja_Or_Rounevesht write SetErja_Or_Rounevesht;
    property NewRecommitID:Integer read FNewRecommitID write SetNewRecommitID;
    property GroupFlag1:Boolean read FGroupFlag1 write SetGroupFlag1;
    function GetIDFromCode(code :string):integer;
    function SelectNameByOrgID(id : integer):string;
  end;

var
  RecommiteSave: TRecommiteSave;

implementation

uses FromOrgU, Dmu, businessLayer, YShamsiDate, UMain;

{$R *.dfm}
var
  OrgID:integer;
  Paraph,RecommiteDate, RecommiteTime:string;
  isCopy,lastUpdate:boolean;

procedure TRecommiteSave.btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TRecommiteSave.FormShow(Sender: TObject);
begin
  inherited;
  // DBEdit9.SetFocus;
  OneOrg.Checked:=true;
  OrgTree.Hide;
  AaddLetterData.Enabled:=False;
  DBEdit9.SetFocus;
end;

procedure TRecommiteSave.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Dm.Select_LetterReCommite.Cancel;
  Close;
end;

procedure TRecommiteSave.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  //if Assigned(FromOrgForm) then
    //FromOrgForm.Free;

  FromOrgForm:=TFromOrgForm.Create(Application);
  try
    try
      FromOrgForm.OrganizeMode:=false;
      _ResultOrgID := -1;
      _ResultOrgCode := '-1';
      FromOrgForm.InnerMode := True;
      FromOrgForm.ShowModal;
    except on e:exception do
      ShowMsgString(e.Message);
    end;
  finally
    if FromOrgForm.done then
    begin
      dm.Select_LetterReCommiteOrgID.AsInteger:=_ResultOrgID;
      DBEdit9.Text:=_ResultOrgCode;
      Edit1.Text :=_ResultOrgTitle;
      if trim(OrgCombo.Text)='' then
        Edit1.Visible := true;
      update_OrgStaffer;
    end;
    //FromOrgForm.Free;
  end;
end;

procedure TRecommiteSave.SetReceiveMode(value:boolean);
begin
  FReceiveMode := Value;
  DBIsCopy.Visible := ReceiveMode;
end;

procedure TRecommiteSave.update_OrgStaffer;
var
  _ID : Integer;
  ResponsibleStaffer:widestring;
begin
  inherited;
  if Dm.FromOrganizations.Locate('Code',DBEdit9.Text,[]) then
  begin
    //ShowMessage(_ResultOrgCode);
    Dm.Select_LetterReCommiteOrgID.AsInteger:= dm.FromOrganizationsID.AsInteger;
    Dm.Select_LetterReCommiteOrgStaff.AsString:= dm.FromOrganizationsResponsibleStaffer.AsString;
  end
  else
    ShowMsgString('òœ «‰ Œ«»Ì ‘„« «‘ »«Â «” ');

  try
    Exec_Get_FromOrganizations_ByCode(DBEdit9.Text,_ID ,ResponsibleStaffer);
    Dm.Select_LetterReCommiteOrgStaff.AsString:=ResponsibleStaffer;
    Dm.Select_LetterReCommiteOrgID.AsInteger:=_ID ;
  except
  end;
end;

procedure TRecommiteSave.DBEdit9Exit(Sender: TObject);
begin
  inherited;
//  DSForm.DataSet.Locate('code',StrToInt(DBEdit9.Text),[]);
  if oneorg.checked then
  begin
    update_OrgStaffer;
    TEditExit(sender);
  end;
end;

procedure TRecommiteSave.OrgComboClick(Sender: TObject);
begin
  inherited;
  if OrgCombo.Text <> '' then
    dbedit9.Text:=dm.FromOrganizationsCode.AsString;

  update_OrgStaffer;
  if not lastUpdate then
    _ResultOrgID :=0;
end;

procedure TRecommiteSave.FormCreate(Sender: TObject);
begin
  inherited;
  _ResultOrgID := -1;
  DSForm.DataSet:=dm.Select_LetterReCommite;
  if DSForm.DataSet.State <> dsinsert then
    DBEdit9.Text:=dm.FromOrganizationsCode.AsString;
  proceeded.Checked:=dm.DefaultProceed;

  // Amin 1391/12/08 Start
  if (not _CanRecommiteWithOtherOrg) and (ParentID = 0) then
  begin
    proceeded.Checked:= false;
    proceeded.Visible := false;
  end;
  // Amin 1391/12/08 End

  // ÊÃÂ :  œ— ﬂ«— «»· ‰«„Â Â«Ì Ê«—œÂ Ê ’«œ—Â  Õ  ÂÌç ‘—«ÌÿÌ ﬁ«»· ÊÌ—«Ì‘ ‰Ì” ‰œ
  //„ê—  Ê”ÿ ŒÊœ ﬂ«—»—«‰  Ê·Ìœ ﬂ‰‰œÂ ‰«„Â Ê ‰Ì“  Õ  Â— ‘—«ÌÿÌ ÅÌ‘ ‰ÊÌ” Â« ﬁ«»· ÊÌ—«Ì‘ Â” ‰œ
  DBIsCopy.Checked := Dm.DefaultisCopy;
  IsFromReceivedLetters := false; // Amin 1391/12/02
end;

procedure TRecommiteSave.MoreOrgClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  orgtree.Visible:=moreOrg.Checked;

  if OrgTree.DataSource=nil then
  begin

    FromOrganizations.Open;
    OrgTree.DataSource:=DFromOrganizations;
    for i:=0 to OrgTree.Items.Count-1 do
      OrgTree.Items.Item[i].StateIndex:=1;
  end;
  DBEdit9.Text:='';
  OrgCombo.KeyValue:=-1;
  Edit1.Text :=  '';
  Edit1.Enabled:=OneOrg.Checked;
  dbEdit1.Text :=  '';
  dbEdit1.Enabled:=OneOrg.Checked;
  DBEdit9.Enabled:=OneOrg.Checked;
  OrgCombo.Enabled:=OneOrg.Checked;
  SpeedButton2.Enabled:=OneOrg.Checked;
end;

procedure TRecommiteSave.DBDeadLineDateEnter(Sender: TObject);
begin
  inherited;
  if TDBShamsiDateEdit(Sender).DataSource.DataSet.State in [dsedit,dsinsert] then
    TDBShamsiDateEdit(Sender).Text:=ShamsiIncDate(_Today,0,0,2);
end;

procedure TRecommiteSave.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if DBDeadLineDate.DataSource.DataSet.State in [dsedit,dsinsert] then
  begin
    if DBDeadLineDate.Text='' then
      DBDeadLineDate.Text:=_Today;
    DBDeadLineDate.Text:=ShamsiIncDate(DBDeadLineDate.Text,0,0,1);
  end;
end;

procedure TRecommiteSave.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if DBDeadLineDate.DataSource.DataSet.State in [dsedit,dsinsert] then
  begin
    if trim(DBDeadLineDate.Text) = '' then
      DBDeadLineDate.Text := _Today;

    DBDeadLineDate.Text := ShamsiIncDate(DBDeadLineDate.Text,0,0,-1);

    if ShamsiDateToInt(DBDeadLineDate.Text)<ShamsiDateToInt(DBShamsiDateEdit2.Text) then
      DBDeadLineDate.Text := DBShamsiDateEdit2.Text;

    if ShamsiDateToInt(DBDeadLineDate.Text)< ShamsiDateToInt(_Today) then
      DBDeadLineDate.Text :=  _Today;
  end;
end;

procedure ToggleTreeViewCheckBoxes(Node:TTreeNode; cUnChecked, cChecked:integer;All:boolean);
var
  tmp:TTreeNode;
begin
  if Assigned(Node) then
  begin
    if not Node.Expanded then
      Node.Expand(false);

    if Node.StateIndex = cUnChecked then
        Node.StateIndex := cChecked
    else
    if Node.StateIndex = cChecked then
      Node.StateIndex := cUnChecked;

    if not all then
      exit;

    if Node.GetNext<>nil then
      if Node.Level<Node.GetNext.Level then
      begin
        tmp := Node.GetNext;
        while (Assigned(tmp)) and (tmp.Level>Node.Level) do
        begin
          tmp.StateIndex := Node.StateIndex;
          tmp := tmp.getNext;
        end;
      end;
  end;
end;

procedure TRecommiteSave.OrgTreeClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := TDBTreeView(Sender).ScreenToClient(P);
  if (htOnStateIcon in TDBTreeView(Sender).GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,false)
end;

procedure TRecommiteSave.OrgTreeKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#32 then
    ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,true)
end;

procedure TRecommiteSave.DoGroupRecommite;
var
  tmp:TTreeNode;
begin
  with dm do
  begin
    Paraph        := Select_LetterReCommiteParaph.AsString;
    RecommiteDate := Select_LetterReCommiteRecommiteDate.AsString;
    OrgID         := Select_LetterReCommiteOrgID.AsInteger;
    isCopy        := Select_LetterReCommiteIsCopy.AsBoolean;
  end;

  tmp:=OrgTree.Items[0];
  while (Assigned(tmp)) do
  begin
    if (tmp.StateIndex=2) and (integer(tmp.Data)<>orgid) then
      if Erja_Or_Rounevesht=3 then
      begin
        //Hamed_Ansari_990230_S
        //Exec_insertReCommites_autoID(LetterID,3,ParentId,integer(tmp.Data),Paraph,RecommiteDate,_userid,isCopy,NewRecommitID,DBCheckBox1.Checked);
        Exec_insertReCommites_autoID(LetterID,3,ParentId,integer(tmp.Data),Paraph,RecommiteDate,_userid,isCopy,NewRecommitID,DBCheckBox1.Checked,DBDeadLineDate.Text,ShamsiDateToInt(DBDeadLineDate.Text));
        //Hamed_Ansari_990230_E
      end
      else if Erja_Or_Rounevesht=1 then
      begin
        //Hamed_Ansari_990230_S
        //Exec_insertReCommites_autoID(LetterID,1,ParentId,integer(tmp.Data),Paraph,RecommiteDate,_userid,isCopy,0,DBCheckBox1.Checked);
        Exec_insertReCommites_autoID(LetterID,1,ParentId,integer(tmp.Data),Paraph,RecommiteDate,_userid,isCopy,0,DBCheckBox1.Checked,DBDeadLineDate.Text,ShamsiDateToInt(DBDeadLineDate.Text));
        //Hamed_Ansari_990230_E
      end;
      tmp := tmp.getNext;
  end;
end;

function TRecommiteSave.NodeSelected: integer;
var
   i: integer;
begin
  result:= -1;
  for i:= 0 to OrgTree.Items.Count- 1 do
  begin
    if OrgTree.Items.Item[i].StateIndex=2 then
    begin
      result:= Integer(OrgTree.Items.Item[i].Data);
      Break;
    end;
  end;
end;

procedure TRecommiteSave.DoRecommite;
begin
  with dm do
  begin
    {Ranjbar}
    Select_LetterReCommiteUserID.AsInteger := _Userid; //Fk_Recommites_Users
    /////////
    if Length(Select_LetterReCommiteParaph.AsString) > 0 then
    begin
      Paraph        := Select_LetterReCommiteParaph.AsString;
      RecommiteDate := Select_LetterReCommiteRecommiteDate.AsString;
      OrgID         := Select_LetterReCommiteOrgID.AsInteger;
      isCopy        := Select_LetterReCommiteIsCopy.AsBoolean;
      RecommiteTime := Select_LetterReCommiteRecommiteTime.AsString;
    end
    else
    begin
      Select_LetterReCommiteParaph.AsString := Paraph;
      Select_LetterReCommiteRecommiteDate.AsString := RecommiteDate;
      Select_LetterReCommiteOrgID.AsInteger := OrgID;
      Select_LetterReCommiteIsCopy.AsBoolean := isCopy;
      Select_LetterReCommiteRecommiteTime.AsString := RecommiteTime;
    end;
    //////////
    if (_ResultOrgID>0) then
    begin
      Select_LetterReCommiteOrgID.AsInteger := _ResultOrgID;
      Edit1.Visible := true;
      //ATAIE
      //Select_LetterReCommiteOrgStaff.AsString := '';
    end;
    /////////
    //Select_LetterReCommiteOrgStaff.AsString := SelectNameByOrgID(OrgID);
    //Paraph        := Select_LetterReCommiteParaph.AsString;
    //RecommiteDate := Select_LetterReCommiteRecommiteDate.AsString;
    //OrgID         := Select_LetterReCommiteOrgID.AsInteger;
    //////////
    //---
    Select_LetterReCommiteGroupFlag.AsInteger := 1;
    try
      Select_LetterReCommite.Post;
    except// on e:Exception do
    //   begin
    //   ShowMsgString(e.Message);
      exit;
    //   end;
    end;

    NewRecommitID:=Select_LetterReCommiteRecommiteID.AsInteger;
    //ATAIE
    //UpdateNewRecommite(NewRecommitID);

    //Paraph        := Select_LetterReCommiteParaph.AsString;
    //RecommiteDate := Select_LetterReCommiteRecommiteDate.AsString;
    //OrgID         := Select_LetterReCommiteOrgID.AsInteger;
    //isCopy        := Select_LetterReCommiteIsCopy.AsBoolean;

    Select_LetterReCommite.Locate('ID',ParentId,[]);
    Select_LetterReCommite.Edit;
    Select_LetterReCommiteproceeded.AsBoolean:=Proceeded.Checked;
    Select_LetterReCommiteproceedDate.AsString:=_Today;
    Select_LetterReCommiteActionTypeID.AsInteger:=atRecommited;
    //Select_LetterReCommiteOrgStaff.AsString := SelectNameByOrgID(OrgID);
    {try
    Select_LetterReCommite.Post;
    except
    end;   }
    Select_LetterReCommite.Locate('RecommiteID',NewRecommitID,[]);

    Application.ProcessMessages;
  end;
end;

procedure TRecommiteSave.SetErja_Or_Rounevesht(const Value: Integer);
begin
  FErja_Or_Rounevesht := Value;
end;

procedure TRecommiteSave.BitBtn1Click(Sender: TObject);

  function GetHasSecureLetterAccess (OrgId:Integer):Boolean;
  var
    qry: TADOQuery;
  begin
    Result:=False;
    qry := TADOQuery.Create(Self);
    qry.Connection := dm.YeganehConnection;
    qry.SQL.Text := 'SELECT HasSecureLetterAccess FROM dbo.Users where FromOrgID = '+VarToStr(OrgId);
    qry.Open;
    if qry.RecordCount>0 then
      Result := qry.Fields.FieldByName('HasSecureLetterAccess').AsBoolean;
    qry.Free;
  end;

  //Add Sanaye 950721
  //Ã·ÊêÌ—Ì «“ «—Ã«⁄ ‰«ÂÂ Â«ÌÌ òÂ ⁄ÿ› Ì« ÅÌ—Ê „Õ—„«‰Â œ«—‰œ
  function CheckClassificationFollowRetroactionLetter(LID : Integer):Boolean;
  var
    qry: TADOQuery;
  begin
    Result:=False;
    qry := TADOQuery.Create(Self);
    qry.Connection := dm.YeganehConnection;
    qry.SQL.Text := ' SELECT  1 ' +
                    ' FROM  dbo.Follow_Retroaction_Letter FRL ' +
                    ' INNER JOIN letter L ON L.LetterID = FRL.FR_LetterID ' +
                    ' WHERE FRL.LetterID = '+IntToStr(LID)+' AND L.ClassificationID > 1 ';
    qry.Open;
    if qry.RecordCount>0 then
      Result := True;
    qry.Free;
  end;
  //End Sanaye

var
  i, index, mLetterID: Integer; // Amin 1391/11/02
  tmp:TTreeNode;
  blnGetHasSecureLetterAccess : Boolean;
begin

  i := NodeSelected;

  if MoreOrg.Checked then
    if i < 0 then
    begin
      MessageShowString('Õœ «ﬁ· Ìò êÌ—‰œÂ —« »«Ìœ „‘Œ’ ò‰Ìœ',false);
      Exit;
    end ;

  // Amin 1391/11/02 Start
  MainForm.MakeSelectedRecommites; //»—œ«‘ ‰ —ﬂÊ—œÂ«Ì «‰ Œ«» ‘œÂ

  if (_SelectedLettersID.Count > 0) or (IsFromReceivedLetters)  then
    for index:=0 to _SelectedLettersID.Count-1 do
    begin
      if IsFromReceivedLetters then
        mLetterID := LetterID
      else
        mLetterID := StrToInt(_SelectedLettersID[index]);
        // Amin 1391/11/02 End

      if not (DM.Select_LetterReCommite.State in [dsEdit, dsInsert]) then
      begin
        dm.Select_LetterReCommite.Insert;
        // 1391/11/02 dm.Select_LetterReCommiteLetterID.AsInteger:= LetterID;
        dm.Select_LetterReCommiteLetterID.Value:=mLetterID; // 1391/11/02
        Dm.Select_LetterReCommiteIsCopy.AsBoolean:= not ReCommiteSave.DBIsCopy.Enabled;
        Dm.Select_LetterReCommiteID.AsInteger:=RecommiteID;
        Dm.Select_LetterReCommiteType.AsInteger:=3;
        Dm.Select_LetterReCommiteActionTypeID.AsInteger:=atDefault;
        Dm.Select_LetterReCommiteRecommiteDate.AsString:=_Today;
        Dm.Select_LetterReCommiteParentID.Value:=ParentID;
      end
      else
        dm.Select_LetterReCommiteLetterID.Value:=mLetterID; // 1391/11/02
      //Dm.Select_LetterReCommiteOrgID.Value := i;

      if OneOrg.Checked then
      begin
        Dm.Select_LetterReCommiteOrgID.Value := GetIDFromCode((DBEdit9.Text));//OrgCombo.DataSource.DataSet.FieldByName('id').AsInteger;//
        LastUpdate := true;
        OrgCombo.OnClick(OrgCombo);

        lastUpdate := false;

        blnGetHasSecureLetterAccess := GetHasSecureLetterAccess(Dm.Select_LetterReCommiteOrgID.AsInteger);

        if (not CheckWorkGroup(Dm.Select_LetterReCommiteOrgID.AsInteger)) or
           //(not GetHasSecureLetterAccess(Dm.Select_LetterReCommiteOrgID.AsInteger) and
           (not blnGetHasSecureLetterAccess and
            (dm.Get_All_LetterClassificationID.Value<>1)) then
        begin
          MessageShowString('„ÃÊ“ «—Ã«⁄ »Â «Ì‰ ‘Œ’ —« ‰œ«—Ìœ',false);
          Exit;
        end;

        //Add Sanaye 950721
        //Ã·ÊêÌ—Ì «“ «—Ã«⁄ ‰«ÂÂ Â«ÌÌ òÂ ⁄ÿ› Ì« ÅÌ—Ê „Õ—„«‰Â œ«—‰œ
        //if (not GetHasSecureLetterAccess(Dm.Select_LetterReCommiteOrgID.AsInteger)) and
        if (not blnGetHasSecureLetterAccess) and
          (CheckClassificationFollowRetroactionLetter(mLetterID)) then
        begin
          MessageShowString('œ— ⁄ÿ› Ê ÅÌ—Ê ‰«„Â œ—ŒÊ«” Ì ° ‰«„Â Â«Ì œ«—«Ì ÿ»ﬁÂ »‰œÌ ÊÃÊœ œ«—œ ' + #13#10 + '«„ò«‰ «—Ã«⁄ »Â ‘Œ’ ›«ﬁœ œ” —”Ì „Õ—„«‰Â ÊÃÊœ ‰œ«—œ', False);
          Exit;
        end;
        //End Sanaye..

      end;

      if MoreOrg.Checked then
      begin
        tmp:=OrgTree.Items[0];

        while (Assigned(tmp)) do
        begin

          blnGetHasSecureLetterAccess := GetHasSecureLetterAccess(integer(tmp.Data));

          if (tmp.StateIndex=2) then
            if not CheckWorkGroup(integer(tmp.Data)) or
               //(not GetHasSecureLetterAccess(integer(tmp.Data)) and
               (not blnGetHasSecureLetterAccess and
               (dm.Get_All_LetterClassificationID.Value<>1)) then
            begin
              MessageShowString('„ÃÊ“ «—Ã«⁄ »Â «Ì‰ ‘Œ’ —« ‰œ«—Ìœ '+ '  ' + tmp.Text,false);
              Exit;
            end;

           //Add Sanaye 950721
           //Ã·ÊêÌ—Ì «“ «—Ã«⁄ ‰«ÂÂ Â«ÌÌ òÂ ⁄ÿ› Ì« ÅÌ—Ê „Õ—„«‰Â œ«—‰œ
          if (tmp.StateIndex=2) and
              (not blnGetHasSecureLetterAccess) and
              (CheckClassificationFollowRetroactionLetter(mLetterID)) then
          begin
            MessageShowString('œ— ⁄ÿ› Ê ÅÌ—Ê ‰«„Â œ—ŒÊ«” Ì ° ‰«„Â Â«Ì œ«—«Ì ÿ»ﬁÂ »‰œÌ ÊÃÊœ œ«—œ ' + #13#10 + '«„ò«‰ «—Ã«⁄ »Â ‘Œ’ ›«ﬁœ œ” —”Ì „Õ—„«‰Â ÊÃÊœ ‰œ«—œ', False);
            Exit;
          end;
          //End Sanaye..

          tmp:=tmp.getNext;
        end;
      end;

      if OneOrg.Checked then
      begin
        Paraph        := Dm.Select_LetterReCommiteParaph.AsString;
        RecommiteDate := Dm.Select_LetterReCommiteRecommiteDate.AsString;
        OrgID         := Dm.Select_LetterReCommiteOrgID.AsInteger;
        isCopy        := Dm.Select_LetterReCommiteIsCopy.AsBoolean;
        RecommiteTime := Dm.Select_LetterReCommiteRecommiteTime.AsString;

        DoRecommite;   // AMIN 1391/11/02
      end;
    end; // AMIN 1391/11/02

  try
    // AMIN 1391/11/02 DoRecommite;
    if MoreOrg.Checked then
      DoGroupRecommite;
    ShowMsgString('«—Ã«⁄ »« „Ê›ﬁÌ  «‰Ã«„ ‘œ ÃÂ  «›“Êœ‰ ÅÌÊ”  »Â —ÊÌ œò„Â ÅÌÊ” Â« ò·Ìò ‰„«ÌÌœ');
    BitBtn1.Enabled:=False;
    BitBtn2.Enabled:=False;
    AaddLetterData.Enabled:=True;
    //Add Sanaye 950501
    //Õ· „‘ò· ç‰œ «—Ã«⁄
    RecommiteSave.Close;
  except on e:exception do
    // ShowMsgString('«—Ã«⁄ »Â œ—” Ì «‰Ã«„ ‰‘œ');
  end;

end;

procedure TRecommiteSave.AaddLetterDataClick(Sender: TObject);
begin
  if MoreOrg.Checked then
    GroupFlag1:=True;

  if OneOrg.Checked then
    GroupFlag1:=False;

  if Dm.Select_LetterReCommite.State=dsBrowse then
  begin
    FraddLetterData := TFraddLetterData.Create(Application);
    FraddLetterData.LetterID := Dm.Select_LetterReCommiteLetterID.AsInteger;
    FraddLetterData.RecommitID := NewRecommitID;
    FrAddLetterData.DSForm.DataSet:=Dm.Get_RecommitePayvast_by_RecommiteID;
    FrAddLetterData.Letter_Or_Erja:='Erja';
    FrAddLetterData.GroupFlag1:=GroupFlag1;
    FraddLetterData.ShowModal;
  end
  else
    ShowMsgString('«» œ« »Â —ÊÌ œò„Â  «ÌÌœ ò·Ìò ‰„«ÌÌœ');
end;

procedure TRecommiteSave.SetNewRecommitID(const Value: Integer);
begin
  FNewRecommitID := Value;
end;

procedure TRecommiteSave.SetGroupFlag1(const Value: Boolean);
begin
  FGroupFlag1 := Value;
end;

function TRecommiteSave.CheckWorkGroup(OrgID: Integer): Boolean;
begin
{  Result:=True;
  QCheckAccess.Close;
  QCheckAccess.SQL.Clear;
  QCheckAccess.SQL.Add('SELECT OrgID FROM ChartWorkGroupDetails');
  QCheckAccess.SQL.Add('WHERE	(GroupID IN (SELECT GroupID FROM Users WHERE Id='+IntToStr(_UserID)+'))');
  QCheckAccess.SQL.Add('AND');
  QCheckAccess.SQL.Add('(AccessForErja=1)');
  QCheckAccess.SQL.Add('AND');
  QCheckAccess.SQL.Add('(OrgID='+IntToStr(OrgID)+')');

  QCheckAccess.Open;

  if QCheckAccess.IsEmpty then Result:=False;
  }
  CheckAccessForErja.Close;
  CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := _UserFromOrgID;
  CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := OrgID;//Select_LetterFromOrgID.AsInteger;
  CheckAccessForErja.Open;
  if CheckAccessForErjaResult.AsInteger = 1 then
    Result := True
  else
    Result := False;
end;

procedure TRecommiteSave.UpdateNewRecommite(NewReCommitesID : Integer);
begin
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('UPDATE ReCommites');
  QTemp.SQL.Add(' SET	GroupFlag ='+IntToStr(NewReCommitesID));
  QTemp.SQL.Add(' WHERE RecommiteID='+IntToStr(NewReCommitesID));
  QTemp.ExecSQL;
end;

procedure TRecommiteSave.DBEdit9Change(Sender: TObject);
begin
  inherited;
  Edit1.Visible := false;
end;

function TRecommiteSave.GetIDFromCode(code: string): integer;
begin
  with TADOQuery.Create(nil) do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := 'SELECT id FROM FromOrganizations WHERE Code = '''+ (code)+'''';
    open;
    if IsEmpty then
      Result := -1
    else
      Result := Fields[0].AsInteger;
  end;
end;

function TRecommiteSave.SelectNameByOrgID(id: integer): string;
begin
  with TADOQuery.Create(nil) do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := 'select ResponsibleStaffer from FromOrganizations where ID = '+ IntToStr(id);
    open;
    if IsEmpty then
      Result := ' '
    else
      Result := Fields[0].AsString;
  end;
end;

procedure TRecommiteSave.DBEdit9KeyPress(Sender: TObject; var Key: Char);
var
  id : integer;
begin
  inherited;
  if key = #13 then
  begin
    id := GetIDFromCode(DBEdit9.Text);
    if id <>-1 then
      Dm.FromOrganizations.Locate('id',id,[]);
  end;
end;

end.

