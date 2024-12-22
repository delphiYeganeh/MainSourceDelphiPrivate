unit ReCommiteDialog;

interface

uses
  jpeg,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ExtActns, Spin, ADODB,
  MPlayer, xpWindow, xpPages, xpBitBtn, CheckLst, YchecklistBox, ImgList,
  YDbgrid, DBTreeView, Menus;

Type
  TRecommiteSave = class(TMBaseForm)
    ColorDialog: TColorDialog;
    Get_RecommiteJpgFile: TADODataSet;
    Get_RecommiteJpgFileRecommiteDataID: TAutoIncField;
    Get_RecommiteJpgFileRecommiteID: TIntegerField;
    Get_RecommiteJpgFileImage: TBlobField;
    Get_RecommiteJpgFileExtention: TWordField;
    DetailPanel: TPanel;
    Label4: TLabel;
    desc: TLabel;
    Label6: TLabel;
    proceeded: TCheckBox;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBIsCopy: TDBCheckBox;
    DBDeadLineDate: TDBShamsiDateEdit;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    ToPanel: TPanel;
    Label2: TLabel;
    OneOrg: TRadioButton;
    MoreOrg: TRadioButton;
    SpeedButton2: TSpeedButton;
    DBEditToStaffer: TDBEdit;
    OrgIDEdit: TEdit;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    OrgButton1: TBitBtn;
    OrgButton2: TBitBtn;
    OrgButton3: TBitBtn;
    OrgButton4: TBitBtn;
    SpeedButton6: TBitBtn;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DayinWeek: TLabel;
    StatImages: TImageList;
    SearchEdit: TEdit;
    DSearch: TDataSource;
    SearchORG: TADODataSet;
    SearchORGid: TAutoIncField;
    SearchORGtitle: TWideStringField;
    SearchORGResponsibleStaffer: TWideStringField;
    SearchORGCode: TWideStringField;
    orgcombo: TDBLookupComboBox;
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
    DBChBoISFollowup: TDBCheckBox;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    DBLkCBWorkGroup: TDBLookupComboBox;
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
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageControl_Org: TPageControl;
    TabTree: TTabSheet;
    TabList: TTabSheet;
    OrgList: TYchecklistBox;
    OrgTree: TDBTreeView;
    PageControl_Text: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBparaph: TDBMemo;
    Panel3: TGroupBox;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    TemplateButton1: TBitBtn;
    TemplateButton2: TBitBtn;
    TemplateButton3: TBitBtn;
    TemplateButton4: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Image1: TImage;
    Image: TImage;
    Panel2: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    ColorPan: TPanel;
    SpinEdit1: TSpinEdit;
    CheckBox1: TCheckBox;
    xpBitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    Procedure GoRecommite;
    function NodeSelected: INTEGER;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ColorPanClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure saveImage;
    procedure LoadImage;
    procedure CheckBox1Click(Sender: TObject);
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
    procedure xpBitBtn3Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PararphSheetShow(Sender: TObject);
    procedure  DoGroupRecommite;
    procedure DoRecommite;
    procedure Recommite_Bookmarks;
    procedure OrgTreeClick(Sender: TObject);
    procedure OrgTreeKeyPress(Sender: TObject; var Key: Char);
    procedure DBLkCBWorkGroupClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OrgIDEditEnter(Sender: TObject);
  private
    { Private declarations }
    FOrgID: integer;
    procedure InsertData_To_SelectLetterReCommite;
  public
   ParentID,RecommiteID:integer;
   LetterID : integer;
   ReplyModeRS :Boolean;
   Property OrgID: integer read FOrgID write SetOrgID;
  end;

var
  RecommiteSave: TRecommiteSave;

implementation


uses FromOrgU, Dmu, UMain, businessLayer, DateUtils, URecommiteTemplate,
  YShamsiDate, insertParaphTemplateU, StrUtils , WorkGroupFM;

{$R *.dfm}
var Drown : boolean;
 jpg:TJPEGImage;
DoSave:boolean;
Paraph,RecommiteDate:string;
isCopy:boolean;


