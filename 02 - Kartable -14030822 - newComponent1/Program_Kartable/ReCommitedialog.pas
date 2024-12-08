unit ReCommiteDialog;

interface

uses
  jpeg,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ExtActns, Spin, ADODB,
  MPlayer, xpWindow, xpPages, xpBitBtn, CheckLst, YchecklistBox, ImgList,
  YDbgrid, DBTreeView, Menus, ieview, imageenview, dbimageen, OleCtrls,
  ScanLibCtl_TLB, ievect, dbimageenvect,imageenproc,hyiedefs,hyieutils,YShamsiDate,
  StdActns, AdvGlowButton, xpPanel;

Type
  TRecommiteSave = class(TMBaseForm)
    ColorDialog: TColorDialog;
    Get_RecommiteJpgFile: TADODataSet;
    Get_RecommiteJpgFileRecommiteDataID: TAutoIncField;
    Get_RecommiteJpgFileRecommiteID: TIntegerField;
    Get_RecommiteJpgFileImage: TBlobField;
    Get_RecommiteJpgFileExtention: TWordField;
    pnlBottom: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    pnlTop: TPanel;
    TopPanel: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    OrgButton1: TAdvGlowButton;
    OrgButton2: TAdvGlowButton;
    OrgButton3: TAdvGlowButton;
    OrgButton4: TAdvGlowButton;
    StatImages: TImageList;
    DSearch: TDataSource;
    SearchORG: TADODataSet;
    SearchORGid: TAutoIncField;
    SearchORGtitle: TWideStringField;
    SearchORGResponsibleStaffer: TWideStringField;
    SearchORGCode: TWideStringField;
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
    DBGToORG: TYDBGrid;
    Panel6: TPanel;
    QrWorkGroupOrg: TADOQuery;
    DSWorkGroupOrg: TDataSource;
    SPWorkGroup: TADOStoredProc;
    DSWorkGroup: TDataSource;
    SPWorkGroupWorkGroupID: TAutoIncField;
    SPWorkGroupTitle: TWideStringField;
    SPWorkGroupDescript: TWideStringField;
    QrWorkGroupOrgWorkGroupOrgID: TAutoIncField;
    QrWorkGroupOrgWorkGroupID: TIntegerField;
    QrWorkGroupOrgFromOrgID: TIntegerField;
    BitBtn3: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    PageControl_Org: TPageControl;
    TabTree: TTabSheet;
    TabList: TTabSheet;
    OrgList: TYchecklistBox;
    OrgTree: TDBTreeView;
    PageControl_Text: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBparaph: TDBMemo;
    pnlTemplate: TGroupBox;
    Label9: TLabel;
    SpeedButton1: TAdvGlowButton;
    Bevel1: TBevel;
    TemplateButton1: TAdvGlowButton;
    TemplateButton2: TAdvGlowButton;
    TemplateButton3: TAdvGlowButton;
    TemplateButton4: TAdvGlowButton;
    DBLookupComboBox1: TDBLookupComboBox;
    PanelSign: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    SEPenWidth: TSpinEdit;
    EdtPenColor: TEdit;
    DSGet_RecommiteJpgFile: TDataSource;
    ImageEnDBVect1: TImageEnDBVect;
    SEEraser: TSpinEdit;
    Label3: TLabel;
    Timer1: TTimer;
    Bevel2: TBevel;
    Bevel3: TBevel;
    FromOrganizationsName_Semat: TWideStringField;
    PopupMenu1: TPopupMenu;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    AaddLetterData: TAdvGlowButton;
    QCheckAccess: TADOQuery;
    OrgButton5: TAdvGlowButton;
    OrgButton6: TAdvGlowButton;
    OrgButton7: TAdvGlowButton;
    OrgButton8: TAdvGlowButton;
    Splitter1: TSplitter;
    CheckAccessForErja: TADOStoredProc;
    CheckAccessForErjaResult: TIntegerField;
    pnlMain: TPanel;
    DetailPanel: TPanel;
    Label4: TLabel;
    desc: TLabel;
    Label5: TLabel;
    SpeedButton4: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    DayinWeek: TLabel;
    proceeded: TCheckBox;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    DBIsCopy: TDBCheckBox;
    DBDeadLineDate: TDBShamsiDateEdit;
    DBChBoISFollowup: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    SBPolyLine: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SBRemoveSign: TSpeedButton;
    SBBrush: TSpeedButton;
    SBMoveLayers: TSpeedButton;
    Bevel4: TBevel;
    pnlOperation: TPanel;
    Select_ParaphTemplateOther: TADOStoredProc;
    Select_ParaphTemplateOtherParaphTemplateID: TAutoIncField;
    Select_ParaphTemplateOtherUserID: TIntegerField;
    Select_ParaphTemplateOtherOrderID: TWordField;
    Select_ParaphTemplateOtherTitle: TWideStringField;
    Select_ParaphTemplateOtherParaph: TWideStringField;
    DSELECT_ParaphTemplateOther: TDataSource;
    Panel2: TPanel;
    pnlGroup: TPanel;
    DBLkCBWorkGroup: TDBLookupComboBox;
    Label6: TLabel;
    MoreOrg: TRadioButton;
    OneOrg: TRadioButton;
    pnlTop1: TxpPanel;
    PnlRefer: TPanel;
    OrgIDEdit: TEdit;
    orgcombo: TDBLookupComboBox;
    SearchEdit: TEdit;
    DBEditToStaffer: TDBEdit;
    SpeedButton2: TAdvGlowButton;
    SpeedButton6: TAdvGlowButton;
    Bevel5: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    function NodeSelected: INTEGER;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SEPenWidthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure update_OrgStaffer;
    procedure OrgIDEditExit(Sender: TObject);
    procedure OneOrgClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure TemplateButton1Click(Sender: TObject);
    procedure OrgButton1Click(Sender: TObject);
    procedure DBDeadLineDateEnter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBDeadLineDateChange(Sender: TObject);
    Procedure Refresh_templates;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure OrgListClick(Sender: TObject);
    procedure OrgListKeyPress(Sender: TObject; var Key: Char);
    procedure SearchEditChange(Sender: TObject);
    procedure SearchEditEnter(Sender: TObject);
    procedure SearchEditExit(Sender: TObject);
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGToORGCellClick(Column: TColumn);
    Procedure SetOrgID(value:integer);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure orgcomboCloseUp(Sender: TObject);
    procedure orgcomboDropDown(Sender: TObject);
    procedure orgcomboClick(Sender: TObject);
    procedure Close_Open_Get_RecommiteJpgFile;
    procedure DoGroupRecommite;
    Procedure GoRecommite;
    procedure DoRecommite;
    procedure LoadImage;
    procedure SaveImage;
    procedure Recommite_Bookmarks;
    procedure OrgTreeClick(Sender: TObject);
    procedure OrgTreeKeyPress(Sender: TObject; var Key: Char);
    procedure DBLkCBWorkGroupClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OrgIDEditEnter(Sender: TObject);
    procedure SBRemoveSignClick(Sender: TObject);
    procedure EdtPenColorClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ImageEnDBVect1NewObject(Sender: TObject; hobj: Integer);
    procedure ImageEnDBVect1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SBPolyLineClick(Sender: TObject);
    procedure SBMoveLayersClick(Sender: TObject);
    procedure ImageEnDBVect1MouseMove(Sender: TObject; Shift: TShiftState;X, Y: Integer);
    procedure SBBrushClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SEEraserChange(Sender: TObject);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure MoreOrgClick(Sender: TObject);
    //procedure MoreOrgClick(Sender: TObject);
  private
    LastX , LastY:integer;
    FOrgID : Integer;
    ButtonName : String;
    IsImageChange : Boolean;
    Recommite_Has_Image : Boolean;
    FErja_Or_Rounevesht: Integer;
    FNewRecommitID: Integer;
    FShowReadOnly: Boolean;
    FOldRecommiteID: Integer;
    FOLDID: Integer;
    FCheckAccess: Boolean;
    procedure InsertData_To_SelectLetterReCommite;
    procedure SetErja_Or_Rounevesht(const Value: Integer);
    function Is_Girandeh_Selected:Boolean;
    procedure SetNewRecommitID(const Value: Integer);
    procedure SetShowReadOnly(const Value: Boolean);
    procedure ShowReadOnlyForm;
    procedure NotShowReadOnlyForm;
    procedure SetOldRecommiteID(const Value: Integer);
    procedure SetOLDID(const Value: Integer);
    function CheckWorkGroup(OrgID:Integer):Boolean;
    procedure SetCheckAccess(const Value: Boolean);
    function IS_Girandeh_in_Group:Boolean;
  public
    ParentID,RecommiteID:Integer;
    LetterID : Integer;
    ReplyModeRS : Boolean;
    IsFromReceivedLetters : boolean; // Amin 1391/12/06
    Property OrgID: Integer read FOrgID write SetOrgID;
    property Erja_Or_Rounevesht:Integer read FErja_Or_Rounevesht write SetErja_Or_Rounevesht;
    property NewRecommitID:Integer read FNewRecommitID write SetNewRecommitID;
    property ShowReadOnly:Boolean read FShowReadOnly write SetShowReadOnly;
    property OldRecommiteID:Integer read FOldRecommiteID write SetOldRecommiteID;
    Property OLDID:Integer read FOLDID write SetOLDID;
    property CheckAccess:Boolean read FCheckAccess write SetCheckAccess;
  end;

