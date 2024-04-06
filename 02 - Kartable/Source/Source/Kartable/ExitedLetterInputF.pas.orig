unit ExitedLetterInputF;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages, xpBitBtn, Menus,Variants, Spin;

type
  TSentLetterInputForm = class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetDelete: TDataSetDelete;
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
    Select_LetterRegistrationTime: TStringField;
    Select_LetterFollowLetterNo: TWideStringField;
    Select_LetterToStaffer: TWideStringField;
    Select_LetterSentLetterID: TIntegerField;
    Select_LetterTemplateID: TIntegerField;
    Select_LetterHeaderID: TIntegerField;
    Select_LettersenderTitle: TWideStringField;
    Select_LetterUserTitle: TWideStringField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterSecCode: TStringField;
    Select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    Panel: TPanel;
    Apicture: TBitBtn;
    AExpotToWord: TBitBtn;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    DBEdit4: TDBEdit;
    MainPanel: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton2: TBitBtn;
    Label8: TLabel;
    Label10: TLabel;
    Image1: TImage;
    SpeedButton7: TBitBtn;
    SpeedButton1: TBitBtn;
    FromResponsibleStafferTitle: TDBEdit;
    DBEditToStaffer: TDBEdit;
    DBERetroactionNo: TDBEdit;
    DBEFollowLetterNo: TDBEdit;
    DBLkCBFormOrgTitle: TDBLookupComboBox;
    ToOrgTitleEdit: TEdit;
    Properties: TYCheckGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    SpeedButton6: TBitBtn;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLkCBSignerID: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    attachs: TYCheckGroupBox;
    Label15: TLabel;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    UserMemo: TYCheckGroupBox;
    Label11: TLabel;
    DBEUserMemo: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo2: TDBMemo;
    ActionToolBar1: TActionToolBar;
    Select_LetterUserTableTitle: TStringField;
    Label5: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Select_LetterUserTableID: TIntegerField;
    xpBitBtn1: TBitBtn;
    AaddLetterData: TBitBtn;
    SpeedButton8: TBitBtn;
    Label16: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    SpeedButton10: TBitBtn;
    Select_LetterUserTableID2: TIntegerField;
    Select_LetterUserTableTitle2: TStringField;
    SpeedButton12: TBitBtn;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Select_LetterIndicatorInnerNo: TWideStringField;
    QrUserSign: TADOQuery;
    QrUserSignUserID: TIntegerField;
    QrUserSignUserSign: TBlobField;
    Label14: TLabel;
    Select_LetterRegistrationDate: TStringField;
    Select_LetterSubjectTitle: TStringField;
    Label13: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Select_LetterSubjectID: TIntegerField;
    DBGToORG: TYDBGrid;
    Select_Letterfromstaffer: TWideStringField;
    SBDelDefualtSSigner: TSpeedButton;
    SBOther: TBitBtn;
    PopMnuOther: TPopupMenu;
    N3: TMenuItem;
    N1: TMenuItem;
    ChBoFollowRetroaction: TCheckBox;
    SBFollowLetterNo: TSpeedButton;
    Label18: TLabel;
    SBRetroactionNo: TSpeedButton;
    Label19: TLabel;
    N2: TMenuItem;
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
    PopupMenu2: TPopupMenu;
    N7: TMenuItem;
    BitBtn2: TBitBtn;
    xpForms: TxpTabSheet;
    Panel2: TPanel;
    Label26: TLabel;
    lblCount: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn5: TBitBtn;
    btnShowForm: TBitBtn;
    xpPageControl2: TxpPageControl;
    N4: TMenuItem;
    GroupBox5: TGroupBox;
    lblHasForms: TLabel;
    FollowLetterYear: TSpinEdit;
    RetroactionYear: TSpinEdit;
    Select_LetterRetroactionYear: TIntegerField;
    Select_LetterFollowLetterYear: TIntegerField;
    btnFollowRetroactionLetter: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    function GetLetter(LetterID:integer):boolean;
    procedure DBLkCBFormOrgTitleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
    procedure SetDefualt;
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure UpdateDblookup(all : boolean);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure DataSetEditExecute(Sender: TObject);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToOrgTitleEditChange(Sender: TObject);
    procedure ToOrgTitleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGToORGCellClick(Column: TColumn);
    Procedure GetID(IsFrom:boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBERetroactionNoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure ApictureClick(Sender: TObject);
    procedure AExpotToWordClick(Sender: TObject);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure formData2Show(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ToOrgTitleEditKeyPress(Sender: TObject; var Key: Char);
    procedure SBDelDefualtSSignerClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SBOtherClick(Sender: TObject);
    procedure DBEFollowLetterNoKeyPress(Sender: TObject; var Key: Char);
    procedure DBERetroactionNoKeyPress(Sender: TObject; var Key: Char);
    procedure SBFollowLetterNoClick(Sender: TObject);
    procedure SBRetroactionNoClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnShowFormClick(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure xpPageControl1Change(Sender: TObject);
    procedure FollowLetterYearChange(Sender: TObject);
    procedure RetroactionYearChange(Sender: TObject);
    procedure btnFollowRetroactionLetterClick(Sender: TObject);
  private
    procedure SetReadOnly(aEnable:Boolean);
    procedure DontShow_xpFormsTab;
    procedure Show_xpFormsTab;
    procedure ShowCount;
    function LetterHasForms:Boolean;
    function CheckFormExist:Boolean;     
  public
    IsAnswer : Boolean;
    LetterFormat : Byte;
    SecID : Integer;
    ReadOnly : Boolean;
    LetterDataID : integer;
  end;

var
   SentLetterInputForm: TSentLetterInputForm;

implementation

Uses YShamsiDate,FromOrgU,QuickSearch,UMain,Dmu,URetroExist,
     ExportToWord, ReCommiteU, ExactCopy, businessLayer, Math,
     UUserTable_Input, UBrowsArchive, {ScanImageU, ScanImageU1,} UaddLetterData,
     USearchTitle, ScanImageFm, UInputUserTable, untFollowRetroactionLetter;

{$R *.dfm}

procedure TSentLetterInputForm.GetID(IsFrom:boolean);
begin
   inherited;
   
   if  (select_Letter.State in [dsinsert,dsedit]) then
   begin
      FromOrgForm:=TFromOrgForm.Create(Application);
      FromOrgForm.ShowModal;
      if FromOrgForm.done then
         if ISFrom then
         begin
            DSForm.DataSet.FieldByName('FromOrgID').AsInteger:=_ResultOrgID;
            ToOrgTitleEdit.SetFocus;
         end
            else
            begin
               DSForm.DataSet.FieldByName('ToOrgID').AsInteger:=_ResultOrgID;
               ToOrgTitleEdit.Text:=_ResultOrgTitle;
               DSForm.DataSet.FieldByName('Tostaffer').AsString:=_ResultOrgRespon;
               DBEFollowLetterNo.SetFocus;
            end;
   end;
end;


function TSentLetterInputForm.GetLetter(LetterID:integer):boolean;
begin
   inherited;
   with select_Letter do
   begin
      close;
      Parameters.ParamByName('@LetterID').Value:=LetterID;
      open;

      Result:=RecordCount<>0;
      if Recordcount>0 then
         LetterFormat:=select_Letterletterformat.AsInteger;
   end;
end;


procedure TSentLetterInputForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   SetUserSetting('ShowLetterPropertyPanel',properties.YCheckBox.Checked);
   SetUserSetting('ShowLetterAttachPanel',attachs.YCheckBox.Checked);
   SetUserSetting('ShowLetterUserMemoPanel',UserMemo.YCheckBox.Checked);
   if (select_Letter.State in [dsinsert,dsedit]) and ( DataSetEdit.Visible) then
      if messageShow(27,true) then
         DataSetPost.Execute
      else
         DataSetCancel.Execute;
end;

procedure TSentLetterInputForm.FormActivate(Sender: TObject);
var
   Temp:TWinControl;
begin
   inherited;
   with Dm do
   begin
      Temp := ActiveControl;
      with Properties.YCheckBox do
      begin
         Checked:=GetUserSetting('ShowLetterPropertyPanel');
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
         Checked:=not Checked;Checked:=not Checked;
      end;
      ActiveControl:=temp;
      UpdateDblookup(False);
   end;
end;

procedure TSentLetterInputForm.SpeedButton7Click(Sender: TObject);
begin
   inherited;
   GetID( true);
end;

procedure TSentLetterInputForm.DBLkCBFormOrgTitleKeyDown(Sender: TObject;
var
   Key: Word; Shift: TShiftState);
begin
   inherited;
   if (select_Letter.State in [dsinsert,dsedit]) then
      if key=32 then
         if MainForm.GetSearch then
            DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;

procedure TSentLetterInputForm.Action11Execute(Sender: TObject);
begin
   inherited;
   close;
end;

procedure TSentLetterInputForm.UpdateDblookup(all: boolean);
begin
   inherited;
   if not ((DSForm.DataSet.State=dsinsert) and IsAnswer) then
   begin
       ToOrgTitleEdit.OnChange:=nil;
       ToOrgTitleEdit.Text:=DSForm.DataSet.FieldByName('SenderTitle').AsString;
       ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
   end;

   if all then
      DSForm.DataSet.FieldByName('Tostaffer').AsString := Dm.ToorganizationsResponsibleStaffer.AsString;
end;

procedure TSentLetterInputForm.AEnterExecute(Sender: TObject);
begin
   inherited;
   if (select_Letter.State in [dsinsert,dsedit]) then
      if DBGToORG.Focused then
      begin
         ToOrgTitleEdit.SetFocus;
         ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
         DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
         DBGToORG.Hide;
         DBEditToStaffer.SetFocus;
      end
         else
            SelectNext(ActiveControl,true,true);
end;

procedure TSentLetterInputForm.SetDefualt;
begin
   inherited;
   with Dm,DSForm.DataSet do
   begin
      FieldByName('RegistrationDate').Value := _Today;
      FieldByName('RegistrationTime').Value := Exec_get_NowTime;
      FieldByName('ClassificationID').value := DefaultSClassificationID;
      FieldByName('UrgencyID').value        := DefaultSUrgencyID    ;
      FieldByName('NumberOfPage').value     := DefaultSNumberOfPage ;
      FieldByName('receiveTypeID').value    := DefaultSReceiveTypeID;
      FieldByName('SignerID').AsInteger := _UserFromOrgID; //«ﬁœ«„ ﬂ‰‰œÂ ‰«„Â
   end;
end;

procedure TSentLetterInputForm.DataSetInsertExecute(Sender: TObject);
begin
   inherited;
   if (Select_Letter.State in [dsInsert,dsEdit]) then
   begin
      ShowMsg(63);
      Exit;
   end;
   
   try
      DBLkCBFormOrgTitle.SetFocus;
   except
   end;

   With Dm,DSForm.DataSet do
   begin
      Insert;
      FieldByName('IndicatorID').Value      := Exec_get_LastIndicatorID(2,LetterFormat,CurrentmYear,SecID);
      FieldByName('FromOrgID').AsInteger    := DefaultSFromOrgId;
      FieldByName('MYear').AsInteger        := CurrentMYear;
      FieldByName('LetterFormat').AsInteger := LetterFormat;
      FieldByName('Secretariatid').AsInteger := SecID;
      FieldByName('Userid').AsInteger := _UserID;
      FieldByName('Letter_Type').AsInteger := 2;
      FieldByName('Signerid').AsInteger:=_UserFromOrgID; //«ﬁœ«„ ﬂ‰‰œÂ ‰«„Â

      If LetterFormat = 2 then
         FieldByName('Finalized').AsBoolean := False;

      ToOrgTitleEdit.Text := '' ;
      SetDefualt;

      // Amin 1391/12/05 Start
      FollowLetterYear.Value := _Year;
      RetroactionYear.Value := _Year;
      // Amin 1391/12/05 End
   end;
end;

procedure TSentLetterInputForm.DataSetPostExecute(Sender: TObject);
var IsInsert: boolean;
begin
   inherited;
   IsInsert := False;

   {Ranjbar 89.11.02 ID=278} //œ— Õ«·  ÊÌ—«Ì‘ «„ﬂ«‰  €ÌÌ— ›—” ‰œÂ ÊÃÊœ ‰œ«—œ
//   if Select_Letter.State = dsEdit then
//      if Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue then
//      begin
//         ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì Å” «“ «Ê·Ì‰ –ŒÌ—Â ° œÌê— «„ﬂ«‰  €ÌÌ— ›Ì·œ "›—” ‰œÂ" ÊÃÊœ ‰œ«—œ'+ #13#13
//                        + '·ÿ›« ÃÂ  «—Ã«⁄ «Ì‰ ‰«„Â «“ œﬂ„Â «—Ã«⁄ «” ›«œÂ ﬂ—œÂ Ê „ﬁœ«— «Ì‰ ›Ì·œ —« «’·«Õ ‰„«ÌÌœ'
//                        ,[mbOK],mtInformation);
//         DBLkCBFormOrgTitle.SetFocus;
//         Abort;
//      end;

   if not DBEdit23.IsValidDate  then
   begin
      DBEdit23.SetFocus;
      ShowMessage('·ÿ›«  «—ÌŒ À»  ‰«„Â —« «’·«Õ ò‰Ìœ');
      Abort;
   end;

   with DSForm.DataSet do
   begin
      if State = dsInsert  then
      begin
          FieldByName('IndicatorID').Value := Exec_get_LastIndicatorID(2,LetterFormat,dm.CurrentmYear,SecID);
          IsInsert := True;
      end;
      FieldByName('ToOrgID').AsInteger  := Dm.NewToOrganization(ToOrgTitleEdit.text,FieldByName('ToStaffer').asString);
      Select_LetterFromStaffer.AsString := Dm.FromOrganizationsResponsibleStaffer.AsString;
      Post;
      if IsInsert then
         MakeRecommite(LetterFormat,2,FieldByName('LetterID').Value,_UserFromOrgID);

      //œ— ’Ê— ÌﬂÂ ‰«„Â »—«Ì ÃÊ«» »«‘œ  - œﬂ„Â ÃÊ«» œ— ›—„ «’·Ì   
      if IsAnswer then
      begin
         Exec_AnswerLetter(Select_LetterLetterID.AsInteger,Dm.Sp_InboxLetterID.AsInteger,_Today);
         Exec_AnswerNote(_SelectedRecommiteID);
      end;
      GetLetter(FieldByName('LetterID').Value);
   end;
end;

procedure TSentLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
var
   s:string;
begin
   inherited;
   TEditExit(sender);

   if not DBGToORG.Focused then
      DBGToORG.Hide;

   s:=YeganehTrim(ToOrgTitleEdit.Text);

   if (select_Letter.State in [dsinsert,dsedit]) then
      if is_integer(ToOrgTitleEdit.Text) then
         with dm,Toorganizations do
         begin
            Close;
            CommandText:='Select *,cast(0 as bit) as isSecretariat from Fromorganizations '+
                         ' where code='''+s+'''';
            open;
            if recordcount=0 then
               ShowMsg(64)
            else
               begin
                  select_LetterToorgid.AsInteger:=ToorganizationsID.AsInteger;
                  ToOrgTitleEdit.OnChange:=nil;
                  ToOrgTitleEdit.Text:=ToorganizationsTitle.AsString;
                  ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
                  select_LetterTostaffer.AsString:= ToorganizationsResponsibleStaffer.AsString;
                  DBEFollowLetterNo.SetFocus;
               end;
         end;
end;

procedure TSentLetterInputForm.DataSetCancelExecute(Sender: TObject);
begin
   inherited;
   DSForm.DataSet.Cancel;
   UpdateDblookup(False);
end;

procedure TSentLetterInputForm.DataSetDeleteExecute(Sender: TObject);
begin
   inherited;
   if select_Letterletterformat.AsInteger=2 then
      if messageShow(38,True) then
      begin
         Exec_delete_Letter(select_LetterLetterID.AsInteger,Exec_get_LastIndicatorID(2,3,dm.CurrentmYear,SecID));
         GetLetter(0);
         UpdateDblookup(False);
      end;
end;

procedure TSentLetterInputForm.DataSetEditExecute(Sender: TObject);
begin
   inherited;
   DSForm.DataSet.Edit;
   UpdateDblookup(False);
end;

procedure TSentLetterInputForm.DBGToORGKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
   inherited;
   if Key = 32 then
      GetID(False);
end;

procedure TSentLetterInputForm.ToOrgTitleEditChange(Sender: TObject);
{Var
   S,T:string;}
begin
   inherited;
   {Ranjbar 89.08.04 ID=166}
   {if not(select_Letter.State in [dsinsert,dsedit]) then
      Exit;

   S := YeganehTrim(ToOrgTitleEdit.Text);
   if Is_Integer(s) then
      T := 'Code'
   else
      T := 'Title';

   with Dm.Toorganizations do
      if Length(S) >= 2  then
      begin
         Close;
         CommandText := 'Select * from fromorganizations Where ' + T + ' like ''' + S + '%''';
         DBGToORG.Show;
         Open;
      end; }
   //---   
end;

procedure TSentLetterInputForm.ToOrgTitleEditKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
   inherited;
   if  (select_Letter.State in [dsinsert,dsedit]) then
      if (key=vk_down) or (key=vk_up) then
      begin
         if ssalt in shift then
            DBGToORG.Visible:=not DBGToORG.Visible
         else
            DBGToORG.SetFocus;
      end;
end;

procedure TSentLetterInputForm.DBGToORGCellClick(Column: TColumn);
begin
   inherited;
   if (select_Letter.State in [dsinsert,dsedit]) then
   begin
      ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
      DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
      DBGToORG.Hide;
      DBEditToStaffer.SetFocus;
   end;
end;

procedure TSentLetterInputForm.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   ToOrgTitleEdit.OnChange:=nil;
   GetID(false);
   ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
end;

procedure TSentLetterInputForm.DBMemo2Enter(Sender: TObject);
begin
   inherited;
   if (select_Letter.State in [dsinsert,dsedit]) then
      try
         if TDBMemo(sender).Text='' then
            DSForm.DataSet.FieldByName('Memo').AsString:=dm.GetMemoFollow(false,DSForm.DataSet.FieldByName('FollowLetterNo').AsString,DSForm.DataSet.FieldByName('RetroactionNo').AsString);
      except
      end;
   TDBMemo(Sender).SelectAll;
   TEditEnter(Sender);
   AEnter.Enabled:=false;
end;

procedure TSentLetterInputForm.DBEdit9Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);
if trim(TDBEdit(sender).Text)='' then
  begin
               ShowMsg(65);
    TDBEdit(sender).SetFocus;
  end;

end;

procedure TSentLetterInputForm.DBMemo2Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);
AEnter.Enabled:=true;

