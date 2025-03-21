unit ExitedLetterInputF;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,ComObj,
  xpPages, xpBitBtn, Menus, wwriched,Variants, xmldom, XMLIntf, msxmldom,
  XMLDoc, IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME, jpeg, Spin, shellapi,
  oxmldom,WordXp, AppEvnts;

type
  TSentLetterInputForm = class(TMBaseForm)
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
    Select_LetterSendStatusID: TWordField;
    Select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    DBEIndicatorID: TDBEdit;
    DBERegistrationDate: TDBShamsiDateEdit;
    DBERegistrationTime: TDBEdit;
    DBEUserTitle: TDBEdit;
    MainPanel: TPanel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBEdit9: TEdit;
    FromResponsibleStafferTitle: TDBEdit;
    DBEditToStaffer: TDBEdit;
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
    EdtSignerCode: TEdit;
    DBEdit17: TDBEdit;
    attachs: TYCheckGroupBox;
    Label15: TLabel;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    UserMemo: TYCheckGroupBox;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo2: TDBMemo;
    Panel1: TPanel;
    AexpotToword: TBitBtn;
    AAddLetterdata: TBitBtn;
    ActionToolBar1: TActionToolBar;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterUserTableTitle: TStringField;
    Label14: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Select_LetterSubjectID: TIntegerField;
    Select_LetterSubjectTitle: TStringField;
    xpBitBtn1: TBitBtn;
    CenterSec: TYCheckGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Apicture: TBitBtn;
    Label11: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Select_LetterUserTableID2: TIntegerField;
    Select_LetterUserTableTitle2: TStringField;
    SpeedButton12: TBitBtn;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBEIndicatorInnerNo: TDBEdit;
    Label13: TLabel;
    Select_LetterIndicatorInnerNo: TWideStringField;
    SBOther: TBitBtn;
    SBSimpleEditor: TBitBtn;
    SpeedButton14: TBitBtn;
    QrEmailAttachFile: TADOQuery;
    QrEmailAttachFileLetterDataID: TAutoIncField;
    QrEmailAttachFileLetterID: TIntegerField;
    QrEmailAttachFilePageNumber: TWordField;
    QrEmailAttachFileImage: TBlobField;
    QrEmailAttachFileextention: TWordField;
    QrEmailAttachFileDescription: TWideStringField;
    QrEmailAttachFileLastUpdate: TDateTimeField;
    QrEmailAttachFileUniqueID: TLargeintField;
    QrEmailAttachFileExtentionName: TStringField;
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    DBEFollowLetterNo: TDBEdit;
    DBERetroactionNo: TDBEdit;
    Select_LetterFollowCode: TStringField;
    Label23: TLabel;
    DBEFollowCode: TDBEdit;
    DBGToORG: TYDBGrid;
    DBEChristRegDate: TDBEdit;
    Select_LetterChristRegDate: TStringField;
    Select_LetterChristIncomDate: TStringField;
    ChBoFollowRetroaction: TCheckBox;
    SBDelDefualtSSigner: TSpeedButton;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
    xpForms: TxpTabSheet;
    Panel2: TPanel;
    Label26: TLabel;
    lblCount: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    xpBitBtn5: TBitBtn;
    btnShowForm: TBitBtn;
    BitBtn2: TBitBtn;
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
    N6: TMenuItem;
    acConvertLetterToECE: TAction;
    acConvertLetterToECE1: TMenuItem;
    XMLDoc: TXMLDocument;
    QTemp_ECE: TADOQuery;
    QTemp_ECEOrgID: TIntegerField;
    QTemp_ECEOrgStaff: TWideStringField;
    QTemp_ECE2: TADOQuery;
    QTemp_ECE2peiro: TWideStringField;
    QTemp_ECE2atf: TWideStringField;
    QTemp_ECE3: TADOQuery;
    QTemp_ECE3IndicatorID: TIntegerField;
    QTemp_ECE3FromOrgID: TIntegerField;
    QTemp_ECE3Title: TWideStringField;
    QTemp_ECE3ResponsibleStaffer: TWideStringField;
    QTemp_ECE3RegistrationDate: TStringField;
    Get_LetterData_by_LetterID_ECE: TADOStoredProc;
    Get_LetterData_by_LetterID_ECEletterid: TIntegerField;
    Get_LetterData_by_LetterID_ECELetterDataID: TAutoIncField;
    Get_LetterData_by_LetterID_ECEExtention: TWordField;
    Get_LetterData_by_LetterID_ECEdescription: TWideStringField;
    QGetExtension: TADOQuery;
    QGetExtensionExtention: TStringField;
    IdEncoderMIME1: TIdEncoderMIME;
    QGetEmail: TADOQuery;
    QGetEmailEmail: TWideStringField;
    xpPageControl2: TxpPageControl;
    FollowLetterYear: TSpinEdit;
    RetroactionYear: TSpinEdit;
    Select_LetterRetroactionYear: TIntegerField;
    Select_LetterFollowLetterYear: TIntegerField;
    N9: TMenuItem;
    Select_LetterParentFollowLetter: TIntegerField;
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
    procedure UpdateDblookup(All : boolean);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
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
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure DBLkCBFormOrgTitleClick(Sender: TObject);
    procedure EdtSignerCodeExit(Sender: TObject);
    procedure AexpotTowordClick(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure AAddLetterdataClick(Sender: TObject);
    procedure DBGToORGNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure DBGToORGNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure ApictureClick(Sender: TObject);
    procedure FormData2Show(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SBOtherClick(Sender: TObject);
    procedure SBSimpleEditorClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBEFollowLetterNoKeyPress(Sender: TObject; var Key: Char);
    procedure Select_LetterCalcFields(DataSet: TDataSet);
    procedure DBERetroactionNoKeyPress(Sender: TObject; var Key: Char);
    procedure SBDelDefualtSSignerClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBLkCBSignerIDClick(Sender: TObject);
    procedure EdtSignerCodeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure btnShowFormClick(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpPageControl1Change(Sender: TObject);
    procedure acConvertLetterToECEExecute(Sender: TObject);
    procedure FollowLetterYearChange(Sender: TObject);
    procedure RetroactionYearChange(Sender: TObject);
    procedure UserMemoClick(Sender: TObject);
    procedure ASendFaxExecute(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure ConvertANSIFileToUTF8File(AInputFileName, AOutputFileName: TFileName);
    procedure btnFollowRetroactionLetterClick(Sender: TObject);
  private
    { Private declarations }
    prewNum : string;
    procedure DontShow_xpFormsTab;
    procedure Show_xpFormsTab;
    procedure ShowCount;
    function LetterHasForms:Boolean;
    function CheckFormExist:Boolean;
    function GetEmail:String;
  public
   IsAnswer:boolean;
   LetterFormat:Byte;
   LetterDataID: integer;
   FirstIndicatorID: integer;
   OldIndicatorId:String;
    { Public declarations }
  end;

var
  SentLetterInputForm: TSentLetterInputForm;

implementation

uses YShamsiDate, FromOrgU,  FixedTableF, QuickSearch, UMain,
     Dmu,  DuplicateNo, URetroExist,
     ExportToWord, ReCommiteU, ExactCopy, businessLayer, UaddLetterData,
     UUserTable_Input, UBrowsArchive{,ScanImageU1,ScanImageU},
     LetterRalationFm, ScanImageFm, UInputUserTable, StrUtils, mapimail,
  EmailsDM, untFollowRetroactionLetter;

{$R *.dfm}

procedure TSentLetterInputForm.GetID(IsFrom:boolean);
begin
  inherited;
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      FromOrgForm:=TFromOrgForm.Create(Application);
      if IsFrom then
       FromOrgForm.outerOrg.Checked:=false;
      FromOrgForm.OrganizeMode:=false;
      FromOrgForm.ShowModal;
      if FromOrgForm.done then
       if ISFrom then
        begin
         DSForm.DataSet.FieldByName('FromOrgID').AsInteger:=_ResultOrgID;
         select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
         dbedit9.Text:=dm.FromOrganizationsCode.AsString;
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


  if LetterFormat>1 then
   begin
     DataSetInsert.Visible:=true;
     DataSetEdit.Visible:=true;
     DataSetPost.Visible:=true;
     DataSetCancel.Visible:=true;

     DataSetInsert.Enabled:=true;
     DataSetEdit.Enabled:=true;
     DataSetPost.Enabled:=true;
     DataSetCancel.Enabled:=true;
   end;
 end;
end;


procedure TSentLetterInputForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;

   SetUserSetting('ShowLetterPropertyPanel',properties.YCheckBox.Checked);
   SetUserSetting('ShowLetterAttachPanel',attachs.YCheckBox.Checked);
   SetUserSetting('ShowLetterUserMemoPanel',UserMemo.YCheckBox.Checked);
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) and DataSetEdit.Visible and (select_Letter.LockType<>ltReadOnly )then
      if messageShow(27,true) then
         DataSetPost.Execute
      else
         DataSetCancel.Execute;
end;


procedure TSentLetterInputForm.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
   inherited;
   with dm do
    begin
     temp:=ActiveControl;

   with  Properties.YCheckBox do
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


   //Add Sanaye 940926
   // �� �Ԙ� ���� ����� ������� � ������ ����
   dm.FromOrganizations.Close;
   dm.FromOrganizations.Open;
   dm.FromOrganizations.Locate('id',Select_LetterFromOrgID.AsInteger,[]);
   dbEdit9.Text := dm.FromOrganizationsCode.AsString;
   //End Sanaye...
   
end;

procedure TSentLetterInputForm.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  GetID( true);

end;

procedure TSentLetterInputForm.DBLkCBFormOrgTitleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
 if key=32 then
    if MainForm.GetSearch then
    DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;



procedure TSentLetterInputForm.Action11Execute(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TSentLetterInputForm.UpdateDblookup(All: boolean);
begin
   inherited;
   if not ((DSForm.DataSet.State=dsinsert) and IsAnswer) then
   begin
       ToOrgTitleEdit.OnChange:=nil;
       ToOrgTitleEdit.Text:=DSForm.DataSet.FieldByName('SenderTitle').AsString;
       ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
   end;
   if All then
      DSForm.DataSet.FieldByName('Tostaffer').AsString:=
   Dm.ToorganizationsResponsibleStaffer.AsString;

   DBEdit9.Text := Dm.FromOrganizationsCode.AsString;
   {Ranjbar 89.09.17 ID=243}
   //DBEdit3.Text := Dm.SignersCode.AsString;
   //---
end;

procedure TSentLetterInputForm.AEnterExecute(Sender: TObject);
begin
  inherited;
if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  if DBGToORG.Focused then
   begin
    ToOrgTitleEdit.SetFocus;

    ToOrgTitleEdit.OnChange:=nil;
    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
   end else
      SelectNext(ActiveControl,true,true);

end;

procedure TSentLetterInputForm.SetDefualt;
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
         FieldByName('SignerID').AsInteger := DefualtSSigner;//���� ���� �� ��� ������� /���� �����/����� �����
   end;
   {Ranjbar 89.09.17 ID=243}
   if Dm.DefualtSSigner <> 0 then
      EdtSignerCode.Text := Dm.SignersCode.AsString
   else
      EdtSignerCode.Clear;
   //---   
end;

procedure TSentLetterInputForm.DataSetInsertExecute(Sender: TObject);
begin
   inherited;

   if not dm.GetActionAccess(TAction(SENDER).name,TAG) then
      Exit;

   {Ranjbar 90.01.27 ID=330}
   //if not DataSetEdit.Enabled then
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      //ShowMsg(63);
      ShowMyMessage('�����','���� ���� ���� �� ����� ����',[mbOK],mtInformation);
      Exit;
   end;
   //---
   
   try
      DBEdit9.SetFocus;
   except
   end;

   With dm,DSForm.DataSet do
   begin
      Insert;
      FieldByName('IndicatorID').Value := LastIndicatorID(2,LetterFormat);
      FieldByName('FromOrgID').AsInteger := DefaultSFromOrgId;
      FieldByName('MYear').AsInteger := CurrentMYear;
      FieldByName('LetterFormat').AsInteger := LetterFormat;
      FieldByName('Secretariatid').AsInteger := dm.SecID;
      FieldByName('Userid').AsInteger := _UserID;
      FieldByName('Letter_Type').AsInteger := 2;
      ToOrgTitleEdit.Text := '' ;
      SetDefualt;                   
      
      // Amin 1391/12/05 Start
      FollowLetterYear.Value := _Year;
      RetroactionYear.Value := _Year;
      // Amin 1391/12/05 End
   end;
end;

procedure TSentLetterInputForm.DataSetPostExecute(Sender: TObject);
var
   IsInsert: boolean;
   q1: TADOQuery; // Amin 1391/08/06
begin
   inherited;
   //����� �����
   //����� �� ��� Recommite ���� �� ���� ���� ���� ���� LetterRecommites ���� : ���� "����� �����:" �� �� ����

   if not Dm.GetActionAccess(TAction(Sender).Name,Tag) then
      Exit;

   if DBLkCBFormOrgTitle.KeyValue = 0 then
      Exit;

   {Ranjbar 89.11.02 ID=278} //�� ���� ������ ����� ����� ������� ���� �����
   if Select_Letter.State = dsEdit then
     if (Dm.IsLetterRead(Select_LetterLetterID.AsInteger)) and (Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue) then
      begin
         ShowMyMessage('�����','��� ���� ������ ��� ��� �������� ���� ����� ���� ������ ���� �����'+ #13#13
                        ,[mbOK],mtInformation);
         DBLkCBFormOrgTitle.SetFocus;
         Abort;
   
//      if Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue then
//      begin
//         ShowMyMessage('�����','����� ����� �� �� ����� ����� � ��� ����� ����� ���� "�������" ���� �����'+ #13#13
//                        + '���� ��� ����� ��� ���� �� ���� ����� ������� ���� � ����� ��� ���� �� ����� ������'
//                        ,[mbOK],mtInformation);
//         DBLkCBFormOrgTitle.SetFocus;
//         Abort;
         {�ѐ������ ����� ���� - ��� ��� ���
         if Dm.FromOrganizations.Locate('ID',Select_LetterFromOrgID.OldValue,[]) then
         begin
            DBLkCBFromOrgTitle.KeyValue := Dm.FromOrganizationsID.AsInteger;
            Select_LetterFromOrgID.AsInteger := Dm.FromOrganizationsID.AsInteger;

         end;}
      end;

   dm.FromOrganizations.Locate('Code',DBEdit9.Text,[]);
   select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;

   {Ranjbar 89.09.17 ID=243}
   if DBLkCBSignerID.KeyValue <> Null then
   //---
   begin
      if Dm.Signers.Locate('Code',EdtSignerCode.Text,[]) then
         Select_LetterSignerid.AsInteger := Dm.SignersID.AsInteger;
   end;

   if not DBERegistrationDate.IsValidDate  then
   begin
      DBERegistrationDate.SetFocus;
      ShowMessage('���� ����� ��� ���� �� ����� ����');
      Abort;
   end;
      
   IsInsert:=false;
   with DSForm.DataSet do
   begin
      if state=dsinsert  then
      begin
         if not IsAnswer then
            FieldByName('IndicatorID').Value:=dm.LastIndicatorID(2,LetterFormat);
         {Ranjbar   ���� ���� LetterID ���� ������ ���� SendLetterID �� ����}
         {else
            Exec_AnswerLetter(FieldByName('IndicatorID').Value,dm.Get_All_LetterLetterID.AsInteger,_Today);}
          //---
          IsInsert:=true;
      end
      // Amin 1391/08/06 Start
      else
      begin
         if StrToInt(DBEIndicatorID.Text) <> FirstIndicatorID then
         begin
         q1:= TADOQuery.Create(nil);
         q1.Connection:= Dm.YeganehConnection;

         q1.SQL.Text:= 'SELECT dbo.FN_IsDuplicateIndicator('+IntToStr(Select_LetterLetterID.Value)+', '+DBEIndicatorID.Text+') as Res';
         q1.Open;
         if q1.FieldValues['Res']=true then
         begin
            ShowMessage('.����� �������� ���� ��� ʘ���� �� ����');
            //Cancel;
            Abort;
            exit;
         end;
         end;
      end;
      // Amin 1391/08/06 End
      FieldByName('ToOrgID').AsInteger:=
              dm.NewToOrganization(ToOrgTitleEdit.text,FieldByName('ToStaffer').asString);
      if _HasReplicate then //������� : ������ ������� �� ������ ����
         if Exec_Org_is_Secretariat(FieldByName('ToOrgID').AsInteger)  then
            select_LetterSendStatusID.Value:=2;

      Post;

      //����� �� �����
      if IsInsert then
         MakeRecommite(LetterFormat,2,FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);

      if IsAnswer then
         Exec_AnswerLetter(select_LetterLetterID.AsInteger,dm.Get_All_LetterLetterID.AsInteger,_Today); //
   end;
   GetLetter(select_LetterLetterID.AsInteger);

   if (LetterFormat=2) and (OldIndicatorId<>Trim(DBEIndicatorID.Text)) then
    begin
      if not Dm.ExecGet_LetterWordFile(dm.Get_All_LetterLetterID.AsInteger,false,True) then
         Exit;
      FExportToWord:= TFExportToWord.Create(self);
      with dm.WordApplication do
      begin
         If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
            ActiveWindow.ActivePane.View.Type_:= wdPrintView;
         ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
      end;
      MainForm.ReplaceInWord(FExportToWord.WordApplication,'(('+OldIndicatorId+'))','(('+trim(DBEIndicatorID.Text)+'))' );
      FExportToWord.Close;
      OldIndicatorId:=Trim(DBEIndicatorID.Text);
    end;

   //��� �������
   Exec_insert_UserLog(Self.Tag,'DataSetPost',select_LetterLetterID.AsInteger);

end;

procedure TSentLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
var s:string;
begin
  inherited;
s:=YeganehTrim(ToOrgTitleEdit.Text);

if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
 if is_integer(ToOrgTitleEdit.Text) then
 with dm,Toorganizations do
  begin
    Close;
    CommandText:='Select fromorganizations.*,cast(case when r.DestinationOrgID_inSource is null then 0 else 1 end as bit) isSecretariat '+
    ' from fromorganizations LEFT JOIN RelatedSecretariats R ON FromOrganizations.ID = R.DestinationOrgID_inSource '+
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
     {Ranjbar}
     //DBEdit2.SetFocus;
     if (DBEFollowLetterNo.Visible)And(DBEFollowLetterNo.Enabled) then
        DBEFollowLetterNo.SetFocus;
    end;
  end;

if not DBGToORG.Focused then
 DBGToORG.Hide;
end;

procedure TSentLetterInputForm.DataSetCancelExecute(Sender: TObject);
begin
  inherited;
   IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN
      exit;

   DSForm.DataSet.Cancel;
   UpdateDblookup(False);
end;

procedure TSentLetterInputForm.DataSetFirstExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.First;
 UpdateDblookup(False);

end;

procedure TSentLetterInputForm.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;
  UpdateDblookup(False);

end;

procedure TSentLetterInputForm.DataSetEditExecute(Sender: TObject);
begin
  inherited;

   IF NOT dm.GetActionAccess(TAction(SENDER).name,TAG) THEN exit;

   DSForm.DataSet.Edit;
   FirstIndicatorID:= Select_LetterIndicatorID.AsInteger;
   UpdateDblookup(False);

end;

procedure TSentLetterInputForm.DBGToORGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);

end;

procedure TSentLetterInputForm.ToOrgTitleEditChange(Sender: TObject);
var s,t:string;
begin
   inherited;
    if DataSetEdit.Enabled then
      exit;

   s:=Replace(YeganehTrim(ToOrgTitleEdit.Text),char(152),'yy');
   S:=Replace(s,'�','yy');
    if is_integer(s) then
      t:='ID'
    else
      t:=' replace(replace(title,char(152),''yy''),''�'',''yy'')';

    with dm.toorganizations do
    if length(s)>=3  then
     begin
       Close;
       if _HasReplicate then
        CommandText:='Select fromorganizations.*,cast(case when r.DestinationOrgID_inSource is null then 0 else 1 end as bit) isSecretariat '+
       ' from fromorganizations LEFT JOIN RelatedSecretariats R ON FromOrganizations.ID = R.DestinationOrgID_inSource '+
       ' where  '+t+' like '''+s+'%'''
       else
        CommandText:='Select fromorganizations.*,cast(0 as bit) isSecretariat '+
       ' from fromorganizations  '+
       ' where  '+t+' like '''+s+'%''';

       DBGToORG.Show;
       open;
     end;
end;

procedure TSentLetterInputForm.ToOrgTitleEditKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
   inherited;
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
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
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      ToOrgTitleEdit.OnChange:=nil;
      ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
      ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

      DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
      DBGToORG.Hide;
      DBEditToStaffer.SetFocus;
   end;
end;

procedure TSentLetterInputForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  GetID(false);
end;

procedure TSentLetterInputForm.DBMemo2Enter(Sender: TObject);
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

   except
   end;
   TDBMemo(Sender).SelectAll;
   TEditEnter(Sender);
   AEnter.Enabled:=false;
end;

procedure TSentLetterInputForm.DBEdit9Exit(Sender: TObject);
begin
   inherited;

   if Select_Letter.State in [dsedit,dsinsert] then
   begin
      if not dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]) then
      begin
        ShowMessage('�� ���� ��� �� ���� ���� �����');
        DBEdit9.Text := prewNum;
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

procedure TSentLetterInputForm.DBMemo2Exit(Sender: TObject);
begin
   inherited;
   TEditExit(sender);
   AEnter.Enabled:=true;
end;

procedure TSentLetterInputForm.DBEdit7Exit(Sender: TObject);
var sameAnswerLetterID:integer;
begin
   inherited;
   if DSForm.DataSet.State=dsInsert then
      if Trim(TDBEdit(Sender).Text)<>'' then
       begin
          sameAnswerLetterID := Exec_get_LetterID_ByRetroActionNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
          if (sameAnswerLetterID<>0) and (sameAnswerLetterID<>select_LetterLetterID.AsInteger) then
          begin
             RetroExist:=TRetroExist.Create(Application);
             RetroExist.LetterID:=sameAnswerLetterID;
             RetroExist.ShowModal;
          end;
      end;
end;

procedure TSentLetterInputForm.FormCreate(Sender: TObject);
var i : Word;
begin
   inherited;
   {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
            SBOther.Visible := false;
       {$ENDIF}
   {$ENDIF}
   
  xpPageControl1.ActivePageIndex:=0;
  DontShow_xpFormsTab;
   for i:=0 to ComponentCount-1 do
      if Components[i].InheritsFrom(TBitBtn) then
         TBitBtn(Components[i]).Visible := Dm.GetActionAccess(TBitBtn(Components[i]).name,MainForm.Tag);

   if MainForm.LockOldYear.Enabled then //Action
      if _Year <> Dm.CurrentMyear then
      begin
         //Ranjbar
         Select_Letter.LockType := ltReadOnly;
         MBaseForm.MessageShowString('����� ����� : ��������� �� ��� "����� ��� ������" ���� "���� ��� ���� ��� ��� ���" ���� ����'+
                                        #13 + '��� ��� ������ ���� �� �� ���� ������ ��� ��� � �� ����� ����� ������', False);
         //---
      end;

   LetterFormat := 1;
   UserMemo.Caption := '   ' + dm.UserMemoDisplay+'   ';
   UserField.Caption := Dm.UserMemoDisplay;
   if dm.MemoFont <> nil then
      DBMemo2.Font := Dm.MemoFont;

   DBGToORG.Columns[0].Visible := _HasReplicate;
   N9.Visible := dm.GetActionAccess('ASendFax',1);

  //add Sanaye 950209
  //���� ��� �� �� ��� ���� ���� ���� ���� ��
  if GetUserSetting('ckBidiModeLetterGrid') = True then
    DBEIndicatorInnerNo.BiDiMode := bdLeftToRight
  else
    DBEIndicatorInnerNo.BiDiMode := bdRightToLeft;
  //end Sanaye
end;

procedure TSentLetterInputForm.FormShow(Sender: TObject);
begin
   inherited;
   if LetterFormat = 2 then  //���� ��� ���� �����
      Caption:=' ��� ���� ' + Caption;

   {Ranjbar 89.09.17 ID=243}
   if not(Select_LetterSignerid.IsNull) then
      EdtSignerCode.Text := Dm.SignersCode.AsString;
   //---
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
            SBOther.Visible := false;
       {$ENDIF}
   {$ENDIF}
   DBEdit12.Hint := DBEdit12.Text;
   OldIndicatorId:=Trim(DBEIndicatorID.Text);

end;

procedure TSentLetterInputForm.SpeedButton6Click(Sender: TObject);
begin
   inherited;
   if DataSetEdit.Enabled then
      Exit;
   FromOrgForm := TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.Done then
   begin
      DSForm.DataSet.FieldByName('SignerID').AsInteger := _ResultOrgID;//���� ���� �� ��� ���� �������
      EdtSignerCode.Text := Dm.SignersCode.AsString;
   end;
      {Ranjbar}
      {else
         MainForm.FromOrgOrganize;}
end;

procedure TSentLetterInputForm.DBGToORGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
 if dm.ToorganizationsisSecretariat.AsBoolean then
    Color:=clWhite
   else
    Color:=$00FFD3A8;
end;

procedure TSentLetterInputForm.DBLkCBFormOrgTitleClick(Sender: TObject);
begin
   inherited;
   
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Exit;

   DBEdit9.Text := Dm.FromOrganizationsCode.AsString;
   Select_LetterFromStaffer.AsString := Dm.FromOrganizationsResponsibleStaffer.AsString;
end;

procedure TSentLetterInputForm.EdtSignerCodeExit(Sender: TObject);
begin
   inherited;
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      {Ranjbar 89.09.17 ID=243}
      //dm.Signers.Locate('Code',TEdit(Sender).Text,[]) then
      if Dm.Signers.Locate('Code',TEdit(Sender).Text,[]) then
         //---
         Select_LetterSignerid.AsInteger := Dm.SignersID.AsInteger;
   end;

   TEditExit(sender);
end;

procedure TSentLetterInputForm.AexpotTowordClick(Sender: TObject);
begin
  inherited;
if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end; 
 if DataSetPost.Enabled then
    DataSetPost.Execute;

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


procedure TSentLetterInputForm.ActionManagerExecute(Action: TBasicAction;var Handled: Boolean);
begin
   inherited;
   if Action.Tag <> 4 then
      if Select_Letter.Active then
         Exec_insert_UserLog(Self.Tag,Action.name,Select_LetterLetterID.AsInteger);
end;

procedure TSentLetterInputForm.AAddLetterdataClick(Sender: TObject);
begin
   inherited;
   if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
   With DSForm.DataSet do
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

procedure TSentLetterInputForm.DBGToORGNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
if dm.ToorganizationsisSecretariat.AsBoolean then
  begin
    f.Style:=f.Style+[fsbold];
    f.Color:=clMaroon;
  end
   else
  begin
    f.Style:=f.Style-[fsbold];
    f.Color:=clBlack
  end;
end;

procedure TSentLetterInputForm.DBGToORGNeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;
 
  if Column.FieldName='isSecretariat' then
   if dm.ToorganizationsisSecretariat.AsBoolean then
   ImageIndex:=4
  else
   ImageIndex:=-1;
end;

procedure TSentLetterInputForm.Select_LetterBeforePost(DataSet: TDataSet);
begin
  inherited;
select_LetterLastUpdate.Value:=now;

end;

procedure TSentLetterInputForm.SpeedButton5Click(Sender: TObject);
var LetterID:integer;
    rr : Boolean;
    Letter_Type : Integer;
    mYear : integer; // Amin 1391/12/05
begin
   inherited;
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      ShowMsg(67);
      exit;
   end;

   if FollowLetterYear.Value = 0 then mYear := _Year else mYear := FollowLetterYear.Value; // Amin 1391/12/05

   if dm.GetFollowAndRetRoAction(true,(select_LetterLetter_Type.AsInteger=1),select_LetterFollowLetterNo.asstring,
         mYear, LetterID,rr) then  // Amin 1391/12/05 Edited
   begin
      if RR then
         MainForm.ViewReceivedLetter(LetterID)
      else
         MainForm.ViewSentLetter(LetterID);
   end
      else
         ShowMsg(3);
end;

procedure TSentLetterInputForm.SpeedButton4Click(Sender: TObject);
Var LetterID:integer;
    rr :Boolean;
    mYear : integer;  // Amin 1391/12/05
begin
   inherited;
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      ShowMsg(67);
      Exit;
   end;

   if RetroactionYear.Value = 0 then mYear := _Year else mYear := RetroactionYear.Value;    // Amin 1391/12/05

   if Dm.GetFollowAndRetRoAction(false,(select_LetterLetter_Type.AsInteger=1),select_LetterRetroactionNo.asstring,
      mYear, LetterID,rr) then  // Amin 1391/12/05 Edited
   begin
      if RR then
         MainForm.ViewReceivedLetter(LetterID)
      else
         MainForm.ViewSentLetter(LetterID);
   end
      else
         ShowMsg(4);
end;

procedure TSentLetterInputForm.FormDataShow(Sender: TObject);
begin
  inherited;
  FrUserTable_Input:= TFrUserTable_Input.Create(Application);
  FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
  FrUserTable_Input.FormOrder:=1;
//  FrUserTable_Input.ShowInPanel(FormData);
end;

procedure TSentLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   if Trim(Select_LetterUserMemo.Text) = '' then
   begin
      //Ranjbar
      MBaseForm.MessageShowString(' �� ������ �� ���� ' + UserField.Caption +' ���� ���  ', False);
      //---
      Exit;
   end;

   //�� ������ �� ��� "������ �� ��� �������� ��� / ������ ������� �������� ���" ������
   FrBrowsArchive := TFrBrowsArchive.Create(Application);
   FrBrowsArchive.UserMemo.Text := Select_LetterUserMemo.Text;
   FrBrowsArchive.RefreshQuery;
   FrBrowsArchive.ShowModal;

end;

procedure TSentLetterInputForm.ApictureClick(Sender: TObject);
 var extiontion : byte;

begin
   inherited;
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      ShowMsg(67);
      exit;
   end;

   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := Self.select_LetterLetterID.AsInteger;
   FmScanImage.ShowModal;
   
   Exec_insert_UserLog(Self.Tag,'Apicture',select_LetterLetterID.AsInteger);
end;

procedure TSentLetterInputForm.FormData2Show(Sender: TObject);
begin
   inherited;
   FrUserTable_Input:= TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
   FrUserTable_Input.FormOrder:=2;
//   FrUserTable_Input.ShowInPanel(FormData2);
end;

procedure TSentLetterInputForm.SpeedButton12Click(Sender: TObject);
begin
  inherited;
 if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
    ShowMsg(67);
    exit;
   end;
 ExactCopyF:=TExactCopyF.Create(Application);
 ExactCopyF.LetterID:=select_LetterLetterID.AsInteger;
 ExactCopyF.TypeId:=2;
 ExactCopyF.Caption := '��� ����ϐ��';
  if LetterFormat=2 then ExactCopyF.Finallized:=False;
 ExactCopyF.ShowModal;

end;

procedure TSentLetterInputForm.SBOtherClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,SBOther,PopMnuOther);
end;

procedure TSentLetterInputForm.SBSimpleEditorClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 36}
  if not(select_Letter.State in [dsInsert,dsEdit]) then
     Exit;
  Select_LetterMemo.AsString := MainForm.FillBlobField(Self,DBMemo2.Text,'��� ����� ����');
  //---
end;

procedure TSentLetterInputForm.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 87.12.17}
  //MainForm.Action23Execute(Sender);
  FmLetterRalation := TFmLetterRalation.create(Application);
  FmLetterRalation.LetterID := Select_LetterParentFollowLetter.AsInteger;
  FmLetterRalation.ShowModal;
