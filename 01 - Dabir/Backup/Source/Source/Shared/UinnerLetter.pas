unit UinnerLetter;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,
   xpPages, xpBitBtn, Menus, AppEvnts;

type
  TFinnerLetter = class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
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
    Groupbox: TGroupBox;
    Image1: TImage;
    attachs: TYCheckGroupBox;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    UserMemo: TYCheckGroupBox;
    UserField: TLabel;
    DBEUserMemo: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemoMemo: TDBMemo;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    DBEIndicatorID: TDBEdit;
    DBERegistrationTime: TDBEdit;
    DBEUserTitle: TDBEdit;
    Panel1: TPanel;
    Apicture: TBitBtn;
    AexpotToword: TBitBtn;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterUserTableTitle: TStringField;
    ActionToolBar1: TActionToolBar;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Select_LetterSubjectTitle: TStringField;
    Select_LetterSubjectID: TIntegerField;
    xpBitBtn1: TBitBtn;
    SpeedButton3: TLabel;
    DBEFollowLetterNo: TDBEdit;
    SpeedButton1: TLabel;
    DBERetroactionNo: TDBEdit;
    AaddLetterData: TBitBtn;
    Label11: TLabel;
    SpeedButton8: TBitBtn;
    DBLookupComboBox5: TDBLookupComboBox;
    Label2: TLabel;
    SpeedButton9: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    Select_LetterUserTableID2: TIntegerField;
    Select_LetterUserTableTitle2: TStringField;
    Label10: TLabel;
    SpeedButton11: TBitBtn;
    DBEditToStaffer: TDBEdit;
    DBLKCBToOrgTitle: TDBLookupComboBox;
    RecieverCode: TEdit;
    OwnerPanel: TPanel;
    OwnerLabel: TLabel;
    SenderCode: TEdit;
    DBLKCBFormOrgTitle: TDBLookupComboBox;
    FromResponsibleStafferTitle: TDBEdit;
    Select_LetterFinalized: TBooleanField;
    SpeedButton10: TBitBtn;
    SpeedButton12: TBitBtn;
    SBSimpleEditor: TBitBtn;
    Label4: TLabel;
    Recivers: TADOStoredProc;
    ReciversID: TAutoIncField;
    ReciversTitle: TWideStringField;
    ReciversParentID: TIntegerField;
    ReciversPhone: TWideStringField;
    ReciversFax: TWideStringField;
    ReciversEmail: TWideStringField;
    ReciversResponsibleStaffer: TWideStringField;
    ReciversIsActive: TBooleanField;
    ReciversPreCode: TWideStringField;
    ReciversIsInnerORg: TBooleanField;
    ReciversCode: TWideStringField;
    Select_LetterChristRegDate: TStringField;
    Select_LetterChristIncomDate: TStringField;
    DBEChristRegDate: TDBEdit;
    SBFollowLetterNo: TSpeedButton;
    SBRetroactionNo: TSpeedButton;
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    NAnewRecommite: TMenuItem;
    NAnswer: TMenuItem;
    NDoCommite: TMenuItem;
    SBOther: TBitBtn;
    QTemp: TADOQuery;
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
    xpForms: TxpTabSheet;
    Panel2: TPanel;
    Label26: TLabel;
    lblCount: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn5: TBitBtn;
    btnShowForm: TBitBtn;
    xpPageControl2: TxpPageControl;
    BitBtn2: TBitBtn;
    PopupMenu2: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    GroupBox5: TGroupBox;
    lblHasForms: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    edDeadLineDate: TMaskEdit;
    DBShamsiDateEdit: TDBShamsiDateEdit;
    QAddedFormstableid: TIntegerField;
    qry_AccessDelete: TADOQuery;
    qry_AccessDeleteHasDelete: TBooleanField;
    CheckAccessForErja: TADOStoredProc;
    CheckAccessForErjaResult: TIntegerField;
    Bevel1: TBevel;
    DBText1: TDBText;
    Label6: TLabel;
    Select_LetterIndicatorInnerNo: TWideStringField;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    Label8: TLabel;
    N3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    function GetLetter(LetterID:integer):boolean;
    procedure UpdateDblookup(all: boolean);
    procedure OwnerComboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
    procedure SetDefualt;
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure DataSetEditExecute(Sender: TObject);
    procedure DBMemoMemoEnter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemoMemoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLKCBFormOrgTitleClick(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure RecieverCodeExit(Sender: TObject);
    procedure DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApictureClick(Sender: TObject);
    procedure AexpotTowordClick(Sender: TObject);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormData2Show(Sender: TObject);
    procedure GetID(IsFrom:boolean);
    procedure DBLKCBToOrgTitleClick(Sender: TObject);
    procedure DBLKCBToOrgTitleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBSimpleEditorClick(Sender: TObject);
    procedure SenderCodeExit(Sender: TObject);
    procedure Select_LetterCalcFields(DataSet: TDataSet);
    procedure SenderCodeEnter(Sender: TObject);
    procedure RecieverCodeEnter(Sender: TObject);
    procedure SBFollowLetterNoClick(Sender: TObject);
    procedure SBRetroactionNoClick(Sender: TObject);
    procedure SBOtherClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure NAnewRecommiteClick(Sender: TObject);
    procedure NAnswerClick(Sender: TObject);
    procedure NDoCommiteClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnShowFormClick(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure xpPageControl1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QAddedFormsAfterScroll(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
  private
    prewNum : string;
    function IS_Girandeh_in_Group:Boolean;

    procedure DontShow_xpFormsTab;
    procedure Show_xpFormsTab;
    procedure ShowCount;
    function LetterHasForms:Boolean;
    function CheckFormExist:Boolean;

  public
    SecID : Integer;
    Read_Only :Boolean;
    LetterDataID: integer;
  end;

Var
   FinnerLetter: TFinnerLetter;

implementation

Uses YShamsiDate, FromOrgU,   QuickSearch, UMain,Dmu,
     ExportToWord, ReCommiteU, ExactCopy, businessLayer, URetroExist,
     UUserTable_Input, {ScanImageU, ScanImageU1,} UBrowsArchive,
     UaddLetterData, USearchTitle, ScanImageFm, Variants, UInputUserTable;
     
{$R *.dfm}

function TFinnerLetter.GetLetter(LetterID:Integer):Boolean;
begin
   inherited;
   with Select_Letter do
   begin
      Close;
      Parameters.ParamByName('@LetterID').Value := LetterID;
      Open;
      Result := RecordCount<>0;
      if Result then
         SecID := Select_LetterSecretariatID.AsInteger;
   end;
end;


procedure TFinnerLetter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;


 SetUserSetting('ShowLetterAttachPanel',attachs.YCheckBox.Checked);
 SetUserSetting('ShowLetterUserMemoPanel',UserMemo.YCheckBox.Checked);
 if (DSForm.DataSet.State in [dsInsert,dsEdit]) and DataSetEdit.Visible and (select_Letter.LockType<>ltReadOnly )then
    if messageShow(27,true) then
      DataSetPost.Execute
     else DataSetCancel.Execute;

 end;

procedure TFinnerLetter.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
  inherited;
   with dm do
    begin
     temp:=ActiveControl;
//      with attachs.YCheckBox do
//       begin
//        Checked:=GetUserSetting('ShowLetterAttachPanel');
//        Checked:=not Checked;Checked:=not Checked;
//       end;
//
//      with UserMemo.YCheckBox do
//       begin
//        Checked:=GetUserSetting('ShowLetterUserMemoPanel');
//        Checked:=not Checked;Checked:=not Checked;
//       end;
       ActiveControl:=temp;


      UpdateDblookup(False);
   end;
end;

procedure TFinnerLetter.UpdateDblookup(all: boolean);
begin
  inherited;

 if all then
   DSForm.DataSet.FieldByName('Tostaffer').AsString:=
   ReciversResponsibleStaffer.AsString;

   SenderCode.Text:=dm.FromOrganizationsCode.AsString;

   //if DBLKCBToOrgTitle.KeyValue<>0 then
   //RecieverCode.Text:=ReciversCode.AsString;

end;

procedure TFinnerLetter.OwnerComboKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) and ( key=32) then
 if MainForm.GetSearch then
    DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;



procedure TFinnerLetter.Action11Execute(Sender: TObject);
begin
  inherited;
 close;
end;
procedure TFinnerLetter.AEnterExecute(Sender: TObject);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
      SelectNext(ActiveControl,true,true);
end;

procedure TFinnerLetter.SetDefualt;
begin
   inherited;
   With dm,DSForm.DataSet do
   begin
      FieldByName('RegistrationDate').Value := _Today;
      FieldByName('RegistrationTime').Value := Exec_Get_NowTime;
      FieldByName('ClassificationID').value := DefaultSClassificationID;
      FieldByName('UrgencyID').value        := DefaultSUrgencyID    ;
      FieldByName('NumberOfPage').value     := DefaultSNumberOfPage ;
      FieldByName('receiveTypeID').value    := DefaultSReceiveTypeID;
      FieldByName('SignerID').AsInteger     := _UserFromOrgID; //����� ����� �� ��� ����� ����
      If _Kartable then
         FieldByName('finalized').AsBoolean := False;
   end;
end;

procedure TFinnerLetter.DataSetInsertExecute(Sender: TObject);
begin
   inherited;

   IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN
      Exit;

   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      ShowMsg(63);
      Exit;
   end;

   Try
      SenderCode.SetFocus;
   Except
   End;

   with dm,DSForm.DataSet do
   begin
      Insert;
      FieldByName('IndicatorID').Value       := Exec_get_LastIndicatorID(3,1,dm.CurrentmYear,SecID);
      FieldByName('FromOrgID').AsInteger     := _UserFromOrgID;
      FieldByName('FromStaffer').AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
      FieldByName('MYear').AsInteger         := CurrentMYear;
      FieldByName('LetterFormat').AsInteger  := 1;
      FieldByName('Secretariatid').AsInteger := SecID;
      FieldByName('Userid').AsInteger := _userid;
      FieldByName('Letter_Type').AsInteger := 3;
      FieldByName('ToOrgID').AsInteger :=0;
      SetDefualt;
   end;

end;

procedure TFinnerLetter.DataSetPostExecute(Sender: TObject);
Var
   IsInsert : Boolean;
   OldOrgID : Variant;
   dld : string;
begin
   inherited;
   //���� �� ������� ��� ���� ������� �� ����� ����� ���� �� ����� ���

   OldOrgID := Select_LetterToOrgID.OldValue;
   if not Dm.GetActionAccess(TAction(Sender).Name,Tag) then
      Exit;

   {Ranjbar 89.11.02 ID=278} //�� ���� ������ ����� ����� ������� � ������ ���� �����
   if Select_Letter.State = dsEdit then
   begin
      if Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue then
      begin
         ShowMyMessage('�����','����� ����� �� �� ����� ����� � ��� ����� ����� ���� "�������" ���� �����'+ #13#13
                        + '���� ��� ����� ��� ���� �� ���� ����� ������� ���� � ����� ��� ���� �� ����� ������'
                        ,[mbOK],mtInformation);
         DBLkCBFormOrgTitle.SetFocus;
         Abort;
      end;
      
      if (Select_LetterToOrgID.OldValue <> Select_LetterToOrgID.NewValue)
         And (Select_LetterToOrgID.OldValue <> 0) then //�� ���� ���� �� ���� ������ �� ����� ����
      begin
         ShowMyMessage('�����','����� ����� �� �� ����� ����� � ��� ����� ����� ���� "������" ���� �����'+ #13#13
                        + '���� ��� ����� ��� ���� �� ���� ����� ������� ���� � ����� ��� ���� �� ����� ������'
                        ,[mbOK],mtInformation);
         DBLKCBToOrgTitle.SetFocus;
         Abort;
      end;
   end;


   if (Select_LetterToOrgID.AsInteger <> 0) then
   begin
       if not IS_Girandeh_in_Group then
       begin
           ShowMsgString('������ ���� �� ���� ���� ��� ����� ���� ���� �����');
           Abort;
       end;
   end;

   if not DBShamsiDateEdit.IsValidDate  then
   begin
      DBShamsiDateEdit.SetFocus;
      ShowMessage('���� ����� ��� ���� �� ����� ����');
      Abort;
   end;


   Dm.FromOrganizations.Locate('Code',SenderCode.Text,[]);
   Select_LetterFromOrgID.AsInteger := dm.FromOrganizationsid.AsInteger;

   if DBLKCBToOrgTitle.KeyValue<>0 then
   begin
      Recivers.Locate('Code',RecieverCode.Text,[]);
      Select_LettertoOrgID.AsInteger := ReciversID.AsInteger;
   end;

   IsInsert := False;
   with DSForm.DataSet do
   begin
      if State = dsInsert then
      begin
         IsInsert := True;
         Select_LetterIndicatorID.AsInteger := Exec_get_LastIndicatorID(3,1,Dm.CurrentmYear,SecID);
      end;
      if trim(DBEdit1.Text) = '' then
      begin
         Select_LetterCenterNo.AsString :=  Select_LetterIndicatorInnerNo.AsString;
      end;

      Post;

      if IsInsert then
      begin
         //����� ����� ���� ���� �����

         Exec_Insert_ReCommites(1,False,Select_LetterLetterID.AsInteger,select_LetterFromOrgID.AsInteger,
               '��������� �����',0,(select_LetterToOrgID.AsInteger<>0){Proceeded ����� ���},_Today,Time_GetTime(Dm.YeganehConnection,False),3,_userid);

      end;
      {Ranjbar 88.03.16}
      //����� ���� ����� �� ������
      //if (Select_LetterToOrgID.AsInteger <> 0)then //_UserFromOrgID ��� �����
      if ((OldOrgID=Null)or(OldOrgID=0)) And (Select_LetterToOrgID.AsInteger <> 0) then //_UserFromOrgID ��� �����
      begin
         dld :=  edDeadLineDate.Text;
         if not IsValidDate(dld) then
            dld := '';//TryToCurrect(dld);
         Exec_Insert_ReCommites(2,Dm.DefaultInnerCopy,select_LetterLetterID.AsInteger,
                Select_LetterToOrgID.AsInteger,'���� �����',1,False,_Today,Time_GetTime(Dm.YeganehConnection,False),3,_UserID,dld);

         if not IsInsert then
            //�� ����� ���� ����� ���� Proceeded
            Qry_SetResult('Update ReCommites Set Proceeded=1 Where(LetterID= '+ Select_LetterLetterID.AsString +
                               ' )And(ID=1)And(ParentID=0)And(Type=3)',Dm.YeganehConnection);
      end;
   end;

   GetLetter(select_LetterLetterID.AsInteger);
   Exec_insert_UserLog(Self.Tag,'DataSetPost',select_LetterLetterID.AsInteger);
end;

procedure TFinnerLetter.DataSetCancelExecute(Sender: TObject);
begin
   inherited;

   if not Dm.GetActionAccess(TAction(Sender).Name,Tag) then
      Exit;

   DSForm.DataSet.Cancel;
   UpdateDblookup(False);
end;

procedure TFinnerLetter.DataSetFirstExecute(Sender: TObject);
begin
   inherited;
   DSForm.DataSet.First;
   UpdateDblookup(False);
end;

procedure TFinnerLetter.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;
  UpdateDblookup(False);

end;

procedure TFinnerLetter.DataSetEditExecute(Sender: TObject);
begin
   inherited;

   if not dm.GetActionAccess(TAction(SENDER).name,TAG) then
      Exit;

   DSForm.DataSet.Edit;
   UpdateDblookup(False);
end;

procedure TFinnerLetter.DBMemoMemoEnter(Sender: TObject);
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
AEnter.Enabled:=false;

end;

procedure TFinnerLetter.DBEdit9Exit(Sender: TObject);
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

procedure TFinnerLetter.DBMemoMemoExit(Sender: TObject);
begin
  inherited;
TEditExit(sender);
AEnter.Enabled:=true;
end;

procedure TFinnerLetter.FormCreate(Sender: TObject);
Var
   i : Word;
begin
   inherited;
//   exit;

      {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
            SBOther.Visible := false;
            Label5.Visible := false;
            edDeadLineDate.Visible := false;
            SpeedButton2.Visible := false;
            SpeedButton4.Visible := false;
       {$ENDIF}
   {$ENDIF}

  xpPageControl1.ActivePageIndex:=0;
  DontShow_xpFormsTab;
   for i := 0 to ComponentCount-1 do
      if Components[i].InheritsFrom(TBitBtn) then
         TBitBtn(Components[i]).Visible := Dm.GetActionAccess(TBitBtn(Components[i]).Name,MainForm.Tag);

   UserMemo.Caption := '   ' + Dm.UserMemoDisplay + '   ';
   UserField.Caption := Dm.UserMemoDisplay;
   if not _Kartable then
   begin
      {Ranjbar 89.11.18 ID=325} //����� ���� �� ���
      //ADoCommite.Hide;
      //AAnswer.Hide;
      //AnewRecommite.Hide;
      NDoCommite.Visible := False;
      NAnswer.Visible := False;
      NAnewRecommite.Visible := False;
      //---
   end;
end;

procedure TFinnerLetter.DBLKCBFormOrgTitleClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.03.13}
   if not(Select_Letter.State in [dsEdit,dsinsert]) then
      Exit;
   //---
   SenderCode.Text:=dm.FromOrganizationsCode.AsString;
   Select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
end;

procedure TFinnerLetter.ActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
if action.tag<>4 then
   if select_Letter.Active then
Exec_insert_UserLog(Self.Tag,Action.name,select_LetterLetterID.AsInteger);

end;

procedure TFinnerLetter.RecieverCodeExit(Sender: TObject);
begin
   inherited;
   if select_Letter.State in [dsedit,dsinsert] then
   begin
      if not dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]) then
       begin
         ShowMessage('�� ���� ��� �� ���� ���� �����');
        { if trim(TEdit(Sender).Text) <>'' then
            TDBEdit(Sender).SetFocus;
         if trim(prewNum)<>'' then
            RecieverCode.Text := prewNum;   }
       end
          else
          begin
             Select_LetterToOrgID.AsInteger := dm.FromOrganizationsid.AsInteger;
             select_LetterToStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
          end
   end;
   TEditExit(sender);
   {Ranjbar 89.08.02 ID=160}
   Keyboard_Farsi;
   //---