end;

procedure TSentLetterInputForm.DBERetroactionNoExit(Sender: TObject);
var sameAnswerLetterID:integer;
begin
  inherited;
if DSForm.DataSet.State=dsInsert then
if trim(TDBEdit(Sender).Text)<>'' then
 begin
   sameAnswerLetterID:=Exec_get_LetterID_ByRetroActionNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
   if (sameAnswerLetterID<>0) and (sameAnswerLetterID<>select_LetterLetterID.AsInteger) then
     begin
      RetroExist:=TRetroExist.Create(Application);
      RetroExist.LetterID:=sameAnswerLetterID;
      RetroExist.ShowModal;
     end;

end;
end;

procedure TSentLetterInputForm.FormCreate(Sender: TObject);
Var i : Word;
begin
   inherited;
  xpPageControl1.ActivePageIndex:=0;
  DontShow_xpFormsTab;
   Readonly := False;
   for i:=0 to ComponentCount-1 do
      if Components[i].InheritsFrom(TBitBtn) then
         TBitBtn(Components[i]).Visible := Dm.GetActionAccess(TBitBtn(Components[i]).Name,MainForm.Tag);
   LetterFormat := 1;
   UserMemo.Caption := '   ' + Dm.UserMemoDisplay + '   ';
   Label11.Caption := Dm.UserMemoDisplay;
