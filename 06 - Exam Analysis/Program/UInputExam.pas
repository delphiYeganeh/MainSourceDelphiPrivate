unit UInputExam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ExtCtrls, DBCtrls, Mask, DB, ExtActns,
  ActnList, UemsVCL, Buttons, ADODB, DBActns, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, ActnMenus, xpBitBtn, xpWindow;

type
  TFInputExam = class(TMBaseForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBShamsiDateEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dblkcbbCourseTitle: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Select_Exam_ByExamID: TADOStoredProc;
    DSelect_Exam_ByExamID: TDataSource;
    Select_Exam_ByExamIDExamID: TAutoIncField;
    Select_Exam_ByExamIDExamTitle: TWideStringField;
    Select_Exam_ByExamIDCourseID: TSmallintField;
    Select_Exam_ByExamIDAnswerKey: TStringField;
    Select_Exam_ByExamIDExamDate: TStringField;
    Select_Exam_ByExamIDCorrectItemPoint: TFloatField;
    Select_Exam_ByExamIDBlankItemPoint: TFloatField;
    Select_Exam_ByExamIDMinPassedMark: TFloatField;
    Select_Exam_ByExamIDExamTypeID: TWordField;
    Select_Exam_ByExamIDNumber_of_Items: TWordField;
    Select_Exam_ByExamIDNumber_of_Question: TIntegerField;
    Select_Exam_ByExamIDnumber_of_applicant: TIntegerField;
    Select_Exam_ByExamIDTexFormatID: TIntegerField;
    Select_Exam_ByExamIDCourseTitle: TStringField;
    Select_Exam_ByExamIDExamTypeTitle: TStringField;
    Select_Exam_ByExamIDTextFormatTite: TStringField;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Action1: TAction;
    xpBitBtn1: TxpBitBtn;
    Select_Exam_ByExamIDMainDesignerTeacherID: TSmallintField;
    Select_Exam_ByExamIDTermCode: TStringField;
    Select_Exam_ByExamIDdesignerTitle: TStringField;
    Label27: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBComboBox;
    xpBitBtn2: TxpBitBtn;
    Select_Exam_ByExamIDMaxMark: TFloatField;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    ADelete: TAction;
    Select_Exam_ByExamIDlkCourseCode: TStringField;
    intgrfldSelect_Exam_ByExamIDEducationGroupID: TIntegerField;
    qryEducationGroup: TADOQuery;
    qryEducationGroupEducationGroupID: TSmallintField;
    qryEducationGroupEducationGroupTitle: TWideStringField;
    dblkcbblkCourseCode: TDBLookupComboBox;
    Select_Exam_ByExamIDlkEducationGroup: TStringField;
    Label29: TLabel;
    qryTeacher: TADOQuery;
    qryTeacherTeacherID: TSmallintField;
    qryTeacherFullName: TWideStringField;
    intgrfldSelect_Exam_ByExamIDTeacherID: TIntegerField;
    Select_Exam_ByExamIDlkTeacherName: TStringField;
    Label30: TLabel;
    dblkcbblkTeacher: TDBLookupComboBox;
    Select_Exam_ByExamIDCustomField1: TStringField;
    Select_Exam_ByExamIDCustomField2: TStringField;
    Select_Exam_ByExamIDCustomField3: TStringField;
    Select_Exam_ByExamIDCustomField4: TStringField;
    Select_Exam_ByExamIDCustomField5: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label31: TLabel;
    Select_Exam_ByExamIDGroupExamid: TIntegerField;
    DBLookupComboBox5: TDBLookupComboBox;
    Select_Exam_ByExamIDWrongItemPoint: TBCDField;
    Edit1: TEdit;
    Label32: TLabel;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    dblkcbbCourseCode: TDBLookupComboBox;
    Label28: TLabel;
    Label33: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure GetExam_BYExamID(ExamID: integer);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure Select_Exam_ByExamIDAfterInsert(DataSet: TDataSet);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure ADeleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select_Exam_ByExamIDBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent;ExamID : Integer = 0);reintroduce;virtual;
  end;

var
  FInputExam: TFInputExam;

implementation

uses dmu, UMainForm, BusinessLayer, UntSearchDataSet;

{$R *.dfm}

procedure TFInputExam.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFInputExam.GetExam_BYExamID(ExamID: integer);
begin
  inherited;
with Select_Exam_ByExamID do
 begin
   close;
   Parameters.ParamByName('@ExamID').Value:=ExamID;
   Open;
 end;
end;

procedure TFInputExam.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
 if Select_Exam_ByExamID.State  in [dsedit,dsinsert] then
    if DBEdit1.Text <> '' then Select_Exam_ByExamID.Post;
close;
end;

procedure TFInputExam.Select_Exam_ByExamIDAfterInsert(DataSet: TDataSet);
begin
  inherited;
