object Form1: TForm1
  Left = 364
  Top = 109
  AutoScroll = False
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1575#1580#1585#1575#1610' Script'
  ClientHeight = 198
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 40
    Width = 56
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = '1394/05/05'
    ParentBiDiMode = False
  end
  object Number: TLabel
    Left = 344
    Top = 56
    Width = 23
    Height = 13
    Caption = #1578#1593#1583#1575#1583
  end
  object Label2: TLabel
    Left = 315
    Top = 72
    Width = 60
    Height = 13
    Caption = #1583#1587#1578#1608#1585' '#1580#1575#1585#1610':'
  end
  object Label3: TLabel
    Left = 2
    Top = 72
    Width = 157
    Height = 13
    Caption = ' '#1583#1585' '#1589#1608#1585#1578' '#1576#1585#1608#1586' '#1582#1591#1575' '#1583#1608#1576#1575#1585#1607' '#1575#1580#1585#1575' '#1705#1606#1610#1583' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SqlTxtx: TMemo
    Left = -1
    Top = 84
    Width = 1562
    Height = 449
    Lines.Strings = (
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Get_ApplicantCodeExam_Info]'#39') AND type in (N'#39'P'#39', N'#39'PC' +
        #39'))'
      'DROP PROCEDURE [dbo].[Get_ApplicantCodeExam_Info]'
      'GO'
      ''
      'CREATE proc [dbo].[Get_ApplicantCodeExam_Info]'
      ' @ApplicantCode varchar(15),@examid int'
      'as'
      
        'SELECT     Applicant.ApplicantCode, Applicant.FirstName, Applica' +
        'nt.LastName, Applicant.Termcode, Major.MajorTitle, ApplicantExam' +
        '.FinalMark, Grouping.GroupingTitle, '
      '                      ApplicantExam.ord,'
      '(SELECT     count(Question.QuestionID)'
      'FROM         ApplicantAnswer INNER JOIN'
      
        '                      Question ON ApplicantAnswer.QuestionID = Q' +
        'uestion.QuestionID'
      
        'WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) ' +
        'AND (Question.ExamID = ApplicantExam.Examid)'
      
        'and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) a' +
        'nd QuestionActivityID=1) Correct_answer'
      ','
      '(SELECT     count(Question.QuestionID)'
      'FROM         ApplicantAnswer INNER JOIN'
      
        '                      Question ON ApplicantAnswer.QuestionID = Q' +
        'uestion.QuestionID'
      
        'WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) ' +
        'AND (Question.ExamID = ApplicantExam.Examid)'
      
        'and AnswerItemNumber not in (CorrectItemNumber,isnull(CorrectIte' +
        'mNumber2,0)) and AnswerItemNumber<>0 and QuestionActivityID=1) W' +
        'rong_answer'
      ','
      '(SELECT     count(Question.QuestionID)'
      'FROM         ApplicantAnswer INNER JOIN'
      
        '                      Question ON ApplicantAnswer.QuestionID = Q' +
        'uestion.QuestionID'
      
        'WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) ' +
        'AND (Question.ExamID = ApplicantExam.Examid)'
      'and  AnswerItemNumber=0 and QuestionActivityID=1) Withot_answer'
      'FROM         ApplicantExam INNER JOIN'
      
        '                      Applicant ON ApplicantExam.ApplicantID = A' +
        'pplicant.ApplicantID LEFT OUTER JOIN'
      
        '                      Major ON Applicant.MajorID = Major.MajorID' +
        ' LEFT OUTER JOIN'
      
        '                      Grouping ON ApplicantExam.GroupingID = Gro' +
        'uping.GroupingID'
      
        'WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Applica' +
        'ntExam.examid=@examid'
      'GO'
      ''
      ''
      ''
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Analysis_Question_byExamID]'#39') AND type in (N'#39'P'#39', N'#39'PC' +
        #39'))'
      'DROP PROCEDURE [dbo].[Analysis_Question_byExamID]'
      'GO'
      ''
      ''
      'CREATE  PROCEDURE [dbo].[Analysis_Question_byExamID]'
      #9'(@ExamID'#9'[int])'
      'AS'
      ' declare @select nvarchar(3000)'
      ' set   @select='#39'SELECT Question.QuestionID  , '
      
        ' sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectI' +
        'temNumber2) then 1 else 0 end)  Correct,'
      
        ' sum ( case when AnswerItemNumber in (1,2,3,4,5) then 1 else 0 e' +
        'nd) Answerd,'
      ' count(*) All_Count,'
      
        ' sum ( case when AnswerItemNumber not in (CorrectItemNumber,Corr' +
        'ectItemNumber2) and AnswerItemNumber<>0 then 1 else 0 end) Wrong' +
        ','
      
        'Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,Co' +
        'rrectItemNumber2) then 1 else 0 end) /'
      'cast(count(AnswerItemNumber )as float),3) as  Di,'
      'sum ( case when  GroupingID=3  then 1 else 0 end) Group3,'
      'sum ( case when  GroupingID=1  then 1 else 0 end) Group1, '
      
        'sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G3,'
      
        'sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G1,'
      '0.0 dis'
      ' '#39
      'declare @Number_Of_Item tinyint'
      'SELECT     @Number_Of_Item=Number_of_Items'
      'FROM         Exam'
      'WHERE     (ExamID = @ExamID)'
      'declare @ItemNumber tinyint,@GroupingID tinyint'
      'set @ItemNumber=0 '
      'while @ItemNumber<=@Number_Of_Item'
      ' begin'
      '  set @GroupingID=1 '
      '  while @GroupingID<=3 '
      '   begin'
      '     if @GroupingID<>2   '
      
        '      set @select=@select+'#39',sum ( case when AnswerItemNumber= '#39'+' +
        'cast(@ItemNumber as char(1))+'#39' and GroupingID='#39'+cast(@GroupingID' +
        ' as char(1)) +'
      
        #9#9#9#9#9#9#9#39' then 1 else 0 end ) G'#39'+cast(@GroupingID as char(1))+'#39'_'#39 +
        '+cast(@ItemNumber as char(1))'
      ''
      '     set @GroupingID=@GroupingID+1'
      '  end  --@GroupingID'
      '  set @select=@select+'#39','
      
        'sum ( case when AnswerItemNumber= '#39'+cast(@ItemNumber as char(1))' +
        '+ '
      #39' then 1 else 0 end ) all'#39'+cast(@ItemNumber as char(1))'
      ' set @ItemNumber=@ItemNumber+1'
      'end -- @ItemNumber'
      '      set @select=@select+'#39' into ##m'
      'FROM          Question'
      
        'INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Que' +
        'stion.QuestionID '
      
        'INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applic' +
        'antAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID'
      
        'where Question.Examid='#39'+cast(@ExamID as varchar(10))+'#39'-- and Que' +
        'stionActivityID=1'
      'group by Question.QuestionID,Number, CorrectItemNumber  '#39
      ''
      ''
      'exec sp_executesql @Select'
      '/*select *'
      'from ##m'
      '*/'
      'update Question'
      'set Question.Correct=##m.Correct ,'
      'Question.Answerd=##m.Answerd ,'
      'Question.All_Count=##m.All_Count ,'
      'Question.Wrong=##m.Wrong ,'
      'Question.Difficulty  =##m.Di ,'
      'Question.Discrimination =round('
      
        '(Correct_G3 -Correct_G1)/cast(case when group3>group1 then group' +
        '3 else group1 end as float) ,3),'
      'Question.G1_0=##m.G1_0 ,'
      'Question.G3_0=##m.G3_0 ,'
      'Question.all0=##m.all0 ,'
      'Question.G1_1=##m.G1_1 ,'
      'Question.G3_1=##m.G3_1 ,'
      'Question.all1=##m.all1 ,'
      'Question.G1_2=##m.G1_2 ,'
      'Question.G3_2=##m.G3_2 ,'
      'Question.all2=##m.all2 ,'
      'Question.G1_3=##m.G1_3 ,'
      'Question.G3_3=##m.G3_3 ,'
      'Question.all3=##m.all3 ,'
      'Question.G1_4=##m.G1_4 ,'
      'Question.G3_4=##m.G3_4 ,'
      'Question.all4=##m.all4 ,'
      'Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)'
      
        'from Question inner join ##m on ##m.QuestionID=Question.Question' +
        'ID'
      ''
      'update Question'
      
        'set number_Of_Item=(case  when cast(all1 as float)/all_count>0.0' +
        '5 then 1 else 0 end)+'
      
        '(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 end' +
        ')'
      ''
      'drop table ##m'
      ''
      ''
      'GO'
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Select_Applicant_by_Examid]'#39') AND type in (N'#39'P'#39', N'#39'PC' +
        #39'))'
      'DROP PROCEDURE [dbo].[Select_Applicant_by_Examid]'
      'GO'
      ''
      'CREATE  PROCEDURE [dbo].[Select_Applicant_by_Examid]'
      #9'(@ExamID'#9'int)'
      'AS'
      'declare @FullPoint float,@maxMark float'
      'select @FullPoint=sum( Coefficient)'
      'FROM         Question'
      'WHERE     ( ExamID = @ExamID) and (questionactivityid<>2)'
      ''
      'select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark'
      'from Exam '
      'WHERE     ( ExamID = @ExamID)'
      ''
      'if @maxMark is null or @maxMark<=0 set @maxMark=20'
      ''
      
        'SELECT     Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle' +
        ', ApplicantExam.FinalMark, @FullPoint FullPoint ,ApplicantExam.o' +
        'rd, '
      
        '                      CASE WHEN ApplicantExam.Accepted = 1 THEN ' +
        #39#1602#1576#1608#1604#39' ELSE '#39#1585#1583#39' END ACCEPT, Grouping.GroupingTitle,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@Full' +
        'Point,2) end mark,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPoin' +
        't,2) end mark20,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullPoi' +
        'nt,2) end mark100'
      'FROM      Applicant    '
      
        'INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Appl' +
        'icant.ApplicantID '
      
        'left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.Gro' +
        'upingID'
      'left  JOIN Major  ON Applicant.MajorID = Major.MajorID'
      
        'left join EducationGroup  ON EducationGroup.EducationGroupID = M' +
        'ajor.EducationGroupID'
      
        ' LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.Facul' +
        'tyID'
      'where ExamId=@ExamId'
      'order by ord'
      ''
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[CalcFullPoint]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39 +
        'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[CalcFullPoint]'
      ''
      'GO'
      ''
      'CREATE  Function [dbo].[CalcFullPoint](@ExamID int)'
      ''
      'returns float   AS BEGIN '
      'declare @FP float'
      ''
      #9'select @FP=sum( Coefficient)'
      #9'FROM         Question'
      #9'WHERE     ( ExamID = @ExamID) and (questionactivityid<>2)'
      ''
      #9'select @FP=CorrectItemPoint*@FP'
      #9'from Exam '
      #9'WHERE     ( ExamID = @ExamID)'
      ''
      ''
      'Return @FP'
      ''
      'end'
      ''
      ''
      'GO'
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Select_ExamDetail_by_where]'#39') AND type in (N'#39'P'#39', N'#39'PC' +
        #39'))'
      'DROP PROCEDURE [dbo].[Select_ExamDetail_by_where]'
      'GO'
      ''
      'CREATE procEDURE [Select_ExamDetail_by_where]  '
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ' set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      ' if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT     ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(case wh' +
        'en maxmark is null or maxmark <=0 then 20 else maxmark end))/dbo' +
        '.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(case wh' +
        'en maxmark is null or maxmark <=0 then 20 else maxmark end))/dbo' +
        '.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      'exec(@s)'
      'set @s='#39
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      ' Exam.MinPassedMark ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        'round(KR20,2) KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxo' +
        'nomy23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Discrimination >=   '#39'+cast(minvalue as varchar(10))+'#39' and  Discr' +
        'imination<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578#1585#1575#1602':'#39'+Discri' +
        'minationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM         Exam '
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID '
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      ''
      'GO'
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Update_ExamAndQuestion_ByExamID]'#39') AND type in (N'#39'P'#39',' +
        ' N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Update_ExamAndQuestion_ByExamID]'
      'GO'
      'create proc [dbo].[Update_ExamAndQuestion_ByExamID]'
      '(@ExamID'#9'[int])'
      'as'
      ''
      
        'update exam set Number_of_Question = (select  count(*) from ques' +
        'tion where ExamID = @ExamID)'
      #9#9#9#9
      'where ExamID = @ExamID'
      ''
      
        'update Exam set number_of_applicant = (select count(*) from dbo.' +
        'ApplicantExam where examid = @ExamID)'
      'where examid = @ExamID'
      ''
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Get_ApplicantExamDetails_by_ApplicantCode]'#39') AND type' +
        ' in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Get_ApplicantExamDetails_by_ApplicantCode]'
      'GO'
      ''
      ''
      ''
      ''
      ''
      'CREATE  proc [dbo].[Get_ApplicantExamDetails_by_ApplicantCode]'
      ' @ApplicantCode varchar(15),@examid int'
      'as'
      
        'SELECT     Question.Number, Question.CorrectItemNumber, Question' +
        '.CorrectItemNumber2, ApplicantAnswer.AnswerItemNumber,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0 ' +
        'end as bit) Item1,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0 ' +
        'end as bit) Item2,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0 ' +
        'end as bit) Item3,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0 ' +
        'end as bit) Item4,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0 ' +
        'end as bit) Item5'
      'FROM         Applicant INNER JOIN'
      
        '                      ApplicantExam ON Applicant.ApplicantID = A' +
        'pplicantExam.ApplicantID INNER JOIN'
      
        '                      Exam ON ApplicantExam.ExamID = Exam.ExamID' +
        ' INNER JOIN'
      
        '                      Question ON Exam.ExamID = Question.ExamID ' +
        'INNER JOIN'
      
        '                      ApplicantAnswer ON Applicant.ApplicantID =' +
        ' ApplicantAnswer.ApplicantID AND Question.QuestionID = Applicant' +
        'Answer.QuestionID'
      
        'WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.ex' +
        'amid=@examid'
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[Get_ExamKey_Details_ByExamID]'#39') AND type in (N'#39'P'#39', N'#39 +
        'PC'#39'))'
      'DROP PROCEDURE [dbo].[Get_ExamKey_Details_ByExamID]'
      'GO'
      ''
      'CREATE  proc [dbo].[Get_ExamKey_Details_ByExamID]'
      '@examid int'
      'as'
      
        'SELECT     Question.Number, Question.CorrectItemNumber,isnull(Co' +
        'rrectItemNumber2,0) CorrectItemNumber2,'
      
        'cast(case when Question.CorrectItemNumber=1 then 1 else 0 end as' +
        ' bit) Item1,'
      
        'cast(case when Question.CorrectItemNumber=2 then 1 else 0 end as' +
        ' bit) Item2,'
      
        'cast(case when Question.CorrectItemNumber=3 then 1 else 0 end as' +
        ' bit) Item3,'
      
        'cast(case when Question.CorrectItemNumber=4 then 1 else 0 end as' +
        ' bit) Item4,'
      
        'cast(case when Question.CorrectItemNumber=5 then 1 else 0 end as' +
        ' bit) Item5'
      'FROM    Question '
      'WHERE     examid=@examid'
      ''
      'GO'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9'(@ExamID'#9'[int])'
      'AS'
      'declare @number_of_applicant int,@Order1 int,@order2 int,'
      
        #9#9'@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint ' +
        'float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark ' +
        'FLOAT'#9#9
      #9#9
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      
        '       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPass' +
        'edMark,'
      '       @ZaribeFinalMark=MaxMark/Number_of_Question'
      'from  Exam'
      'where ExamID =@ExamID'
      ''
      ''
      
        'select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@C' +
        'orrectItemPoint'
      'from question'
      'where ExamID=@ExamID and QuestionActivityID in (1,3)'
      ''
      ''
      '--SELECT @AcceptedMark,@MinPassedMark,@CorrectItemPoint'
      'SELECT * FROM Exam e WHERE e.ExamID=223'
      ''
      'SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then     @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( Question.Corre' +
        'ctItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=' +
        '3 then @CorrectItemPoint'
      '      else    @WrongItemPoint end) as finalmark '
      'into #m'
      'FROM         ApplicantAnswer '
      
        'INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.Q' +
        'uestionID'
      'where Question.ExamID=@ExamID'
      'group by ApplicantAnswer.ApplicantID'
      ''
      '-- Added By Saeedi on 901115'
      'UPDATE #m'
      'SET finalmark=finalmark*@ZaribeFinalMark'
      ''
      ''
      'select *,1 group27,identity(int,1,1) ord into #n'
      'from #m m'
      'order by finalmark desc '
      'select @number_of_applicant=max(ord)'
      'from #n'
      ''
      '--SELECT * FROM #n'
      ''
      'if @number_of_applicant<20 '
      '  set  @Order1=@number_of_applicant/2'
      'else'
      'if @number_of_applicant between 20  and 40'
      '  set  @Order1=10'
      'else '
      'set @Order1=(27*@number_of_applicant)/100'
      ''
      'set @Order2=@number_of_applicant-@order1'
      ''
      'update #n'
      'set group27=case when ord<=@order1 then 3 '
      '                 when ord>@order1 and ord<@order2 then 2'
      '                 when ord>=@order2 then 1 end'
      'update ApplicantExam'
      'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        '    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmar' +
        'k,'
      
        '    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 ' +
        'end'
      'from  ApplicantExam'
      ' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      'where ApplicantExam.ExamID=@ExamID'
      ''
      'GO'
      ''
      'ALTER procEDURE [dbo].[Select_ExamDetail_by_where]  '
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ' set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      ' if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT     ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*(case when maxmark is null or maxmark <=0 t' +
        'hen 20 else maxmark end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*(case when maxmark is null or maxmark <=0 t' +
        'hen 20 else maxmark end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      'exec(@s)'
      'set @s='#39
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      ' Exam.MinPassedMark ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        'round(KR20,2) KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxo' +
        'nomy23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Discrimination >=   '#39'+cast(minvalue as varchar(10))+'#39' and  Discr' +
        'imination<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578#1585#1575#1602':'#39'+Discri' +
        'minationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM         Exam '
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID '
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      ''
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_Examid]'
      #9'(@ExamID'#9'int)'
      'AS'
      'declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT'
      'select @FullPoint=sum( Coefficient)'
      'FROM         Question'
      'WHERE     ( ExamID = @ExamID) and (questionactivityid<>2)'
      ''
      
        'select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,@' +
        'Number_of_Question=Number_of_Question'
      'from Exam '
      'WHERE     ( ExamID = @ExamID)'
      ''
      'if @maxMark is null or @maxMark<=0 set @maxMark=20'
      ''
      '--SELECT @Number_of_Question/@MaxMark , @maxMark ,  @FullPoint'
      '--SELECT FinalMark FROM ApplicantExam WHERE ExamID=223  '
      ''
      ''
      
        'SELECT    Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle,' +
        ' ApplicantExam.FinalMark, @FullPoint FullPoint ,ApplicantExam.or' +
        'd, '
      
        '                      CASE WHEN ApplicantExam.Accepted = 1 THEN ' +
        #39#1602#1576#1608#1604#39' ELSE '#39#1585#1583#39' END ACCEPT, Grouping.GroupingTitle,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@Fu' +
        'llPoint,2) end mark,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPo' +
        'int,2) end mark20,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullP' +
        'oint,2) end mark100'
      'case when FinalMark<0 then 0 else round(FinalMark,2) end mark,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(20/@maxMark),' +
        '2) end mark20,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMar' +
        'k),2) end mark100'
      'FROM      Applicant    '
      
        'INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Appl' +
        'icant.ApplicantID '
      
        'left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.Gro' +
        'upingID'
      'left  JOIN Major  ON Applicant.MajorID = Major.MajorID'
      
        'left join EducationGroup  ON EducationGroup.EducationGroupID = M' +
        'ajor.EducationGroupID'
      
        ' LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.Facul' +
        'tyID'
      'where ExamId=@ExamId'
      'order by ord'
      'GO'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9'(@ExamID'#9'[int])'
      'AS'
      'declare @number_of_applicant int,@Order1 int,@order2 int,'
      
        #9#9'@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint ' +
        'float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark ' +
        'FLOAT'#9#9
      #9#9
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      
        '       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPass' +
        'edMark,'
      '       @ZaribeFinalMark=MaxMark/Number_of_Question'
      'from  Exam'
      'where ExamID =@ExamID'
      ''
      ''
      
        'select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@C' +
        'orrectItemPoint'
      'from question'
      'where ExamID=@ExamID and QuestionActivityID in (1,3)'
      ''
      ''
      '--SELECT @AcceptedMark,@MinPassedMark,@CorrectItemPoint'
      'SELECT * FROM Exam e WHERE e.ExamID=223'
      ''
      'SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then     @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( Question.Corre' +
        'ctItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=' +
        '3 then @CorrectItemPoint'
      '      else    @WrongItemPoint end) as finalmark '
      'into #m'
      'FROM         ApplicantAnswer '
      
        'INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.Q' +
        'uestionID'
      'where Question.ExamID=@ExamID'
      'group by ApplicantAnswer.ApplicantID'
      ''
      '-- Added By Saeedi on 901115'
      'UPDATE #m'
      'SET finalmark=finalmark*@ZaribeFinalMark'
      ''
      ''
      'select *,1 group27,identity(int,1,1) ord into #n'
      'from #m m'
      'order by finalmark desc '
      'select @number_of_applicant=max(ord)'
      'from #n'
      ''
      '--SELECT * FROM #n'
      ''
      'if @number_of_applicant<20 '
      '  set  @Order1=@number_of_applicant/2'
      'else'
      'if @number_of_applicant between 20  and 40'
      '  set  @Order1=10'
      'else '
      'set @Order1=(27*@number_of_applicant)/100'
      ''
      'set @Order2=@number_of_applicant-@order1'
      ''
      'update #n'
      'set group27=case when ord<=@order1 then 3 '
      '                 when ord>@order1 and ord<@order2 then 2'
      '                 when ord>=@order2 then 1 end'
      'update ApplicantExam'
      'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        '    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmar' +
        'k,'
      
        '    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 ' +
        'end'
      'from  ApplicantExam'
      ' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      'where ApplicantExam.ExamID=@ExamID'
      '---------- Added BY Saeedi on 1391/01/29'
      
        #9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinP' +
        'assedMark1 FLOAT,@Mark FLOAT'#9#9
      
        '    SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(Min' +
        'PassedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9'DECLARE crr CURSOR FOR '#9
      #9'SELECT ApplicantID FROM Applicant '
      
        #9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHE' +
        'RE ExamID=@ExamID)'
      #9'OPEN crr'
      #9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9'WHILE @@FETCH_STATUS = 0'
      #9'BEGIN'
      
        #9#9'SELECT @FinalMark=ISNULL(FinalMark,0) FROM ApplicantExam WHERE' +
        ' ExamID=@ExamID AND ApplicantID=@ApplicantID'
      #9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=1'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9'ELSE'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=0'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9'END'
      #9'CLOSE crr'
      ' '#9'DEALLOCATE crr  '#9
      '---------- End Of Added BY Saeedi on 1391/01/29'
      'GO'
      'ALTER  PROCEDURE [dbo].[Analysis_Question_byExamID]'
      #9'(@ExamID'#9'[int])'
      'AS'
      ''
      ' IF OBJECT_ID('#39'tempdb..##m'#39') IS NOT NULL DROP TABLE ##m'#9
      ''
      ' declare @select nvarchar(3000)'
      ' set   @select='#39'SELECT Question.QuestionID  , '
      
        ' sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectI' +
        'temNumber2) then 1 else 0 end)  Correct,'
      
        ' sum ( case when AnswerItemNumber in (1,2,3,4,5) then 1 else 0 e' +
        'nd) Answerd,'
      ' count(*) All_Count,'
      
        ' sum ( case when AnswerItemNumber not in (CorrectItemNumber,Corr' +
        'ectItemNumber2) and AnswerItemNumber<>0 then 1 else 0 end) Wrong' +
        ','
      
        'Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,Co' +
        'rrectItemNumber2) then 1 else 0 end) /'
      'cast(count(AnswerItemNumber )as float),3) as  Di,'
      'sum ( case when  GroupingID=3  then 1 else 0 end) Group3,'
      'sum ( case when  GroupingID=1  then 1 else 0 end) Group1, '
      
        'sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G3,'
      
        'sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G1,'
      '0.0 dis'
      ' '#39
      'declare @Number_Of_Item tinyint'
      'SELECT     @Number_Of_Item=Number_of_Items'
      'FROM         Exam'
      'WHERE     (ExamID = @ExamID)'
      'declare @ItemNumber tinyint,@GroupingID tinyint'
      'set @ItemNumber=0 '
      'while @ItemNumber<=@Number_Of_Item'
      ' begin'
      '  set @GroupingID=1 '
      '  while @GroupingID<=3 '
      '   begin'
      '     if @GroupingID<>2   '
      
        '      set @select=@select+'#39',sum ( case when AnswerItemNumber= '#39'+' +
        'cast(@ItemNumber as char(1))+'#39' and GroupingID='#39'+cast(@GroupingID' +
        ' as char(1)) +'
      
        #9#9#9#9#9#9#9#39' then 1 else 0 end ) G'#39'+cast(@GroupingID as char(1))+'#39'_'#39 +
        '+cast(@ItemNumber as char(1))'
      ''
      '     set @GroupingID=@GroupingID+1'
      '  end  --@GroupingID'
      '  set @select=@select+'#39','
      
        'sum ( case when AnswerItemNumber= '#39'+cast(@ItemNumber as char(1))' +
        '+ '
      #39' then 1 else 0 end ) all'#39'+cast(@ItemNumber as char(1))'
      ' set @ItemNumber=@ItemNumber+1'
      'end -- @ItemNumber'
      '      set @select=@select+'#39' into ##m'
      'FROM          Question'
      
        'INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Que' +
        'stion.QuestionID '
      
        'INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applic' +
        'antAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID'
      
        'where Question.Examid='#39'+cast(@ExamID as varchar(10))+'#39'-- and Que' +
        'stionActivityID=1'
      'group by Question.QuestionID,Number, CorrectItemNumber  '#39
      ''
      ''
      'exec sp_executesql @Select'
      '/*select *'
      'from ##m'
      '*/'
      'update Question'
      'set Question.Correct=##m.Correct ,'
      'Question.Answerd=##m.Answerd ,'
      'Question.All_Count=##m.All_Count ,'
      'Question.Wrong=##m.Wrong ,'
      'Question.Difficulty  =##m.Di ,'
      'Question.Discrimination =round('
      
        '(Correct_G3 -Correct_G1)/cast(case when group3>group1 then group' +
        '3 else group1 end as float) ,3),'
      'Question.G1_0=##m.G1_0 ,'
      'Question.G3_0=##m.G3_0 ,'
      'Question.all0=##m.all0 ,'
      'Question.G1_1=##m.G1_1 ,'
      'Question.G3_1=##m.G3_1 ,'
      'Question.all1=##m.all1 ,'
      'Question.G1_2=##m.G1_2 ,'
      'Question.G3_2=##m.G3_2 ,'
      'Question.all2=##m.all2 ,'
      'Question.G1_3=##m.G1_3 ,'
      'Question.G3_3=##m.G3_3 ,'
      'Question.all3=##m.all3 ,'
      'Question.G1_4=##m.G1_4 ,'
      'Question.G3_4=##m.G3_4 ,'
      'Question.all4=##m.all4 ,'
      'Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)'
      
        'from Question inner join ##m on ##m.QuestionID=Question.Question' +
        'ID'
      ''
      'update Question'
      
        'set number_Of_Item=(case  when cast(all1 as float)/all_count>0.0' +
        '5 then 1 else 0 end)+'
      
        '(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 end' +
        ')'
      ''
      'drop table ##m'
      'GO'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9'(@ExamID'#9'[int])'
      'AS'
      'declare @number_of_applicant int,@Order1 int,@order2 int,'
      
        #9#9'@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint ' +
        'float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark ' +
        'FLOAT'#9#9
      #9#9
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      
        '       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPass' +
        'edMark,'
      '       @ZaribeFinalMark=MaxMark/Number_of_Question'
      'from  Exam'
      'where ExamID =@ExamID'
      ''
      
        'select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@C' +
        'orrectItemPoint'
      'from question'
      'where ExamID=@ExamID and QuestionActivityID in (1,3)'
      ''
      '--SELECT * FROM Exam e WHERE e.ExamID=223'
      ''
      'IF OBJECT_ID('#39'tempdb..#m'#39') IS NOT NULL DROP TABLE #m'
      'SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( Question.Corre' +
        'ctItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=' +
        '3 then @CorrectItemPoint'
      '      else    @WrongItemPoint end) as finalmark '
      'into #m'
      'FROM         ApplicantAnswer '
      
        'INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.Q' +
        'uestionID'
      'where Question.ExamID=@ExamID'
      'group by ApplicantAnswer.ApplicantID'
      ''
      '-- Added By Saeedi on 901115'
      'UPDATE #m'
      'SET finalmark=finalmark*@ZaribeFinalMark'
      ''
      'IF OBJECT_ID('#39'tempdb..#n'#39') IS NOT NULL DROP TABLE #n'
      'select *,1 group27,identity(int,1,1) ord into #n'
      'from #m m'
      'order by finalmark desc '
      'select @number_of_applicant=max(ord)'
      'from #n'
      ''
      'if @number_of_applicant<20 '
      '  set  @Order1=@number_of_applicant/2'
      'else'
      'if @number_of_applicant between 20  and 40'
      '  set  @Order1=10'
      'else '
      'set @Order1=(27*@number_of_applicant)/100'
      ''
      'set @Order2=@number_of_applicant-@order1'
      ''
      'update #n'
      'set group27=case when ord<=@order1 then 3 '
      '                 when ord>@order1 and ord<@order2 then 2'
      '                 when ord>=@order2 then 1 end'
      'update ApplicantExam'
      'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        '    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmar' +
        'k,'
      
        '    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 ' +
        'end'
      'from  ApplicantExam'
      ' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      'where ApplicantExam.ExamID=@ExamID'
      '---------- Added BY Saeedi on 1391/01/29'
      
        #9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinP' +
        'assedMark1 FLOAT,@Mark FLOAT'#9#9
      
        '    SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(Min' +
        'PassedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9'DECLARE crr CURSOR FOR '#9
      #9'SELECT ApplicantID FROM Applicant '
      
        #9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHE' +
        'RE ExamID=@ExamID)'
      #9'OPEN crr'
      #9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9'WHILE @@FETCH_STATUS = 0'
      #9'BEGIN'
      
        #9#9'SELECT @FinalMark=ISNULL(FinalMark,0) FROM ApplicantExam WHERE' +
        ' ExamID=@ExamID AND ApplicantID=@ApplicantID'
      #9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=1'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9'ELSE'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=0'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9'END'
      #9'CLOSE crr'
      ' '#9'DEALLOCATE crr  '#9
      '---------- End Of Added BY Saeedi on 1391/01/29'
      'GO'
      
        'IF NOT EXISTS( SELECT id FROM syscolumns WHERE NAME='#39'all6'#39' AND i' +
        'd=OBJECT_ID('#39'Question'#39') )'
      'ALTER TABLE dbo.Question ADD'
      #9'all6 smallint NULL'
      'GO'
      
        'IF NOT EXISTS( SELECT id FROM syscolumns WHERE NAME='#39'NumberOf_6i' +
        'tem_Question'#39' AND id=OBJECT_ID('#39'Exam'#39') )'
      'ALTER TABLE dbo.Exam ADD'
      #9'NumberOf_6item_Question smallint NULL'
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]'
      #9'(@examId int,@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      'set @SQL='#39
      
        'SELECT     Question.*, DifficultyTitle, DiscriminationTitle,ques' +
        'tionActivityTitle,'
      '       100*all0/All_Count all0_percent'
      '      ,100*all1/All_Count all1_percent'
      '      ,100*all2/All_Count all2_percent'
      '      ,100*all3/All_Count all3_percent'
      '      ,100*all4/All_Count all4_percent'
      '      ,100*all5/All_Count all5_percent'
      '      ,100*all6/All_Count all6_percent'
      '      '
      'FROM         Question '
      
        'left JOIN Difficulty       ON Question.Difficulty >= Difficulty.' +
        'MinValue and Question.Difficulty <Difficulty.MaxValue'
      
        'left JOIN Discrimination   ON Question.Discrimination >= Discrim' +
        'ination.MinValue and Question.Discrimination <Discrimination.Max' +
        'Value'
      
        'left join questionActivity ON questionActivity.questionActivityI' +
        'D= Question.questionActivityID where Question.ExamID='#39'+cast(@exa' +
        'mID as varchar(5))'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where '
      'exec(@sql)'
      'GO'
      'ALTER  PROCEDURE [dbo].[Analysis_Question_byExamID]'
      #9'(@ExamID'#9'[int])'
      'AS'
      ''
      ' IF OBJECT_ID('#39'tempdb..##m'#39') IS NOT NULL DROP TABLE ##m'#9
      ''
      ' declare @select nvarchar(3000)'
      ' set   @select='#39'SELECT Question.QuestionID  , '
      
        ' sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectI' +
        'temNumber2) then 1 else 0 end)  Correct,'
      
        ' sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else 0' +
        ' end) Answerd,'
      ' count(*) All_Count,'
      
        ' sum ( case when AnswerItemNumber not in (CorrectItemNumber,Corr' +
        'ectItemNumber2) and AnswerItemNumber<>0 then 1 else 0 end) Wrong' +
        ','
      
        'Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,Co' +
        'rrectItemNumber2) then 1 else 0 end) /'
      'cast(count(AnswerItemNumber )as float),3) as  Di,'
      'sum ( case when  GroupingID=3  then 1 else 0 end) Group3,'
      'sum ( case when  GroupingID=1  then 1 else 0 end) Group1, '
      
        'sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G3,'
      
        'sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G1,'
      '0.0 dis'
      ' '#39
      'declare @Number_Of_Item tinyint'
      'SELECT     @Number_Of_Item=Number_of_Items'
      'FROM         Exam'
      'WHERE     (ExamID = @ExamID)'
      'declare @ItemNumber tinyint,@GroupingID tinyint'
      'set @ItemNumber=0 '
      'while @ItemNumber<=@Number_Of_Item'
      ' begin'
      '  set @GroupingID=1 '
      '  while @GroupingID<=3 '
      '   begin'
      '     if @GroupingID<>2   '
      
        '      set @select=@select+'#39',sum ( case when AnswerItemNumber= '#39'+' +
        'cast(@ItemNumber as char(1))+'#39' and GroupingID='#39'+cast(@GroupingID' +
        ' as char(1)) +'
      
        #9#9#9#9#9#9#9#39' then 1 else 0 end ) G'#39'+cast(@GroupingID as char(1))+'#39'_'#39 +
        '+cast(@ItemNumber as char(1))'
      ''
      '     set @GroupingID=@GroupingID+1'
      '  end  --@GroupingID'
      '  set @select=@select+'#39','
      
        'sum ( case when AnswerItemNumber= '#39'+cast(@ItemNumber as char(1))' +
        '+ '
      #39' then 1 else 0 end ) all'#39'+cast(@ItemNumber as char(1))'
      ' set @ItemNumber=@ItemNumber+1'
      'end -- @ItemNumber'
      '      set @select=@select+'#39' into ##m'
      'FROM          Question'
      
        'INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Que' +
        'stion.QuestionID '
      
        'INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applic' +
        'antAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID'
      
        'where Question.Examid='#39'+cast(@ExamID as varchar(10))+'#39'-- and Que' +
        'stionActivityID=1'
      'group by Question.QuestionID,Number, CorrectItemNumber  '#39
      ''
      ''
      'exec sp_executesql @Select'
      ''
      ''
      '--select * from ##m'
      ''
      ''
      'update Question'
      'set Question.Correct=##m.Correct ,'
      'Question.Answerd=##m.Answerd ,'
      'Question.All_Count=##m.All_Count ,'
      'Question.Wrong=##m.Wrong ,'
      'Question.Difficulty  =##m.Di ,'
      'Question.Discrimination =round('
      
        '(Correct_G3 -Correct_G1)/cast(case when group3>group1 then group' +
        '3 else group1 end as float) ,3),'
      'Question.G1_0=##m.G1_0 ,'
      'Question.G3_0=##m.G3_0 ,'
      'Question.all0=##m.all0 ,'
      'Question.G1_1=##m.G1_1 ,'
      'Question.G3_1=##m.G3_1 ,'
      'Question.all1=##m.all1 ,'
      'Question.G1_2=##m.G1_2 ,'
      'Question.G3_2=##m.G3_2 ,'
      'Question.all2=##m.all2 ,'
      'Question.G1_3=##m.G1_3 ,'
      'Question.G3_3=##m.G3_3 ,'
      'Question.all3=##m.all3 ,'
      'Question.G1_4=##m.G1_4 ,'
      'Question.G3_4=##m.G3_4 ,'
      'Question.all4=##m.all4 ,'
      'Question.all5=##m.all5 ,'
      'Question.all6=##m.all6 ,'
      'Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)'
      
        'from Question inner join ##m on ##m.QuestionID=Question.Question' +
        'ID'
      ''
      'update Question'
      
        'set number_Of_Item=(case  when cast(all1 as float)/all_count>0.0' +
        '5 then 1 else 0 end)+'
      
        '(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all5 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all6 as float)/all_count>0.05 then 1 else 0 end' +
        ')'
      ''
      'drop table ##m'
      'GO'
      'ALTER procEDURE [dbo].[Select_ExamDetail_by_where]'
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ''
      'IF OBJECT_ID('#39'tempdb..##E'#39') IS NOT NULL DROP TABLE ##E'
      
        'IF OBJECT_ID('#39'tempdb..##ApplicantExam'#39') IS NOT NULL DROP TABLE #' +
        '#ApplicantExam'
      ''
      'set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      'if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT  ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*(case when maxmark is null or maxmark <=0 t' +
        'hen 20 else maxmark end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*(case when maxmark is null or maxmark <=0 t' +
        'hen 20 else maxmark end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      ''
      'exec(@s)'
      ''
      '--SELECT * FROM ##ApplicantExam'
      ''
      'set @s='#39
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      'Exam.MinPassedMark ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_6item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 6 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        'round(KR20,2) KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxo' +
        'nomy23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Discrimination >=   '#39'+cast(minvalue as varchar(10))+'#39' and  Discr' +
        'imination<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578#1585#1575#1602':'#39'+Discri' +
        'minationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM Exam'
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      'GO'
      'Alter proc [dbo].[Get_TeacherExamInfo_ByDate]'
      
        ' @TeacherID int,@BeginExamDate char(10),@EndExamDate char(10),@e' +
        'xamID int'
      ''
      'as'
      ''
      ''
      ''
      'SELECT       Exam.* ,ExamTypeTitle,'
      
        '(select count(*) from Question where examid=Exam.examid and numb' +
        'er_Of_Item=1 and DesignerTeacherID = @TeacherID) Teacher_NumberO' +
        'f_1item_Question ,'
      
        '(select count(*) from Question where examid=Exam.examid and numb' +
        'er_Of_Item=2 and DesignerTeacherID = @TeacherID) Teacher_NumberO' +
        'f_2item_Question,'
      
        '(select count(*) from Question where examid=Exam.examid and numb' +
        'er_Of_Item=3 and DesignerTeacherID = @TeacherID) Teacher_NumberO' +
        'f_3item_Question,'
      
        '(select count(*) from Question where examid=Exam.examid and numb' +
        'er_Of_Item=4 and DesignerTeacherID = @TeacherID) Teacher_NumberO' +
        'f_4item_Question,'
      
        '(select count(*) from Question where examid=Exam.examid and numb' +
        'er_Of_Item=5 and DesignerTeacherID = @TeacherID) Teacher_NumberO' +
        'f_5item_Question,'
      
        '(select count(*) from Question where examid=Exam.examid and numb' +
        'er_Of_Item=6 and DesignerTeacherID = @TeacherID) Teacher_NumberO' +
        'f_6item_Question,'
      
        '(select round(avg(Difficulty),3) from Question where examId=Exam' +
        '.ExamID and DesignerTeacherID = @TeacherID )Teacher_Difficulty,'
      
        '(select round(avg(Discrimination),2) from Question where examId=' +
        'Exam.ExamID and DesignerTeacherID = @TeacherID) Teacher_Discrimi' +
        'nation,'
      
        '(select round(avg(RPBIS),2) from Question where examId=Exam.Exam' +
        'ID and DesignerTeacherID = @TeacherID) Teacher_RPBIS,'
      
        '(select count(*) from Question where examId=Exam.ExamID and Desi' +
        'gnerTeacherID = @TeacherID) Teacher_Count'
      'FROM         Exam'
      ' LEFT  JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      
        'where examid in (select distinct ExamID from Question where Ques' +
        'tion.DesignerTeacherID = @TeacherID)'
      ' and( Exam.ExamDate between @BeginExamDate  and @EndExamDate  )'
      'and (@examID=0 or Examid=@examid)'
      'GO'
      'Alter PROCEDURE [dbo].[Analysis_Exam_Total]'
      #9'(@ExamID'#9'int)'
      'as'
      'update exam'
      'set'
      
        'NumberOf_1item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=1),'
      
        'NumberOf_2item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=2),'
      
        'NumberOf_3item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=3),'
      
        'NumberOf_4item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=4),'
      
        'NumberOf_5item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=5),'
      
        'NumberOf_6item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=6),'
      
        'Difficulty=round(       (select avg(Difficulty) from Question   ' +
        '  where examId=@examid),3),'
      
        'Discrimination= round(  (select avg(Discrimination) from Questio' +
        'n where examId=@examid),3),'
      
        'RPBIS=round(            (select avg(RPBIS)      from Question   ' +
        '  where examId=@examid),3),'
      'StandardError=  dbo.StandardError(@examid),'
      'kr20  = dbo.R20(@examid),'
      'Alpha = dbo.R20(@examid) ,'
      
        'ExamVariance=round(     (select varp(finalmark)      from Applic' +
        'antexam     where examId=@examid),3)'
      'FROM    Exam'
      'where Exam.examid =@examid'
      'GO'
      'ALTER proc [dbo].[Select_Exam_CorrectNumber]'
      '@examID int '
      'as'
      'select CorrectItemNumber,count(*)'
      'from question'
      'where CorrectItemNumber between 1 and 6  and  examid=@examid'
      'group by CorrectItemNumber'
      'GO'
      'ALTER  proc [dbo].[Get_ApplicantExamDetails_by_ApplicantCode]'
      ' @ApplicantCode varchar(15),@examid int'
      'as'
      
        'SELECT     Question.Number, Question.CorrectItemNumber, Question' +
        '.CorrectItemNumber2, ApplicantAnswer.AnswerItemNumber,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0 ' +
        'end as bit) Item1,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0 ' +
        'end as bit) Item2,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0 ' +
        'end as bit) Item3,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0 ' +
        'end as bit) Item4,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0 ' +
        'end as bit) Item5,'
      
        'cast(case when ApplicantAnswer.AnswerItemNumber=6 then 1 else 0 ' +
        'end as bit) Item6'
      'FROM         Applicant INNER JOIN'
      
        '                      ApplicantExam ON Applicant.ApplicantID = A' +
        'pplicantExam.ApplicantID INNER JOIN'
      
        '                      Exam ON ApplicantExam.ExamID = Exam.ExamID' +
        ' INNER JOIN'
      
        '                      Question ON Exam.ExamID = Question.ExamID ' +
        'INNER JOIN'
      
        '                      ApplicantAnswer ON Applicant.ApplicantID =' +
        ' ApplicantAnswer.ApplicantID AND Question.QuestionID = Applicant' +
        'Answer.QuestionID'
      
        'WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.ex' +
        'amid=@examid'
      'GO'
      'ALTER  PROCEDURE [dbo].[Analysis_Question_byExamID]'
      #9'(@ExamID'#9'[int])'
      'AS'
      ''
      ' IF OBJECT_ID('#39'tempdb..##m'#39') IS NOT NULL DROP TABLE ##m'#9
      ''
      ' declare @select nvarchar(3000)'
      ' set   @select='#39'SELECT Question.QuestionID  , '
      
        ' sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectI' +
        'temNumber2) then 1 else 0 end)  Correct,'
      
        ' sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else 0' +
        ' end) Answerd,'
      ' count(*) All_Count,'
      
        ' sum ( case when AnswerItemNumber not in (CorrectItemNumber,Corr' +
        'ectItemNumber2) and AnswerItemNumber<>0 then 1 else 0 end) Wrong' +
        ','
      
        'Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,Co' +
        'rrectItemNumber2) then 1 else 0 end) /'
      'cast(count(AnswerItemNumber )as float),3) as  Di,'
      'sum ( case when  GroupingID=3  then 1 else 0 end) Group3,'
      'sum ( case when  GroupingID=1  then 1 else 0 end) Group1, '
      
        'sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G3,'
      
        'sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G1,'
      '0.0 dis'
      ' '#39
      'declare @Number_Of_Item tinyint'
      'SELECT     @Number_Of_Item=Number_of_Items'
      'FROM         Exam'
      'WHERE     (ExamID = @ExamID)'
      'declare @ItemNumber tinyint,@GroupingID tinyint'
      'set @ItemNumber=0 '
      'while @ItemNumber<=6--@Number_Of_Item'
      ' begin'
      '  set @GroupingID=1 '
      '  while @GroupingID<=3 '
      '   begin'
      '     if @GroupingID<>2   '
      
        '      set @select=@select+'#39',sum ( case when AnswerItemNumber= '#39'+' +
        'cast(@ItemNumber as char(1))+'#39' and GroupingID='#39'+cast(@GroupingID' +
        ' as char(1)) +'
      
        #9#9#9#9#9#9#9#39' then 1 else 0 end ) G'#39'+cast(@GroupingID as char(1))+'#39'_'#39 +
        '+cast(@ItemNumber as char(1))'
      ''
      '     set @GroupingID=@GroupingID+1'
      '  end  --@GroupingID'
      '  '
      '  '
      '  set @select=@select+'#39','
      
        'sum ( case when AnswerItemNumber= '#39'+cast(@ItemNumber as char(1))' +
        '+ '
      #39' then 1 else 0 end ) all'#39'+cast(@ItemNumber as char(1))'
      ' set @ItemNumber=@ItemNumber+1'
      'end -- @ItemNumber'
      '      set @select=@select+'#39' into ##m'
      'FROM          Question'
      
        'INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Que' +
        'stion.QuestionID '
      
        'INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applic' +
        'antAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID'
      
        'where Question.Examid='#39'+cast(@ExamID as varchar(10))+'#39'-- and Que' +
        'stionActivityID=1'
      'group by Question.QuestionID,Number, CorrectItemNumber  '#39
      ''
      'exec sp_executesql @Select'
      ''
      'update Question'
      'set Question.Correct=##m.Correct ,'
      'Question.Answerd=##m.Answerd ,'
      'Question.All_Count=##m.All_Count ,'
      'Question.Wrong=##m.Wrong ,'
      'Question.Difficulty  =##m.Di ,'
      'Question.Discrimination =round('
      
        '(Correct_G3 -Correct_G1)/cast(case when group3>group1 then group' +
        '3 else group1 end as float) ,3),'
      'Question.G1_0=##m.G1_0 ,'
      'Question.G3_0=##m.G3_0 ,'
      'Question.all0=##m.all0 ,'
      'Question.G1_1=##m.G1_1 ,'
      'Question.G3_1=##m.G3_1 ,'
      'Question.all1=##m.all1 ,'
      'Question.G1_2=##m.G1_2 ,'
      'Question.G3_2=##m.G3_2 ,'
      'Question.all2=##m.all2 ,'
      'Question.G1_3=##m.G1_3 ,'
      'Question.G3_3=##m.G3_3 ,'
      'Question.all3=##m.all3 ,'
      'Question.G1_4=##m.G1_4 ,'
      'Question.G3_4=##m.G3_4 ,'
      'Question.all4=##m.all4 ,'
      'Question.all5=##m.all5 ,'
      'Question.all6=##m.all6 ,'
      'Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)'
      
        'from Question inner join ##m on ##m.QuestionID=Question.Question' +
        'ID'
      ''
      'update Question'
      
        'set number_Of_Item=(case  when cast(all1 as float)/all_count>0.0' +
        '5 then 1 else 0 end)+'
      
        '(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all5 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all6 as float)/all_count>0.05 then 1 else 0 end' +
        ')'
      'GO'
      
        'IF NOT EXISTS(SELECT id FROM syscolumns WHERE NAME='#39'EducationGro' +
        'upID'#39' AND id=(SELECT id FROM sysobjects WHERE NAME='#39'Exam'#39' AND xt' +
        'ype='#39'U'#39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'EducationGroupID int NULL'
      'END'
      'GO'
      
        'IF NOT EXISTS(SELECT id FROM syscolumns WHERE NAME='#39'TeacherID'#39' A' +
        'ND id=(SELECT id FROM sysobjects WHERE NAME='#39'Exam'#39' AND xtype='#39'U'#39 +
        '))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'TeacherID int NULL'
      'END'
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_Examid]'
      #9'(@ExamID'#9'int)'
      'AS'
      
        'declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT,' +
        '@AcceptCount INT,@RejectCount INT'
      ''
      
        'IF OBJECT_ID('#39'tempdb..#Applicant'#39') IS NOT NULL DROP TABLE #Appli' +
        'cant'
      ''
      'select @FullPoint=sum(Coefficient)'
      'FROM Question'
      'WHERE (ExamID=@ExamID) and (questionactivityid<>2)'
      ''
      
        'select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,@' +
        'Number_of_Question=Number_of_Question'
      'from Exam '
      'WHERE (ExamID=@ExamID)'
      ''
      'if @maxMark is null or @maxMark<=0 set @maxMark=20'
      ''
      '--SELECT @Number_of_Question/@MaxMark , @maxMark ,  @FullPoint'
      '--SELECT FinalMark FROM ApplicantExam WHERE ExamID=223  '
      ''
      ''
      
        'SELECT    Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle,' +
        ' ApplicantExam.FinalMark, @FullPoint FullPoint ,ApplicantExam.or' +
        'd, '
      
        '                      CASE WHEN ApplicantExam.Accepted = 1 THEN ' +
        #39#1602#1576#1608#1604#39' ELSE '#39#1585#1583#39' END ACCEPT, Grouping.GroupingTitle,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@Fu' +
        'llPoint,2) end mark,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPo' +
        'int,2) end mark20,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullP' +
        'oint,2) end mark100'
      'case when FinalMark<0 then 0 else round(FinalMark,2) end mark,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(20/@maxMark),' +
        '2) end mark20,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMar' +
        'k),2) end mark100,'
      '0 AS AcceptCount,'
      '0 AS RejectCount'
      ''
      'INTO #Applicant'
      'FROM      Applicant    '
      
        'INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Appl' +
        'icant.ApplicantID '
      
        'left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.Gro' +
        'upingID'
      'left  JOIN Major  ON Applicant.MajorID = Major.MajorID'
      
        'left join EducationGroup  ON EducationGroup.EducationGroupID = M' +
        'ajor.EducationGroupID'
      
        ' LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.Facul' +
        'tyID'
      'where ExamId=@ExamId'
      'order by ord'
      ''
      'SELECT @AcceptCount=COUNT(*) FROM #Applicant WHERE ACCEPT='#39#1602#1576#1608#1604#39
      'SELECT @RejectCount=COUNT(*) FROM #Applicant WHERE ACCEPT='#39#1585#1583#39' '
      ''
      'UPDATE #Applicant'
      'SET AcceptCount=@AcceptCount,'
      #9'RejectCount=@RejectCount'
      #9
      'SELECT * FROM #Applicant'
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_Examid]'
      #9'(@ExamID'#9'int)'
      'AS'
      'declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT,'
      #9#9'@AcceptCount NUMERIC(6,2),@RejectCount NUMERIC(6,2),'
      #9#9'@AcceptPercent NUMERIC(6,2),@RejectPercent NUMERIC(6,2),'
      #9#9'@RecCount NUMERIC(6,2)'
      #9#9
      
        'IF OBJECT_ID('#39'tempdb..#Applicant'#39') IS NOT NULL DROP TABLE #Appli' +
        'cant'
      ''
      'select @FullPoint=sum(Coefficient)'
      'FROM Question'
      'WHERE (ExamID=@ExamID) and (questionactivityid<>2)'
      ''
      
        'select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,@' +
        'Number_of_Question=Number_of_Question'
      'from Exam '
      'WHERE (ExamID=@ExamID)'
      ''
      'if @maxMark is null or @maxMark<=0 set @maxMark=20'
      ''
      '--SELECT @Number_of_Question/@MaxMark , @maxMark ,  @FullPoint'
      '--SELECT FinalMark FROM ApplicantExam WHERE ExamID=223  '
      ''
      ''
      
        'SELECT    Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle,' +
        ' ApplicantExam.FinalMark, @FullPoint FullPoint ,ApplicantExam.or' +
        'd, '
      
        '                      CASE WHEN ApplicantExam.Accepted = 1 THEN ' +
        #39#1602#1576#1608#1604#39' ELSE '#39#1585#1583#39' END ACCEPT, Grouping.GroupingTitle,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@Fu' +
        'llPoint,2) end mark,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPo' +
        'int,2) end mark20,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullP' +
        'oint,2) end mark100'
      'case when FinalMark<0 then 0 else round(FinalMark,2) end mark,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(20/@maxMark),' +
        '2) end mark20,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMar' +
        'k),2) end mark100,'
      'CAST(0.0 AS NUMERIC(6,2)) AS AcceptCount,'
      'CAST(0.0 AS NUMERIC(6,2)) AS RejectCount,'
      'CAST(0.0 AS NUMERIC(6,2)) AS AcceptPercent,'
      'CAST(0.0 AS NUMERIC(6,2)) AS RejectPercent'
      ''
      'INTO #Applicant'
      'FROM      Applicant    '
      
        'INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Appl' +
        'icant.ApplicantID '
      
        'left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.Gro' +
        'upingID'
      'left  JOIN Major  ON Applicant.MajorID = Major.MajorID'
      
        'left join EducationGroup  ON EducationGroup.EducationGroupID = M' +
        'ajor.EducationGroupID'
      
        ' LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.Facul' +
        'tyID'
      'where ExamId=@ExamId'
      'order by ord'
      ''
      'SELECT @AcceptCount=COUNT(*) FROM #Applicant WHERE ACCEPT='#39#1602#1576#1608#1604#39
      'SELECT @RejectCount=COUNT(*) FROM #Applicant WHERE ACCEPT='#39#1585#1583#39' '
      'SELECT @RecCount=COUNT(*) FROM #Applicant '
      'SELECT @AcceptPercent=(@AcceptCount/@RecCount)*100'
      'SELECT @RejectPercent=(@RejectCount/@RecCount)*100'
      ''
      'UPDATE #Applicant'
      'SET AcceptCount=@AcceptCount,'
      #9'RejectCount=@RejectCount,'
      #9'AcceptPercent=@AcceptPercent,'
      #9'RejectPercent=@RejectPercent'
      ''
      'SELECT '
      #9#9'ApplicantID, '
      #9#9'ApplicantCode,        '
      #9#9'FirstName,                                          '
      #9#9'LastName,                                           '
      
        #9#9'FullName,                                                     ' +
        '                    '
      #9#9'MajorID, '
      #9#9'Termcode, '
      #9#9'FatherName,                                         '
      #9#9'CustomField1,                                       '
      #9#9'CustomField2,                                       '
      #9#9'FacultyTitle,                                       '
      #9#9'MajorTitle,                                                   '
      #9#9'FinalMark,     '
      #9#9'FullPoint,              '
      #9#9'ord,         '
      #9#9'ACCEPT, '
      #9#9'GroupingTitle,                                      '
      #9#9'MARK,                   '
      #9#9'mark20,                 '
      #9#9'mark100,                '
      
        #9#9'CAST(AcceptCount AS INT) AcceptCount,                         ' +
        '    '
      
        #9#9'CAST(RejectCount AS INT) RejectCount,                         ' +
        '    '
      #9#9'AcceptPercent,                           '
      #9#9'RejectPercent'
      'FROM #Applicant'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE NAME = '#39'Select_Applic' +
        'ant_by_Examid_Tahlil'#39')'
      'DROP PROCEDURE [dbo].[Select_Applicant_by_Examid_Tahlil]'
      'GO'
      'CREATE PROCEDURE [dbo].[Select_Applicant_by_Examid_Tahlil]'
      #9'(@ExamID'#9'int)'
      'AS'
      'declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT,'
      #9#9'@AcceptCount NUMERIC(6,2),@RejectCount NUMERIC(6,2),'
      #9#9'@AcceptPercent NUMERIC(6,2),@RejectPercent NUMERIC(6,2),'
      #9#9'@RecCount NUMERIC(6,2)'
      #9#9
      
        'IF OBJECT_ID('#39'tempdb..#Applicant'#39') IS NOT NULL DROP TABLE #Appli' +
        'cant'
      ''
      'select @FullPoint=sum(Coefficient)'
      'FROM Question'
      'WHERE (ExamID=@ExamID) and (questionactivityid<>2)'
      ''
      
        'select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,@' +
        'Number_of_Question=Number_of_Question'
      'from Exam '
      'WHERE (ExamID=@ExamID)'
      ''
      'if @maxMark is null or @maxMark<=0 set @maxMark=20'
      ''
      '--SELECT @Number_of_Question/@MaxMark , @maxMark ,  @FullPoint'
      '--SELECT FinalMark FROM ApplicantExam WHERE ExamID=223  '
      ''
      ''
      
        'SELECT    Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle,' +
        ' ApplicantExam.FinalMark, @FullPoint FullPoint ,ApplicantExam.or' +
        'd, '
      
        '                      CASE WHEN ApplicantExam.Accepted = 1 THEN ' +
        #39#1602#1576#1608#1604#39' ELSE '#39#1585#1583#39' END ACCEPT, Grouping.GroupingTitle,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@Fu' +
        'llPoint,2) end mark,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPo' +
        'int,2) end mark20,'
      
        '--case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullP' +
        'oint,2) end mark100'
      'case when FinalMark<0 then 0 else round(FinalMark,2) end mark,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(20/@maxMark),' +
        '2) end mark20,'
      
        'case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMar' +
        'k),2) end mark100,'
      'CAST(0.0 AS NUMERIC(6,2)) AS AcceptCount,'
      'CAST(0.0 AS NUMERIC(6,2)) AS RejectCount,'
      'CAST(0.0 AS NUMERIC(6,2)) AS AcceptPercent,'
      'CAST(0.0 AS NUMERIC(6,2)) AS RejectPercent'
      ''
      'INTO #Applicant'
      'FROM      Applicant    '
      
        'INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Appl' +
        'icant.ApplicantID '
      
        'left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.Gro' +
        'upingID'
      'left  JOIN Major  ON Applicant.MajorID = Major.MajorID'
      
        'left join EducationGroup  ON EducationGroup.EducationGroupID = M' +
        'ajor.EducationGroupID'
      
        ' LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.Facul' +
        'tyID'
      'where ExamId=@ExamId'
      'order by ord'
      ''
      'SELECT @AcceptCount=COUNT(*) FROM #Applicant WHERE ACCEPT='#39#1602#1576#1608#1604#39
      'SELECT @RejectCount=COUNT(*) FROM #Applicant WHERE ACCEPT='#39#1585#1583#39' '
      'SELECT @RecCount=COUNT(*) FROM #Applicant '
      'SELECT @AcceptPercent=(@AcceptCount/@RecCount)*100'
      'SELECT @RejectPercent=(@RejectCount/@RecCount)*100'
      ''
      'UPDATE #Applicant'
      'SET AcceptCount=@AcceptCount,'
      #9'RejectCount=@RejectCount,'
      #9'AcceptPercent=@AcceptPercent,'
      #9'RejectPercent=@RejectPercent'
      ''
      'SELECT TOP 1                '
      
        #9#9'CAST(AcceptCount AS INT) AcceptCount,                         ' +
        '    '
      
        #9#9'CAST(RejectCount AS INT) RejectCount,                         ' +
        '    '
      #9#9'AcceptPercent,                           '
      #9#9'RejectPercent'
      'FROM #Applicant'
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]'
      #9'(@ExamID'#9'int,@where nvarchar(1000),@order varchar(100) )'
      'AS'
      ' declare @SQL nvarchar(4000)'
      ''
      ''
      
        'set @SQL='#39' SELECT Applicant.*, Faculty.FacultyTitle, Major.Major' +
        'Title, Exam.ExamTitle, Course.CourseCode, '
      
        ' Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.Term' +
        'Code ExamTerm,T.FullName, EducationGroup.EducationGroupTitle'
      'FROM ApplicantExam '
      
        'inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.A' +
        'pplicantID'
      'inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID'
      'Left join Teacher T on Exam.TeacherID = T.TeacherID '
      'left JOIN Course ON Exam.MainCourseID = Course.CourseID '
      'LEFT JOIN Major ON Applicant.MajorID = Major.MajorID '
      
        'LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Ma' +
        'jor.EducationGroupID '
      
        'LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyI' +
        'D'
      'where Exam.ExamID='#39'+cast(@examID as varchar(10))'
      '                      '
      
        'set @order =case when isnull(ltrim(@order),'#39#39')='#39#39' then '#39#39' else '#39 +
        ' order by '#39'+isnull(ltrim(@order),'#39#39') end'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where +@order'
      'exec(@sql)'
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]'
      #9'(@ExamID'#9'int,@where nvarchar(1000),@order varchar(100) )'
      'AS'
      ' declare @SQL nvarchar(4000)'
      ''
      ''
      
        'set @SQL='#39' SELECT Applicant.*, Faculty.FacultyTitle, Major.Major' +
        'Title, Exam.ExamTitle, Course.CourseCode, '
      
        ' Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.Term' +
        'Code ExamTerm,T.FullName, EducationGroup.EducationGroupTitle'
      'FROM ApplicantExam '
      
        'inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.A' +
        'pplicantID'
      'inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID'
      'Left join Teacher T on Exam.TeacherID = T.TeacherID '
      'left JOIN Course ON Exam.MainCourseID = Course.CourseID '
      'LEFT JOIN Major ON Applicant.MajorID = Major.MajorID '
      
        'LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Ex' +
        'am.EducationGroupID '
      
        'LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyI' +
        'D'
      'where Exam.ExamID='#39'+cast(@examID as varchar(10))'
      '                      '
      
        'set @order =case when isnull(ltrim(@order),'#39#39')='#39#39' then '#39#39' else '#39 +
        ' order by '#39'+isnull(ltrim(@order),'#39#39') end'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where +@order'
      ''
      'PRINT @sql '
      ''
      'exec(@sql)'
      'GO'
      'ALTER  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]'
      #9'(@examId int,@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      
        'set @SQL='#39'SELECT Question.QuestionID,Question.ExamID,Question.Nu' +
        'mber,Question.DesignerTeacherID,Question.CourseID,Question.Corre' +
        'ct,Question.Answerd,Question.All_Count,'
      
        '                  Question.Wrong,Question.Difficulty,Question.Di' +
        'scrimination*(-1) AS Discrimination,Question.G1_0,Question.G3_0,' +
        'Question.all0,Question.G1_1,Question.G3_1,Question.all1,'
      
        '                 Question.G1_2,Question.G3_2,Question.all2,Quest' +
        'ion.G1_3,Question.G3_3,Question.all3,Question.G1_4,Question.G3_4' +
        ',Question.all4,Question.G1_5,Question.G3_5,'#9'   '
      
        '                 Question.all5,Question.number_Of_Item,Question.' +
        'QuestionActivityID,Question.TemporaryActive,Question.Coefficient' +
        ',Question.RPBIS,Question.CorrectItemNumber,'
      
        '                 Question.CorrectItemNumber2,Question.Taxonomy,Q' +
        'uestion.ObjectionNumber,Question.all6'#9
      
        #9'   ,cast(DifficultyTitle as varchar(50)) as DifficultyTitle, Di' +
        'scriminationTitle,questionActivityTitle,'
      '       100*all0/All_Count all0_percent'
      '      ,100*all1/All_Count all1_percent'
      '      ,100*all2/All_Count all2_percent'
      '      ,100*all3/All_Count all3_percent'
      '      ,100*all4/All_Count all4_percent'
      '      ,100*all5/All_Count all5_percent'
      '      ,100*all6/All_Count all6_percent'
      '      '
      'FROM         Question '
      
        'left JOIN Difficulty       ON Question.Difficulty >= Difficulty.' +
        'MinValue and Question.Difficulty <Difficulty.MaxValue'
      
        'left JOIN Discrimination   ON Question.Discrimination >= Discrim' +
        'ination.MinValue and Question.Discrimination <Discrimination.Max' +
        'Value'
      
        'left join questionActivity ON questionActivity.questionActivityI' +
        'D= Question.questionActivityID where Question.ExamID='#39'+cast(@exa' +
        'mID as varchar(5))'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where '
      '--PRINT @SQL'
      'exec(@sql)'
      'GO'
      ''
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_TrainingCourseID]'
      #9'(@TrainingCourseID'#9'int)'
      'AS'
      
        'SELECT    top 1000  Applicant.*  , Faculty.FacultyTitle, Major.M' +
        'ajorTitle, ApplicantExam.FinalMark, ApplicantExam.ord, '
      
        '                      CASE WHEN ApplicantExam.Accepted = 1 THEN ' +
        #39#1602#1576#1608#1604#39' ELSE '#39#1585#1583#39' END ACCEPT, Grouping.GroupingTitle,'
      'EducationMark   mark20,'
      
        'Course.CourseTitle, Course.CourseCode, TrainingCourse.TermCode C' +
        'ourseTerm , TrainingCourse.GrourpCode, TrainingCourse.StartDate,' +
        ' '
      
        '                      Teacher.TeacherCode, Teacher.FullName Teac' +
        'herTitle, '
      
        '                      isnull(Exam.ExamDate, '#39#39') AS ExamDate, isn' +
        'ull(Exam.ExamTitle, '#39#39') AS ExamTitle, isnull(Exam.TermCode, 0) E' +
        'xamTerm,'
      '                      EducationGroup.EducationGroupTitle'
      'FROM         Applicant '
      
        'left  JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applic' +
        'ant.ApplicantID '
      'LEFT JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID'
      
        'INNER JOIN ApplicantCourse ON Applicant.ApplicantID = ApplicantC' +
        'ourse.ApplicantID'
      
        'INNER JOIN TrainingCourse ON ApplicantCourse.TrainingCourseID = ' +
        'TrainingCourse.TrainingCourseID'
      'INNER JOIN  Course ON TrainingCourse.CourseID = Course.CourseID '
      
        'left JOIN   Grouping ON ApplicantExam.GroupingID = Grouping.Grou' +
        'pingID'
      
        'left JOIN  Teacher ON TrainingCourse.TeacherID = Teacher.Teacher' +
        'ID '
      'LEFT  JOIN Major ON Applicant.MajorID = Major.MajorID '
      
        'LEFT  JOIN EducationGroup ON EducationGroup.EducationGroupID = M' +
        'ajor.EducationGroupID '
      
        'LEFT  JOIN   Faculty ON EducationGroup.FacultyID = Faculty.Facul' +
        'tyID'
      'WHERE     (TrainingCourse.TrainingCourseID=@TrainingCourseID )'
      'order by ord'
      'GO'
      ''
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]'
      #9'(@ExamID'#9'int,@where nvarchar(1000),@order varchar(100) )'
      'AS'
      ' declare @SQL nvarchar(4000)'
      
        'set @SQL='#39' SELECT Applicant.*, Faculty.FacultyTitle, Major.Major' +
        'Title, Exam.ExamTitle, Course.CourseCode, '
      
        ' Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.Term' +
        'Code ExamTerm,T.FullName, T.FullName as TeacherTitle, EducationG' +
        'roup.EducationGroupTitle'
      'FROM ApplicantExam '
      
        'inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.A' +
        'pplicantID'
      'inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID'
      'Left join Teacher T on Exam.TeacherID = T.TeacherID '
      'left JOIN Course ON Exam.MainCourseID = Course.CourseID '
      'LEFT JOIN Major ON Applicant.MajorID = Major.MajorID '
      
        'LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Ex' +
        'am.EducationGroupID '
      
        'LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyI' +
        'D'
      
        'where Exam.ExamID='#39'+cast(@examID as varchar(10))                ' +
        '      '
      
        'set @order =case when isnull(ltrim(@order),'#39#39')='#39#39' then '#39#39' else '#39 +
        ' order by '#39'+isnull(ltrim(@order),'#39#39') end'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where +@order'
      'exec(@sql)'
      'GO'
      ''
      'ALTER  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]'
      #9'(@examId int,@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      
        'set @SQL='#39'SELECT Question.QuestionID,Question.ExamID,Question.Nu' +
        'mber,Question.DesignerTeacherID,Question.CourseID,Question.Corre' +
        'ct,Question.Answerd,Question.All_Count,'
      
        '                  Question.Wrong,Question.Difficulty,Question.Di' +
        'scrimination/* *(-1)*/ AS Discrimination,Question.G1_0,Question.' +
        'G3_0,Question.all0,Question.G1_1,Question.G3_1,Question.all1,'
      
        '                 Question.G1_2,Question.G3_2,Question.all2,Quest' +
        'ion.G1_3,Question.G3_3,Question.all3,Question.G1_4,Question.G3_4' +
        ',Question.all4,Question.G1_5,Question.G3_5,'#9'   '
      
        '                 Question.all5,Question.number_Of_Item,Question.' +
        'QuestionActivityID,Question.TemporaryActive,Question.Coefficient' +
        ',Question.RPBIS,Question.CorrectItemNumber,'
      
        '                 Question.CorrectItemNumber2,Question.Taxonomy,Q' +
        'uestion.ObjectionNumber,Question.all6'#9
      
        #9'   ,cast(DifficultyTitle as varchar(50)) as DifficultyTitle, Di' +
        'scriminationTitle,questionActivityTitle,'
      '       100*all0/All_Count all0_percent'
      '      ,100*all1/All_Count all1_percent'
      '      ,100*all2/All_Count all2_percent'
      '      ,100*all3/All_Count all3_percent'
      '      ,100*all4/All_Count all4_percent'
      '      ,100*all5/All_Count all5_percent'
      '      ,100*all6/All_Count all6_percent'
      '      '
      'FROM         Question '
      
        'left JOIN Difficulty       ON Question.Difficulty >= Difficulty.' +
        'MinValue and Question.Difficulty <Difficulty.MaxValue'
      
        'left JOIN Discrimination   ON Question.Discrimination >= Discrim' +
        'ination.MinValue and Question.Discrimination <Discrimination.Max' +
        'Value'
      
        'left join questionActivity ON questionActivity.questionActivityI' +
        'D= Question.questionActivityID where Question.ExamID='#39'+cast(@exa' +
        'mID as varchar(5))'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where '
      'PRINT @SQL'
      'exec(@sql)'
      'go'
      ''
      'ALTER  PROCEDURE [dbo].[Select_ApplicantExam_Log]'
      #9'(@applicantID int ,@ExamID'#9'[int])'
      'AS'
      
        'declare @CorrectItemPoint float,@BlankItemPoint float,@WrongItem' +
        'Point float'
      ''
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      '       @WrongItemPoint=WrongItemPoint'
      ' from  Exam'
      ' where ExamID =@ExamID'
      ''
      ''
      ''
      'SELECT   isnull(Course.CourseTitle,'#39#1587#1575#1610#1585' '#1583#1585#1608#1587#39') coursetitle,'
      'Round(100.0*sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then     @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( Question.Corre' +
        'ctItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=' +
        '3 then @CorrectItemPoint'
      
        '      else    @WrongItemPoint end)/sum(Coefficient*@CorrectItemP' +
        'oint),2) PercentMark'
      'FROM         Question INNER JOIN'
      
        '                      ApplicantAnswer ON Question.QuestionID = A' +
        'pplicantAnswer.QuestionID LEFT OUTER JOIN'
      
        '                      Course ON Question.CourseID = Course.Cours' +
        'eID'
      
        'WHERE     (Question.ExamID = @ExamID) AND (ApplicantAnswer.Appli' +
        'cantID = @ApplicantID) and QuestionActivityID in (1,3)'
      'group by isnull(Course.CourseTitle,'#39#1587#1575#1610#1585' '#1583#1585#1608#1587#39')'
      'order by 1'
      'GO'
      ''
      ''
      'ALTER  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]'
      #9'(@examId int,@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      'set @SQL='#39'SELECT '
      
        'Question.QuestionID,Course.CourseTitle,Question.ExamID,Question.' +
        'Number,Question.DesignerTeacherID,Question.CourseID,Question.Cor' +
        'rect,Question.Answerd,Question.All_Count,'
      
        '                  Question.Wrong,Question.Difficulty,Question.Di' +
        'scrimination*(-1) AS Discrimination,Question.G1_0,Question.G3_0,' +
        'Question.all0,Question.G1_1,Question.G3_1,Question.all1,'
      
        '                 Question.G1_2,Question.G3_2,Question.all2,Quest' +
        'ion.G1_3,Question.G3_3,Question.all3,Question.G1_4,Question.G3_4' +
        ',Question.all4,Question.G1_5,Question.G3_5,'#9'   '
      
        '                 Question.all5,Question.number_Of_Item,Question.' +
        'QuestionActivityID,Question.TemporaryActive,Question.Coefficient' +
        ',Question.RPBIS,Question.CorrectItemNumber,'
      
        '                 Question.CorrectItemNumber2,Question.Taxonomy,Q' +
        'uestion.ObjectionNumber,Question.all6'#9
      
        #9'   ,cast(DifficultyTitle as varchar(50)) as DifficultyTitle, Di' +
        'scriminationTitle,questionActivityTitle,'
      '       100*all0/All_Count all0_percent'
      '      ,100*all1/All_Count all1_percent'
      '      ,100*all2/All_Count all2_percent'
      '      ,100*all3/All_Count all3_percent'
      '      ,100*all4/All_Count all4_percent'
      '      ,100*all5/All_Count all5_percent'
      '      ,100*all6/All_Count all6_percent'
      '      '
      
        'FROM         Question LEFT JOIN Course ON Question.CourseID=Cour' +
        'se.CourseID '
      
        'left JOIN Difficulty       ON Question.Difficulty >= Difficulty.' +
        'MinValue and Question.Difficulty <Difficulty.MaxValue'
      
        'left JOIN Discrimination   ON Question.Discrimination >= Discrim' +
        'ination.MinValue and Question.Discrimination <Discrimination.Max' +
        'Value'
      
        'left join questionActivity ON questionActivity.questionActivityI' +
        'D= Question.questionActivityID where Question.ExamID='#39'+cast(@exa' +
        'mID as varchar(5))'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where '
      '--PRINT @SQL'
      'exec(@sql)'
      'Go'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9'(@ExamID'#9'[int])'
      'AS'
      'declare @number_of_applicant int,@Order1 int,@order2 int,'
      
        #9#9'@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint ' +
        'float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark ' +
        'FLOAT'#9#9
      #9#9
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      
        '       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPass' +
        'edMark,'
      '       @ZaribeFinalMark=MaxMark/Number_of_Question'
      'from  Exam'
      'where ExamID =@ExamID'
      ''
      
        'select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@C' +
        'orrectItemPoint'
      'from question'
      'where ExamID=@ExamID and QuestionActivityID in (1,3)'
      ''
      '--SELECT * FROM Exam e WHERE e.ExamID=223'
      ''
      'IF OBJECT_ID('#39'tempdb..#m'#39') IS NOT NULL DROP TABLE #m'
      'SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( Question.Corre' +
        'ctItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=' +
        '3 then @CorrectItemPoint'
      
        '      else    @WrongItemPoint end)/@CorrectItemPoint as finalmar' +
        'k '
      'into #m'
      'FROM         ApplicantAnswer '
      
        'INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.Q' +
        'uestionID'
      'where Question.ExamID=@ExamID'
      'group by ApplicantAnswer.ApplicantID'
      ''
      '-- Added By Saeedi on 901115'
      'UPDATE #m'
      'SET finalmark=finalmark*@ZaribeFinalMark'
      ''
      'IF OBJECT_ID('#39'tempdb..#n'#39') IS NOT NULL DROP TABLE #n'
      'select *,1 group27,identity(int,1,1) ord into #n'
      'from #m m'
      'order by finalmark desc '
      'select @number_of_applicant=max(ord)'
      'from #n'
      ''
      'if @number_of_applicant<20 '
      '  set  @Order1=@number_of_applicant/2'
      'else'
      'if @number_of_applicant between 20  and 40'
      '  set  @Order1=10'
      'else '
      'set @Order1=(27*@number_of_applicant)/100'
      ''
      'set @Order2=@number_of_applicant-@order1'
      ''
      'update #n'
      'set group27=case when ord<=@order1 then 3 '
      '                 when ord>@order1 and ord<@order2 then 2'
      '                 when ord>=@order2 then 1 end'
      'update ApplicantExam'
      'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        '    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmar' +
        'k,'
      
        '    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 ' +
        'end'
      'from  ApplicantExam'
      ' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      'where ApplicantExam.ExamID=@ExamID'
      '---------- Added BY Saeedi on 1391/01/29'
      
        #9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinP' +
        'assedMark1 FLOAT,@Mark FLOAT'#9#9
      
        '    SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(Min' +
        'PassedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9'DECLARE crr CURSOR FOR '#9
      #9'SELECT ApplicantID FROM Applicant '
      
        #9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHE' +
        'RE ExamID=@ExamID)'
      #9'OPEN crr'
      #9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9'WHILE @@FETCH_STATUS = 0'
      #9'BEGIN'
      
        #9#9'SELECT @FinalMark=ISNULL(FinalMark,0) FROM ApplicantExam WHERE' +
        ' ExamID=@ExamID AND ApplicantID=@ApplicantID'
      #9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=1'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9'ELSE'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=0'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9'END'
      #9'CLOSE crr'
      ' '#9'DEALLOCATE crr  '#9
      '---------- BY Hadi Mohamed  1392/03/25'
      'GO'
      ''
      'ALTER procEDURE [dbo].[Select_ExamDetail_by_where]'
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ''
      'IF OBJECT_ID('#39'tempdb..##E'#39') IS NOT NULL DROP TABLE ##E'
      
        'IF OBJECT_ID('#39'tempdb..##ApplicantExam'#39') IS NOT NULL DROP TABLE #' +
        '#ApplicantExam'
      ''
      'set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      'if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT  ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      ''
      'exec(@s)'
      ''
      '--SELECT * FROM ##ApplicantExam'
      ''
      'set @s='#39
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      'Exam.MinPassedMark ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_6item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 6 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        'round(KR20,2) KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxo' +
        'nomy23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Discrimination >=   '#39'+cast(minvalue as varchar(10))+'#39' and  Discr' +
        'imination<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578#1585#1575#1602':'#39'+Discri' +
        'minationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM Exam'
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      '--By Hadi Mohamed 92/03/25'
      'GO'
      ''
      'ALTER procEDURE [dbo].[Select_ExamDetail_by_where]'
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ''
      'IF OBJECT_ID('#39'tempdb..##E'#39') IS NOT NULL DROP TABLE ##E'
      
        'IF OBJECT_ID('#39'tempdb..##ApplicantExam'#39') IS NOT NULL DROP TABLE #' +
        '#ApplicantExam'
      ''
      'set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      'if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT  ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      ''
      'exec(@s)'
      ''
      '--SELECT * FROM ##ApplicantExam'
      ''
      'set @s='#39
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      'Exam.MinPassedMark*Exam.Maxmark/100 ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_6item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 6 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        'round(KR20,2) KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxo' +
        'nomy23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Discrimination >=   '#39'+cast(minvalue as varchar(10))+'#39' and  Discr' +
        'imination<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578#1585#1575#1602':'#39'+Discri' +
        'minationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM Exam'
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      '--By Hadi Mohamed 92/03/26'
      'GO'
      ''
      'ALTER  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]'
      #9'(@examId int,@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      'set @SQL='#39'SELECT '
      
        'Question.QuestionID,Course.CourseTitle,Question.ExamID,Question.' +
        'Number,Question.DesignerTeacherID,Question.CourseID,Question.Cor' +
        'rect,Question.Answerd,Question.All_Count,'
      
        '                  Question.Wrong,Question.Difficulty,Question.Di' +
        'scrimination*(-1) AS Discrimination,Question.G1_0,Question.G3_0,' +
        'Question.all0,Question.G1_1,Question.G3_1,Question.all1,'
      
        '                 Question.G1_2,Question.G3_2,Question.all2,Quest' +
        'ion.G1_3,Question.G3_3,Question.all3,Question.G1_4,Question.G3_4' +
        ',Question.all4,Question.G1_5,Question.G3_5,'#9'   '
      
        '                 Question.all5,Question.number_Of_Item,Question.' +
        'QuestionActivityID,Question.TemporaryActive,Question.Coefficient' +
        ',Question.RPBIS,Question.CorrectItemNumber,'
      
        '                 Question.CorrectItemNumber2,Question.Taxonomy,Q' +
        'uestion.ObjectionNumber,Question.all6'#9
      
        #9'   ,cast(DifficultyTitle as varchar(50)) as DifficultyTitle, Di' +
        'scriminationTitle,questionActivityTitle,'
      '       100*all0/All_Count all0_percent'
      '      ,100*all1/All_Count all1_percent'
      '      ,100*all2/All_Count all2_percent'
      '      ,100*all3/All_Count all3_percent'
      '      ,100*all4/All_Count all4_percent'
      '      ,100*all5/All_Count all5_percent'
      '      ,100*all6/All_Count all6_percent'
      '      '
      
        'FROM         Question LEFT JOIN Course ON Question.CourseID=Cour' +
        'se.CourseID '
      
        'left JOIN Difficulty       ON Question.Difficulty >= Difficulty.' +
        'MinValue and Question.Difficulty <Difficulty.MaxValue'
      
        'left JOIN Discrimination   ON Question.Discrimination*(-1) >= Di' +
        'scrimination.MinValue and Question.Discrimination*(-1) <Discrimi' +
        'nation.MaxValue'
      
        'left join questionActivity ON questionActivity.questionActivityI' +
        'D= Question.questionActivityID where Question.ExamID='#39'+cast(@exa' +
        'mID as varchar(5))'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where '
      '--PRINT @SQL'
      '--By Hadi Mohamed 92/04/16'
      'exec(@sql)'
      ''
      'GO'
      ''
      'ALTER proc [dbo].[Select_TrainingCourse_By_Where]'
      ''
      '(@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      
        'set @SQL='#39'SELECT  TrainingCourse.*,Course.CourseCode, Course.Cou' +
        'rseTitle, Teacher.TeacherCode, Teacher.FirstName, Teacher.LastNa' +
        'me, Teacher.FullName, '
      '                      Teacher.Title, Exam.ExamTitle'
      'FROM'#9'Course '
      
        #9#9'LEFT OUTER JOIN TrainingCourse ON TrainingCourse.CourseID = Co' +
        'urse.CourseID '
      
        #9#9'LEFT OUTER JOIN Teacher ON TrainingCourse.TeacherID = Teacher.' +
        'TeacherID '
      #9#9'LEFT OUTER JOIN Exam ON TrainingCourse.ExamID = Exam.ExamID'
      #39
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' where '#39'+@where + '#39' and TrainingCourseID IS NULL'#39'end '
      'set @sql=@sql+@where '
      'exec(@sql)'
      ''
      'GO'
      ''
      ''
      'ALTER procEDURE [dbo].[Select_ExamDetail_by_where]'
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ''
      'IF OBJECT_ID('#39'tempdb..##E'#39') IS NOT NULL DROP TABLE ##E'
      
        'IF OBJECT_ID('#39'tempdb..##ApplicantExam'#39') IS NOT NULL DROP TABLE #' +
        '#ApplicantExam'
      ''
      'set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      'if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT  ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      ''
      'exec(@s)'
      ''
      '--SELECT * FROM ##ApplicantExam'
      ''
      'set @s='#39
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      'Exam.MinPassedMark*Exam.Maxmark/100 ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_6item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 6 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        'round(KR20,2) KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxo' +
        'nomy23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        '(Discrimination* -1) >=   '#39'+cast(minvalue as varchar(10))+'#39' and ' +
        ' (Discrimination* -1)<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578 +
        #1585#1575#1602':'#39'+DiscriminationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM Exam'
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      '--By Hadi Mohamed 92/11/19'
      ''
      'GO'
      ''
      'ALTER procEDURE [dbo].[Select_ExamDetail_by_where]'
      '@where varchar(2047)'
      'AS'
      'declare @s nvarchar(4000)'
      ''
      'IF OBJECT_ID('#39'tempdb..##E'#39') IS NOT NULL DROP TABLE ##E'
      
        'IF OBJECT_ID('#39'tempdb..##ApplicantExam'#39') IS NOT NULL DROP TABLE #' +
        '#ApplicantExam'
      ''
      'set   @s='#39'SELECT  ExamID into ##E FROM   Exam '#39
      'if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @s=@s+@where'
      'exec sp_executesql @S'
      'set @s='#39
      'SELECT  ApplicantExam.ExamID,'
      'round(AVG(FinalMark),3)     AS ['#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578'],'
      'round( STDEVP(FinalMark),3)  AS ['#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1608#1610#1588#1606' '#1606#1605#1585#1575#1578'],'
      
        'max((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1576#1610#1588#1578#1585#1610#1606' '#1606#1605#1585#1575#1578']'
      ','
      
        'min((case when FinalMark<0 then 0 else round((FinalMark*(Number_' +
        'of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null' +
        ' or maxmark <=0 then 20 else maxmark '
      'end))/dbo.CalcFullPoint(Exam.examid)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9',2) end)  )  AS ['#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1575#1578'] '#39
      'set @s=@s+'#39
      ' into ##ApplicantExam'
      'FROM      ApplicantExam '
      'inner join Exam on ApplicantExam.examid=Exam.examid'
      'where Exam.examid in (select examid from ##E)'
      'group by ApplicantExam.ExamID'
      #39
      ''
      'exec(@s)'
      ''
      '--SELECT * FROM ##ApplicantExam'
      ''
      'set @s='#39
      ''
      'DECLARE @SQLString NVARCHAR(500)'
      'DECLARE @ParmDefinition NVARCHAR(500)'
      'DECLARE @parmIN int'
      'DECLARE @parmRET1 float'
      ''
      ''
      'select @parmIN = examid from exam  '#39'+@where +'#39
      'SET @SQLString=N'#39#39'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'#39#39
      'SET @ParmDefinition=N'#39#39'@parm int, @parm1OUT float OUTPUT'#39#39
      ''
      'EXECUTE sp_executesql'
      '@SQLString,'
      '@ParmDefinition,'
      '@parm=@parmIN,'
      '@parm1OUT=@parmRET1 OUTPUT'
      ''
      ''
      ''
      'SELECT     Exam.ExamTitle ['#1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606'],'
      'Exam.ExamDate ['#1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610'],'
      'Exam.CorrectItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578'],'
      'Exam.WrongItemPoint ['#1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578'],'
      'Exam.BlankItemPoint ['#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582'],'
      'Exam.MinPassedMark*Exam.Maxmark/100 ['#1606#1605#1585#1607' '#1602#1576#1608#1604#1610'],'
      'Exam.Number_of_Items ['#1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607'],'
      'Exam.Number_of_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604'],'
      'Exam.number_of_applicant ['#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576'],'
      'round(exam.Difficulty,2) as ['#1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610'],'
      'Round(Exam.Discrimination,2) as ['#1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602'],'
      'NumberOf_1item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 1 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_2item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 2 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_3item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 3 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_4item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 4 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_5item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 5 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'NumberOf_6item_Question ['#1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604#1575#1578' 6 '#1711#1586#1610#1606#1607' '#1575#1610'],'
      'round(StandardError,2)  ['#1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'],'
      'Alpha '#1570#1604#1601#1575','
      'round(ExamVariance,2) ['#1608#1575#1585#1610#1575#1606#1587' '#1606#1605#1585#1575#1578'],'
      'RPBIS ,'
      
        '@parmRET1 KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxonomy' +
        '23,1 objectionnumber0,1 objectionnumber1,'
      '1 objectionnumber2,1 objectionnumber3,'
      ' ##ApplicantExam.* '#39
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Difficulty >= '#39'+cast(minvalue as varchar(10))+'#39' and Difficulty <' +
        #39'+cast(maxvalue as varchar(10)) +'#39') as ['#1583#1588#1608#1575#1585#1610':'#39'+Difficultytitle' +
        '+'#39'] '#39
      'from Difficulty'
      ''
      
        'select @s=@s+'#39', (select count(Questionid) from Question where ex' +
        'amId=Exam.ExamID and'
      
        'Discrimination >=   '#39'+cast(minvalue as varchar(10))+'#39' and  Discr' +
        'imination<'#39'+cast(maxvalue as varchar(10))+'#39') as ['#1575#1601#1578#1585#1575#1602':'#39'+Discri' +
        'minationTitle+'#39'] '#39
      'from Discrimination'
      'set @s=@s+'#39
      'FROM Exam'
      'INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID'
      'left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      #39
      'print @s'
      'exec(@s)'
      'drop table ##E'
      'drop Table ##ApplicantExam'
      '--By Hadi Mohamed 92/11/21'
      'GO'
      ''
      ''
      'ALTER PROCEDURE [dbo].[Analysis_Exam_Total]'
      #9'(@ExamID'#9'int)'
      'as'
      'DECLARE @SQLString NVARCHAR(500)'
      'DECLARE @ParmDefinition NVARCHAR(500)'
      'DECLARE @parmIN int'
      'DECLARE @parmRET1 float'
      ''
      ''
      'SET @parmIN= CONVERT(nvarchar(10),@ExamID)'
      'SET @SQLString=N'#39'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'#39
      'SET @ParmDefinition=N'#39'@parm int,'
      '                  @parm1OUT float OUTPUT'#39
      ''
      'EXECUTE sp_executesql'
      '@SQLString,'
      '@ParmDefinition,'
      '@parm=@parmIN,'
      '@parm1OUT=@parmRET1 OUTPUT'
      ''
      'update exam'
      'set'
      
        'NumberOf_1item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=1),'
      
        'NumberOf_2item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=2),'
      
        'NumberOf_3item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=3),'
      
        'NumberOf_4item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=4),'
      
        'NumberOf_5item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=5),'
      
        'NumberOf_6item_Question=(select count(*) from Question where exa' +
        'mid=@examid and number_Of_Item=6),'
      
        'Difficulty=round(       (select avg(Difficulty) from Question   ' +
        '  where examId=@examid),3),'
      
        'Discrimination= round(  (select avg(Discrimination) from Questio' +
        'n where examId=@examid),3),'
      
        'RPBIS=round(            (select avg(RPBIS)      from Question   ' +
        '  where examId=@examid),3),'
      'StandardError=  dbo.StandardError(@examid),'
      'kr20  = @parmRET1,'
      'Alpha = @parmRET1 ,'
      
        'ExamVariance=round(     (select varp(finalmark)      from Applic' +
        'antexam     where examId=@examid),3)'
      'FROM    Exam'
      'where Exam.examid =@examid'
      'GO'
      ''
      'ALTER PROCEDURE [dbo].[Analysis_Exam_Temporary]'
      #9'(@ExamID'#9'int)'
      'AS'
      'select *'
      'from exam where ExamID = @ExamID'
      'GO'
      ''
      'ALTER proc [dbo].[Update_ExamAndQuestion_ByExamID]'
      '(@ExamID'#9'[int])'
      'as'
      'DECLARE @Number_of_Question INT,'
      #9'    @number_of_applicant INT'
      
        'select @Number_of_Question = count(*) from question where ExamID' +
        ' = @ExamID'
      
        'select @number_of_applicant = count(*) from dbo.ApplicantExam wh' +
        'ere examid = @ExamID'
      ''
      'update exam set Number_of_Question = (@Number_of_Question)'
      'where ExamID = @ExamID'
      ''
      'update Exam set number_of_applicant = (@number_of_applicant)'
      'where examid = @ExamID'
      'go'
      ''
      'ALTER PROCEDURE [dbo].[insert_ApplicantAnswer_ByExamID]'
      #9'(@ExamID'#9'[int])'
      'AS'
      ''
      'SELECT     Applicant.ApplicantID, Question.QuestionID, '
      
        'case when isnumeric(substring(AnswerKey.AnswerKey,Question.numbe' +
        'r,1))=1  then substring(AnswerKey.AnswerKey,Question.number,1) e' +
        'lse '#39'9'#39' END AS Akey'
      'INTO #AppAnswer'
      'FROM         Applicant '
      
        'INNER JOIN   ApplicantExam ON Applicant.ApplicantID = ApplicantE' +
        'xam.ApplicantID '
      'INNER JOIN   Question ON ApplicantExam.ExamID = Question.ExamID'
      
        'INNER JOIN   AnswerKey ON ApplicantExam.ApplicantExamID = Answer' +
        'Key.ApplicantExamID'
      'where Question.ExamID=@ExamID'
      ''
      
        'delete ApplicantAnswer where questionid in (select questionid fr' +
        'om Question where examid=@examid)'
      
        'INSERT INTO ApplicantAnswer(ApplicantID, QuestionID, AnswerItemN' +
        'umber)'
      'SELECT     ApplicantID, QuestionID, Akey'
      'FROM         #AppAnswer'
      'order by ApplicantID, QuestionID'
      'GO'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9'(@ExamID'#9'[int])'
      'AS'
      'declare @number_of_applicant int,@Order1 int,@order2 int,'
      
        #9#9'@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint ' +
        'float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark ' +
        'FLOAT'#9#9
      #9#9
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      
        '       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPass' +
        'edMark,'
      '       @ZaribeFinalMark=MaxMark/Number_of_Question'
      'from  Exam'
      'where ExamID =@ExamID'
      ''
      
        'SELECT * into #question FROM question WHERE ExamID=@ExamID and Q' +
        'uestionActivityID in (1,3)'
      ''
      
        'select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@C' +
        'orrectItemPoint'
      'from #question'
      ''
      'IF OBJECT_ID('#39'tempdb..#m'#39') IS NOT NULL DROP TABLE #m'
      ''
      'SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( #Question.Corr' +
        'ectItemNumber,#Question.CorrectItemNumber2) or QuestionActivityI' +
        'D=3 then @CorrectItemPoint'
      
        '      else    @WrongItemPoint end)/@CorrectItemPoint as finalmar' +
        'k '
      'into #m'
      'FROM         ApplicantAnswer '
      
        'INNER JOIN   #Question ON ApplicantAnswer.QuestionID = #Question' +
        '.QuestionID'
      'where #Question.ExamID=@ExamID'
      'group by ApplicantAnswer.ApplicantID'
      ''
      '-- Added By Saeedi on 901115'
      'UPDATE #m'
      'SET finalmark=finalmark*@ZaribeFinalMark'
      ''
      'IF OBJECT_ID('#39'tempdb..#n'#39') IS NOT NULL DROP TABLE #n'
      'select *,1 group27,identity(int,1,1) ord into #n'
      'from #m m'
      'order by finalmark desc '
      'select @number_of_applicant=max(ord)'
      'from #n'
      ''
      'if @number_of_applicant<20 '
      '  set  @Order1=@number_of_applicant/2'
      'else'
      'if @number_of_applicant between 20  and 40'
      '  set  @Order1=10'
      'else '
      'set @Order1=(27*@number_of_applicant)/100'
      ''
      'set @Order2=@number_of_applicant-@order1'
      ''
      'update #n'
      'set group27=case when ord<=@order1 then 3 '
      '                 when ord>@order1 and ord<@order2 then 2'
      '                 when ord>=@order2 then 1 end'
      'update ApplicantExam'
      'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        '    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmar' +
        'k,'
      
        '    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 ' +
        'end'
      'from  ApplicantExam'
      ' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      'where ApplicantExam.ExamID=@ExamID'
      'SELECT ApplicantID INTO #AppIDs FROM Applicant '
      
        #9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHE' +
        'RE ExamID=1197)'
      #9
      'SELECT * into #AppExam FROM ApplicantExam WHERE ExamID=@ExamID'
      '---------------------------'
      
        #9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinP' +
        'assedMark1 FLOAT,@Mark FLOAT'#9#9
      
        '    SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(Min' +
        'PassedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9'DECLARE crr CURSOR FOR '#9
      #9'SELECT ApplicantID FROM #AppIDs '
      #9'OPEN crr'
      #9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9'WHILE @@FETCH_STATUS = 0'
      #9'BEGIN'
      #9#9'SELECT @FinalMark=ISNULL(FinalMark,0) '
      #9#9'FROM #AppExam'
      #9#9'WHERE ApplicantID=@ApplicantID'
      #9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=1'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9'ELSE'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=0'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9'END'
      #9'CLOSE crr'
      ' '#9'DEALLOCATE crr  '#9
      '---------- BY Hadi Mohamed  1392/11/21'
      'GO'
      ''
      'ALTER  PROCEDURE [dbo].[Analysis_Question_byExamID]'
      #9'(@ExamID'#9'[int])'
      'AS'
      ''
      ' IF OBJECT_ID('#39'tempdb..##m'#39') IS NOT NULL DROP TABLE ##m'#9
      ''
      ' declare @select nvarchar(3000)'
      ' set   @select='#39'SELECT Question.QuestionID  , '
      
        ' sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectI' +
        'temNumber2) then 1 else 0 end)  Correct,'
      
        ' sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else 0' +
        ' end) Answerd,'
      ' count(*) All_Count,'
      
        ' sum ( case when AnswerItemNumber not in (CorrectItemNumber,Corr' +
        'ectItemNumber2) and AnswerItemNumber<>0 then 1 else 0 end) Wrong' +
        ','
      
        'Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,Co' +
        'rrectItemNumber2) then 1 else 0 end) /'
      'cast(count(AnswerItemNumber )as float),3) as  Di,'
      'sum ( case when  GroupingID=3  then 1 else 0 end) Group3,'
      'sum ( case when  GroupingID=1  then 1 else 0 end) Group1, '
      
        'sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G3,'
      
        'sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectIt' +
        'emNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G1,'
      '0.0 dis'
      ' '#39
      'declare @Number_Of_Item tinyint'
      'SELECT     @Number_Of_Item=Number_of_Items'
      'FROM         Exam'
      'WHERE     (ExamID = @ExamID)'
      'declare @ItemNumber tinyint,@GroupingID tinyint'
      'set @ItemNumber=0 '
      'while @ItemNumber<=6--@Number_Of_Item'
      ' begin'
      '  set @GroupingID=1 '
      '  while @GroupingID<=3 '
      '   begin'
      '     if @GroupingID<>2   '
      
        '      set @select=@select+'#39',sum ( case when AnswerItemNumber= '#39'+' +
        'cast(@ItemNumber as char(1))+'#39' and GroupingID='#39'+cast(@GroupingID' +
        ' as char(1)) +'
      
        #9#9#9#9#9#9#9#39' then 1 else 0 end ) G'#39'+cast(@GroupingID as char(1))+'#39'_'#39 +
        '+cast(@ItemNumber as char(1))'
      ''
      '     set @GroupingID=@GroupingID+1'
      '  end  --@GroupingID'
      '  '
      '  '
      '  set @select=@select+'#39','
      
        'sum ( case when AnswerItemNumber= '#39'+cast(@ItemNumber as char(1))' +
        '+ '
      #39' then 1 else 0 end ) all'#39'+cast(@ItemNumber as char(1))'
      ' set @ItemNumber=@ItemNumber+1'
      'end -- @ItemNumber'
      '      set @select=@select+'#39' into ##m'
      'FROM          Question'
      
        'INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Que' +
        'stion.QuestionID '
      
        'INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applic' +
        'antAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID'
      
        'where Question.Examid='#39'+cast(@ExamID as varchar(10))+'#39'-- and Que' +
        'stionActivityID=1'
      'group by Question.QuestionID,Number, CorrectItemNumber  '#39
      ''
      'exec sp_executesql @Select'
      ''
      ''
      'update Question'
      'set Question.Correct=##m.Correct ,'
      'Question.Answerd=##m.Answerd ,'
      'Question.All_Count=##m.All_Count ,'
      'Question.Wrong=##m.Wrong ,'
      'Question.Difficulty  =##m.Di ,'
      'Question.Discrimination =round('
      
        '(Correct_G3 -Correct_G1)/cast(case when group3>group1 then group' +
        '3 else group1 end as float) ,3),'
      'Question.G1_0=##m.G1_0 ,'
      'Question.G3_0=##m.G3_0 ,'
      'Question.all0=##m.all0 ,'
      'Question.G1_1=##m.G1_1 ,'
      'Question.G3_1=##m.G3_1 ,'
      'Question.all1=##m.all1 ,'
      'Question.G1_2=##m.G1_2 ,'
      'Question.G3_2=##m.G3_2 ,'
      'Question.all2=##m.all2 ,'
      'Question.G1_3=##m.G1_3 ,'
      'Question.G3_3=##m.G3_3 ,'
      'Question.all3=##m.all3 ,'
      'Question.G1_4=##m.G1_4 ,'
      'Question.G3_4=##m.G3_4 ,'
      'Question.all4=##m.all4 ,'
      'Question.all5=##m.all5 ,'
      'Question.all6=##m.all6 ,'
      'Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)'
      
        'from Question inner join ##m on ##m.QuestionID=Question.Question' +
        'ID'
      ''
      'update Question'
      
        'set number_Of_Item=(case  when cast(all1 as float)/all_count>0.0' +
        '5 then 1 else 0 end)+'
      
        '(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all5 as float)/all_count>0.05 then 1 else 0 end' +
        ')+'
      
        '(case  when cast(all6 as float)/all_count>0.05 then 1 else 0 end' +
        ')'
      'WHERE ExamID = @ExamID'
      ''
      'GO'
      ''
      'ALTER PROCEDURE [dbo].[Analysis_Exam_Total]'
      #9'(@ExamID'#9'int)'
      'as'
      'DECLARE @SQLString NVARCHAR(500)'
      'DECLARE @ParmDefinition NVARCHAR(500)'
      'DECLARE @parmIN int'
      'DECLARE @parmRET1 float'
      ''
      ''
      'SET @parmIN= CONVERT(nvarchar(10),@ExamID)'
      'SET @SQLString=N'#39'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'#39
      'SET @ParmDefinition=N'#39'@parm int,'
      '                  @parm1OUT float OUTPUT'#39
      ''
      'EXECUTE sp_executesql'
      '@SQLString,'
      '@ParmDefinition,'
      '@parm=@parmIN,'
      '@parm1OUT=@parmRET1 OUTPUT'
      ''
      'SELECT * into #question FROM Question WHERE ExamID = @ExamID'
      
        'SELECT FinalMark into #finMark FROM ApplicantExam WHERE ExamID =' +
        ' @ExamID'
      ''
      'update exam'
      'set'
      
        'NumberOf_1item_Question=(select count(*) from #question where  n' +
        'umber_Of_Item=1),'
      
        'NumberOf_2item_Question=(select count(*) from #question where  n' +
        'umber_Of_Item=2),'
      
        'NumberOf_3item_Question=(select count(*) from #question where  n' +
        'umber_Of_Item=3),'
      
        'NumberOf_4item_Question=(select count(*) from #question where  n' +
        'umber_Of_Item=4),'
      
        'NumberOf_5item_Question=(select count(*) from #question where  n' +
        'umber_Of_Item=5),'
      
        'NumberOf_6item_Question=(select count(*) from #question where  n' +
        'umber_Of_Item=6),'
      
        'Difficulty=round(       (select avg(Difficulty) from #question  ' +
        '   ),3),'
      
        'Discrimination= round(  (select avg(Discrimination) from #questi' +
        'on ),3),'
      
        'RPBIS=round(            (select avg(RPBIS)      from #question  ' +
        '   ),3),'
      'StandardError=  dbo.StandardError(@examid),'
      'kr20  = @parmRET1,'
      'Alpha = @parmRET1 ,'
      
        'ExamVariance=round(     (select varp(finalmark)      from #finMa' +
        'rk ),3)'
      'FROM    Exam'
      'where Exam.examid =@examid'
      ''
      'GO'
      
        ' ---------------------------------------------------------------' +
        '-'
      'ALTER FUNCTION [dbo].[StandardError](@examid int)'
      'RETURNS float  AS  '
      'BEGIN '
      #9
      'DECLARE @SQLString NVARCHAR(500)'
      'DECLARE @ParmDefinition NVARCHAR(500)'
      'DECLARE @parmIN int'
      'DECLARE @parmRET1 float'
      ''
      ''
      'SET @parmIN= CONVERT(nvarchar(10),@ExamID)'
      'SET @SQLString=N'#39'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'#39
      'SET @ParmDefinition=N'#39'@parm int,'
      '                  @parm1OUT float OUTPUT'#39
      ''
      'EXECUTE sp_executesql'
      '@SQLString,'
      '@ParmDefinition,'
      '@parm=@parmIN,'
      '@parm1OUT=@parmRET1 OUTPUT'
      ''
      'declare @vp float'
      'select @vp=VARP(FinalMark) '
      'from ApplicantExam'
      'where examid=@examid'
      'return(round( sqrt(@vp)*sqrt(  1-CONVERT(float,@parmRET1)),2)  )'
      'END'
      'GO'
      ''
      '--------------------------------------------'
      'IF EXISTS(SELECT * FROM sysobjects WHERE NAME = '#39'SP_KR20'#39')'
      #9'DROP PROCEDURE [dbo].[SP_KR20]'
      'GO'
      ''
      
        'CREATE  procedure [dbo].[SP_KR20](@examid int, @result float out' +
        'put)-- '#1588#1605#1575#1585#1607' '#1570#1586#1605#1608#1606
      'AS'
      'BEGIN '
      '--BY Hadi Mohamed 921121'
      'declare @qn int, -- '#1578#1593#1583#1575#1583' '#1587#1608#1575#1604#1575#1578' '#1570#1586#1605#1608#1606
      #9#9'@app int, -- '#1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576#1575#1606' '#1570#1586#1605#1608#1606
      
        #9#9'@pq float, -- '#1605#1580#1605#1608#1593' ('#1580#1608#1575#1576' '#1607#1575#1610' '#1583#1585#1587#1578' * '#1580'.'#1575#1576#1607#1575#1610' '#1594#1604#1591' '#1576#1585#1575#1610' '#1607#1585' '#1587#1608#1575#1604')' +
        ' '#1583#1585
      #9#9'@vp float -- '#1608#1575#1585#1610#1575#1606#1587' '#1587#1608#1575#1604#1575#1578' '#1570#1586#1605#1608#1606
      #9#9
      '---------------------------------------------------------'
      'select * into #ApplicantExam  '
      'from ApplicantExam '
      'where examid=@examid'
      ''
      'select * into #Question  '
      'from Question '
      'where examid=@examid'
      ''
      'select ApplicantAnswer.* into #ApplicantAnswer  '
      
        'from ApplicantAnswer inner join Question on ApplicantAnswer.Ques' +
        'tionID = Question.QuestionID'
      'where examid=@examid'
      '---------------------------------------------------------'
      ''
      'select @app=count(*), @vp=VARP(FinalMark) '
      'from #ApplicantExam'
      'where examid=@examid'
      ''
      ''
      'select @qn=count(*)'
      'from #Question'
      'where examid=@examid'
      ''
      ''
      'set @pq=0'
      ' '
      'select @pq=@pq+'
      '(correct* (@app - Correct))/cast((@app* @app)AS float) '
      'from #Question  q'
      'where questionactivityid =1 and examid=@examid'
      'set @result = 0'
      'if @vp<>0 '
      #9'set @result = round( (@qn/ (@qn-1.0) )*(  1-(@pq/(@vp))  ),3)'
      'IF @result<0 '
      'SET @result = 0'
      'return'
      'END'
      'GO'
      '---------------------------------------'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9'(@ExamID'#9'[int])'
      'AS'
      
        'declare @number_of_applicant int,@Order1 int,@order2 int,@mxMark' +
        ' int,'
      
        #9#9'@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint ' +
        'float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark ' +
        'FLOAT'#9#9
      #9#9
      
        'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Correct' +
        'ItemPoint,'
      
        '       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPass' +
        'edMark,'
      '       @ZaribeFinalMark=MaxMark/Number_of_Question,'
      '       @mxMark = MaxMark'
      'from  Exam'
      'where ExamID =@ExamID'
      ''
      
        'SELECT * into #question FROM question WHERE ExamID=@ExamID and Q' +
        'uestionActivityID in (1,3)'
      ''
      
        '--select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*' +
        '@CorrectItemPoint'
      'select @AcceptedMark = (@MinPassedMark/100.0)*@mxMark'
      'from #question'
      ''
      'IF OBJECT_ID('#39'tempdb..#m'#39') IS NOT NULL DROP TABLE #m'
      ''
      'SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*'
      
        'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivi' +
        'tyID=2 then @BlankItemPoint'
      
        '      when  ApplicantAnswer.AnswerItemNumber in ( #Question.Corr' +
        'ectItemNumber,#Question.CorrectItemNumber2) or QuestionActivityI' +
        'D=3 then @CorrectItemPoint'
      
        '      else    @WrongItemPoint end)/@CorrectItemPoint as finalmar' +
        'k '
      'into #m'
      'FROM         ApplicantAnswer '
      
        'INNER JOIN   #Question ON ApplicantAnswer.QuestionID = #Question' +
        '.QuestionID'
      'where #Question.ExamID=@ExamID'
      'group by ApplicantAnswer.ApplicantID'
      ''
      '-- Added By Saeedi on 901115'
      'UPDATE #m'
      'SET finalmark=finalmark*@ZaribeFinalMark'
      ''
      'IF OBJECT_ID('#39'tempdb..#n'#39') IS NOT NULL DROP TABLE #n'
      'select *,1 group27,identity(int,1,1) ord into #n'
      'from #m m'
      'order by finalmark desc '
      'select @number_of_applicant=max(ord)'
      'from #n'
      ''
      'if @number_of_applicant<20 '
      '  set  @Order1=@number_of_applicant/2'
      'else'
      'if @number_of_applicant between 20  and 40'
      '  set  @Order1=10'
      'else '
      'set @Order1=(27*@number_of_applicant)/100'
      ''
      'set @Order2=@number_of_applicant-@order1'
      ''
      'update #n'
      'set group27=case when ord<=@order1 then 3 '
      '                 when ord>@order1 and ord<@order2 then 2'
      '                 when ord>=@order2 then 1 end'
      'update ApplicantExam'
      'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        '    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmar' +
        'k,'
      
        '    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 ' +
        'end'
      'from  ApplicantExam'
      ' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      'where ApplicantExam.ExamID=@ExamID'
      'SELECT ApplicantID INTO #AppIDs FROM Applicant '
      
        #9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHE' +
        'RE ExamID=1197)'
      #9
      'SELECT * into #AppExam FROM ApplicantExam WHERE ExamID=@ExamID'
      '---------------------------'
      
        #9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinP' +
        'assedMark1 FLOAT,@Mark FLOAT'#9#9
      
        '    SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(Min' +
        'PassedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9'DECLARE crr CURSOR FOR '#9
      #9'SELECT ApplicantID FROM #AppIDs '
      #9'OPEN crr'
      #9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9'WHILE @@FETCH_STATUS = 0'
      #9'BEGIN'
      #9#9'SELECT @FinalMark=ISNULL(FinalMark,0) '
      #9#9'FROM #AppExam'
      #9#9'WHERE ApplicantID=@ApplicantID'
      #9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=1'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9'ELSE'
      #9#9#9'UPDATE ApplicantExam'
      #9#9#9'SET Accepted=0'
      #9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9'END'
      #9'CLOSE crr'
      ' '#9'DEALLOCATE crr  '#9
      '---------- BY Hadi Mohamed  1392/11/21'
      'GO'
      '------------------------------------'
      'ALTER  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]'
      #9'(@examId int,@where '#9'nvarchar(2000))'
      'AS'
      'declare @SQL nvarchar(4000)'
      'set @SQL='#39'SELECT '
      
        'Question.QuestionID,Course.CourseTitle,Question.ExamID,Question.' +
        'Number,Question.DesignerTeacherID,Question.CourseID,Question.Cor' +
        'rect,Question.Answerd,Question.All_Count,'
      
        '                  Question.Wrong,Question.Difficulty,Question.Di' +
        'scrimination AS Discrimination,Question.G1_0,Question.G3_0,Quest' +
        'ion.all0,Question.G1_1,Question.G3_1,Question.all1,'
      
        '                 Question.G1_2,Question.G3_2,Question.all2,Quest' +
        'ion.G1_3,Question.G3_3,Question.all3,Question.G1_4,Question.G3_4' +
        ',Question.all4,Question.G1_5,Question.G3_5,'#9'   '
      
        '                 Question.all5,Question.number_Of_Item,Question.' +
        'QuestionActivityID,Question.TemporaryActive,Question.Coefficient' +
        ',Question.RPBIS,Question.CorrectItemNumber,'
      
        '                 Question.CorrectItemNumber2,Question.Taxonomy,Q' +
        'uestion.ObjectionNumber,Question.all6'#9
      
        #9'   ,cast(DifficultyTitle as varchar(50)) as DifficultyTitle, Di' +
        'scriminationTitle,questionActivityTitle,'
      '       100*all0/All_Count all0_percent'
      '      ,100*all1/All_Count all1_percent'
      '      ,100*all2/All_Count all2_percent'
      '      ,100*all3/All_Count all3_percent'
      '      ,100*all4/All_Count all4_percent'
      '      ,100*all5/All_Count all5_percent'
      '      ,100*all6/All_Count all6_percent'
      '      '
      
        'FROM         Question LEFT JOIN Course ON Question.CourseID=Cour' +
        'se.CourseID '
      
        'left JOIN Difficulty       ON Question.Difficulty >= Difficulty.' +
        'MinValue and Question.Difficulty <Difficulty.MaxValue'
      
        'left JOIN Discrimination   ON Question.Discrimination >= Discrim' +
        'ination.MinValue and Question.Discrimination <Discrimination.Max' +
        'Value'
      
        'left join questionActivity ON questionActivity.questionActivityI' +
        'D= Question.questionActivityID where Question.ExamID='#39'+cast(@exa' +
        'mID as varchar(5))'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where '
      '--PRINT @SQL'
      '--By Hadi Mohamed 92/11/16'
      'exec(@sql)'
      'GO'
      '------------------------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns '
      '          WHERE NAME = '#39'CustomField3'#39' '
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Appl' +
        'icant'#39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Applicant ADD'
      #9#9'CustomField3 nvarchar(100) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns '
      '          WHERE NAME = '#39'CustomField4'#39' '
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Appl' +
        'icant'#39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Applicant ADD'
      #9#9'CustomField4 nvarchar(100) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns '
      '          WHERE NAME = '#39'CustomField5'#39' '
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Appl' +
        'icant'#39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Applicant ADD'
      #9#9'CustomField5 nvarchar(100) NULL'
      'END'
      'GO'
      '--------------------------------------'
      
        'IF EXISTS(SELECT * FROM sysobjects WHERE NAME = '#39'Select_Table_Cu' +
        'stomFieldsCaption'#39')'
      #9'DROP PROCEDURE [dbo].[Select_Table_CustomFieldsCaption]'
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[Select_Table_CustomFieldsCaption]'
      '@TableName NVARCHAR(50)'
      'AS '
      'DECLARE @cfc1 NVARCHAR(50),'
      #9#9'@cfc2 NVARCHAR(50),'
      #9#9'@cfc3 NVARCHAR(50),'
      #9#9'@cfc4 NVARCHAR(50),'
      #9#9'@cfc5 NVARCHAR(50) '
      #9#9
      
        'SELECT @cfc1 = VALUE FROM sys_Setting WHERE VariableName = @Tabl' +
        'eName+'#39'.CustomField1'#39
      
        'SELECT @cfc2 = VALUE FROM sys_Setting WHERE VariableName = @Tabl' +
        'eName+'#39'.CustomField2'#39
      
        'SELECT @cfc3 = VALUE FROM sys_Setting WHERE VariableName = @Tabl' +
        'eName+'#39'.CustomField3'#39
      
        'SELECT @cfc4 = VALUE FROM sys_Setting WHERE VariableName = @Tabl' +
        'eName+'#39'.CustomField4'#39
      
        'SELECT @cfc5 = VALUE FROM sys_Setting WHERE VariableName = @Tabl' +
        'eName+'#39'.CustomField5'#39
      ''
      'Select'#9'ISNULL(@cfc1,'#39#1601#1610#1604#1583' 1'#39') AS CFC1,'
      #9#9'ISNULL(@cfc2,'#39#1601#1610#1604#1583' 2'#39') AS CFC2,'
      #9#9'ISNULL(@cfc3,'#39#1601#1610#1604#1583' 3'#39') AS CFC3,'
      #9#9'ISNULL(@cfc4,'#39#1601#1610#1604#1583' 4'#39') AS CFC4,'
      #9#9'ISNULL(@cfc5,'#39#1601#1610#1604#1583' 5'#39') AS CFC5'
      ''
      'GO'
      '--------------------------------------------'
      
        'IF EXISTS(SELECT * FROM sysobjects WHERE NAME = '#39'Update_Table_Cu' +
        'stomFieldsCaption'#39')'
      #9'DROP PROCEDURE [dbo].[Update_Table_CustomFieldsCaption]'
      'GO'
      ''
      'CREATE  PROCEDURE [dbo].[Update_Table_CustomFieldsCaption]'
      #9#9'@TableName NVARCHAR(50),'
      #9#9'@cfc1 NVARCHAR(50),'
      #9#9'@cfc2 NVARCHAR(50),'
      #9#9'@cfc3 NVARCHAR(50),'
      #9#9'@cfc4 NVARCHAR(50),'
      #9#9'@cfc5 NVARCHAR(50) '
      'AS'#9#9
      
        'IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableN' +
        'ame+'#39'.CustomField1'#39')'
      
        #9'UPDATE sys_Setting SET [Value] = @cfc1 WHERE VariableName = @Ta' +
        'bleName+'#39'.CustomField1'#39
      'ELSE '
      #9'INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, @TableName+'#39'.CustomField1'#39', @cfc1)'
      #9
      
        'IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableN' +
        'ame+'#39'.CustomField2'#39')'
      
        #9'UPDATE sys_Setting SET [Value] = @cfc2 WHERE VariableName = @Ta' +
        'bleName+'#39'.CustomField2'#39
      'ELSE '
      #9'INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, @TableName+'#39'.CustomField2'#39', @cfc2)'
      #9
      
        'IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableN' +
        'ame+'#39'.CustomField3'#39')'
      
        #9'UPDATE sys_Setting SET [Value] = @cfc3 WHERE VariableName = @Ta' +
        'bleName+'#39'.CustomField3'#39
      'ELSE '
      #9'INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, @TableName+'#39'.CustomField3'#39', @cfc3)'
      ''
      
        'IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableN' +
        'ame+'#39'.CustomField4'#39')'
      
        #9'UPDATE sys_Setting SET [Value] = @cfc4 WHERE VariableName = @Ta' +
        'bleName+'#39'.CustomField4'#39
      'ELSE '
      #9'INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, @TableName+'#39'.CustomField4'#39', @cfc4)'
      ''
      
        'IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableN' +
        'ame+'#39'.CustomField5'#39')'
      
        #9'UPDATE sys_Setting SET [Value] = @cfc5 WHERE VariableName = @Ta' +
        'bleName+'#39'.CustomField5'#39
      'ELSE '
      #9'INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, @TableName+'#39'.CustomField5'#39', @cfc5)'
      'GO'
      
        '----------------------------------------------------------------' +
        '-----'
      
        'IF NOT EXISTS(SELECT * FROM sys_Setting WHERE VariableName = '#39'Ap' +
        'plicant.CustomField1'#39')'
      '        INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, '#39'Applicant.CustomField1'#39', '#39#1605#1581#1604' '#1582#1583#1605#1578#39')'
      ''
      
        'IF NOT EXISTS(SELECT * FROM sys_Setting WHERE VariableName = '#39'Ap' +
        'plicant.CustomField2'#39')'
      #9'INSERT INTO sys_Setting(UserID,VariableName,[Value])'
      #9'VALUES(-1, '#39'Applicant.CustomField2'#39', '#39#1601#1610#1604#1583' 2'#39')'
      'GO'
      
        '----------------------------------------------------------------' +
        '-------'
      'IF NOT EXISTS(SELECT * FROM syscolumns'
      '          WHERE NAME = '#39'CustomField1'#39
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Exam' +
        #39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'CustomField1 nvarchar(50) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns'
      '          WHERE NAME = '#39'CustomField2'#39
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Exam' +
        #39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'CustomField2 nvarchar(50) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns'
      '          WHERE NAME = '#39'CustomField3'#39
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Exam' +
        #39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'CustomField3 nvarchar(50) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns'
      '          WHERE NAME = '#39'CustomField4'#39
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Exam' +
        #39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'CustomField4 nvarchar(50) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'IF NOT EXISTS(SELECT * FROM syscolumns'
      '          WHERE NAME = '#39'CustomField5'#39
      
        '          AND id IN(SELECT id FROM sysobjects WHERE NAME = '#39'Exam' +
        #39'))'
      'BEGIN'
      #9'ALTER TABLE dbo.Exam ADD'
      #9#9'CustomField5 nvarchar(50) NULL'
      'END'
      'GO'
      '--------------------------------------'
      'ALTER PROCEDURE [dbo].[Browse_Exam]'
      '@where varchar(2047)'
      'AS'
      ' declare @SqlCommand nvarchar(4000)'
      
        ' set   @SqlCommand='#39'SELECT     Exam.ExamID, Exam.ExamTitle, Exam' +
        '.MainCourseID, Exam.MainDesignerTeacherID, Exam.ExamDate, Exam.C' +
        'orrectItemPoint, '
      
        '                      Exam.WrongItemPoint, Exam.BlankItemPoint, ' +
        'Exam.MinPassedMark, Exam.ExamTypeID, Exam.Number_of_Items, Exam.' +
        'Number_of_Question, '
      
        '                      Exam.number_of_applicant, Exam.TexFormatID' +
        ', Exam.TermCode, ExamType.ExamTypeTitle, Teacher.TeacherCode, Te' +
        'acher.FullName, '
      
        '                      TextFormat.TextFormatTitle, Course.CourseC' +
        'ode, Course.CourseTitle,'
      
        '                      Exam.CustomField1,Exam.CustomField2,Exam.C' +
        'ustomField3,Exam.CustomField4,Exam.CustomField5'
      'FROM         Exam '
      
        'LEFT JOIN  Teacher ON Exam.MainDesignerTeacherID = Teacher.Teach' +
        'erID '
      'LEFT JOIN  Course ON Exam.MainCourseID = Course.CourseID '
      
        'LEFT JOIN  TextFormat ON Exam.TexFormatID = TextFormat.TextForma' +
        'tID '
      'LEFT JOIN  ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'#39
      'set @where=isnull(ltrim(@where),'#39#39')'
      ' if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      'set @SqlCommand=@SqlCommand+@where+'#39' order by ExamDate desc '#39
      'exec sp_executesql @SqlCommand'
      'GO'
      '--------------------------------------------'
      'ALTER  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]'
      #9'(@ExamID'#9'int,@where nvarchar(1000),@order varchar(100) )'
      'AS'
      ' declare @SQL nvarchar(4000)'
      
        'set @SQL='#39' SELECT Applicant.*, Faculty.FacultyTitle, Major.Major' +
        'Title, Exam.ExamTitle, Course.CourseCode, '
      
        ' Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.Term' +
        'Code ExamTerm,T.FullName, T.FullName as TeacherTitle, EducationG' +
        'roup.EducationGroupTitle,'
      
        ' Exam.CustomField1 as ECF1, Exam.CustomField2 as ECF2, Exam.Cust' +
        'omField3 as ECF3, Exam.CustomField4 as ECF4, Exam.CustomField5 a' +
        's ECF5'
      'FROM ApplicantExam '
      
        'inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.A' +
        'pplicantID'
      'inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID'
      'Left join Teacher T on Exam.TeacherID = T.TeacherID '
      'left JOIN Course ON Exam.MainCourseID = Course.CourseID '
      'LEFT JOIN Major ON Applicant.MajorID = Major.MajorID '
      
        'LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Ex' +
        'am.EducationGroupID '
      
        'LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyI' +
        'D'
      
        'where Exam.ExamID='#39'+cast(@examID as varchar(10))                ' +
        '      '
      
        'set @order =case when isnull(ltrim(@order),'#39#39')='#39#39' then '#39#39' else '#39 +
        ' order by '#39'+isnull(ltrim(@order),'#39#39') end'
      
        'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else '#39 +
        ' and '#39'+@where end '
      'set @sql=@sql+@where +@order'
      'exec(@sql)'
      'GO'
      '----------------------------------------------------'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld1'#39'  and syscolumns.id=OBJECT_ID('#39'Exam'#39'))'
      #9'alter table Exam'
      #9'add CustomField1 nvarchar(50)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld2'#39'  and syscolumns.id=OBJECT_ID('#39'Exam'#39'))'
      #9'alter table Exam'
      #9'add CustomField2 nvarchar(50)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld3'#39'  and syscolumns.id=OBJECT_ID('#39'Exam'#39'))'
      #9'alter table Exam'
      #9'add CustomField3 nvarchar(50)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld4'#39'  and syscolumns.id=OBJECT_ID('#39'Exam'#39'))'
      #9'alter table Exam'
      #9'add CustomField4 nvarchar(50)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld5'#39'  and syscolumns.id=OBJECT_ID('#39'Exam'#39'))'
      #9'alter table Exam'
      #9'add CustomField5 nvarchar(50)'
      'GO'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld1'#39'  and syscolumns.id=OBJECT_ID('#39'Applicant'#39'))'
      #9'alter table Applicant'
      #9'add CustomField1 nvarchar(100)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld2'#39'  and syscolumns.id=OBJECT_ID('#39'Applicant'#39'))'
      #9'alter table Applicant'
      #9'add CustomField2 nvarchar(100)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld3'#39'  and syscolumns.id=OBJECT_ID('#39'Applicant'#39'))'
      #9'alter table Applicant'
      #9'add CustomField3 nvarchar(100)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld4'#39'  and syscolumns.id=OBJECT_ID('#39'Applicant'#39'))'
      #9'alter table Applicant'
      #9'add CustomField4 nvarchar(100)'
      
        #9'if not exists (select * from syscolumns where name = '#39'CustomFie' +
        'ld5'#39'  and syscolumns.id=OBJECT_ID('#39'Applicant'#39'))'
      #9'alter table Applicant'
      #9'add CustomField5 nvarchar(100)'
      ''
      'GO'
      
        #9'if not exists (select * from syscolumns where name = '#39'GroupExam' +
        'Start'#39'  and syscolumns.id=OBJECT_ID('#39'TextFormat'#39'))'
      #9'alter table TextFormat'
      #9'add GroupExamStart SmallInt null'
      'GO'
      #9'IF OBJECT_ID('#39'ExamEqualQuestion'#39') is null'
      #9'CREATE TABLE ExamEqualQuestion'
      #9'('
      #9#9'[ExamEqualQuestionId] [int] IDENTITY(1,1) NOT NULL,'
      #9#9'[ExamId] [int] NULL,'
      #9#9'[GroupExamId] [int] NULL,'
      #9#9'[QuestionNumber] [int] NULL,'
      #9#9'[EqualQuestionNumber] [int] NULL'
      #9') ON [PRIMARY]'
      ''
      'GO'
      #9'if OBJECT_ID('#39'GenerateBarcode'#39') is not null'
      #9'drop function GenerateBarcode'
      'GO'
      #9'Create function  GenerateBarcode(@Input varchar(12))'
      #9'returns varchar(12)'
      #9'as'
      #9'begin'
      #9#9'declare @len int '
      #9#9' set @len=len(@input)'
      #9#9' while @len<12'
      #9#9' begin'
      #9#9#9'set @Input=@Input+'#39'+'#39
      #9#9#9'set @len=@len+1'#9
      #9#9' end'
      #9#9' return @input'
      #9'end'
      'GO'
      #9'if OBJECT_ID ('#39'GroupExam'#39') is null'
      #9'create  table GroupExam'
      #9'('#9
      #9#9'GroupExamId int identity,'
      #9#9'Code  int,'
      #9#9'Title varchar(50)'
      #9')'
      'GO'
      #9'truncate table GroupExam'
      #9'insert into GroupExam (Code,Title)'
      #9'select 1,'#39#1575#1604#1601#39' '
      #9'insert into GroupExam (code,Title)'
      #9'select 2 ,'#39#1576#39
      #9'insert into GroupExam (code,Title)'
      #9'select 3 ,'#39#1580#39
      #9'insert into GroupExam (code,Title)'
      #9'select 4,'#39#1583#39
      'GO'
      
        #9'if not exists (select * from syscolumns where name = '#39'GroupExam' +
        'id'#39'  and syscolumns.id=OBJECT_ID('#39'Exam'#39'))'
      #9'alter table Exam'
      #9'add GroupExamid int  '
      'GO'
      #9'if OBJECT_ID ('#39'Browse_Exam'#39') is not null'
      #9'drop procedure Browse_Exam'
      'GO'
      #9'Create PROCEDURE [dbo].[Browse_Exam]'
      #9'@where varchar(2047)'
      #9'AS'
      #9' declare @SqlCommand nvarchar(4000)'
      
        #9' set   @SqlCommand='#39'SELECT     GroupExam.Code GroupExam ,Exam.E' +
        'xamID, Exam.ExamTitle, Exam.MainCourseID, Exam.MainDesignerTeach' +
        'erID, Exam.ExamDate, '
      'Exam.CorrectItemPoint, '
      
        #9#9#9#9#9#9'  Exam.WrongItemPoint, Exam.BlankItemPoint, Exam.MinPassed' +
        'Mark, Exam.ExamTypeID, Exam.Number_of_Items, '
      'Exam.Number_of_Question, '
      
        #9#9#9#9#9#9'  Exam.number_of_applicant, Exam.TexFormatID, Exam.TermCod' +
        'e, ExamType.ExamTypeTitle, Teacher.TeacherCode, Teacher.FullName' +
        ', '
      
        #9#9#9#9#9#9'  TextFormat.TextFormatTitle, Course.CourseCode, Course.Co' +
        'urseTitle,'
      
        #9#9#9#9#9#9'  Exam.CustomField1,Exam.CustomField2,Exam.CustomField3,Ex' +
        'am.CustomField4,Exam.CustomField5'
      #9'FROM         Exam '
      
        #9'LEFT JOIN  Teacher ON Exam.MainDesignerTeacherID = Teacher.Teac' +
        'herID '
      #9'LEFT JOIN  Course ON Exam.MainCourseID = Course.CourseID '
      
        #9'LEFT JOIN  TextFormat ON Exam.TexFormatID = TextFormat.TextForm' +
        'atID '
      #9'LEFT JOIN  ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
      #9'left join  GroupExam on Exam.GroupExamId=GroupExam.GroupExamId'
      #9#39
      #9'set @where=isnull(ltrim(@where),'#39#39')'
      #9' if @where<>'#39#39'  set  @where='#39' where '#39'+@where'
      #9'set @SqlCommand=@SqlCommand+@where+'#39' order by ExamDate desc '#39
      #9'exec sp_executesql @SqlCommand'
      'GO'
      
        #9'if not exists (select * from syscolumns where name = '#39'GroupExam' +
        'id'#39'  and syscolumns.id=OBJECT_ID('#39'ApplicantExam'#39'))'
      #9'alter table ApplicantExam '
      #9'add GroupExamId int '
      'GO'
      
        #9'if not exists (select * from syscolumns where name = '#39'SeatNumbe' +
        'r'#39'  and syscolumns.id=OBJECT_ID('#39'ApplicantExam'#39'))'
      #9'alter table ApplicantExam '
      #9'add SeatNumber int '
      'GO'
      
        #9'if not exists (select * from syscolumns where name = '#39'Pic'#39'  and' +
        ' syscolumns.id=OBJECT_ID('#39'Applicant'#39'))'
      #9'alter table Applicant '
      #9'add Pic Image '
      'GO'
      #9'if OBJECT_ID ('#39'AssignGroupExamToApplicanet'#39') is not null'
      #9'drop procedure AssignGroupExamToApplicanet'
      'GO'#9
      
        #9'Create procedure AssignGroupExamToApplicanet (@ExamId int , @Ty' +
        'pe bit)'
      #9'as'
      #9'begin'
      #9#9'declare @GroupExamId int =1'
      ''
      #9#9'select @GroupExamId= isnull(GroupExamId,1) '
      #9#9'from Exam '
      #9#9'where  ExamId=@ExamId'
      #9#9
      #9#9'if @GroupExamId=1'
      #9#9#9'begin'
      #9#9#9#9'if @Type=0'
      #9#9#9#9#9'begin'
      #9#9#9#9#9#9#9#9#9'update ApplicantExam'
      #9#9#9#9#9#9'set GroupExamId=1,'
      #9#9#9#9#9#9'SeatNumber=s.RowNumber'
      #9#9#9#9#9#9#9#9#9#9#9' from ('#9'  '
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'select'#9'row_number()  over( order by a.LastName) '
      'RowNumber,'#9'a.FullName,ae.*   '#9' '
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'from ApplicantExam ae'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9'inner join Applicant a on a.ApplicantID=ae.Applica' +
        'ntID'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'where  ExamId=@ExamId)s'
      #9#9#9#9#9#9'where ApplicantExam.ApplicantExamID=s.ApplicantExamID'
      #9#9#9#9#9'end'
      #9#9#9#9'else'
      #9#9#9#9#9'begin'
      #9#9#9#9#9#9'update ApplicantExam'
      #9#9#9#9#9#9'set GroupExamId=1,'
      #9#9#9#9#9#9'SeatNumber=s.RowNumber'
      #9#9#9#9#9#9#9#9#9#9#9' from ('#9'  '
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9'select'#9'row_number()  over( order by a.ApplicantCod' +
        'e) '
      'RowNumber,'#9'a.FullName,ae.*   '#9' '
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'from ApplicantExam ae'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9'inner join Applicant a on a.ApplicantID=ae.Applica' +
        'ntID'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'where  ExamId=@ExamId)s'
      #9#9#9#9#9#9'where ApplicantExam.ApplicantExamID=s.ApplicantExamID'
      #9#9#9#9#9'end '
      #9#9#9'end'
      #9#9'else'
      #9#9#9'begin'
      #9#9#9#9'if @Type=0 '
      #9#9#9#9#9'begin'
      #9#9#9#9#9#9'update ApplicantExam'
      
        #9#9#9#9#9#9'set GroupExamId=case when s.RowNumber%@GroupExamId>0 then ' +
        's.RowNumber%@GroupExamId else @GroupExamId end'
      #9#9#9#9#9#9',seatNumber=s.RowNumber'#9
      #9#9#9#9#9#9#9#9#9#9#9' from ('#9'  '
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9'select'#9'row_number()  over( order by a.LastName) Row' +
        'Number,'#9
      'a.FullName,ae.*   '#9' '
      #9#9#9#9#9#9#9#9#9#9#9#9#9'from ApplicantExam ae'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9'inner join Applicant a on a.ApplicantID=ae.Applican' +
        'tID'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'where  ExamId=@ExamId)s'
      #9#9#9#9#9#9'where ApplicantExam.ApplicantExamID=s.ApplicantExamID'#9#9#9
      #9#9#9#9#9
      #9#9#9#9#9'end'
      #9#9#9#9'else'
      #9#9#9#9#9'begin'
      #9#9#9#9#9
      #9#9#9#9#9#9'update ApplicantExam'
      
        #9#9#9#9#9#9'set GroupExamId=case when s.RowNumber%@GroupExamId>0 then ' +
        's.RowNumber%@GroupExamId else @GroupExamId end'
      #9#9#9#9#9#9',seatNumber=s.RowNumber'#9
      #9#9#9#9#9#9#9#9#9#9#9' from ('#9'  '
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9'select'#9'row_number()  over( order by a.Applicantcode' +
        ') '
      'RowNumber,'#9'a.ApplicantCode,ae.*   '#9' '
      #9#9#9#9#9#9#9#9#9#9#9#9#9'from ApplicantExam ae'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9'inner join Applicant a on a.ApplicantID=ae.Applican' +
        'tID'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'where  ExamId=@ExamId)s'
      #9#9#9#9#9#9'where ApplicantExam.ApplicantExamID=s.ApplicantExamID'#9#9#9
      #9#9#9#9#9'end'
      #9#9#9'end'#9
      #9'end'
      ''
      'GO'
      #9'if OBJECT_ID ('#39'Select_Applicant_by_ExamAndWhere'#39') is not null'
      #9'drop procedure Select_Applicant_by_ExamAndWhere'
      'GO'
      #9'Create  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]'
      #9#9'(@ExamID'#9'int,@where nvarchar(1000),@order varchar(100) )'
      #9'AS'
      #9' declare @SQL nvarchar(4000)'
      #9'set @SQL='#39' SELECT'
      
        #9#9'dbo.GenerateBarcode(Applicant.ApplicantCode)+ case when len (A' +
        'pplicantExam.GroupExamId)<2 then '#39#39'0'#39#39'+CONVERT(varchar(02),Appli' +
        'cantExam.GroupExamId) else CONVERT'
      '(varchar(02),ApplicantExam.GroupExamId) end Barcode, '
      
        #9' Applicant.*, Faculty.FacultyTitle, Major.MajorTitle, Exam.Exam' +
        'Title, Course.CourseCode, '
      
        #9' Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.Ter' +
        'mCode ExamTerm,T.FullName, T.FullName as TeacherTitle, Education' +
        'Group.EducationGroupTitle,'
      
        #9' Exam.CustomField1 as ECF1, Exam.CustomField2 as ECF2, Exam.Cus' +
        'tomField3 as ECF3, Exam.CustomField4 as ECF4, Exam.CustomField5 ' +
        'as ECF5 ,GE.Title '
      'GroupExamTitle,ApplicantExam.SeatNumber'
      #9'FROM ApplicantExam '
      
        #9'inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.' +
        'ApplicantID'
      #9'inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID'
      #9'Left join Teacher T on Exam.TeacherID = T.TeacherID '
      #9'left JOIN Course ON Exam.MainCourseID = Course.CourseID '
      #9'LEFT JOIN Major ON Applicant.MajorID = Major.MajorID '
      
        #9'LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = E' +
        'xam.EducationGroupID '
      
        #9'LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.Faculty' +
        'ID'
      
        #9'left join GroupExam GE on GE.GroupExamId =ApplicantExam.GroupEx' +
        'amId '
      
        #9'where Exam.ExamID='#39'+cast(@examID as varchar(10))               ' +
        '       '
      
        #9'set @order =case when isnull(ltrim(@order),'#39#39')='#39#39' then '#39#39' else ' +
        #39' order by '#39'+isnull(ltrim(@order),'#39#39') end'
      
        #9'set @where =case when ltrim(isnull(@where,'#39#39'))='#39#39' then '#39#39' else ' +
        #39' and '#39'+@where end '
      #9'set @sql=@sql+@where +@order'
      #9'print @sql'
      #9'exec(@sql)'
      'GO'
      #9'if OBJECT_ID ('#39'sp_Inport_Applicant'#39') is not null'
      #9'drop procedure sp_Inport_Applicant'
      'GO'
      #9'create PROCEDURE [dbo].[sp_Inport_Applicant]'
      #9#9'@ApplicantCode'#9#9#9'NVARCHAR(20)='#39#39','
      #9#9'@FirstName'#9#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@LastName'#9#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@FatherName'#9#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@Termcode'#9#9#9#9'CHAR(3)='#39#39','
      #9#9'@CustomField1'#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@CustomField2'#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@CustomField3'#9#9#9'NVARCHAR(100)='#39#39','
      #9#9'@CustomField4'#9#9#9'NVARCHAR(100)='#39#39','
      #9#9'@CustomField5'#9#9#9'NVARCHAR(100)='#39#39','
      #9#9'@MajorCode'#9#9#9#9'NVARCHAR(20)='#39#39','
      #9#9'@MajorTitle'#9#9#9#9'NVARCHAR(60)='#39#39','
      #9#9'@EducationGroupCode'#9#9'NVARCHAR(50)='#39#39','
      #9#9'@EducationGroupTitle'#9'NVARCHAR(50)='#39#39','
      #9#9'@FacultyCode'#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@FacultyTitle'#9#9#9'NVARCHAR(50)='#39#39','
      #9#9'@LevelTitle'#9#9#9#9'NVARCHAR(50)='#39#39
      #9'AS'
      #9'BEGIN'
      #9#9'DECLARE @MajorID SMALLINT'
      #9#9'SET @MajorID = 0'
      #9#9#9#9#9
      #9#9'IF @MajorID = 0'
      #9#9#9'IF (LTRIM(RTRIM(@MajorTitle)) <> '#39#39')'
      
        #9#9#9#9'IF EXISTS(SELECT * FROM Major WHERE LTRIM(RTRIM(MajorTitle))' +
        ' = LTRIM(RTRIM(@MajorTitle)))'
      
        #9#9#9#9#9'SELECT @MajorID = MajorID FROM Major WHERE LTRIM(RTRIM(Majo' +
        'rTitle)) = LTRIM(RTRIM(@MajorTitle))'
      #9#9
      #9#9'IF @MajorID = 0'
      #9#9#9'IF (LTRIM(RTRIM(@MajorCode)) <> '#39#39')'
      
        #9#9#9#9'IF EXISTS(SELECT * FROM Major WHERE LTRIM(RTRIM(MajorCode)) ' +
        '= LTRIM(RTRIM(@MajorCode)))'
      
        #9#9#9#9#9'SELECT @MajorID = MajorID FROM Major WHERE LTRIM(RTRIM(Majo' +
        'rCode)) = LTRIM(RTRIM(@MajorCode))'
      ''
      #9#9#9#9
      #9#9'IF @MajorID = 0'
      #9#9'BEGIN'
      #9#9#9'DECLARE @EduGrpID SMALLINT'
      #9#9#9'SET @EduGrpID = 0'
      #9#9#9
      #9#9#9'IF @EduGrpID = 0'
      #9#9#9#9'IF (LTRIM(RTRIM(@EducationGroupTitle)) <> '#39#39')'
      
        #9#9#9#9#9'IF EXISTS(SELECT * FROM EducationGroup WHERE LTRIM(RTRIM(Ed' +
        'ucationGroupTitle)) = LTRIM(RTRIM(@EducationGroupTitle)))'
      
        #9#9#9#9#9#9'SELECT @EduGrpID = EducationGroupID FROM EducationGroup WH' +
        'ERE LTRIM(RTRIM(EducationGroupTitle)) = LTRIM(RTRIM'
      #9'(@EducationGroupTitle))'
      #9#9
      #9#9#9'IF @EduGrpID = 0'
      #9#9#9#9'IF (LTRIM(RTRIM(@EducationGroupCode)) <> '#39#39')'
      
        #9#9#9#9#9'IF EXISTS(SELECT * FROM EducationGroup WHERE LTRIM(RTRIM(Ed' +
        'ucationGroupCode)) = LTRIM(RTRIM(@EducationGroupCode)))'
      
        #9#9#9#9#9#9'SELECT @EduGrpID = EducationGroupID FROM EducationGroup WH' +
        'ERE LTRIM(RTRIM(EducationGroupCode)) = LTRIM(RTRIM'
      #9'(@EducationGroupCode))'#9
      #9#9#9
      #9#9#9'IF @EduGrpID = 0'
      #9#9#9'BEGIN'
      #9#9#9#9'DECLARE @FacultyID SMALLINT'
      #9#9#9#9'SET @FacultyID = 0'
      #9#9#9
      #9#9#9#9'IF @FacultyID = 0'
      #9#9#9#9#9'IF (LTRIM(RTRIM(@FacultyTitle)) <> '#39#39')'
      
        #9#9#9#9#9#9'IF EXISTS(SELECT * FROM Faculty WHERE LTRIM(RTRIM(FacultyT' +
        'itle)) = LTRIM(RTRIM(@FacultyTitle)))'
      
        #9#9#9#9#9#9#9'SELECT @FacultyID = FacultyID FROM Faculty WHERE LTRIM(RT' +
        'RIM(FacultyTitle)) = LTRIM(RTRIM(@FacultyTitle))'
      #9#9
      #9#9#9#9'IF @FacultyID = 0'
      #9#9#9#9#9'IF (LTRIM(RTRIM(@FacultyCode)) <> '#39#39')'
      
        #9#9#9#9#9#9'IF EXISTS(SELECT * FROM Faculty WHERE LTRIM(RTRIM(FacultyC' +
        'ode)) = LTRIM(RTRIM(@FacultyCode)))'
      
        #9#9#9#9#9#9#9'SELECT @FacultyID = FacultyID FROM Faculty WHERE LTRIM(RT' +
        'RIM(FacultyCode)) = LTRIM(RTRIM(@FacultyCode))'#9
      #9#9#9#9
      #9#9#9#9'IF @FacultyID = 0'
      #9#9#9#9'BEGIN'
      #9#9#9#9#9'IF LTRIM(RTRIM(@FacultyTitle)) = '#39#39
      #9#9#9#9#9#9'SET @FacultyTitle = N'#39#1606#1575#1605#1588#1582#1589#39
      
        #9#9#9#9#9'IF EXISTS(SELECT * FROM Faculty WHERE LTRIM(RTRIM(FacultyTi' +
        'tle)) = LTRIM(RTRIM(@FacultyTitle)))'
      
        #9#9#9#9#9#9'SELECT @FacultyID = FacultyID FROM Faculty WHERE LTRIM(RTR' +
        'IM(FacultyTitle)) = LTRIM(RTRIM(@FacultyTitle))'
      #9#9#9#9#9'IF @FacultyID = 0'
      #9#9#9#9#9'BEGIN'
      #9#9#9#9#9#9'IF LTRIM(RTRIM(@FacultyCode)) = '#39#39
      #9#9#9#9#9#9#9'SET @FacultyCode = N'#39'0'#39
      #9#9#9#9#9#9'INSERT INTO Faculty(FacultyTitle,FacultyCode)'
      #9#9#9#9#9#9'VALUES('#9'@FacultyTitle,'#9'@FacultyCode)'
      #9#9#9#9#9#9'SELECT @FacultyID = @@IDENTITY'
      #9#9#9#9#9'END'
      #9#9#9#9'END'
      #9#9#9#9
      #9#9#9#9'IF LTRIM(RTRIM(@EducationGroupTitle)) = '#39#39
      #9#9#9#9#9'SET @EducationGroupTitle = N'#39#1606#1575#1605#1588#1582#1589#39
      
        #9#9#9#9'IF EXISTS(SELECT * FROM EducationGroup WHERE LTRIM(RTRIM(Edu' +
        'cationGroupTitle)) = LTRIM(RTRIM(@EducationGroupTitle)))'
      
        #9#9#9#9#9'SELECT @EduGrpID = EducationGroupID FROM EducationGroup WHE' +
        'RE LTRIM(RTRIM(EducationGroupTitle)) = LTRIM(RTRIM'
      '(@EducationGroupTitle))'
      #9#9#9#9'IF @EduGrpID = 0'
      #9#9#9#9'BEGIN'
      #9#9#9#9#9'IF LTRIM(RTRIM(@EducationGroupCode)) = '#39#39
      #9#9#9#9#9#9'SET @EducationGroupCode = N'#39'0'#39
      
        #9#9#9#9#9'INSERT INTO EducationGroup(EducationGroupCode,EducationGrou' +
        'pTitle,FacultyID)'
      #9#9#9#9#9'VALUES(@EducationGroupCode,@EducationGroupTitle,@FacultyID)'
      #9#9#9#9#9'SELECT @EduGrpID = @@IDENTITY'
      #9#9#9#9'END'
      #9#9#9'END'
      #9#9#9
      #9#9#9'IF LTRIM(RTRIM(@MajorTitle)) = '#39#39
      #9#9#9#9'SET @MajorTitle = N'#39#1606#1575#1605#1588#1582#1589#39
      
        #9#9#9'IF EXISTS(SELECT * FROM Major WHERE LTRIM(RTRIM(MajorTitle)) ' +
        '= LTRIM(RTRIM(@MajorTitle)))'
      
        #9#9#9#9'SELECT @MajorID = MajorID FROM Major WHERE LTRIM(RTRIM(Major' +
        'Title)) = LTRIM(RTRIM(@MajorTitle))'
      #9#9#9'IF @MajorID = 0'
      #9#9#9'BEGIN'
      #9#9#9#9'IF LTRIM(RTRIM(@MajorCode)) = '#39#39
      #9#9#9#9#9'SET @MajorCode = N'#39'0'#39
      #9#9#9#9'DECLARE @LevelID SMALLINT'
      #9#9#9#9'SET @LevelID = 0 '
      #9#9#9#9
      #9#9#9#9'IF @LevelID = 0'
      #9#9#9#9#9'IF (LTRIM(RTRIM(@LevelTitle)) <> '#39#39')'
      
        #9#9#9#9#9#9'IF EXISTS(SELECT * FROM [Level] WHERE LTRIM(RTRIM(LevelTit' +
        'le)) = LTRIM(RTRIM(@LevelTitle)))'
      
        #9#9#9#9#9#9#9'SELECT @LevelID = LevelID FROM [Level] WHERE LTRIM(RTRIM(' +
        'LevelTitle)) = LTRIM(RTRIM(@LevelTitle))'
      #9#9#9#9'IF @LevelID = 0'
      #9#9#9#9'BEGIN'
      #9#9#9#9#9'IF LTRIM(RTRIM(@LevelTitle)) = '#39#39
      #9#9#9#9#9#9'SET @LevelTitle = N'#39#1606#1575#1605#1588#1582#1589#39
      #9#9#9#9#9'INSERT INTO [Level](LevelTitle)'
      #9#9#9#9#9'VALUES(@LevelTitle)'
      #9#9#9#9#9'SELECT @LevelID = @@IDENTITY'#9
      #9#9#9#9'END'
      
        #9#9#9#9'INSERT INTO Major(MajorCode,MajorTitle,EducationGroupID,Leve' +
        'lID'#9')'
      #9#9#9#9'VALUES(@MajorCode,@MajorTitle,@EduGrpID,@LevelID)'
      #9#9#9#9'SELECT @MajorID = @@IDENTITY'
      #9#9#9'END'
      #9#9'END'#9
      #9#9
      #9#9'INSERT INTO Applicant('#9'ApplicantCode,'
      #9#9#9#9#9#9#9#9'FirstName,'
      #9#9#9#9#9#9#9#9'LastName,'
      #9#9#9#9#9#9#9#9'FullName,'
      #9#9#9#9#9#9#9#9'MajorID,'
      #9#9#9#9#9#9#9#9'Termcode,'
      #9#9#9#9#9#9#9#9'FatherName,'
      #9#9#9#9#9#9#9#9'CustomField1,'
      #9#9#9#9#9#9#9#9'CustomField2,'
      #9#9#9#9#9#9#9#9'CustomField3,'
      #9#9#9#9#9#9#9#9'CustomField4,'
      #9#9#9#9#9#9#9#9'CustomField5)'
      #9#9'VALUES('#9'@ApplicantCode/* ApplicantCode'#9'*/,'
      #9#9#9#9'@FirstName/* FirstName'#9'*/,'
      #9#9#9#9'@LastName/* LastName'#9'*/,'
      #9#9#9#9'@FirstName+'#39' '#39'+@LastName/* FullName'#9'*/,'
      #9#9#9#9'@MajorID/* MajorID'#9'*/,'
      #9#9#9#9'@Termcode/* Termcode'#9'*/,'
      #9#9#9#9'@FatherName/* FatherName'#9'*/,'
      #9#9#9#9'@CustomField1/* CustomField1'#9'*/,'
      #9#9#9#9'@CustomField2/* CustomField2'#9'*/,'
      #9#9#9#9'@CustomField3/* CustomField3'#9'*/,'
      #9#9#9#9'@CustomField4/* CustomField4'#9'*/,'
      #9#9#9#9'@CustomField5/* CustomField5'#9'*/)'
      #9'END'
      'GO'
      #9'if OBJECT_ID('#39'insert_sys_Action'#39') is not null'
      #9'drop procedure insert_sys_Action'
      'GO'
      #9'Create PROCEDURE [dbo].[insert_sys_Action]'
      #9#9'(@ActionName '#9'[varchar](50),'
      #9#9' @ActionCaption '#9'[nvarchar](50),'
      #9#9' @ActionGroupID'#9'[smallint])'
      ''
      #9'AS INSERT INTO [sys_Action] '
      #9#9' ( [ActionName],'
      #9#9' [ActionCaption],'
      #9#9' [ActionGroupID]) '
      #9' '
      #9'VALUES '
      #9#9'( @ActionName,'
      #9#9' @ActionCaption,'
      #9#9' @ActionGroupID)'
      'GO'
      #9'if OBJECT_ID('#39'update_ApplicantExam_FinalMArk'#39') is not null'
      #9'drop procedure update_ApplicantExam_FinalMArk'
      'GO'
      #9'Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9#9'(@ExamID'#9'[int])'
      #9'AS'
      #9'Begin'
      
        #9#9'declare @number_of_applicant int,@Order1 int,@order2 int,@mxMa' +
        'rk float,'
      
        #9#9#9'@CorrectItemPoint float,@sumCofficient FLOAT,@BlankItemPoint ' +
        'float,@WrongItemPoint float,@MinPassedMark float,@AcceptedMark F' +
        'LOAT,@ZaribeFinalMark FLOAT'#9
      #9
      #9
      #9#9'select @BlankItemPoint=BlankItemPoint,'
      #9#9#9'   @CorrectItemPoint= CorrectItemPoint,'
      #9#9#9'   @WrongItemPoint=WrongItemPoint,'
      #9#9#9'   --@DamagedItemPoint = DamagedItemPoint,'
      #9#9#9'   @MinPassedMark   = MinPassedMark,'
      #9#9#9'   @ZaribeFinalMark=MaxMark/Number_of_Question,'
      #9#9#9'   @mxMark = MaxMark'
      #9#9'from  Exam'
      #9#9'where ExamID =@ExamID'
      ''
      
        #9#9'SELECT * into #question FROM question WHERE ExamID=@ExamID and' +
        ' QuestionActivityID in (1,3)'
      
        #9#9'--select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient ' +
        ')*@CorrectItemPoint'
      #9#9'select @AcceptedMark = (@MinPassedMark/100.0)*@mxMark'
      #9#9'from #question'
      ''
      #9#9'IF OBJECT_ID('#39'tempdb..#m'#39') IS NOT NULL DROP TABLE #m'
      ''
      
        #9#9'SELECT     ApplicantAnswer.ApplicantID,sum(#Question.Coefficie' +
        'nt*'
      
        #9#9'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActi' +
        'vityID=2 then @BlankItemPoint'
      
        #9#9#9'  when  ApplicantAnswer.AnswerItemNumber in ( #Question.Corre' +
        'ctItemNumber,#Question.CorrectItemNumber2) or QuestionActivityID' +
        '=3 then @CorrectItemPoint'
      
        #9#9#9'  --when  ApplicantAnswer.AnswerItemNumber>6  then @DamagedIt' +
        'emPoint'
      
        #9#9#9'  else    @WrongItemPoint end)/@CorrectItemPoint as finalmark' +
        ' '
      #9#9'into #m'
      #9#9'FROM         ApplicantAnswer '
      
        #9#9'INNER JOIN   #Question ON ApplicantAnswer.QuestionID = #Questi' +
        'on.QuestionID'
      #9#9'where #Question.ExamID=@ExamID'
      #9#9'group by ApplicantAnswer.ApplicantID'
      ''
      ''
      
        #9#9'SELECT @sumCofficient = sum(#Question.Coefficient) FROM #Quest' +
        'ion where #Question.ExamID=@ExamID'
      
        #9#9'SELECT @ZaribeFinalMark=MaxMark/@sumCofficient from  Exam wher' +
        'e ExamID =@ExamID'
      #9#9'-- Added By Saeedi on 901115'
      #9#9'UPDATE #m'
      #9#9'SET finalmark=finalmark*@ZaribeFinalMark'
      #9#9#9
      ''
      #9#9'IF OBJECT_ID('#39'tempdb..#n'#39') IS NOT NULL DROP TABLE #n'
      ''
      #9#9'select *,null group27,identity(int,1,1) ord into #n'
      #9#9'from #m m'
      #9#9'order by finalmark desc '
      #9#9'select @number_of_applicant=max(ord)'
      #9#9'from #n'
      ''
      #9#9'if @number_of_applicant<20 '
      #9#9'  set  @Order1=@number_of_applicant/2'
      #9#9'else'
      #9#9'if @number_of_applicant between 20  and 40'
      #9#9'  set  @Order1=10'
      #9#9'else '
      #9#9'set @Order1=(27*@number_of_applicant)/100'
      #9#9'select @Order1 '
      ''
      #9#9'--Add begin By Turaj Soheil 1393-09-12'
      #9#9'declare @sql varchar(max)'
      #9#9'set @sql='#39#39
      #9#9'set @sql ='#39'update #n'
      #9#9#9#9#9'set group27=3 '
      
        #9#9#9#9#9'where ApplicantID in (select top '#39'+STR(@Order1) +'#39' Applican' +
        'tID from #n order by ord asc)'#39
      #9#9'exec (@sql)'#9#9#9
      #9#9'set @sql ='#39'update #n'
      #9#9#9#9#9'set group27=1 '
      
        #9#9#9#9#9'where ApplicantID in (select top '#39'+STR(@Order1) +'#39' Applican' +
        'tID from #n order by ord desc)'#39
      #9#9'exec (@sql)'#9#9#9
      #9#9'set @sql ='#39'update #n'
      #9#9#9#9#9'set group27=2 '
      #9#9#9#9#9'where group27 is null'#39
      #9#9'exec (@sql)'#9#9#9
      #9#9'--set @Order2=@number_of_applicant-@order1'
      ''
      #9#9'--update #n'
      #9#9'--set group27=case when ord<=@order1 then 3 '
      #9#9'--'#9#9#9#9' when ord>@order1 and ord<@order2 then 2'
      #9#9'--'#9#9#9#9' when ord>=@order2 then 1 end'
      #9#9'--Add end By Turaj Soheil 1393-09-12'#9#9#9#9#9' '
      #9#9#9#9#9#9#9' '
      #9#9'update ApplicantExam'
      #9#9'set ApplicantExam.GroupingID=#n.Group27 ,'
      
        #9#9#9'ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmark' +
        ','
      
        #9#9#9'accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 e' +
        'nd'
      #9#9'from  ApplicantExam'
      #9#9' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      #9#9'where ApplicantExam.ExamID=@ExamID'
      #9#9'---------- Added BY Saeedi on 1391/01/29'
      
        #9#9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@Min' +
        'PassedMark1 FLOAT,@Mark FLOAT'#9#9
      
        #9#9'SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(MinPa' +
        'ssedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9#9'DECLARE crr CURSOR FOR '#9
      #9#9'SELECT ApplicantID FROM Applicant '
      
        #9#9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WH' +
        'ERE ExamID=@ExamID)'
      #9#9'OPEN crr'
      #9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9#9'WHILE @@FETCH_STATUS = 0'
      #9#9'BEGIN'
      
        #9#9#9'SELECT @FinalMark=ISNULL(FinalMark,0) FROM ApplicantExam WHER' +
        'E ExamID=@ExamID AND ApplicantID=@ApplicantID'
      #9#9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9#9'UPDATE ApplicantExam'
      #9#9#9#9'SET Accepted=1'
      #9#9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9#9'ELSE'
      #9#9#9#9'UPDATE ApplicantExam'
      #9#9#9#9'SET Accepted=0'
      #9#9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9#9'END'
      #9#9'CLOSE crr'
      #9#9'DEALLOCATE crr'
      ''
      #9'End'
      'GO'
      #9'if OBJECT_ID ('#39'insert_AnswerLine'#39')is not null'
      #9'drop procedure insert_AnswerLine'
      'GO'
      #9'Create PROCEDURE [dbo].[insert_AnswerLine]'
      #9#9'('
      #9'@ExamID        int,'
      #9'@ApplicantCode varchar(20),'
      #9'@AnswerKey     varchar(1000) ,'
      #9'@termcode      char(3),'
      #9'@majorCode     varchar(20),'
      #9'@CourseCode    varchar(15),'
      #9'@CourseGroup   varchar(5),'
      #9'@GroupExamId   int'
      #9')'
      #9'AS '
      #9'begin'
      #9#9'set @AnswerKey=replace(@AnswerKey,'#39' '#39','#39'0'#39')'
      #9#9'declare @CourseID smallint ,'
      #9#9#9#9'@MajorID int, '
      #9#9#9#9'@ApplicantID int,'
      #9#9#9#9'@TrainingCourseID int,'
      #9#9#9#9'@ApplicantExamID int,'
      #9#9#9#9'@AnswerKeyID int,'
      #9#9#9#9'@ApplicantCourseID int, '
      #9#9#9#9'@CurrentTermcode char(3),'
      #9#9#9#9'@TempApplicantCode varchar(20)'
      #9#9#9#9'set @TempApplicantCode=@ApplicantCode'
      #9#9#9#9'set @ApplicantCode=LEFT(@TempApplicantCode,12)'
      #9#9#9#9'set @ApplicantCode=REPLACE(@ApplicantCode,'#39'+'#39','#39#39') '
      #9#9'        '
      
        #9#9'select @CurrentTermcode=Termcode from Exam where ExamID=@ExamI' +
        'D'
      ''
      
        #9#9'exec insert_Course_byCode              @CourseID          outp' +
        'ut , @CourseCode '
      
        #9#9'exec insert_Major_ByCode               @MajorID           outp' +
        'ut , @MajorCode '
      
        #9#9'exec insert_Applicant_ByCode           @ApplicantID       outp' +
        'ut , @ApplicantCode    , @MajorID  , @Termcode '
      
        #9#9'exec insert_ApplicantExam              @ApplicantExamID'#9'  outp' +
        'ut , @ApplicantID      , @ExamID'#9' , @GroupExamId'#9
      
        #9#9'exec insert_TrainingCourse_Bycode      @TrainingCourseID  outp' +
        'ut , @CourseID         , @CurrentTermcode , @CourseGroup , @Exam' +
        'ID'
      
        #9#9'exec insert_AnswerKey                  @AnswerKeyID       outp' +
        'ut , @ApplicantExamID  , @AnswerKey '
      
        #9#9'exec insert_ApplicantCourse_byCode     @ApplicantCourseID outp' +
        'ut , @ApplicantID      , @TrainingCourseID'#9
      #9'end'
      ''
      ''
      'GO'
      #9'if OBJECT_ID ('#39'insert_ApplicantExam'#39')is not null'
      #9'drop procedure insert_ApplicantExam'
      'GO'
      #9'Create PROCEDURE [dbo].[insert_ApplicantExam]'
      #9#9'( @ApplicantExamID'#9'int output,'
      #9#9' @ApplicantID '#9'int,'
      #9#9' @ExamID '#9'int,'
      #9#9' @GroupExamId int =1)'
      #9'AS'
      #9'begin'
      
        #9#9'if exists (select * from ApplicantExam where ApplicantID=@appl' +
        'icantID and ExamID=@Examid)'
      #9#9'begin'
      
        #9#9'  select @ApplicantExamID=ApplicantExamID from ApplicantExam w' +
        'here ApplicantID=@applicantID and ExamID=@Examid'
      #9#9'end'
      #9#9'else'
      #9#9'begin'
      
        #9#9' INSERT INTO ApplicantExam( ApplicantID, ExamID,GroupExamId) V' +
        'ALUES ( @ApplicantID,'#9' @ExamID ,@GroupExamId)'
      #9#9' select @ApplicantExamID=@@identity'
      #9#9'end'
      #9'end'
      ''
      'GO'
      
        #9'if exists (select * from sys.columns c inner join sys.types t o' +
        'n c.user_type_id=t.user_type_id and t.name<>'#39'decimal'#39' where obje' +
        'ct_id=object_id('#39'Exam'#39') and c.name='#39'WrongItemPoint'#39' )'
      #9'begin'
      #9#9'alter table exam '
      #9#9'add temp real'
      #9'end'
      'GO'
      
        #9'if exists (select * from sys.columns c inner join sys.types t o' +
        'n c.user_type_id=t.user_type_id and t.name<>'#39'decimal'#39' where obje' +
        'ct_id=object_id('#39'Exam'#39') and c.name='#39'WrongItemPoint'#39' )'
      #9'Begin'
      #9'declare @sql varchar(max)='
      #9#9#39'update Exam '
      #9#9'set temp=WrongItemPoint'
      #9#9'alter table exam '
      #9#9'drop column WrongItemPoint'
      #9#9'alter table exam '
      #9#9'add WrongItemPoint decimal (18,2)'
      #9#9'update Exam '
      #9#9'set WrongItemPoint=temp'
      #9#9'alter table exam '
      #9#9'drop column temp'#39
      #9#9'exec (@sql)'
      ''
      #9'end'
      ''
      'GO'
      #9'if OBJECT_ID ('#39'ViewExamEqualQuestion'#39')is not null'
      #9'drop procedure ViewExamEqualQuestion'
      'GO'
      
        #9'Create Procedure [dbo].[ViewExamEqualQuestion] (@ExamId int,@re' +
        's Varchar(200) out) '
      #9' as'
      #9'begin'
      #9#9' '
      #9#9#9'select distinct  '
      
        #9#9#9'(select top 1 EqualQuestionNumber from ExamEqualQuestion e1 w' +
        'here groupexamid=1 and e1.questionnumber=e.questionnumber and e1' +
        '.examid=e.examid)Group1,   '
      
        #9#9#9'(select top 1 EqualQuestionNumber from ExamEqualQuestion e2 w' +
        'here groupexamid=2 and e2.questionnumber=e.questionnumber and e2' +
        '.examid=e.examid)Group2,'
      
        #9#9#9'(select top 1 EqualQuestionNumber from ExamEqualQuestion e3 w' +
        'here groupexamid=3 and e3.questionnumber=e.questionnumber and e3' +
        '.examid=e.examid)Group3,'
      
        #9#9#9'(select top 1 EqualQuestionNumber from ExamEqualQuestion e4 w' +
        'here groupexamid=4 and e4.questionnumber=e.questionnumber and e4' +
        '.examid=e.examid)Group4'
      #9#9#9'into #temp'
      #9#9#9'from ExamEqualQuestion e '
      #9#9#9'inner join GroupExam on GroupExam.GroupExamId=e.GroupExamId'
      #9#9#9'where e.examid=@ExamId'
      #9#9#9
      #9#9#9
      ''
      #9#9#9'declare @MaxNumber int=0'
      #9#9#9'declare @count int =0'
      #9#9#9'declare @GroupExamCount int =0'
      #9#9#9'declare @ExamEqualQuestion int =0'
      #9#9#9'set @res='#39#39
      #9#9#9
      
        #9#9#9'select @GroupExamCount=GroupExamid from Exam where ExamID=@ex' +
        'amid'
      #9#9#9'select @MaxNumber=MAX (Group1) from #temp'
      #9#9#9'select @count=count(distinct Group1) from #temp'
      
        #9#9#9'select @ExamEqualQuestion=max (distinct GroupExamId) from Exa' +
        'mEqualQuestion where examid=@examid'
      ''
      #9#9#9'if @ExamEqualQuestion<>@GroupExamCount'
      
        #9#9#9#9'set @res ='#39#1578#1593#1583#1575#1583' '#1711#1585#1608#1607' '#1587#1608#1575#1604#1575#1578' '#1576#1575' '#1578#1593#1583#1575#1583' '#1711#1585#1608#1607' '#1576#1585#1711#1586#1575#1585#1610' '#1570#1586#1605#1608#1606' '#1605#1591#1575 +
        #1576#1602#1578' '#1606#1583#1575#1585#1583#39
      ''
      
        #9#9#9'if (@MaxNumber<>(select MAX (Group2) from #temp) or  @count<>' +
        '(select Count (distinct Group2) from #temp)) and @GroupExamCount' +
        '>=2'
      #9#9#9#9'select @res=@res+'#39
      #9#9#9#9#1582#1591#1575' '#1583#1585' '#1587#1608#1575#1604#1575#1578' '#1711#1585#1608#1607' '#1583#1608#1605#39
      
        #9#9#9'if (@MaxNumber<>(select MAX (Group3) from #temp) or  @count<>' +
        '(select Count (distinct Group3) from #temp)) and @GroupExamCount' +
        '>=3'
      #9#9#9#9'select @res=@res+'#39
      #9#9#9#9#1582#1591#1575' '#1583#1585' '#1587#1608#1575#1604#1575#1578' '#1711#1585#1608#1607' '#1587#1608#1605#39
      
        #9#9#9'if (@MaxNumber<>(select MAX (Group4) from #temp) or  @count<>' +
        '(select Count (distinct Group4) from #temp)) and @GroupExamCount' +
        '>=4'
      #9#9#9#9'select @res=@res+'#39
      #9#9#9#9#1582#1591#1575' '#1583#1585' '#1587#1608#1575#1604#1575#1578' '#1711#1585#1608#1607' '#1670#1607#1575#1585#1605#39
      ''
      
        #9#9#9'select Group1 '#39#1711#1585#1608#1607' '#1610#1705#39',Group2 '#39#1711#1585#1608#1607' '#1583#1608#39',Group3 '#39#1711#1585#1608#1607' '#1587#1607#39',Gro' +
        'up4 '#39#1711#1585#1608#1607' '#1670#1607#1575#1585#39' '
      #9#9#9'from #temp '
      #9#9#9
      #9#9#9'order by group1'
      #9'end'
      'GO'
      
        #9'if OBJECT_ID ('#39'Get_ApplicantExamDetails_by_ApplicantCode'#39')is no' +
        't null'
      #9'drop procedure Get_ApplicantExamDetails_by_ApplicantCode'
      'GO'
      #9'Create  proc Get_ApplicantExamDetails_by_ApplicantCode'
      #9' @ApplicantCode varchar(15),@examid int'
      #9'as'
      ''
      #9'select * from ('
      
        #9'SELECT     /*Question.Number,*/ Question.CorrectItemNumber, Que' +
        'stion.CorrectItemNumber2, ApplicantAnswer.AnswerItemNumber,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0' +
        ' end as bit) Item1,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0' +
        ' end as bit) Item2,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0' +
        ' end as bit) Item3,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0' +
        ' end as bit) Item4,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0' +
        ' end as bit) Item5,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=6 then 1 else 0' +
        ' end as bit) Item6,'
      
        #9'Isnull(dbo.GetEqualQuestionNumber (Question.QuestionID ,Applica' +
        'ntExam.GroupExamid ,1),Question.Number) Number'
      ''
      #9'FROM         Applicant '
      
        #9'INNER JOIN ApplicantExam ON Applicant.ApplicantID = ApplicantEx' +
        'am.ApplicantID '
      #9'INNER JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID '
      #9'INNER JOIN Question ON Exam.ExamID = Question.ExamID'
      
        #9'INNER JOIN ApplicantAnswer ON Applicant.ApplicantID = Applicant' +
        'Answer.ApplicantID AND Question.QuestionID = ApplicantAnswer.Que' +
        'stionID'
      
        #9'WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.e' +
        'xamid=@examid)s'
      #9'order by s.Number'
      ''
      'GO'
      ''
      #9'if OBJECT_ID('#39'Select_ApplicantExam_Log_List'#39')is not null'
      #9'drop procedure Select_ApplicantExam_Log_List'
      'GO'
      #9'Create procedure Select_ApplicantExam_Log_List @ExamId int '
      #9'as'
      #9'Begin'
      
        #9#9'declare @CorrectItemPoint float,@BlankItemPoint float,@WrongIt' +
        'emPoint float '
      
        #9#9'select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= Corre' +
        'ctItemPoint,'
      #9#9#9'   @WrongItemPoint=WrongItemPoint'
      #9#9' from  Exam'
      #9#9' where ExamID =@ExamId'
      ''
      #9'declare @sql Varchar(max)'
      
        #9'if OBJECT_ID('#39'tempdb..##AppLog'#39') is not null drop table ##AppLo' +
        'g'
      #9'select @sql='#39
      #9'SELECT '
      #9'ApplicantID, '#39'+dbo.GetTitle(@examid)+'
      #9#39
      #9'into ##AppLog'
      #9'FROM'
      #9'('
      
        #9#9'SELECT  ApplicantID,isnull(Course.CourseTitle,'#39#39#1587#1575#1610#1585' '#1583#1585#1608#1587#39#39') c' +
        'oursetitle,'
      #9#9'Round(100.0*sum(Coefficient*'
      
        #9#9'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActi' +
        'vityID=2 then     '#39'+str(@BlankItemPoint)+'#39
      
        #9#9#9'  when  ApplicantAnswer.AnswerItemNumber in ( Question.Correc' +
        'tItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=3' +
        ' then '#39'+str'
      '(@CorrectItemPoint)+'#39
      
        #9#9#9'  else    '#39'+str(@WrongItemPoint)+'#39' end)/sum(Coefficient*'#39'+str' +
        '(@CorrectItemPoint)+'#39'),2) PercentMark'
      #9#9'FROM         Question '
      
        #9#9'INNER JOIN ApplicantAnswer ON Question.QuestionID = ApplicantA' +
        'nswer.QuestionID '
      #9#9'LEFT OUTER JOIN Course ON Question.CourseID = Course.CourseID'
      
        #9#9'WHERE     (Question.ExamID = '#39'+str(@examid)+'#39') AND QuestionAct' +
        'ivityID in (1,3)'
      #9#9'group by isnull(Course.CourseTitle,'#39#39#1587#1575#1610#1585' '#1583#1585#1608#1587#39#39'),ApplicantID'
      ''
      ''
      #9') as ttt'
      #9'PIVOT'
      #9'('
      #9'sum (PercentMark)'
      #9'FOR CourseTitle IN ('#39'+dbo.GetTitle(@examid)+'#39')'
      #9') AS PivotTable'#39
      #9'exec( @sql)'
      
        #9'declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT' +
        ','
      #9#9#9'@AcceptCount NUMERIC(6,2),@RejectCount NUMERIC(6,2),'
      #9#9#9'@AcceptPercent NUMERIC(6,2),@RejectPercent NUMERIC(6,2),'
      #9#9#9'@RecCount NUMERIC(6,2)'
      ''
      #9'select @FullPoint=sum(Coefficient)'
      #9'FROM Question'
      #9'WHERE (ExamID=@ExamID) and (questionactivityid<>2)'
      ''
      
        #9'select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,' +
        '@Number_of_Question=Number_of_Question'
      #9'from Exam '
      #9'WHERE (ExamID=@ExamID)'
      ''
      #9'if @maxMark is null or @maxMark<=0 set @maxMark=20'
      ''
      ''
      ''
      
        #9'SELECT    a.ApplicantCode['#1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610'],a.FullName ['#1606#1575#1605' '#1608' '#1606#1575#1605 +
        ' '#1582#1575#1606#1608#1575#1583#1711#1610'] , ApplicantExam.FinalMark['#1578#1585#1575#1586' '#1705#1604' '#1583#1575#1606#1588#1580#1608'], @FullPoint' +
        '  ['#1578#1585#1575#1586' '#1705#1575#1605#1604'],ApplicantExam.ord['#1585#1578#1576#1607' '#1583#1575#1606#1588#1580#1608'],case when '
      
        'FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMark),2) end ' +
        '['#1585#1578#1576#1607' '#1705#1604' '#1576#1607' '#1583#1585#1589#1583'],##AppLog.*'
      #9'FROM      Applicant a'
      #9'inner join ##AppLog on a.ApplicantID=##AppLog.ApplicantID'
      
        #9'INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = a.A' +
        'pplicantID '
      #9'where ExamId=@ExamId'
      #9'order by ord'
      ''
      #9'end'
      'GO'
      #9'declare @sql Varchar(max)'
      #9'set @sql ='#39' '
      #9'ALTER DATABASE '#39'+DB_NAME()+'
      #9#39' SET COMPATIBILITY_LEVEL = 100'#39
      #9'exec (@sql)'
      'GO'
      #9'if OBJECT_ID('#39'GetTitle'#39') is not null'
      #9'drop function GetTitle'
      'GO'
      #9'Create Function GetTitle(@Examid int )'
      #9'returns varchar(max)'
      #9'as'
      #9'begin'
      #9#9'declare @Title varchar(max)='#39#39','#9#9#9
      #9#9#9#9'@CT varchar(200)'
      #9#9'DECLARE _cursor CURSOR FOR'
      #9#9'select distinct  isnull(c.CourseTitle ,'#39#1587#1575#1610#1585' '#1583#1585#1608#1587#39')'
      #9#9'from Question q '
      #9#9'left join Course c on c.CourseID=q.CourseID'
      #9#9'where ExamID=@ExamId '
      #9#9'open _cursor'
      #9#9'fetch next from _cursor '
      #9#9'into '#9'@ct '
      ''
      #9#9'while @@FETCH_STATUS=0'
      #9#9'begin'
      #9#9#9'Set @Title=@Title+'#39'['#39'+@CT+'#39'],'#39
      #9#9#9'fetch next from _cursor '
      #9#9#9'into '#9'@ct '
      #9#9'end '#9#9#9#9#9#9
      #9#9'close _cursor'
      #9#9'deallocate _cursor'
      #9#9'set @Title=SUBSTRING(@Title,1,LEN(@Title)-1)'
      #9#9'Return @Title'
      #9'end'
      'GO'
      #9'if OBJECT_ID('#39'Get_TextFormat_By_ExamID'#39')is not null'
      #9'drop procedure Get_TextFormat_By_ExamID'
      'GO'#9
      #9'Create PROCEDURE Get_TextFormat_By_ExamID'
      
        #9' @examId int , @StnoStart int output , @StnoLength int output ,' +
        ' @MajorStart int output , @MajorLength int output ,'
      
        #9' @TermcodeStart int output , @TermCodeLength int output , @Cour' +
        'seStart int output , @CourseLength int output ,'
      
        #9' @CourseGroupStart int output , @CourseGroupLength int output ,' +
        ' @AnswerStart int output ,'
      
        #9'@indiscernibleChar char(1) output, @KeyLineNumber int output , ' +
        '@AnswerStartLineNumber int output, @GroupExamStart int output '
      #9'as'
      
        #9'SELECT @StnoStart=StnoStart,@StnoLength=StnoLength,@MajorStart=' +
        'MajorStart,@MajorLength=MajorLength,'
      
        #9'@TermcodeStart=TermcodeStart,@TermCodeLength=TermCodeLength,@Co' +
        'urseStart=CourseStart,@CourseLength=CourseLength,'
      
        #9'@CourseGroupStart=CourseGroupStart,@CourseGroupLength=CourseGro' +
        'upLength,@AnswerStart=AnswerStart,'
      
        #9'@indiscernibleChar=indiscernibleChar,@KeyLineNumber=KeyLineNumb' +
        'er,@AnswerStartLineNumber=AnswerStartLineNumber,'
      #9'@GroupExamStart=isnull(GroupExamStart,0)'
      #9'FROM Exam '
      
        #9'INNER JOIN TextFormat ON Exam.TexFormatID = TextFormat.TextForm' +
        'atID'
      #9'WHERE (Exam.ExamID = @ExamID)'
      ''
      ''
      'GO'
      #9'if OBJECT_ID('#39'Analysis_Exam_Total'#39')is not null'
      #9'drop procedure Analysis_Exam_Total'
      'GO'
      #9'Create PROCEDURE Analysis_Exam_Total'
      #9#9'(@ExamID'#9'int)'
      #9'as'
      #9'DECLARE @SQLString NVARCHAR(500)'
      #9'DECLARE @ParmDefinition NVARCHAR(500)'
      #9'DECLARE @parmIN int'
      #9'DECLARE @parmRET1 float'
      ''
      ''
      #9'SET @parmIN= CONVERT(nvarchar(10),@ExamID)'
      #9'SET @SQLString=N'#39'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'#39
      #9'SET @ParmDefinition=N'#39'@parm int,'
      #9#9#9#9#9'  @parm1OUT float OUTPUT'#39
      ''
      #9'EXECUTE sp_executesql'
      #9'@SQLString,'
      #9'@ParmDefinition,'
      #9'@parm=@parmIN,'
      #9'@parm1OUT=@parmRET1 OUTPUT'
      ''
      #9'SELECT * into #question FROM Question WHERE ExamID = @ExamID'
      
        #9'SELECT FinalMark into #finMark FROM ApplicantExam WHERE ExamID ' +
        '= @ExamID'
      ''
      #9'update exam'
      #9'set'
      
        #9'NumberOf_1item_Question=(select count(*) from #question where  ' +
        'number_Of_Item=1),'
      
        #9'NumberOf_2item_Question=(select count(*) from #question where  ' +
        'number_Of_Item=2),'
      
        #9'NumberOf_3item_Question=(select count(*) from #question where  ' +
        'number_Of_Item=3),'
      
        #9'NumberOf_4item_Question=(select count(*) from #question where  ' +
        'number_Of_Item=4),'
      
        #9'NumberOf_5item_Question=(select count(*) from #question where  ' +
        'number_Of_Item=5),'
      
        #9'NumberOf_6item_Question=(select count(*) from #question where  ' +
        'number_Of_Item=6),'
      
        #9'Difficulty=round(       (select avg(Difficulty) from #question ' +
        '    ),3),'
      
        #9'Discrimination= round(  (select avg(Discrimination) from #quest' +
        'ion ),3),'
      
        #9'RPBIS=round(            (select avg(RPBIS)      from #question ' +
        '    ),3),'
      #9'StandardError=  @parmRET1,'
      #9'kr20  = @parmRET1,'
      #9'Alpha = @parmRET1 ,'
      
        #9'ExamVariance=round(     (select varp(finalmark)      from #finM' +
        'ark ),3)'
      #9'FROM    Exam'
      #9'where Exam.examid =@examid'
      'GO'
      #9'if OBJECT_ID('#39'GetEqualQuestionNumber'#39')is not null'
      #9'drop Function GetEqualQuestionNumber'
      'GO'
      
        #9'Create Function dbo.GetEqualQuestionNumber (@QuestionId int,@Gr' +
        'oupExamid int ,@Type bit)'
      #9'returns int'
      #9'as '
      #9'begin'
      #9#9'declare @Res int'
      #9#9'if @Type=0'
      #9#9#9'begin'
      
        #9#9#9#9#9'select @Res=Case When @GroupExamId <>1 then eeq.EqualQuesti' +
        'onNumber Else q.number end  '
      #9#9#9#9#9'from Question q'
      
        #9#9#9#9#9'left join ExamEqualQuestion eeq on eeq.questionNumber=q.num' +
        'ber and q.ExamID=eeq.ExamID'
      #9#9#9#9#9'where QuestionID=@QuestionId and GroupExamid =@GroupExamid'#9
      #9#9#9'end'
      #9#9'else '
      #9#9#9'begin'
      
        #9#9#9#9#9'select @Res=Case When @GroupExamId <>1 then eeq.EqualQuesti' +
        'onNumber Else q.number end  '
      #9#9#9#9#9'from Question q'
      
        #9#9#9#9#9'left join ExamEqualQuestion eeq on eeq.QuestionNumber=q.num' +
        'ber and q.ExamID=eeq.ExamID'
      #9#9#9#9#9'where QuestionID=@QuestionId and GroupExamid =@GroupExamid'#9
      #9#9#9'end'#9
      ''
      #9#9'return @res'
      #9'end'
      'GO'
      #9'if OBJECT_ID('#39'insert_ApplicantAnswer_ByExamID'#39')is not null'
      #9'drop Procedure insert_ApplicantAnswer_ByExamID'
      'GO'
      #9'Create PROCEDURE insert_ApplicantAnswer_ByExamID'
      #9#9'(@ExamID'#9'[int])'
      #9'AS'
      #9'declare @GroupExamId int'
      #9'select @GroupExamId=GroupExamId from Exam where ExamID=@ExamID'
      
        #9'SELECT     Applicant.ApplicantID,  Applicant.ApplicantCode, Que' +
        'stion.number,Question.QuestionID, '
      
        #9'case when isnumeric(substring(AnswerKey.AnswerKey,Question.numb' +
        'er,1))=1  then substring(AnswerKey.AnswerKey,Question.number,1) ' +
        'else '#39'9'#39' END AS Akey,'
      
        #9'case when isnumeric(substring(AnswerKey.AnswerKey,dbo.GetEqualQ' +
        'uestionNumber(Question.QuestionID,ApplicantExam.GroupExamId,0),1' +
        '))=1 '
      
        #9' then substring(AnswerKey.AnswerKey,dbo.GetEqualQuestionNumber(' +
        'Question.QuestionID,ApplicantExam.GroupExamId,0),1) else '#39'9'#39' END' +
        ' AS eqAkey,'
      
        #9'dbo.GetEqualQuestionNumber(Question.QuestionID,ApplicantExam.Gr' +
        'oupExamId,0)EqualQuestionNumber'
      #9'INTO #AppAnswer'
      #9'FROM         Applicant '
      
        #9'INNER JOIN   ApplicantExam ON Applicant.ApplicantID = Applicant' +
        'Exam.ApplicantID '
      #9'INNER JOIN   Question ON ApplicantExam.ExamID = Question.ExamID'
      
        #9'INNER JOIN   AnswerKey ON ApplicantExam.ApplicantExamID = Answe' +
        'rKey.ApplicantExamID'
      ''
      #9'where Question.ExamID=@ExamID'
      
        #9'delete ApplicantAnswer where questionid in (select questionid f' +
        'rom Question where examid=@examid)'
      #9'if @GroupExamId<>1'
      
        #9#9'INSERT INTO ApplicantAnswer(ApplicantID, QuestionID, AnswerIte' +
        'mNumber)'
      #9#9'SELECT     ApplicantID, QuestionID,eqAkey'
      #9#9'FROM         #AppAnswer'
      #9#9'order by ApplicantID, QuestionID'
      #9'else '
      
        #9#9'INSERT INTO ApplicantAnswer(ApplicantID, QuestionID, AnswerIte' +
        'mNumber)'
      #9#9'SELECT     ApplicantID, QuestionID,Akey'
      #9#9'FROM         #AppAnswer'
      #9#9'order by ApplicantID, QuestionID'
      ''
      'GO'
      #9'IF object_id ('#39'Select_Question'#39') IS NOT NULL'
      #9'DROP PROCEDURE dbo.Select_Question'
      'GO'
      #9' CREATE PROCEDURE dbo.Select_Question'
      #9#9'(@QuestionID '#9'int)'
      
        #9'AS  Select QuestionID, ExamID, Number, DesignerTeacherID, Cours' +
        'eID, CorrectItemNumber, Coefficient, QuestionActivityID, '
      'CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,'
      #9'CorrectItemNumber5,CorrectItemNumber6,Taxonomy'
      #9' from Question '
      #9'WHERE '#9'( QuestionID'#9' = @QuestionID)'
      'GO'
      #9'IF object_id ('#39'Question'#39')IS NOT NULL AND '
      
        #9' NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_i' +
        'd('#39'Question'#39' ) AND name ='#39'CorrectItemNumber3'#39')'
      #9' ALTER TABLE dbo.Question '
      #9' ADD CorrectItemNumber3 TINYINT'
      'GO'
      #9'IF object_id ('#39'Question'#39')IS NOT NULL AND '
      
        #9' NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_i' +
        'd('#39'Question'#39' ) AND name ='#39'CorrectItemNumber4'#39')'
      #9' ALTER TABLE dbo.Question '
      #9' ADD CorrectItemNumber4 TINYINT'
      ' GO'
      #9'IF object_id ('#39'Question'#39')IS NOT NULL AND '
      
        #9' NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_i' +
        'd('#39'Question'#39' ) AND name ='#39'CorrectItemNumber5'#39')'
      #9' ALTER TABLE dbo.Question '
      #9' ADD CorrectItemNumber5 TINYINT'
      ' GO'
      #9'IF object_id ('#39'Question'#39')IS NOT NULL AND '
      
        #9'NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_id' +
        '('#39'Question'#39' ) AND name ='#39'CorrectItemNumber6'#39')'
      #9'ALTER TABLE dbo.Question '
      #9'ADD CorrectItemNumber6 TINYINT'
      'GO'
      #9'IF object_id('#39'update_ApplicantExam_FinalMArk'#39')'#9' IS NOT NULL'
      #9'DROP PROCEDURE dbo.update_ApplicantExam_FinalMArk'
      'GO'
      #9'CREATE PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]'
      #9#9'(@ExamID'#9'[int])'
      #9'AS'
      
        #9'declare @number_of_applicant int,@Order1 int,@order2 int,@mxMar' +
        'k float,'
      
        #9#9#9'@CorrectItemPoint float,@sumCofficient FLOAT,@BlankItemPoint ' +
        'float,@WrongItemPoint float,@MinPassedMark float,@AcceptedMark F' +
        'LOAT,@ZaribeFinalMark FLOAT'#9
      #9
      #9#9#9
      #9
      #9'select @BlankItemPoint=BlankItemPoint,--'#1576#1583#1608#1606' '#1580#1608#1575#1576
      #9#9'   @CorrectItemPoint= CorrectItemPoint,--'#1583#1585#1587#1578
      #9#9'   @WrongItemPoint=WrongItemPoint,--'#1575#1588#1578#1576#1575#1607
      #9#9'   @MinPassedMark   = MinPassedMark,--'#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1605#1607' '#1602#1576#1608#1604#1610' '#1583#1585#1589#1583
      
        #9#9'   @ZaribeFinalMark=MaxMark/Number_of_Question,--'#1575#1605#1578#1610#1575#1586' '#1705#1604' '#1570#1586#1605 +
        #1608#1606' / '#1578#1593#1583#1575#1583' '#1587#1608#1575#1604#1575#1578
      #9#9'   @mxMark = MaxMark--'#1575#1605#1578#1610#1575#1586' '#1705#1604' '#1570#1586#1605#1608#1606
      #9'from  Exam'
      #9'where ExamID =@ExamID'
      ''
      
        #9'--select MaxMark,Number_of_Question ,*from Exam where ExamID=@E' +
        'xamID'
      ''
      
        #9'SELECT * into #question FROM question WHERE ExamID=@ExamID and ' +
        'QuestionActivityID in (1,3)'
      
        #9'select @AcceptedMark = (@MinPassedMark/100.0)*@mxMark--'#1605#1581#1575#1587#1576#1607' '#1581 +
        #1583' '#1602#1576#1608#1604' '#1610#1575' '#1605#1585#1583#1608#1583' '#1576#1585' '#1581#1587#1576' '#1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1607' '#1602#1576#1608#1604#1610' '#1608' '#1575#1605#1578#1575#1586' '#1705#1604' '#1570#1586#1605#1608#1606' '
      #9'from #question'
      ''
      #9'select * from #question'
      #9'IF OBJECT_ID('#39'tempdb..#m'#39') IS NOT NULL DROP TABLE #m'
      ''
      
        #9'SELECT     ApplicantAnswer.ApplicantID,sum(#Question.Coefficien' +
        't*--'#1580#1605#1593' '#1590#1585#1610#1576' '#1587#1608#1575#1604#1575#1578' '#1590#1585#1576#1583#1585
      
        #9'case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActiv' +
        'ityID=2 then @BlankItemPoint--'#1575#1711#1585' '#1576#1583#1608#1606' '#1580#1608#1575#1576' '#1576#1608#1583' '#1610#1575' '#1587#1608#1575#1604' '#1575#1586' '#1606#1608#1593' '#1581 +
        #1584#1601#1610' '#1576#1608#1583' ==>'#1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1580#1608#1575#1576
      
        #9#9'  when  ApplicantAnswer.AnswerItemNumber in ( #Question.Correc' +
        'tItemNumber,#Question.CorrectItemNumber2) or QuestionActivityID=' +
        '3 then @CorrectItemPoint--'#1575#1711#1585' '#1580#1608#1575#1576' '#1576#1610#1606#1711#1586#1610#1606#1607' '#1610#1705' '#1583#1585#1587#1578' '#1610#1575' '#1583#1608' '#1583#1585#1587#1578' '#1576 +
        #1608#1583' '#1610#1575' '#1580#1608#1575#1576' '#1587#1608#1575#1604' '#1583#1585#1587#1578' '#1576#1608#1583' ==>'#1575#1605#1578#1610#1575#1586' '#1587#1608#1575#1604' '#1583#1585#1587#1578
      
        #9#9'  when  ApplicantAnswer.AnswerItemNumber in ( #Question.Correc' +
        'tItemNumber,#Question.CorrectItemNumber3) or QuestionActivityID=' +
        '3 then @CorrectItemPoint--'#1575#1711#1585' '#1580#1608#1575#1576' '#1576#1610#1606#1711#1586#1610#1606#1607' '#1610#1705' '#1583#1585#1587#1578' '#1610#1575' '#1583#1608' '#1583#1585#1587#1578' '#1576 +
        #1608#1583' '#1610#1575' '#1580#1608#1575#1576' '#1587#1608#1575#1604' '#1583#1585#1587#1578' '#1576#1608#1583' ==>'#1575#1605#1578#1610#1575#1586' '#1587#1608#1575#1604' '#1583#1585#1587#1578
      
        #9#9'  when  ApplicantAnswer.AnswerItemNumber in ( #Question.Correc' +
        'tItemNumber,#Question.CorrectItemNumber4) or QuestionActivityID=' +
        '3 then @CorrectItemPoint--'#1575#1711#1585' '#1580#1608#1575#1576' '#1576#1610#1606#1711#1586#1610#1606#1607' '#1610#1705' '#1583#1585#1587#1578' '#1610#1575' '#1583#1608' '#1583#1585#1587#1578' '#1576 +
        #1608#1583' '#1610#1575' '#1580#1608#1575#1576' '#1587#1608#1575#1604' '#1583#1585#1587#1578' '#1576#1608#1583' ==>'#1575#1605#1578#1610#1575#1586' '#1587#1608#1575#1604' '#1583#1585#1587#1578
      
        #9#9'  when  ApplicantAnswer.AnswerItemNumber in ( #Question.Correc' +
        'tItemNumber,#Question.CorrectItemNumber5) or QuestionActivityID=' +
        '3 then @CorrectItemPoint--'#1575#1711#1585' '#1580#1608#1575#1576' '#1576#1610#1606#1711#1586#1610#1606#1607' '#1610#1705' '#1583#1585#1587#1578' '#1610#1575' '#1583#1608' '#1583#1585#1587#1578' '#1576 +
        #1608#1583' '#1610#1575' '#1580#1608#1575#1576' '#1587#1608#1575#1604' '#1583#1585#1587#1578' '#1576#1608#1583' ==>'#1575#1605#1578#1610#1575#1586' '#1587#1608#1575#1604' '#1583#1585#1587#1578
      
        #9#9'  when  ApplicantAnswer.AnswerItemNumber in ( #Question.Correc' +
        'tItemNumber,#Question.CorrectItemNumber6) or QuestionActivityID=' +
        '3 then @CorrectItemPoint--'#1575#1711#1585' '#1580#1608#1575#1576' '#1576#1610#1606#1711#1586#1610#1606#1607' '#1610#1705' '#1583#1585#1587#1578' '#1610#1575' '#1583#1608' '#1583#1585#1587#1578' '#1576 +
        #1608#1583' '#1610#1575' '#1580#1608#1575#1576' '#1587#1608#1575#1604' '#1583#1585#1587#1578' '#1576#1608#1583' ==>'#1575#1605#1578#1610#1575#1586' '#1587#1608#1575#1604' '#1583#1585#1587#1578' '
      
        #9#9'  else    @WrongItemPoint end)/*'#1583#1585' '#1594#1610#1585' '#1575#1610#1606' '#1589#1608#1585#1578' '#1575#1605#1578#1610#1575#1586' '#1580#1608#1575#1576' '#1594#1604 +
        #1591'*//@CorrectItemPoint as finalmark--'#1578#1602#1587#1610#1605' '#1576#1585' '#1575#1605#1578#1610#1575#1586' '#1580#1608#1575#1576' '#1583#1585#1587#1578'  '
      #9'into #m'
      #9'FROM         ApplicantAnswer '
      
        #9'INNER JOIN   #Question ON ApplicantAnswer.QuestionID = #Questio' +
        'n.QuestionID'
      #9'where #Question.ExamID=@ExamID'
      
        #9'group by ApplicantAnswer.ApplicantID -- '#1575#1605#1578#1610#1575#1586' '#1607#1585' '#1583#1575#1606#1588#1580#1608' '#1583#1585' '#1570#1586#1605 +
        #1608#1606
      ''
      #9'select * from #m -- '#1575#1605#1578#1610#1575#1586' '#1607#1585' '#1583#1575#1606#1588#1580#1608' '#1583#1585' '#1570#1586#1605#1608#1606
      ''
      
        #9'SELECT @sumCofficient = sum(#Question.Coefficient) FROM #Questi' +
        'on where #Question.ExamID=@ExamID--'#1580#1605#1593' '#1590#1585#1610#1576' '#1587#1608#1604#1575#1578' '#1570#1586#1605#1608#1606
      #9'select @sumCofficient --'#1580#1605#1593' '#1590#1585#1610#1576' '#1587#1608#1604#1575#1578
      
        #9'SELECT @ZaribeFinalMark=MaxMark/@sumCofficient from  Exam where' +
        ' ExamID =@ExamID--'#1605#1581#1575#1587#1576#1607' '#1606#1605#1585#1607' '#1575#1586' / '#1580#1605#1593' '#1590#1585#1610#1576' '#1587#1608#1604#1575#1578' '
      #9'select @ZaribeFinalMark '
      #9'-- Added By Saeedi on 901115'
      #9'UPDATE #m'
      
        #9'SET finalmark=finalmark*@ZaribeFinalMark -- '#1576#1607' '#1585#1608#1586#1585#1587#1575#1606#1610' '#1575#1605#1578#1610#1575#1586' ' +
        #1607#1585' '#1583#1575#1606#1588#1580#1608' '#1583#1585' '#1570#1586#1605#1608#1606' '#1576#1585#1581#1587#1576' '#1580#1605#1593' '#1590#1585#1610#1576' '#1587#1608#1604#1575#1578' '#1570#1586#1605#1608#1606' '#1608' '#1605#1581#1575#1587#1576#1607' '#1606#1605#1585#1607' '#1570#1586#1605#1608 +
        #1606' '#1575#1586' '
      #9#9
      ''
      #9#9'IF OBJECT_ID('#39'tempdb..#n'#39') IS NOT NULL DROP TABLE #n'
      #9#9'select *,null group27,identity(int,1,1) ord into #n'
      #9#9'from #m m'
      #9#9'order by finalmark desc '
      #9#9'select @number_of_applicant=max(ord)'
      
        #9#9'from #n --'#1585#1578#1576#1607' '#1576#1606#1583#1610' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1570#1586#1605#1608#1606' '#1576#1585' '#1581#1587#1576' '#1575#1605#1578#1610#1575#1586' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1583 +
        #1585' '#1570#1586#1605#1608#1606' '
      ''
      #9#9'if @number_of_applicant<20 --'#1578#1593#1610#1610#1606' '#1606#1601#1585#1575#1578' '#1711#1585#1608#1607#1607#1575
      
        #9#9'  set  @Order1=@number_of_applicant/2--'#1575#1711#1585' '#1578#1593#1583#1575#1583' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1570#1586#1605 +
        #1608#1606' '#1705#1605#1578#1585' '#1575#1586' '#1576#1610#1587#1578' '#1606#1601#1585' '#1576#1608#1583' ==>'#1578#1593#1583#1575#1583' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1570#1586#1605#1608#1606' '#1578#1602#1587#1610#1605' '#1576#1585' '#1583#1608' '
      #9#9'else'
      
        #9#9'if @number_of_applicant between 20  and 40-- '#1575#1711#1585' '#1578#1593#1583#1575#1583' '#1583#1575#1606#1588#1580#1608#1610 +
        #1575#1606' '#1576#1610#1606' '#1576#1610#1587#1578' '#1608' '#1670#1607#1604' '#1606#1601#1585' '#1576#1608#1583' ==>'#1583#1607' '#1606#1601#1585' '
      #9#9'  set  @Order1=10'
      #9#9'else '
      
        #9#9'set @Order1=(27*@number_of_applicant)/100 -- '#1575#1711#1585' '#1576#1610#1588#1578#1585' '#1575#1586' '#1670#1607#1604' ' +
        #1606#1601#1585' '#1576#1608#1583' '#1576#1610#1587#1578' '#1608' '#1607#1601#1578' '#1583#1585#1589#1585' '#1705#1604' '#1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606' '
      #9#9'select 27,@number_of_applicant ,100 ,@Order1 Order1 '
      #9#9#9'--Add begin By Turaj Soheil 1393-09-12'
      
        #9#9#9'declare @sql varchar(max)/*'#1578#1593#1610#1610#1606' '#1711#1585#1608#1607' '#1576#1575#1604#1575' '#1608' '#1662#1575#1610#1610#1606' '#1576#1585' '#1581#1587#1576' '#1593#1583#1583 +
        ' '#1576#1607' '#1583#1587#1578' '#1570#1605#1583#1607' @Order1*/'
      #9#9#9'set @sql='#39#39
      #9#9#9'set @sql ='#39'update #n'
      #9#9#9#9#9#9'set group27=3 '
      
        #9#9#9#9#9#9'where ApplicantID in (select top '#39'+STR(@Order1) +'#39' Applica' +
        'ntID from #n order by ord asc)'#39
      #9#9#9'exec (@sql)'#9#9#9
      #9#9#9'set @sql ='#39'update #n'
      #9#9#9#9#9#9'set group27=1 '
      
        #9#9#9#9#9#9'where ApplicantID in (select top '#39'+STR(@Order1) +'#39' Applica' +
        'ntID from #n order by ord desc)'#39
      #9#9#9'exec (@sql)'#9#9#9
      #9#9#9'set @sql ='#39'update #n'
      #9#9#9#9#9#9'set group27=2 '
      #9#9#9#9#9#9'where group27 is null'#39
      #9#9#9'exec (@sql)'#9#9#9
      #9#9#9'--set @Order2=@number_of_applicant-@order1'
      ''
      #9#9#9'--update #n'
      #9#9#9'--set group27=case when ord<=@order1 then 3 '
      #9#9#9'--'#9#9#9#9' when ord>@order1 and ord<@order2 then 2'
      #9#9#9'--'#9#9#9#9' when ord>=@order2 then 1 end'
      #9#9#9'--Add end By Turaj Soheil 1393-09-12'#9#9#9#9#9' '
      #9#9#9#9#9#9#9' '
      #9#9#9#9#9#9#9' '
      ''
      ''
      ''
      
        #9#9'update ApplicantExam -- '#1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1580#1583#1608#1604#1610' '#1575#1589#1604#1610' '#1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606' '#1570 +
        #1586#1605#1608#1606' '
      
        #9#9'set ApplicantExam.GroupingID=#n.Group27 ,--'#1578#1593#1610#1610#1606' '#1711#1585#1608#1607' '#1576#1575#1604#1575' '#1608' '#1662 +
        #1575#1610#1610#1606' '
      #9#9#9'ApplicantExam.ord=#n.ord,--'#1578#1593#1610#1610#1606' '#1585#1578#1576#1607' '#1583#1575#1606#1588#1580#1608' '#1583#1585' '#1570#1585#1605#1608#1606' '
      
        #9#9#9'ApplicantExam.finalmark=#n.finalmark,--'#1575#1605#1578#1610#1575#1586' '#1705#1587#1576' '#1588#1583#1607' '#1578#1608#1587#1591' '#1583#1575 +
        #1606#1588#1580#1608
      
        #9#9#9'accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 e' +
        'nd--'#1602#1576#1608#1604' '#1610#1575' '#1605#1585#1583#1608#1583' '#1576#1585' '#1581#1587#1576' '#1575#1605#1578#1610#1575#1586' '#1705#1587#1576' '#1588#1583#1607' '#1608' '#1581#1583' '#1575#1605#1578#1610#1575#1586
      #9#9'from  ApplicantExam'
      #9#9' inner join  #n on ApplicantExam.applicantid=#n.applicantid'
      #9#9'where ApplicantExam.ExamID=@ExamID'
      #9#9
      #9#9
      #9#9'---------- Added BY Saeedi on 1391/01/29'
      
        #9#9'--'#1602#1576#1608#1604' '#1610#1575' '#1605#1585#1583#1608#1583' '#1576#1585' '#1581#1587#1576' '#1575#1605#1578#1610#1575#1586' '#1705#1587#1576' '#1588#1583#1607' '#1608' '#1581#1583' '#1575#1605#1578#1610#1575#1586'    '#1583#1608#1576#1575#1585#1607' '#1606#1608 +
        #1610#1587#1610' '#1567#1567#1567
      
        #9#9#9'DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@Mi' +
        'nPassedMark1 FLOAT,@Mark FLOAT'#9#9
      
        #9#9#9'SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(MinP' +
        'assedMark,0) FROM Exam WHERE ExamID=@ExamID'#9#9
      #9#9#9'DECLARE crr CURSOR FOR '#9
      #9#9#9'SELECT ApplicantID FROM Applicant '
      
        #9#9#9'WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam W' +
        'HERE ExamID=@ExamID)'
      #9#9#9'OPEN crr'
      #9#9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      ''
      #9#9#9'WHILE @@FETCH_STATUS = 0'
      #9#9#9'BEGIN'
      
        #9#9#9#9'SELECT @FinalMark=ISNULL(FinalMark,0) FROM ApplicantExam WHE' +
        'RE ExamID=@ExamID AND ApplicantID=@ApplicantID'
      #9#9#9#9'SET @Mark=(@FinalMark*100)/@MaxMark'
      #9#9#9#9'IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)'
      #9#9#9#9#9'UPDATE ApplicantExam'
      #9#9#9#9#9'SET Accepted=1'
      #9#9#9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID '
      #9#9#9#9'ELSE'
      #9#9#9#9#9'UPDATE ApplicantExam'
      #9#9#9#9#9'SET Accepted=0'
      #9#9#9#9#9'WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID'#9#9#9
      #9#9#9#9'FETCH NEXT FROM crr INTO @ApplicantID'
      #9#9#9'END'
      #9#9#9'CLOSE crr'
      ' '#9#9#9'DEALLOCATE crr'
      #9' '#9
      'GO'
      #9'IF OBJECT_ID('#39'Analysis_Question_byExamID'#39') IS not null'
      #9'DROP PROCEDURE dbo.Analysis_Question_byExamID'
      'GO'
      #9'CREATE  PROCEDURE [dbo].[Analysis_Question_byExamID]'
      #9#9'(@ExamID'#9'[int])'
      #9'AS'
      ''
      #9' IF OBJECT_ID('#39'tempdb..##m'#39') IS NOT NULL DROP TABLE ##m'#9
      ''
      #9' declare @select nvarchar(3000)'
      #9' set   @select='#39'SELECT Question.QuestionID  , '
      
        #9' sum ( case when AnswerItemNumber in (CorrectItemNumber,Correct' +
        'ItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNum' +
        'ber5,CorrectItemNumber6) then 1 else 0 '
      'end)  Correct,'
      
        #9' sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else ' +
        '0 end) Answerd,'
      #9' count(*) All_Count,'
      
        #9' sum ( case when AnswerItemNumber not in (CorrectItemNumber,Cor' +
        'rectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectIte' +
        'mNumber5,CorrectItemNumber6) and '
      'AnswerItemNumber<>0 then 1 else 0 end) Wrong,'
      
        #9'Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,C' +
        'orrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectI' +
        'temNumber5,CorrectItemNumber6) then 1 '
      'else 0 end) /'
      #9'cast(count(AnswerItemNumber )as float),3) as  Di,'
      #9'sum ( case when  GroupingID=3  then 1 else 0 end) Group3,'
      #9'sum ( case when  GroupingID=1  then 1 else 0 end) Group1, '
      #9'sum ( case when  GroupingID=3 and AnswerItemNumber in '
      
        '(CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,Correct' +
        'ItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0' +
        ' end) Correct_G3,'
      #9'sum ( case when  GroupingID=1 and AnswerItemNumber in '
      
        '(CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,Correct' +
        'ItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0' +
        ' end) Correct_G1,'
      #9'0.0 dis'
      #9' '#39
      #9'declare @Number_Of_Item tinyint'
      #9'SELECT     @Number_Of_Item=Number_of_Items'
      #9'FROM         Exam'
      #9'WHERE     (ExamID = @ExamID)'
      #9'declare @ItemNumber tinyint,@GroupingID tinyint'
      #9'set @ItemNumber=0 '
      #9'while @ItemNumber<=6--@Number_Of_Item'
      #9' begin'
      #9'  set @GroupingID=1 '
      #9'  while @GroupingID<=3 '
      #9'   begin'
      #9#9' if @GroupingID<>2   '
      
        #9#9'  set @select=@select+'#39',sum ( case when AnswerItemNumber= '#39'+ca' +
        'st(@ItemNumber as char(1))+'#39' and GroupingID='#39'+cast(@GroupingID a' +
        's char(1)) +'
      
        #9#9#9#9#9#9#9#9#39' then 1 else 0 end ) G'#39'+cast(@GroupingID as char(1))+'#39'_' +
        #39'+cast(@ItemNumber as char(1))'
      ''
      #9#9' set @GroupingID=@GroupingID+1'
      #9'  end  --@GroupingID'
      #9'  '
      #9'  '
      #9'  set @select=@select+'#39','
      
        #9'sum ( case when AnswerItemNumber= '#39'+cast(@ItemNumber as char(1)' +
        ')+ '
      #9#39' then 1 else 0 end ) all'#39'+cast(@ItemNumber as char(1))'
      #9' set @ItemNumber=@ItemNumber+1'
      #9'end -- @ItemNumber'
      #9#9'  set @select=@select+'#39' into ##m'
      #9'FROM          Question'
      
        #9'INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Qu' +
        'estion.QuestionID '
      
        #9'INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Appli' +
        'cantAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID'
      
        #9'where Question.Examid='#39'+cast(@ExamID as varchar(10))+'#39'-- and Qu' +
        'estionActivityID=1'
      #9'group by Question.QuestionID,Number, CorrectItemNumber  '#39
      ''
      #9'exec sp_executesql @Select'
      #9'print @Select'
      ''
      #9'update Question'
      #9'set Question.Correct=##m.Correct ,'
      #9'Question.Answerd=##m.Answerd ,'
      #9'Question.All_Count=##m.All_Count ,'
      #9'Question.Wrong=##m.Wrong ,'
      #9'Question.Difficulty  =##m.Di ,'
      #9'Question.Discrimination =round('
      
        #9'(Correct_G3 -Correct_G1)/cast(case when group3>group1 then grou' +
        'p3 else group1 end as float) ,3),'
      #9'Question.G1_0=##m.G1_0 ,'
      #9'Question.G3_0=##m.G3_0 ,'
      #9'Question.all0=##m.all0 ,'
      #9'Question.G1_1=##m.G1_1 ,'
      #9'Question.G3_1=##m.G3_1 ,'
      #9'Question.all1=##m.all1 ,'
      #9'Question.G1_2=##m.G1_2 ,'
      #9'Question.G3_2=##m.G3_2 ,'
      #9'Question.all2=##m.all2 ,'
      #9'Question.G1_3=##m.G1_3 ,'
      #9'Question.G3_3=##m.G3_3 ,'
      #9'Question.all3=##m.all3 ,'
      #9'Question.G1_4=##m.G1_4 ,'
      #9'Question.G3_4=##m.G3_4 ,'
      #9'Question.all4=##m.all4 ,'
      #9'Question.all5=##m.all5 ,'
      #9'Question.all6=##m.all6 ,'
      #9'Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)'
      
        #9'from Question inner join ##m on ##m.QuestionID=Question.Questio' +
        'nID'
      ''
      #9'update Question'
      
        #9'set number_Of_Item=(case  when cast(all1 as float)/all_count>0.' +
        '05 then 1 else 0 end)+'
      
        #9'(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 en' +
        'd)+'
      
        #9'(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 en' +
        'd)+'
      
        #9'(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 en' +
        'd)+'
      
        #9'(case  when cast(all5 as float)/all_count>0.05 then 1 else 0 en' +
        'd)+'
      
        #9'(case  when cast(all6 as float)/all_count>0.05 then 1 else 0 en' +
        'd)'
      #9'WHERE ExamID = @ExamID'
      ''
      'GO'
      
        #9'IF OBJECT_ID('#39'Get_ApplicantExamDetails_by_ApplicantCode'#39') IS NO' +
        'T NULL'
      #9'DROP PROCEDURE Get_ApplicantExamDetails_by_ApplicantCode'
      'GO'
      #9'CREATE  proc Get_ApplicantExamDetails_by_ApplicantCode'
      #9' @ApplicantCode varchar(15),@examid int'
      #9'as'
      ''
      #9'select * from ('
      
        #9'SELECT     /*Question.Number,*/ Question.CorrectItemNumber, Que' +
        'stion.CorrectItemNumber2,Question.CorrectItemNumber3,Question.Co' +
        'rrectItemNumber4,'
      #9'Question.CorrectItemNumber5,Question.CorrectItemNumber6'
      #9', ApplicantAnswer.AnswerItemNumber,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0' +
        ' end as bit) Item1,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0' +
        ' end as bit) Item2,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0' +
        ' end as bit) Item3,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0' +
        ' end as bit) Item4,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0' +
        ' end as bit) Item5,'
      
        #9'cast(case when ApplicantAnswer.AnswerItemNumber=6 then 1 else 0' +
        ' end as bit) Item6,'
      
        #9'Isnull(dbo.GetEqualQuestionNumber (Question.QuestionID ,Applica' +
        'ntExam.GroupExamid ,1),Question.Number) Number'
      ''
      #9'FROM         Applicant '
      
        #9'INNER JOIN ApplicantExam ON Applicant.ApplicantID = ApplicantEx' +
        'am.ApplicantID '
      #9'INNER JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID '
      #9'INNER JOIN Question ON Exam.ExamID = Question.ExamID'
      
        #9'INNER JOIN ApplicantAnswer ON Applicant.ApplicantID = Applicant' +
        'Answer.ApplicantID AND Question.QuestionID = ApplicantAnswer.Que' +
        'stionID'
      
        #9'WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.e' +
        'xamid=@examid)s'
      #9'order by s.Number'
      ''
      'GO'
      #9'if object_id('#39'Get_ApplicantCodeExam_Info'#39')is not null'
      #9'drop procedure Get_ApplicantCodeExam_Info'
      'GO'
      #9'create proc [dbo].[Get_ApplicantCodeExam_Info]'
      #9' @ApplicantCode varchar(15),@examid int'
      #9'as'
      
        #9'SELECT     Applicant.ApplicantCode, Applicant.FirstName, Applic' +
        'ant.LastName, Applicant.Termcode, Major.MajorTitle, ApplicantExa' +
        'm.FinalMark, Grouping.GroupingTitle, '
      #9#9#9#9#9#9'  ApplicantExam.ord,'
      #9'(SELECT     count(Question.QuestionID)'
      #9'FROM         ApplicantAnswer INNER JOIN'
      
        #9#9#9#9#9#9'  Question ON ApplicantAnswer.QuestionID = Question.Questi' +
        'onID'
      
        #9'WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID)' +
        ' AND (Question.ExamID = ApplicantExam.Examid)'
      
        #9'and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,C' +
        'orrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectI' +
        'temNumber6)'
      #9' and QuestionActivityID=1) Correct_answer'
      #9','
      #9'(SELECT     count(Question.QuestionID)'
      #9'FROM         ApplicantAnswer INNER JOIN'
      
        #9#9#9#9#9#9'  Question ON ApplicantAnswer.QuestionID = Question.Questi' +
        'onID'
      
        #9'WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID)' +
        ' AND (Question.ExamID = ApplicantExam.Examid)'
      
        #9'and AnswerItemNumber not in (CorrectItemNumber,isnull(CorrectIt' +
        'emNumber2,0),isnull(CorrectItemNumber3,0),isnull(CorrectItemNumb' +
        'er4,0),isnull(CorrectItemNumber5,0),isnull'
      '(CorrectItemNumber6,0))'
      #9' and AnswerItemNumber<>0 and QuestionActivityID=1) Wrong_answer'
      #9','
      #9'(SELECT     count(Question.QuestionID)'
      #9'FROM         ApplicantAnswer INNER JOIN'
      
        #9#9#9#9#9#9'  Question ON ApplicantAnswer.QuestionID = Question.Questi' +
        'onID'
      
        #9'WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID)' +
        ' AND (Question.ExamID = ApplicantExam.Examid)'
      #9'and  AnswerItemNumber=0 and QuestionActivityID=1) Withot_answer'
      #9'FROM         ApplicantExam INNER JOIN'
      
        #9#9#9#9#9#9'  Applicant ON ApplicantExam.ApplicantID = Applicant.Appli' +
        'cantID LEFT OUTER JOIN'
      
        #9#9#9#9#9#9'  Major ON Applicant.MajorID = Major.MajorID LEFT OUTER JO' +
        'IN'
      
        #9#9#9#9#9#9'  Grouping ON ApplicantExam.GroupingID = Grouping.Grouping' +
        'ID'
      
        #9'WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Applic' +
        'antExam.examid=@examid'
      'GO'#9
      '')
    TabOrder = 0
    Visible = False
  end
  object Button1: TButton
    Left = 128
    Top = 8
    Width = 121
    Height = 33
    Caption = #1575#1580#1585#1575#1610' '#1583#1587#1578#1608#1585#1575#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ProgressBar: TProgressBar
    Left = 0
    Top = 91
    Width = 378
    Height = 18
    Align = alBottom
    TabOrder = 2
  end
  object SubCommand: TMemo
    Left = 0
    Top = 109
    Width = 378
    Height = 89
    Align = alBottom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 3
  end
  object ADOCommand: TADOCommand
    CommandTimeout = 3000
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 304
    Top = 16
  end
end