end;

procedure TSentLetterInputForm.FormShow(Sender: TObject);
begin
   inherited;
   //»—«Ì ÅÌ‘ ‰ÊÌ”
   ActionToolBar1.Visible := LetterFormat > 1; //1:‰«„Â „⁄„Ê·Ì
   if LetterFormat = 2 then //2:‰«„Â ÅÌ‘ ‰ÊÌ”
      Caption := Caption + ' ÅÌ‘ ‰ÊÌ” ';
   Properties.Show;

   if LetterDataID>0 then
   begin
      if Select_Letter.State in [dsEdit,dsInsert] then
      begin
         ShowMsg(67);
         Exit;
      end;
      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID := Select_LetterLetterID.AsInteger;
      FraddLetterData.ReadOnly := Readonly;
      FraddLetterData.Letter_Or_Erja:='Letter';
      FraddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
      FraddLetterData.RecommitID:=0;
      FraddLetterData.LetterDataID := LetterDataID;
      FraddLetterData.ShowModal;
   end;
   DBEUserMemo.Hint := DBEUserMemo.Text;   
end;

procedure TSentLetterInputForm.SpeedButton6Click(Sender: TObject);
begin
   inherited;
   if DataSetEdit.Enabled then
      Exit;
   FromOrgForm := TFromOrgForm.Create(Application);
   FromOrgForm.ShowModal;
   if FromOrgForm.Done then
      DSForm.DataSet.FieldByName('SignerID').AsInteger := _ResultOrgID;
