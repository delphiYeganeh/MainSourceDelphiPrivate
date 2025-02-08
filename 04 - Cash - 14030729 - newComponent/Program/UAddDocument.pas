unit UAddDocument;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages, MssSearchPro, KimiyaEdit,ExportToWord;


type
  TFrAddDocument= class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetDelete: TDataSetDelete;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action12: TAction;
    Aenter: TAction;
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
    LblSubject: TLabel;
    Image1: TImage;
    LblDocument: TLabel;
    DBEIncommingNO: TDBEdit;
    GBMemo: TGroupBox;
    DBMemo2: TDBMemo;
    Panel1: TPanel;
    SBScanImage: TSpeedButton;
    BBExportToWord: TSpeedButton;
    SpeedButton110: TSpeedButton;
    ActionToolBar1: TActionToolBar;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    AttachTitle: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Select_Letter: TADOStoredProc;
    Select_LetterFromResponsibleStafferTitle: TWideStringField;
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
    Select_LetterFromStaffer: TWideStringField;
    Select_LetterUserTitle: TWideStringField;
    Select_LetterUserTableTitle: TStringField;
    Select_LetterUserTableID: TIntegerField;
    DBENumberOfPage: TDBEdit;
    LblDate: TLabel;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    Select_LetterUserMemo1: TWideStringField;
    Select_LetterUserMemo2: TWideStringField;
    LBUserMemo2: TLabel;
    LBUserMemo1: TLabel;
    LBUserMemo3: TLabel;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    DBEMemo: TDBEdit;
    Select_LetterLinked_LetterID: TIntegerField;
    EdtIndicatorID2: TEdit;
    SpeedButton2: TSpeedButton;
    SBArchive: TSpeedButton;
    Label3: TLabel;
    Label5: TLabel;
    DBEVersionNumber: TDBEdit;
    DBSDVersionDate: TDBShamsiDateEdit;
    Select_LetterVersionDate: TStringField;
    Select_LetterVersionNumber: TStringField;
    Label7: TLabel;
    Select_LetterIncommingMiladiDate_Calc: TStringField;
    DBEIncommingMiladiDate_Calc: TDBEdit;
    SpeedButton12: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SBUserMemo: TSpeedButton;
    SBUserMemo1: TSpeedButton;
    SBUserMemo2: TSpeedButton;
    Select_LetterLetterRecommites: TWideStringField;
    Select_LetterLastUpdate: TDateTimeField;
    Select_LetterSendStatusID: TWordField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterColor: TIntegerField;
    ChBoIncommingNO: TCheckBox;
    SBFarsi: TSpeedButton;
    SBEnglish: TSpeedButton;
    SpeedButton5: TSpeedButton;
    acLetterCumunications: TAction;
    SpeedButton6: TSpeedButton;
    MssSearchPro3: TMssSearchPro;
    MssSearchPro2: TMssSearchPro;
    MssSearchPro1: TMssSearchPro;
    QMemo: TADOQuery;
    dsQUserMemo: TDataSource;
    YDBUserMemo1: TYDBGrid;
    UserMemo1: TEdit;
    UserMemo2: TEdit;
    dsQUserMemo1: TDataSource;
    dsQUserMemo2: TDataSource;
    YDBUserMemo2: TYDBGrid;
    UserMemo3: TEdit;
    YDBUserMemo3: TYDBGrid;
    QTmp: TADOQuery;
    QIns3Optional: TADOQuery;
    btnRelatedLetters: TSpeedButton;
    sp_AutomationLetters_by_ArchiveLetterID: TADOStoredProc;
    sp_AutomationLetters_by_ArchiveLetterIDDabirIndicatorID: TIntegerField;
    sp_AutomationLetters_by_ArchiveLetterIDDabirMyear: TWordField;
    sp_AutomationLetters_by_ArchiveLetterIDDabirKhanehName: TWideStringField;
    sp_AutomationLetters_by_ArchiveLetterIDisDocument: TBooleanField;
    sp_AutomationLetters_by_ArchiveLetterIDArchiveID: TIntegerField;
    sp_AutomationLetters_by_ArchiveLetterIDArchiveLetterID: TIntegerField;
    sp_AutomationLetters_by_ArchiveLetterIDDocPart: TWideStringField;
    DBSubject: TDBEdit;
    Select_LetterSubject: TWideStringField;
    Action1: TAction;
    xpTabSheet2: TxpTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    xpBitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    xpBitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label8: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label9: TLabel;
    Edit1: TEdit;
    adoExcel_Select: TADOStoredProc;
    adoExcel_SelectID: TIntegerField;
    adoExcel_SelectLetterID: TIntegerField;
    adoExcel_SelectF1: TStringField;
    adoExcel_SelectF2: TStringField;
    adoExcel_SelectF3: TStringField;
    adoExcel_SelectF4: TStringField;
    adoExcel_SelectF5: TStringField;
    adoExcel_SelectF6: TStringField;
    adoExcel_SelectF7: TStringField;
    adoExcel_SelectF8: TStringField;
    adoExcel_SelectF9: TStringField;
    adoExcel_SelectF10: TStringField;
    adoExcel_SelectF11: TStringField;
    adoExcel_SelectF12: TStringField;
    adoExcel_SelectF13: TStringField;
    adoExcel_SelectF14: TStringField;
    adoExcel_SelectF15: TStringField;
    adoExcel_SelectF16: TStringField;
    adoExcel_SelectF17: TStringField;
    adoExcel_SelectF18: TStringField;
    adoExcel_SelectF19: TStringField;
    adoExcel_SelectF20: TStringField;
    adoExcel_SelectF21: TStringField;
    adoExcel_SelectF22: TStringField;
    adoExcel_SelectF23: TStringField;
    adoExcel_SelectF24: TStringField;
    adoExcel_SelectF25: TStringField;
    adoExcel_SelectF26: TStringField;
    adoExcel_SelectF27: TStringField;
    adoExcel_SelectF28: TStringField;
    adoExcel_SelectF29: TStringField;
    adoExcel_SelectF30: TStringField;
    adoExcel_SelectF31: TStringField;
    adoExcel_SelectF32: TStringField;
    adoExcel_SelectF33: TStringField;
    adoExcel_SelectIDNumber: TIntegerField;
    dsExcel_Select: TDataSource;
    adoExcel_SelectDateModify: TDateTimeField;
    YDBGrid1: TYDBGrid;
    adoDelete: TADOStoredProc;
    adoAccessFroDelete: TADOQuery;
    adoAccessFroDeleteAccessID: TIntegerField;
    Button1: TButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetLetter(LetterID:integer);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure DBEIncommingNOExit(Sender: TObject);
    procedure DBShamsiDateEditEnter(Sender: TObject);
    procedure AenterExecute(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure UpdateDblookup(All:Boolean);
    procedure DataSetEditExecute(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToOrgTitleEditChange(Sender: TObject);
    procedure ToOrgTitleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGToORGCellClick(Column: TColumn);
    procedure GetID(IsFrom:boolean);
    procedure DBMemo2Exit(Sender: TObject);
    procedure edit_FromOrgIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SBScanImageClick(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure BBExportToWordClick(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure SpeedButton110Click(Sender: TObject);
    procedure FormDataShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Select_LetterAfterScroll(DataSet: TDataSet);
    procedure EdtIndicatorID2Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SBArchiveClick(Sender: TObject);
    procedure Select_LetterCalcFields(DataSet: TDataSet);
    procedure DBShamsiDateEdit1Exit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure ToOrgTitleEditKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SBUserMemoClick(Sender: TObject);
    procedure SBUserMemo1Click(Sender: TObject);
    procedure SBUserMemo2Click(Sender: TObject);
    procedure UserMemoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEUserMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEUserMemo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtIndicatorID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEIncommingNOKeyPress(Sender: TObject; var Key: Char);
    procedure SBEnglishClick(Sender: TObject);
    procedure SBFarsiClick(Sender: TObject);
    procedure acLetterCumunicationsExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure UserMemo1Change(Sender: TObject);
    procedure UserMemo1Exit(Sender: TObject);
    procedure UserMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UserMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure YDBUserMemo1CellClick(Column: TColumn);
    procedure YDBUserMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YDBUserMemo1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure UserMemo2Change(Sender: TObject);
    procedure UserMemo2Exit(Sender: TObject);
    procedure UserMemo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UserMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure YDBUserMemo2CellClick(Column: TColumn);
    procedure YDBUserMemo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YDBUserMemo2NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure UserMemo3Change(Sender: TObject);
    procedure UserMemo3Exit(Sender: TObject);
    procedure UserMemo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UserMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure YDBUserMemo3CellClick(Column: TColumn);
    procedure YDBUserMemo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YDBUserMemo3NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure GroupBox4Click(Sender: TObject);
    procedure btnRelatedLettersClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure YDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure adoExcel_SelectBeforeInsert(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    FLinkedLetterID: Integer;
    AQry : TADOQuery;
    UserIdCreator : Integer;
    _YearTmp : Integer;
    procedure SetLinkedLetterID(const Value: Integer);
    procedure ClearUserMemoEdit;
    procedure Insert3OptionalFeild;
    { Private declarations }
  public
    LetterFormat : Byte;
    LetterDataID : integer;
    ArchiveFolderID : integer;
    property LinkedLetterID:Integer read FLinkedLetterID write SetLinkedLetterID;
  end;

var
  FrAddDocument: TFrAddDocument;

implementation

Uses AddDocumentDM , Dmu , YShamsiDate, FromOrgU,  FixedTableF, QuickSearch, UMain,
     FromOrgDialog, DuplicateNo,  ExactCopy, BusinessLayer, Math,
     UaddLetterData,  UUserTable_Input, SearchFM,
     ShowAddDocFm, ScanImageFm, LetterArchive, StrUtils, LetterEditFm,
  AlarmFm, LetterRalationFm, SecretariatDocSearchUnit, FFillUserMemoUnit,
  RelatedLetters;

{$R *.dfm}

procedure TFrAddDocument.SpeedButton3Click(Sender: TObject);
begin
   inherited;
   //MainForm.ShowFixTables;
   {Ranjbar 89.07.08 ID=12}
   FmLetterEdit := TFmLetterEdit.Create(Self);
   FmLetterEdit.LetterID := Select_LetterLetterID.AsInteger;
   FmLetterEdit.UsersID := 0;
   FmLetterEdit.ShowModal;
   //---
end;

procedure TFrAddDocument.UpdateDblookup(All:Boolean);
begin
   inherited;
//feri
//   ToOrgTitleEdit.OnChange:=nil;
//   ToOrgTitleEdit.Text:=select_LettersenderTitle.AsString;
//   ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

   UserMemo1.OnChange:=nil;
   UserMemo1.Text:=Select_LetterUserMemo.AsString;
   UserMemo1.OnChange:=UserMemo1Change;

   UserMemo2.OnChange:=nil;
   UserMemo2.Text:=Select_LetterUserMemo1.AsString;
   UserMemo2.OnChange:=UserMemo2Change;

   UserMemo3.OnChange:=nil;
   UserMemo3.Text:=Select_LetterUserMemo2.AsString;
   UserMemo3.OnChange:=UserMemo3Change;


   if All then
      Select_LetterTostaffer.AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
end;

procedure TFrAddDocument.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
   inherited;
   with dm do
   begin
      temp:=ActiveControl;

      ActiveControl:=temp;
      mainPanel.Color:=GetValue(1007);
      UpdateDblookup(false);
   end;
end;

procedure TFrAddDocument.FormClose(Sender: TObject;
var
   Action: TCloseAction);
begin
   inherited;
   if not DataSetEdit.Enabled  and DataSetEdit.Visible then
      if messageShow(27,true) then
         DataSetPost.Execute
      else
         DataSetCancel.Execute;
    dm.Tables.Filter:='';
    dm.Tables.Filtered:=False;
    FreeAndNil(DMAddDocument);
end;

procedure TFrAddDocument.GetLetter(LetterID: integer);
begin
  inherited;
   with select_Letter do
    begin
     close;
     Parameters.ParamByName('@LetterID').Value:=LetterID;
     open;
     if Recordcount>0 then
      LetterFormat:=select_Letterletterformat.AsInteger;
    end;
end;

procedure TFrAddDocument.DBLookupComboBox2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(true);
end;

procedure TFrAddDocument.Action11Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddDocument.DBEIncommingNOExit(Sender: TObject);
 var sameLetterID:integer;
begin
  inherited;
if DSForm.DataSet.State=dsInsert then
if trim(TDBEdit(Sender).Text)<>'' then
 begin
   sameLetterID:=Exec_get_LetterID_ByInCommingNo(trim(TDBEdit(Sender).Text),1,0,dm.SecID);
   if (sameLetterID<>0) and (select_LetterLetterID.AsInteger<>sameLetterID) then
     begin
      FDuplicate:=TFDuplicate.Create(Application);
      FDuplicate.Letterid:=sameLetterID;
      FDuplicate.ShowModal;
     end;
 end;
TEditExit(Sender);
end;

procedure TFrAddDocument.DBShamsiDateEditEnter(Sender: TObject);
begin
  inherited;
TCustomEdit(sender).SelStart:=8;
TCustomEdit(sender).SelLength:=2;
TEditEnter(Sender);
end;

procedure TFrAddDocument.AenterExecute(Sender: TObject);
begin
  inherited;
if not DataSetEdit.Enabled then
//feri
//  if DBGToORG.Focused then
//   begin
//    ToOrgTitleEdit.SetFocus;
//    ToOrgTitleEdit.OnChange:=nil;
//    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
//    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
//
//    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
//    DBGToORG.Hide;
//   end else
// SelectNext(ActiveControl,true,true);
end;

procedure TFrAddDocument.DataSetInsertExecute(Sender: TObject);
begin
   inherited;
   ClearUserMemoEdit;
   if not Dm.GetActionAccess(TAction(SENDER).Name,TAG) THEN
      Exit;

   if not DataSetInsert.Enabled then
   begin
      ShowMsg(63);
      Exit;
   end;

   Try
      DBEIncommingNO.SetFocus;
   Except
   End;

   with dm,DSForm.DataSet do
   begin
      insert;
      FieldByName('RegistrationDate').Value:= _Today;
      FieldByName('RegistrationTime').Value:= GetServerTime;
      FieldByName('IndicatorID').Value     := LastIndicatorID(1,LetterFormat);
      FieldByName('ClassificationID').Value:= DefaultRClassificationID;
      FieldByName('UrgencyID').Value       := DefaultRUrgencyID    ;
      FieldByName('NumberOfPage').Value    := DefaultNumberOfPage ;
      FieldByName('ReceiveTypeID').Value   := DefaultRReceiveTypeID;
      FieldByName('incommingdate').Value   := FieldByName('RegistrationDate').AsString;
      FieldByName('FromOrgID').AsInteger   := DefaultRFromOrgId;
      FieldByName('MYear').AsInteger       := dm.CurrentMyear;
      FieldByName('LetterFormat').AsInteger:= LetterFormat;
      FieldByName('Secretariatid').AsInteger:= Dm.SecId;
      FieldByName('Userid').AsInteger:= _userid;
      FieldByName('letter_type').AsInteger:= 1;
      {Ranjbar}
      FieldByName('Finalized').AsBoolean:= True;
      //---
      //ToOrgTitleEdit.Text:='' ; feri
  end;
  {Ranjbar 89.06.23 ID=62}
   DBShamsiDateEdit1.Enabled := True;
   //---
end;

procedure TFrAddDocument.Select_LetterBeforePost(
  DataSet: TDataSet);
begin
   inherited;

   Insert3OptionalFeild;

   if DataSet.State=dsEdit then
   begin
       Select_LetterUserMemo.AsString:=Trim(UserMemo1.Text);
       Select_LetterUserMemo1.AsString:=Trim(UserMemo2.Text);
       Select_LetterUserMemo2.AsString:=Trim(UserMemo3.Text);
   end;

   with DataSet do
      if State = dsinsert  then
      begin
         FieldByName('IndicatorID').Value:=dm.LastIndicatorID(1,LetterFormat);

         {Ranjbar 89.07.08 ID=12}
         //LetterEdit À»   €ÌÌ—«  «⁄„«· ‘œÂ —ÊÌ ”‰œ œ— ÃœÊ·
         Dm.Insert_LetterEdit(Select_LetterLetterID.AsInteger,'«ÌÃ«œ Ìﬂ ”‰œ ÃœÌœ');
         //---
      end;

   {Ranjbar 89.07.08 ID=12}
   //LetterEdit À»   €ÌÌ—«  «⁄„«· ‘œÂ —ÊÌ ”‰œ œ— ÃœÊ·
   if DataSet.State=dsEdit then
      Dm.Insert_LetterEdit(Select_LetterLetterID.AsInteger,'ÊÌ—«Ì‘ ”‰œ');
   //---
end;

procedure TFrAddDocument.GetID(IsFrom:boolean);
begin
  inherited;
//feri
//if not DataSetEdit.Enabled then
//begin
//   FromOrgForm:=TFromOrgForm.Create(Application);
//   if IsFrom then
//    FromOrgForm.outerOrg.Checked:=false;
//   FromOrgForm.ShowModal;
//   if FromOrgForm.done then
//    if ISFrom then
//      begin
//       select_LetterFromOrgID.AsInteger:=_ResultOrgID;
//      end
//    else
//      begin
//       DSForm.DataSet.FieldByName('ToOrgID').AsInteger:=_ResultOrgID;
//       ToOrgTitleEdit.OnChange:=nil;
//       ToOrgTitleEdit.Text:=_ResultOrgTitle;
//       ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
//       DSForm.DataSet.FieldByName('Tostaffer').AsString:=_ResultOrgRespon;
//      end;
//end
//else
//  MainForm.FromOrgOrganize
end;
procedure TFrAddDocument.ToOrgTitleEditExit(Sender: TObject);
var s:string;
begin
   inherited;
//feri
//   S := YeganehTrim(ToOrgTitleEdit.Text);
//   if not DataSetEdit.Enabled then
//      if is_integer(ToOrgTitleEdit.Text) then
//         with dm,Toorganizations do
//         begin
//            Close;
//            CommandText:='Select * from Fromorganizations where code='''+s+'''';
//            open;
//            if recordcount=0 then
//               ShowMsg(64)
//            else
//               begin
//                  select_LetterToorgid.AsInteger:=ToorganizationsID.AsInteger;
//                  ToOrgTitleEdit.OnChange:=nil;
//                  ToOrgTitleEdit.Text:=ToorganizationsTitle.AsString;
//                  ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
//                  select_LetterTostaffer.AsString:= ToorganizationsResponsibleStaffer.AsString;
//               end;
//         end;
//
//   if not DBGToORG.Focused then
//      DBGToORG.Hide;
end;

procedure TFrAddDocument.DataSetDeleteExecute(Sender: TObject);
begin
   inherited;

   if not Dm.GetActionAccess(TAction(SENDER).Name,TAG) then
      Exit;

   if messageShow(38,True) then
   begin
      Exec_delete_Letter(select_LetterLetterID.AsInteger,dm.LastIndicatorID(1,3));
      GetLetter(0);
      UpdateDblookup(False);

      {Ranjbar 89.06.22 ID=57} //Õ–› «ÿ·«⁄«  ”‰œ „— »ÿ
      Select_LetterAfterScroll(Select_Letter);
      //---
   end;
   {Ranjbar 89.06.23 ID=62}
   DBShamsiDateEdit1.Enabled := False;
   //---
end;

procedure TFrAddDocument.DataSetPostExecute(Sender: TObject);
 var IsInsert: boolean;
begin
   inherited;

   //ShowMessage('1');
//   DBEIncommingNO.SetFocus;
   //ShowMessage('2');
//   ShowMessage(Select_LetterMemo.AsString);
//   ShowMessage(DBMemo2.Text);
//   if Trim(Select_LetterMemo.AsString)='' then
   if Trim(DBMemo2.Text)='' then
   begin
      ShowMsg(66);
      DBMemo2.SetFocus;
      Abort;
   end;
   //---

   IF NOT dm.GetActionAccess(TAction(SENDER).Name,Tag) THEN
   exit;

   IsInsert:=false;
   with DSForm.DataSet do
   begin
      if state=dsinsert  then
      begin
         FieldByName('IndicatorID').Value:=dm.LastIndicatorID(1,LetterFormat);
         IsInsert:=true;
      end;

      //FieldByName('ToOrgID').AsInteger:=dm.NewToOrganization(ToOrgTitleEdit.text,''); feri

      FieldByName('Memo').AsString:= DBMemo2.Text;
      FieldByName('UserMemo').AsString:=UserMemo1.Text;
      FieldByName('UserMemo1').AsString:=UserMemo2.Text;
      FieldByName('UserMemo2').AsString:=UserMemo3.Text;
      FieldByName('AttachTitle').AsString:= AttachTitle.Text;
      Post;
      {Ranjbar 88.03.27}
         //ArchiveFolderID := DSForm.DataSet.fieldbyname('folderid').AsInteger;
      if (MainForm.ArchiveFolderID > 0) then
         begin
          Exec_insert_LetterArchiveFolder(MainForm.ArchiveFolderID,Select_LetterLetterID.AsInteger,_Today,1,'');
          //ArchiveFolderID:=0;
         end;
      //---
   end;
   GetLetter(select_LetterLetterID.AsInteger);

   try
      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(3004,select_LetterLetterID.AsInteger);
      Exec_insert_UserLog(DataSetPost.Name,select_LetterLetterID.AsInteger);
      //---
   except
   end;
   {Ranjbar 89.06.23 ID=62}
   DBShamsiDateEdit1.Enabled := False;
   //---
end;


procedure TFrAddDocument.DataSetCancelExecute(Sender: TObject);
begin
   inherited;
   ClearUserMemoEdit;
   IF NOT dm.GetActionAccess(TAction(SENDER).Name,TAG) THEN
      exit;

   DSForm.DataSet.Cancel;
   UpdateDblookup(false);
   {Ranjbar 89.06.23 ID=62}
   DBShamsiDateEdit1.Enabled := False;
   //---
end;

procedure TFrAddDocument.DataSetFirstExecute(Sender: TObject);
begin
   inherited;
   DSForm.DataSet.First;
   UpdateDblookup(false);
end;

procedure TFrAddDocument.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;
  UpdateDblookup(false);
end;

procedure TFrAddDocument.DataSetEditExecute(Sender: TObject);
begin
   inherited;

   IF NOT dm.GetActionAccess(TAction(SENDER).Name,Tag) THEN
      exit;

   DSForm.DataSet.Edit;
   UpdateDblookup(false);
   
   {Ranjbar 89.06.23 ID=62}
   DBShamsiDateEdit1.Enabled := True;
   //---
end;

procedure TFrAddDocument.SpeedButton10Click(Sender: TObject);
begin
  inherited;
GetID(false);
end;

procedure TFrAddDocument.DBGToORGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TFrAddDocument.ToOrgTitleEditChange(Sender: TObject);
Var
   S,T:string;
begin
   inherited;
   
   if DataSetEdit.Enabled then
      Exit;

   // ⁄ÊÌ÷ Õ—› ﬂ   
   S := Replace(YeganehTrim(DBSubject.Text),char(152),'yy'); //feri
   S := Replace(s,'ﬂ','yy');
   if is_integer(s) then
      T := 'ID'
   else
      T := ' replace(replace(title,char(152),''yy''),''ﬂ'',''yy'')';

//feri
//   with Dm.ToOrganizations do
//      if length(s) >= 2 then
//      begin
//         Close;
//         CommandText := 'Select * from Fromorganizations where ' + T + ' like ''' + S + '%''';
//         DBGToORG.Show;
//         Open;
//      end;
end;

procedure TFrAddDocument.ToOrgTitleEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
//feri
//   if not DataSetEdit.Enabled then
//      if (key=vk_down) or (key=vk_up) then
//      begin
//         if ssalt in shift then
//            DBGToORG.Visible := not DBGToORG.Visible
//         else
//            DBGToORG.SetFocus;
//      end;
end;

procedure TFrAddDocument.DBGToORGCellClick(Column: TColumn);
begin
  inherited;
//feri
// if not DataSetEdit.Enabled then
//  begin
//    ToOrgTitleEdit.OnChange:=nil;
//    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
//    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
//    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.Toorganizations.FIELDBYNAME('ResponsibleStaffer').AsString;
//    DBGToORG.Hide;
//  end;
end;

procedure TFrAddDocument.DBMemo2Exit(Sender: TObject);
begin
   inherited;
   TEditExit(sender);

   {Ranjbar 89.06.22 ID=60}
   {if trim(TDBMemo(Sender).Text)='' then
   begin
      ShowMsg(66);
      TDBMemo(sender).SetFocus;
   end;}
end;

procedure TFrAddDocument.edit_FromOrgIDExit(Sender: TObject);
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

procedure TFrAddDocument.FormCreate(Sender: TObject);

begin
   inherited;
   DMAddDocument := TDMAddDocument.Create(Self);
   LetterFormat:=1;
   dm.Tables.Filter:='TableType=3';
   dm.Tables.Filtered:=True;

  _YearTmp := strtoint(copy(_Today,1,4))
end;

procedure TFrAddDocument.SpeedButton12Click(Sender: TObject);
begin
   inherited;
   {if not DataSetEdit.Enabled then
   begin
      ShowMsg(67);
      Exit;
   end;
   ExactCopyF := TExactCopyF.Create(Application);
   ExactCopyF.LetterID:=select_LetterLetterID.AsInteger;
   ExactCopyF.TypeId:=1;
   ExactCopyF.ShowModal; }
end;

procedure TFrAddDocument.SBScanImageClick(Sender: TObject);
begin
   inherited;
   Dm.SelectLetter := Select_LetterLetterID.AsString;
   if Not Dm.GetActionAccess('Apicture',1) then
   begin
      ShowMessage('ﬂ«—»— ê—«„Ì ‘„« œ” —”Ì »Â «Ì‰ ›—„ ‰œ«—Ìœ');
      Abort;
   end;

   with DSForm.DataSet do
      if DataSetEdit.Visible then  // bug ... when user dont Editable
      if not DataSetEdit.Enabled then
      begin
         ShowMsg(67);
         Exit;
      end;


   {Ranjbar Ver 5
   if dm.HasJpg then
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
   end;  }

   Try
      Dm.OpenqSelectedColor(Select_LetterLetterID.AsInteger);
      FmScanImage := TFmScanImage.Create(Nil);
      FmScanImage.LetterID := Select_LetterLetterID.AsInteger;
      FmScanImage.ShowModal;
   Finally

   End;

   Try
     FreeAndNil(FmScanImage);
      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(1021,Select_LetterLetterID.AsInteger);
     // Exec_insert_UserLog(SBScanImage.Name,Select_LetterLetterID.AsInteger);
      //---
   Except
   End;
   //---
end;

procedure TFrAddDocument.DBGToORGNeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
   inherited;
   if dm.ToorganizationsIsInnerOrg.AsBoolean then
      Color:=$00FFE6FF
   else
      Color:=$00FFD3A8;
end;

procedure TFrAddDocument.BBExportToWordClick(Sender: TObject);
begin
   inherited;
   if DataSetEdit.Visible then  // bug ... when user dont Editable
   if not DataSetEdit.Enabled then
   begin
      ShowMsg(67);
      exit;
   end;
   
   if _Word_Is_Opened then
   begin
      messageShow(86,FALSE) ;
      exit;
   end;

   with select_Letter do
      if not dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,false) then
      begin
         FExportToWord:=TFExportToWord.Create(Application);
         with FExportToWord do
         begin
            Letterid:=FieldByName('Letterid').AsInteger;
            LetterFormat:=FieldByName('LetterFormat').AsInteger;
            if not dm.Use_Template then
            begin
               Show;
               OpenFileClick(OpenFile);
            end
               else
                  ShowModal;
         end;
      end;

   Try
      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(1024,select_LetterLetterID.AsInteger);
      Exec_insert_UserLog(BBExportToWord.Name,select_LetterLetterID.AsInteger);
      //---
   Except
   End;

end;

procedure TFrAddDocument.ActionManagerExecute(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  
  if action.tag<>4 then
     try
        {Ranjbar 89.06.06 ID=3}
        //Exec_insert_UserLog(3000+Action.Tag,select_LetterLetterID.AsInteger);
        Exec_insert_UserLog(Action.Name,select_LetterLetterID.AsInteger);
        //---
     except
     end;
end;

procedure TFrAddDocument.SpeedButton110Click(Sender: TObject);
begin
   inherited;
   // ⁄ÌÌ‰ ”ÿÕ œ” —”Ì
   if Not Dm.GetActionAccess(MainForm.AaddLetterData.Name,MainForm.Tag) then
   begin
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ‘„« »Â «Ì‰ ﬁ”„  œ” —”Ì ‰œ«—Ìœ',[mbOK],mtInformation);
      Abort;
   end;

   with DSForm.DataSet do
   begin
      if DataSetEdit.Visible then  // bug ... when user dont Editable   
      if not DataSetEdit.Enabled then
      begin
         ShowMsg(67);
         Exit;
      end;
      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID := Select_LetterLetterID.AsInteger;
      FraddLetterData.ShowModal;
   end;
end;

procedure TFrAddDocument.FormDataShow(Sender: TObject);
begin
   inherited;
   FrUserTable_Input:= TFrUserTable_Input.Create(Application);
   FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
   FrUserTable_Input.ShowInPanel(FormData);
     if (not DataSetEdit.Enabled) or (not DataSetInsert.Enabled) then
        begin
           FrUserTable_Input.xpBitBtn1.Enabled:=false;
           FrUserTable_Input.xpBitBtn2.Enabled:=false;
        end
end;

procedure TFrAddDocument.FormShow(Sender: TObject);
begin
   inherited;
   if Dm.EditMode then
    begin
     AQry := TADOQuery.Create(Self);
     try
      AQry.Connection := Dm.YeganehConnection;
      AQry.Close;
      AQry.SQL.Text := 'Select UserID From Letter Where LetterId = ' + Dm.SelectLetter;
      AQry.Open;
      UserIdCreator := AQry.FieldByName('UserId').AsInteger;
     finally
      FreeAndNil(AQry);
     end;
     if not Dm.UsersShowAllDoc.AsBoolean then
       if Dm.UsersId.AsInteger <> UserIdCreator then
        begin
         DataSetEdit.Visible := False;
         DataSetCancelExecute(Sender);
        end;
    end;

    if LetterDataID > 0 then
   begin
         with DSForm.DataSet do
         begin
         FraddLetterData := TFraddLetterData.Create(Application);
         FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;
         FrAddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
         FrAddLetterData.LetterDataID := LetterDataID;
         FraddLetterData.ShowModal;
      end;
   end;

   with dm do
   begin
     if UserMemo1<>''    then  LBUserMemo1.Caption := UserMemo1;
     if UserMemo2<>''    then  LBUserMemo2.Caption := UserMemo2;
     if UserMemo3<>''    then  LBUserMemo3.Caption := UserMemo3;
     if UserSubject<>''  then  LblSubject.Caption := UserSubject;
     if UserMainMemo<>'' then  GBMemo.Caption     := UserMainMemo;
   end;

   {Ranjbar 89.06.23 ID=62}
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      DBShamsiDateEdit1.Enabled := False;
   //---
   sp_AutomationLetters_by_ArchiveLetterID.Close;
   sp_AutomationLetters_by_ArchiveLetterID.Parameters.ParamByName('@ArchiveLetterId').Value := Select_LetterLetterID.AsInteger;
   sp_AutomationLetters_by_ArchiveLetterID.Open;
   if sp_AutomationLetters_by_ArchiveLetterID.IsEmpty then
      btnRelatedLetters.Enabled := false
   else
      btnRelatedLetters.Enabled := true;

//********************
   Panel4.Color := $00FFF2D7;
   Panel3.Color := $00E8F3FF;
//********************

  adoExcel_Select.Close;
  adoExcel_Select.Parameters.ParamByName('@LetterID').Value := dm.Get_All_LetterLetterID.AsInteger;
  adoExcel_Select.Parameters.ParamByName('@where').Value := 'NUll';
  adoExcel_Select.Open;
  //adoExcel_Select.ExecProc;
end;

procedure TFrAddDocument.SpeedButton1Click(Sender: TObject);
begin
  inherited;
//  With DMAddDocument do
//  begin
//     if Not (Select_Letter.State in [dsEdit,dsInsert]) then Exit;
//     Try
//        QrSrchLinked.Close;
//        QrSrchLinked.Parameters.ParamByName('Secretariatid').Value := _DefaultSec;
//        QrSrchLinked.Parameters.ParamByName('mYear1').Value := dm.CurrentMyear - 1;//”«· ﬁ»·
//        QrSrchLinked.Parameters.ParamByName('mYear2').Value := dm.CurrentMyear;
//        QrSrchLinked.Open;
//
//        if FmSearch.GetSearchValue(QrSrchLinked,'LetterID','IndicatorID',' ',450,500)<>'0' then
//        begin
//           Select_LetterLinked_LetterID.AsInteger := QrSrchLinkedLetterID.AsInteger;
//           Select_LetterAfterScroll(Select_Letter);
//        end;
        if Not (Select_Letter.State in [dsEdit,dsInsert]) then
        begin
          ShowMsgString('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
          Exit;
        end;
        FmSecretariatDocSearch:=TFmSecretariatDocSearch.Create(Self);
        FmSecretariatDocSearch.ShowModal;
        if LinkedLetterID>0 then
        begin
           Select_LetterLinked_LetterID.AsInteger := LinkedLetterID;
           Select_LetterAfterScroll(Select_Letter);
        end;

//     Finally
//     End;
 // end;
end;

procedure TFrAddDocument.Select_LetterAfterScroll(DataSet: TDataSet);
begin
   inherited;
   With DMAddDocument do
   begin
      QrLinked.Close;
      QrLinked.Parameters.ParamByName('LetterID').Value := Select_LetterLinked_LetterID.AsInteger;
      QrLinked.Open;
      EdtIndicatorID2.Text := Trim(QrLinkedIndicatorID.AsString);
   end;
end;

procedure TFrAddDocument.EdtIndicatorID2Exit(Sender: TObject);
begin
   inherited;
   if Not (Select_Letter.State in [dsEdit,dsInsert]) then
      Exit;

   With DMAddDocument do
   if Trim(EdtIndicatorID2.Text) <> '' then
   begin
      QrSrchIndic.Close;
      QrSrchIndic.Parameters.ParamByName('IndicatorID').Value := StrToIntDef(EdtIndicatorID2.Text,0);
      QrSrchIndic.Open;
      if QrSrchIndic.RecordCount > 0 then
      begin
         Select_LetterLinked_LetterID.AsInteger := QrSrchIndicLetterID.AsInteger;
         Select_LetterAfterScroll(Select_Letter);
      end;
   end;
end;

procedure TFrAddDocument.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   if (Select_LetterLetterID.AsInteger <= 0)or(Select_LetterLinked_LetterID.AsInteger <= 0) then
   begin
      MBaseForm.MessageShowString('ÂÌç'+' '+_DocumentCaption+'Ì'+' '+'Ì«›  ‰‘œ', False);
      Exit;
   end;


   FmShowAddDoc := TFmShowAddDoc.Create(Nil);
   FmShowAddDoc.LetterID := Select_LetterLinked_LetterID.AsInteger;
   FmShowAddDoc.ShowModal;
end;

procedure TFrAddDocument.SBArchiveClick(Sender: TObject);
begin
   inherited;
   if MainForm.AARCHIVE.Enabled then
   begin
       if Select_Letter.State in [dsEdit,dsInsert] then
       begin
          MBaseForm.MessageShowString('·ÿ›« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ', False);
          Exit;
       end;
       with Select_Letter do
       begin
          LetterArchiveform := TLetterArchiveform.Create(application);
          LetterArchiveform.LetterID := Select_LetterLetterID.AsInteger;
          LetterArchiveform.ShowModal;
       end;
   end
   else
      ShowMsgString('»Â »«Ìê«‰Ì ”‰œ œ” —”Ì ‰œ«—Ìœ - »« „œÌ— ”Ì” „ ŒÊœ  „«” »êÌ—Ìœ');
end;

procedure TFrAddDocument.Select_LetterCalcFields(DataSet: TDataSet);
begin
  inherited;
  {Ranjbar 89.05.26 ID=11}
  Select_LetterIncommingMiladiDate_Calc.AsString := MiladiMString(Trim(Select_LetterIncommingdate.AsString))
  //---
end;

procedure TFrAddDocument.DBShamsiDateEdit1Exit(Sender: TObject);
var
   IncommingDate : String;
begin
  inherited;

  if Select_Letter.State in [dsEdit,dsInsert] then
    if StrToIntDef(LeftStr(Trim(Select_LetterIncommingdate.AsString),0),_YearTmp) > 2000 then
    begin
      IncommingDate := Select_LetterIncommingdate.AsString;
      Select_LetterIncommingdate.AsString := MiladiMString(Trim(IncommingDate));
    end;
end;

procedure TFrAddDocument.DBMemo2Enter(Sender: TObject);
begin
   inherited;
//   DBGToORG.Hide; feri
end;

procedure TFrAddDocument.ToOrgTitleEditKeyPress(Sender: TObject;var Key: Char);
begin
   inherited;
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Key := #0;
end;

procedure TFrAddDocument.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.14 ID=20}
   with DSForm.DataSet do
   begin
      if DataSetEdit.Visible then  // bug ... when user dont Editable   
      if not DataSetEdit.Enabled then
      begin
         ShowMsg(67);
         Exit;
      end;
   end;
      
   FmAlarm := TFmAlarm.Create(Self);
   FmAlarm.LetterID := Select_LetterLetterID.AsInteger;
   FmAlarm.ShowModal;
   //---
end;

procedure TFrAddDocument.SBUserMemoClick(Sender: TObject);
var
  OutputID:Integer;
begin
   inherited;
////   if not(Select_Letter.State in [dsEDit,dsInsert]) then
//      Exit;
//
////   With Dm do
////   begin
////      QUserMemo.Close;
////      QUserMemo.SQL.Clear;
////      QUserMemo.SQL.Add('SELECT * FROM UserMemo');
////      QUserMemo.SQL.Add('Where (1=1)');
////      QrUserMemo.SQL.Add('  And(RTrim(LTRim(UserMemo))) <> ''''');
////      if FmSearch.GetSearchValue(QrUserMemo,'LetterID','UserMemo',' ',400,450)<>'0' then
////         Select_LetterUserMemo.AsString := QrUserMemoUserMemo.AsString;
////   end;
//   Dm.RefreshUserMemo;
//   if FmSearch.GetSearchValue(Dm.QUserMemo,'ID','UserMemo',' ',400,450)<>'0' then
//      Select_LetterUserMemo.AsString := Dm.QUserMemoUserMemo.AsString;
   if not(Select_Letter.State in [dsEDit,dsInsert]) then
   begin
//      MssMessage1.MessageType:=MssError;
//      MssMessage1.DialogSize:=460;
//      MssMessage1.execute('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
      Exit;
   end;
    Dm.RefreshUserMemo;
    OutputID:=MssSearchPro3.Execute;
    if OutputID > 0 then
    begin
        QMemo.Close;
        QMemo.SQL.Clear;
        QMemo.SQL.Add('Select UserMemo from UserMemo');
        QMemo.SQL.Add('Where ID='+IntToStr(OutputID));
        QMemo.Open;
        Select_LetterUserMemo.AsString := QMemo.FieldValues['UserMemo'];
    end;

end;

procedure TFrAddDocument.SBUserMemo1Click(Sender: TObject);
var
  OutputID:Integer;
begin
   inherited;
//   if not(Select_Letter.State in [dsEDit,dsInsert]) then
//      Exit;
//
////   With DMAddDocument do
////   begin
////      QrUserMemo1.Close;
////      QrUserMemo1.SQL.Clear;
////      QrUserMemo1.SQL.Add('Select Top 100 LetterID,UserMemo1');
////      QrUserMemo1.SQL.Add('from Letter');
////      QrUserMemo1.SQL.Add('Where (1=1)');
////      QrUserMemo1.SQL.Add('And(RTrim(LTRim(UserMemo1))) <> ''''');
////      if FmSearch.GetSearchValue(QrUserMemo1,'LetterID','UserMemo1',' ',400,450)<>'0' then
////         Select_LetterUserMemo1.AsString := QrUserMemo1UserMemo1.AsString;
////   end;
//   Dm.RefreshUserMemo1;
//   if FmSearch.GetSearchValue(Dm.QUserMemo1,'ID','UserMemo1',' ',400,450)<>'0' then
//      Select_LetterUserMemo1.AsString := Dm.QUserMemo1UserMemo1.AsString;
   if not(Select_Letter.State in [dsEDit,dsInsert]) then
   begin
     // MssMessage1.MessageType:=MssError;
//      MssMessage1.DialogSize:=460;
//      MssMessage1.execute('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
      Exit;
   end;
    Dm.RefreshUserMemo1;
    OutputID:=MssSearchPro2.Execute;
    if OutputID > 0 then
    begin
        QMemo.Close;
        QMemo.SQL.Clear;
        QMemo.SQL.Add('Select UserMemo1 from UserMemo1');
        QMemo.SQL.Add('Where ID='+IntToStr(OutputID));
        QMemo.Open;
        Select_LetterUserMemo1.AsString := QMemo.FieldValues['UserMemo1'];
    end;
end;

procedure TFrAddDocument.SBUserMemo2Click(Sender: TObject);
var
  OutputID:Integer;
begin
   inherited;
//   if not(Select_Letter.State in [dsEDit,dsInsert]) then
//      Exit;
//
////   With DMAddDocument do
////   begin
////      QrUserMemo2.Close;
////      QrUserMemo1.SQL.Clear;
////      QrUserMemo1.SQL.Add('Select Top 100 LetterID,UserMemo2');
////      QrUserMemo1.SQL.Add('from Letter');
////      QrUserMemo1.SQL.Add('Where (1=1)');
////      QrUserMemo1.SQL.Add('And(RTrim(LTRim(UserMemo2))) <> ''''');
////      if FmSearch.GetSearchValue(QrUserMemo2,'LetterID','UserMemo2',' ',400,450)<>'0' then
////         Select_LetterUserMemo2.AsString := QrUserMemo2UserMemo2.AsString;
////   end;
//   Dm.RefreshUserMemo2;
//   if FmSearch.GetSearchValue(Dm.QUserMemo2,'ID','UserMemo2',' ',400,450)<>'0' then
//      Select_LetterUserMemo2.AsString := Dm.QUserMemo2UserMemo2.AsString;
//   if not(Select_Letter.State in [dsEDit,dsInsert]) then
//   begin
//     // MssMessage1.MessageType:=MssError;
//     // MssMessage1.DialogSize:=460;
//     // MssMessage1.execute('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
//      Exit;
//   end;
//    Dm.RefreshUserMemo2;
//    OutputID:=MssSearchPro1.Execute;
//    if OutputID > 0 then
//    begin
//        QMemo.Close;
//        QMemo.SQL.Clear;
//        QMemo.SQL.Add('Select UserMemo2 from UserMemo2');
//        QMemo.SQL.Add('Where ID='+IntToStr(OutputID));
//        QMemo.Open;
//        Select_LetterUserMemo2.AsString := QMemo.FieldValues['UserMemo2'];
//    end;

end;

procedure TFrAddDocument.UserMemoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if ssCtrl in Shift then
      if Key = Vk_Return then
         SBUserMemo.Click;
end;

procedure TFrAddDocument.DBEUserMemo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if ssCtrl in Shift then
      if Key = Vk_Return then
         SBUserMemo1.Click;
end;

procedure TFrAddDocument.DBEUserMemo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if ssCtrl in Shift then
      if Key = Vk_Return then
         SBUserMemo2.Click;
end;

procedure TFrAddDocument.EdtIndicatorID2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if ssCtrl in Shift then
      if Key = Vk_Return then
         SpeedButton1.Click;
end;

procedure TFrAddDocument.DBEIncommingNOKeyPress(Sender: TObject;var Key: Char);
begin
   inherited;
   {Ranjbar 89.11.26 ID=90}
   if not ChBoIncommingNO.Checked then
   begin
      if Select_LetterIncommingNO.Alignment = taLeftJustify then
         Select_LetterIncommingNO.Alignment := taRightJustify;
      DBEIncommingNO.Text := Keyboard_TypeWithDivider(DBEIncommingNO.Text,Key);
   end;
   //---
end;

procedure TFrAddDocument.SBFarsiClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.26 ID=90}
   DBEIncommingNO.SetFocus;
   DBEIncommingNO.SelectAll;
   Keyboard_Farsi;
   DBEIncommingNO.OnKeyPress := DBEIncommingNOKeyPress;
   DBEIncommingNO.BiDiMode := bdRightToLeft;
   Select_LetterIncommingNO.Alignment := taRightJustify;
   //---
end;

procedure TFrAddDocument.SBEnglishClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.26 ID=90}
   DBEIncommingNO.SetFocus;
   DBEIncommingNO.SelectAll;
   Keyboard_English;
   DBEIncommingNO.OnKeyPress := Nil;
   DBEIncommingNO.BiDiMode := bdLeftToRight;
   Select_LetterIncommingNO.Alignment := taLeftJustify;
   //---
end;



procedure TFrAddDocument.acLetterCumunicationsExecute(Sender: TObject);
begin
  FmLetterRalation := TFmLetterRalation.create(Application);
  FmLetterRalation.LetterID := select_LetterLetterID.AsInteger;
  FmLetterRalation.ShowModal;
end;

procedure TFrAddDocument.SetLinkedLetterID(const Value: Integer);
begin
  FLinkedLetterID := Value;
end;

procedure TFrAddDocument.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FFillUserMemo:=TFFillUserMemo.Create(Application);
  FFillUserMemo.ShowModal;
end;

procedure TFrAddDocument.UserMemo1Change(Sender: TObject);
Var
   S,T:string;
begin
   inherited;

   if DataSetEdit.Enabled then
      Exit;

   // ⁄ÊÌ÷ Õ—› ﬂ
   S := Replace(YeganehTrim(UserMemo1.Text),char(152),'yy');
   S := Replace(s,'ﬂ','yy');
   if is_integer(s) then
//      T := 'ID'
    T := 'UserMemo'
   else
      T := ' replace(replace(UserMemo,char(152),''yy''),''ﬂ'',''yy'')';

   with Dm.QUserMemo do
      if length(s) >= 2 then
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM UserMemo where ' + T + ' like ''' + S + '%''');
//         CommandText := 'SELECT * FROM UserMemo where ' + T + ' like ''' + S + '%''';
         YDBUserMemo1.Show;
      //   ShowMessage(SQL.Text);
         Open;
      end;
end;

procedure TFrAddDocument.UserMemo1Exit(Sender: TObject);
var
  s:string;
begin
   inherited;

//   S := YeganehTrim(UserMemo1.Text);
//   if not DataSetEdit.Enabled then
//      if is_integer(UserMemo1.Text) then
//         with dm,QUserMemo do
//         begin
//            Close;
//            SQL.Clear;
//            SQL.Add('Select * from UserMemo where UserMemo='''+s+'''');
////            CommandText:='Select * from UserMemo where code='''+s+'''';
//            open;
//            if recordcount=0 then
//             //  ShowMsg(64)
//            else
//               begin
//                  Select_LetterUserMemo.AsString:=QUserMemoUserMemo.AsString;
//                  TEdit(UserMemo1).OnChange:=nil;
//                  TEdit(UserMemo1).Text:=QUserMemoUserMemo.AsString;
//                  TEdit(UserMemo1).OnChange:=UserMemo1Change;
//                  Select_LetterUserMemo.AsString:= QUserMemoUserMemo.AsString;
//               end;
//         end;

   if not YDBUserMemo1.Focused then
      YDBUserMemo1.Hide;
end;

procedure TFrAddDocument.UserMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if not DataSetEdit.Enabled then
      if (key=vk_down) or (key=vk_up) then
      begin
         if ssalt in shift then
            YDBUserMemo1.Visible := not YDBUserMemo1.Visible
         else
            YDBUserMemo1.SetFocus;
      end;

end;

procedure TFrAddDocument.UserMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Key := #0;
end;

procedure TFrAddDocument.YDBUserMemo1CellClick(Column: TColumn);
begin
  inherited;
 if not DataSetEdit.Enabled then
  begin
    TEdit(UserMemo1).OnChange:=nil;
    TEdit(UserMemo1).Text:=dm.QUserMemoUserMemo.AsString;
    TEdit(UserMemo1).OnChange:=UserMemo1Change;
    DSForm.DataSet.FieldByName('UserMemo').AsString:=dm.QUserMemo.FIELDBYNAME('UserMemo').AsString;
    YDBUserMemo1.Hide;
  end;
end;

procedure TFrAddDocument.YDBUserMemo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TFrAddDocument.YDBUserMemo1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   if dm.ToorganizationsIsInnerOrg.AsBoolean then
      Color:=$00FFE6FF
   else
      Color:=$00FFD3A8;
end;

procedure TFrAddDocument.UserMemo2Change(Sender: TObject);
Var
   S,T:string;
begin
   inherited;

   if DataSetEdit.Enabled then
      Exit;

   // ⁄ÊÌ÷ Õ—› ﬂ
   S := Replace(YeganehTrim(UserMemo2.Text),char(152),'yy');
   S := Replace(s,'ﬂ','yy');
   if is_integer(s) then
//      T := 'ID'
      T := 'UserMemo1'
   else
      T := ' replace(replace(UserMemo1,char(152),''yy''),''ﬂ'',''yy'')';

   with Dm.QUserMemo1 do
      if length(s) >= 2 then
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM UserMemo1 where ' + T + ' like ''' + S + '%''');
//         CommandText := 'SELECT * FROM UserMemo where ' + T + ' like ''' + S + '%''';
         YDBUserMemo2.Show;
//         ShowMessage(SQL.Text);
         Open;
      end;

end;

procedure TFrAddDocument.UserMemo2Exit(Sender: TObject);
var
  s:string;
begin
   inherited;

//   S := YeganehTrim(UserMemo2.Text);
//   if not DataSetEdit.Enabled then
//      if is_integer(UserMemo2.Text) then
//         with dm,QUserMemo1 do
//         begin
//            Close;
//            SQL.Clear;
//            SQL.Add('Select * from UserMemo1 where UserMemo1='''+s+'''');
////            CommandText:='Select * from UserMemo where code='''+s+'''';
//            open;
//            if recordcount=0 then
//              // ShowMsg(64)
//            else
//               begin
//                  Select_LetterUserMemo1.AsString:=QUserMemo1UserMemo1.AsString;
//                  TEdit(UserMemo2).OnChange:=nil;
//                  TEdit(UserMemo2).Text:=QUserMemo1UserMemo1.AsString;
//                  TEdit(UserMemo2).OnChange:=UserMemo2Change;
//                  Select_LetterUserMemo1.AsString:= QUserMemo1UserMemo1.AsString;
//               end;
//         end;

   if not YDBUserMemo2.Focused then
      YDBUserMemo2.Hide;
end;

procedure TFrAddDocument.UserMemo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if not DataSetEdit.Enabled then
      if (key=vk_down) or (key=vk_up) then
      begin
         if ssalt in shift then
            YDBUserMemo2.Visible := not YDBUserMemo2.Visible
         else
            YDBUserMemo2.SetFocus;
      end;
end;

procedure TFrAddDocument.UserMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Key := #0;
end;

procedure TFrAddDocument.YDBUserMemo2CellClick(Column: TColumn);
begin
  inherited;
 if not DataSetEdit.Enabled then
  begin
    TEdit(UserMemo2).OnChange:=nil;
    TEdit(UserMemo2).Text:=dm.QUserMemo1UserMemo1.AsString;
    TEdit(UserMemo2).OnChange:=UserMemo2Change;
    DSForm.DataSet.FieldByName('UserMemo1').AsString:=dm.QUserMemo1.FIELDBYNAME('UserMemo1').AsString;
    YDBUserMemo2.Hide;
  end;
end;

procedure TFrAddDocument.YDBUserMemo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TFrAddDocument.YDBUserMemo2NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   if dm.ToorganizationsIsInnerOrg.AsBoolean then
      Color:=$00FFE6FF
   else
      Color:=$00FFD3A8;
end;

procedure TFrAddDocument.UserMemo3Change(Sender: TObject);
Var
   S,T:string;
begin
   inherited;

   if DataSetEdit.Enabled then
      Exit;

   // ⁄ÊÌ÷ Õ—› ﬂ
   S := Replace(YeganehTrim(UserMemo3.Text),char(152),'yy');
   S := Replace(s,'ﬂ','yy');
   if is_integer(s) then
      T := 'UserMemo2'
//      T := 'ID'
   else
      T := ' replace(replace(UserMemo2,char(152),''yy''),''ﬂ'',''yy'')';

   with Dm.QUserMemo2 do
      if length(s) >= 2 then
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM UserMemo2 where ' + T + ' like ''' + S + '%''');
//         CommandText := 'SELECT * FROM UserMemo where ' + T + ' like ''' + S + '%''';
         YDBUserMemo3.Show;
        // ShowMessage(SQL.Text);
         Open;
      end;