end;

procedure TSentLetterInputForm.N1Click(Sender: TObject);
begin
   inherited;
   //���� ���� ���� ���
   {Ranjbar 14 �ѐ�}
   if Not(Select_Letter.State in [dsEdit,dsInsert]) then
   begin
      ShowMyMessage('�����','��� ���� �� ���� ������ ��� ����',[mbOK],mtInformation);
      Exit;
   end;
   Select_LetterMemo.AsString := select_LetterMemo.AsString +#13+ '--------- ���� ���� ���� ��� -------- ';
   DataSetPostExecute(Sender);
   //---
end;


(*
procedure TSentLetterInputForm.N2Click(Sender: TObject);
Var
   a_Subject,a_FromAddress,a_RecipientAddress,a_AttachFileName,a_SendHost : String;
   a_SendPort,a_ConTime : Integer;
   FileName : String;
   RichEdit : TRichEdit;
begin
   inherited;
   if Select_Letter.RecordCount = 0 then
      Exit;

   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      MBaseForm.messageShowString('���� ��� �� ����� ����� � ������� ��� �� ����� ������', False);
      Exit;
   end;
   //---

   a_Subject  := Select_LetterMemo.AsString;
   a_FromAddress := Dm.GetSystemValue(76);
   a_SendHost := Dm.GetSystemValue(71);
   a_SendPort := Dm.GetSystemValue(73);
   a_ConTime  := Dm.GetSystemValue(75);
   //���� ����� ���� ������
   if Select_LetterToOrgID.AsInteger > 0 then
      a_RecipientAddress := Qry_GetResult('SELECT Email From FromOrganizations where ID = '+ Select_LetterToOrgID.AsString , dm.YeganehConnection )
   else
      a_RecipientAddress := '';


   //��� ����� �� ��� ���� ���
   {if dm.ExecGet_LetterWordFile(Select_LetterLetterID.AsInteger , not _AllowToEditWordFiles , False) then
      a_EmailBody.LoadFromFile(_TempPath+_WordFileName);}


   //���� ����� ���� ������ �� �����
   With QrEmailAttachFile do
   begin
      Try
         Close;
         Parameters.ParamByName('LetterID').Value := Select_LetterLetterID.AsInteger;
         Open;
         if RecordCount > 0 then
         begin
            FileName := QrEmailAttachFileLetterDataID.AsString +'.'+QrEmailAttachFileExtentionName.AsString;
            a_AttachFileName := _TempPath + FileName;
         end
            else
               a_AttachFileName := '';
      Finally
         Close;
      End;
   end;//With

   FmLetterToEmail := TFmLetterToEmail.Create(Application);
   With FmLetterToEmail do
   begin
      EdtSubject.Text := '����� ����';
      EdtSendAddress.Text := a_FromAddress;
      EdtReciveAddress.Text := a_RecipientAddress;
      REEmailBody.Lines.Add(a_Subject);
      aAttachFileName := a_AttachFileName;
      aSendHost := a_SendHost;
      aSendPort := a_SendPort;
      aConTime := a_ConTime;
      ShowModal;
   end;
end;
    *)