end;
procedure TSentLetterInputForm.DBGToORGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
   inherited;
   if Dm.ToorganizationsIsInnerOrg.AsBoolean then
      Color := $00FFE6FF
   else
      Color := $00FFD3A8;
end;

procedure TSentLetterInputForm.SetReadOnly(aEnable:Boolean);
begin
   inherited;
   DataSetInsert.Enabled := aEnable;
   DataSetDelete.Enabled := aEnable;
   DataSetEdit.Enabled := aEnable;
   DataSetPost.Enabled := aEnable;
   DataSetCancel.Enabled := aEnable;
end;

procedure TSentLetterInputForm.ApictureClick(Sender: TObject);
Var Extiontion : Byte;
begin
   inherited;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      Exit;
   end;

   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := Select_LetterLetterID.AsInteger;
   FmScanImage.RReadOnly := dm.Sp_inboxIsCopy.AsBoolean;
   FmScanImage.ShowModal;
end;


procedure TSentLetterInputForm.AExpotToWordClick(Sender: TObject);
begin
   inherited;
   (*if Readonly then
   begin
      {Ranjbar 89.11.02 ID=291}
      ShowMyMessage('ÅÌ€«„','«Ì‰ ‰«„Â ›ﬁÿ ŒÊ«‰œ‰Ì »ÊœÂ Ê €Ì— ﬁ«»·  €ÌÌ— „Ì »«‘œ',[mbOK],mtInformation);
      //---
      Exit;
   end;*)
    if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;  
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      Exit;
   end;

   if _Word_Is_Opened then
      if Application_Is_Run('winword.exe') then
      begin
         MessageShow(86,False);
         Exit;
      end;

   {Ranjbar 89.11.02 ID=291}
   //if not Dm.ExecGet_LetterWordFile(Select_LetterLetterID.AsInteger,Dm.Sp_InboxIsCopy.AsBoolean,True) then
   if not Dm.ExecGet_LetterWordFile(Select_LetterLetterID.AsInteger,ReadOnly,True) then  //«ê— ›«Ì· Ê—œ ÊÃÊœ ‰œ«‘ 
   //---
    begin
       {Ranjbar 89.11.02 ID=291}
       //if Dm.Sp_inboxIsCopy.AsBoolean then
       if (Select_LetterLetterID.AsInteger = Dm.Sp_InboxLetterID.AsInteger)And(ReadOnly) then
       //---
          Exit;
       FExportToWord := TFExportToWord.Create(Application);
       with FExportToWord do
       begin
          LetterID := Select_LetterLetterID.AsInteger;
          LetterFormat := Select_Letterletterformat.AsInteger;
          if not Dm.UseTemplate then
          begin
             FExportToWord.FormShow(FExportToWord);
             OpenFileClick(OpenFile);
          end
             else
                ShowModal;
       end;
    end;