Procedure TRecommiteSave.SetOrgID(value:integer);
 begin
    FOrgID:=value;
    dm.Select_LetterReCommiteOrgID.AsInteger:=value;
    dm.Select_LetterReCommiteOrgStaff.Value:=dm.Select_LetterReCommiteResponsibleStaffertitle.Value;
    OrgIDEdit.Text:=dm.FromOrganizationsCode.Value;
    SearchEdit.OnChange:=nil;
    SearchEdit.Text:=dm.FromOrganizationsTitle.Value;
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

   DoRecommite;

   if MoreOrg.Checked then
      DoGroupRecommite;
   Recommite_Bookmarks;
end;

procedure TRecommiteSave.BitBtn1Click(Sender: TObject);
var  Memo:WideString;
begin
   if Trim(DBparaph.Text)='' then
      if Exec_Get_innerLetterMemo(LetterID,Memo) then
         DBparaph.Text := Memo
      else
          begin
             messageShow(87,false);
             PageControl_Text.ActivePageIndex:=0;
             DBparaph.SetFocus;
             exit;
          end;

   GoRecommite;
   MessageShowString('«—Ã«⁄ ‰«„Â »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',False);
   InsertData_To_SelectLetterReCommite;
end;

procedure TRecommiteSave.DoRecommite;
begin
  with Dm do
  begin
     Select_LetterReCommite.Post;
     
     //ÅÌêÌ—Ì ‘Êœ
     if Select_LetterReCommiteISFollowup.AsBoolean then
        Qry_SetResult('Update Recommites Set ISFollowup=1 Where RecommiteID = ' + IntToStr(dm.sp_inboxrecommiteid.AsInteger) ,dm.YeganehConnection);
     //---
     Paraph        := Select_LetterReCommiteParaph.AsString;
     RecommiteDate := Select_LetterReCommiteRecommiteDate.AsString;
     FOrgID        := Select_LetterReCommiteOrgID.AsInteger;
     isCopy        := Select_LetterReCommiteIsCopy.AsBoolean;
     saveImage;

     //»«Ìê«‰Ì ﬂ—œ‰ «—Ã«⁄ ›⁄·Ì
     if proceeded.Checked then
        Exec_update_ReCommites_proceed(dm.sp_inboxrecommiteid.AsInteger,true,_Today,atRecommited);
  end;
end;

procedure TRecommiteSave.Recommite_Bookmarks;
 var i: integer;
begin
if _selectedRecommitesID.Count>1 then
 for i:=0 to _selectedRecommitesID.Count-1 do
  begin
   if strtoint(_selectedRecommitesID[i])<>Recommiteid then
    begin
    if proceeded.Checked then
     Exec_update_ReCommites_proceed(   strtoint(_selectedRecommitesID[i]),true,_Today,atRecommited);

     dm.sp_inbox.Locate('Recommiteid', strtoint(_selectedRecommitesID[i]),[]);
     Exec_insertReCommites_autoID(dm.sp_inboxLetterID.AsInteger,3,dm.sp_inboxid.AsInteger,OrgID,Paraph,
     RecommiteDate,_userid,IsCopy);
    end;
  end;
end;

procedure TRecommiteSave.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar 87.12.14 And 88.05.27 Code=133}
   if Dm.Select_LetterReCommite.State <> dsEdit then //ÃÂ  ’œ« “œ‰ «“ ›—„ «’·Ì / œﬂ„Â „‘«ÂœÂ «—Ã«⁄
      InsertData_To_SelectLetterReCommite; //Ê—Êœ «ÿ·«⁄« 

   DetailPanel.Enabled := Dm.Select_LetterReCommite.State =  dsinsert;
   ToPanel.Enabled     := Dm.Select_LetterReCommite.State =  dsinsert;
   DBparaph.ReadOnly   := Dm.Select_LetterReCommite.State <> dsinsert;

   OneOrg.Checked:=true;
   {Ranjbar}
   //PageControl.Hide;
   Panel6.Visible := False;
   SPWorkGroup.Close;
   SPWorkGroup.Parameters.ParamByName('@UserID').Value := _UserID;
   SPWorkGroup.Open;
   SearchEdit.BringToFront;
   //---