var
  RecommiteSave: TRecommiteSave;

implementation


uses FromOrgU, Dmu, UMain, businessLayer, DateUtils, URecommiteTemplate,
   insertParaphTemplateU, StrUtils , WorkGroupFM,
  UaddLetterData, Inbox;

{$R *.dfm}

Var Drown : Boolean;
    jpg : TJPEGImage;
    DoSave : boolean;
    Paraph , RecommiteDate:string;
    IsCopy, lastUpdate : Boolean;


Procedure TRecommiteSave.SetOrgID(value:integer);
begin
   FOrgID:=value;
   dm.Select_LetterReCommiteOrgID.AsInteger:=value;
   dm.Select_LetterReCommiteOrgStaff.Value:=dm.Select_LetterReCommiteResponsibleStaffertitle.Value;
   SearchEdit.OnChange:=nil;
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT Code,Title FROM FromOrganizations WHERE ID='+IntToStr(value);
      Open;
      if not IsEmpty then
      begin
         OrgIDEdit.Text:=Fields[0].AsString;
         SearchEdit.Text:=Fields[1].AsString;
      end
      else
      begin
         OrgIDEdit.Text:=dm.FromOrganizationsCode.Value;
         SearchEdit.Text:=dm.FromOrganizationsTitle.Value;
      end;
   end;
//   OrgIDEdit.Text:=dm.FromOrganizationsCode.Value;
//   SearchEdit.Text:=dm.FromOrganizationsTitle.Value;
   SearchEdit.OnChange:=SearchEditChange;
end;

function TRecommiteSave.NodeSelected: integer;
var i: integer;
begin
   Result:=-1;
   if PageControl_Org.ActivePage=TabList then
    begin
     for i:=0 to orglist.Items.Count-1 do
      if orglist.Checked[i] then
       begin
        Result:=orglist.codes[i];
        Break;
       end;
    end
   else
   begin
     for i:=0 to OrgTree.Items.Count-1 do
      if OrgTree.Items.Item[i].StateIndex=2 then
       begin
        Result:=integer(OrgTree.Items.Item[i].data);
        Break;
       end;
   end
end;

Procedure TRecommiteSave.GoRecommite;
Var I : integer;
begin
   inherited;
//   ShowMessage('3-'+IntToStr(orgid));
   if Trim(dm.Select_LetterReCommiteDeadLineDate.AsString) <> '' then //„Â·  «ﬁœ«„
      Dm.Select_LetterReCommiteISFollowup.AsBoolean := True;//ÅÌêÌ—Ì ‘Êœ
   //---

   I := NodeSelected;
   if MoreOrg.Checked then
      if I < 0 then
      begin
         MessageShowString('Õœ «ﬁ· Ìò êÌ—‰œÂ —« »«Ìœ „‘Œ’ ò‰Ìœ',false);
         Exit;
      end
         else
            OrgID := I;


     if OneOrg.Checked then
       if not CheckWorkGroup(OrgID) then
       begin
           MessageShowString('„ÃÊ“ «—Ã«⁄ »Â «Ì‰ ‘Œ’ —« ‰œ«—Ìœ',false);
           Exit;
       end;

     if MoreOrg.Checked then
          if  PageControl_Org.ActivePage=TabList then
          begin
              for i:=0 to orglist.Items.Count-1 do
                 if orglist.Checked[i] then
                     if not CheckWorkGroup(orglist.codes[i]) then
                     begin
                         MessageShowString('„ÃÊ“ «—Ã«⁄ »Â «Ì‰ ‘Œ’ —« ‰œ«—Ìœ '+ '  ' + orglist.SelectedTitles,false);
                         Exit;
                     end;
          end
          else
            for i:=0 to OrgTree.Items.Count-1 do
                 if OrgTree.Items.Item[i].StateIndex=2 then
                     if not CheckWorkGroup(integer(OrgTree.Items.Item[i].Data)) then
                     begin
                         MessageShowString('„ÃÊ“ «—Ã«⁄ »Â «Ì‰ ‘Œ’ —« ‰œ«—Ìœ '+ '  ' + OrgTree.Items.Item[i].Text,false);
                         Exit;
                     end;

//     ShowMessage('4-'+IntToStr(orgid));
     DoRecommite;
     if MoreOrg.Checked then  DoGroupRecommite;
     Recommite_Bookmarks;
     MessageShowString('«—Ã«⁄ ‰«„Â »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',False);
     CheckAccess:=True;
end;

procedure TRecommiteSave.BitBtn1Click(Sender: TObject);
var
  Memo:WideString;
begin
//   ShowMessage('2-'+IntToStr(orgid));

  CheckAccess:=False;
  if not Is_Girandeh_Selected then
  begin
     messageShow(90,false);
     Exit;
  end
  else
   if Trim(DBparaph.Text)='' then
   begin
       messageShow(87,false);
       PageControl_Text.ActivePageIndex:=0;
       DBparaph.SetFocus;
       exit;
   end;
   if Trim(DBparaph.Text)='' then
   begin
      if Exec_Get_innerLetterMemo(LetterID,Memo) then
         DBparaph.Text := Memo
      else
          begin
             messageShow(87,false);
             PageControl_Text.ActivePageIndex:=0;
             DBparaph.SetFocus;
             exit;
          end;
   end;
 {      if not IS_Girandeh_in_Group then
       begin
           ShowMsgString('êÌ—‰œÂ ‰«„Â œ— ê—ÊÂ ò«—Ì À»  ò‰‰œÂ ‰«„Â ﬁ—«— ‰œ«—œ');
           Abort;
       end;
}
       GoRecommite;
       if CheckAccess then
       begin
           AaddLetterData.Enabled:=True;
           InsertData_To_SelectLetterReCommite;
           Dm.UpdateFinalized(Dm.Sp_inboxLetterID.AsInteger,Dm.sp_inbox.FieldByName('recommiteid').Value);
       end;
     // Exec_insert_LetterArchiveFolder(DBLkCBArchive.KeyValue,ReCommitesRecommiteID.AsInteger,_Today,1,'');// recommiteid insteed letterid
       //Qry_SetResult('PRCLetterArchiveFolder_INSERT ' + ReCommitesRecommiteID.AsInteger + ',' + _Today + ',' + '1' + ',' + '' + _userID )


end;

