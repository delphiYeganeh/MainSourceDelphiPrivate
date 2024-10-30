unit BusinessLayer;

interface
uses
    DB,ADODB,SysUtils;

Procedure  Exec_ysp_shrink(dbname:widestring);
Procedure  Exec_ysp_Backup(dbname:widestring;path:widestring);
Procedure  Exec_sp_SetForeinKey(inp:boolean);
Procedure  Exec_Get_TextFormat_By_ExamID(examId:integer;var StnoStart:integer;var StnoLength:integer;
                                              var MajorStart:integer;var MajorLength:integer;var TermcodeStart:integer;var TermCodeLength:integer;
                                              var CourseStart:integer;var CourseLength:integer;var CourseGroupStart:integer;var CourseGroupLength:integer;
                                              var AnswerStart:integer;var indiscernibleChar:string;var KeyLineNumber:integer;var AnswerStartLineNumber:integer;var GroupExamStart:integer; var AnserEnd:integer;var ExPositive_Start:integer;var ExPositive_End:integer);

Procedure  Exec_update_ExamKey(ExamID:integer;AnswerKey:string);
Procedure  Exec_insert_AnswerLine(ExamID:integer;ApplicantCode:string;AnswerKey:string;termcode:string;majorCode:string;CourseCode:string;CourseGroup:string;GroupExamId:integer);
Procedure  Exec_update_Exam_Numbers(ExamID:integer;Number_of_Question:integer;number_of_applicant:integer);
Procedure  Exec_Update_ExamAndQuestion_ByExamID(ExamID:integer);
Procedure  Exec_insert_Question_ByExamID(ExamID:integer);
Procedure  Exec_insert_ApplicantAnswer_ByExamID(ExamID:integer);
Procedure  Exec_update_ApplicantExam_FinalMArk(ExamID:integer);
Procedure  Exec_Analysis_Question_byExamID(ExamID:integer);
Procedure  Exec_insert_Applicant(Stno:string;FirstName:widestring;LastName:widestring;FatherName:widestring;MajorCode:String;Termcode:string);
Procedure  Exec_delete_Exam(ExamID:integer);
Procedure  Exec_Analysis_Exam_Total(ExamID:integer);
Procedure  Exec_imp_TotalEducation(ApplicantCode:string;ApplicantFullname:widestring;CourseCode:string;CourseTitle:widestring;CourseGroup:string;
                                    MajorCode:string;majorTitle:widestring;TermCode:string;TeacherCode:string;TeacherFullname:widestring;EntranceTerm:string);

function  Exec_SaveAs_Accesses(oldID:integer; Title:widestring):integer;
Procedure Exec_delete_Accesses(AccessID:byte);
Procedure Exec_delete_action;
Procedure Exec_insert_New_AccessAction;
Procedure Exec_insert_sys_Action(ActionName:string;ActionCaption:widestring;ActionGroupID:integer);
function  Get_sysAppMessage(MsgID:integer):wideString;
Procedure Exec_Refine_Question_ByExamID(ExamID:integer);
function  Exec_insert_ApplicantExam(ApplicantID:integer;ExamID:integer):integer;
function  Exec_select_SubCourseTitle_By_bysubCourseID(SubCourseID:integer):widestring;
Procedure Exec_UnAssign_Applicant_To_Exam(ApplicantID:integer;ExamID:integer);
Procedure Exec_Assign_Applicant_To_Exam(ApplicantID:integer;ExamID:integer);
Procedure Exec_UnAssign_TrainingCourse_From_Exam(TrainingCourseID:integer;ExamID:integer);
Procedure Exec_Assign_TrainingCourse_To_Exam(TrainingCourseID:integer;ExamID:integer);
Function  Open_ExamData(ExamID:integer):boolean;
function  Duplicate_CourseTitle(CourseTitle:widestring):boolean;
function  Duplicate_CourseCode(CourseCode:string):boolean;
function  Exist_applicant(appcode:string):boolean;
Procedure  Set_systemSetting(VariableName:string;_Value:Variant);
Procedure  Set_UserSetting(UserID:integer;VariableName:string;_Value:Variant);
function Get_UserSetting(UserID:integer;VariableName:string):Variant;
function Get_SystemSetting(VariableName:string):Variant;