end;

{Ranjbar 87.12.14}
procedure TRecommiteSave.InsertData_To_SelectLetterReCommite;
Var
   LetterFormat,Letter_Type : Integer;
   IsCopy : Boolean;
begin
   With dm do
   begin
      ParentID := sp_inbox.FieldByName('ID').Value;
      Recommiteid := sp_inbox.FieldByName('recommiteid').Value;
      dm.ExecSelect_LetterReCommite(sp_inboxLetterID.AsInteger,3);//Open Select_LetterReCommite
      {Ranjbar 89.11.03 ID=291}
      //DBIsCopy.Enabled := not Dm.Sp_InboxIsCopy.AsBoolean;
      IsCopy := Dm.Sp_InboxIsCopy.AsBoolean;
      //---

      with dm do
      begin
         Select_LetterReCommite.Insert; //
         Select_LetterReCommiteType.Value:= 3;
         Select_LetterReCommiteID.Value := Exec_NewRecommiteID(sp_inboxLetterID.AsInteger,3);//3 : «—Ã«⁄
         Select_LetterReCommiteLetterID.Value := Sp_inboxLetterID.AsInteger;
         Select_LetterReCommiteRecommiteDate.Value := _Today;
         Select_LetterReCommiteParentID.Value := RecommiteSave.ParentID;
         Select_LetterReCommiteActionTypeID.Value := atDefault;
         Select_LetterReCommiteISFollowup.AsBoolean := False;//ÅÌêÌ—Ì ‘Êœ
         Select_LetterReCommiteUserID.AsInteger := _Userid;
      end;

      letterid := sp_inboxLetterID.AsInteger;


      if ReplyModeRS then
      begin
         if sp_inbox.FieldByName('OrgID').AsInteger > 0 then
            Orgid := sp_inbox.FieldByName('OrgID').AsInteger;

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
   end;
end;


procedure TRecommiteSave.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Dm.Select_LetterReCommite.Cancel;

end;

procedure TRecommiteSave.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   if mainform.GetSearch then
      Orgid := _ResultOrgID;
end;


procedure TRecommiteSave.ColorPanClick(Sender: TObject);
begin
  inherited;
if ColorDialog.Execute then
  begin
   image.Picture.Bitmap.Canvas.Pen.Color:=ColorDialog.Color;
   ColorPan.Color:=ColorDialog.Color;
  end;

end;

procedure TRecommiteSave.SpinEdit1Change(Sender: TObject);
begin
  inherited;
  image.Picture.Bitmap.Canvas.Pen.Width:=TSpinEdit(sender).Value;
end;

procedure TRecommiteSave.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 if dm.Select_LetterReCommite.State<>dsinsert then exit;
 
  if ssleft in shift then
 begin
   if Drown then
      begin
       image.Picture.Bitmap.Canvas.LineTo(x,y);
       DoSave:=true;
      end
     else
    begin
     image.Picture.Bitmap.Canvas.MoveTo(x,y);
     Drown:=true;
    end;
end  else Drown:=false;

end;


procedure TRecommiteSave.FormCreate(Sender: TObject);
begin
   inherited;
   DSForm.DataSet := Dm.Select_LetterReCommite;
   DoSave := False;
   Drown := False;
   jpg := TJPEGImage.Create;
   Image.Picture.Bitmap.Canvas.Pen.Width:=2;
   proceeded.Checked := Dm.DefaultProceed;

   {Ranjbar 89.11.03 ID=291} //FormShow «‰ ﬁ«· »Â 
   //DBIsCopy.Checked:=dm.DefaultisCopy;
   //---

   Refresh_templates;
end;

procedure TRecommiteSave.loadImage;
begin
  inherited;

   if not Get_RecommiteJpgFileImage.IsNull then
    begin
     Get_RecommiteJpgFileImage.SaveToFile(_TempPath+'temp.jpg');
     jpg.LoadFromFile(_TempPath+'temp.jpg');
     Image.Picture.Bitmap.Assign(jpg);
    end; 

  if DSForm.DataSet.State<>dsinsert then
   OrgIDEdit.Text:=dm.FromOrganizationsCode.AsString;