procedure TRecommiteSave.DoRecommite;
begin
   with Dm do
   begin
           Select_LetterReCommiteRecommiteTime.Value := Time_GetTime(Dm.YeganehConnection,False);
           Select_LetterReCommiteOrgID.Value := OrgID;
           try
           Select_LetterReCommite.Post;
           except
           end;
           NewRecommitID:=Select_LetterReCommiteRecommiteID.AsInteger;

           if MoreOrg.Checked then
           begin
              Qry_SetResult('ALTER TABLE Letter DISABLE TRIGGER ALL',dm.YeganehConnection);
              Qry_SetResult('Update Recommites Set GroupFlag='+IntToStr(NewRecommitID)+' Where RecommiteID = ' + IntToStr(NewRecommitID) ,dm.YeganehConnection);
              Qry_SetResult('ALTER TABLE Letter ENABLE TRIGGER ALL',dm.YeganehConnection);
           end;

           //ÅÌêÌ—Ì ‘Êœ
           if Select_LetterReCommiteISFollowup.AsBoolean then
           begin
              Qry_SetResult('ALTER TABLE Letter DISABLE TRIGGER ALL',dm.YeganehConnection);
              Qry_SetResult('Update Recommites Set ISFollowup=1 Where RecommiteID = ' + IntToStr(dm.sp_inboxrecommiteid.AsInteger) ,dm.YeganehConnection);
              Qry_SetResult('ALTER TABLE Letter ENABLE TRIGGER ALL',dm.YeganehConnection);
           end;
           //---
           Paraph        := Select_LetterReCommiteParaph.AsString;
           RecommiteDate := Select_LetterReCommiteRecommiteDate.AsString;
           FOrgID        := Select_LetterReCommiteOrgID.AsInteger;
           isCopy        := Select_LetterReCommiteIsCopy.AsBoolean;

           SaveImage; //RecommiteData –ŒÌ—Â  ’ÊÌ— «„÷« œ— ÃœÊ·

           // „ﬁœ«—œÂÌ
           Qry_SetResult('ALTER TABLE Letter DISABLE TRIGGER ALL',dm.YeganehConnection);
           Qry_SetResult('Update Recommites Set Erja_Or_Answer_Date='''+_Today+''' Where RecommiteID = ' + IntToStr(OldRecommiteID) +' and ID='+IntToStr(OLDID) +' and Erja_Or_Answer_Date is null',dm.YeganehConnection);
           Qry_SetResult('ALTER TABLE Letter ENABLE TRIGGER ALL',dm.YeganehConnection);
           //»«Ìê«‰Ì ﬂ—œ‰ «—Ã«⁄ ›⁄·Ì
       if FInbox.SBArchive.Down then
       begin
           if proceeded.Checked then
              Exec_update_ReCommites_proceed(MainForm.sp_inbox2recommiteid.AsInteger,true,_Today,atRecommited);
       end
       else
       begin
           if proceeded.Checked then
              Exec_update_ReCommites_proceed(dm.sp_inboxrecommiteid.AsInteger,true,_Today,atRecommited);
       end

  end;
end;

procedure TRecommiteSave.Recommite_Bookmarks;
var i: integer;
begin
  if FInbox.SBArchive.Down then
  begin
   if _SelectedRecommitesID.Count > 1 then
      for i:=0 to _selectedRecommitesID.Count-1 do
      begin
         if strtoint(_selectedRecommitesID[i])<>Recommiteid then
         begin
            if proceeded.Checked then
               Exec_update_ReCommites_proceed(   strtoint(_selectedRecommitesID[i]),true,_Today,atRecommited);

            MainForm.Sp_Inbox2.Locate('Recommiteid', strtoint(_selectedRecommitesID[i]),[]);

              Exec_InsertReCommites_autoID(MainForm.sp_inbox2LetterID.AsInteger,3,MainForm.sp_inbox2id.AsInteger,OrgID,Paraph,RecommiteDate,_userid,IsCopy,RecommiteID,DBCheckBox1.Checked,DBDeadLineDate.Text,ShamsiDateToInt(DBDeadLineDate.Text));
         end;
      end;

  END
  ELSE
  begin
   if _SelectedRecommitesID.Count > 1 then
      for i:=0 to _selectedRecommitesID.Count-1 do
      begin
         if strtoint(_selectedRecommitesID[i])<>Recommiteid then
         begin
            if proceeded.Checked then
               Exec_update_ReCommites_proceed(   strtoint(_selectedRecommitesID[i]),true,_Today,atRecommited);

            Dm.Sp_Inbox.Locate('Recommiteid', strtoint(_selectedRecommitesID[i]),[]);

              Exec_InsertReCommites_autoID(dm.sp_inboxLetterID.AsInteger,3,dm.sp_inboxid.AsInteger,OrgID,Paraph,RecommiteDate,_userid,IsCopy,RecommiteID,DBCheckBox1.Checked,DBDeadLineDate.Text,ShamsiDateToInt(DBDeadLineDate.Text));
         end;
      end;
  end
end;

procedure TRecommiteSave.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar 87.12.14 And 88.05.27 Code=133}
   if Dm.Select_LetterReCommite.State <> dsEdit then //ÃÂ  ’œ« “œ‰ «“ ›—„ «’·Ì / œﬂ„Â „‘«ÂœÂ «—Ã«⁄
      InsertData_To_SelectLetterReCommite; //Ê—Êœ «ÿ·«⁄« 

   //"€Ì— ›⁄«· ﬂ—œ‰ ﬂ‰ —·Â« »—«Ì ¬Ì „ "„‘«ÂœÂ «—Ã«⁄
   DetailPanel.Enabled := Dm.Select_LetterReCommite.State = dsinsert;
   TopPanel.Enabled    := Dm.Select_LetterReCommite.State = dsinsert;
   DBparaph.ReadOnly   := Dm.Select_LetterReCommite.State <> dsinsert;

   OneOrg.Checked:=true;
   {Ranjbar}
   //PageControl.Hide;
   //Panel6.Visible := True;
   //Panel6.Enabled := False;
   DBLkCBWorkGroup.Enabled := False;
   OrgList.Enabled := False;
   OrgTree.Enabled := False;

   OrgTree.Color := $00D6D6D6;
   OrgList.Color := $00D6D6D6;

   SPWorkGroup.Close;
   SPWorkGroup.Parameters.ParamByName('@UserID').Value := _UserID;
   SPWorkGroup.Open;
   SearchEdit.BringToFront;
   //---
   {Ranjbar 90.02.10 ID=362}
   Close_Open_Get_RecommiteJpgFile;
   //---
   PageControl_Text.TabIndex := 0;
   SBMoveLayers.Click;
   IsImageChange := False;
   Timer1.Enabled := True;
   PanelSign.Visible := not(DBIsCopy.Checked);
   if ShowReadOnly then
      ShowReadOnlyForm
   else
      NotShowReadOnlyForm;
   CheckAccess:=False;
  // AaddLetterData.Enabled := True;
   DBparaph.SetFocus;

end;

{Ranjbar 87.12.14}
procedure TRecommiteSave.InsertData_To_SelectLetterReCommite;
Var
   LetterFormat,Letter_Type : Integer;
   IsCopy : Boolean;
begin
   With Dm do
   begin
     if FInbox.SBArchive.Down then
     begin
      ParentID := sp_inbox.FieldByName('ID').Value;
      Recommiteid := sp_inbox.FieldByName('recommiteid').Value;
      dm.ExecSelect_LetterReCommite(sp_inboxLetterID.AsInteger,3);//Open Select_LetterReCommite
      OldRecommiteID:=sp_inbox.FieldByName('recommiteid').Value;
      OLDID:= sp_inbox.FieldByName('ID').Value;
      {Ranjbar 89.11.03 ID=291}
      //DBIsCopy.Enabled := not Dm.Sp_InboxIsCopy.AsBoolean;
      IsCopy := Dm.Sp_InboxIsCopy.AsBoolean;
      //---
      with Dm do
      begin
         Select_LetterReCommite.Insert;
         Select_LetterReCommiteType.Value:= 3;
         Select_LetterReCommiteID.Value := Exec_NewRecommiteID(sp_inboxLetterID.AsInteger,3);//3 : «—Ã«⁄
         Select_LetterReCommiteLetterID.Value := Sp_inboxLetterID.AsInteger;
         Select_LetterReCommiteRecommiteDate.Value := _Today;
         Select_LetterReCommiteParentID.Value := RecommiteSave.ParentID;
         Select_LetterReCommiteActionTypeID.Value := atDefault;
         Select_LetterReCommiteISFollowup.AsBoolean := False;//ÅÌêÌ—Ì ‘Êœ
         Select_LetterReCommiteUserID.AsInteger := _Userid;
      end;

      LetterID := Sp_InboxLetterID.AsInteger;

      if ReplyModeRS then
      begin
         if Sp_Inbox.FieldByName('OrgID').AsInteger > 0 then
            Orgid := Sp_Inbox.FieldByName('OrgID').AsInteger;

         Select_LetterReCommiteIsAnswer.AsBoolean := True; //ÃÊ«» Ì« «—Ã«⁄
      end;

      {Ranjbar 89.11.03 ID=291}
      {if not DBIsCopy.Enabled then
         DBIsCopy.Checked := True
      else
         Dm.Select_LetterReCommiteIsCopy.AsBoolean:=dm.DefaultisCopy;}

      LetterFormat := StrToIntDef(Qry_GetResult('Select LetterFormat from letter Where LetterID = '+
                     IntToStr(LetterID),Dm.YeganehConnection),0); //sp_inboxLetterID.AsInteger
      if LetterFormat <> 2 then //2 : ÅÌ‘ ‰ÊÌ”
      begin // ÊÃÂ : ‰«„Â Â«Ì Ê«—œÂ Ê ’«œ—Â œ— ﬂ«— «»·  Õ  ÂÌç ‘—«ÌÿÌ ﬁ«»· ÊÌ—«Ì‘ ‰Ì” ‰œ
         DM.Select_LetterReCommiteIsCopy.AsBoolean := False;
         DBIsCopy.Enabled := False;

         Letter_Type := StrToIntDef(Qry_GetResult('Select Letter_Type from letter Where LetterID = '+
                        IntToStr(LetterID),Dm.YeganehConnection),0);
         if Letter_Type = 3 then //‰«„Â œ«Œ·Ì
         begin
            DBIsCopy.Enabled := True;
            DM.Select_LetterReCommiteIsCopy.AsBoolean := Dm.DefaultInnerCopy;//ÅÌ‘ ›—÷ ›ﬁÿ ŒÊ«‰œ‰Ì »Êœ‰ ‰«„Â œ«Œ·Ì
         end;
         //IsCopy : çÊ‰ «—Ã«⁄ ›⁄·Ì ›ﬁÿ ŒÊ«‰œ‰Ì «”  Å” «Ì‰ «—Ã«⁄ ‰Ì“ »«Ìœ ›ﬁÿ ŒÊ«‰œ‰Ì »«‘œ
         if IsCopy then
         begin
            DM.Select_LetterReCommiteIsCopy.AsBoolean := True;
            DBIsCopy.Enabled := False;
         end;
      end
         else
            DM.Select_LetterReCommiteIsCopy.AsBoolean := False; //ÅÌ‘ ‰ÊÌ”
      //---

      MoreOrg.Enabled := _selectedRecommitesID.Count <= 1;
   end
   else
   begin
      ParentID := sp_inbox.FieldByName('ID').Value;
      Recommiteid := sp_inbox.FieldByName('recommiteid').Value;
      dm.ExecSelect_LetterReCommite(sp_inboxLetterID.AsInteger,3);//Open Select_LetterReCommite
      OldRecommiteID:=sp_inbox.FieldByName('recommiteid').Value;
      OLDID:= sp_inbox.FieldByName('ID').Value;
      {Ranjbar 89.11.03 ID=291}
      //DBIsCopy.Enabled := not Dm.Sp_InboxIsCopy.AsBoolean;
      IsCopy := Dm.Sp_InboxIsCopy.AsBoolean;
      //---
      with Dm do
      begin
         Select_LetterReCommite.Insert;
         Select_LetterReCommiteType.Value:= 3;
         Select_LetterReCommiteID.Value := Exec_NewRecommiteID(sp_inboxLetterID.AsInteger,3);//3 : «—Ã«⁄
         Select_LetterReCommiteLetterID.Value := Sp_inboxLetterID.AsInteger;
         Select_LetterReCommiteRecommiteDate.Value := _Today;
         Select_LetterReCommiteParentID.Value := RecommiteSave.ParentID;
         Select_LetterReCommiteActionTypeID.Value := atDefault;
         Select_LetterReCommiteISFollowup.AsBoolean := False;//ÅÌêÌ—Ì ‘Êœ
         Select_LetterReCommiteUserID.AsInteger := _Userid;
      end;

      LetterID := Sp_InboxLetterID.AsInteger;

      if ReplyModeRS then
      begin
         if Sp_Inbox.FieldByName('OrgID').AsInteger > 0 then
            Orgid := Sp_Inbox.FieldByName('OrgID').AsInteger;

         Select_LetterReCommiteIsAnswer.AsBoolean := True; //ÃÊ«» Ì« «—Ã«⁄
      end;

      {Ranjbar 89.11.03 ID=291}
      {if not DBIsCopy.Enabled then
         DBIsCopy.Checked := True
      else
         Dm.Select_LetterReCommiteIsCopy.AsBoolean:=dm.DefaultisCopy;}

      LetterFormat := StrToIntDef(Qry_GetResult('Select LetterFormat from letter Where LetterID = '+
                     IntToStr(LetterID),Dm.YeganehConnection),0); //sp_inboxLetterID.AsInteger
      if LetterFormat <> 2 then //2 : ÅÌ‘ ‰ÊÌ”
      begin // ÊÃÂ : ‰«„Â Â«Ì Ê«—œÂ Ê ’«œ—Â œ— ﬂ«— «»·  Õ  ÂÌç ‘—«ÌÿÌ ﬁ«»· ÊÌ—«Ì‘ ‰Ì” ‰œ
         DM.Select_LetterReCommiteIsCopy.AsBoolean := False;
         DBIsCopy.Enabled := False;

         Letter_Type := StrToIntDef(Qry_GetResult('Select Letter_Type from letter Where LetterID = '+
                        IntToStr(LetterID),Dm.YeganehConnection),0);
         if Letter_Type = 3 then //‰«„Â œ«Œ·Ì
         begin
            DBIsCopy.Enabled := True;
            DM.Select_LetterReCommiteIsCopy.AsBoolean := Dm.DefaultInnerCopy;//ÅÌ‘ ›—÷ ›ﬁÿ ŒÊ«‰œ‰Ì »Êœ‰ ‰«„Â œ«Œ·Ì
         end;
         //IsCopy : çÊ‰ «—Ã«⁄ ›⁄·Ì ›ﬁÿ ŒÊ«‰œ‰Ì «”  Å” «Ì‰ «—Ã«⁄ ‰Ì“ »«Ìœ ›ﬁÿ ŒÊ«‰œ‰Ì »«‘œ
         if IsCopy then
         begin
            DM.Select_LetterReCommiteIsCopy.AsBoolean := True;
            DBIsCopy.Enabled := False;
         end;
      end
         else
            DM.Select_LetterReCommiteIsCopy.AsBoolean := False; //ÅÌ‘ ‰ÊÌ”
      //---

      MoreOrg.Enabled := _selectedRecommitesID.Count <= 1;
   end
   end

end;

procedure TRecommiteSave.BitBtn2Click(Sender: TObject);
begin
   inherited;
   SBPolyLine.Click;
   Dm.Select_LetterReCommite.Cancel;
   if Get_RecommiteJpgFile.State in [dsEdit,dsInsert] then
      Get_RecommiteJpgFile.Cancel;
end;

procedure TRecommiteSave.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   _ResultOrgID := -1;
   if mainform.GetSearch then
   begin
      Orgid := _ResultOrgID;
//      OrgIDEdit.Text := _ResultOrgCode;
      update_OrgStaffer;
   end;
//   ShowMessage('1-'+IntToStr(orgid));
end;

procedure TRecommiteSave.SEPenWidthChange(Sender: TObject);
begin
  inherited;
  SBPolyLine.click;
end;

procedure TRecommiteSave.FormCreate(Sender: TObject);
begin
   inherited;
//   if not Dm.Select_LetterReCommite.Active then
//      dm.ExecSelect_LetterReCommite(dm.sp_inboxLetterID.AsInteger,dm.sp_inboxReType.AsInteger{‰Ê⁄ «—Ã«⁄});
//   Dm.Select_LetterReCommite.Edit;
   DSForm.DataSet := Dm.Select_LetterReCommite;
   DoSave := False;
   Drown := False;
   jpg := TJPEGImage.Create;
   proceeded.Checked := Dm.DefaultProceed;

   {Ranjbar 89.11.03 ID=291} //FormShow «‰ ﬁ«· »Â
   //DBIsCopy.Checked:=dm.DefaultisCopy;
   //---
   Refresh_templates;
end;

procedure TRecommiteSave.loadImage;
begin
   inherited;
   {if not Get_RecommiteJpgFileImage.IsNull then
   begin
     Get_RecommiteJpgFileImage.SaveToFile(_TempPath+'temp.jpg');
     jpg.LoadFromFile(_TempPath+'temp.jpg');
     Image.Picture.Bitmap.Assign(jpg);
   end;}

   if DSForm.DataSet.State <> dsInsert then
      OrgIDEdit.Text := Dm.FromOrganizationsCode.AsString;
end;

procedure TRecommiteSave.SaveImage;
Var
   I : Integer;
begin
   inherited;
   {Ranjbar 90.02.10 ID=362}
   {if not DoSave then
   begin
      Get_RecommiteJpgFile.Cancel;
      Exit;
   end;
   //---
   jpg.Assign(Image.Picture.Bitmap);
   jpg.SaveToFile(_TempPath + 'temp.jpg');
   }

   //›—„ ﬁ—«— œ«—œ OnShow œ— —ÊÌœ«œ Close_Open_Get_RecommiteJpgFile  «»⁄
   //RecommiteData –ŒÌ—Â  ’ÊÌ— «„÷« œ— ÃœÊ·
   if Get_RecommiteJpgFile.State in [dsEdit,dsInsert] then
      if IsImageChange then
      begin
         if (ImageEnDBVect1.ObjectsCount>0)or(ImageEnDBVect1.LayersCount>1) then
            ImageEnDBVect1.LayersMergeAll;  //«‘Ì«Ì «÷«›Â ‘œÂ —« Â„  —ﬂÌ» „Ì ﬂ‰œ
         For I := ImageEnDBVect1.ObjectsCount - 1 downto 0 do
            ImageEnDBVect1.RemoveObject(I); //Å” «“  —ﬂÌ» ·«ÌÂ Â« ° »⁄÷ «“ ·«ÌÂ Â«  ﬂ—«— „Ì ‘Ê‰œ
         Get_RecommiteJpgFileExtention.AsInteger := 1; //1 = Jpg
         Get_RecommiteJpgFileRecommiteID.AsInteger := Dm.Select_LetterReCommiteRecommiteID.AsInteger;
         Get_RecommiteJpgFile.Post;
      end;
end;

procedure TRecommiteSave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {Ranjbar 87.12.14}
  if Dm.Select_LetterReCommite.State in [dsInsert,dsEdit] then
     Dm.Select_LetterReCommite.Cancel;
  //---   
  DeleteFile(_TempPath+'temp.jpg');
end;


procedure TRecommiteSave.update_OrgStaffer;
var _id:integer ;
ResponsibleStaffer:widestring;
begin
  inherited;
   if dm.FromOrganizations.Locate('Code',OrgIDEdit.Text,[]) then
   begin
      Orgid:= dm.FromOrganizationsID.AsInteger;
      dm.Select_LetterReCommiteOrgStaff.AsString:= dm.FromOrganizationsResponsibleStaffer.AsString;
   end
   else
     begin
         Exec_Get_FromOrganizations_ByCode(OrgIDEdit.Text,_id,ResponsibleStaffer);
         dm.Select_LetterReCommiteOrgStaff.AsString:=ResponsibleStaffer;
         dm.Select_LetterReCommiteOrgID.AsInteger:=_id ;
     end;
end;


procedure TRecommiteSave.OrgIDEditExit(Sender: TObject);
begin
   inherited;
   update_OrgStaffer;
   TEditExit(sender);
   Keyboard_Farsi;
end;

procedure TRecommiteSave.OneOrgClick(Sender: TObject);
var i: integer;
begin
   inherited;
 {  OrgList.Fill;}
      FromOrganizations.Close;
      FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
      FromOrganizations.Open;

   {Ranjbar 16}
   //PageControl_Org.Visible:=MoreOrg.Checked;
   //Panel6.Enabled := MoreOrg.Checked;
   Panel6.Visible := False;
   if MoreOrg.Checked = True then
   begin
      OrgTree.Color := clWindow;
      OrgList.Color := clWindow;
      Panel6.Visible := True;
   end
   else
   begin
      OrgTree.Color := $00D6D6D6;
      OrgList.Color := $00D6D6D6;
      Panel6.Visible := False;
   end;

   DBLkCBWorkGroup.Enabled := MoreOrg.Checked;
   OrgList.Enabled := MoreOrg.Checked;
   OrgTree.Enabled := MoreOrg.Checked;
   //---
   if OrgTree.DataSource=nil then
   begin
      OrgList.Fill;
      FromOrganizations.Close;
      FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
      FromOrganizations.Open;
      OrgTree.DataSource:=DFromOrganizations;
      for i:=0 to OrgTree.Items.Count-1 do
         OrgTree.Items.Item[i].StateIndex:=1;
   end;
   pnlTop   .Visible := OneOrg.Checked ;
   GroupBox1.Enabled := OneOrg.Checked ;
end;

procedure TRecommiteSave.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FrRecommiteTemplate:= TFrRecommiteTemplate.Create(Application);
  FrRecommiteTemplate.ShowModal;
  Refresh_templates;
end;

Procedure TRecommiteSave.Refresh_templates;
var i: byte;
begin
  Open_ParaphTemplate(1);

  if not ShowReadOnly then
  begin
    for i:=1 to 8 do
    begin
      TAdvGlowButton(FindComponent('OrgButton'+IntToStr(i))).Caption := GetUserSetting('DefaultRecieverTitle'+IntToStr(i));

       if Trim(TAdvGlowButton(FindComponent('OrgButton'+IntToStr(i))).Caption)  = '' then
         TAdvGlowButton(FindComponent('OrgButton'+IntToStr(i))).Enabled := False
       else   TAdvGlowButton(FindComponent('OrgButton'+IntToStr(i))).Enabled := True ;
    end ;

    for  i:= 1 to 4 do
    begin
       TAdvGlowButton(FindComponent('TemplateButton'+IntToStr(i))).Caption := Get_ParaphTemplate_title(i);

       if Trim(TAdvGlowButton(FindComponent('TemplateButton'+IntToStr(i))).Caption)  = '' then
         TAdvGlowButton(FindComponent('TemplateButton'+IntToStr(i))).Enabled := False
       else   TAdvGlowButton(FindComponent('TemplateButton'+IntToStr(i))).Enabled := True ;
    end;

  end ;

  DSELECT_ParaphTemplateOther.DataSet.Close;
  DSELECT_ParaphTemplateOther.DataSet.Open ;
  DSELECT_ParaphTemplateOther.DataSet.Filtered  := False;
  DSELECT_ParaphTemplateOther.DataSet.Filter    := ' OrderId > 4 ' ;
  DSELECT_ParaphTemplateOther.DataSet.Filtered  := True;

  DBLookupComboBox1.Enabled := DSELECT_ParaphTemplateOther.DataSet.RecordCount > 0 ;

end;

procedure TRecommiteSave.TemplateButton1Click(Sender: TObject);
begin
  inherited;
   dm.Select_LetterReCommiteParaph.AsString := Get_ParaphTemplate_Paraph(TAdvGlowButton(sender).Tag);
   DBLookupComboBox1.KeyValue := null ;
end;

procedure TRecommiteSave.OrgButton1Click(Sender: TObject);
begin
  inherited;
    OrgID := GetUserSetting('DefaultReciever'+IntToStr(TAdvGlowButton(sender).Tag));
    {Ranjbar 90.02.10 ID=362}
    PageControl_Text.TabIndex := 0;
    //--
    DBparaph.SetFocus;
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
      if Dm.Select_LetterReCommiteDeadLineDate.AsString = '' then
         Dm.Select_LetterReCommiteDeadLineDate.AsString := _Today;
      Dm.Select_LetterReCommiteDeadLineDate.AsString := ShamsiIncDate(dm.Select_LetterReCommiteDeadLineDate.AsString,0,0,1);
   end;
end;

procedure TRecommiteSave.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   if DBDeadLineDate.DataSource.DataSet.State in [dsEdit,dsInsert] then
   begin
      if trim(DBDeadLineDate.Text) = '' then
         Dm.Select_LetterReCommiteDeadLineDate.AsString := _Today;
      // Amin 1391/11/21 DBDeadLineDate.Text := ShamsiIncDate(DBDeadLineDate.Text,0,0,-1);
      Dm.Select_LetterReCommiteDeadLineDate.AsString := ShamsiIncDate(dm.Select_LetterReCommiteDeadLineDate.AsString,0,0,-1); // Amin 1391/11/21
      if ShamsiDateToInt(dm.Select_LetterReCommiteDeadLineDate.AsString)<ShamsiDateToInt(dm.Select_LetterReCommiteRecommiteDate.AsString) then
         Dm.Select_LetterReCommiteDeadLineDate.AsString := dm.Select_LetterReCommiteRecommiteDate.AsString;
      if ShamsiDateToInt(dm.Select_LetterReCommiteDeadLineDate.AsString)< ShamsiDateToInt(_Today) then
         Dm.Select_LetterReCommiteDeadLineDate.AsString :=  _Today;
   end;
end;

procedure TRecommiteSave.DBDeadLineDateChange(Sender: TObject);
var
   s: integer; // Amin 1391/11/21
begin
   inherited;
   {Ranjbar 87.12.14}
   if Trim(TDBEdit(Sender).Text) = '' then
      Exit;
   //---
   {Ranjbar 88.05.26 Code=127}
   {Case ShamsidayInWeek(TDBEdit(Sender).Text) of
     1: DayinWeek.Caption:='‘‰»Â' ;
     2: DayinWeek.Caption:='Ìò ‘‰»Â' ;
     3: DayinWeek.Caption:='œÊ ‘‰»Â' ;
     4: DayinWeek.Caption:='”Â ‘‰»Â' ;
     5: DayinWeek.Caption:='çÂ«— ‘‰»Â' ;
     6: DayinWeek.Caption:='Å‰Ã ‘‰»Â' ;
     7: DayinWeek.Caption:='Ã„⁄Â';
   End;}

   // Amin 1391/11/21 Start
//   s:= DBDeadLineDate.SelStart;
//   Dm.Select_LetterReCommiteDeadLineDate.AsString:= DBDeadLineDate.Text;
//   DBDeadLineDate.SelStart := s;
   // Amin 1391/11/21 End

   DayinWeek.Caption := Date_DayName(TDBEdit(Sender).Text);
   //---
end;

procedure TRecommiteSave.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;

  if DBLookupComboBox1.KeyValue <> null then
    dm.Select_LetterReCommiteParaph.AsString := DBLookupComboBox1.KeyValue;

end;

procedure TRecommiteSave.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrInsertParaphTemplate:= TFrInsertParaphTemplate.Create(Application);
  FrInsertParaphTemplate.TemplateType := 1;
  FrInsertParaphTemplate.ShowModal;
  Refresh_templates;

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

    else if Node.StateIndex = cChecked then
      Node.StateIndex := cUnChecked;

     if not all then exit;

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


procedure TRecommiteSave.OrgListClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := TTreeView(Sender).ScreenToClient(P);
  if (htOnStateIcon in TTreeView(Sender).GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(       TTreeView(Sender).Selected,1,2,false)

end;

procedure TRecommiteSave.OrgListKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key=#32 then
    ToggleTreeViewCheckBoxes(       TTreeView(Sender).Selected,1,2,false)

end;

procedure TRecommiteSave.SearchEditChange(Sender: TObject);
var s: string;
begin
  inherited;

  s:=YeganehTrim(SearchEdit.Text);

 with SearchORG do
  if length(s)>=2  then
  begin
    Close;
    CommandText:='Select top 100 id,title, ResponsibleStaffer, Code from fromorganizations '+
    ' where IsActive=1 and IsInnerOrg=1 and replace(title+''_''+responsiblestaffer,''  '','' '') like ''%'+s+'%''';
    if SearchEdit.Focused then
       DBGToORG.Show;
    open;
  end;

end;

procedure TRecommiteSave.SearchEditEnter(Sender: TObject);
begin
  inherited;
  if RightStr(searchedit.Text,3)='...' then
     SearchEdit.Text:='';
end;

procedure TRecommiteSave.SearchEditExit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  if not DBGToORG.Focused then
   DBGToORG.Hide;

end;

procedure TRecommiteSave.SearchEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_down) or (key=vk_up) then
  begin
   if ssalt in shift then
     DBGToORG.Visible:=not DBGToORG.Visible
    else
    DBGToORG.SetFocus;
  end;

