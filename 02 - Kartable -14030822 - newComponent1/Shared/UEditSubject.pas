unit UEditSubject;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,
   xpPages, Menus, AppEvnts, AdvGlowButton;

type
  TFrEditSubject = class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetDelete: TDataSetDelete;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action13: TAction;
    AEnter: TAction;
    select_LetterSubject: TADOStoredProc;
    select_LetterSubjectLetterID: TAutoIncField;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    select_LetterSubjectSubjectTitle: TStringField;
    select_LetterSubjectSubjectID: TIntegerField;
    select_LetterSubjectSubjectDescription: TWideStringField;
    select_LetterSubjectUserMemo: TWideStringField;
    select_LetterSubjectregistrationdate: TStringField;
    select_LetterSubjectregistrationtime: TStringField;
    select_LetterSubjectlastupdate: TDateTimeField;
    select_LetterSubjectindicatorid: TIntegerField;
    ReCommites: TADODataSet;
    ReCommitesRecommiteID: TAutoIncField;
    ReCommitesLetterID: TIntegerField;
    ReCommitesID: TSmallintField;
    ReCommitesType: TWordField;
    ReCommitesParentId: TSmallintField;
    ReCommitesOrgID: TIntegerField;
    ReCommitesParaph: TWideStringField;
    ReCommitesRecommiteDate: TStringField;
    ReCommitesUserID: TWordField;
    ReCommitesIsCopy: TBooleanField;
    ReCommitesProceeded: TBooleanField;
    ReCommitesProceedDate: TStringField;
    ReCommitesstaffmemo: TWideStringField;
    ReCommitesviewdate: TStringField;
    Panel2: TPanel;
    btnArchive: TAdvGlowButton;
    Panel3: TPanel;
    DBMemo2: TDBMemo;
    Label2: TLabel;
    Label14: TLabel;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    pnlMain: TPanel;
    function GetLetter(LetterID:integer):boolean;
    procedure OwnerComboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
    procedure SetDefualt;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnArchiveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEditSubject: TFrEditSubject;

implementation

uses  YShamsiDate, FromOrgU,   QuickSearch, UMain,
    Dmu,   
  ExportToWord, ReCommiteU, ExactCopy, businessLayer, URetroExist,
  UUserTable_Input;
{$R *.dfm}




function TFrEditSubject.GetLetter(LetterID:integer):boolean;
begin
  inherited;
with select_LetterSubject do
 begin
  close;
  Parameters.ParamByName('@LetterID').Value:=LetterID;
  open;
  Result:=RecordCount<>0;
 end;
end;


procedure TFrEditSubject.OwnerComboKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if not DataSetEdit.Enabled then
 if key=32 then
    if MainForm.GetSearch then
    DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;



procedure TFrEditSubject.Action11Execute(Sender: TObject);
begin
  inherited;
 close;
end;
procedure TFrEditSubject.AEnterExecute(Sender: TObject);
begin
  inherited;
if not DataSetEdit.Enabled then
 SelectNext(ActiveControl,true,true);
end;

procedure TFrEditSubject.SetDefualt;
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

procedure TFrEditSubject.FormCreate(Sender: TObject);
begin
   inherited;
   btnArchive.Visible := _Kartable;
   UserField.Caption := Dm.UserMemoDisplay;
end;

procedure TFrEditSubject.DBLookupComboBox5KeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
   inherited;
   if not DataSetEdit.Enabled then
      if Key = 32 then
         if MainForm.GetSearch then
            DSForm.DataSet.FieldByName('toorgid').AsInteger := Dm.FromOrganizationsID.AsInteger;
end;

procedure TFrEditSubject.btnArchiveClick(Sender: TObject);
begin
   inherited;
   ReCommitesProceeded.AsBoolean:=true;
   ReCommites.Post;
   close;
end;

end.