implementation

uses dmu;

Procedure  Exec_delete_Exam(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Exam';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;


Procedure  Exec_Get_TextFormat_By_ExamID(examId:integer;var StnoStart:integer;var StnoLength:integer;
var MajorStart:integer;var MajorLength:integer;var TermcodeStart:integer;var TermCodeLength:integer;
var CourseStart:integer;var CourseLength:integer;var CourseGroupStart:integer;var CourseGroupLength:integer;
var AnswerStart:integer;var indiscernibleChar:string;var KeyLineNumber:integer;var AnswerStartLineNumber:integer;
var GroupExamStart:integer;var AnserEnd:integer;var ExPositive_Start:integer;var ExPositive_End:integer);
var
  ADOSP:TADOStoredProc;
  aAnserEnd:Variant;
  aExPositive_Start:Variant;
  aExPositive_End:Variant;

begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_TextFormat_By_ExamID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@examId';
      Value :=examId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@StnoStart';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@StnoLength';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@MajorStart';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@MajorLength';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@TermcodeStart';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@TermCodeLength';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@CourseStart';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@CourseLength';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@CourseGroupStart';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@CourseGroupLength';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AnswerStart';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdoutput;
      Name:='@indiscernibleChar';
      size:= 1;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@KeyLineNumber';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AnswerStartLineNumber';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@GroupExamStart';
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AnserEnd';
      Value := 0 ;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@ExPositive_Start';
      Value := 0 ;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@ExPositive_End';
      Value := 0 ;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

    with ADOSP.Parameters do
     Begin
          StnoStart :=ParamByName('@StnoStart').value;
          StnoLength:=ParamByName('@StnoLength').value;
          MajorStart:=ParamByName('@MajorStart').value;
          MajorLength:=ParamByName('@MajorLength').value;
          TermcodeStart :=ParamByName('@TermcodeStart').value;
          TermCodeLength:=ParamByName('@TermCodeLength').value;
          CourseStart :=ParamByName('@CourseStart').value;
          CourseLength:=ParamByName('@CourseLength').value;
          CourseGroupStart :=ParamByName('@CourseGroupStart').value;
          CourseGroupLength:=ParamByName('@CourseGroupLength').value;
          AnswerStart      :=ParamByName('@AnswerStart').value;
          indiscernibleChar:=ParamByName('@indiscernibleChar').value;
          KeyLineNumber    :=ParamByName('@KeyLineNumber').value;
          AnswerStartLineNumber:=ParamByName('@AnswerStartLineNumber').value;
          GroupExamStart       :=ParamByName('@GroupExamStart').value;

          aAnserEnd        := ParamByName('@AnserEnd').Value;
          if  aAnserEnd >0 then
            AnserEnd := aAnserEnd ;
          aExPositive_Start:= ParamByName('@ExPositive_Start').value;
          if  aExPositive_Start >0 then
            ExPositive_Start := aExPositive_Start ;
          aExPositive_End  := ParamByName('@ExPositive_End').value;
          if  aExPositive_End >0 then
            ExPositive_End := aExPositive_End ;

    End;

end;


Procedure  Exec_ysp_shrink(dbname:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_shrink';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@dbname';
      size:= 100;
      Value :=dbname;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_ysp_Backup(dbname:widestring;path:widestring);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ysp_Backup';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@dbname';
      size:= 100;
      Value :=dbname;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@path';
      size:= 510;
      Value :=path;

    end;
     ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_sp_SetForeinKey(inp:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='sp_SetForeinKey';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@inp';
      Value :=inp;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;




Procedure  Exec_update_ExamKey(ExamID:integer;AnswerKey:string);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_ExamKey';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@AnswerKey';
      size:= 1000;
      Value :=AnswerKey;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_insert_AnswerLine(ExamID:integer;ApplicantCode:string;AnswerKey:string;termcode:string;majorCode:string;CourseCode:string;CourseGroup:string;GroupExamId:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_AnswerLine';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ApplicantCode';
      size:= 20;
      Value :=ApplicantCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@AnswerKey';
      size:= 1000;
      Value :=AnswerKey;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@termcode';
      size:= 3;
      Value :=termcode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@majorCode';
      size:= 20;
      Value :=majorCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@CourseCode';
      size:= 15;
      Value :=CourseCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@CourseGroup';
      size:= 5;
      Value :=CourseGroup;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@GroupExamId';
      size:= 5;
      Value :=GroupExamId;

    end;

    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;



Procedure  Exec_update_Exam_Numbers(ExamID:integer;Number_of_Question:integer;number_of_applicant:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_Exam_Numbers';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Number_of_Question';
      Value :=Number_of_Question;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@number_of_applicant';
      Value :=number_of_applicant;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;

Procedure  Exec_insert_Question_ByExamID(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Question_ByExamID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;


Procedure  Exec_Update_ExamAndQuestion_ByExamID(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Update_ExamAndQuestion_ByExamID';
  ADOSP.CommandTimeout:=900;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;


Procedure  Exec_insert_ApplicantAnswer_ByExamID(ExamID:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ApplicantAnswer_ByExamID';
  ADOSP.CommandTimeout:=900;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_update_ApplicantExam_FinalMArk(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_ApplicantExam_FinalMArk';
  ADOSP.CommandTimeout:=900;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;

Procedure  Exec_Analysis_Question_byExamID(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Analysis_Question_byExamID';
  ADOSP.CommandTimeout:=900;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;


Procedure  Exec_insert_Applicant(Stno:string;FirstName:widestring;LastName:widestring;FatherName:widestring;MajorCode:String;Termcode:string);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Applicant';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@Stno';
      size:= 20;
      Value :=Stno;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@FirstName';
      size:= 100;
      Value :=FirstName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@LastName';
      size:= 100;
      Value :=LastName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@FatherName';
      size:= 100;
      Value :=FatherName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@MajorCode';
      size:= 10;
      Value :=MajorCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@Termcode';
      size:= 3;
      Value :=Termcode;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;


Procedure  Exec_Analysis_Exam_Total(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Analysis_Exam_Total';
  ADOSP.CommandTimeout:=900;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;    

end;


Procedure  Exec_imp_TotalEducation(ApplicantCode:string;ApplicantFullname:widestring;CourseCode:string;CourseTitle:widestring;CourseGroup:string;
MajorCode:string;majorTitle:widestring;TermCode:string;TeacherCode:string;TeacherFullname:widestring;EntranceTerm:string);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='imp_TotalEducation';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ApplicantCode';
      size:= 20;
      Value :=ApplicantCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ApplicantFullname';
      size:= 160;
      Value :=ApplicantFullname;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@CourseCode';
      size:= 15;
      Value :=CourseCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@CourseTitle';
      size:= 120;
      Value :=CourseTitle;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@CourseGroup';
      size:= 5;
      Value :=CourseGroup;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@MajorCode';
      size:= 20;
      Value :=MajorCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@majorTitle';
      size:= 120;
      Value :=majorTitle;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@TermCode';
      size:= 3;
      Value :=TermCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@TeacherCode';
      size:= 20;
      Value :=TeacherCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@TeacherFullname';
      size:= 160;
      Value :=TeacherFullname;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@EntranceTerm';
      size:= 3;
      Value :=EntranceTerm;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;


function  Exec_SaveAs_Accesses(oldID:integer; Title:widestring):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SaveAs_Accesses';


  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;;
      Direction := pdInput;
      Name:='@Title';
      Value :=Title;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@oldID';
      Value :=oldID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@newID';
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    result:=ADOSP.Parameters.ParamByName('@newID').Value

end;

Procedure  Exec_delete_Accesses(AccessID:byte);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Accesses';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccessID';
      Value :=AccessID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;


Procedure  Exec_delete_action;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_action';
 
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;
function  Get_sysAppMessage(MsgID:integer):wideString;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.Create(nil);
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ProcedureName:='Get_sys_AppMessage';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ID';
      Value :=msgid;
    end;

    ADOSP.Open;
    try Result:=ADOSP.FieldByname('FarsiMessage').Value; except result:='ãÚÇÏá ÝÇÑÓí ÎØÇí ˜Ï '+IntToStr(MsgID)+ ' ÏÑ ÈÇä˜ ÇØáÇÚÇÊí ÔãÇ ÈÑæÒ äíÓÊ ÈÇ ÔÑ˜Ê íÇäå ÊãÇÓ ÈíÑíÏ' end;
end;
Procedure  Exec_insert_sys_Action(ActionName:string;ActionCaption:widestring;ActionGroupID:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_sys_Action';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ActionName';
      size:= 50;
      Value :=ActionName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ActionCaption';
      size:= 100;
      Value :=ActionCaption;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ActionGroupID';
      Value :=ActionGroupID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;


Procedure  Exec_insert_New_AccessAction;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_New_AccessAction';
 
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;


function Exec_insert_ApplicantExam(ApplicantID:integer;ExamID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ApplicantExam';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@ApplicantExamID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ApplicantID';
      Value :=ApplicantID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@ApplicantExamID').value;
end;


function Exec_select_SubCourseTitle_By_bysubCourseID(SubCourseID:integer):widestring;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='select_SubCourseTitle_By_bysubCourseID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SubCourseID';
      Value :=SubCourseID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@title';
      size:= 200;
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@title').value;
end;

Procedure  Exec_Assign_Applicant_To_Exam(ApplicantID:integer;ExamID:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Assign_Applicant_To_Exam';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ApplicantID';
      Value :=ApplicantID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;

Procedure  Exec_UnAssign_Applicant_To_Exam(ApplicantID:integer;ExamID:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UnAssign_Applicant_To_Exam';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ApplicantID';
      Value :=ApplicantID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;


Procedure  Exec_Assign_TrainingCourse_To_Exam(TrainingCourseID:integer;ExamID:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Assign_TrainingCourse_To_Exam';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@TrainingCourseID';
      Value :=TrainingCourseID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Exec_UnAssign_TrainingCourse_From_Exam(TrainingCourseID:integer;ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UnAssign_TrainingCourse_From_Exam';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@TrainingCourseID';
      Value :=TrainingCourseID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Exec_Refine_Question_ByExamID(ExamID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Refine_Question_ByExamID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ExamID';
      Value :=ExamID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Function  Open_ExamData(ExamID:integer):boolean;
  begin
       Result:=True;
  with dm,Select_ExamData,parameters do
   begin
    Close;
    ParamByName('@ExamID').value:=ExamID;
    Open;
     if Recordcount>0 then
      Select_ExamDataImage.SaveToFile(_TempPath+'yeganeh.doc')
     else
       Result:=False;
   end;
end;
function Duplicate_CourseTitle(CourseTitle:widestring):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Duplicate_CourseTitle';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@CourseTitle';
      size:= 120;
      Value :=CourseTitle;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@result';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@result').value;
end;
function Duplicate_CourseCode(CourseCode:string):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Duplicate_CourseCode';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@CourseCode';
      size:= 15;
      Value :=CourseCode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@result';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@result').value;
end;
function Exist_applicant(appcode:string):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Exist_applicant';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@appcode';
      size:= 20;
      Value :=appcode;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@exists';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@exists').value;
end;
function Get_SystemSetting(VariableName:string):Variant;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_SystemSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@Value';
      size:= 200;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
end;
function Get_UserSetting(UserID:integer;VariableName:string):Variant;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_UserSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@Value';
      size:= 200;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
end;
Procedure  Set_systemSetting(VariableName:string;_Value:Variant);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Set_systemSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Value';
      size:= 200;
      Value :=_Value;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Set_UserSetting(UserID:integer;VariableName:string;_Value:Variant);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Set_UserSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Value';
      size:= 200;
      Value :=_Value;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

end.