end;

procedure TFinnerLetter.DBLookupComboBox5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
      if key=32 then
         if MainForm.GetSearch then
            DSForm.DataSet.FieldByName('toorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;

end;

procedure TFinnerLetter.ApictureClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.18 ID=325}
   {if DataSetPost.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;}
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
   //---
   {
   extiontion:=Exec_Get_LetterdataExtention(select_LetterLetterID.AsInteger);

   if (extiontion=1) or ((extiontion=0) and  dm.HasJpg) then
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
    TifImageF:=TTifImageF.Create(Application);
    with TifImageF do
     begin
      LetterID:=select_LetterLetterID.AsInteger;
      ShowModal;
     end;
   end;}
   
   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := select_LetterLetterID.AsInteger;

   {Ranjbar 89.11.03 ID=291}
   //FmScanImage.RReadOnly := False;//dm.Sp_inboxIsCopy.AsBoolean;
   FmScanImage.RReadOnly := Read_Only;
   //---
   FmScanImage.ShowModal;

   Exec_insert_UserLog(Self.Tag,'Apicture',select_LetterLetterID.AsInteger);

end;

procedure TFinnerLetter.AexpotTowordClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.18 ID=325}
   {if DataSetPost.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;}
   //if Select_Letter.State in [dsEdit,dsInsert] then