end;

procedure TSentLetterInputForm.Select_LetterBeforePost(DataSet: TDataSet);
begin
   inherited;
   Select_LetterLastUpdate.Value := Now;

   if IsAnswer then
   begin
     Qry_SetResult('Update Recommites Set Erja_Or_Answer_Date='''+_Today+''' Where RecommiteID = ' + IntToStr(_SelectedRecommiteID)+' and Erja_Or_Answer_Date is null',dm.YeganehConnection);
   end;
end;

procedure TSentLetterInputForm.FormDataShow(Sender: TObject);
begin
   inherited;

   FrUserTable_Input := TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID := Select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder := 1;
//   FrUserTable_Input.ShowInPanel(FormData);
end;

procedure TSentLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   if Trim(Select_LetterUserMemo.Text) = '' then
   begin
      MBaseForm.MessageShowString(' ÂÌç „ﬁœ«—Ì œ— ﬁ”„  ' + Label11.Caption +' Ì«›  ‰‘œ  ', False);
      Exit;
   end;

   FrBrowsArchive := TFrBrowsArchive.Create(Application);
   FrBrowsArchive.UserMemo.Text := Select_LetterUserMemo.Text;
   FrBrowsArchive.RefreshQuery;
   FrBrowsArchive.ShowModal;
end;

procedure TSentLetterInputForm.AaddLetterDataClick(Sender: TObject);
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
   FraddLetterData.ReadOnly := Readonly;
   FraddLetterData.Letter_Or_Erja:='Letter';
   FraddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
   FraddLetterData.RecommitID:=0;
   FraddLetterData.ShowModal;
end;

procedure TSentLetterInputForm.SpeedButton8Click(Sender: TObject);
Var i:integer;
begin
   inherited;
   if not Select_LetterUserTableID.IsNull then
   begin
      MessageShowString(' ﬁ»·« »Â «Ì‰ ‰«„Â ›—„ ÅÌÊ”  ‘œÂ «”  ',False);
      Exit;
   end;

   I := Dm.GetUserTableID;
   if I > 0 then
      With Select_Letter do
      Begin
         Edit;
         Select_LetterUserTableID.AsInteger := I;
         Post;
      end;
end;

procedure TSentLetterInputForm.formData2Show(Sender: TObject);
begin
   inherited;
   FrUserTable_Input := TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID := Select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder := 2;
//   FrUserTable_Input.ShowInPanel(FormData2);
end;

procedure TSentLetterInputForm.SpeedButton10Click(Sender: TObject);
var i : integer;
begin
   inherited;
   if not select_LetterUserTableID2.IsNull then
   begin
      MessageShowString(' ﬁ»·« »Â «Ì‰ ‰«„Â ›—„ ÅÌÊ”  ‘œÂ «”  ',false);
      Exit;
   end;

   i := Dm.GetUserTableID;
   if i > 0 then
      with select_Letter do
      Begin
         Edit;
         Select_LetterUserTableID2.AsInteger:=i;
         Post;
      end;
end;

procedure TSentLetterInputForm.SpeedButton12Click(Sender: TObject);
begin
   inherited;

   if DataSetPost.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;
   ExactCopyF := TExactCopyF.Create(Application);
   ExactCopyF.LetterID := select_LetterLetterID.AsInteger;
   ExactCopyF.TypeId := 2;
   ExactCopyF.Caption := 'œÌê— êÌ—‰œê«‰';
   if LetterFormat = 2 then
      ExactCopyF.Finallized := False;
   ExactCopyF.ShowModal;
end;

procedure TSentLetterInputForm.ToOrgTitleEditKeyPress(Sender: TObject;var Key: Char);
Var
   S,T:string;
begin
   inherited;
   {Ranjbar 89.08.04 ID=166}
   if not(select_Letter.State in [dsinsert,dsedit]) then
      Exit;

   S := YeganehTrim(ToOrgTitleEdit.Text);
   if Is_Integer(s) then
      T := 'Code'
   else
      T := 'Title';

   with Dm.Toorganizations do
      if Length(S) >= 2  then
      begin
         Close;
         CommandText := 'Select * from fromorganizations Where ' + T + ' like ''' + S + '%''';
         DBGToORG.Show;
         Open;
      end;
   //---   
end;

procedure TSentLetterInputForm.SBDelDefualtSSignerClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.17 ID=243}
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      DBLkCBSignerID.KeyValue := Null;
      //DBEdit3.Clear;
   end;
   //---