end;

procedure TRecommiteSave.DBGToORGCellClick(Column: TColumn);
begin
  inherited;
    OrgID:=SearchORGid.AsInteger;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
end;

procedure TRecommiteSave.DBGToORGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=13 then
   begin
    OrgID:=SearchORGid.AsInteger;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
   end;

end;

procedure TRecommiteSave.orgcomboCloseUp(Sender: TObject);
begin
  inherited;
//  TDBLookupComboBox(Sender).Width:=20;

end;

procedure TRecommiteSave.orgcomboDropDown(Sender: TObject);
begin
  inherited;
//  TDBLookupComboBox(Sender).Width:=SearchEdit.Width +20;

end;

procedure TRecommiteSave.orgcomboClick(Sender: TObject);
begin
  inherited;
 OrgID := TDBLookupComboBox(sender).KeyValue;
 PageControl_Text.Tabindex := 0;
 DBparaph.SetFocus;
 if not lastUpdate then
      _ResultOrgID :=0;
end;

procedure TRecommiteSave.Close_Open_Get_RecommiteJpgFile;
begin
   inherited;
   with Get_RecommiteJpgFile do
   begin
      Close;
      Parameters.ParamByName('@Recommiteid').Value := RecommiteID;
      Open;
   end;

   if Exec_Recommite_has_JpgFile(RecommiteID) then
   begin
      Recommite_Has_Image := True;
      LoadImage;
      Get_RecommiteJpgFile.Edit;
   end
      else
      begin
         Get_RecommiteJpgFile.Insert;
         Recommite_Has_Image := False;
      end;