//   begin
//      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
//      Exit;
//   end;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
   //---

   if _Word_Is_Opened then
      if Application_Is_Run('winword.exe') then
      begin
         messageShow(86,False) ;
         Exit;
      end;

   if not Dm.ExecGet_LetterWordFile(select_LetterLetterID.AsInteger,Read_Only,
                                  True, Exec_has_WordExcel(select_LetterLetterID.AsInteger)) then
   begin
     FExportToWord:=TFExportToWord.Create(Application);
     with FExportToWord do
     begin
       Letterid:=select_LetterLetterID.AsInteger;
       LetterFormat:=select_Letterletterformat.AsInteger;
       if not dm.UseTemplate then
       begin
         FExportToWord.FormShow(FExportToWord);
         OpenFileClick(OpenFile);
       end
       else
         ShowModal;
     end;
   end;
end;

procedure TFinnerLetter.Select_LetterBeforePost(DataSet: TDataSet);
begin
  inherited;
select_LetterLastUpdate.Value:=now;

end;

procedure TFinnerLetter.FormDataShow(Sender: TObject);
begin
  inherited;
  FrUserTable_Input:= TFrUserTable_Input.Create(Application);
  FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
  FrUserTable_Input.FormOrder:=1;
//  FrUserTable_Input.ShowInPanel(FormData);