procedure TSentLetterInputForm.Select_LetterCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not DataSet.FieldByName('LetterID').IsNull then
     Select_LetterFollowCode.AsString:= GetFollowCode(DataSet.FieldByName('LetterID').AsInteger);

     Select_LetterChristRegDate.AsString:= MiladiMString(DataSet.FieldByName('registrationdate').AsString);
     if DataSet.FieldByName('incommingdate').AsString<>'' then
      Select_LetterChristIncomDate.AsString:= MiladiMString(DataSet.FieldByName('incommingDate').AsString);

end;

procedure TSentLetterInputForm.DBEFollowLetterNoKeyPress(Sender: TObject;var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.13 ID=210}
   if not ChBoFollowRetroaction.Checked then
      DBEFollowLetterNo.Text := Keyboard_TypeWithDivider(DBEFollowLetterNo.Text,Key);
   //---
end;

procedure TSentLetterInputForm.DBERetroactionNoKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.13 ID=210}
   if not ChBoFollowRetroaction.Checked then
      DBERetroactionNo.Text := Keyboard_TypeWithDivider(DBERetroactionNo.Text,Key);
   //---
end;

procedure TSentLetterInputForm.SBDelDefualtSSignerClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.17 ID=243}
   if Select_Letter.State in [dsEdit,dsInsert] then
   begin
      Select_LetterSignerid.Clear;
      //DBLkCBSignerID.KeyValue := Null;
      EdtSignerCode.Clear;
   end;
   //---