end;

procedure TRecommiteSave.DoGroupRecommite;
 var i: integer;
begin
    if  PageControl_Org.ActivePage=TabList then
     begin
      for i:=0 to orglist.Items.Count-1 do
       if orglist.Checked[i] then
         if orglist.codes[i]<>orgid then
          //Hamed_Ansari_990325_S
          //Exec_insertReCommites_autoID(LetterID,3,ParentId,orglist.codes[i],Paraph,RecommiteDate,_userid,false,NewRecommitID,DBCheckBox1.Checked);
          Exec_insertReCommites_autoID(LetterID,3,ParentId,orglist.codes[i],Paraph,RecommiteDate,_userid,false,NewRecommitID,DBCheckBox1.Checked,DBDeadLineDate.Text,ShamsiDateToInt(DBDeadLineDate.Text) );
          //Hamed_Ansari_990325_S
     end
    else
      for i:=0 to OrgTree.Items.Count-1 do
       if OrgTree.Items.Item[i].StateIndex=2 then
         if integer(OrgTree.Items.Item[i].Data)<>orgid then
          //Hamed_Ansari_990325_S
          //Exec_insertReCommites_autoID(LetterID,3,ParentId,integer(OrgTree.Items.Item[i].Data),Paraph,RecommiteDate,_userid,false,NewRecommitID,DBCheckBox1.Checked);
          Exec_insertReCommites_autoID(LetterID,3,ParentId,integer(OrgTree.Items.Item[i].Data),Paraph,RecommiteDate,_userid,false,NewRecommitID,DBCheckBox1.Checked,DBDeadLineDate.Text,ShamsiDateToInt(DBDeadLineDate.Text));
          //Hamed_Ansari_990325_S