end;

procedure TFrAddDocument.UserMemo3Exit(Sender: TObject);
var
  s:string;
begin
   inherited;

//   S := YeganehTrim(UserMemo3.Text);
//   if not DataSetEdit.Enabled then
//      if is_integer(UserMemo3.Text) then
//         with dm,QUserMemo2 do
//         begin
//            Close;
//            SQL.Clear;
//            SQL.Add('Select * from UserMemo2 where UserMemo2='''+s+'''');
//            open;
//            if recordcount=0 then
//              // ShowMsg(64)
//            else
//               begin
//                  Select_LetterUserMemo2.AsString:=QUserMemo2UserMemo2.AsString;
//                  TEdit(UserMemo3).OnChange:=nil;
//                  TEdit(UserMemo3).Text:=QUserMemo2UserMemo2.AsString;
//                  TEdit(UserMemo3).OnChange:=UserMemo3Change;
//                  Select_LetterUserMemo2.AsString:= QUserMemo2UserMemo2.AsString;
//               end;
//         end;

   if not YDBUserMemo3.Focused then
      YDBUserMemo3.Hide;
end;

procedure TFrAddDocument.UserMemo3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if not DataSetEdit.Enabled then
      if (key=vk_down) or (key=vk_up) then
      begin
         if ssalt in shift then
            YDBUserMemo3.Visible := not YDBUserMemo3.Visible
         else
            YDBUserMemo3.SetFocus;
      end;