end;

procedure TSentLetterInputForm.N3Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.10.29 ID=269}
   if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
   begin
      ShowMsg(67);
      Exit;
   end;

   if not Dm.GetActionAccess('ASendToOtherSec',MainForm.Tag) then
   begin
      ShowMyMessage('�����','����� ����� � ��� �� ��� ���� ������ ������',[mbOK],mtInformation);
      Exit;
   end;

   MainForm.SendLetter_To_Other_Sec(Select_LetterLetterID.AsInteger);
   //---
end;

procedure TSentLetterInputForm.N5Click(Sender: TObject);
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
      With ReCommite do
      begin
         LetterID:=select_LetterLetterID.AsInteger;
         ShowModal;
      end;
   end;
   Exec_insert_UserLog(Self.Tag,'Arecommite',select_LetterLetterID.AsInteger);
end;

procedure TSentLetterInputForm.N2Click(Sender: TObject);
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
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
   //----

   ExactCopyF := TExactCopyF.Create(Application);
   ExactCopyF.LetterID := Select_LetterLetterID.AsInteger;
   ExactCopyF.TypeId := 1; //������
   ExactCopyF.Caption := '������';
   if LetterFormat = 2 then //��� ����
      ExactCopyF.Finallized := False;
   ExactCopyF.ShowModal;