end;

procedure TFinnerLetter.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
if trim(select_LetterUserMemo.Text)='' then exit;
FrBrowsArchive:=TFrBrowsArchive.Create(Application);
FrBrowsArchive.UserMemo.Text:=select_LetterUserMemo.Text;
FrBrowsArchive.RefreshQuery;
FrBrowsArchive.ShowModal;

end;

procedure TFinnerLetter.AaddLetterDataClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.18 ID=325}
   {if DataSetPost.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;}
   //if (Select_Letter.State in [dsEdit,dsInsert])and (select_LetterLetterID.AsInteger>0) then
//   begin
//      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
//      Exit;
//   end;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
   //---

   FraddLetterData := TFraddLetterData.Create(Application);
   FraddLetterData.LetterID := select_LetterLetterID.AsInteger;

   FraddLetterData.Letter_Or_Erja:='Letter';
   FraddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
   FraddLetterData.RecommitID:=0;


   {Ranjbar 89.11.03 ID=291}
   FraddLetterData.ReadOnly := Read_Only;
   //---
   FraddLetterData.ShowModal;
end;

procedure TFinnerLetter.SpeedButton8Click(Sender: TObject);
 var i: integer;
begin
  inherited;
  if not select_LetterUserTableID.IsNull then
      begin
        messageShowString(' ���� �� ��� ���� ��� ����� ��� ��� ',false);
        Exit;
      end;

     i:=dm.GetUserTableId;
   if   i> 0 then
    with select_Letter do
     Begin
       Edit;
       select_LetterUserTableID.AsInteger:=i;
       Post;
     end;