Select_Exam_ByExamIDNumber_of_Items.AsInteger:=4;
end;

procedure TFInputExam.xpBitBtn2Click(Sender: TObject);
var  s:string;
begin
  inherited;
if not (Select_Exam_ByExamID.State in [dsedit,dsinsert]) then
 if dm.Y_InputQuery(' ⁄œ«œ ”∆Ê«·« ',Select_Exam_ByExamIDNumber_of_Question.AsString,s) then
  begin
   Select_Exam_ByExamID.edit;
   Select_Exam_ByExamIDNumber_of_Question.AsString:=s;
   Select_Exam_ByExamID.Post;
   Exec_Refine_Question_ByExamID(Select_Exam_ByExamIDExamID.AsInteger);
  end;

end;

procedure TFInputExam.ADeleteExecute(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› ¬“„Ê‰ „ÿ„∆‰ Â” Ìœø',True) then
 begin
   Exec_delete_Exam(Select_Exam_ByExamIDExamID.AsInteger);
  if Select_Exam_ByExamID.State in [dsedit,dsinsert] then
   Select_Exam_ByExamID.Cancel;
 Close;
 end;
end;

constructor TFInputExam.create(AOwner: TComponent; ExamID: Integer);
begin
  inherited create(AOwner);
  GetExam_BYExamID(ExamID);
  if ExamID = 0 then
  begin
    Select_Exam_ByExamID.Append;
    Select_Exam_ByExamIDCorrectItemPoint.AsFloat:=1;
    Select_Exam_ByExamIDWrongItemPoint.Value:=0;
    Select_Exam_ByExamIDBlankItemPoint.AsFloat:=0;
    Select_Exam_ByExamIDExamTypeID.AsInteger:=2;
    Select_Exam_ByExamIDGroupExamid.AsInteger:=1;
    Select_Exam_ByExamIDMinPassedMark.AsFloat:=50;
    Select_Exam_ByExamIDMaxMark.AsFloat:=20;
  end;
end;

procedure TFInputExam.FormShow(Sender: TObject);
begin
  inherited;
   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Exam';
   dm.sp_Table_CustomFieldsCaption.Open;
end;

procedure TFInputExam.Select_Exam_ByExamIDBeforePost(DataSet: TDataSet);
begin
  inherited;
   if DBLookupComboBox5.KeyValue = Null then
     DBLookupComboBox5.KeyValue:=1;

   if Select_Exam_ByExamID.FieldByName('ExamTitle').IsNull then
   begin
     MessageDlg('Ê—Êœ ⁄‰Ê«‰ ¬“„Ê‰ «·“«„Ì „Ì»«‘œ',mtError,[mbOK],0);
     DBEdit1.SetFocus;
     Abort;
   end;

   if Select_Exam_ByExamID.FieldByName('TextFormatTite').IsNull then
   begin
     MessageDlg('›—„  ›«Ì· „ ‰Ì „‘Œ’ ‰‘œÂ «” ',mtError,[mbOK],0);
     DBLookupComboBox4.SetFocus;
     Abort;
   end;
end;

procedure TFInputExam.FormCreate(Sender: TObject);
begin
  inherited;
  dm.qGroupExam.Close;
  dm.qGroupExam.SQL.Text :=' select * from GroupExam ';
  dm.qGroupExam.open;
end;

procedure TFInputExam.Edit1Change(Sender: TObject);
begin
  inherited;
qryTeacher.Close;
qryTeacher.SQL.Clear;
if Edit1.Text <> '' then
   qryTeacher.SQL.Add('SELECT TeacherID, FullName FROM Teacher WHERE TeacherCode = ''' + Edit1.Text + '''')
   ELSE
   qryTeacher.SQL.Add('SELECT TeacherID, FullName FROM Teacher');
qryTeacher.Open;
end;

procedure TFInputExam.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  dblkcbbCourseTitle.KeyValue := FrmSearchDataSet.ActivateSearch('Course','CourseID','CourseCode','CourseTitle');
  dblkcbbCourseCode.KeyValue := dblkcbbCourseTitle.KeyValue;
  if  Select_Exam_ByExamID.State in [dsinsert, dsedit] then
    if dblkcbbCourseTitle.KeyValue <> '' then
       Select_Exam_ByExamIDCourseID.Value:= dblkcbbCourseTitle.KeyValue;
end;

 procedure TFInputExam.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  dblkcbblkTeacher.KeyValue := FrmSearchDataSet.ActivateSearch('Teacher','TeacherID','TeacherCode','fullName');
  if Select_Exam_ByExamID.State in [dsinsert, dsedit] then
    if dblkcbblkTeacher.KeyValue <> '' then
       intgrfldSelect_Exam_ByExamIDTeacherID.Value:= dblkcbblkTeacher.KeyValue;
end;

end.
