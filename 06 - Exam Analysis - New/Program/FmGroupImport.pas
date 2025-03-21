unit FmGroupImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, DBCtrls, UemsVCL, ExtCtrls,
  StdCtrls, Mask, ComCtrls, Buttons, ADODB, xpWindow, xpBitBtn,FileCtrl;

type
  TfrGroupImport = class(TMBaseForm)
    Button2: TxpBitBtn;
    EdPath: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog: TOpenDialog;
    BitBtn1: TxpBitBtn;
    ProgressBar: TProgressBar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Initialize;
    procedure ImportFile(Filename:string);
    procedure BitBtn1Click(Sender: TObject);
    function getExamID_byCode(code:string;var title:string):integer;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGroupImport: TfrGroupImport;
var f: TextFile;
implementation

uses dmu, BusinessLayer, YShamsiDate;
var StnoStart, StnoLength,
  MajorStart, MajorLength,    TermcodeStart, TermCodeLength,
  CourseStart, CourseLength,  CourseGroupStart,AnswerStart, CourseGroupLength,KeyLineNumber,   AnswerStartLineNumber,GroupExamStart:integer;
  indiscernibleChar:string;
  var AnserEnd:integer;
  var ExPositive_Start:integer;
  var ExPositive_End:integer;

{$R *.dfm}



procedure TfrGroupImport.SpeedButton1Click(Sender: TObject);
var s:string;
begin
 SelectDirectory('','',s);
   EdPath.Text:=s;
end;

procedure TfrGroupImport.ImportFile(Filename:string);
 var line, stno,major,Termcode,Course,CourseGroup, AnswerKey,GroupExamId: string;
  LineNumber,  number_of_applicant,   number_of_Question,i,ExamID :integer;
  fn,title:string;
 begin
  inherited;
  fn:=replace(replace(Filename,'.txt',''),'pa','');
AssignFile(f,EdPath.Text+'\'+Filename);
Reset(f);

  ExamID:=getExamID_byCode(fn,title);
  if title='' then  exit;


 LineNumber:=1;
 number_of_applicant:=0;

while not eof (f) do
 begin
  Readln(f,line);
   line:=Replace(line,':','');
   line :=Replace(line,'False','');

  if StnoStart>0 then  stno:= copy(line,StnoStart,StnoLength) else stno:='';
  if MajorStart>0 then  Major:= copy(line,MajorStart,MajorLength) else Major:='';
  if TermcodeStart>0 then  Termcode:= copy(line,TermcodeStart,TermcodeLength) else Termcode:='';
  if CourseStart>0 then  Course:= copy(line,CourseStart,CourseLength) else Course:='';
  if CourseGroupStart>0 then  CourseGroup:= copy(line,CourseGroupStart,CourseGroupLength) else CourseGroup:='';

  if LineNumber=KeyLineNumber  then
  begin
   AnswerKey:=trim(copy(line,AnswerStart,Length(line)-AnswerStart+1));
   Exec_update_ExamKey(ExamID,AnswerKey);
   number_of_Question:=length(AnswerKey);
  end
  else
  if LineNumber>=AnswerStartLineNumber then
   begin
    AnswerKey:=copy(line,AnswerStart,number_of_Question);
    AnswerKey:=Replace(AnswerKey,' ','0');
    if copy(stno,1,5)<>'11111' then
     Exec_insert_AnswerLine(ExamID,Stno,AnswerKey,termcode,major,Course,CourseGroup,StrToIntDef(GroupExamId,1));
    inc(number_of_applicant);
   end;


  inc(LineNumber);
  Application.ProcessMessages;
 end;
Exec_update_Exam_Numbers(ExamID,number_of_Question,number_of_applicant);
Exec_insert_Question_ByExamID(ExamID);
Exec_insert_ApplicantAnswer_ByExamID(ExamID);
Exec_update_ApplicantExam_FinalMArk(ExamID);
Exec_Analysis_Question_byExamID(ExamID) ;
Exec_Analysis_Exam_Total(ExamID) ;

 closeFile(f);
end;

procedure TfrGroupImport.Button2Click(Sender: TObject);
begin
  inherited;
close
end;

procedure TfrGroupImport.Initialize;
begin
  inherited;
  Exec_Get_TextFormat_By_ExamID
            (64,StnoStart,StnoLength,MajorStart,MajorLength,
            TermcodeStart,TermCodeLength,CourseStart,CourseLength,CourseGroupStart,CourseGroupLength,
            AnswerStart,indiscernibleChar,KeyLineNumber,AnswerStartLineNumber ,GroupExamStart,AnserEnd,ExPositive_Start,ExPositive_End)


end;

procedure TfrGroupImport.BitBtn1Click(Sender: TObject);
 var TS:TsearchRec;
 s:string;
begin
  inherited;
if MessageDlg('��� �� ������ ���� ������� ���� ������� �����',   mtConfirmation,[mbyes,mbno],0)<> mryes then
 exit;
Initialize;
ProgressBar.Position:=ProgressBar.Position+1;

 if FindFirst(EdPath.Text+'\*.txt',faAnyFile,TS)=0 then
  ImportFile(ts.Name);
  while FindNext(TS)=0 do
   begin
    ImportFile(ts.Name);
    ProgressBar.Position:=ProgressBar.Position+1
   end; 
 ShowMessage('�� ������  ������� �������� �� ������ ����');

end;
function TfrGroupImport.getExamID_byCode(code:string;var title:string):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='getExamID_byCode';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@code';
      size:= 50;
      Value :=code;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@ExamID';
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWideString;
      size:=200;
      Direction := pdoutput;
      Name:='@ExamTitle';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@ExamID').value;
   title:=ADOSP.Parameters.ParamByname('@Examtitle').value;
end;
end.



