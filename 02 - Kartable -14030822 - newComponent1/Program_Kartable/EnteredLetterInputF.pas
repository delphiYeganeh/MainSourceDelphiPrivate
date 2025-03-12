unit EnteredLetterInputF;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages, xpBitBtn, Menus,ContractsUnit,FlowUpUnit,CustomerInfoUnit,
  Spin, Variants,LetterRalationFm, xpPanel, AdvGlowButton;


type
  TReceivedLetterInputForm= class(TMBaseForm)
    ActionManager: TActionManager;
    Action11: TAction;
    Select_Letter: TADOStoredProc;
    Select_LetterUrgencyTitle: TWideStringField;
    Select_LetterClassificationTitle: TWideStringField;
    Select_LetterReciveTypeTitle: TWideStringField;
    Action12: TAction;
    Aenter: TAction;
    Select_LetterResponsibleStafferTitle: TWideStringField;
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
    Select_LetterFromOrgtitle: TStringField;
    Select_LetterUserTitle: TWideStringField;
    Select_LetterSecCode: TStringField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    DBEIndicatorID: TDBEdit;
    DBERegistrationDate: TDBShamsiDateEdit;
    DBERegistrationTime: TDBEdit;
    DBEUserTitle: TDBEdit;
    Panel1: TPanel;
    Apicture: TAdvGlowButton;
    AExpotToWord: TAdvGlowButton;
    mainPanel: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Image1: TImage;
    SpeedButton9: TAdvGlowButton;
    SpeedButton6: TAdvGlowButton;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEditToStaffer: TDBEdit;
    DBERetroactionNo: TDBEdit;
    DBEFollowLetterNo: TDBEdit;
    DBEdit16: TDBEdit;
    ToOrgTitleEdit: TEdit;
    DBShamsiDateEdit: TDBShamsiDateEdit;
    attachs: TYCheckGroupBox;
    Label20: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    UserMemo: TYCheckGroupBox;
    DBEUserMemo: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo2: TDBMemo;
    CenterSec: TYCheckGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterUserTableTitle: TStringField;
    Label19: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    xpBitBtn1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    Label16: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    SpeedButton7: TAdvGlowButton;
    Select_LetterUserTableID2: TIntegerField;
    Select_LetterUserTableTitle2: TStringField;
    Label14: TLabel;
    DBGToORG: TYDBGrid;
    AaddLetterData: TAdvGlowButton;
    Label18: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Select_LetterSubjectTitle: TStringField;
    Select_LetterSubjectID: TIntegerField;
    SpeedButton4: TAdvGlowButton;
    Label21: TLabel;
    SpeedButton1: TAdvGlowButton;
    Label22: TLabel;
    SBOther: TAdvGlowButton;
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    DBEdit1: TDBEdit;
    Button1: TAdvGlowButton;
    Button5: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Select_LetterLetterRecommites: TWideStringField;
    Select_LetterPreCode: TWideStringField;
    Select_Letterfromstaffer: TWideStringField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterSendStatusID: TIntegerField;
    Select_LetterLastUpdate: TDateTimeField;
    Select_LetterUniqueID: TLargeintField;
    Select_LetterArchived: TBooleanField;
    Select_LetterSubjectDescription: TWideStringField;
    Select_LetterLatestActionTypeID: TIntegerField;
    Select_LetterLatestActionReason: TWideStringField;
    Select_LetterDeadLineDate: TStringField;
    Select_LetterActionTypeID: TIntegerField;
    Select_LetterEmailNuFromDate: TWideStringField;
    Select_LetterOldSecretariatID: TIntegerField;
    Select_LetterCustomerID: TIntegerField;
    Select_LetterIndicatorInnerNo: TWideStringField;
    acShowCustomerInfo: TAction;
    acFlowUp: TAction;
    acContracts: TAction;
    acCustomerSearch: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    pnlDetail: TxpPanel;
    QAddedForms: TADOQuery;
    QAddedFormsLetterFormsID: TAutoIncField;
    QAddedFormsLetterID: TIntegerField;
    QAddedFormsFormID: TIntegerField;
    QAddedFormsDescription: TWideStringField;
    QAddedFormsTableCode: TStringField;
    QAddedFormsUserField1: TWideStringField;
    QAddedFormsUserField2: TWideStringField;
    PopupMenu2: TPopupMenu;
    N7: TMenuItem;
    MenuItem1: TMenuItem;
    dsQAddedForms: TDataSource;
    QHasForms: TADOQuery;
    QHasFormsID: TAutoIncField;
    QDelForms: TADOQuery;
    BitBtn13: TAdvGlowButton;
    xpForms: TxpTabSheet;
    Panel3: TPanel;
    Label26: TLabel;
    lblCount: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn5: TAdvGlowButton;
    btnShowForm: TAdvGlowButton;
    xpPageControl2: TxpPageControl;
    SpeedButton14: TAdvGlowButton;
    acShowSadereh: TAction;
    FollowLetterYear: TSpinEdit;
    RetroactionYear: TSpinEdit;
    Select_LetterFollowLetterYear: TIntegerField;
    Select_LetterRetroactionYear: TIntegerField;
    BitBtn1: TAdvGlowButton;
    pnlMain: TPanel;
    pnlTopHeader: TPanel;
    GroupBox5: TGroupBox;
    lblHasForms: TLabel;
    Properties: TYCheckGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    Panel2: TPanel;
    sbSubjectDel: TAdvGlowButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetLetter(LetterID:integer);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBShamsiDateEditEnter(Sender: TObject);
    procedure AenterExecute(Sender: TObject);
    procedure AArecommiteExecute(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure UpdateDblookup(all:Boolean);
    procedure ApictureClick(Sender: TObject);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GetID(IsFrom:boolean);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure AExpotToWordClick(Sender: TObject);
    procedure ADoCommiteClick(Sender: TObject);
    procedure AAnswerClick(Sender: TObject);
    procedure AnewRecommiteClick(Sender: TObject);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormData2Show(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SBOtherClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure acShowCustomerInfoExecute(Sender: TObject);
    procedure acFlowUpExecute(Sender: TObject);
    procedure acContractsExecute(Sender: TObject);
    procedure acCustomerSearchExecute(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnShowFormClick(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure xpPageControl1Change(Sender: TObject);
    procedure acShowSaderehExecute(Sender: TObject);
    procedure Select_LetterRetroactionYearChange(Sender: TField);
    procedure FollowLetterYearChange(Sender: TObject);
    procedure RetroactionYearChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbSubjectDelClick(Sender: TObject);
  private
    FfrmContracts: TfrmContracts;
    FfrmCustomerInfo: TfrmCustomerInfo;
    FfrmFlowUp: TfrmFlowUp;
    procedure SetfrmContracts(const Value: TfrmContracts);
    procedure SetfrmCustomerInfo(const Value: TfrmCustomerInfo);
    procedure SetfrmFlowUp(const Value: TfrmFlowUp);
    procedure DontShow_xpFormsTab;
    procedure Show_xpFormsTab;
    procedure ShowCount;
    function LetterHasForms:Boolean;
    function CheckFormExist:Boolean;
    procedure TabShow(mode: Boolean);    
  public
    LetterFormat:byte;
    LetterDataID : integer;
    property frmCustomerInfo:TfrmCustomerInfo read FfrmCustomerInfo write SetfrmCustomerInfo;
    property frmFlowUp:TfrmFlowUp read FfrmFlowUp write SetfrmFlowUp;
    property frmContracts:TfrmContracts read FfrmContracts write SetfrmContracts;

  end;

var
  ReceivedLetterInputForm: TReceivedLetterInputForm;

implementation

uses  YShamsiDate, FromOrgU,   QuickSearch, UMain,
  ReCommiteU, ExitedLetterInputF,  Dmu,
   FromOrgDialog,  ReCommitedialog, ExactCopy,
  {ScanImageU, ScanImageU1,} UUserTable_Input, UBrowsArchive, USearchTitle,
  ScanImageFm, UaddLetterData, businessLayer, SearchFromCRMUnit,
  UInputUserTable, ShowSaderehUnit, untFollowRetroactionLetter;

{$R *.dfm}
procedure TReceivedLetterInputForm.UpdateDblookup(all:Boolean);
begin
  inherited;
 ToOrgTitleEdit.Text:=DSForm.DataSet.FieldByName('SenderTitle').AsString;
// AnswerPanel.Visible:=DSForm.DataSet.FieldByName('SentLetterID').AsInteger>0;
 if all then
   DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
end;

procedure TReceivedLetterInputForm.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
  inherited;
with dm do
 begin
   temp:=ActiveControl;

with  Properties.YCheckBox do
 begin
  Checked:=GetUserSetting('ShowLetterPropertyPanel');;
  Checked:=not Checked;Checked:=not Checked;
 end;
with attachs.YCheckBox do
 begin
  Checked:=GetUserSetting('ShowLetterAttachPanel');
  Checked:=not Checked;Checked:=not Checked;
 end;
with UserMemo.YCheckBox do
 begin
  Checked:=GetUserSetting('ShowLetterUserMemoPanel');
  Checked:=not Checked;Checked:=not Checked; {for refreshing  }
 end;
with CenterSec.YCheckBox do
 begin
  Checked:=GetUserSetting('ShowLetterCenterNoPanel');
  Checked:=not Checked;Checked:=not Checked; {for refreshing}
 end;
 ActiveControl:=temp;

UpdateDblookup(false);

end;
end;

procedure TReceivedLetterInputForm.FormClose(Sender: TObject;var Action: TCloseAction);
begin
   inherited;
   With Dm do
   begin
      SetUserSetting('ShowLetterPropertyPanel',properties.YCheckBox.Checked);
      SetUserSetting('ShowLetterAttachPanel',attachs.YCheckBox.Checked);
      SetUserSetting('ShowLetterUserMemoPanel',UserMemo.YCheckBox.Checked);
      SetUserSetting('ShowLetterCenterNoPanel',CenterSec.YCheckBox.Checked);
   end;
end;

procedure TReceivedLetterInputForm.GetLetter(LetterID: integer);
begin
   inherited;
   With Select_Letter do
   begin
      Close;
      Parameters.ParamByName('@LetterID').Value := LetterID;
      Open;
      if Recordcount > 0 then
         LetterFormat := Select_Letterletterformat.AsInteger;
   end;
end;

procedure TReceivedLetterInputForm.DBLookupComboBox2KeyDown(
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
begin
  inherited;
if DSForm.DataSet.State=dsInsert then
if trim(TDBEdit(Sender).Text)='' then
 else
 begin
  ShowMsg(69);
  TDBEdit(sender).SetFocus;
 end;

TEditExit(Sender);
end;

procedure TReceivedLetterInputForm.DBMemo2Enter(Sender: TObject);
begin
  inherited;
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
   SelectNext(ActiveControl,true,true);
end;

procedure TReceivedLetterInputForm.AArecommiteExecute(Sender: TObject);
begin
  inherited;
 MainForm.Arecommite.Execute;
end;

procedure TReceivedLetterInputForm.GetID(IsFrom:boolean);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
    if ISFrom then
      DSForm.DataSet.FieldByName('FromOrgID').AsInteger:=_ResultOrgID
    else
      begin
       DSForm.DataSet.FieldByName('ToOrgID').AsInteger:=dm.FromOrganizationsid.AsInteger;
       ToOrgTitleEdit.Text:=dm.FromOrganizationsTitle.AsString;
       DSForm.DataSet.FieldByName('Tostaffer').AsString:=
       dm.FromOrganizationsResponsibleStaffer.AsString;
      end;
end;
procedure TReceivedLetterInputForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  GetID(true);
end;

procedure TReceivedLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
 begin
  inherited;
TEditExit(sender);

if not DBGToORG.Focused then
 DBGToORG.Hide;

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

procedure TReceivedLetterInputForm.ApictureClick(Sender: TObject);
begin
   inherited;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
   if not dm.GetActionAccess('Apicture',MainForm.Tag) then
      Exit;

   FmScanImage := TFmScanImage.Create(Application);
   With FmScanImage do
   begin
      {Ranjbar 89.09.28 ID=260}
      RReadOnly := Dm.Sp_InboxIsCopy.AsBoolean;
      //---
      LetterID  := Select_LetterLetterID.AsInteger;
      ShowModal;
   end;
   //--
end;

procedure TReceivedLetterInputForm.DBGToORGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TReceivedLetterInputForm.DBMemo2Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);
AEnter.Enabled:=True;


end;

procedure TReceivedLetterInputForm.DBEdit9Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);

end;

procedure TReceivedLetterInputForm.FormCreate(Sender: TObject);
var i: word;
begin
  inherited;
LetterFormat:=1;
 UserMemo.Caption:='   '+dm.UserMemoDisplay+'  ';

 for i:=0 to ComponentCount-1 do
   if Components[i].InheritsFrom(TBitBtn) then
     TBitBtn(Components[i]).Visible:=dm.GetActionAccess(TBitBtn(Components[i]).name,MainForm.Tag);

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

procedure TReceivedLetterInputForm.AExpotToWordClick(Sender: TObject);
begin
   inherited;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
   MainForm.AExpotToWord.Execute;
end;

procedure TReceivedLetterInputForm.ADoCommiteClick(Sender: TObject);
begin
   inherited;
   MainForm.ADoCommite.Execute;
   Close;
end;

procedure TReceivedLetterInputForm.AAnswerClick(Sender: TObject);
begin
   inherited;
   MainForm.AAnswer.Execute;
   Close;
end;

procedure TReceivedLetterInputForm.AnewRecommiteClick(Sender: TObject);
begin
   inherited;
   MainForm.AnewRecommite.Execute;
   Close;
end;

procedure TReceivedLetterInputForm.FormDataShow(Sender: TObject);
begin
   inherited;
   FrUserTable_Input:= TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder:=1;
//   FrUserTable_Input.ShowInPanel(FormData);
end;

procedure TReceivedLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   if Trim(select_LetterUserMemo.Text)='' then
   begin
      MBaseForm.MessageShowString(' ÂÌç „ﬁœ«—Ì œ— ﬁ”„  ' + dm.UserMemoDisplay +' Ì«›  ‰‘œ  ', False);
      Exit;
   end;
   FrBrowsArchive := TFrBrowsArchive.Create(Application);
   FrBrowsArchive.UserMemo.Text := select_LetterUserMemo.Text;
   FrBrowsArchive.RefreshQuery;
   FrBrowsArchive.ShowModal;
end;

procedure TReceivedLetterInputForm.SpeedButton2Click(Sender: TObject);
var i: integer;
begin
   inherited;
   if not select_LetterUserTableID.IsNull then
   begin
      messageShowString(' ﬁ»·« »Â «Ì‰ ‰«„Â ›—„ ÅÌÊ”  ‘œÂ «”  ',false);
      Exit;
   end;

   i:=dm.GetUserTableID;
   if i> 0 then
      with select_Letter do
      Begin
         Edit;
         select_LetterUserTableID.AsInteger:=i;
         Post;
      end;
end;

procedure TReceivedLetterInputForm.FormData2Show(Sender: TObject);
begin
   inherited;
   FrUserTable_Input:= TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder:=2;
//   FrUserTable_Input.ShowInPanel(FormData2);
end;

procedure TReceivedLetterInputForm.SpeedButton7Click(Sender: TObject);
var
   i: integer;
begin
   inherited;
   if not select_LetterUserTableID2.IsNull then
   begin
      messageShowString(' ﬁ»·« »Â «Ì‰ ‰«„Â ›—„ ÅÌÊ”  ‘œÂ «”  ',false);
      Exit;
   end;

   i:=dm.GetUserTableID;
   if i> 0 then
      with select_Letter do
      Begin
         Edit;
         Select_LetterUserTableID2.AsInteger:=i;
         Post;
      end;

end;

procedure TReceivedLetterInputForm.AaddLetterDataClick(Sender: TObject);
begin
   inherited;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
   if (Select_Letter.State in [dsEdit,dsInsert])and (select_LetterLetterID.AsInteger>0) then
   begin
      ShowMsg(67);
      Exit;
   end;
   FraddLetterData := TFraddLetterData.Create(Application);
   FraddLetterData.LetterID := Select_LetterLetterID.AsInteger;
   {Ranjbar 89.09.28 ID=260}

   FraddLetterData.Letter_Or_Erja:='Letter';
   FraddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
   FraddLetterData.RecommitID:=0;

   FraddLetterData.ReadOnly := Dm.Sp_InboxIsCopy.AsBoolean;
   //---
   FraddLetterData.ShowModal;
end;

procedure TReceivedLetterInputForm.SpeedButton4Click(Sender: TObject);
Var LetterID : Integer;
    rr : Boolean;
    mYear : integer;// Amin 1391/12/05
begin
   inherited;
   if FollowLetterYear.Value = 0 then mYear := _Year else mYear := FollowLetterYear.Value; // Amin 1391/12/05
   if Dm.GetFollowAndRetRoAction(true,(select_LetterLetter_Type.AsInteger=1),select_LetterFollowLetterNo.asstring, mYear ,LetterID,rr) then   // Amin 1391/12/05 Edited
   begin
      if RR then
         MainForm.ViewReceivedLetter(LetterID)
      else
         MainForm.ViewSentLetter(LetterID);
   end
      else
         ShowMsg(3);
end;

procedure TReceivedLetterInputForm.SpeedButton11Click(Sender: TObject);
var
   LetterID:integer;
   rr :Boolean;
   mYear : integer; // Amin 1391/12/05
begin
   inherited;

   if RetroactionYear.Value = 0 then mYear := _Year else mYear := RetroactionYear.Value;
   if Dm.GetFollowAndRetRoAction(false,(select_LetterLetter_Type.AsInteger=1),select_LetterRetroactionNo.asstring, mYear ,LetterID,rr) then // Amin 1391/12/05 Edited
   begin
      if RR then
         MainForm.ViewReceivedLetter(LetterID)
      else
         MainForm.ViewSentLetter(LetterID);
   end
      else
         ShowMsg(4);
end;

procedure TReceivedLetterInputForm.SBOtherClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,Sender,PopMnuOther);
end;

procedure TReceivedLetterInputForm.N1Click(Sender: TObject);
begin
   inherited;
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      Exit;
   end;
   ReCommite := TReCommite.Create(Application);
   With ReCommite do
   begin
      LetterID := Select_LetterLetterID.AsInteger;
      ShowModal;
   end;
end;

procedure TReceivedLetterInputForm.N2Click(Sender: TObject);
begin
   inherited;
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      Exit;
   end;
   
   ExactCopyF := TExactCopyF.Create(Application);
   ExactCopyF.LetterID := Select_LetterLetterID.AsInteger;
   ExactCopyF.TypeId := 1;//—Ê‰Ê‘ 
   ExactCopyF.Caption := '—Ê‰Ê‘ ';
   ExactCopyF.ShowModal;
end;

procedure TReceivedLetterInputForm.Button5Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TReceivedLetterInputForm.acShowCustomerInfoExecute(
  Sender: TObject);
begin
   if Dm.Check_CRM_Exists then
   begin
       if not Assigned(frmCustomerInfo) then
          frmCustomerInfo:=TfrmCustomerInfo.Create(Application);

       if (not Select_LetterCustomerID.IsNull) or (Select_LetterCustomerID.AsInteger>0) then
       begin
         frmCustomerInfo.CustomerID:= Select_LetterCustomerID.AsInteger;
         frmCustomerInfo.ShowModal;
       end
       else
         ShowMsgString('»—«Ì «Ì‰ „Ê—œ - „‘ —Ì À»  ‰‘œÂ «” ');

       frmCustomerInfo.Free;
       frmCustomerInfo:=nil;
   end
   else
       ShowMessage('‰«„ »«‰ò «ÿ·«⁄« Ì ”Ì” „ „œÌ—Ì  —Ê«»ÿ „‘ —Ì „‘Œ’ ‰‘œÂ «” ');

end;

procedure TReceivedLetterInputForm.SetfrmContracts(
  const Value: TfrmContracts);
begin
  FfrmContracts := Value;
end;

procedure TReceivedLetterInputForm.SetfrmCustomerInfo(
  const Value: TfrmCustomerInfo);
begin
  FfrmCustomerInfo := Value;
end;

procedure TReceivedLetterInputForm.SetfrmFlowUp(const Value: TfrmFlowUp);
begin
  FfrmFlowUp := Value;
end;

procedure TReceivedLetterInputForm.acFlowUpExecute(Sender: TObject);
begin
   if Dm.Check_CRM_Exists then
   begin
       if not Assigned(frmFlowUp) then
          frmFlowUp:=TfrmFlowUp.Create(Application);

       if (not Select_LetterCustomerID.IsNull) or (Select_LetterCustomerID.AsInteger>0) then
       begin
         frmFlowUp.CustomerID:= Select_LetterCustomerID.AsInteger;
         frmFlowUp.ShowModal;
       end
       else
         ShowMsgString('»—«Ì «Ì‰ „Ê—œ - „‘ —Ì À»  ‰‘œÂ «” ');

       frmFlowUp.Free;
       frmFlowUp:=nil;
   end
   else
       ShowMessage('‰«„ »«‰ò «ÿ·«⁄« Ì ”Ì” „ „œÌ—Ì  —Ê«»ÿ „‘ —Ì „‘Œ’ ‰‘œÂ «” ');

end;

procedure TReceivedLetterInputForm.acContractsExecute(Sender: TObject);
begin
   if Dm.Check_CRM_Exists then
   begin
       if not Assigned(frmContracts) then
          frmContracts:=TfrmContracts.Create(Application);

       if (not Select_LetterCustomerID.IsNull) or (Select_LetterCustomerID.AsInteger>0) then
       begin
         frmContracts.CustomerID:= Select_LetterCustomerID.AsInteger;
         frmContracts.ShowModal;
       end
       else
         ShowMsgString('»—«Ì «Ì‰ „Ê—œ - „‘ —Ì À»  ‰‘œÂ «” ');

       frmContracts.Free;
       frmContracts:=nil;
   end
   else
       ShowMessage('‰«„ »«‰ò «ÿ·«⁄« Ì ”Ì” „ „œÌ—Ì  —Ê«»ÿ „‘ —Ì „‘Œ’ ‰‘œÂ «” ');

end;

procedure TReceivedLetterInputForm.acCustomerSearchExecute(
  Sender: TObject);
begin
  if SearchFromCRM=nil then
     SearchFromCRM:=TSearchFromCRM.Create(Application);
  SearchFromCRM.ShowModal;
  if Select_Letter.State in [dsInsert,dsEdit] then
     Select_LetterCustomerID.AsInteger:=Dm.YDabir_Select_List_CustomersCustomerID.AsInteger
  else
     ShowMsgString('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');

end;

procedure TReceivedLetterInputForm.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key:=#0;
end;

procedure TReceivedLetterInputForm.btnShowFormClick(Sender: TObject);
var
  x : TxpTabSheet;
begin
  if CheckFormExist then
  begin
      x:=TxpTabSheet.Create(xpPageControl2);
      x.PageControl:=xpPageControl2;
      x.Caption:=QAddedFormsDescription.AsString;
      x.Tag:=QAddedFormsLetterFormsID.AsInteger;
      with TFrUserTable_Input.Create(Application) do
      begin
         LetterID:= Select_LetterLetterID.AsInteger;
         FormOrder:=QAddedFormsLetterFormsID.AsInteger;
         Tag:=QAddedFormsLetterFormsID.AsInteger;
         ShowInPanel(x);
      end;
  end;

end;

procedure TReceivedLetterInputForm.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› ›—„ „ÿ„Ì‰ Â” Ìœø',true) then
  begin
      QDelForms.Close;
      QDelForms.Parameters.ParamByName('IDForm').Value:=QAddedFormsLetterFormsID.AsInteger;
      QDelForms.ExecSQL;
      QAddedForms.Close;
      QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
      QAddedForms.Open;
      ShowCount;
      ShowMsgString('⁄„·Ì«  »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
  end;
end;

procedure TReceivedLetterInputForm.BitBtn13Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TReceivedLetterInputForm.N7Click(Sender: TObject);
begin
  inherited;
  Show_xpFormsTab;
  QAddedForms.Close;
  QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
  QAddedForms.Open;
  ShowCount;
  xpForms.Show;
end;

procedure TReceivedLetterInputForm.MenuItem1Click(Sender: TObject);
begin
  inherited;
   DontShow_xpFormsTab;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.LetterID:=Select_LetterLetterID.AsInteger;
   FrInputUserTable.showmodal;
   Select_Letter.Refresh;
end;

procedure TReceivedLetterInputForm.DSFormDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DontShow_xpFormsTab;
  if not Select_Letter.IsEmpty then
  begin
      if LetterHasForms then
      begin
        lblHasForms.Font.Color:=clGreen;
        lblHasForms.Caption:='«Ì‰ ‰«„Â œ«—«Ì ›—„ ÅÌÊ”  ‘œÂ „Ì »«‘œ';
      end
      else
      begin
        lblHasForms.Font.Color:=clMaroon;
        lblHasForms.Caption:='«Ì‰ ‰«„Â œ«—«Ì ›—„ ÅÌÊ”  ‘œÂ ‰„Ì »«‘œ';
      end;
  end;
end;

function TReceivedLetterInputForm.CheckFormExist: Boolean;
begin
  Result:=False;
  if not QAddedForms.IsEmpty then
     if (QAddedFormsFormID.AsInteger>0) and (QAddedFormsLetterID.AsInteger=Select_LetterLetterID.AsInteger) then
        Result:=True;
end;

procedure TReceivedLetterInputForm.DontShow_xpFormsTab;
begin
   xpPageControl1.Pages[1].TabVisible:=False;
end;

function TReceivedLetterInputForm.LetterHasForms: Boolean;
begin
  Result:=False;
  QHasForms.Close;
  QHasForms.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
  QHasForms.Open;
  if not QHasForms.IsEmpty then Result:=True;
end;

procedure TReceivedLetterInputForm.Show_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=True;
  TabShow(True);   
end;

procedure TReceivedLetterInputForm.ShowCount;
begin
 lblCount.Caption:='  ⁄œ«œ ' +IntToStr(YDBGrid1.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TReceivedLetterInputForm.xpPageControl1Change(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
       Select_Letter.Refresh;
  TabShow(false) ; 
end;

procedure TReceivedLetterInputForm.acShowSaderehExecute(Sender: TObject);
var
FmLetterRalation : TFmLetterRalation;
begin
  inherited;
  {
  FShowSadereh := TFShowSadereh.create(Application);
  FShowSadereh.LetterID:=Select_LetterLetterID.AsInteger;
  FShowSadereh.ShowModal;
  }

  FmLetterRalation := TFmLetterRalation.create(Application);
  FmLetterRalation.LetterID := Select_LetterLetterID.AsInteger;
  FmLetterRalation.ShowModal;
end;

procedure TReceivedLetterInputForm.Select_LetterRetroactionYearChange(
  Sender: TField);
begin
  inherited;
   // Amin 1391/12/05 Start
  if not (Select_Letter.State in [dsInsert, dsEdit]) then
  begin
     if Select_LetterRetroactionYear.Value = NULL then
         RetroactionYear.Value := 0
     else
         RetroactionYear.Value := Select_LetterRetroactionYear.AsInteger;

     if Select_LetterFollowLetterYear.Value = NULL then
         FollowLetterYear.Value := 0
     else
         FollowLetterYear.Value := Select_LetterFollowLetterYear.AsInteger;
  end;

   FollowLetterYear.Enabled := Select_Letter.State in [dsInsert, dsEdit];
   RetroactionYear.Enabled := FollowLetterYear.Enabled;
   // Amin 1391/12/05 End
end;

procedure TReceivedLetterInputForm.FollowLetterYearChange(Sender: TObject);
begin
  inherited;
   // Amin 1391/12/05 Start
   if Select_Letter.State in [dsInsert, dsEdit] then
      Select_LetterFollowLetterYear.Value := FollowLetterYear.Value;
   // Amin 1391/12/05 End
end;

procedure TReceivedLetterInputForm.RetroactionYearChange(Sender: TObject);
begin
  inherited; 
   // Amin 1391/12/05 Start
   if Select_Letter.State in [dsInsert, dsEdit] then
      Select_LetterRetroactionYear.Value := RetroactionYear.Value;
   // Amin 1391/12/05 End

end;

procedure TReceivedLetterInputForm.FormShow(Sender: TObject);
begin
  inherited;
   if (Dm.Check_CRM_Exists)and(_CanConnectToCRM) then
      GroupBox4.Visible := true
   else
      GroupBox4.Visible := false;

   if LetterDataID>0 then
   begin
      if Select_Letter.State in [dsEdit,dsInsert] then
      begin
         ShowMsg(67);
         Exit;
      end;
      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID := Select_LetterLetterID.AsInteger;

      FraddLetterData.Letter_Or_Erja:='Letter';
      FraddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
      FraddLetterData.RecommitID:=0;
      FraddLetterData.LetterDataID := LetterDataID;
      FraddLetterData.ShowModal;
   end;
   DBEUserMemo.Hint := DBEUserMemo.Text;
  TabShow(false);
end;

procedure TReceivedLetterInputForm.BitBtn1Click(Sender: TObject);
begin
  if Select_Letter.State in [dsInsert , dsEdit] then
  begin
    ShowMessage('«» œ« «ÿ·«⁄«  —« –ŒÌ—Â ‰„«ÌÌœ ');
    Abort;
  end;

  frmFollowRetroactionLetter := TfrmFollowRetroactionLetter.Create(Application);
  frmFollowRetroactionLetter._FR_LetterID := Select_LetterLetterID.AsInteger;
  frmFollowRetroactionLetter.ShowModal;
end;

procedure TReceivedLetterInputForm.TabShow(mode: Boolean);
begin
  if mode then
  begin
    pnlTopHeader.Height := 0 ;
   // xpPageControl1.TabHeight := 23 ;
   // xpPageControl1.TabWidth  := 0 ;
  end
  else
  begin
    pnlTopHeader.Height := 25 ; //5 ;
   // xpPageControl1.TabHeight := 1 ;
   // xpPageControl1.TabWidth  := 1 ;
  end;
end;

procedure TReceivedLetterInputForm.sbSubjectDelClick(Sender: TObject);
begin
  inherited;
  DBLookupComboBox8.KeyValue := null;
end;

end.