end;

procedure TSentLetterInputForm.DBLkCBSignerIDClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.09.17 ID=243}
  if Select_Letter.State in [dsEdit,dsInsert] then
     if DBLkCBSignerID.KeyValue <> 0 then
     //---
        EdtSignerCode.Text := Dm.SignersCode.AsString;
end;

procedure TSentLetterInputForm.EdtSignerCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Key := #0;
end;

procedure TSentLetterInputForm.DontShow_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=False;
end;

procedure TSentLetterInputForm.Show_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=True;
end;

procedure TSentLetterInputForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('�����','����� ����� � ���� ����� ������� ��� �� ����� ������',[mbOK],mtInformation);
      Exit;
   end;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
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

procedure TSentLetterInputForm.N8Click(Sender: TObject);
begin
  inherited;
   DontShow_xpFormsTab;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.LetterID:=Select_LetterLetterID.AsInteger;
   FrInputUserTable.showmodal;
   Select_Letter.Refresh;
end;

procedure TSentLetterInputForm.ShowCount;
begin
  lblCount.Caption:=' ����� ' +IntToStr(YDBGrid1.DataSource.DataSet.RecordCount)+' ���� ���� �� ';
end;

function TSentLetterInputForm.LetterHasForms: Boolean;
begin
  Result:=False;
  QHasForms.Close;
  QHasForms.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
  QHasForms.Open;
  if not QHasForms.IsEmpty then Result:=True;
end;

procedure TSentLetterInputForm.DSFormDataChange(Sender: TObject;
  Field: TField);
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

  // Amin 1391/12/05 Start
   FollowLetterYear.Enabled := Select_Letter.State in [dsInsert, dsEdit];
   RetroactionYear.Enabled := FollowLetterYear.Enabled;

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
  // Amin 1391/12/05 End
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

function TSentLetterInputForm.CheckFormExist: Boolean;
var i: integer;
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