end;

procedure TFrAddDocument.UserMemo3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not(Select_Letter.State in [dsEdit,dsInsert]) then
      Key := #0;
end;

procedure TFrAddDocument.YDBUserMemo3CellClick(Column: TColumn);
begin
  inherited;
 if not DataSetEdit.Enabled then
  begin
    TEdit(UserMemo3).OnChange:=nil;
    TEdit(UserMemo3).Text:=dm.QUserMemo2UserMemo2.AsString;
    TEdit(UserMemo3).OnChange:=UserMemo3Change;
    DSForm.DataSet.FieldByName('UserMemo2').AsString:=dm.QUserMemo2.FIELDBYNAME('UserMemo2').AsString;
    YDBUserMemo3.Hide;
  end;
end;

procedure TFrAddDocument.YDBUserMemo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TFrAddDocument.YDBUserMemo3NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   if dm.ToorganizationsIsInnerOrg.AsBoolean then
      Color:=$00FFE6FF
   else
      Color:=$00FFD3A8;
end;

procedure TFrAddDocument.ClearUserMemoEdit;
begin
  UserMemo1.Text:='';
  UserMemo2.Text:='';
  UserMemo3.Text:='';
end;

procedure TFrAddDocument.Insert3OptionalFeild;
var
  UsrMemo1,UsrMemo2,UsrMemo3:String;