end;

procedure TRecommiteSave.saveImage;
begin
   inherited;
   if not DoSave then
      exit;
   jpg.Assign(Image.Picture.Bitmap);
   jpg.savetofile(_TempPath+'temp.jpg');

   //RecommiteData –ŒÌ—Â  ’ÊÌ— «„÷« œ— ÃœÊ·
   Get_RecommiteJpgFileImage.LoadFromFile(_TempPath+'temp.jpg');
   Get_RecommiteJpgFileRecommiteID.AsInteger:=dm.Select_LetterReCommiteRecommiteID.AsInteger;
   Get_RecommiteJpgFile.Post;
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


procedure TRecommiteSave.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if TCheckBox(sender).Checked then
    begin
     image.Picture.Bitmap.Canvas.Pen.Color:=clWhite;
     image.Picture.Bitmap.Canvas.Pen.Width:=20;
     Image.Cursor:=crHandPoint;
    end
    else
    begin
     image.Picture.Bitmap.Canvas.Pen.Color:=ColorPan.Color;
     image.Picture.Bitmap.Canvas.Pen.Width:=SpinEdit1.Value;
     Image.Cursor:=crCross;
    end;

end;


procedure TRecommiteSave.update_OrgStaffer;
var _id:integer ;
ResponsibleStaffer:widestring;
begin
  inherited;
   if dm.FromOrganizations.Locate('Code',OrgIDEdit.Text,[]) then
      Orgid:= dm.FromOrganizationsID.AsInteger
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
   {Ranjbar 16}
   //PageControl.Visible:=MoreOrg.Checked;
   Panel6.Visible := MoreOrg.Checked;
   //---
   if OrgTree.DataSource=nil then
   begin
      OrgList.Fill;
      FromOrganizations.Open;
      OrgTree.DataSource:=DFromOrganizations;
      for i:=0 to OrgTree.Items.Count-1 do
         OrgTree.Items.Item[i].StateIndex:=1;
   end;
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
  Open_ParaphTemplate;
  for i:=1 to 4 do
    begin
     TBitBtn(FindComponent('OrgButton'+IntToStr(i))).Caption:=GetUserSetting('DefaultRecieverTitle'+IntToStr(i));
     TBitBtn(FindComponent('TemplateButton'+IntToStr(i))).Caption:=Get_ParaphTemplate_title(i);
    end;
end;
procedure TRecommiteSave.TemplateButton1Click(Sender: TObject);
begin
  inherited;
dm.Select_LetterReCommiteParaph.AsString:=Get_ParaphTemplate_Paraph(TSpeedButton(sender).Tag);
end;

procedure TRecommiteSave.OrgButton1Click(Sender: TObject);
begin
  inherited;
    OrgID := GetUserSetting('DefaultReciever'+IntToStr(TSpeedButton(sender).Tag));
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
    if dm.Select_LetterReCommiteDeadLineDate.AsString='' then
       dm.Select_LetterReCommiteDeadLineDate.AsString := _Today;
    dm.Select_LetterReCommiteDeadLineDate.AsString := ShamsiIncDate(dm.Select_LetterReCommiteDeadLineDate.AsString,0,0,1);
  end;

end;

procedure TRecommiteSave.SpeedButton4Click(Sender: TObject);
begin
  inherited;
 if DBDeadLineDate.DataSource.DataSet.State in [dsedit,dsinsert] then
   begin
     if DBDeadLineDate.Text='' then DBDeadLineDate.Text:=_Today;
     DBDeadLineDate.Text:=ShamsiIncDate(DBDeadLineDate.Text,0,0,-1);
   end;

end;

procedure TRecommiteSave.DBDeadLineDateChange(Sender: TObject);
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
  DayinWeek.Caption := Date_DayName(TDBEdit(Sender).Text);
  //---
end;

procedure TRecommiteSave.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
dm.Select_LetterReCommiteParaph.AsString:=DBLookupComboBox1.KeyValue;