procedure TSentLetterInputForm.xpPageControl1Change(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
       Select_Letter.Refresh;
end;

procedure TSentLetterInputForm.acConvertLetterToECEExecute(Sender: TObject);
var
  iXml: IDOMDocument;
  iRoot, iProtocol, iSoftware, iSender, iAttribute, iNode, iKeyword, iKeywords,
  iReceiver, iOtherReceivers,iLetterNo,iLetterDateTime,iRelatedLetterNode, iOrigins , iOrigin,
  iSubject,iPriority,iClassification, iRelatedLetter,iNode1,iAttachments,iAttachment: IDOMNode;
  XMLText, emailBody, mail : TStringList;
  FileName,Extention,strGUID,encoded,XMLFileName,SenderEmail,strReceiverEmail :string;
  ms : TMemoryStream;
  Outstream: TFileStream;
  parameters : pAnsiChar;
  gregorianDate, sbj, pdfFile{, prio}, inputFile, outputFile:string;
begin
  inherited;
  // empty the document
  XMLDoc.Active := False;
  XMLDoc.XML.Text := '';
  XMLDoc.Active := True;
  
                                              //             <?xml version=''1.0'' encoding=''UTF-8''?>
  // root
  iXml:=XmlDoc.DOMDocument;
 // iRoot:=iXml.appendChild(iXml.createElement ());
  iRoot:=iXml.appendChild(iXml.createElement ('Letter'));

  // Base Node
  iProtocol:=iRoot.appendChild(iXml.createElement('Protocol'));
  iSoftware:=iRoot.appendChild(iXml.createElement('Software'));
  iSender:=iRoot.appendChild(iXml.createElement('Sender'));
  iReceiver:=iRoot.appendChild(iXml.createElement('Receiver'));

  // Node Name: OtherReceiver
  {
  QTemp_ECE.Close;
  QTemp_ECE.SQL.Clear;
  QTemp_ECE.SQL.Add('SELECT OrgID,OrgStaff FROM ReCommites');
  QTemp_ECE.SQL.Add('WHERE Type=2 AND LetterID='+IntToStr(Select_LetterLetterID.AsInteger));
  QTemp_ECE.Open;
  if not QTemp_ECE.IsEmpty then
  begin
    iOtherReceivers:=iRoot.appendChild(iXml.createElement('OtherReceivers'));
    while not QTemp_ECE.Eof do
    begin
        iNode:=iOtherReceivers.appendChild(iXml.createElement('OtherReceiver'));
        iAttribute:=iXml.createAttribute('Organization');
        iAttribute.nodeValue:= Trim(QTemp_ECEOrgStaff.AsString);
        iNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('Department');
        iAttribute.nodeValue:= '';
        iNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('Position');
        iAttribute.nodeValue:= '';
        iNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('Name');
        iAttribute.nodeValue:= '';
        iNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('Code');
        iAttribute.nodeValue:= Trim(QTemp_ECEOrgID.AsString);
        iNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('ReceiveType');
        iAttribute.nodeValue:= 'Copy';
        iNode.attributes.setNamedItem(iAttribute);
       QTemp_ECE.Next;
    end;// end of while not QTemp_ECE.Eof do
  end;// end of if not QTemp_ECE.IsEmpty then
  //End Of Node Name: OtherReceiver
  }
  iLetterNo:=iRoot.appendChild(iXml.createElement('LetterNo'));
  iNode:=iLetterNo.appendChild(iXml.createTextNode(Select_LetterIndicatorInnerNo.AsString));

  iLetterDateTime:=iRoot.appendChild(iXml.createElement('LetterDateTime'));
  iAttribute:=iXml.createAttribute('ShowAs');
  iAttribute.nodeValue:= 'gregorian';
  iLetterDateTime.attributes.setNamedItem(iAttribute);
  gregorianDate := MiladimString(Select_LetterRegistrationDate.AsString);
  gregorianDate := StringReplace(gregorianDate,'/','-',[rfReplaceAll])+'T';
  gregorianDate := gregorianDate + Select_LetterRegistrationTime.AsString+':00';
  iLetterDateTime.appendChild(iXml.createTextNode(gregorianDate));

  sbj := trim(Select_LetterMemo.AsString);
  if sbj = '' then
      sbj := '����';


 // Node Name: RelatedLetter
 {
  QTemp_ECE2.Close;
  QTemp_ECE2.SQL.Clear;
  QTemp_ECE2.SQL.Add('SELECT TOP 1 FollowLetterNo ''peiro'',RetroactionNo ''atf'' FROM Letter');
  QTemp_ECE2.SQL.Add('WHERE LetterID='+IntToStr(Select_LetterLetterID.AsInteger));
  QTemp_ECE2.Open;
  if not QTemp_ECE2.IsEmpty then
  begin
     iRelatedLetter:=iRoot.appendChild(iXml.createElement('RelatedLetters'));
     if Trim(QTemp_ECE2atf.AsString)<>'' then
     begin
        iNode:=iRelatedLetter.appendChild(iXml.createElement('RelatedLetter'));
        iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelationType'));
        iAttribute:=iXml.createAttribute('Name');
        iAttribute.nodeValue:= '���';
        iRelatedLetterNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('Code');
        iAttribute.nodeValue:= '0';
        iRelatedLetterNode.attributes.setNamedItem(iAttribute);

        iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelatedLetterNo'));
        iNode1:=iRelatedLetterNode.appendChild(iXml.createTextNode(QTemp_ECE2atf.AsString));

        iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelatedLetterDateTime'));
        iAttribute:=iXml.createAttribute('ShowAs');
        iAttribute.nodeValue:= 'gregorian';

        QTemp_ECE3.Close;
        QTemp_ECE3.SQL.Clear;
        QTemp_ECE3.SQL.Add('SELECT top 1 IndicatorID,l.FromOrgID,fo.Title,fo.ResponsibleStaffer, RegistrationDate');
        QTemp_ECE3.SQL.Add('FROM letter l');
        QTemp_ECE3.SQL.Add('INNER JOIN FromOrganizations fo ON fo.ID = l.FromOrgID');
        QTemp_ECE3.SQL.Add('WHERE IncommingNO='''+QTemp_ECE2atf.AsString+'''');
        QTemp_ECE3.Open;
        if not QTemp_ECE3.IsEmpty then
        begin
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);
            iRelatedLetterNode.appendChild(iXml.createTextNode(QTemp_ECE3RegistrationDate.AsString));

            iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelatedLetterSender'));
            iAttribute:=iXml.createAttribute('Organization');
            iAttribute.nodeValue:= '';
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Department');
            iAttribute.nodeValue:= '';
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Position');
            iAttribute.nodeValue:= QTemp_ECE3Title.AsString;
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Name');
            iAttribute.nodeValue:= QTemp_ECE3ResponsibleStaffer.AsString;
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Code');
            iAttribute.nodeValue:= QTemp_ECE3FromOrgID.AsString;
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);
        end;
     end;
     if Trim(QTemp_ECE2peiro.AsString)<>'' then
     begin
        iNode:=iRelatedLetter.appendChild(iXml.createElement('RelatedLetter'));
        iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelationType'));
        iAttribute:=iXml.createAttribute('Name');
        iAttribute.nodeValue:= '����';
        iRelatedLetterNode.attributes.setNamedItem(iAttribute);
        iAttribute:=iXml.createAttribute('Code');
        iAttribute.nodeValue:= '1';
        iRelatedLetterNode.attributes.setNamedItem(iAttribute);

        iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelatedLetterNo'));
        iNode1:=iRelatedLetterNode.appendChild(iXml.createTextNode(QTemp_ECE2peiro.AsString));

        iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelatedLetterDateTime'));
        iAttribute:=iXml.createAttribute('ShowAs');
        iAttribute.nodeValue:= 'gregorian';
       // gregorianDate := MiladiMString(Select_LetterRegistrationDate.AsString);
       // gregorianDate := StringReplace(gregorianDate,'/','-',[rfReplaceAll])+'T';
       // gregorianDate := gregorianDate + Select_LetterRegistrationTime.AsString+':00';
        QTemp_ECE3.Close;
        QTemp_ECE3.SQL.Clear;
        QTemp_ECE3.SQL.Add('SELECT top 1 IndicatorID,l.FromOrgID,fo.Title,fo.ResponsibleStaffer, RegistrationDate');
        QTemp_ECE3.SQL.Add('FROM letter l');
        QTemp_ECE3.SQL.Add('INNER JOIN FromOrganizations fo ON fo.ID = l.FromOrgID');
        QTemp_ECE3.SQL.Add('WHERE l.Letter_Type=2 AND indicatorid='+QTemp_ECE2peiro.AsString);
        QTemp_ECE3.Open;
        if not QTemp_ECE3.IsEmpty then
        begin
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);
            iRelatedLetterNode.appendChild(iXml.createTextNode(QTemp_ECE3RegistrationDate.AsString));

            iRelatedLetterNode:=iNode.appendChild(iXml.createElement('RelatedLetterSender'));
            iAttribute:=iXml.createAttribute('Organization');
            iAttribute.nodeValue:= '';
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Department');
            iAttribute.nodeValue:= '';
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Position');
            iAttribute.nodeValue:= QTemp_ECE3Title.AsString;
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Name');
            iAttribute.nodeValue:= QTemp_ECE3ResponsibleStaffer.AsString;
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);

            iAttribute:=iXml.createAttribute('Code');
            iAttribute.nodeValue:= QTemp_ECE3FromOrgID.AsString;
            iRelatedLetterNode.attributes.setNamedItem(iAttribute);
        end;
     end;
  end;// end of if not QTemp_ECE2.IsEmpty then
  //End Of Node Name: RelatedLetter
     }
  iSubject:=iRoot.appendChild(iXml.createElement('Subject'));
  iSubject.appendChild(iXml.createTextNode(sbj));

  iPriority:=iRoot.appendChild(iXml.createElement('Priority'));
  if Select_LetterUrgencyID.AsInteger in [1,2,3] then
  begin
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= Trim(Select_LetterUrgencyTitle.AsString);
      iPriority.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= IntToStr(Select_LetterUrgencyID.AsInteger);
      iPriority.attributes.setNamedItem(iAttribute);
  end
  else
  begin
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= '���� ����';
      iPriority.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= '3';
      iPriority.attributes.setNamedItem(iAttribute);
  end;
  iPriority.appendChild(iXml.createTextNode(''));

  iClassification:=iRoot.appendChild(iXml.createElement('Classification'));
  if Select_LetterUrgencyID.AsInteger in [1,2,3] then
  begin
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= Trim(Select_LetterClassificationTitle.AsString);
      iClassification.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= IntToStr(Select_LetterClassificationID.AsInteger);
      iClassification.attributes.setNamedItem(iAttribute);
  end
  else
  begin
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= '���� �������';
      iClassification.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= '3';
      iClassification.attributes.setNamedItem(iAttribute);
  end;

  iClassification.appendChild(iXml.createTextNode(''));
  // Add Attribute
  // Node Name: Protocol
  iAttribute:=iXml.createAttribute('Name');
  iAttribute.nodeValue:= 'ECE';
  iProtocol.attributes.setNamedItem(iAttribute);
  iAttribute:=iXml.createAttribute('Version');
  iAttribute.nodeValue:='1.01';
  iProtocol.attributes.setNamedItem(iAttribute);
  iProtocol.appendChild(iXml.createTextNode(''));
  //End Of Node Name: Protocol
  // Node Name: Software
  iAttribute:=iXml.createAttribute('SoftwareDeveloper');
  iAttribute.nodeValue:= 'Yeganeh Software Company';
  iSoftware.attributes.setNamedItem(iAttribute);
  iAttribute:=iXml.createAttribute('GUID');
  strGUID:=CreateClassID;
  iAttribute.nodeValue:='55DDEA2E2E2C453A8CF95580DE751569';
  iSoftware.attributes.setNamedItem(iAttribute);
  iAttribute:=iXml.createAttribute('Version');
  iAttribute.nodeValue:=_SoftVersion;

  iSoftware.attributes.setNamedItem(iAttribute);
  iSoftware.appendChild(iXml.createTextNode(''));
  //End Of Node Name: Software
  // Node Name: Sender
//  if Trim(Dm.OrgName)<>'' then
//  begin
      iAttribute:=iXml.createAttribute('Organization');
      iAttribute.nodeValue:= Dm.OrgName+' ';
      iSender.attributes.setNamedItem(iAttribute);
//  end;
  iAttribute:=iXml.createAttribute('Department');
  iAttribute.nodeValue:= '';
  iSender.attributes.setNamedItem(iAttribute);
//  if Trim(Select_LetterFormOgrTitle.AsString)<>'' then
 // begin
      iAttribute:=iXml.createAttribute('Position');
      iAttribute.nodeValue:= '';
      iSender.attributes.setNamedItem(iAttribute);
 // end;
//  if Trim(Select_LetterFromStaffer.AsString)<>'' then
//  begin
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= Trim(Select_LetterFormOgrTitle.AsString);
      iSender.attributes.setNamedItem(iAttribute);
//  end;
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= Trim(Select_LetterFromOrgID.AsString);
      iSender.attributes.setNamedItem(iAttribute);

      iAttribute:=iXml.createAttribute('Any');
      iAttribute.nodeValue:= Trim('null');
      iSender.attributes.setNamedItem(iAttribute);

      iSender.appendChild(iXml.createTextNode(''));
  //End Of Node Name: Sender
  // Node Name: Receiver
//  if Trim(Select_LetterToStaffer.AsString)<>'' then
//  begin
      iAttribute:=iXml.createAttribute('Organization');
      iAttribute.nodeValue:= Trim(Select_LetterToStaffer.AsString+';');
      iReceiver.attributes.setNamedItem(iAttribute);
//  end;
      iAttribute:=iXml.createAttribute('Department');
      iAttribute.nodeValue:= '';
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Position');
      iAttribute.nodeValue:= '';
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= Trim(Select_LetterToStaffer.AsString+';');
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= Trim(Select_LetterToOrgID.AsString);
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('ReceiveType');
      iAttribute.nodeValue:= 'Origin';
      iReceiver.attributes.setNamedItem(iAttribute);
      iReceiver.appendChild(iXml.createTextNode(''));
  //End Of Node Name: Receiver
   {
  iKeywords:=iRoot.appendChild(iXml.createElement('Keywords'));
  iKeyword:=iKeywords.appendChild(iXml.createElement('Keyword'));
  iKeyword.appendChild(iXml.createTextNode(Select_LetterMemo.AsString));
    }
  ////////////////////// ��� ������ ����
    iOrigins:=iRoot.appendChild(iXml.createElement('Origins'));
    if dm.YeganehConnection.Execute('SELECT COUNT(LetterDataID) FROM LetterData WHERE extention = 3 and LetterID = '+Select_LetterLetterID.AsString).fields[0].Value>0 then
    begin
       pdfFile := SignedDoc(Select_LetterLetterID.AsInteger);
       try
         ms := TMemoryStream.Create;
         ms.LoadFromFile(pdfFile);
         ms.Position := 0;
         encoded := IdEncoderMIME1.Encode(ms);
       finally
         ms.Free;
       end;
       iOrigin:=iOrigins.appendChild(iXml.createElement('Origin'));
       iAttribute:=iXml.createAttribute('ContentType');
       iAttribute.nodeValue:= 'application/pdf';
       iOrigin.attributes.setNamedItem(iAttribute);
       iAttribute:=iXml.createAttribute('Extension');
       iAttribute.nodeValue:= 'PDF';
       iOrigin.attributes.setNamedItem(iAttribute);
       iAttribute:=iXml.createAttribute('Description');
       iAttribute.nodeValue:= '��� ����';
       iOrigin.attributes.setNamedItem(iAttribute);
       iOrigin.appendChild(iXml.createTextNode(encoded));
    end
    else
    begin
       encoded :=  'SUkqAHQCAADIAAAAAQAAAMgAAAABAAAA//////////////LIKoyhfqv/9vkuszXT07f/KE+/xO1axI2jClkIWpJr7T3vfoVT7T8gaYKG/M0GyEZGSZP2ZpMSjtkhftoNVTfVO6e2m5RQdop66YaW/7uqKwhJlOwlyn7idFKf23X7EOrxat+VaVW5ZJpXzCCC'
                  +'I/lCVHiaBfQIj6Hfeh4/jjjtCXqDI6pjY0I9fTVRBeMlCohpkUclCwlFhVCDCaVoWumhjQiIMoSQis8oVV+qR0SX0lTX4SCShK0pZBApWQgaJx2Cw00LCYqIYQsKIYUf////////5ZxilkmjuiOy1WdF/vqq6/3v/XbbbJ1/zNaDupNw/0+v+av9r4kTX7kQ'
                  +'jCxbeTdGYWTrEiixCF/ybFq1WHnTL/sw4X+xF7/9oco827plT7h4j466D4bvuyNaZP2Zo7rVp4Xtp8odumqb5DW8ER+JV+5RW2s4/VFPXTypSel0H7qdEb5T/286qU8Jcp+6kYiGjepmn/pL9nlbq6xvmazaVuLVv9Tyt7X9UEEuTYpSo8U0RkcwggiPx3ad'
                  +'oaBEfQ77CpojmeP3FJAl47QjjjjYiI6Y2OGCEdoRsREeokMDqqZEdSGZCGShUxLcg46iRR1WEGRHCFphQhZG5bluhaFphMm4QhppkWFEGVIFIhUVJTUVpJGiqpzQcJBJCi6MKTZVCFcIEZUJNO00ItNQwgwmoi1H////////////////////////////////'
                  +'////////////////////////////////////////////////////////////////+ACACBMA/gAEAAEAAAAAAAAAAAEEAAEAAAATAwAAAQEEAAEAAAATAwAAAgEDAAEAAAABAAAAAwEDAAEAAAAEAAAABgEDAAEAAAAAAAAACgEDAAEAAAABAAAAEQEEAAEA'
                  +'AAAYAAAAFQEDAAEAAAABAAAAFgEEAAEAAAATAwAAFwEEAAEAAABcAgAAGgEFAAEAAAAIAAAAGwEFAAEAAAAQAAAAHAEDAAEAAAABAAAAJAEEAAEAAAAAAAAAJQEEAAEAAAAAAAAAKAEDAAEAAAACAAAAKQEDAAIAAAAAAAAARwEDAAEAAAAAAAAAAAAAAA==';
       iOrigin:=iOrigins.appendChild(iXml.createElement('Origin'));
       iAttribute:=iXml.createAttribute('ContentType');
       iAttribute.nodeValue:= 'image/tiff';
       iOrigin.attributes.setNamedItem(iAttribute);
       iAttribute:=iXml.createAttribute('Extension');
       iAttribute.nodeValue:= 'tiff';
       iOrigin.attributes.setNamedItem(iAttribute);
       iAttribute:=iXml.createAttribute('Description');
       iAttribute.nodeValue:= '��� ����';
       iOrigin.attributes.setNamedItem(iAttribute);
       iOrigin.appendChild(iXml.createTextNode(encoded));
    end;
  {  with Get_LetterData_by_LetterID_ECE do
    begin
        Close;
        Parameters.ParamByName('@LetterID').Value:=Select_LetterLetterID.AsInteger;
        Open;
        if not Get_LetterData_by_LetterID_ECE.IsEmpty then
        begin
            while not Get_LetterData_by_LetterID_ECE.Eof do
            begin
                QGetExtension.Close;
                QGetExtension.SQL.Clear;
                QGetExtension.SQL.Add('SELECT Extention FROM Extention WHERE ExtentionID='+Get_LetterData_by_LetterID_ECEExtention.AsString);
                QGetExtension.Open;
                if not QGetExtension.IsEmpty then
                    Extention := Trim(QGetExtensionExtention.AsString)
                else
                    Extention := 'jpg';
                FileName:='Andi'+IntToStr(Select_LetterIndicatorID.AsInteger)+'_P'+IntToStr(Get_LetterData_by_LetterID_ECE.RecNo)+'.'+Extention;
                with dm.Get_LetterData_by_LetterDataID do
                begin
                   close;
                   Parameters.ParamByName('@LetterdataID').Value:=Get_LetterData_by_LetterID_ECELetterDataID.Value;
                   Open;
                end;
//                Dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(Path+'\'+FileName);
                //////////// Encode to BASE64
                try
                  ms := TMemoryStream.Create;
                  Dm.Get_LetterData_by_LetterDataIDImage.SaveToStream(ms);
                  ms.Position := 0;
                  encoded := IdEncoderMIME1.Encode(ms);
                finally
                  ms.Free;
                end;
               // ShowMessage(encoded);
                iOrigin:=iOrigins.appendChild(iXml.createElement('Origin'));
                iAttribute:=iXml.createAttribute('ContentType');
                iAttribute.nodeValue:= 'image/jpeg';
                iOrigin.attributes.setNamedItem(iAttribute);
                iAttribute:=iXml.createAttribute('Extension');
                iAttribute.nodeValue:= 'jpg';
                iOrigin.attributes.setNamedItem(iAttribute);
                iAttribute:=iXml.createAttribute('Description');
                iAttribute.nodeValue:= '���������';
                iOrigin.attributes.setNamedItem(iAttribute);
                iOrigin.appendChild(iXml.createTextNode(encoded));
                //////////// End Of Encode to BASE64
                Get_LetterData_by_LetterID_ECE.Next;
            end;// end of while not Get_LetterData_by_LetterID_ECE.Eof do
        end;// end of if not Get_LetterData_by_LetterID_ECE.IsEmpty then
    end;   }
  ////////////////////// ����� ��� ������ ����

  ////////////////////// ��� atachment
    iAttachments:=iRoot.appendChild(iXml.createElement('Attachments'));
    with Get_LetterData_by_LetterID_ECE do
    begin
        Close;
        Parameters.ParamByName('@LetterID').Value:=Select_LetterLetterID.AsInteger;
        Open;
        if not Get_LetterData_by_LetterID_ECE.IsEmpty then
        begin
            while not Get_LetterData_by_LetterID_ECE.Eof do
            begin
                QGetExtension.Close;
                QGetExtension.SQL.Clear;
                QGetExtension.SQL.Add('SELECT Extention FROM Extention WHERE ExtentionID='+Get_LetterData_by_LetterID_ECEExtention.AsString);
                QGetExtension.Open;
                if not QGetExtension.IsEmpty then
                    Extention := Trim(QGetExtensionExtention.AsString)
                else
                    Extention := 'jpg';
                FileName:='Andi'+IntToStr(Select_LetterIndicatorID.AsInteger)+'_P'+IntToStr(Get_LetterData_by_LetterID_ECE.RecNo)+'.'+Extention;
                with dm.Get_LetterData_by_LetterDataID do
                begin
                   close;
                   Parameters.ParamByName('@LetterdataID').Value:=Get_LetterData_by_LetterID_ECELetterDataID.Value;
                   Open;
                end;
//                Dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(Path+'\'+FileName);
                //////////// Encode to BASE64
                try
                  ms := TMemoryStream.Create;
                  Dm.Get_LetterData_by_LetterDataIDImage.SaveToStream(ms);
                  ms.Position := 0;
                  encoded := IdEncoderMIME1.Encode(ms);
                finally
                  ms.Free;
                end;
               // ShowMessage(encoded);
                iAttachment:=iAttachments.appendChild(iXml.createElement('Attachment'));
                iAttribute:=iXml.createAttribute('ContentType');

                if UpperCase(Extention)=UpperCase('jpg') then
                      iAttribute.nodeValue:= 'image/jpeg';

                if UpperCase(Extention)=UpperCase('tif') then
                      iAttribute.nodeValue:= 'image/tiff';

                if (UpperCase(Extention)=UpperCase('doc')) or (UpperCase(Extention)=UpperCase('docx')) then
                      iAttribute.nodeValue:= 'application/msword';

                if UpperCase(Extention)=UpperCase('pdf') then
                      iAttribute.nodeValue:= 'application/pdf';

                if UpperCase(Extention)=UpperCase('png') then
                      iAttribute.nodeValue:= 'image/png';

                if UpperCase(Extention)=UpperCase('gif') then
                      iAttribute.nodeValue:= 'image/gif';

                if UpperCase(Extention)=UpperCase('txt') then
                      iAttribute.nodeValue:= 'text/plain';

                iAttachment.attributes.setNamedItem(iAttribute);
                iAttribute:=iXml.createAttribute('Extension');
                iAttribute.nodeValue:= Extention;
                iAttachment.attributes.setNamedItem(iAttribute);
                iAttribute:=iXml.createAttribute('Description');
                iAttribute.nodeValue:= Get_LetterData_by_LetterID_ECEdescription.AsString;
                iAttachment.attributes.setNamedItem(iAttribute);
                iAttachment.appendChild(iXml.createTextNode(encoded));
                //////////// End Of Encode to BASE64
                Get_LetterData_by_LetterID_ECE.Next;
            end;// end of while not Dm.Get_LetterData_by_LetterID.Eof do
        end;// end of if not Dm.Get_LetterData_by_LetterID.IsEmpty then
    end;
  ////////////////////// ����� ��� Atachment

  XMLText := TStringList.Create;
  try
    XMLText.Assign(xmlDoc.XML) ;
    XMLText.Text := '<?xml version=''1.0'' encoding=''UTF-8''?>'+XMLText.Text ;
    XMLText.Text := copy(XMLText.Text,0,pos('<Letter',XMLText.Text)+6)+' xmlns="http://www.irica.com/ECE/1383-12/SendSchema"'+copy(XMLText.Text,pos('<Letter',XMLText.Text)+7,length(XMLText.Text));
    XMLFileName:='ECE_XML';//+Select_LetterIndicatorID.AsString;
//    XMLText.SaveToFile('c:\'+XMLFileName+'.xml') ;

    if RightStr(Dm.PathOfECE,1)<>'\' then
        inputFile := Dm.PathOfECE+'\'+XMLFileName+'.XML'
    else
        inputFile := Dm.PathOfECE+XMLFileName+'.XML';
    XMLText.SaveToFile(inputFile);
  finally
    XMLText.Free;
  end;
  //outputFile := ExtractFileDir(inputFile)+'ECE.XML';
  //ConvertANSIFileToUTF8File(inputFile,outputFile);
  emailBody := TStringList.Create;
  emailBody.Text := 'This is a letter sent from Yeganeh Office Automation system.';
  emailBody.Add('');
  emailBody.Add('Letter Information:');
  emailBody.Add('');
  emailBody.Add('Sender: '+Select_LetterFormOgrTitle.AsString + '; ');
  emailBody.Add('Receiver: '+Select_LetterToStaffer.AsString +'; ');
  emailBody.Add('Letter No: '+Select_LetterIndicatorInnerNo.AsString);
  emailBody.Add('Letter Date: '+Select_LetterRegistrationDate.AsString+' '+Select_LetterRegistrationTime.AsString);
  emailBody.Add('Letter Subject: ece-'+sbj);
  emailBody.Add('Letter Priority: '+Select_LetterUrgencyTitle.AsString);
////////  Outlook
  SenderEmail:=GetEmail;

//  ShowMessage(Dm.PathOfECE);
//  ShowMessage(Dm.PathOfECE+XMLFileName+'.xml');

  if Trim(SenderEmail)='' then
      ShowMessage('����� ��� �� ���� ����� ����� ����� ���� ���')
  else
  begin
     { strReceiverEmail := InputBox('','���� ���� ����� ������ �� ���� ����','');  //'target@GMAIL.COM';//
      try
         SendMail( '', strReceiverEmail,
                   '', SenderEmail,
                   ' ����� �� '+Dm.Orgname, emailBody.Text,
                   Dm.PathOfECE+'\'+XMLFileName+'.xml', true );
      except on e:exception do
        ShowMessage(e.message);
      end;  }
      {mail := TStringList.Create;
      try
         mail.values['to'] := strReceiverEmail;
         mail.values['subject'] := ' ����� �� '+Dm.Orgname;
         mail.values['body'] := emailBody.Text;
         mail.values['attachment0'] := Dm.PathOfECE+'\'+XMLFileName+'.xml';
         sendEMail(Application.Handle, mail);
      finally
         mail.Free;
      end; }

      parameters := pchar('"Send Email Alone" "DLG_SHOW" "'
                           +DMEmails.EmailAddressesSendHost.AsString+'"  "'
                           +DMEmails.EmailAddressesSendPort.AsString+'"');
      if DMEmails.EmailAddressesAuthenticationType.AsString = 'None' then
         parameters := pchar(parameters + ' "SSL_NO"')
      else
         parameters := pchar(parameters + ' "SSL_YES"');
      parameters := pchar(parameters +' "'
                           +DMEmails.EmailAddressesUserName.AsString+'"  "'
                           +DMEmails.EmailAddressesPassWord.AsString+'"  "'
                           +DMEmails.EmailAddressesEmailAddress.AsString+'" "" "" "" "'
                           +'ece-'+ sbj +'" "'
                           +emailBody.Text+'" "'
                           +'X-ECE_SEND$ 1.01#X-ECE-GEN-DATE$ Tue, 19 Aug 2014 11:46:01 GMT'+'" "'
                           +inputFile+'"');

      //   parameters := pchar(parameters + ' "'+attachments.Strings[i]+'"');
      if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe')then
         ShellExecute(handle, 'open', pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe'), parameters, nil, SW_SHOWNORMAL)
      else
         ShowMessage('������ ����� ����� ���� ���'+'  '+ 'ServiceApp.exe');
      
  end;

/////// End of Outlook
end;

function TSentLetterInputForm.GetEmail: String;
begin
  Result:='';
  QGetEmail.Close;
  QGetEmail.SQL.Clear;
  QGetEmail.SQL.Add('SELECT Email FROM Users WHERE Id='+IntToStr(_UserID));
  QGetEmail.Open;
  if not QGetEmail.IsEmpty then
     if Trim(QGetEmailEmail.AsString)<>'' then
          Result:=QGetEmail.FieldValues['Email'];
end;

procedure TSentLetterInputForm.ConvertANSIFileToUTF8File(AInputFileName, AOutputFileName: TFileName);
var
  Strings: TStrings;
begin
  Strings := TStringList.Create;
  try
    Strings.LoadFromFile(AInputFileName);
    Strings.Text := UTF8Encode(Strings.Text);
    Strings.SaveToFile(AOutputFileName);
  finally
    Strings.Free;
  end;
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

procedure TSentLetterInputForm.UserMemoClick(Sender: TObject);
begin
  inherited;
 {  if UserMemo.YCheckBox.Checked then
      UserMemo.Height := UserMemo.MaxHeight
   else
      UserMemo.Height := UserMemo.MinHeight;}
end;

procedure TSentLetterInputForm.ASendFaxExecute(Sender: TObject);
var
   DocName, Subject, SenderName, FileName : string;
   senderApp, parameters : pAnsiChar;
begin
  inherited;
   senderApp := pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe');
   DocName := DBEIndicatorInnerNo.Text;
   Subject := DBMemo2.Text;
   SenderName := DBLkCBFormOrgTitle.Text;
  //TO DO       convert word document to pdf and save in hdd and ...
   FileName := SignedDoc(select_LetterLetterID.AsInteger);

   parameters := pchar('"Send Fax" "'+DocName+'"  "'+Subject+'"  "'+FileName+'"  "'+SenderName+'" ');
   if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe')and (FileExists(FileName))then
      ShellExecute(handle, 'open', senderApp, parameters, nil, SW_SHOWNORMAL);
end;

procedure TSentLetterInputForm.N9Click(Sender: TObject);
begin
  inherited;
   ASendFaxExecute(nil);
end;

procedure TSentLetterInputForm.DBEdit9Enter(Sender: TObject);
begin
  inherited;
   prewNum := DBEdit9.Text;
end;

procedure TSentLetterInputForm.btnFollowRetroactionLetterClick(
  Sender: TObject);
begin
  inherited;
  //Add Sanaye 950306
  //����� ���� ����� ��� � ���� �� ����
  if Select_Letter.State in [dsInsert , dsEdit] then
  begin
    ShowMessage('����� ������� �� ����� ������ ');
    Abort;
  end;

  frmFollowRetroactionLetter := TfrmFollowRetroactionLetter.Create(Application);
  frmFollowRetroactionLetter._FR_LetterID := Select_LetterLetterID.AsInteger;
  frmFollowRetroactionLetter.ShowModal;
  //End Sanaye...
end;

end.