begin

//  ShowMessage(Dm.QUserMemo2UserMemo2.AsString);

//
  UsrMemo1:=Trim(UserMemo1.Text);
  UsrMemo2:=Trim(UserMemo2.Text);
  UsrMemo3:=Trim(UserMemo3.Text);

//  UsrMemo1:=Trim(Dm.QUserMemoUserMemo.AsString);
//  UsrMemo2:=Trim(Dm.QUserMemo1UserMemo1.AsString);
//  UsrMemo3:=Trim(Dm.QUserMemo2UserMemo2.AsString);


  QTmp.Close;
  QTmp.SQL.Clear;
  QTmp.SQL.Add('SELECT ID FROM UserMemo WHERE UserMemo='+QuotedStr(UsrMemo1));
  QTmp.Open;
  if QTmp.IsEmpty then
  begin
      QIns3Optional.Close;
      QIns3Optional.SQL.Clear;
      QIns3Optional.SQL.Add('INSERT INTO UserMemo(UserMemo)');
      QIns3Optional.SQL.Add('VALUES('+QuotedStr(UsrMemo1)+')');
      QIns3Optional.ExecSQL;
  end;

  QTmp.Close;
  QTmp.SQL.Clear;
  QTmp.SQL.Add('SELECT ID FROM UserMemo1 WHERE UserMemo1='+QuotedStr(UsrMemo2));
  QTmp.Open;
  if QTmp.IsEmpty then
  begin
      QIns3Optional.Close;
      QIns3Optional.SQL.Clear;
      QIns3Optional.SQL.Add('INSERT INTO UserMemo1(UserMemo1)');
      QIns3Optional.SQL.Add('VALUES('+QuotedStr(UsrMemo2)+')');
      QIns3Optional.ExecSQL;
  end;

  QTmp.Close;
  QTmp.SQL.Clear;
  QTmp.SQL.Add('SELECT ID FROM UserMemo2 WHERE UserMemo2='+QuotedStr(UsrMemo3));
  QTmp.Open;
  if QTmp.IsEmpty then
  begin
      QIns3Optional.Close;
      QIns3Optional.SQL.Clear;
      QIns3Optional.SQL.Add('INSERT INTO UserMemo2(UserMemo2)');
      QIns3Optional.SQL.Add('VALUES('+QuotedStr(UsrMemo3)+')');
      QIns3Optional.ExecSQL;
  end;