end;

procedure TFinnerLetter.SpeedButton9Click(Sender: TObject);
 var i: integer;
begin
  inherited;
  if not select_LetterUserTableID2.IsNull then
      begin
        messageShowString(' ���� �� ��� ���� ��� ����� ��� ��� ',false);
        Exit;
      end;
     i:=dm.GetUserTableID;
   if   i> 0 then
    with select_Letter do
     Begin
       Edit;
       select_LetterUserTableID2.AsInteger:=i;
       Post;
     end;



end;

procedure TFinnerLetter.FormData2Show(Sender: TObject);
begin
  inherited;
  FrUserTable_Input:= TFrUserTable_Input.Create(Application);
  FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
  FrUserTable_Input.FormOrder:=2;
//  FrUserTable_Input.ShowInPanel(FormData2);

end;

procedure TFinnerLetter.GetID(IsFrom:boolean);
begin
   inherited;
   if DataSetEdit.Enabled then
      Exit;

   FromOrgForm := TFromOrgForm.Create(Application);
   if IsFrom then
      FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.OrganizeMode:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
      if ISFrom then
      begin
         DSForm.DataSet.FieldByName('FromOrgID').AsInteger:=_ResultOrgID;
         select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
         SenderCode.Text:=dm.FromOrganizationsCode.AsString;
      end
         else
         begin
            DSForm.DataSet.FieldByName('ToOrgID').AsInteger  := _ResultOrgID;
            DSForm.DataSet.FieldByName('Tostaffer').AsString := _ResultOrgRespon;
            Recivers.Locate('id',_ResultOrgID,[]);
            RecieverCode.Text := reciversCode.AsString;
         end;
