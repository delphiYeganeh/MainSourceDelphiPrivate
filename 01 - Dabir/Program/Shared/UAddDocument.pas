 unit UAddDocument;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,
   xpPages, Menus, QRCtrls, QuickRpt, Math, Printers, Excel2000, OleCtrls, Word2000,
  AppEvnts;

type
  TFrAddDocument = class(TMBaseForm)
    ActionManager: TActionManager;
    acSBDataSetInsert: TDataSetInsert;
    acSBDataSetDelete: TDataSetDelete;
    acSBDataSetEdit: TDataSetEdit;
    acSBDataSetPost: TDataSetPost;
    acSBDataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action13: TAction;
    AEnter: TAction;
    Select_Letter: TADOStoredProc;
    Select_LetterUrgencyTitle: TWideStringField;
    Select_LetterClassificationTitle: TWideStringField;
    Select_LetterReciveTypeTitle: TWideStringField;
    Select_LetterResponsibleStafferTitle: TWideStringField;
    Select_LetterFormOgrTitle: TWideStringField;
    Select_LetterSignertitle: TWideStringField;
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
    Select_LetterFromStaffer: TWideStringField;
    Select_LetterUserTitle: TWideStringField;
    Select_LetterToorgTitle: TWideStringField;
    Select_LetterSecCode: TStringField;
    Select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    MainPanel: TPanel;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    Apicture: TBitBtn;
    AexpotToWord: TBitBtn;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterUserTableTitle: TStringField;
    ActionToolBar1: TActionToolBar;
    Select_LetterSubjectTitle: TStringField;
    Select_LetterSubjectID: TIntegerField;
    DBMemo2: TDBMemo;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label11: TLabel;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Select_LetterSubjectDescription: TWideStringField;
    Label4: TLabel;
    AAddLetterData: TBitBtn;
    xpForms: TxpTabSheet;
    Panel2: TPanel;
    Label26: TLabel;
    lblCount: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn5: TBitBtn;
    btnShowForm: TBitBtn;
    xpPageControl2: TxpPageControl;
    PopupMenu2: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    QAddedForms: TADOQuery;
    QAddedFormsLetterFormsID: TAutoIncField;
    QAddedFormsLetterID: TIntegerField;
    QAddedFormsFormID: TIntegerField;
    QAddedFormsDescription: TWideStringField;
    QAddedFormsTableCode: TStringField;
    QAddedFormsUserField1: TWideStringField;
    QAddedFormsUserField2: TWideStringField;
    dsQAddedForms: TDataSource;
    QDelForms: TADOQuery;
    QHasForms: TADOQuery;
    QHasFormsID: TAutoIncField;
    GroupBox5: TGroupBox;
    lblHasForms: TLabel;
    BitBtn2: TBitBtn;
    Label13: TLabel;
    DBEIndicatorInnerNo: TDBEdit;
    Select_LetterIndicatorInnerNo: TStringField;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QRelated: TADOQuery;
    DSRelated: TDataSource;
    QRelatedIndicatorID: TIntegerField;
    QRelatedInnerNo: TStringField;
    QRelatedMainDocID: TIntegerField;
    QRelatedRelatedDocID: TIntegerField;
    PopupMenu: TPopupMenu;
    N2: TMenuItem;
    Excel1: TMenuItem;
    Word1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lettersDbGrid: TDBGrid;
    QRelatedMemo: TStringField;
    QRelatedSubjectDescription: TStringField;
    Label6: TLabel;
    txtIndicatorID: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    txtMemo: TEdit;
    txtSubjectDescription: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    QAddedFormstableid: TIntegerField;
    qry_AccessDelete: TADOQuery;
    qry_AccessDeleteHasDelete: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function GetLetter(LetterID:integer):boolean;
    procedure OwnerComboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
    procedure SetDefualt;
    procedure acSBDataSetInsertExecute(Sender: TObject);
    procedure acSBDataSetPostExecute(Sender: TObject);
    procedure acSBDataSetCancelExecute(Sender: TObject);
    procedure acSBDataSetDeleteExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure acSBDataSetEditExecute(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure Edit1Exit(Sender: TObject);
    procedure DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApictureClick(Sender: TObject);
    procedure AexpotToWordClick(Sender: TObject);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
    procedure FormDataShow(Sender: TObject);
    procedure AAddLetterDataClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure btnShowFormClick(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure xpPageControl1Change(Sender: TObject);
    procedure Select_LetterAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Select_LetterAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QAddedFormsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DontShow_xpFormsTab;
    procedure Show_xpFormsTab;
    procedure ShowCount;
    function LetterHasForms:Boolean;
    function CheckFormExist:Boolean;    
  public
    { Public declarations }
    SecID:integer;
    LetterDataID: integer;
  end;

var
  FrAddDocument: TFrAddDocument;

implementation

uses  YShamsiDate, FromOrgU,   QuickSearch,
    Dmu,   
  ExportToWord, ReCommiteU, ExactCopy, businessLayer, URetroExist,
  UUserTable_Input, USecChange, UMain, ScanImageFm, UaddLetterData,
  UInputUserTable, DocumentsListUnit;
{$R *.dfm}




function TFrAddDocument.GetLetter(LetterID:integer):boolean;
begin
  inherited;
with select_Letter do
 begin
  close;
  Parameters.ParamByName('@LetterID').Value:=LetterID;
  open;
  Result:=RecordCount<>0;
  if Result then
   secid:=select_LetterSecretariatID.AsInteger;
 end;
end;


procedure TFrAddDocument.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;


 if (DSForm.DataSet.State in [dsInsert,dsEdit] ) and acSBDataSetEdit.Visible and (select_Letter.LockType<>ltReadOnly )then
    if messageShow(27,true) then
      acSBDataSetPost.Execute
     else acSBDataSetCancel.Execute;

 end;

procedure TFrAddDocument.OwnerComboKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
 if key=32 then
    if MainForm.GetSearch then
    DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;



procedure TFrAddDocument.Action11Execute(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TFrAddDocument.AEnterExecute(Sender: TObject);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
 SelectNext(ActiveControl,true,true);
end;

procedure TFrAddDocument.SetDefualt;
begin
   inherited;
   with dm,DSForm.DataSet do
   begin
     FieldByName('RegistrationDate').Value:=_Today;
     FieldByName('RegistrationTime').Value:=Exec_get_NowTime;
     FieldByName('ClassificationID').value:=DefaultSClassificationID;
     FieldByName('UrgencyID').value       :=DefaultSUrgencyID    ;
     FieldByName('NumberOfPage').value    :=DefaultSNumberOfPage ;
     FieldByName('receiveTypeID').value   :=DefaultSReceiveTypeID;
     {Ranjbar 89.09.17 ID=243}
     if DefualtSSigner <> 0 then
        //---
        FieldByName('SignerID').AsInteger :=DefualtSSigner;
   end;
end;

procedure TFrAddDocument.acSBDataSetInsertExecute(Sender: TObject);
begin
   inherited;

   if not Dm.GetActionAccess(TAction(Sender).Name,Tag) then
      Exit;

    if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    begin
       ShowMsg(63);
       Exit;
    end;

    With dm,DSForm.DataSet do
    begin
       Insert;
       FieldByName('IndicatorID').Value      := Exec_get_LastIndicatorID(4,1,dm.CurrentmYear,SecID);
       FieldByName('FromOrgID').AsInteger    := _UserFromOrgID;
       FieldByName('MYear').AsInteger        := CurrentMYear;
       FieldByName('LetterFormat').AsInteger := 1;
       FieldByName('Secretariatid').AsInteger:= SecID;
       FieldByName('Userid').AsInteger:= _userid;
       FieldByName('Letter_Type').AsInteger := 4;
       SetDefualt;
    end;
end;

procedure TFrAddDocument.acSBDataSetPostExecute(Sender: TObject);
 var IsInsert: boolean;
begin
   inherited;

   IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN
      exit;

   IsInsert:=false;
   with DSForm.DataSet do
   begin
      if state=dsinsert  then
         IsInsert := True;
      Post;
      if IsInsert then
         MakeRecommite(2,3,FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);
   end;
   GetLetter(select_LetterLetterID.AsInteger);

   Exec_insert_UserLog(Self.Tag,'DataSetPost',select_LetterLetterID.AsInteger);
end;


procedure TFrAddDocument.acSBDataSetCancelExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN exit;

 DSForm.DataSet.Cancel;
end;

procedure TFrAddDocument.acSBDataSetDeleteExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN exit;

   if messageShow(38,True) then
    begin
     Exec_delete_Letter(select_LetterLetterID.AsInteger,Exec_get_LastIndicatorID(4,3,dm.CurrentmYear,SecID));
     GetLetter(0);
   end;

end;

procedure TFrAddDocument.DataSetFirstExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.First;

end;

procedure TFrAddDocument.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;

end;

procedure TFrAddDocument.acSBDataSetEditExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN exit;

 DSForm.DataSet.Edit;
end;

procedure TFrAddDocument.DBMemo2Enter(Sender: TObject);
 var s: string;
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
try
 if TDBMemo(sender).Text='' then
  begin
   s:=dm.GetMemoFollow(true,select_LetterFollowLetterNo.AsString,select_LetterRetroactionNo.AsString);
   if s<>'' then
    select_LetterMemo.AsString:=s;
  end;

except end;   
   TDBMemo(Sender).SelectAll;
TEditEnter(Sender);

end;

procedure TFrAddDocument.DBEdit9Exit(Sender: TObject);
begin
  inherited;

if select_Letter.State in [dsedit,dsinsert] then
 begin
   dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]);
   select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
   select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
 end;

TEditExit(sender);
end;



procedure TFrAddDocument.DBMemo2Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);

