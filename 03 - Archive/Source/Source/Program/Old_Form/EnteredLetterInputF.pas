unit EnteredLetterInputF;

interface

uses             
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
   xpPages, xpBitBtn, wwriched, Wwdbgrid, wwdbedit, Menus;


type
  TReceivedLetterInputForm= class(TMBaseForm)
    Select_Letter: TADOStoredProc;
    Select_LetterUrgencyTitle: TWideStringField;
    Select_LetterClassificationTitle: TWideStringField;
    Select_LetterReciveTypeTitle: TWideStringField;
    Select_LetterLetterID: TAutoIncField;
    Select_LetterIndicatorID: TIntegerField;
    Select_LetterMYear: TWordField;
    Select_LetterSecretariatID: TWordField;
    Select_LetterLetter_Type: TWordField;
    Select_Letterletterformat: TWordField;
    Select_LetterIncommingNO: TWideStringField;
    Select_LetterIncommingdate: TWideStringField;
    Select_LetterCenterNo: TWideStringField;
    Select_LetterCenterDate: TStringField;
    Select_LetterFromOrgID: TIntegerField;
    Select_LetterToOrgID: TIntegerField;
    Select_LetterSignerid: TWideStringField;
    Select_LetterClassificationID: TWordField;
    Select_LetterUrgencyID: TSmallintField;
    Select_LetterMemo: TWideStringField;
    Select_LetterAttachTitle: TWideStringField;
    Select_LetterNumberOfAttachPages: TSmallintField;
    Select_LetterNumberOfPage: TWordField;
    Select_LetterReceiveTypeID: TWordField;
    Select_LetterUserID: TIntegerField;
    Select_LetterRetroactionNo: TWideStringField;
    Select_LetterUserMemo: TWideStringField;
    Select_LetterRegistrationDate: TStringField;
    Select_LetterRegistrationTime: TStringField;
    Select_LetterFollowLetterNo: TWideStringField;
    Select_LetterToStaffer: TWideStringField;
    Select_LetterSentLetterID: TIntegerField;
    Select_LetterTemplateID: TIntegerField;
    Select_LetterHeaderID: TIntegerField;
    Select_LettersenderTitle: TWideStringField;
    Select_LetterFromOrgtitle: TWideStringField;
    Select_LetterFromResponsibleStafferTitle: TWideStringField;
    Select_LetterFromStaffer: TWideStringField;
    Select_LetterUserTitle: TWideStringField;
    Select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    FormData: TxpTabSheet;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    DBEIndicatorID: TDBEdit;
    DBERegistrationDate: TDBShamsiDateEdit;
    DBERegistrationTime: TDBEdit;
    DBEUserTitle: TDBEdit;
    mainPanel: TPanel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Image1: TImage;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    edit_FromOrgID: TEdit;
    DBLkCBFromOrgTitle: TDBLookupComboBox;
    DBEditToStaffer: TDBEdit;
    DBEdit16: TDBEdit;
    ToOrgTitleEdit: TEdit;
    NoPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBShamsiDateEdit: TDBShamsiDateEdit;
    attachs: TYCheckGroupBox;
    Label20: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Properties: TYCheckGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    SpeedButton3: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    UserMemo: TYCheckGroupBox;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    CenterSec: TYCheckGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    Panel1: TPanel;
    Apicture: TBitBtn;
    AExpotToWord: TBitBtn;
    AaddLetterData: TBitBtn;
    ActionToolBar1: TActionToolBar;
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action12: TAction;
    Aenter: TAction;
    Select_LetterUserTableID: TIntegerField;
    GroupBox4: TGroupBox;
    DBMemoMemo: TDBMemo;
    Select_LetterUserTableTitle: TStringField;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Select_LetterSubjectTitle: TStringField;
    Select_LetterSubjectID: TIntegerField;
    xpBitBtn1: TBitBtn;
    AmakeRecommite: TAction;
    Formdata2: TxpTabSheet;
    Label11: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Select_LetterUserTableID2: TIntegerField;
    Select_LetterUserTableTitle2: TStringField;
    Label18: TLabel;
    DBEdit9: TDBShamsiDateEdit;
    Select_LetterDeadLineDate: TStringField;
    SBSimpleEditor: TBitBtn;
    SpeedButton14: TBitBtn;
    SpeedButton8: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEFollowLetterNo: TDBEdit;
    DBERetroactionNo: TDBEdit;
    DBEIncommingNO: TDBEdit;
    followLabel: TLabel;
    Select_LetterFollowCode: TStringField;
    Label23: TLabel;
    DBEFollowCode: TDBEdit;
    DBGToORG: TYDBGrid;
    Select_LetterChristRegDate: TStringField;
    DBEChristRegDate: TDBEdit;
    Select_LetterChristIncomDate: TStringField;
    DBTextChristIncomDate: TDBText;
    ChBoIncommingNO: TCheckBox;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ChBoFollowRetroaction: TCheckBox;
    SBOther: TBitBtn;
    PopMnuOther: TPopupMenu;
    N5: TMenuItem;
    N3: TMenuItem;
    Select_LetterLetterRecommites: TWideStringField;
    Select_LetterPreCode: TWideStringField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterSendStatusID: TIntegerField;
    Select_LetterUniqueID: TLargeintField;
    Select_LetterArchived: TBooleanField;
    Select_LetterSubjectDescription: TWideStringField;
    Select_LetterLatestActionTypeID: TIntegerField;
    Select_LetterLatestActionReason: TWideStringField;
    Select_LetterActionTypeID: TIntegerField;
    Select_LetterEmailNuFromDate: TWideStringField;
    Select_LetterIndicatorInnerNo: TWideStringField;
    N1: TMenuItem;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetLetter(LetterID:integer);
    procedure DBLkCBFromOrgTitleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBMemoMemoEnter(Sender: TObject);
    procedure DBShamsiDateEditEnter(Sender: TObject);
    procedure AenterExecute(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
    procedure AArecommiteExecute(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure UpdateDblookup(all:Boolean);
    procedure DataSetEditExecute(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToOrgTitleEditChange(Sender: TObject);
    procedure ToOrgTitleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGToORGCellClick(Column: TColumn);
    procedure GetID(IsFrom:boolean);
    procedure DBMemoMemoExit(Sender: TObject);
    procedure edit_FromOrgIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApictureClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure DBLkCBFromOrgTitleClick(Sender: TObject);
    procedure AExpotToWordClick(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure wwDBREMemoEnter(Sender: TObject);
    procedure wwDBREMemoExit(Sender: TObject);
    procedure SBSimpleEditorClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Formdata2Show(Sender: TObject);
    procedure Select_LetterCalcFields(DataSet: TDataSet);
    procedure edit_FromOrgIDEnter(Sender: TObject);
    procedure DBEIncommingNOKeyPress(Sender: TObject; var Key: Char);
    procedure ChBoIncommingNOClick(Sender: TObject);
    procedure DBEFollowLetterNoKeyPress(Sender: TObject; var Key: Char);
    procedure DBERetroactionNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SBOtherClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private

  public
    LetterFormat:Byte;

  end;

var
  ReceivedLetterInputForm: TReceivedLetterInputForm;

implementation

Uses YShamsiDate, FromOrgU, FixedTableF, QuickSearch, UMain,
     ReCommiteU, ExitedLetterInputF, Dmu,
     FromOrgDialog, DuplicateNo, ReCommitedialog, ExactCopy,
     {ScanImageU, ScanImageU1,} businessLayer, Math, ExportToWord,
     UaddLetterData, UUserTable_Input, UBrowsArchive, LetterRalationFm,
     ScanImageFm;

{$R *.dfm}
procedure TReceivedLetterInputForm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
 MainForm.ShowFixTables;
end;
procedure TReceivedLetterInputForm.UpdateDblookup(all:Boolean);
begin
  inherited;
 ToOrgTitleEdit.OnChange:=nil;
 ToOrgTitleEdit.Text:=select_LettersenderTitle.AsString;
 ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
 if all then
   select_LetterTostaffer.AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
   edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
end;

procedure TReceivedLetterInputForm.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
   inherited;
   with Dm do
   begin
      Temp := ActiveControl;

      With Properties.YCheckBox do
      begin
         Checked:=GetUserSetting('ShowLetterPropertyPanel');;
         Checked:=not Checked;
         Checked:=not Checked;
      end;
      With attachs.YCheckBox do
      begin
         Checked:=GetUserSetting('ShowLetterAttachPanel');
         Checked:=not Checked;
         Checked:=not Checked;
      end;
      With UserMemo.YCheckBox do
      begin
         Checked:=GetUserSetting('ShowLetterUserMemoPanel');
         Checked:=not Checked;
         Checked:=not Checked; {for refreshing  }
      end;
      With CenterSec.YCheckBox do
      begin
         Checked:=GetUserSetting('ShowLetterCenterNoPanel');
         Checked:=not Checked;
         Checked:=not Checked; {for refreshing}
      end;
      ActiveControl:=temp;
      UpdateDblookup(false);
   end;
end;

procedure TReceivedLetterInputForm.FormClose(Sender: TObject;var Action: TCloseAction);
begin
   inherited;
   SetUserSetting('ShowLetterPropertyPanel',properties.YCheckBox.Checked);
   SetUserSetting('ShowLetterAttachPanel',attachs.YCheckBox.Checked);
   SetUserSetting('ShowLetterUserMemoPanel',UserMemo.YCheckBox.Checked);
   SetUserSetting('ShowLetterCenterNoPanel',CenterSec.YCheckBox.Checked);

   if not DataSetEdit.Enabled and DataSetEdit.Visible and (Select_Letter.LockType<>ltReadOnly )then
      if MessageShow(27,true) then
         DataSetPost.Execute
      else
         DataSetCancel.Execute;
end;

procedure TReceivedLetterInputForm.GetLetter(LetterID: integer);
begin
   inherited;
   with Select_Letter do
   begin
      Close;
      Parameters.ParamByName('@LetterID').Value:=LetterID;
      Open;

      if Recordcount > 0 then
         LetterFormat := Select_Letterletterformat.AsInteger;
   end;
end;

procedure TReceivedLetterInputForm.DBLkCBFromOrgTitleKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if key=32 then
      GetID(true);
end;

procedure TReceivedLetterInputForm.Action11Execute(Sender: TObject);
begin
   inherited;
   close;
end;

procedure TReceivedLetterInputForm.DBEdit3Exit(Sender: TObject);
var sameLetterID:integer;
begin
   inherited;

   if DSForm.DataSet.State = dsInsert then
      if trim(TDBEdit(Sender).Text)<>'' then
      begin
         SameLetterID := Exec_get_LetterID_ByInCommingNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
         if (sameLetterID <> 0) and (Select_LetterLetterID.AsInteger <> SameLetterID) then
         begin
            FDuplicate:=TFDuplicate.Create(Application);
            FDuplicate.Letterid:=sameLetterID;
            FDuplicate.ShowModal;
         end;
      end
         else
         begin
            {Ranjbar 89.08.18 ID=201}
            //ShowMsg(69);
            //TDBEdit(sender).SetFocus;
            //---
         end;
   TEditExit(Sender);
end;

procedure TReceivedLetterInputForm.DBMemoMemoEnter(Sender: TObject);
 var s: string;
begin
   inherited;
   if not DataSetEdit.Enabled then
      if TDBMemo(sender).Text='' then
      begin
         s:=dm.GetMemoFollow(true,select_LetterFollowLetterNo.AsString,select_LetterRetroactionNo.AsString);
         if s<>'' then
            select_LetterMemo.AsString:=s;
      end;
   TDBMemo(Sender).SelectAll;
   TEditEnter(Sender);
   AEnter.Enabled:=false;
end;

procedure TReceivedLetterInputForm.DBShamsiDateEditEnter(Sender: TObject);
begin
   inherited;
   TCustomEdit(sender).SelStart:=8;
   TCustomEdit(sender).SelLength:=2;
   TEditEnter(Sender);
end;

procedure TReceivedLetterInputForm.AenterExecute(Sender: TObject);
begin
   inherited;
   if not DataSetEdit.Enabled then
      if DBGToORG.Focused then
      begin
         ToOrgTitleEdit.SetFocus;
         ToOrgTitleEdit.OnChange:= nil;
         ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
         ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

         DSForm.DataSet.FieldByName('Tostaffer').AsString := Dm.ToorganizationsResponsibleStaffer.AsString;
         DBGToORG.Hide;
         DBEditToStaffer.SetFocus;
      end else
   SelectNext(ActiveControl,true,true);
end;

procedure TReceivedLetterInputForm.DataSetInsertExecute(Sender: TObject);
begin
   inherited;
   if not Dm.GetActionAccess(TAction(SENDER).Name,Tag) then
      Exit;

   if not DataSetEdit.Enabled then
   begin
      ShowMsg(63);
      exit;
   end;
   Try
      DBEIncommingNO.SetFocus
   Except
   End;

   with Dm,DSForm.DataSet do
   begin
      Insert;
      FieldByName('RegistrationDate').Value := _Today;
      FieldByName('RegistrationTime').Value := Exec_get_NowTime;
      FieldByName('IndicatorID').Value      := LastIndicatorID(1,LetterFormat);
      FieldByName('ClassificationID').Value := DefaultRClassificationID;
      FieldByName('UrgencyID').Value        := DefaultRUrgencyID    ;
      FieldByName('NumberOfPage').Value     := DefaultRNumberOfPage ;
      FieldByName('ReceiveTypeID').Value    := DefaultRReceiveTypeID;
      FieldByName('incommingdate').Value    := FieldByName('RegistrationDate').AsString;
      FieldByName('FromOrgID').AsInteger    := DefaultRFromOrgId;
      FieldByName('MYear').AsInteger        := CurrentMYear;
      FieldByName('LetterFormat').AsInteger := LetterFormat;
      FieldByName('Secretariatid').AsInteger:= Dm.SecId;
      FieldByName('Userid').AsInteger := _UserID;
      FieldByName('letter_type').AsInteger := 1;
      ToOrgTitleEdit.Text := '' ;
  end;
end;

procedure TReceivedLetterInputForm.Select_LetterBeforePost(
  DataSet: TDataSet);
begin
   inherited;

   With DataSet do
      if State = dsInsert  then
         FieldByName('IndicatorID').Value := Dm.LastIndicatorID(1,LetterFormat);
   Select_LetterLastUpdate.Value := Now;
end;

procedure TReceivedLetterInputForm.AArecommiteExecute(Sender: TObject);
begin
  inherited;
 MainForm.Arecommite.Execute;
end;

procedure TReceivedLetterInputForm.GetID(IsFrom:boolean);
begin
  inherited;
if not DataSetEdit.Enabled then
begin
   FromOrgForm:=TFromOrgForm.Create(Application);
   if IsFrom then
    FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.OrganizeMode:=false;

   FromOrgForm.ShowModal;
   if FromOrgForm.done then
    if ISFrom then
      begin
       select_LetterFromOrgID.AsInteger:=_ResultOrgID;
       edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
       select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;

      end
    else
      begin
       DSForm.DataSet.FieldByName('ToOrgID').AsInteger:=_ResultOrgID;
       ToOrgTitleEdit.OnChange:=nil;
       ToOrgTitleEdit.Text:=_ResultOrgTitle;
       ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
       DSForm.DataSet.FieldByName('Tostaffer').AsString:=_ResultOrgRespon;
      end;
end
else
  MainForm.FromOrgOrganize
end;
procedure TReceivedLetterInputForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  GetID(True);
end;

procedure TReceivedLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
var s:string;
begin
   inherited;
   s:=YeganehTrim(ToOrgTitleEdit.Text);

   if not DataSetEdit.Enabled then
    if is_integer(ToOrgTitleEdit.Text) then
    with dm,Toorganizations do
     begin
       Close;
       CommandText := 'Select *,cast(0 as bit) as isSecretariat from Fromorganizations ' +
                      ' where code=''' + s + '''';
       Open;
       if recordcount=0 then
          ShowMsg(64)
       else
          begin
             Select_LetterToorgid.AsInteger:=ToorganizationsID.AsInteger;
             ToOrgTitleEdit.OnChange:=nil;
             ToOrgTitleEdit.Text:=ToorganizationsTitle.AsString;
             ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
             Select_LetterTostaffer.AsString:= ToorganizationsResponsibleStaffer.AsString;
             {Ranjbar}
             //DBEdit2.SetFocus;
             if (DBEFollowLetterNo.Visible)And(DBEFollowLetterNo.Enabled) then
                DBEFollowLetterNo.SetFocus;
             //---
          end;
     end;

     if not DBGToORG.Focused then
        DBGToORG.Hide;
end;

procedure TReceivedLetterInputForm.DataSetPostExecute(Sender: TObject);
var
   IsInsert: boolean;
begin
   inherited;
   //¬Œ—Ì‰ Å«—«›
   // ⁄ÌÌ‰ „Ì ‘Êœ Recommite ﬁ—«— „Ì êÌ—œ  Ê”ÿ  —Ìê— ÃœÊ· LetterRecommites  ÊÃÂ : ﬂ·„Â "¬Œ—Ì‰ Å«—«›:" ﬂÂ œ— ›Ì·œ

   DBEIndicatorID.SetFocus; //Õ–› ‰‘Êœ

   if not Dm.GetActionAccess(TAction(Sender).Name,Tag) then
      Exit;

   {Ranjbar 89.11.02 ID=278} //œ— Õ«·  ÊÌ—«Ì‘ «„ﬂ«‰  €ÌÌ— êÌ—‰œÂ ÊÃÊœ ‰œ«—œ
   if Select_Letter.State = dsEdit then
      if Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue then
      begin
         ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì Å” «“ «Ê·Ì‰ –ŒÌ—Â ° œÌê— «„ﬂ«‰  €ÌÌ— ›Ì·œ "êÌ—‰œÂ" ÊÃÊœ ‰œ«—œ'+ #13#13
                        + '·ÿ›« ÃÂ  «—Ã«⁄ «Ì‰ ‰«„Â «“ œﬂ„Â «—Ã«⁄ «” ›«œÂ ﬂ—œÂ Ê „ﬁœ«— «Ì‰ ›Ì·œ —« «’·«Õ ‰„«ÌÌœ'
                        ,[mbOK],mtInformation);
         DBLkCBFromOrgTitle.SetFocus;
         Abort;
         {»—ê—œ«‰œ‰ „ﬁœ«— ﬁ»·Ì - ﬂ«— ‰„Ì ﬂ‰œ
         if Dm.FromOrganizations.Locate('ID',Select_LetterFromOrgID.OldValue,[]) then
         begin
            DBLkCBFromOrgTitle.KeyValue := Dm.FromOrganizationsID.AsInteger;
            Select_LetterFromOrgID.AsInteger := Dm.FromOrganizationsID.AsInteger;

         end;}
      end;
   //---

   {Ranjbar 89.08.18 ID=201}
   if Trim(Select_LetterIncommingNO.AsString) = '' then
      if ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ›Ì·œ "‘„«—Â ‰«„Â" Œ«·Ì „Ì »«‘œ. ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',mbOKCancel,mtWarning) <> mrok then
      begin
         DBEIncommingNO.SetFocus;
         Abort;
      end;
   //---
   
   Dm.FromOrganizations.Locate('Code',edit_FromOrgID.Text,[]);
   Select_LetterFromOrgID.AsInteger := Dm.FromOrganizationsid.AsInteger;

   IsInsert := False;
   with DSForm.DataSet do
   begin
      if State = dsInsert  then
      begin
         FieldByName('IndicatorID').Value:=dm.LastIndicatorID(1,LetterFormat);
         IsInsert:=true;
      end;
      FieldByName('ToOrgID').AsInteger:=dm.NewToOrganization(ToOrgTitleEdit.text,DBEditToStaffer.Text);
      Post;

      //«ÌÃ«œ «—Ã«⁄
      if IsInsert then
         MakeRecommite(LetterFormat,1, FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);
   end;

   GetLetter(select_LetterLetterID.AsInteger);
   Exec_insert_UserLog(Self.Tag,'DataSetPost',select_LetterLetterID.AsInteger);

end;

procedure TReceivedLetterInputForm.DataSetCancelExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN exit;

 DSForm.DataSet.Cancel;
 UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.DataSetFirstExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.First;
 UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;
  UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.DataSetEditExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN exit;

 DSForm.DataSet.Edit;
 UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.SpeedButton10Click(Sender: TObject);
begin
  inherited;
GetID(false);
end;

procedure TReceivedLetterInputForm.DBGToORGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TReceivedLetterInputForm.ToOrgTitleEditChange(Sender: TObject);
var s,t:string;
begin
  inherited;
 if DataSetEdit.Enabled then
   exit;


s:=Replace(YeganehTrim(ToOrgTitleEdit.Text),char(152),'yy');
S:=Replace(s,'ﬂ','yy');
 if is_integer(s) then
   t:='ID'
 else
   t:=' replace(replace(title,char(152),''yy''),''ﬂ'',''yy'')';

 with dm.Toorganizations do
 if length(s)>=3  then
  begin
    Close;
    CommandText:='Select *,cast(0 as bit) isSecretariat from Fromorganizations '+
    ' where '+t+' like '''+s+'%''';       
    DBGToORG.Show;
    open;
  end;

end;

procedure TReceivedLetterInputForm.ToOrgTitleEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if not DataSetEdit.Enabled then
if (key=vk_down) or (key=vk_up) then
 begin
   if ssalt in shift then
     DBGToORG.Visible:=not DBGToORG.Visible
    else
    DBGToORG.SetFocus;
 end;
end;

procedure TReceivedLetterInputForm.DBGToORGCellClick(Column: TColumn);
begin
  inherited;
 if not DataSetEdit.Enabled then
  begin
    ToOrgTitleEdit.OnChange:=nil;
    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.Toorganizations.FIELDBYNAME('ResponsibleStaffer').AsString;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
  end;
end;

procedure TReceivedLetterInputForm.DBMemoMemoExit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  AEnter.Enabled:=true;
end;

procedure TReceivedLetterInputForm.edit_FromOrgIDExit(Sender: TObject);
begin
   inherited;
   if select_Letter.State in [dsedit,dsinsert] then
   begin
      if not dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]) then
       begin
         ShowMessage('òœ Ê«—œ ‘œÂ œ— ç«—  ÊÃÊœ ‰œ«—œ');
         TDBEdit(Sender).SetFocus;
       end;
      select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
      select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
   end;
   TEditExit(sender);
   {Ranjbar 89.08.02 ID=160}
   Keyboard_Farsi;
   //---
end;

procedure TReceivedLetterInputForm.FormCreate(Sender: TObject);
var i: word;
begin
  inherited;
  
 for i:=0 to ComponentCount-1 do
   if Components[i].InheritsFrom(TBitBtn) then
     TBitBtn(Components[i]).Visible:=dm.GetActionAccess(TBitBtn(Components[i]).name,MainForm.Tag);

        if MainForm.LockOldYear.Enabled then //Action
      if _year <> dm.CurrentMyear then
      begin
         //Ranjbar
         Select_Letter.LockType := ltReadOnly;
         MBaseForm.MessageShowString('ﬂ«—»— ê—«„Ì :  «“„«‰ÌﬂÂ œ— ›—„ " ⁄ÌÌ‰ ”ÿÕ œ” —”Ì" ¬Ì „ "»” Â ‘œ‰ ‰«„Â Â«Ì ”«· ﬁ»·" ›⁄«· »«‘œ'+
                                     #13 + '‘„« ‰„Ì  Ê«‰Ìœ ‰«„Â «Ì —« »—«Ì ”«·Â«Ì ﬁ»· À»  Ê Ì« «⁄„«·  €ÌÌ— ‰„«ÌÌœ', False);
         //---
      end;

   LetterFormat:=1;
   UserMemo.Caption:='   ' + dm.UserMemoDisplay+'   ';
   UserField.Caption:=dm.UserMemoDisplay;
   if dm.MemoFont <> nil then
   begin
      DBMemoMemo.Font:=dm.MemoFont;
      DBEIncommingNO.Font:=dm.MemoFont;
      if dm.MemoFont.Size>10 then
      begin
         NoPanel.Top:=7;
         NoPanel.Height:=40;
      end;
   end;

end;

procedure TReceivedLetterInputForm.ApictureClick(Sender: TObject);
 
begin
   inherited;
   with DSForm.DataSet do
   if not DataSetEdit.Enabled then
   begin
     DataSetPost.Execute;
     //ShowMsg(67);    exit;
   end;

   {
   Extiontion := Exec_Get_LetterdataExtention(select_LetterLetterID.AsInteger);
   if (Extiontion=1) or ((Extiontion=0)and(dm.HasJpg)) then
   begin
      ScanImageF:=TScanImageF.Create(Application);
      with ScanImageF do
      begin
         LetterID:=select_LetterLetterID.AsInteger;
         ShowModal;
      end;
   end
      else
      begin
         TifImageF := TTifImageF.Create(Application);
         with TifImageF do
         begin
            LetterID:=select_LetterLetterID.AsInteger;
            ShowModal;
         end;
      end;}

   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := Self.Select_LetterLetterID.AsInteger;
   FmScanImage.ShowModal;

      Exec_insert_UserLog(Self.Tag,'Apicture',select_LetterLetterID.AsInteger);

end;

procedure TReceivedLetterInputForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  GetID(False);
end;

procedure TReceivedLetterInputForm.DBGToORGNeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
  inherited;
 if dm.ToorganizationsIsInnerOrg.AsBoolean then
    Color:=$00FFE6FF
   else
    Color:=$00FFD3A8;
end;

procedure TReceivedLetterInputForm.DBLkCBFromOrgTitleClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.02 ID=278}
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Exit;
   //---   

   Edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
   select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
    
end;

procedure TReceivedLetterInputForm.AExpotToWordClick(Sender: TObject);
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
     DataSetPost.Execute;
     //ShowMsg(67);    exit;
   end;
   
    if _Word_Is_Opened then
     if Application_Is_Run('winword.exe') then
      begin
        messageShow(86,FALSE) ;
       exit;
      end;
      

 with select_Letter do
if not dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,not _AllowToEditWordFiles) then
 begin
  FExportToWord:=TFExportToWord.Create(Application);
   with FExportToWord do
    begin
     Letterid:=FieldByName('Letterid').AsInteger;
     LetterFormat:=FieldByName('LetterFormat').AsInteger;
     if not dm.UseTemplate then
      begin
        Show;
        OpenFileClick(OpenFile);
      end
     else
      ShowModal;
   end;
end;
Exec_insert_UserLog(Self.Tag,'AExpotToWord',select_LetterLetterID.AsInteger);


end;

procedure TReceivedLetterInputForm.ActionManagerExecute(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  if action.tag<>4 then
    if select_Letter.Active then
     Exec_insert_UserLog(Self.Tag,Action.Name,select_LetterLetterID.AsInteger);
end;

procedure TReceivedLetterInputForm.AaddLetterDataClick(Sender: TObject);
begin
   inherited;
   with DSForm.DataSet do
   begin
      if not DataSetEdit.Enabled then
      begin
         ShowMsg(67);
         Exit;
      end;
      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;
      FraddLetterData.ShowModal;
   end;
end;

procedure TReceivedLetterInputForm.FormDataShow(Sender: TObject);
begin
   inherited;
   FrUserTable_Input:= TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID := Select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder:=1;
   FrUserTable_Input.ShowInPanel(FormData);
end;

procedure TReceivedLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   if Trim(select_LetterUserMemo.Text) = '' then
   begin
      //Ranjbar
      MBaseForm.MessageShowString(' ÂÌç „ﬁœ«—Ì œ— ﬁ”„  ' + UserField.Caption +' Ì«›  ‰‘œ  ', False);
      //---
      Exit;
   end;
      
   FrBrowsArchive:=TFrBrowsArchive.Create(Application);
   FrBrowsArchive.UserMemo.Text := Select_LetterUserMemo.Text;
   FrBrowsArchive.RefreshQuery;
   FrBrowsArchive.ShowModal;
end;

procedure TReceivedLetterInputForm.wwDBREMemoEnter(Sender: TObject);
var
   S: string;
begin
  inherited;
  if not DataSetEdit.Enabled then
     if TwwDBRichEdit(Sender).Text='' then
     begin
        s:=dm.GetMemoFollow(true,select_LetterFollowLetterNo.AsString,select_LetterRetroactionNo.AsString);
        if s<>'' then
           select_LetterMemo.AsString:=s;
     end;
  TwwDBRichEdit(Sender).SelectAll;
  TEditEnter(Sender);
  AEnter.Enabled:=false;
end;

procedure TReceivedLetterInputForm.wwDBREMemoExit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  AEnter.Enabled:=true;
end;




procedure TReceivedLetterInputForm.SBSimpleEditorClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 36}
  if not(select_Letter.State in [dsInsert,dsEdit]) then
     Exit;
  Select_LetterMemo.AsString := MainForm.FillBlobField(Self,DBMemoMemo.Text,'„ ‰ „÷„Ê‰ ‰«„Â');
  //---
end;



procedure TReceivedLetterInputForm.SpeedButton7Click(Sender: TObject);
var LetterID:integer;
    RR :Boolean;
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
     ShowMsg(67);
     Exit;
  end;

  if dm.GetFollowAndRetRoAction(True,(select_LetterLetter_Type.AsInteger=1),select_LetterFollowLetterNo.AsString,LetterID,RR) then
  begin
     if RR then
        MainForm.ViewReceivedLetter(LetterID)
     else
        MainForm.ViewSentLetter(LetterID);
  end
     else
        ShowMsg(3);
end;

procedure TReceivedLetterInputForm.SpeedButton8Click(Sender: TObject);
var LetterID:integer;
    RR :Boolean;
    Letter_Type:Integer;
begin
   inherited; 
   
   if not DataSetEdit.Enabled then
   begin
      ShowMsg(67);
      exit;
   end;


  if dm.GetFollowAndRetRoAction(false,(select_LetterLetter_Type.AsInteger=1),select_LetterRetroactionNo.asstring{⁄ÿ›},LetterID,rr) then
  begin
     if RR then
        MainForm.ViewReceivedLetter(LetterID) //‰«„Â Ê«—œÂ
     else
        MainForm.ViewSentLetter(LetterID);    //‰«„Â ’«œ—Â
  end
     else
        ShowMsg(3);

end;

procedure TReceivedLetterInputForm.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  FmLetterRalation := TFmLetterRalation.create(Application);
  FmLetterRalation.LetterID := select_LetterLetterID.AsInteger;
  FmLetterRalation.ShowModal;
end;



procedure TReceivedLetterInputForm.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   DBEIncommingNO.SetFocus;
   DBEIncommingNO.SelectAll;
   Keyboard_English;
   DBEIncommingNO.OnKeyPress := Nil;
   DBEIncommingNO.BiDiMode := bdLeftToRight;
   Select_LetterIncommingNO.Alignment := taLeftJustify;
   //---
end;

procedure TReceivedLetterInputForm.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   DBEIncommingNO.SetFocus;
   DBEIncommingNO.SelectAll;
   Keyboard_Farsi;
   DBEIncommingNO.OnKeyPress := DBEIncommingNOKeyPress;
   DBEIncommingNO.BiDiMode := bdRightToLeft;
   Select_LetterIncommingNO.Alignment := taRightJustify;
   //---
end;



procedure TReceivedLetterInputForm.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  TwwDBEdit(Sender).Text := Keyboard_TypeWithDivider(TwwDBEdit(Sender).Text , Key);
end;

procedure TReceivedLetterInputForm.Formdata2Show(Sender: TObject);
begin
  inherited;
   FrUserTable_Input:= TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder:=2;
   FrUserTable_Input.ShowInPanel(FormData2);
  end;

procedure TReceivedLetterInputForm.Select_LetterCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not DataSet.FieldByName('LetterID').IsNull then
  begin
     Select_LetterFollowCode.AsString := GetFollowCode(DataSet.FieldByName('LetterID').AsInteger);
  end;
  Select_LetterChristRegDate.AsString:= MiladiMString(DataSet.FieldByName('registrationdate').AsString);
  if DataSet.FieldByName('incommingdate').AsString <> '' then
     Select_LetterChristIncomDate.AsString := MiladiMString(DataSet.FieldByName('incommingDate').AsString);
end;

procedure TReceivedLetterInputForm.edit_FromOrgIDEnter(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.08.02 ID=160}
   TEditEnter(Sender);
   Keyboard_English;
   //---
end;

procedure TReceivedLetterInputForm.DBEIncommingNOKeyPress(Sender: TObject;var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   if not ChBoIncommingNO.Checked then
   begin
      if Select_LetterIncommingNO.Alignment = taLeftJustify then
         Select_LetterIncommingNO.Alignment := taRightJustify;
      DBEIncommingNO.Text := Keyboard_TypeWithDivider(DBEIncommingNO.Text,Key);
   end;
   //---
end;

procedure TReceivedLetterInputForm.ChBoIncommingNOClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   if ChBoIncommingNO.Checked then
      Select_LetterIncommingNO.Alignment := taLeftJustify
   else
      Select_LetterIncommingNO.Alignment := taRightJustify;
   DBEIncommingNO.SetFocus;
   //---
end;

procedure TReceivedLetterInputForm.DBEFollowLetterNoKeyPress(
  Sender: TObject; var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.13 ID=210}
   if not ChBoFollowRetroaction.Checked then
      DBEFollowLetterNo.Text := Keyboard_TypeWithDivider(DBEFollowLetterNo.Text,Key);
   //---
end;

procedure TReceivedLetterInputForm.DBERetroactionNoKeyPress(
  Sender: TObject; var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.13 ID=210}
   if not ChBoFollowRetroaction.Checked then
      DBERetroactionNo.Text := Keyboard_TypeWithDivider(DBERetroactionNo.Text,Key);
   //---
end;

procedure TReceivedLetterInputForm.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   if LetterFormat=2 then
      Caption:=' ÅÌ‘ ‰ÊÌ” '+Caption;
      
end;

procedure TReceivedLetterInputForm.N5Click(Sender: TObject);
begin
   inherited;
   with DSForm.DataSet do
   begin
      if not DataSetEdit.Enabled then
      begin
         ShowMsg(67);
         exit;
      end;
      ReCommite:=TReCommite.Create(Application);
      with ReCommite do
      begin
         LetterID := select_LetterLetterID.AsInteger;
         ShowModal;
      end;
   end;
   Exec_insert_UserLog(Self.Tag,'Arecommite',select_LetterLetterID.AsInteger);
end;

procedure TReceivedLetterInputForm.N3Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.10.29 ID=269}
   if not DataSetEdit.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;

   if not Dm.GetActionAccess('ASendToOtherSec',MainForm.Tag) then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ‘„« »Â «Ì‰ ﬁ”„  œ” —”Ì ‰œ«—Ìœ',[mbOK],mtInformation);
      Exit;
   end;

   MainForm.SendLetter_To_Other_Sec(Select_LetterLetterID.AsInteger);
   //---
end;

procedure TReceivedLetterInputForm.SBOtherClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,SBOther,PopMnuOther);
end;

procedure TReceivedLetterInputForm.N1Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.10.01 ID=208}
   {if not DataSetEdit.Enabled then
   begin
      ShowMsg(67);
      exit;
   end;}
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
   //----

   ExactCopyF := TExactCopyF.Create(Application);
   ExactCopyF.LetterID := Select_LetterLetterID.AsInteger;
   ExactCopyF.TypeId := 1;//—Ê‰Ê‘ 
   ExactCopyF.ShowModal;
end;

end.