end;

procedure TFrAddDocument.GroupBox4Click(Sender: TObject);
begin
  inherited;
  YDBUserMemo1.Hide;
  YDBUserMemo2.Hide;
  YDBUserMemo3.Hide;
end;

procedure TFrAddDocument.btnRelatedLettersClick(Sender: TObject);
begin
  inherited;
   fmRelatedLetters := TfmRelatedLetters.Create(Application);
//  fmRelatedLetters.Caption := '‰«„Â Â«Ì „— »ÿ »« ';
   fmRelatedLetters.ShowModal;
end;

procedure TFrAddDocument.Action1Execute(Sender: TObject);
begin
  inherited;

   Try
      Dm.OpenqSelectedColor(dm.Get_All_LetterLetterID.AsInteger);
      FmScanImage := TFmScanImage.Create(Nil);
      FmScanImage.QUICK_SCAN := True;
      FmScanImage.LetterID := dm.Get_All_LetterLetterID.AsInteger;
      FmScanImage.letterformat := dm.Get_All_Letterletterformat.AsInteger;
      FmScanImage.ReceiveTypeID := dm.Get_All_LetterReceiveTypeID.AsInteger;
      FmScanImage.ShowModal;
   Finally
      FreeAndNil(FmScanImage);
   End;

end;