end;

procedure TFinnerLetter.DBLKCBToOrgTitleClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.03.13}
   if not(Select_Letter.State in [dsEdit,dsinsert]) then
      Exit;
   //---
   RecieverCode.Text := ReciversCode.AsString;
   Select_LetterToStaffer.AsString := ReciversResponsibleStaffer.AsString;
end;

procedure TFinnerLetter.DBLKCBToOrgTitleKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
   inherited;
 {  if (DSForm.DataSet.State in [dsInsert,dsEdit]) and ( key=32) then
      if MainForm.GetSearch then
         DSForm.DataSet.FieldByName('Toorgid').AsInteger := dm.FromOrganizationsID.AsInteger;    }
end;

procedure TFinnerLetter.SpeedButton12Click(Sender: TObject);
begin
   inherited;
   GetID(true);
end;

procedure TFinnerLetter.SpeedButton10Click(Sender: TObject);
begin
   inherited;
   GetID(False);
end;

procedure TFinnerLetter.FormShow(Sender: TObject);
begin
   inherited;
   if Read_Only then
   begin
      DataSetInsert.Enabled := False;
      DataSetEdit.Enabled := False;
      DataSetPost.Enabled := False;
      DataSetCancel.Enabled := False;
      ActionToolBar1.Hide;
   end;
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
   if DSForm.DataSet.State in [dsinsert] then
   begin
      SpeedButton4.Visible := true;
      SpeedButton2.Visible := true;
      edDeadLineDate.Visible := true;
      Label5.Visible := true;
   end;

      {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
            SBOther.Visible := false;
            Label5.Visible := false;
            edDeadLineDate.Visible := false;
            SpeedButton2.Visible := false;
            SpeedButton4.Visible := false;
       {$ENDIF}
   {$ENDIF}
   DBEUserMemo.Hint := DBEUserMemo.Text;
      with attachs.YCheckBox do
       begin
        Checked:=GetUserSetting('ShowLetterAttachPanel');
        Checked:=not Checked;Checked:=not Checked;
       end;

      with UserMemo.YCheckBox do
       begin
        Checked:=GetUserSetting('ShowLetterUserMemoPanel');
        Checked:=not Checked;Checked:=not Checked;
       end;
       AexpotToword.Enabled := True;
end;

procedure TFinnerLetter.SBSimpleEditorClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 36}
  if not(DSForm.DataSet.State in [dsInsert,dsEdit]) then
     Exit;
  Select_LetterMemo.AsString := MainForm.FillBlobField(Self,DBMemoMemo.Text,'��� ����� ����');
  //---
end;

procedure TFinnerLetter.SenderCodeExit(Sender: TObject);
begin
   inherited;

   if select_Letter.State in [dsedit,dsinsert] then
   begin
      if not dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]) then
      begin
         ShowMessage('�� ���� ��� �� ���� ���� �����');
         SenderCode.Text := prewNum;
         TDBEdit(Sender).SetFocus;
      end
         else
         begin
            select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
            select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
         end
   end;
   TEditExit(sender);
   {Ranjbar 89.08.02 ID=160}
   Keyboard_Farsi;
   //---
end;

procedure TFinnerLetter.Select_LetterCalcFields(DataSet: TDataSet);
begin
   inherited;
   Select_LetterChristRegDate.AsString := MiladiMString(DataSet.FieldByName('registrationdate').AsString);
   if DataSet.FieldByName('IncommingDate').AsString <> '' then
      Select_LetterChristIncomDate.AsString := MiladiMString(DataSet.FieldByName('incommingDate').AsString);
end;

procedure TFinnerLetter.SenderCodeEnter(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.08.02 ID=160}
   Keyboard_English;
   prewNum := SenderCode.Text;
   //---
end;

procedure TFinnerLetter.RecieverCodeEnter(Sender: TObject);
begin
   inherited;
   TEditEnter(Sender);
   {Ranjbar 89.08.02 ID=160}
   Keyboard_English;
   prewNum := RecieverCode.Text;
   //---
end;

procedure TFinnerLetter.SBFollowLetterNoClick(Sender: TObject);
Var
   LetterID : Integer;