end;

procedure TRecommiteSave.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrInsertParaphTemplate:= TFrInsertParaphTemplate.Create(Application);
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
 Orgid:=TDBLookupComboBox(sender).KeyValue;
 DBparaph.SetFocus;
end;

procedure TRecommiteSave.xpBitBtn3Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.02.10 ID=362}
   if StrToIntDef(Qry_GetResult('SELECT COUNT(UserID) AS HasSign FROM UserSign WHERE UserID = '+
                  IntToStr(_UserID),Dm.YeganehConnection),0) = 0 then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ‘„« «„÷«Ì  ’ÊÌ—Ì ‰œ«—Ìœ',[mbOK],mtInformation);
      Exit;
   end;
   //---
   Image.Cursor := crMultiDrag;
end;

procedure TRecommiteSave.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   inherited;
   if   Image.Cursor=crMultiDrag then
    begin
      Image.Cursor:=crHourGlass;
      PasteSign(Image.Picture.Bitmap.Canvas,x,y);//Image ﬁ—«—œ«œ‰  ’ÊÌ— «„÷« œ— ﬂ‰ —·
      Image.Cursor:=crDefault;
      DoSave:=true;
    end; 

end;

procedure TRecommiteSave.PararphSheetShow(Sender: TObject);
begin
  inherited;
 with Get_RecommiteJpgFile do
  begin
    close;
    Parameters.ParamByName('@Recommiteid').Value:=RecommiteID;
    Open;
  end;
if Exec_Recommite_has_JpgFile(RecommiteID) then
   begin
    LoadImage;
    Get_RecommiteJpgFile.edit;
   end
 else
  begin
   Get_RecommiteJpgFile.Insert;
   Get_RecommiteJpgFileExtention.AsInteger:=1;
  end;

end;

procedure TRecommiteSave.DoGroupRecommite;
 var i: integer;
begin
  inherited;

if  PageControl_Org.ActivePage=TabList then
 begin
  for i:=0 to orglist.Items.Count-1 do
   if orglist.Checked[i] then
     if orglist.codes[i]<>orgid then
      Exec_insertReCommites_autoID(LetterID,3,ParentId,orglist.codes[i],Paraph,RecommiteDate,_userid,false);
 end
else
  for i:=0 to OrgTree.Items.Count-1 do
   if OrgTree.Items.Item[i].StateIndex=2 then
     if integer(OrgTree.Items.Item[i].Data)<>orgid then
      Exec_insertReCommites_autoID(LetterID,3,ParentId,integer(OrgTree.Items.Item[i].Data),Paraph,RecommiteDate,_userid,false);

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
   Memo : WideString;
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
        Exec_insert_ReCommites(Exec_NewRecommiteID(LetterID,1),True,LetterID,OrgID , '«—”«· —Ê‰Ê‘  : '+ DBparaph.Text ,0,False,'',1,_userid);//1 : —Ê‰Ê‘ 
        MessageShowString('«—”«· —Ê‰Ê‘  ‰«„Â »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',False);
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
           Exec_insert_ReCommites(Exec_NewRecommiteID(LetterID,1),True,LetterID,OrgID,  '«—”«· —Ê‰Ê‘  : '+ DBparaph.Text  ,0,False,'',1,_userid);//1 : —Ê‰Ê‘ 
           OrgTree.Items.Item[I].StateIndex := 1; //Unchecked
        end;
  end
     else
     begin
        //For OrgList
        For I:=0 to OrgList.Items.Count-1 do
           if OrgList.Checked[I] then
           begin
              OrgID := OrgList.Codes[I];
              Exec_insert_ReCommites(Exec_NewRecommiteID(LetterID,1),True,LetterID,OrgID,'',0,False,'',1,_userid);//1 : —Ê‰Ê‘ 
              OrgList.Checked[I] := False; 
           end;
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
   GoRecommite;
   Close;
end;

procedure TRecommiteSave.OrgIDEditEnter(Sender: TObject);
begin
   inherited;
   Keyboard_English;
end;

end.


