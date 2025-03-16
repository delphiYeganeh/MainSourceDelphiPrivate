alter PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]
	(@ExamID	[int])
AS
declare @number_of_applicant int,@Order1 int,@order2 int,
		@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark FLOAT		
		
select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= CorrectItemPoint,
       @WrongItemPoint=WrongItemPoint,@MinPassedMark   = MinPassedMark,
       @ZaribeFinalMark=MaxMark/Number_of_Question
from  Exam
where ExamID =@ExamID

select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@CorrectItemPoint
from question
where ExamID=@ExamID and QuestionActivityID in (1,3)

--SELECT * FROM Exam e WHERE e.ExamID=223

IF OBJECT_ID('tempdb..#m') IS NOT NULL DROP TABLE #m
SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*
case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivityID=2 then @BlankItemPoint
      when  ApplicantAnswer.AnswerItemNumber in ( Question.CorrectItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=3 then @CorrectItemPoint
      else    @WrongItemPoint end) as finalmark 
into #m
FROM         ApplicantAnswer 
INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.QuestionID
where Question.ExamID=@ExamID
group by ApplicantAnswer.ApplicantID

-- Added By Saeedi on 901115
UPDATE #m
SET finalmark=finalmark*@ZaribeFinalMark

IF OBJECT_ID('tempdb..#n') IS NOT NULL DROP TABLE #n
select *,null group27,identity(int,1,1) ord into #n
from #m m
order by finalmark desc 
select @number_of_applicant=max(ord)
from #n

if @number_of_applicant<20 
  set  @Order1=@number_of_applicant/2
else
if @number_of_applicant between 20  and 40
  set  @Order1=10
else 
set @Order1=(27*@number_of_applicant)/100
select @Order1 

	--Add begin By Turaj Soheil 1393-09-12
	declare @sql varchar(max)
	set @sql=''
	set @sql ='update #n
				set group27=3 
				where ApplicantID in (select top '+STR(@Order1) +' ApplicantID from #n order by ord asc)'
	exec (@sql)			
	set @sql ='update #n
				set group27=1 
				where ApplicantID in (select top '+STR(@Order1) +' ApplicantID from #n order by ord desc)'
	exec (@sql)			
	set @sql ='update #n
				set group27=2 
				where group27 is null'
	exec (@sql)			
	--set @Order2=@number_of_applicant-@order1

	--update #n
	--set group27=case when ord<=@order1 then 3 
	--				 when ord>@order1 and ord<@order2 then 2
	--				 when ord>=@order2 then 1 end
	--Add end By Turaj Soheil 1393-09-12					 
					 
					 



update ApplicantExam
set ApplicantExam.GroupingID=#n.Group27 ,
    ApplicantExam.ord=#n.ord,ApplicantExam.finalmark=#n.finalmark,
    accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 end
from  ApplicantExam
 inner join  #n on ApplicantExam.applicantid=#n.applicantid
where ApplicantExam.ExamID=@ExamID
---------- Added BY Saeedi on 1391/01/29
	DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinPassedMark1 FLOAT,@Mark FLOAT		
    SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(MinPassedMark,0) FROM Exam WHERE ExamID=@ExamID		
	DECLARE crr CURSOR FOR 	
	SELECT ApplicantID FROM Applicant 
	WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHERE ExamID=@ExamID)
	OPEN crr
	FETCH NEXT FROM crr INTO @ApplicantID

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @FinalMark=ISNULL(FinalMark,0) FROM ApplicantExam WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID
		SET @Mark=(@FinalMark*100)/@MaxMark
		IF ISNULL(@Mark,0)>=ISNULL(@MinPassedMark1,0)
			UPDATE ApplicantExam
			SET Accepted=1
			WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID 
		ELSE
			UPDATE ApplicantExam
			SET Accepted=0
			WHERE ExamID=@ExamID AND ApplicantID=@ApplicantID			
		FETCH NEXT FROM crr INTO @ApplicantID
	END
	CLOSE crr
 	DEALLOCATE crr
 	
select 'SSSS' 	  	
---------- End Of Added BY Saeedi on 1391/01/29
GO