begin
   inherited;
   {Ranjbar 89.11.12 ID=290}
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      Exit;
   end;

   //���� ����� ���� ���� �� ��� ���� ����
   if Is_Integer(Select_LetterFollowLetterNo.AsString) then
   begin
      LetterID := Exec_Get_LetterID_ByIndicatorid(Select_LetterFollowLetterNo.AsInteger,3,1,DM.CurrentMyear,SecID);
      if LetterID > 0 then
         MainForm.ShowInnerLetter(LetterID)
      else
         ShowMsg(3);
   end
      else
         ShowMyMessage('�����','���� �� ���� ���� � ��� ���� ����� ����� ��������� ���� ������',[mbOK],mtInformation);
   //---
end;

procedure TFinnerLetter.SBRetroactionNoClick(Sender: TObject);
Var
   LetterID : Integer;
begin
   inherited;
   {Ranjbar 89.11.12 ID=290}
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      Exit;
   end;

   if Is_Integer(Select_LetterRetroactionNo.AsString) then
   begin
      //���� ����� ���� ���� �� ��� ���� ����
      LetterID := Exec_Get_LetterID_ByIndicatorid(Select_LetterRetroactionNo.AsInteger,3,1,DM.CurrentMyear,SecID);
      if LetterID > 0 then
         MainForm.ShowInnerLetter(LetterID)
      else
         ShowMsg(3);
   end
      else
         ShowMyMessage('�����','���� �� ���� ���� � ��� ���� ����� ����� ��������� ���� ������',[mbOK],mtInformation);
   //---
end;

procedure TFinnerLetter.SBOtherClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,Sender,PopMnuOther);
end;

procedure TFinnerLetter.N1Click(Sender: TObject);
 var ltrID: integer;
begin
  inherited;
    {Ranjbar 89.11.18 ID=325}
   {if DataSetPost.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;}
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
   //---

    ltrID:=select_LetterLetterID.AsInteger;
   if  _Kartable then
    begin
    MainForm.RefreshQuery;
    TADOStoredProc(dm.FindComponent('sp_inbox')).Locate('Letterid',ltrID,[]);

      ReCommite:=TReCommite.Create(Application);
      with ReCommite do
       begin
        AInsert.Visible:=not TADOStoredProc(dm.FindComponent('sp_inbox')).FieldByName('Proceeded').AsBoolean;
        AInsert.Enabled:=  AInsert.Visible;
        LetterID:=ltrID;
        SHOW_TYP := 'SHOW';
        ShowModal;
      end;
   end
   else
   begin
      ReCommite:=TReCommite.Create(Application);
      with ReCommite do
       begin
        LetterID:=ltrID  ;
        SHOW_TYP := 'SHOW';
        ShowModal;
      end;
   end;
   
end;

procedure TFinnerLetter.NAnewRecommiteClick(Sender: TObject);
var letterID : integer;
begin

  inherited;
  if Select_Letter.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
    Exit;
  end;

  letterID := Select_LetterLetterID.AsInteger;
  MainForm.RefreshQuery;
  if _Kartable then
    TADOStoredProc(dm.FindComponent('sp_inbox')).Locate('Letterid',letterID,[]);

  MainForm.AnewRecommite.Execute;
  Exec_insert_UserLog(Self.Tag,'Arecommite',select_LetterLetterID.AsInteger);
end;

procedure TFinnerLetter.NAnswerClick(Sender: TObject);
begin
   inherited;

  if Select_Letter.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
    Exit;
  end;

   MainForm.AAnswer.Execute;
   Close;
end;

procedure TFinnerLetter.NDoCommiteClick(Sender: TObject);
begin
   inherited;

  if Select_Letter.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
    Exit;
  end;

  MainForm.ADoCommite.Execute;
  Close;
end;

procedure TFinnerLetter.N2Click(Sender: TObject);
begin
   inherited;
  if Select_Letter.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
    Exit;
  end;

  ExactCopyF := TExactCopyF.Create(Application);
  ExactCopyF.LetterID := Select_LetterLetterID.AsInteger;
  ExactCopyF.TypeId := 1; //������
  ExactCopyF.Caption := '������';
  ExactCopyF.ShowModal;
end;

function TFinnerLetter.IS_Girandeh_in_Group: Boolean;
begin
{  Result:=True;

  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT OrgID FROM ChartWorkGroupDetails WHERE GroupID='+IntToStr(_GroupID));
  QTemp.SQL.Add('AND OrgID='+IntToStr(Select_LetterToOrgID.AsInteger));
  QTemp.SQL.Add('AND AccessForErja=1');
  QTemp.Open;

  if QTemp.IsEmpty then Result:=False;
 }
  CheckAccessForErja.Close;
  CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := dm.FromOrganizationsID.AsInteger;//_UserFromOrgID;
  CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := Select_LetterToOrgID.AsInteger;
  CheckAccessForErja.Open;
  if CheckAccessForErjaResult.AsInteger = 1 then
    Result := True
  else
    Result := False;
end;

procedure TFinnerLetter.btnShowFormClick(Sender: TObject);
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