end;

procedure TRecommiteSave.OrgTreeClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := TTreeView(Sender).ScreenToClient(P);
  if (htOnStateIcon in TTreeView(Sender).GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,false)

end;

procedure TRecommiteSave.OrgTreeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key=#32 then
    ToggleTreeViewCheckBoxes(TDBTreeView(Sender).Selected,1,2,true)

end;

procedure TRecommiteSave.DBLkCBWorkGroupClick(Sender: TObject);
Var
   I:integer;
begin
  inherited;
  if DBLkCBWorkGroup.KeyValue <= 0 then
     Exit;

  QrWorkGroupOrg.Close;
  QrWorkGroupOrg.Parameters.ParamByName('Pa_WorkGroupID').Value := DBLkCBWorkGroup.KeyValue;
  QrWorkGroupOrg.Open;

  //For OrgList
  QrWorkGroupOrg.First;
  For I:=0 to OrgList.Items.Count-1 do
     OrgList.Checked[I] := False;
  While Not QrWorkGroupOrg.Eof do
  begin
     For I:=0 to OrgList.Items.Count-1 do
        if OrgList.Codes[I] = QrWorkGroupOrgFromOrgID.AsInteger then
           OrgList.Checked[I] := True;
     QrWorkGroupOrg.Next;
  end;

  //For OrgTree
  QrWorkGroupOrg.First;
  OrgTree.FullExpand;
  Application.ProcessMessages;
  For I:=0 to OrgTree.Items.Count-1 do
      OrgTree.Items.Item[I].StateIndex := 1;//1:UnChecked  2:Checked
  While Not QrWorkGroupOrg.Eof do
  begin
     For I:=0 to OrgTree.Items.Count-1 do
        if Integer(OrgTree.Items.Item[I].Data) = QrWorkGroupOrgFromOrgID.AsInteger then
           OrgTree.Items.Item[I].StateIndex := 2; //1:UnChecked  2:Checked
     QrWorkGroupOrg.Next;
  end;
end;

procedure TRecommiteSave.BitBtn3Click(Sender: TObject);
Var
   LetterID , OrgID , I : integer;
begin
  inherited;
  {Ranjbar 87.12.14}
  LetterID := dm.sp_inboxLetterID.AsInteger;

  if OneOrg.Checked then
  begin
     OrgID := dm.Select_LetterReCommiteOrgID.AsInteger;
     if OrgID <=0 then
     begin
        MessageShowString('·ÿ›« "«—Ã«⁄ ‘Ê‰œÂ" —«  ⁄ÌÌ‰ ‰„«ÌÌœ',false);
        Exit;
     end;
     Try
        Exec_insert_ReCommites(Exec_NewRecommiteID(LetterID,1),True,LetterID,OrgID , '«—”«· —Ê‰Ê‘  : '+ DBparaph.Text ,0,False,_Today,1,_userid);//1 : —Ê‰Ê‘ 
        MessageShowString('«—”«· —Ê‰Ê‘  ‰«„Â »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',False);
        if proceeded.Checked then // «‰ ﬁ«· »Â »«Ìê«‰Ì
           Exec_update_ReCommites_proceed(dm.sp_inboxrecommiteid.AsInteger,true,_Today,atRecommited);
     Except
        MessageShowString('«‘ﬂ«· œ— «—”«· —Ê‰Ê‘ ',False);
     End;
     Exit;
  end;

  if (MoreOrg.Checked)And(NodeSelected < 0) then
  begin
     MessageShowString('Õœ«ﬁ· Ìò êÌ—‰œÂ —« »«Ìœ „‘Œ’ ò‰Ìœ',false);
     Exit;
  end;

  if PageControl_Org.TabIndex = 0 then
  begin
     //For OrgTree
     For I:= 0 to OrgTree.Items.Count -1 do
        if OrgTree.Items.Item[I].StateIndex = 2 then //Checked
        begin
           OrgID := Integer(OrgTree.Items.Item[I].Data);
           Exec_insert_ReCommites(Exec_NewRecommiteID(LetterID,1),True,LetterID,OrgID,  '«—”«· —Ê‰Ê‘  : '+ DBparaph.Text  ,0,False,_Today,1,_userid);//1 : —Ê‰Ê‘ 
           OrgTree.Items.Item[I].StateIndex := 1; //Unchecked
        end;
        if proceeded.Checked then // «‰ ﬁ«· »Â »«Ìê«‰Ì
           Exec_update_ReCommites_proceed(dm.sp_inboxrecommiteid.AsInteger,true,_Today,atRecommited);
  end
  else
  begin
        //For OrgList
     For I:=0 to OrgList.Items.Count-1 do
        if OrgList.Checked[I] then
        begin
           OrgID := OrgList.Codes[I];
           Exec_insert_ReCommites(Exec_NewRecommiteID(LetterID,1),True,LetterID,OrgID, '«—”«· —Ê‰Ê‘  : '+ DBparaph.Text  ,0,False,_Today,1,_userid);//1 : —Ê‰Ê‘ 
           OrgList.Checked[I] := False;
        end;
        if proceeded.Checked then // «‰ ﬁ«· »Â »«Ìê«‰Ì
           Exec_update_ReCommites_proceed(dm.sp_inboxrecommiteid.AsInteger,true,_Today,atRecommited);
  end;
  MessageShowString('«—”«· —Ê‰Ê‘  ‰«„Â »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',False);
  //---