end;

procedure TFrAddDocument.FormCreate(Sender: TObject);
var i: word;
begin
  inherited;
  {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
       {$ENDIF}
   {$ENDIF}

  xpPageControl1.ActivePageIndex:=0;
  DontShow_xpFormsTab;
  for i:=0 to ComponentCount-1 do
    if Components[i].InheritsFrom(TBitBtn) then
      TBitBtn(Components[i]).Visible:=dm.GetActionAccess(TBitBtn(Components[i]).name,MainForm.Tag);
  UserField.Caption:=dm.UserMemoDisplay;
end;

procedure TFrAddDocument.DBGToORGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
 if dm.ToorganizationsIsInnerOrg.AsBoolean then
    Color:=$00FFE6FF
   else
    Color:=$00FFD3A8;
end;

procedure TFrAddDocument.ActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
if action.tag<>4 then
   if select_Letter.Active then
Exec_insert_UserLog(Self.Tag,Action.name,select_LetterLetterID.AsInteger);

end;

procedure TFrAddDocument.Edit1Exit(Sender: TObject);
begin
  inherited;

if select_Letter.State in [dsedit,dsinsert] then
 begin
   dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]);
   select_LetterToOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
   select_LetterToStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
 end;

TEditExit(sender);

end;

procedure TFrAddDocument.DBLookupComboBox5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
 if key=32 then
    if MainForm.GetSearch then
    DSForm.DataSet.FieldByName('toorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;

end;

procedure TFrAddDocument.ApictureClick(Sender: TObject);
begin
  inherited;
 if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
    ShowMsg(67);
    exit;
   end;
   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := Self.Select_LetterLetterID.AsInteger;
   FmScanImage.ShowModal;

      Exec_insert_UserLog(Self.Tag,'Apicture',select_LetterLetterID.AsInteger);
end;

procedure TFrAddDocument.AexpotToWordClick(Sender: TObject);
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    ShowMsg(67);
    exit;
  end;
  MainForm.AExpotToWordExecute(self);
end;

procedure TFrAddDocument.Select_LetterBeforePost(DataSet: TDataSet);
begin
  inherited;
select_LetterLastUpdate.Value:=now;

end;

procedure TFrAddDocument.FormDataShow(Sender: TObject);
begin
  inherited;
 FrUserTable_Input:= TFrUserTable_Input.Create(Application);
 FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
 FrUserTable_Input.FormOrder:=1;
//FrUserTable_Input.ShowInPanel(FormData);

end;

procedure TFrAddDocument.AAddLetterDataClick(Sender: TObject);
begin
  inherited;
   with DSForm.DataSet do
   begin
      if (DSForm.DataSet.State in [dsInsert,dsEdit])and (select_LetterLetterID.AsInteger>0) then
      begin
         ShowMsg(67);
         Exit;
      end;
      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;

   FrAddLetterData.Letter_Or_Erja:='Letter';
   FrAddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
   FrAddLetterData.RecommitID:=0;

      FraddLetterData.ShowModal;
   end;
end;

procedure TFrAddDocument.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrAddDocument.N7Click(Sender: TObject);
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
    ShowMsg(67);
    exit;
   end;
  Show_xpFormsTab;
  QAddedForms.Close;
  QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
  QAddedForms.Open;
  ShowCount;
  xpForms.Show;
end;

procedure TFrAddDocument.N8Click(Sender: TObject);
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
    ShowMsg(67);
    exit;
   end;
   DontShow_xpFormsTab;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.LetterID:=Select_LetterLetterID.AsInteger;
   FrInputUserTable.showmodal;
   Select_Letter.Requery;
end;

procedure TFrAddDocument.btnShowFormClick(Sender: TObject);
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

procedure TFrAddDocument.xpBitBtn5Click(Sender: TObject);
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

procedure TFrAddDocument.DSFormDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not Select_Letter.IsEmpty then
  begin
      if LetterHasForms then
      begin
        lblHasForms.Font.Color:=clGreen;
        lblHasForms.Caption:='«Ì‰ ”‰œ œ«—«Ì ›—„ ÅÌÊ”  ‘œÂ „Ì »«‘œ';
      end
      else
      begin
        lblHasForms.Font.Color:=clMaroon;
        lblHasForms.Caption:='«Ì‰ ”‰œ œ«—«Ì ›—„ ÅÌÊ”  ‘œÂ ‰„Ì »«‘œ';
      end;
  end;
end;

function TFrAddDocument.CheckFormExist: Boolean;
begin
  Result:=False;
  if not QAddedForms.IsEmpty then
     if (QAddedFormsFormID.AsInteger>0) and (QAddedFormsLetterID.AsInteger=Select_LetterLetterID.AsInteger) then
        Result:=True;
end;

procedure TFrAddDocument.DontShow_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=False;
end;

function TFrAddDocument.LetterHasForms: Boolean;
begin
  Result:=False;
  QHasForms.Close;
  QHasForms.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
  QHasForms.Open;
  if not QHasForms.IsEmpty then Result:=True;
end;

procedure TFrAddDocument.Show_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=True;
end;

procedure TFrAddDocument.ShowCount;
begin
  lblCount.Caption:='  ⁄œ«œ ' +IntToStr(YDBGrid1.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TFrAddDocument.xpPageControl1Change(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
       Select_Letter.Requery;
end;

procedure TFrAddDocument.Select_LetterAfterScroll(DataSet: TDataSet);
begin
  inherited;
   // Amin 1391/12/16 Start
   if not (Select_Letter.State in [dsEdit, dsBrowse]) then
      exit;

   QRelated.Close;
   QRelated.Parameters.ParamByName('DocID').Value := Select_LetterLetterID.Value;
   QRelated.Open;
   // Amin 1391/12/16 End
end;

procedure TFrAddDocument.BitBtn1Click(Sender: TObject);
begin
  inherited;
   // Amin 1391/12/16 Start
   if not (Select_Letter.State in [dsEdit, dsBrowse]) then
   begin
      ShowMessage('.«» œ« „Ì »«Ì”  «ÿ·«⁄«  —« –ŒÌ—Â ò‰Ìœ');
      exit;
   end;

   DocumentsListForm:= TDocumentsListForm.Create(Application);
   DocumentsListForm.MainDocID := Select_LetterLetterID.Value;
   DocumentsListForm.ShowModal;
   if DocumentsListForm.ModalResult = mrOk then
   begin
      if not QRelated.Locate('RelatedDocID', DocumentsListForm.SelectedDocID, [loCaseInsensitive]) then
      begin
         QRelated.Insert;
         QRelatedRelatedDocID.Value := DocumentsListForm.SelectedDocID;
         QRelatedMainDocID.Value := Select_LetterLetterID.Value;
         QRelated.Post;
         QRelated.Requery;
      end;
   end;

   DocumentsListForm.Free;
   // Amin 1391/12/16 End
end;

procedure TFrAddDocument.Select_LetterAfterOpen(DataSet: TDataSet);
begin
  inherited;
   Select_LetterAfterScroll(DataSet);
end;

procedure TFrAddDocument.N2Click(Sender: TObject);
   // Amin 1391/12/16 Start
var j,i:byte;
 QL:array[0..100] of TQRLabel;
 QS:array[0..100] of TQRShape;
 QT:array[0..100] of TQRDBText;
 w,QRL,DBGL :word;
 rate : real;
 MyQrep:TQuickRep;
 SummeryLabel,TitleLabel,SDate :TQRLabel;
 SPageNumber    ,
 SRecordNumber  ,
 STime       : TQRSysData;
 first:boolean;
 TitleCaption:string;
function Magnitate(t:integer):word;
begin
  Result:=Math.floor(t/rate);
end;
begin
   if (Select_LetterIndicatorID.IsNull) or (Select_LetterIndicatorID.Value = 0) then
      exit;
      
  TitleCaption:='·Ì”  «”‰«œ „— »ÿ »« ”‰œ ‘„«—Â ' + Select_LetterIndicatorID.AsString;


 MyQrep:=TQuickRep.Create(Parent);
with lettersDbGrid.Columns,MyQrep do
 begin
   Page.Orientation:=poPortrait;
   Bands.HasTitle:=true;
   Bands.HasSummary:=true;
   Bands.HasColumnHeader:=true;
   Bands.HasDetail:=true;
   Bands.HasPageFooter:=false;
   Bands.SummaryBand.Frame.DrawTop:=true;


 TitleLabel:=TQRLabel.Create(self);
 with TitleLabel do
  begin
   Parent:=Bands.TitleBand;
   Alignment:=taCenter;
   Caption:=TitleCaption;
   Font.Name:='Nazanin';
   Font.Style:=[fsBold];
   if Bands.TitleBand.Height>Height then
    Top:=(Bands.TitleBand.Height-Height) div 2;
   Width:=Bands.TitleBand.Width-10;
   AutoSize:=false;
   AlignToBand:=true;
  end;

   MyQrep.DataSet:=Grid.DataSource.DataSet;
     with  Frame do
      begin
       DrawTop:=true;
       DrawRight:=true;
       DrawLeft:=true;
     end;
   with Bands.ColumnHeaderBand do
   begin
    Color:=clSilver;
    with Frame do
    begin
       DrawTop:=true;
       DrawRight:=true;
       DrawLeft:=true;
       DrawBottom:=true;
     end;
   end;
if Bands.HasPageFooter then
   with Bands.PageFooterBand.Frame do
    begin
       w:=(Bands.PageFooterBand.Width-20)div 4;
       DrawTop:=true;
       DrawRight:=true;
       DrawLeft:=true;
       DrawBottom:=true;
     end;

 DBGL:=0;
 for I:=0 to Count-1 do
  if Items[i].Visible then
   begin
    DBGL:=DBGL+Items[i].Width;
    j:=i
   end;

  QRL:=Bands.ColumnHeaderBand.Width;
  bands.DetailBand.Frame.DrawBottom:=true;
  Bands.ColumnHeaderBand.Height:=20;
  Bands.DetailBand.Height:=20;
  first:=true;
 rate:= (DBGL/QRL);

 for i:=0 to Count-1 do
 if Items[i].Visible then
  begin
    QL[i]:=TQRLabel.Create(Bands.ColumnHeaderBand);
    Ql[i].Parent:=Bands.ColumnHeaderBand;
    ql[i].Width:=Magnitate(Items[i].Width);
    QRL:=QRL-ql[i].Width;
    QL[i].Left:=QRL;
    QL[i].AutoSize:=false;
    QL[i].Caption:=Items[i].Title.Caption;
    ql[i].Font:=Items[i].Title.Font;
    ql[i].Font.Name:='Nazanin';
    Ql[i].Alignment:=taCenter;
    ql[i].Transparent:=true;
    QL[i].Show;

    QT[i]:=TQRDBText.Create(Bands.DetailBand);
    QT[i].Parent:=Bands.DetailBand;
    QT[i].Left:=QRL;
    QT[i].AutoSize:=false;
    QT[i].AutoStretch:=True;
    QT[i].Width:=Magnitate(Items[i].Width);
    QT[i].DataSet:=DataSet;
    QT[i].DataField:=Items[i].DisplayName;
    QT[i].Font:=Items[i].Font;
    QT[i].Font.Name:='Nazanin';
    //if first or (Self.BiDiMode =bdLeftToRight) then
     begin
      QT[i].Alignment:=taCenter;
      first:=false;
     end
    //else
    //  QT[i].Alignment:=taRightJustify;

  end;

 for i:=0 to Count-1 do
 if Items[i].Visible and (i<>j) then
  begin
    qs[i]:=TQRShape.Create(Bands.DetailBand);
    Qs[i].Parent:=Bands.DetailBand;
    Qs[i].Left:=qt[i].Left;
    Qs[i].Top:=0;
    Qs[i].Width:=2;
    Qs[i].Shape:=qrsVertLine;
    QS[i].Height:=51;
  end;
 Preview;
 Free;
end;
   // Amin 1391/12/16 End
end;

procedure TFrAddDocument.Excel1Click(Sender: TObject);
// Amin 1391/12/16 Start
var
   i,j,k: integer;
   ExcelApplication:TExcelApplication;
   Template,f1:OleVariant;
   {Ranjbar 89.08.01 ID=152}
   Data : String;
   //---
   function CheckFarsiDate(s:string):string;
   begin
      Result:=s;
         if (length(s)=10) then
            if (Pos('/',s)<>0) then
               if pos('/',copy(s,pos('/',s)+1,length(s)-pos('/',s)))<>0 then
                  Result:=Copy(s,9,2)+Copy(s,5,4)+Copy(s,1,4);
   end;
begin
   if (Select_LetterIndicatorID.IsNull) or (Select_LetterIndicatorID.Value = 0) then
      exit;

   ExcelApplication:=TExcelApplication.Create(self);
   j:=1;
   with ExcelApplication do
   begin
       Template := EmptyParam;
       Workbooks.Add(Template,0);
       Visible[0]:=true;
   end;

   with QRelated do
      if Active then
      begin
         First;
          k:=0;
         for i:= 0 to lettersDbGrid.Columns.Count-1 do
          if lettersDbGrid.Columns[i].Visible then
           begin
            if k<26 then
             f1:=char(65+k)+IntToStr(j)
            else
             if k<52 then
              f1:='A'+char(65+k-26)+IntToStr(j)
            else
              f1:='B'+char(65+k-26)+IntToStr(j);

            ExcelApplication.Range[f1,f1].Select;
            ExcelApplication.ActiveCell.FormulaR1C1 := lettersDbGrid.Columns[i].Title.Caption;
            inc(k);
         end;

        while not eof do
         begin
          j:=j+1;
          k:=0;
          for i:= 0 to lettersDbGrid.Columns.Count-1 do
           if lettersDbGrid.Columns[i].Visible then
              begin

            if k<26 then
             f1:=char(65+k)+IntToStr(j)
            else
             if k<52 then
              f1:='A'+char(65+k-26)+IntToStr(j)
            else
              f1:='B'+char(65+k-26)+IntToStr(j);

               ExcelApplication.Range[f1,f1].Select;
               try
                  {Ranjbar 89.08.01 ID=152}
                  //ExcelApplication.ActiveCell.FormulaR1C1 := Columns[i].Field.AsString
                  Data := lettersDbGrid.Columns[i].Field.AsString;
                  if UpperCase(Data) = 'FALSE' then
                        Data := ''
                     else
                        if UpperCase(Data) = 'TRUE' then
                           Data := 'X';
                  ExcelApplication.ActiveCell.FormulaR1C1 := Data;
                  //---
               except
               end;
               inc(k);
             end;
          next;
         end;{eof}
     end;{with dataset}
// Amin 1391/12/16 End
end;

procedure TFrAddDocument.Word1Click(Sender: TObject);
// Amin 1391/12/16 Start
var
   HLine, Line:string;
   i: byte;
   L,m: Integer;
   WordApplication:TWordApplication; WordDocument:TWordDocument;
   Template,f1,f2,f3,f4,f5,f6, ItemIndex,fals,tru:OleVariant;
   Old_GroupField_Value:string;
   PageBreak,Story,f:OleVariant;
   {Ranjbar 89.08.01 ID=152}
   Data : String;
   DataSetRecorIndicator : integer;  // Amin 1391/10/13
   //---
begin
   if (Select_LetterIndicatorID.IsNull) or (Select_LetterIndicatorID.Value = 0) then
      exit;

   WordApplication:=TWordApplication.Create(self);
   WordDocument:=TWordDocument.Create(self);
   PageBreak:=wdPageBreak;

   with WordApplication,Selection do
   begin
      fals:=false;
      tru:=true;
      ItemIndex := 1;
      Template := EmptyParam;
      Documents.Add(Template, fals,Template,Template);

      WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
      with WordDocument do
            PageSetup.Orientation:=wdOrientPortrait;
      Selection.RtlPara;
      Visible:=true;
   end;

   with QRelated do
      if Active then
      begin
         HLine:='—œÌ›'+ListSeparator;
         m:=0;
         L := 0;
         for i:= 0 to lettersDbGrid.Columns.Count-1 do
            if lettersDbGrid.Columns[i].Visible then
            begin
               HLine:=HLine+lettersDbGrid.Columns[i].Title.Caption+ListSeparator;
               inc(m)
            end;
            HLine[length(Hline)]:=#13;
            WordApplication.Selection.TypeText(HLine);
            inc(l);
            First;
            // Amin 1391/10/13 while not eof do
            for DataSetRecorIndicator:= 1 to RecordCount do // Amin 1391/10/13
            begin
                  line:=IntToStr(l)+ListSeparator;
               for i:= 0 to lettersDbGrid.Columns.Count-1 do
                  if lettersDbGrid.Columns[i].Visible then
                  begin
                     Data := Trim(lettersDbGrid.Columns[i].Field.AsString);
                     if UpperCase(Data) = 'FALSE' then
                        Data := ''
                     else
                        if UpperCase(Data) = 'TRUE' then
                           Data := 'X';
                     Line:=Line+Replace(Replace(CorrectFarsi(Data),#13,' '),#10,' ')+ListSeparator;
                     //---
                  end;

               line[length(line)]:=#13;
               Inc(L);
               WordApplication.Selection.TypeText(line);
               next;

            end;{while}

               line:='';

     if m>15 then exit;

       WordApplication.Selection.WholeStory;
       f1:=wdSeparateByCommas;  f2:=wdAutoFitFixed;
       f5:=100;    f6:=16;
       f3:=l-1;
        f4:=m+1;
       WordApplication.Selection.ConvertToTable(f1,f3,f4,f5,f6,tru,tru,tru,tru,tru,tru,tru,tru,tru,f2,tru);


      with WordApplication,Selection,Tables.Item(1) do
       begin
        Select;
        AutoFitBehavior(wdAutoFitContent);
        AutoFitBehavior (wdAutoFitContent);
        AutoFitBehavior (wdAutoFitWindow);
        AutoFitBehavior (wdAutoFitWindow);
        f3:=wdStory;
        HomeKey(f3,tru);
        SelectRow;
        Selection.Shading.Texture := wdTextureNone ;
        Selection.Shading.ForegroundPatternColor := wdColorAutomatic;
        Selection.Shading.BackgroundPatternColor := wdColorGray30;
        Selection.Font.Bold := wdToggle;
        Selection.Font.BoldBi := wdToggle;
        Selection.Rows.HeadingFormat := wdToggle;
     end;
     end;{with dataset}

    with WordApplication.Selection do
     begin
        f3:=wdStory;
        HomeKey(f3,tru);
        SplitTable;
         ParagraphFormat.Alignment := wdAlignParagraphCenter;
         Font.Bold := wdToggle;
         Font.BoldBi := wdToggle;
        TypeText('«”‰«œ „— »ÿ »« ”‰œ ‘„«—Â ' + Select_LetterIndicatorID.AsString);
        WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
        WholeStory;
        ParagraphFormat.Alignment:=wdAlignParagraphLeft;
        TypeText(' «—ÌŒ  ÂÌÂ ê“«—‘ '+CheckFarsiDate(ShamsiString(now)));
        WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
      end;
// Amin 1391/12/16 End
end;

procedure TFrAddDocument.BitBtn3Click(Sender: TObject);
var
   s: string;
   q : TADOCommand;
begin
  inherited;
   // Amin 1391/12/16 Start
   if (not QRelated.Active) or (QRelated.RecordCount = 0) or
      (QRelated.RecNo = -1) then
      Exit;

   if MessageDlg('¬Ì« „«Ì· »Â Õ–› «— »«ÿ »« «Ì‰ ”‰œ Â” Ìœø', mtConfirmation, mbOKCancel, 0) = mrOk then
   begin
      s:= 'Delete from DocumentsRelation where MainDocID = ' + IntToStr(QRelatedMainDocID.Value) + ' and RelatedDocID = ' + IntToStr(QRelatedRelatedDocID.Value);
      q:= TADOCommand.Create(nil);
      q.Connection := Dm.YeganehConnection;
      q.CommandText := s;
      q.Execute;
      QRelated.Requery;
   end;
   // Amin 1391/12/16 End
end;

procedure TFrAddDocument.BitBtn4Click(Sender: TObject);
begin
  inherited;
   // Amin 1391/12/16 Start
   if (not QRelated.Active) or (QRelated.RecordCount = 0) or
      (QRelated.RecNo = -1) then
      Exit;

   MainForm.ViewDocument(QRelatedRelatedDocID.Value);
   // Amin 1391/12/16 End
end;

procedure TFrAddDocument.BitBtn5Click(Sender: TObject);
begin
  inherited;
  // Amin 1391/12/20 Start
   if QRelated.Filtered then
      QRelated.Filtered := false;

   txtIndicatorID.Text := '';
   txtMemo.Text := '';
   txtSubjectDescription.Text := '';
  // Amin 1391/12/20 End
end;

procedure TFrAddDocument.BitBtn6Click(Sender: TObject);
var
   sc : string; // Amin 1391/12/20
   FilterAdded : boolean; // Amin 1391/12/20
begin
  inherited;
   // Amin 1391/12/20 Start
   if QRelated.Filtered then
      QRelated.Filtered := false;
   FilterAdded:= false;

   if trim(txtIndicatorID.Text) <> '' then
   begin
      if FilterAdded then
         sc := sc + ' And ';

      sc := sc + 'IndicatorID = ' + txtIndicatorID.Text;

      FilterAdded:= true;
   end;

   if(trim(txtMemo.Text) <> '') or (trim(txtMemo.Text) <> '') then
   begin
      if FilterAdded then
         sc := sc + ' And ';

      sc := sc + '(';
      if trim(txtMemo.Text) <> '' then
      begin
         sc := sc + 'Memo like ''%' + txtMemo.Text + '%''';    
      end;

      if trim(txtSubjectDescription.Text) <> '' then
      begin
         if trim(txtMemo.Text) <> '' then
            if RadioButton1.Checked then
               sc := sc + ' AND '
            else
               sc := sc + ' OR ';

         sc := sc + 'SubjectDescription like ''%' + txtSubjectDescription.Text + '%''';
      end;

      sc := sc + ')';     
      FilterAdded := true;
   end;

   QRelated.Filter := sc;
   QRelated.Filtered := true;
   // Amin 1391/12/20 End
end;

procedure TFrAddDocument.FormShow(Sender: TObject);
begin
  inherited;
   if LetterDataID>0 then
   begin
         with DSForm.DataSet do
         begin
            if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
            begin
               ShowMsg(67);
               Exit;
            end;
         FraddLetterData := TFraddLetterData.Create(Application);
         FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;
         FraddLetterData.RecommitID := 0;
         FrAddLetterData.Letter_Or_Erja:='Letter';
         FrAddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
         FrAddLetterData.LetterDataID := LetterDataID;
         FraddLetterData.ShowModal;
      end;
   end;
      {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
         //   SBOther.Visible := false;
       {$ENDIF}
   {$ENDIF}
end;

procedure TFrAddDocument.QAddedFormsAfterScroll(DataSet: TDataSet);
begin
   qry_AccessDelete.Close;
   qry_AccessDelete.Parameters.ParamByName('userid').Value := _UserID;
   qry_AccessDelete.Parameters.ParamByName('tableid').Value := QAddedFormstableID.AsInteger;
   qry_AccessDelete.Active := True;

   xpBitBtn5.Enabled := qry_AccessDeleteHasDelete.AsBoolean;
end;

end.