procedure TFrAddDocument.BitBtn3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrAddDocument.YDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if adoExcel_SelectF33.Value = '1' then
  begin
      //YDBGrid1.Canvas.Brush.Color:=clRed;
      //YDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      YDBGrid1.Canvas.Brush.Color:=clRed;
  end;


end;

procedure TFrAddDocument.YDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if adoExcel_SelectF33.Value = '1' then
  begin
   Abort;
   Exit;
  end;
end;

procedure TFrAddDocument.BitBtn5Click(Sender: TObject);
begin
  inherited;
    adoAccessFroDelete.Close;
    adoAccessFroDelete.Parameters.ParamByName('@UserID').Value := _UserId;
    adoAccessFroDelete.Open;

    if adoExcel_SelectF33.Value = '1' then
    begin
     Abort;
     Exit;
    end;


    if adoAccessFroDeleteAccessID.Value <> 1 then
    begin
       ShowMessage('‘„« „Ã«“ »Â Õ–› «Ì‰ —òÊ—œ ‰„Ì »«‘Ìœ');
       Abort;
       Exit;
    end;

    if MessageDlg('¬Ì« „«Ì· »Â Õ–› «Ì‰ —òÊ—œ Â” Ìœ ø', mtWarning, mbOKCancel, 0) = mrOK then
    begin
      adoDelete.Close;
      adoDelete.Parameters.ParamByName('@ID').Value := adoExcel_SelectID.Value ;
//      adoDelete.Parameters.ParamByName('@UserID').Value := _UserId;
      adoDelete.ExecProc;
    end;
    adoExcel_Select.Close;
    adoExcel_Select.Parameters.ParamByName('@LetterID').Value := dm.Get_All_LetterLetterID.AsInteger;
    adoExcel_Select.Open;

end;

procedure TFrAddDocument.adoExcel_SelectBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
  Exit;
end;

procedure TFrAddDocument.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;

end;

procedure TFrAddDocument.Button1Click(Sender: TObject);
begin
  inherited;
    adoExcel_Select.Close;
    adoExcel_Select.Parameters.ParamByName('@LetterID').Value := dm.Get_All_LetterLetterID.AsInteger;
    if Trim(Edit1.Text) = '' then
      adoExcel_Select.Parameters.ParamByName('@where').Value := 'NUll'
    else
    adoExcel_Select.Parameters.ParamByName('@where').Value := Trim(Edit1.Text);
    adoExcel_Select.Open;
end;

End.