end;

procedure TRecommiteSave.BitBtn4Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TRecommiteSave.BitBtn5Click(Sender: TObject);
begin
   inherited;
    CheckAccess:=False;
    if not Is_Girandeh_Selected then
    begin
       messageShow(90,false);
       Exit;
    end
    else
    begin
       if Trim(DBparaph.Text)='' then
       begin
           messageShow(87,false);
           PageControl_Text.ActivePageIndex:=0;
           DBparaph.SetFocus;
           exit;
       end;
       GoRecommite;
       Close;
    end;
end;

procedure TRecommiteSave.OrgIDEditEnter(Sender: TObject);
begin
   inherited;
   Keyboard_English;
end;

procedure TRecommiteSave.SBRemoveSignClick(Sender: TObject);
Var
   I:Integer;
begin
   inherited;
   if Dm.Select_LetterReCommite.State <> dsinsert then
      Exit;
   ButtonName := SBRemoveSign.Name;
   For I := ImageEnDBVect1.ObjectsCount - 1 downto 0 do
      ImageEnDBVect1.RemoveObject(I);
   For I := ImageEnDBVect1.LayersCount - 1 downto 0 do
      ImageEnDBVect1.LayersRemove(I);

   ImageEnDBVect1.Clear;
   ImageEnDBVect1.MinBitmapSize:=1;
   ImageEnDBVect1.Proc.Fill( CreateRGB(255,255,255) );
   ImageEnDBVect1.Proc.AutoUndo := True;
   IsImageChange := True;
   ImageEnDBVect1.ObjPenWidth[-1] := 1;   
   {ImageEnDBVect1.ObjPenColor[-1] := EdtPenColor.Color;
   ImageEnDBVect1.ObjPenWidth[-1] := SEPenWidth.Value;
   ImageEnDBVect1.MouseInteractVt := [miPutPolyLine];}
end;

procedure TRecommiteSave.EdtPenColorClick(Sender: TObject);
begin
   inherited;
   if Dm.Select_LetterReCommite.State <> dsinsert then
      Exit;
   if ColorDialog.Execute then
   begin
      EdtPenColor.Color := ColorDialog.Color;
      ImageEnDBVect1.ObjPenColor[-1] := EdtPenColor.Color;
   end;
end;

procedure TRecommiteSave.SpeedButton7Click(Sender: TObject);
{Var
   StreamPic : TStream;
   ObjID : integer;
   Rect : TRect;}
begin
   inherited;
   if Dm.Select_LetterReCommite.State <> dsinsert then
      Exit;
   ButtonName := SpeedButton7.Name;   
   {Ranjbar 90.02.10 ID=362}
   //Image.Cursor := crMultiDrag;
   if StrToIntDef(Qry_GetResult('SELECT COUNT(UserID) AS HasSign FROM UserSign WHERE UserID = '+
                  IntToStr(_UserID),Dm.YeganehConnection),0) = 0 then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ‘„« «„÷«Ì  ’ÊÌ—Ì ‰œ«—Ìœ',[mbOK],mtInformation);
      Exit;
   end;

   Open_UserSign(_UserID);//»«“ ﬂ—œ‰  ’ÊÌ— «„÷«Ì ﬂ«—»— Ã«—Ì
   {Rect.Left := 0;
   Rect.Top := 0;
   Rect.Bottom := ImageEnDBVect1.Height;
   Rect.Right := ImageEnDBVect1.Width;
   StreamPic := TStream.Create;
   StreamPic := Dm.Select_UserSign.CreateBlobStream(Dm.Select_UserSignUserSign,bmRead);
   ObjID := ImageEnDBVect1.AddNewObject(iekBITMAP,Rect,0);
   ImageEnDBVect1.SetObjBitmapFromStream(ObjID,StreamPic,0);
   ImageEnDBVect1.Proc.Resample(-1,165,rfNone);}
   Dm.Select_UserSignUserSign.SaveToFile(_TempPath + 'Temp.jpg');
   ImageEnDBVect1.LayersAdd;
   ImageEnDBVect1.IO.LoadFromFileJpeg(_TempPath + 'Temp.jpg');
   ImageEnDBVect1.Proc.Resample(-1,165,rfNone);
   ImageEnDBVect1.Fit;
   DeleteFile(_TempPath + 'Temp.jpg');
   ImageEnDBVect1.MouseInteractVt := [miObjectSelect];
//   ImageEnDBVect1.MouseInteract := [miMoveLayers,miResizeLayers];
   ImageEnDBVect1.ObjPenWidth[-1] := 1;   
   IsImageChange := True;
   //---
end;

procedure TRecommiteSave.ImageEnDBVect1NewObject(Sender: TObject;
  hobj: Integer);
begin
  inherited;
  ImageEnDBVect1.MouseInteractVt := [miObjectSelect];
end;

procedure TRecommiteSave.ImageEnDBVect1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   inherited;
   if ImageEnDBVect1.MouseInteractVt = [miPutPolyLine] then
      ImageEnDBVect1.MouseInteractVt := [miPutPolyLine];

end;

procedure TRecommiteSave.SBPolyLineClick(Sender: TObject);
begin
   inherited;
   if Dm.Select_LetterReCommite.State <> dsinsert then
      Exit;
   ButtonName := SBPolyLine.Name;
   ImageEnDBVect1.ObjPenColor[-1] := EdtPenColor.Color;
   ImageEnDBVect1.ObjPenWidth[-1] := SEPenWidth.Value;
   ImageEnDBVect1.MouseInteractVt := [miPutPolyLine];
   IsImageChange := True;
   //IsImageChange := True; //ImageEnDBVect1MouseMove ﬁ—«— œ«œ‰ «Ì‰ Œÿ œ— —ÊÌœ«œ
end;

procedure TRecommiteSave.SBMoveLayersClick(Sender: TObject);
begin
   inherited;
   if Dm.Select_LetterReCommite.State <> dsInsert then
      Exit;
   ButtonName := SBMoveLayers.Name;
   (*
   if ImageEnDBVect1.LayersCount > 1 then
      ImageEnDBVect1.MouseInteract := [miMoveLayers,miResizeLayers]
   else
      ImageEnDBVect1.MouseInteract := [];
   *)
   ImageEnDBVect1.ObjPenWidth[-1] := 1;
   //ImageEnDBVect1.MouseInteract := [miMoveLayers,miResizeLayers];
   //ImageEnDBVect1.MouseInteractVt := [miObjectSelect];
end;

procedure TRecommiteSave.ImageEnDBVect1MouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
Var
   Px,Py : Integer;
   Bx,By : Integer;
   Op : TIERenderOperation;
   Operation : Byte;
begin
   if UpperCase(ButtonName) = UpperCase(SBBrush.Name) then
   begin
      Operation := 0;
      OP := TIERenderOperation(Operation);
      with ImageEnDBVect1 do
         if LayersCount >= 2 then
         begin
            with Layers[1] do
            begin
               bx := Bitmap.Width;
               by := Bitmap.Height;
               px := XScr2Bmp(X) - Width div 2;
               py := YScr2Bmp(Y) - Height div 2;
               PosX := px;
               PosY := py;
               Operation := op;
            end;

            if MouseCapture then  // paint the layer (the brush...)
            begin
               Layers[1].Bitmap.RenderToTIEBitmapEx( Layers[0].Bitmap, px,py,bx,by, 0,0,bx,by,false, 255,rfNone,op );
               Layers[1].Bitmap.MergeAlphaRectTo( Layers[0].Bitmap, 0,0,px,py, bx,by);
            end;
            Update;
         end;
      lastX := X;
      lastY := Y;
      IsImageChange := True;
   end;
end;

procedure TRecommiteSave.SBBrushClick(Sender: TObject);
Var
   BrushSiz : Integer;
   C : TColor;
   Transpvalue : Integer;
   I : Integer;
