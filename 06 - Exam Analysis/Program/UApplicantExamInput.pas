unit UApplicantExamInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, DBCtrls, UemsVCL, ExtCtrls,
  StdCtrls, Mask, ComCtrls, Buttons, ADODB, xpWindow, xpBitBtn;

type
  TFApplicantExamInput = class(TMBaseForm)
    Button2: TxpBitBtn;
    EdPath: TEdit;
    Label2: TLabel;
    sbtBrowseFilePath: TSpeedButton;
    OpenDialog: TOpenDialog;
    btnSubmitAnswers: TxpBitBtn;
    ProgressBar: TProgressBar;
    DoTrim: TCheckBox;
    ExPositive_Insert: TADOStoredProc;
    procedure sbtBrowseFilePathClick(Sender: TObject);
    procedure btnSubmitAnswersClick(Sender: TObject);
//    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    ExamID:integer;
  end;

var
  FApplicantExamInput: TFApplicantExamInput;
var f: TextFile;
implementation

uses dmu, BusinessLayer, YShamsiDate;

{$R *.dfm}




procedure TFApplicantExamInput.sbtBrowseFilePathClick(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
    EdPath.Text:=OpenDialog.FileName;
end;


function Refine( s:widestring;SpecialChar :String = '';IsAnswerLine :Boolean =False):widestring;
var i: integer;
    str :String;
begin
  str := ' 1234567890'+SpecialChar;
  {if    (SpecialChar <> '') then
      if IsAnswerLine then
        str := str+ SpecialChar
        else s  := Replace(s,SpecialChar,'9');}

  Result:='';
  for i:=1 to length(s) do
    if pos(s[i],str)<>0 then
      result:=result+s[i];
  
end;                    

procedure TFApplicantExamInput.btnSubmitAnswersClick(Sender: TObject);
 var
  line, indiscernibleChar,stno,major,Termcode,Course,CourseGroup, AnswerKey,GroupExamId: string;
  LineNumber, StnoStart, StnoLength,
  MajorStart, MajorLength,    TermcodeStart, TermCodeLength,
  CourseStart, CourseLength,  CourseGroupStart, CourseGroupLength,
  AnswerStart,    KeyLineNumber,   AnswerStartLineNumber,GroupExamStart,
  number_of_applicant,   number_of_Question,i :integer;
  var AnserEnd:integer;
  var ExPositive_Start:integer;
  var ExPositive_End:integer;
  str:String;
  x,y:Integer;
  ReplaceBadCharacter,FileHasBadCharacter:Boolean;
  fw:TextFile;
  var number :Integer;
  var ExPositiveKey : String;
  aaa :String;
begin
  inherited;
  if EdPath.Text = '' then
  begin
    ShowMessage('·ÿ›« ›«Ì· —« „‘Œ’ ò‰Ìœ');
    sbtBrowseFilePathClick(Sender);
    exit;
  end;
  ReplaceBadCharacter:=False;
  FileHasBadCharacter:=False;
  AssignFile(f,EdPath.Text);
  Reset(f);
  while not Eof(f) do
  begin
    if FileHasBadCharacter = True then Break;
    Readln(f,str);
    ExamID := dm.Browse_ExamExamID.AsInteger;
      Exec_Get_TextFormat_By_ExamID
            (ExamID,StnoStart,StnoLength,MajorStart,MajorLength,
            TermcodeStart,TermCodeLength,CourseStart,CourseLength,CourseGroupStart,CourseGroupLength,
            AnswerStart,indiscernibleChar,KeyLineNumber,AnswerStartLineNumber ,GroupExamStart,AnserEnd,ExPositive_Start, ExPositive_End);

    if ExPositive_Start = 0 then
    begin
      for x:=0 to length(str) do
      begin
         if not (Ord(str[x]) in [0,32,42,43,48,49,50,51,52,53,54,55,56,57,58]) then
         begin
               FileHasBadCharacter:=True;
               if MessageDlg('›«Ì· „—»ÊÿÂ œ«—«Ì ò«—«ò —Â«Ì ‰«„⁄ »— „Ì »«‘œ ¬Ì« „«Ì· »Â Ã«Ìê“Ì‰Ì ¬‰Â« »« ò«—«ò — ” «—Â Â” Ìœø',   mtConfirmation,[mbyes,mbno],0)<> mryes then
                  ReplaceBadCharacter:=False
               else
                  ReplaceBadCharacter:=True;
               Break;
         end;
      end;
    end
    else
    begin
      for x:=0 to length(str)-(length(str)-(ExPositive_Start-1)) do
      begin
         if not (Ord(str[x]) in [0,32,42,43,48,49,50,51,52,53,54,55,56,57,58]) then
         begin
               FileHasBadCharacter:=True;
               if MessageDlg('›«Ì· „—»ÊÿÂ œ«—«Ì ò«—«ò —Â«Ì ‰«„⁄ »— „Ì »«‘œ ¬Ì« „«Ì· »Â Ã«Ìê“Ì‰Ì ¬‰Â« »« ò«—«ò — ” «—Â Â” Ìœø',   mtConfirmation,[mbyes,mbno],0)<> mryes then
                  ReplaceBadCharacter:=False
               else
                  ReplaceBadCharacter:=True;
               Break;
         end;
      end;
    end;
  end;
  if (FileHasBadCharacter=True) and (ReplaceBadCharacter=False) then
       Exit;
  if (FileHasBadCharacter=True) and (ReplaceBadCharacter=True) then
  begin
      //DeleteFile(_TempPath+'fw.txt');
      AssignFile(fw,_TempPath+'fw.txt');
      Rewrite(fw);
      Reset(f);
      if ExPositive_Start = 0 then
      begin
          while not Eof(f) do
          begin
             Readln(f,str);
             for x:=0 to length(str)do
               if not (Ord(str[x]) in [0,32,42,43,48,49,50,51,52,53,54,55,56,57,58]) then
                 str[x]:='*';
             WriteLn(fw,str);
          end;
      end
      else
      begin
        while not Eof(f) do
        begin
           Readln(f,str);
           for x:=0 to length(str)-(length(str)-(ExPositive_Start-1)) do
             if not (Ord(str[x]) in [0,32,42,43,48,49,50,51,52,53,54,55,56,57,58]) then
               str[x]:='*';
           WriteLn(fw,str);
        end;

      end;
      Reset(fw);
      Rewrite(f);
      while not Eof(fw) do
      begin
         Readln(fw,str);
         WriteLn(f,str);
      end;
      CloseFile(fw);
      CloseFile(f);
      AssignFile(f,EdPath.Text);
      Reset(f);
  end;

  AssignFile(f,EdPath.Text);
  Reset(f);

  ExamID:=dm.Browse_ExamExamID.AsInteger;


  Exec_Get_TextFormat_By_ExamID
            (ExamID,StnoStart,StnoLength,MajorStart,MajorLength,
            TermcodeStart,TermCodeLength,CourseStart,CourseLength,CourseGroupStart,CourseGroupLength,
            AnswerStart,indiscernibleChar,KeyLineNumber,AnswerStartLineNumber ,GroupExamStart,AnserEnd,ExPositive_Start, ExPositive_End);


  ProgressBar.Position:=ProgressBar.Position+1;
  LineNumber:=1;

  if MessageDlg('«ê— ﬁ»·« «ÿ·«⁄«  «Ì‰ ¬“„Ê‰ —« Ê«—œ ﬂ—œÂ «Ìœ »« Ê—Êœ „Ãœœ «ÿ·«⁄«  ﬁ»·Ì «“ »Ì‰ „Ì —Êœ ° ¬Ì« «œ«„Â „Ì œÂÌœø',
     mtConfirmation,[mbyes,mbno],0)<> mryes then
   exit;


   number_of_applicant:=0;
   number := 0;
    while not eof (f) do
    begin
      number := number + 1;
      Readln(f,line);

      if StnoStart        >0 then  stno       := copy(line,StnoStart        ,StnoLength)        else stno       :='';
      if MajorStart       >0 then  Major      := copy(line,MajorStart       ,MajorLength)       else Major      :='';
      if TermcodeStart    >0 then  Termcode   := copy(line,TermcodeStart    ,TermcodeLength)    else Termcode   :='';
      if CourseStart      >0 then  Course     := copy(line,CourseStart      ,CourseLength)      else Course     :='';
      if CourseGroupStart >0 then  CourseGroup:= copy(line,CourseGroupStart ,CourseGroupLength) else CourseGroup:='';
      if GroupExamStart >0 then  GroupExamId:= copy(line,GroupExamStart    ,2               ) else GroupExamId:='';

      if ExPositive_Start >0 then  aaa := copy(line,ExPositive_Start,Length(line)-ExPositive_Start+1) else ExPositive_Start:=0;

      if LineNumber=KeyLineNumber  then
      begin
         //AnswerKey:=copy(line,AnswerStart,Length(line)-AnswerStart+1);
         if ExPositive_Start > 0 then
         begin
          AnswerKey:=copy(line,AnswerStart,Abs(ExPositive_Start- AnswerStart));
          ExPositiveKey:= copy(line,ExPositive_Start,Length(line)-ExPositive_Start+1);
         end
         else
         begin
           AnswerKey:=copy(line,AnswerStart,Length(line)-AnswerStart+1);
         end;

         if DoTrim.Checked then
           AnswerKey:=trim(Refine(AnswerKey,indiscernibleChar))
         else
           AnswerKey:=Refine(AnswerKey,indiscernibleChar) ;

         //Add Sanaye 950410
         //Õ· „‘ò· Å«”Œ ‰«„Â Â«Ì œ«‰‘ê«Â ﬁ“ÊÌ‰
         AnswerKey := trim(StringReplace(AnswerKey, '*', '' , [rfReplaceAll]));
         //End Sanaye

         //Add Sanaye 950525
         //Õ· „‘ò· ÊÃÊœ ò«—«ò — ›«’·Â œ— ò·Ìœ ”Ê«·« 
         for x := 0 to length(AnswerKey) do
         begin
           if (Ord(AnswerKey[x]) in [32]) then
             if MessageDlg('œ— ò·Ìœ ”Ê«·«  ò«—ò — ‰«„⁄ »—(›«’·Â)ÊÃÊœ œ«—œ ° «Ì« „«Ì· »Â «œ«„Â ò«— Â” Ìœ ø  ', mtInformation, [mbYes,mbNo], 0) = mrNo then
               Abort;
         end;
         //End Sanaye

         Exec_update_ExamKey(ExamID,AnswerKey);
         number_of_Question:=length(AnswerKey);
      end
      else
      if LineNumber>=AnswerStartLineNumber then
      begin
        if ExPositive_Start > 0 then
        begin
         AnswerKey:=copy(line,AnswerStart,Abs(ExPositive_Start- AnswerStart));
        end
        else
        begin
         AnswerKey :=copy    (line,AnswerStart,Length(line)-AnswerStart+1);
        end;

        //
        AnswerKey :=copy    (Refine (AnswerKey,indiscernibleChar),1,number_of_Question);
        AnswerKey :=Replace         (AnswerKey,' ','0');

        Exec_insert_AnswerLine(ExamID,trim(Stno),AnswerKey,termcode,major,Course,CourseGroup,StrToIntDef(GroupExamId,1));
        inc(number_of_applicant);

      end;


      ProgressBar.Position:=ProgressBar.Position+1;
      inc(LineNumber);
      Application.ProcessMessages;

{      ShowMessage(aaa);
      ShowMessage(line);
      ShowMessage(inttostr(AnswerStartLineNumber));
      ShowMessage(inttostr(Number));
}      
      if Number>= AnswerStartLineNumber then
      begin
          if Trim( aaa ) <> '' then
          begin
            ExPositive_Insert.Close;
            ExPositive_Insert.Parameters.ParamByName('@ExamID').Value := ExamID;
            ExPositive_Insert.Parameters.ParamByName('@ApplicantId').Value := stno;
            ExPositive_Insert.Parameters.ParamByName('@Score').Value := aaa;
            ExPositive_Insert.Parameters.ParamByName('@Desc').Value := '';
            ExPositive_Insert.Parameters.ParamByName('@ExPositiveKey').Value := ExPositiveKey;
            ExPositive_Insert.ExecProc;
          end
      end;

    end;

    Exec_update_Exam_Numbers(ExamID,number_of_Question,number_of_applicant);
    Exec_insert_Question_ByExamID(ExamID);


   closeFile(f);
   ProgressBar.Position:=1000;
   ShowMessage('»« „Ê›ﬁÌ   «ÿ·«⁄«  Å«”Œ‰«„Â Â« «‰ ﬁ«· Ì«› ');
   ProgressBar.Position:=0

end;

{procedure TFApplicantExamInput.BitBtn2Click(Sender: TObject);
begin
  inherited;
 ProgressBar.Position:=200;
Exec_insert_Question_ByExamID(ExamID);
Exec_insert_ApplicantAnswer_ByExamID(ExamID);

  ProgressBar.Position:=500;
//Exec_update_finalMArk(dm.Browse_ExamExamID.AsInteger);
  ProgressBar.Position:=700;
//Exec_Calc_Question(dm.Browse_ExamExamID.AsInteger) ;

 ProgressBar.Position:=1000;
 ShowMessage('»« „Ê›ﬁÌ    Å«”Œ‰«„Â Â«   ’ÕÌÕ ‘œ');
 ProgressBar.Position:=0
end;
 }
procedure TFApplicantExamInput.Button2Click(Sender: TObject);
begin
  inherited;
  close
end;

end.



