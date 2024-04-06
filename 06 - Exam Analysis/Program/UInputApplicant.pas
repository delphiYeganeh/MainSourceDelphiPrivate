unit UInputApplicant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpWindow, ActnList, DBCtrls, StdCtrls, Mask,
  xpBitBtn, ToolWin, ActnMan, ActnCtrls, ActnMenus, DBActns,
  XPStyleActnCtrls;

type
  TFrInputApplicant = class(TMBaseForm)
    Select_Applicant_By_ApplicantID: TADOStoredProc;
    Select_Applicant_By_ApplicantIDApplicantID: TAutoIncField;
    Select_Applicant_By_ApplicantIDApplicantCode: TStringField;
    Select_Applicant_By_ApplicantIDFirstName: TWideStringField;
    Select_Applicant_By_ApplicantIDLastName: TWideStringField;
    Select_Applicant_By_ApplicantIDFullName: TWideStringField;
    Select_Applicant_By_ApplicantIDMajorID: TSmallintField;
    Select_Applicant_By_ApplicantIDTermcode: TStringField;
    Select_Applicant_By_ApplicantIDmajorTitle: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Action1: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    DSelect_Applicant_By_ApplicantID: TDataSource;
    xpBitBtn1: TxpBitBtn;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    CheckBox1: TCheckBox;
    Select_Applicant_By_ApplicantIDFatherName: TWideStringField;
    Select_Applicant_By_ApplicantIDCustomField1: TWideStringField;
    Select_Applicant_By_ApplicantIDCustomField2: TWideStringField;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    adelete: TAction;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Select_Applicant_By_ApplicantIDCustomField3: TStringField;
    Select_Applicant_By_ApplicantIDCustomField4: TStringField;
    Select_Applicant_By_ApplicantIDCustomField5: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    procedure GetApplicant_BYApplicantID(ApplicantID: integer);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure DataSetPost1Execute(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure adeleteExecute(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent;ApplicantID : Integer = 0);reintroduce;virtual;    
  end;

var
  FrInputApplicant: TFrInputApplicant;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TFrInputApplicant.GetApplicant_BYApplicantID(ApplicantID: integer);
begin
  inherited;
with Select_Applicant_By_ApplicantID do
 begin
   close;
   Parameters.ParamByName('@ApplicantID').Value:=ApplicantID;
   Open;
 end;
end;
procedure TFrInputApplicant.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrInputApplicant.DataSetPost1Execute(Sender: TObject);
var is_insert: boolean;
begin
  inherited;
  is_insert:=Select_Applicant_By_ApplicantID.State=dsinsert;
   Select_Applicant_By_ApplicantID.Post;
  if CheckBox1.Checked then 
   if is_insert then
     Exec_insert_ApplicantExam(Select_Applicant_By_ApplicantIDApplicantID.AsInteger,Dm.Browse_ExamExamID.AsInteger);
end;

procedure TFrInputApplicant.DBEdit5Change(Sender: TObject);
begin
  inherited;
  dbedit2.Text:=DBEdit4.Text+'  '+DBEdit5.Text;

end;

procedure TFrInputApplicant.adeleteExecute(Sender: TObject);
begin
  inherited;
 if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
   Select_Applicant_By_ApplicantID.Delete;
end;

procedure TFrInputApplicant.DBEdit3Enter(Sender: TObject);
begin
  inherited;
  dbedit3.Text:=copy(dbedit1.Text,1,2)+'1';
  
end;

procedure TFrInputApplicant.DBEdit1Exit(Sender: TObject);
begin
  inherited;
 if Select_Applicant_By_ApplicantID.state = dsinsert then
  if Exist_applicant(DBEdit1.Text) then
    ShowMessage('‘„«—Â œ«‰‘ÃÊÌÌ  ò—«—Ì «” ');
end;

constructor TFrInputApplicant.create(AOwner: TComponent;
  ApplicantID: Integer);
begin
  inherited create(AOwner);
  GetApplicant_BYApplicantID(ApplicantID);
  if ApplicantID = 0 then Select_Applicant_By_ApplicantID.Insert;
end;

procedure TFrInputApplicant.FormCreate(Sender: TObject);
begin
  inherited;
   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Applicant';
   dm.sp_Table_CustomFieldsCaption.Open;
end;

end.