begin
   inherited;
   if Dm.Select_LetterReCommite.State <> dsinsert then
      Exit;
   ButtonName := SBBrush.Name;

   if (ImageEnDBVect1.ObjectsCount>0)or(ImageEnDBVect1.LayersCount>0) then
      ImageEnDBVect1.LayersMergeAll;
   For I := ImageEnDBVect1.ObjectsCount - 1 downto 0 do
      ImageEnDBVect1.RemoveObject(I);//Å” «“  —ﬂÌ» ·«ÌÂ Â« ° »⁄÷ «“ ·«ÌÂ Â«  ﬂ—«— „Ì ‘Ê‰œ

   ImageEnDBVect1.MouseInteract := [];
   ImageEnDBVect1.MouseInteractVt := [];

   //ImageEnDBVect1.LayersCurrent := ImageEnDBVect1.LayersAdd;;
   if ImageEnDBVect1.LayersCount = 1 then
      ImageEnDBVect1.LayersAdd;
   ImageEnDBVect1.LayersCurrent := 1;

   BrushSiz := SEEraser.Value;
   ImageEnDBVect1.Proc.ImageResize(BrushSiz,BrushSiz,iehLeft,ievTop);
   ImageEnDBVect1.ObjPenColor[-1] := RGB(255,255,255); //EdtPenColor.Color;
   ImageEnDBVect1.IEBitmap.Canvas.Brush.Color := clWhite; //EdtPenColor.Color;
   ImageEnDBVect1.IEBitmap.Canvas.Pen.Color := clWhite; //EdtPenColor.Color;

   ImageEnDBVect1.AlphaChannel.Fill(0);
   with ImageEnDBVect1.AlphaChannel.Canvas do
   begin
      Transpvalue := 255;
      C := $02000000 or (Transpvalue) or (Transpvalue shl 8) or (Transpvalue shl 16);
      Brush.Color := C;
      Pen.Color := C;
   end;

   ImageEnDBVect1.IEBitmap.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
   ImageEnDBVect1.AlphaChannel.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
   ImageEnDBVect1MouseMove(Self,[],0,0); // refresh current brush
   IsImageChange := True;
end;

procedure TRecommiteSave.Timer1Timer(Sender: TObject);
begin
   inherited;
   if (Dm.Select_LetterReCommite.State = dsinsert)And not(Recommite_Has_Image) then
   begin
      ImageEnDBVect1.Background := clWhite;
      ImageEnDBVect1.Clear;
      ImageEnDBVect1.Proc.Fill( CreateRGB(255,255,255) );
      ImageEnDBVect1.Proc.AutoUndo := True;
   end;
   Timer1.Enabled := False;
end;

procedure TRecommiteSave.SEEraserChange(Sender: TObject);
begin
   inherited;
   SBBrush.Click;
end;

procedure TRecommiteSave.SetErja_Or_Rounevesht(const Value: Integer);
begin
  FErja_Or_Rounevesht := Value;
end;

function TRecommiteSave.Is_Girandeh_Selected: Boolean;
begin
  Result:=True;
  if ((Length(Trim(OrgIDEdit.Text))<1) and (OneOrg.Checked)) or ((MoreOrg.Checked) and (NodeSelected<0)) then
     Result:=False;
end;

procedure TRecommiteSave.AaddLetterDataClick(Sender: TObject);
begin
//  if Dm.Select_LetterReCommite.State=dsBrowse then
  if (NewRecommitID>0) or (ShowReadOnly) then
  begin
      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID := Dm.Select_LetterReCommiteLetterID.AsInteger;
      if ShowReadOnly then
      begin
          FraddLetterData.RecommitID:=Dm.Select_LetterReCommiteRecommiteID.AsInteger;
          FraddLetterData.ShowReadonly:=True;
      end
      else
      begin
          FraddLetterData.RecommitID := NewRecommitID;
          FraddLetterData.ShowReadonly:=False;
      end;
      FrAddLetterData.DSForm.DataSet:=Dm.Get_RecommitePayvast_by_RecommiteID;
      FrAddLetterData.Letter_Or_Erja:='Erja';
      FraddLetterData.ShowModal;
  end
  else
    ShowMsgString('«» œ« »Â —ÊÌ œò„Â «—Ã«⁄ ‰«„Â ò·Ìò ‰„«ÌÌœ');

end;

procedure TRecommiteSave.SetNewRecommitID(const Value: Integer);
begin
  FNewRecommitID := Value;
end;

procedure TRecommiteSave.SetShowReadOnly(const Value: Boolean);
begin
  FShowReadOnly := Value;
end;

procedure TRecommiteSave.ShowReadOnlyForm;
begin

   BitBtn1.Enabled:=False;
   BitBtn5.Enabled:=False;
   BitBtn2.Enabled:=False;
   BitBtn3.Enabled:=False;

   AaddLetterData.Enabled := True;

   SpeedButton1.Enabled:=False;
   SpeedButton2.Enabled:=False;
   TemplateButton1.Enabled:=False;
   TemplateButton2.Enabled:=False;
   TemplateButton3.Enabled:=False;
   TemplateButton4.Enabled:=False;

   OrgButton1.Enabled:=False;
   OrgButton2.Enabled:=False;
   OrgButton3.Enabled:=False;
   OrgButton4.Enabled:=False;
   OrgButton5.Enabled:=False;
   OrgButton6.Enabled:=False;
   OrgButton7.Enabled:=False;
   OrgButton8.Enabled:=False;

   SpeedButton6.Enabled:=False;

   DBEditToStaffer.Enabled:=False;
   SearchEdit.Enabled:=False;
   OrgIDEdit.Enabled:=False;

   DBLookupComboBox1.Enabled:=False;
  ///----////

   self.Caption := '„‘«ÂœÂ «—Ã«⁄';
   pnlTemplate.Enabled  := False;
   TopPanel.Enabled     := False;
   pnlOperation.Enabled := False;
   pnlTop1 .Enabled := False;
   pnlGroup.Enabled := False;

end;

procedure TRecommiteSave.NotShowReadOnlyForm;
begin

   BitBtn1.Enabled:=True;
   BitBtn5.Enabled:=True;
   BitBtn2.Enabled:=True;
   BitBtn3.Enabled:=True;
   AaddLetterData.Enabled := False;

   SpeedButton1.Enabled:=True;
   SpeedButton2.Enabled:=True;
   TemplateButton1.Enabled:=True;
   TemplateButton2.Enabled:=True;
   TemplateButton3.Enabled:=True;
   TemplateButton4.Enabled:=True;

   OrgButton1.Enabled:=True;
   OrgButton2.Enabled:=True;
   OrgButton3.Enabled:=True;
   OrgButton4.Enabled:=True;
   OrgButton5.Enabled:=True;
   OrgButton6.Enabled:=True;
   OrgButton7.Enabled:=True;
   OrgButton8.Enabled:=True;

   SpeedButton6.Enabled:=True;

   DBEditToStaffer.Enabled:=True;
   SearchEdit.Enabled:=True;
   OrgIDEdit.Enabled:=True;

   DBLookupComboBox1.Enabled:=True;
   //---------///

   self.Caption := '«—Ã«⁄ ‰«„Â';
   pnlTemplate.Enabled    := True;
   TopPanel.Enabled       := True;
   pnlOperation.Enabled   := True;
   AaddLetterData.Enabled := False;
   pnlTop1 .Enabled := True;
   pnlGroup.Enabled := True;
   Refresh_templates;

end;

procedure TRecommiteSave.SetOldRecommiteID(const Value: Integer);
begin
  FOldRecommiteID := Value;
end;

procedure TRecommiteSave.SetOLDID(const Value: Integer);
begin
  FOLDID := Value;
end;

function TRecommiteSave.CheckWorkGroup(OrgID: Integer): Boolean;
begin
  Result:=True;
{  QCheckAccess.Close;
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
  CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
  //dm.FromOrganizationsID.AsInteger;//_UserFromOrgID;
  CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := OrgID;
  //Select_LetterToOrgID.AsInteger;
  CheckAccessForErja.Open;
  if CheckAccessForErjaResult.AsInteger = 1 then
    Result := True
  ELSE
  Result := False;

end;

procedure TRecommiteSave.SetCheckAccess(const Value: Boolean);
begin
  FCheckAccess := Value;
end;

procedure TRecommiteSave.MoreOrgClick(Sender: TObject);
begin
  inherited;
//
end;

function TRecommiteSave.IS_Girandeh_in_Group: Boolean;
begin
  Result:=True;

 { QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT OrgID FROM ChartWorkGroupDetails WHERE GroupID='+IntToStr(_GroupID));
  QTemp.SQL.Add('AND OrgID='+IntToStr(Select_LetterToOrgID.AsInteger));
  QTemp.SQL.Add('AND AccessForErja=1');
  QTemp.Open;

  if QTemp.IsEmpty then Result:=False;
  }
{  CheckAccessForErja.Close;
  CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := dm.FromOrganizationsID.AsInteger;//_UserFromOrgID;
  CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := Exec_NewRecommiteID(sp_inboxLetterID.AsInteger,3);//Select_LetterToOrgID.AsInteger;
  CheckAccessForErja.Open;
  if CheckAccessForErjaResult.AsInteger = 1 then
    Result := True
  ELSE
  Result := False;
 }
end;

end.