end;

procedure TSentLetterInputForm.N3Click(Sender: TObject);
begin
   inherited;
   if not Dm.GetActionAccess('SendToSecretariat',MainForm.Tag) then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ‘„« »Â «Ì‰ ﬁ”„  œ” —”Ì ‰œ«—Ìœ',[mbOK],mtInformation);
      Exit;
   end;

   {Ranjbar 89.10.29 ID=269}
   if MessageShow(46,true) then
   begin
       // ⁄ÌÌ‰ „Ì ﬂ‰œ ﬂÂ ‰«„Â ÅÌ‘ ‰ÊÌ” ‰Â«ÌÌ ‘œÂ «”  Ê »Â œ»Ì—Œ«‰Â «—”«· „Ì ê—œœ
       Exec_update_Letter_Finalized(Select_LetterLetterID.AsInteger,True,False);
       ShowMyMessage('ÅÌ€«„','«—”«· ‘œ',[mbOK],mtInformation);
   end;
   //---
end;

procedure TSentLetterInputForm.N1Click(Sender: TObject);
begin
   inherited;
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      ShowMsg(67);
      exit;
   end;
   ReCommite := TReCommite.Create(Application);
   with ReCommite do
   begin
      LetterID := select_LetterLetterID.AsInteger;
      ShowModal;
   end;