procedure TFinnerLetter.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
  if messageShowString('��� �� ��� ��� ����� ����Ͽ',true) then
  begin
    QDelForms.Close;
    QDelForms.Parameters.ParamByName('IDForm').Value:=QAddedFormsLetterFormsID.AsInteger;
    QDelForms.ExecSQL;
    QAddedForms.Close;
    QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
    QAddedForms.Open;
    ShowCount;
    ShowMsgString('������ �� ������ ����� ��');
  end;
end;

function TFinnerLetter.CheckFormExist: Boolean;
var
  i : integer ;
begin
//Add Sanaye 950923
//�� �Ԙ� ��� ��� ����� ��� �� ����
  Result:=False;

  if not QAddedForms.IsEmpty then
  begin
    if xpPageControl2.PageCount > 0 then
    begin
      for i := 0 to xpPageControl2.PageCount-1 do
        if xpPageControl2.Pages[i].Tag = QAddedFormsLetterFormsID.AsInteger then
        begin
          ShowMessage('��� "' +xpPageControl2.Pages[i].Caption+ '" ��� ��� ');
          Abort;
        end;
    end;

    if (QAddedFormsFormID.AsInteger>0) and (QAddedFormsLetterID.AsInteger=Select_LetterLetterID.AsInteger) then
      Result:=True;
  end;
//end Sanaye
end;

procedure TFinnerLetter.DontShow_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=False;
end;

function TFinnerLetter.LetterHasForms: Boolean;
begin
  Result:=False;
  QHasForms.Close;
  QHasForms.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
  QHasForms.Open;
  if not QHasForms.IsEmpty then
    Result:=True;
end;

procedure TFinnerLetter.Show_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=True;
end;

procedure TFinnerLetter.ShowCount;
begin
  lblCount.Caption:=' ����� ' +IntToStr(YDBGrid1.DataSource.DataSet.RecordCount)+' ���� ���� �� ';
end;

procedure TFinnerLetter.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFinnerLetter.N7Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
    Exit;
  end;
  Show_xpFormsTab;
  QAddedForms.Close;
  QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
  QAddedForms.Open;
  ShowCount;
  xpForms.Show;
end;

procedure TFinnerLetter.N8Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
     ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
     Exit;
   end;
   DontShow_xpFormsTab;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.LetterID:=Select_LetterLetterID.AsInteger;
   FrInputUserTable.showmodal;
   try
     Select_Letter.Requery;
   except
   end;
end;

procedure TFinnerLetter.DSFormDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not Select_Letter.IsEmpty then
  begin
    if LetterHasForms then
    begin
      lblHasForms.Font.Color:=clGreen;
      lblHasForms.Caption:='��� ���� ����� ��� ����� ��� �� ����';
    end
    else
    begin
      lblHasForms.Font.Color:=clMaroon;
      lblHasForms.Caption:='��� ���� ����� ��� ����� ��� ��� ����';
    end;
  end;
end;

procedure TFinnerLetter.xpPageControl1Change(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
    Select_Letter.Requery;
    //Select_Letter.Refresh;
end;

procedure TFinnerLetter.SpeedButton2Click(Sender: TObject);
var
  dld : string;
begin
  inherited;
  dld := edDeadLineDate.Text;
  if not IsValidDate(dld) then
    dld := '';

  if dld='' then
    edDeadLineDate.Text:=_Today;

  edDeadLineDate.Text:=ShamsiIncDate(edDeadLineDate.Text,0,0,1);
end;

procedure TFinnerLetter.SpeedButton4Click(Sender: TObject);
var
  dld : string;
begin
  inherited;
  dld := edDeadLineDate.Text;
  if not IsValidDate(dld) then
    dld := '';

  if dld='' then
    edDeadLineDate.Text:=_Today;

  edDeadLineDate.Text:=ShamsiIncDate(edDeadLineDate.Text,0,0,-1);
end;

procedure TFinnerLetter.QAddedFormsAfterScroll(DataSet: TDataSet);
begin
  qry_AccessDelete.Close;
  qry_AccessDelete.Parameters.ParamByName('userid').Value := _UserID;
  qry_AccessDelete.Parameters.ParamByName('tableid').Value := QAddedFormstableID.AsInteger;
  qry_AccessDelete.Active := True;

  xpBitBtn5.Enabled := qry_AccessDeleteHasDelete.AsBoolean;
end;

procedure TFinnerLetter.N3Click(Sender: TObject);
begin
  inherited;
  with DSForm.DataSet do
  begin
    if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    begin
      ShowMsg(67);
      exit;
    end;

    ReCommite:=TReCommite.Create(Application);

    with ReCommite do
    begin
      LetterID := select_LetterLetterID.AsInteger;
      IsFromReceivedLetters := true; // Amin 1391/12/02
      ShowModal;
    end;
  end;
  Exec_insert_UserLog(Self.Tag,'Arecommite',select_LetterLetterID.AsInteger);

end;

end.