end;

procedure TSentLetterInputForm.SBOtherClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,Sender,PopMnuOther);
end;

procedure TSentLetterInputForm.DBEFollowLetterNoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   {Ranjbar 89.11.10 ID=289}
   if not ChBoFollowRetroaction.Checked then
      DBEFollowLetterNo.Text := Keyboard_TypeWithDivider(DBEFollowLetterNo.Text,Key);
   //---
end;

procedure TSentLetterInputForm.DBERetroactionNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   {Ranjbar 89.11.10 ID=289}
   if not ChBoFollowRetroaction.Checked then
      DBERetroactionNo.Text := Keyboard_TypeWithDivider(DBERetroactionNo.Text,Key);
   //---
end;

procedure TSentLetterInputForm.SBFollowLetterNoClick(Sender: TObject);
Var LetterID : Integer;
    rr : Boolean;
    mYear : integer; // Amin 1391/12/05
begin
   inherited;
   {Ranjbar 89.11.12 ID=288}
   //if DataSetPost.Enabled then
   if Select_Letter.State in [dsEdit,dsInsert] then
   //---
   begin
      ShowMsg(67);
      Exit;
   end;

   if FollowLetterYear.Value = 0 then
      mYear := _Year
   else
      mYear := FollowLetterYear.Value; // Amin 1391/12/05
   //»œ”  ¬Ê—œ‰ ÅÌ—Ê Ê ⁄ÿ› ‰«„Â „Ê—œ ‰Ÿ—
   if Dm.GetFollowAndRetRoAction(True,(Select_LetterLetter_Type.AsInteger=1),Select_LetterFollowLetterNo.asstring, mYear,LetterID,rr) then // Amin 1391/12/05
   begin
      if RR then
         MainForm.ViewReceivedLetter(LetterID)
      else
         MainForm.ViewSentLetter(LetterID);
   end
      else
         ShowMsg(3);
end;

procedure TSentLetterInputForm.SBRetroactionNoClick(Sender: TObject);
var LetterID:integer;
    ISFolow , rr :Boolean;
    mYear : integer; // Amin 1391/12/05
begin
   inherited;
   {Ranjbar 89.11.12 ID=288}
   //if DataSetPost.Enabled then
   if Select_Letter.State in [dsEdit,dsInsert] then
   //---
   begin
      ShowMsg(67);
      Exit;
   end;

   if RetroactionYear.Value = 0 then mYear := _Year else mYear := RetroactionYear.Value; // Amin 1391/12/05
   ISFolow := False;
   if dm.GetFollowAndRetRoAction(ISFolow,(select_LetterLetter_Type.AsInteger=1),select_LetterRetroactionNo.asstring, mYear,LetterID,rr) then     // Amin 1391/12/05 Edited
   begin
      if  RR  then
         MainForm.ViewReceivedLetter(LetterID)
      else
         MainForm.ViewSentLetter(LetterID);
   end
      else
         ShowMsg(4);//ÅÌ€«„ : «Ì‰ ‰«„Â ⁄ÿ› ‰œ«—œ
end;

procedure TSentLetterInputForm.N2Click(Sender: TObject);
begin
  inherited;
   {Ranjbar 89.10.01 ID=208}
   {if not(Select_Letter.State in [dsinsert,dsedit]) then
   begin
      ShowMsg(67);
      Exit;
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
   ExactCopyF.Caption := '—Ê‰Ê‘ ';
   if LetterFormat = 2 then //ÅÌ‘ ‰ÊÌ”
      ExactCopyF.Finallized:=False;
   ExactCopyF.ShowModal;
end;

procedure TSentLetterInputForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

function TSentLetterInputForm.CheckFormExist: Boolean;
var i : integer;
begin
//Add Sanaye 950923
//Õ· „‘ò· ›—„ Â«Ì «÷«›Â ‘œÂ »Â ‰«„Â
  Result:=False;

  if not QAddedForms.IsEmpty then
  begin
    if xpPageControl2.PageCount > 0 then
    begin
      for i := 0 to xpPageControl2.PageCount-1 do
        if xpPageControl2.Pages[i].Tag = QAddedFormsLetterFormsID.AsInteger then
        begin
          ShowMessage('›—„ "' +xpPageControl2.Pages[i].Caption+ '" »«“ «”  ');
          Abort;
        end;
    end;

    if (QAddedFormsFormID.AsInteger>0) and (QAddedFormsLetterID.AsInteger=Select_LetterLetterID.AsInteger) then
      Result:=True;
  end;
//end Sanaye
end;

procedure TSentLetterInputForm.DontShow_xpFormsTab;
begin
   xpPageControl1.Pages[1].TabVisible:=False;
end;

function TSentLetterInputForm.LetterHasForms: Boolean;
begin
  Result:=False;
  QHasForms.Close;
  QHasForms.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
  QHasForms.Open;
  if not QHasForms.IsEmpty then Result:=True;
end;

procedure TSentLetterInputForm.Show_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=True;
end;

procedure TSentLetterInputForm.ShowCount;
begin
  lblCount.Caption:='  ⁄œ«œ ' +IntToStr(YDBGrid1.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TSentLetterInputForm.N7Click(Sender: TObject);
begin
  inherited;
  Show_xpFormsTab;
  QAddedForms.Close;
  QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
  QAddedForms.Open;
  ShowCount;
  xpForms.Show;
end;

procedure TSentLetterInputForm.btnShowFormClick(Sender: TObject);
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

procedure TSentLetterInputForm.xpBitBtn5Click(Sender: TObject);
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

procedure TSentLetterInputForm.N4Click(Sender: TObject);
begin
  inherited;
   DontShow_xpFormsTab;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.LetterID:=Select_LetterLetterID.AsInteger;
   FrInputUserTable.showmodal;
   Select_Letter.Refresh;
end;

procedure TSentLetterInputForm.DSFormDataChange(Sender: TObject;
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

procedure TSentLetterInputForm.xpPageControl1Change(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
       Select_Letter.Refresh;

end;

procedure TSentLetterInputForm.FollowLetterYearChange(Sender: TObject);
begin
  inherited;
   // Amin 1391/12/05 Start
   if Select_Letter.State in [dsInsert, dsEdit] then
      Select_LetterFollowLetterYear.Value := FollowLetterYear.Value;
   // Amin 1391/12/05 End
end;

procedure TSentLetterInputForm.RetroactionYearChange(Sender: TObject);
begin
  inherited; 
   // Amin 1391/12/05 Start
   if Select_Letter.State in [dsInsert, dsEdit] then
      Select_LetterRetroactionYear.Value := RetroactionYear.Value;
   // Amin 1391/12/05 End
end;

procedure TSentLetterInputForm.btnFollowRetroactionLetterClick(Sender: TObject);
begin
  inherited;
  //Add Sanaye 950306
  //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â
  if Select_Letter.State in [dsInsert , dsEdit] then
  begin
    ShowMessage('«» œ« «ÿ·«⁄«  —« –ŒÌ—Â ‰„«ÌÌœ ');
    Abort;
  end;

  frmFollowRetroactionLetter := TfrmFollowRetroactionLetter.Create(Application);
  frmFollowRetroactionLetter._FR_LetterID := Select_LetterLetterID.AsInteger;
  frmFollowRetroactionLetter.ShowModal;
  //End Sanaye...
end;

end.
