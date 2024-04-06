	if OBJECT_ID('AnswerKey') is not null
		if not exists( select * from sys.columns where object_id= OBJECT_ID('AnswerKey') and name ='ExamKeyGroup') 
			alter table AnswerKey 
			add ExamKeyGroup smallint
GO
	if OBJECT_ID('Exam') is not null
		if not exists( select * from sys.columns where object_id= OBJECT_ID('Exam') and name ='AnswerKey1') 
	begin
		alter table Exam 
		add 
		 [AnswerKey1] [varchar](1000) NULL,
		 [AnswerKey2] [varchar](1000) NULL,
		 [AnswerKey3] [varchar](1000) NULL,
		 [AnswerKey4] [varchar](1000) NULL,
		 [AnswerKey5] [varchar](1000) NULL,
		 [AnswerKey6] [varchar](1000) NULL
	end
GO
	if OBJECT_ID('Question') is not null
		if not exists( select * from sys.columns where object_id= OBJECT_ID('Question') and name ='AnswerKeyCode') 
			alter table Question 
			add AnswerKeyCode TinyInt
GO
	if OBJECT_ID('textformat') is not null
		if not exists( select * from sys.columns where object_id= OBJECT_ID('textformat') and name ='ExamKeyGroupStart') 
			alter table textformat
			add 	ExamKeyGroupStart smallint NULL
GO
	if OBJECT_ID('textformat') is not null
		if not exists( select * from sys.columns where object_id= OBJECT_ID('textformat') and name ='ExamKeyGroupLength') 
			alter table textformat
			add	ExamKeyGroupLength smallint NULL
GO
	if OBJECT_ID('textformat') is not null
		if not exists( select * from sys.columns where object_id= OBJECT_ID('textformat') and name ='ExamKeyCount') 
			alter table textformat
			add	ExamKeyCount smallint NULL
GO
	if OBJECT_ID('ApplicantData') is null
		CREATE TABLE [dbo].[ApplicantData](
			[ApplicantID] [int] NOT NULL,
			[ApplicantPicture] [image] NOT NULL)
GO
	if OBJECT_ID('Reports') is null
		CREATE TABLE [dbo].[Reports](
			[ID] [int] NOT NULL,
			[Name] [nvarchar](50) COLLATE Arabic_CI_AS NOT NULL,
			[File] [image] NULL
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
	if OBJECT_ID('UserDefaultReport') is null
		CREATE TABLE [dbo].[UserDefaultReport](
			[userID] [int] NOT NULL,
			[reportID] [int] NOT NULL
		) ON [PRIMARY]

GO
	if OBJECT_ID('Analysis_Exam_Temporary') is not  null
	drop PROCEDURE Analysis_Exam_Temporary
GO	 
	CREATE PROCEDURE [dbo].[Analysis_Exam_Temporary]
		(@ExamID	int)
	AS
	begin
		select *
		from exam where ExamID = @ExamID
	end
GO
	if OBJECT_ID('Analysis_Exam_Total') is not  null
	drop PROCEDURE Analysis_Exam_Total
GO	 

	CREATE PROCEDURE [dbo].[Analysis_Exam_Total]
		(@ExamID	int)
	as
	begin
		DECLARE @SQLString NVARCHAR(500)
		DECLARE @ParmDefinition NVARCHAR(500)
		DECLARE @parmIN int
		DECLARE @parmRET1 float


		SET @parmIN= CONVERT(nvarchar(10),@ExamID)
		SET @SQLString=N'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'
		SET @ParmDefinition=N'@parm int,
						  @parm1OUT float OUTPUT'

		EXECUTE sp_executesql
		@SQLString,
		@ParmDefinition,
		@parm=@parmIN,
		@parm1OUT=@parmRET1 OUTPUT

		declare @vp float,@stdErr float
		select @vp=VARP(FinalMark) 
		from ApplicantExam
		where examid=@examid
		set @stdErr = (round( sqrt(@vp)*sqrt(  1-CONVERT(float,@parmRET1)),2)  )

		SELECT * into #question FROM Question WHERE ExamID = @ExamID
		SELECT FinalMark into #finMark FROM ApplicantExam WHERE ExamID = @ExamID

		select * from #question

		--update exam
		--set
		--NumberOf_1item_Question=(select count(*) from #question where  number_Of_Item=1),
		--NumberOf_2item_Question=(select count(*) from #question where  number_Of_Item=2),
		--NumberOf_3item_Question=(select count(*) from #question where  number_Of_Item=3),
		--NumberOf_4item_Question=(select count(*) from #question where  number_Of_Item=4),
		--NumberOf_5item_Question=(select count(*) from #question where  number_Of_Item=5),
		--NumberOf_6item_Question=(select count(*) from #question where  number_Of_Item=6),
		--Difficulty=round(       (select avg(Difficulty) from #question     ),3),
		--Discrimination= round(  (select avg(Discrimination) from #question ),3),
		--RPBIS=round(            (select avg(RPBIS)      from #question     ),3),
		--StandardError=  @stdErr,
		--kr20  = @parmRET1,
		--Alpha = @parmRET1 ,
		--ExamVariance=round(     (select varp(finalmark)      from #finMark ),3)
		--FROM    Exam
		--where Exam.examid =@examid
	end

GO
	if OBJECT_ID('Analysis_Question_byExamID') is not  null
	drop PROCEDURE Analysis_Question_byExamID
GO
	CREATE  PROCEDURE [dbo].[Analysis_Question_byExamID]
		(@ExamID	[int]=155)
	AS
	IF OBJECT_ID('tempdb..##m') IS NOT NULL DROP TABLE ##m	

	 declare @select nvarchar(3000)
	 set   @select='SELECT Question.QuestionID  , 
	 sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) then 1 else 0 end)  Correct,
	 sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else 0 end) Answerd,
	 count(*) All_Count,
	 sum ( case when AnswerItemNumber not in (CorrectItemNumber,CorrectItemNumber2) and AnswerItemNumber<>0 then 1 else 0 end) Wrong,
	Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) then 1 else 0 end) /
	cast(count(AnswerItemNumber )as float),3) as  Di,
	sum ( case when  GroupingID=3  then 1 else 0 end) Group3,
	sum ( case when  GroupingID=3  then 1 else 0 end) Group1, 
	sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G3,
	sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) then 1 else 0 end) Correct_G1,
	0.0 dis
	 '
	declare @Number_Of_Item tinyint
	SELECT     @Number_Of_Item=Number_of_Items
	FROM         Exam
	WHERE     (ExamID = @ExamID)
	declare @ItemNumber tinyint,@GroupingID tinyint
	set @ItemNumber=0 
	while @ItemNumber<=6--@Number_Of_Item
	 begin
	  set @GroupingID=1 
	  while @GroupingID<=3 
	   begin
		 if @GroupingID<>2   
		  set @select=@select+',sum ( case when AnswerItemNumber= '+cast(@ItemNumber as char(1))+' and GroupingID='+cast(@GroupingID as char(1)) +
								' then 1 else 0 end ) G'+cast(@GroupingID as char(1))+'_'+cast(@ItemNumber as char(1))

		 set @GroupingID=@GroupingID+1
	  end  --@GroupingID
	  
	  
	  set @select=@select+',
	sum ( case when AnswerItemNumber= '+cast(@ItemNumber as char(1))+ 
	' then 1 else 0 end ) all'+cast(@ItemNumber as char(1))
	 set @ItemNumber=@ItemNumber+1
	end -- @ItemNumber
		  set @select=@select+' into ##m
	FROM          Question
	INNER JOIN   ApplicantAnswer ON ApplicantAnswer.QuestionID = Question.QuestionID 
	INNER JOIN   ApplicantExam ON ApplicantExam.ApplicantID = ApplicantAnswer.ApplicantID and Question.Examid=ApplicantExam.ExamID
	where Question.Examid='+cast(@ExamID as varchar(10))+'-- and QuestionActivityID=1
	group by Question.QuestionID,Number, CorrectItemNumber  '



	exec sp_executesql @Select


	update Question
	set Question.Correct=##m.Correct ,
	Question.Answerd=##m.Answerd ,
	Question.All_Count=##m.All_Count ,
	Question.Wrong=##m.Wrong ,
	Question.Difficulty  =##m.Di ,
	Question.Discrimination =			round((Correct_G3 -Correct_G1)/cast(case when group3>group1 then group3 else group1 end as float) ,3),
	Question.G1_0=##m.G1_0 ,
	Question.G3_0=##m.G3_0 ,
	Question.all0=##m.all0 ,
	Question.G1_1=##m.G1_1 ,
	Question.G3_1=##m.G3_1 ,
	Question.all1=##m.all1 ,
	Question.G1_2=##m.G1_2 ,
	Question.G3_2=##m.G3_2 ,
	Question.all2=##m.all2 ,
	Question.G1_3=##m.G1_3 ,
	Question.G3_3=##m.G3_3 ,
	Question.all3=##m.all3 ,
	Question.G1_4=##m.G1_4 ,
	Question.G3_4=##m.G3_4 ,
	Question.all4=##m.all4 ,
	Question.all5=##m.all5 ,
	Question.all6=##m.all6 ,
	Question.RPBIS=round(Dbo.RPBIS(Question.QuestionID),3)
	from Question inner join ##m on ##m.QuestionID=Question.QuestionID

	update Question
	set number_Of_Item=(case  when cast(all1 as float)/all_count>0.05 then 1 else 0 end)+
	(case  when cast(all2 as float)/all_count>0.05 then 1 else 0 end)+
	(case  when cast(all3 as float)/all_count>0.05 then 1 else 0 end)+
	(case  when cast(all4 as float)/all_count>0.05 then 1 else 0 end)+
	(case  when cast(all5 as float)/all_count>0.05 then 1 else 0 end)+
	(case  when cast(all6 as float)/all_count>0.05 then 1 else 0 end)
	WHERE ExamID = @ExamID
GO
--------------------------------------
	if OBJECT_ID('Browse_Exam') is not  null
	drop PROCEDURE Browse_Exam
GO
	CREATE PROCEDURE [dbo].[Browse_Exam]
	@where varchar(2047)
	AS
	declare @SqlCommand nvarchar(4000)
	 set   @SqlCommand='SELECT     Exam.ExamID, Exam.ExamTitle, Exam.MainCourseID, Exam.MainDesignerTeacherID, Exam.ExamDate, Exam.CorrectItemPoint, 
						  Exam.WrongItemPoint, Exam.BlankItemPoint, Exam.MinPassedMark, Exam.ExamTypeID, Exam.Number_of_Items, Exam.Number_of_Question, 
						  Exam.number_of_applicant, Exam.TexFormatID, Exam.TermCode, ExamType.ExamTypeTitle, Teacher.TeacherCode, Teacher.FullName, 
						  TextFormat.TextFormatTitle, Course.CourseCode, Course.CourseTitle,
						  Exam.CustomField1,Exam.CustomField2,Exam.CustomField3,Exam.CustomField4,Exam.CustomField5
	FROM         Exam 
	LEFT JOIN  Teacher ON Exam.MainDesignerTeacherID = Teacher.TeacherID 
	LEFT JOIN  Course ON Exam.MainCourseID = Course.CourseID 
	LEFT JOIN  TextFormat ON Exam.TexFormatID = TextFormat.TextFormatID 
	LEFT JOIN  ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID'
	set @where=isnull(ltrim(@where),'')
	 if @where<>''  set  @where=' where '+@where
	set @SqlCommand=@SqlCommand+@where+' order by ExamDate desc '
	exec sp_executesql @SqlCommand
GO
	if OBJECT_ID('Get_ApplicantCodeExam_Info') is not  null
	drop PROCEDURE Get_ApplicantCodeExam_Info
GO
	CREATE proc [dbo].[Get_ApplicantCodeExam_Info]
	 @ApplicantCode varchar(15),@examid int
	as
	SELECT     Applicant.ApplicantCode, Applicant.FirstName, Applicant.LastName, Applicant.Termcode, Major.MajorTitle, ApplicantExam.FinalMark, Grouping.GroupingTitle, 
						  ApplicantExam.ord,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) and QuestionActivityID=1) Correct_answer
	,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and AnswerItemNumber not in (CorrectItemNumber,isnull(CorrectItemNumber2,0)) and AnswerItemNumber<>0 and AnswerItemNumber<>9 and QuestionActivityID=1) Wrong_answer
	,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and  AnswerItemNumber=0 and QuestionActivityID=1) Withot_answer
	,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and AnswerItemNumber=9 )Damaged_answer

	FROM         ApplicantExam INNER JOIN
						  Applicant ON ApplicantExam.ApplicantID = Applicant.ApplicantID LEFT OUTER JOIN
						  Major ON Applicant.MajorID = Major.MajorID LEFT OUTER JOIN
						  Grouping ON ApplicantExam.GroupingID = Grouping.GroupingID
	WHERE     (Applicant.ApplicantCode = @ApplicantCode) and ApplicantExam.examid=@examid

GO
	if OBJECT_ID('Get_ApplicantExamDetails_by_ApplicantCode') is not  null
	drop PROCEDURE Get_ApplicantExamDetails_by_ApplicantCode
GO
	CREATE  proc [dbo].[Get_ApplicantExamDetails_by_ApplicantCode]
	 @ApplicantCode varchar(15),@examid int
	as
	SELECT     Question.Number, Question.CorrectItemNumber, Question.CorrectItemNumber2, ApplicantAnswer.AnswerItemNumber,
	cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0 end as bit) Item1,
	cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0 end as bit) Item2,
	cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0 end as bit) Item3,
	cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0 end as bit) Item4,
	cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0 end as bit) Item5,
	cast(case when ApplicantAnswer.AnswerItemNumber=6 then 1 else 0 end as bit) Item6
	FROM         Applicant INNER JOIN
						  ApplicantExam ON Applicant.ApplicantID = ApplicantExam.ApplicantID INNER JOIN
						  Exam ON ApplicantExam.ExamID = Exam.ExamID INNER JOIN
						  Question ON Exam.ExamID = Question.ExamID INNER JOIN
						  ApplicantAnswer ON Applicant.ApplicantID = ApplicantAnswer.ApplicantID AND Question.QuestionID = ApplicantAnswer.QuestionID
	WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.examid=@examid
	ORDER BY Question.Number
GO
	if OBJECT_ID('Get_TextFormat_By_ExamID') is not  null
	drop PROCEDURE Get_TextFormat_By_ExamID
GO
	CREATE PROCEDURE [dbo].[Get_TextFormat_By_ExamID]
	 @examId int , @StnoStart int output , @StnoLength int output , @MajorStart int output , @MajorLength int output ,
	 @TermcodeStart int output , @TermCodeLength int output , @CourseStart int output , @CourseLength int output ,
	 @CourseGroupStart int output , @CourseGroupLength int output , @AnswerStart int output ,
	 @ExamKeyGroupStart int output , @ExamKeyGroupLength int output , @ExamKeyCount int output ,
	@indiscernibleChar char(1) output, @KeyLineNumber int output , @AnswerStartLineNumber int output
	as
	SELECT @StnoStart=StnoStart,@StnoLength=StnoLength,@MajorStart=MajorStart,@MajorLength=MajorLength,
	@TermcodeStart=TermcodeStart,@TermCodeLength=TermCodeLength,@CourseStart=CourseStart,@CourseLength=CourseLength,
	@CourseGroupStart=CourseGroupStart,@CourseGroupLength=CourseGroupLength,@AnswerStart=AnswerStart,
	@ExamKeyGroupStart=ExamKeyGroupStart,@ExamKeyGroupLength=ExamKeyGroupLength, @ExamKeyCount=ExamKeyCount,
	@indiscernibleChar=indiscernibleChar,@KeyLineNumber=KeyLineNumber,@AnswerStartLineNumber=AnswerStartLineNumber
	FROM Exam 
	INNER JOIN TextFormat ON Exam.TexFormatID = TextFormat.TextFormatID
	WHERE (Exam.ExamID = @ExamID)
GO
	if OBJECT_ID('insert_AnswerKey') is not  null
	drop PROCEDURE insert_AnswerKey
GO
	CREATE PROCEDURE [dbo].[insert_AnswerKey]
		(@AnswerKeyID 	int output ,
		 @ApplicantExamID 	int,
		 @AnswerKey 	varchar(1000),
		 @ExamKeyCode int)
	AS
	if exists (select * from AnswerKey where ApplicantExamID=@ApplicantExamID and ExamKeyGroup = @ExamKeyCode)
	 begin
	  select @AnswerKeyID=AnswerKeyID from AnswerKey where ApplicantExamID=@ApplicantExamID and ExamKeyGroup = @ExamKeyCode
	  update AnswerKey set AnswerKey=@AnswerKey where ApplicantExamID=@ApplicantExamID
	 end
	 else
	 begin
	  INSERT INTO AnswerKey (ApplicantExamID, AnswerKey, ExamKeyGroup) VALUES 	( @ApplicantExamID, @AnswerKey, @ExamKeyCode)
	  select @AnswerKeyID= @@identity
	 end
 GO
	if OBJECT_ID('insert_AnswerLine') is not  null
	drop PROCEDURE insert_AnswerLine
GO 
	 CREATE PROCEDURE [dbo].[insert_AnswerLine]
		(
	@ExamID        int,
	@ExamKeyCode   int,
	@ApplicantCode varchar(20),
	@AnswerKey     varchar(1000) ,
	@termcode      char(3),
	@majorCode     varchar(20),
	@CourseCode    varchar(15),
	@CourseGroup   varchar(5)
	)
	AS
	set @AnswerKey=replace(@AnswerKey,' ','0')
	declare @CourseID smallint ,
			@MajorID int, 
			@ApplicantID int,
			@TrainingCourseID int,
			@ApplicantExamID int,
			@AnswerKeyID int,
			@ApplicantCourseID int, 
			@CurrentTermcode char(3)
	        
	select @CurrentTermcode=Termcode from Exam where ExamID=@ExamID

	exec insert_Course_byCode              @CourseID          output , @CourseCode 
	exec insert_Major_ByCode               @MajorID           output , @MajorCode 
	exec insert_Applicant_ByCode           @ApplicantID       output , @ApplicantCode    , @MajorID  , @Termcode 
	exec insert_ApplicantExam              @ApplicantExamID	  output , @ApplicantID      , @ExamID
	exec insert_TrainingCourse_Bycode      @TrainingCourseID  output , @CourseID         , @CurrentTermcode , @CourseGroup , @ExamID
	exec insert_AnswerKey                  @AnswerKeyID       output , @ApplicantExamID  , @AnswerKey , @ExamKeyCode
	exec insert_ApplicantCourse_byCode     @ApplicantCourseID output , @ApplicantID      , @TrainingCourseID

GO
	if OBJECT_ID('insert_ApplicantAnswer_ByExamID') is not  null
	drop PROCEDURE insert_ApplicantAnswer_ByExamID
GO
	CREATE PROCEDURE [dbo].[insert_ApplicantAnswer_ByExamID]
		(@ExamID	[int])
	AS
	SELECT     Applicant.ApplicantID, Question.QuestionID, 
	case when isnumeric(substring(AnswerKey.AnswerKey,Question.number,1))=1  then substring(AnswerKey.AnswerKey,Question.number,1) else '9' END AS Akey
	INTO #AppAnswer
	FROM         Applicant 
	INNER JOIN   ApplicantExam ON Applicant.ApplicantID = ApplicantExam.ApplicantID 
	INNER JOIN   Question ON ApplicantExam.ExamID = Question.ExamID
	INNER JOIN   AnswerKey ON ApplicantExam.ApplicantExamID = AnswerKey.ApplicantExamID
	where Question.ExamID=@ExamID

	delete ApplicantAnswer where questionid in (select questionid from Question where examid=@examid)
	INSERT INTO ApplicantAnswer(ApplicantID, QuestionID, AnswerItemNumber)
	SELECT     ApplicantID, QuestionID, Akey
	FROM         #AppAnswer
	order by ApplicantID, QuestionID
GO
	if OBJECT_ID('insert_Question_ByExamID') is not  null
	drop PROCEDURE insert_Question_ByExamID
GO
	CREATE PROCEDURE [dbo].[insert_Question_ByExamID]
		(@ExamID	int)
	AS
	declare @i smallint,@number_of_question smallint,
			@j tinyint,@Number_of_Items tinyint,
			@QuestionID int,@AnswerKey varchar(1000)
	select @number_of_question=number_of_question,@Number_of_Items=Number_of_Items
	from exam where examid=@examid

	set @i=1 

	declare @DesignerTeacherID int,@CourseID int

	SELECT     @AnswerKey=AnswerKey1 ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
	FROM         Exam
	WHERE     (ExamID=@ExamID )

	declare @c char(1)
	while @i<=@number_of_question 
	 begin
		if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- „ŒœÊ‘
		if not exists (select * from question where examid=@examid and number=@i )
		  INSERT INTO Question ( ExamID, AnswerKeyCode,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
					VALUES (@ExamID,1, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
	   else
		 update question
		 set CorrectItemNumber=@c
		 where examid=@examid and number=@i
	set @i=@i+1
	end--while @i*/


	SELECT     @AnswerKey=AnswerKey2 ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
	FROM         Exam
	WHERE     (ExamID=@ExamID )


	while @i<=@number_of_question 
	 begin
		if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- „ŒœÊ‘
		if not exists (select * from question where examid=@examid and number=@i )
		  INSERT INTO Question ( ExamID, AnswerKeyCode,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
					VALUES (@ExamID,2, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
	   else
		 update question
		 set CorrectItemNumber=@c
		 where examid=@examid and number=@i
	set @i=@i+1
	end--while @i*/




	SELECT     @AnswerKey=AnswerKey3 ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
	FROM         Exam
	WHERE     (ExamID=@ExamID )


	while @i<=@number_of_question 
	 begin
		if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- „ŒœÊ‘
		if not exists (select * from question where examid=@examid and number=@i )
		  INSERT INTO Question ( ExamID, AnswerKeyCode,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
					VALUES (@ExamID,3, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
	   else
		 update question
		 set CorrectItemNumber=@c
		 where examid=@examid and number=@i
	set @i=@i+1
	end--while @i*/



	SELECT     @AnswerKey=AnswerKey4 ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
	FROM         Exam
	WHERE     (ExamID=@ExamID )


	while @i<=@number_of_question 
	 begin
		if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- „ŒœÊ‘
		if not exists (select * from question where examid=@examid and number=@i )
		  INSERT INTO Question ( ExamID, AnswerKeyCode,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
					VALUES (@ExamID,4, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
	   else
		 update question
		 set CorrectItemNumber=@c
		 where examid=@examid and number=@i
	set @i=@i+1
	end--while @i*/




	SELECT     @AnswerKey=AnswerKey5 ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
	FROM         Exam
	WHERE     (ExamID=@ExamID )


	while @i<=@number_of_question 
	 begin
		if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- „ŒœÊ‘
		if not exists (select * from question where examid=@examid and number=@i )
		  INSERT INTO Question ( ExamID, AnswerKeyCode,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
					VALUES (@ExamID,5, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
	   else
		 update question
		 set CorrectItemNumber=@c
		 where examid=@examid and number=@i
	set @i=@i+1
	end--while @i*/




	SELECT     @AnswerKey=AnswerKey6 ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
	FROM         Exam
	WHERE     (ExamID=@ExamID )


	while @i<=@number_of_question 
	 begin
		if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- „ŒœÊ‘
		if not exists (select * from question where examid=@examid and number=@i )
		  INSERT INTO Question ( ExamID, AnswerKeyCode,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
					VALUES (@ExamID,6, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
	   else
		 update question
		 set CorrectItemNumber=@c
		 where examid=@examid and number=@i
	set @i=@i+1
	end--while @i*/




	update question
		 set questionActivityID=3
		 where examid=@examid and CorrectItemNumber=8
GO
	if OBJECT_ID('Select_Applicant_by_ExamAndWhere') is not  null
	drop PROCEDURE Select_Applicant_by_ExamAndWhere
GO
	CREATE  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]
		(@ExamID	int,@where nvarchar(1000),@order varchar(100) )
	AS
	declare @SQL nvarchar(4000)
	set @SQL=' SELECT Applicant.*, Faculty.FacultyTitle, Major.MajorTitle, Exam.ExamTitle, Course.CourseCode, 
	 Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.TermCode ExamTerm,T.FullName, T.FullName as TeacherTitle, EducationGroup.EducationGroupTitle,
	 Exam.CustomField1 as ECF1, Exam.CustomField2 as ECF2, Exam.CustomField3 as ECF3, Exam.CustomField4 as ECF4, Exam.CustomField5 as ECF5, leveltitle
	FROM ApplicantExam 
	inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.ApplicantID
	inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID
	Left join Teacher T on Exam.TeacherID = T.TeacherID 
	left JOIN Course ON Exam.MainCourseID = Course.CourseID 
	LEFT JOIN Major ON Applicant.MajorID = Major.MajorID 
	LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Exam.EducationGroupID 
	LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	LEFT JOIN Level  ON Major.LevelID = Level.LevelID
	where Exam.ExamID='+cast(@examID as varchar(10))                      
	set @order =case when isnull(ltrim(@order),'')='' then '' else ' order by '+isnull(ltrim(@order),'') end
	set @where =case when ltrim(isnull(@where,''))='' then '' else ' and '+@where end 
	set @sql=@sql+@where +@order
	PRINT @sql
	exec(@sql)
GO
	if OBJECT_ID('Select_Applicant_by_Where') is not  null
	drop PROCEDURE Select_Applicant_by_Where
GO
	CREATE  PROCEDURE [dbo].[Select_Applicant_by_Where]
	(@where 	nvarchar(2000))
	AS
	declare @SQL nvarchar(4000)
	set @SQL='SELECT   Faculty.FacultyTitle, EducationGroup.EducationGroupTitle, EducationGroup.EducationGroupCode, 
						  [Level].LevelTitle, Major.MajorTitle , Major.MajorCode , Applicant.*
	FROM         Applicant 
	left JOIN  Major  ON Applicant.MajorID = Major.MajorID 
	left JOIN [Level] ON Major.LevelID = [Level].LevelID 
	left JOIN EducationGroup ON Major.EducationGroupID = EducationGroup.EducationGroupID 
	left JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID'
	set @where =case when ltrim(isnull(@where,''))='' then '' else ' where '+@where end 
	set @sql=@sql+@where 
	exec(@sql)     
GO
	if OBJECT_ID('Select_Exam_ByExamID') is not  null
	drop PROCEDURE Select_Exam_ByExamID
GO
	CREATE PROCEDURE [dbo].[Select_Exam_ByExamID]
		(@ExamID 	int)
	AS
	SELECT  ExamID, ExamTitle, MainCourseID, MainDesignerTeacherID, ExamDate, CorrectItemPoint, WrongItemPoint, DamagedItemPoint, BlankItemPoint,
	ROUND(CorrectItemPoint,3) AS CorrectIP, ROUND(WrongItemPoint,3) AS WrongIP, ROUND(DamagedItemPoint,3) AS DamagedIP,ROUND(BlankItemPoint,3) AS BlankIP, 
	MinPassedMark, ExamTypeID, Number_of_Items, Number_of_Question, number_of_applicant, TexFormatID, 
	AnswerKey1, AnswerKey2, AnswerKey3, AnswerKey4, AnswerKey5, AnswerKey6, Difficulty, 
	Discrimination, StandardError, Alpha, Reliability, ExamVariance, NumberOf_1item_Question, NumberOf_2item_Question, NumberOf_3item_Question, 
	NumberOf_4item_Question, NumberOf_5item_Question, RPBIS, TermCode, KR20, MaxMark, NumberOf_6item_Question, EducationGroupID, TeacherID, 
	CustomField1, CustomField2, CustomField3, CustomField4, CustomField5
	FROM         Exam
	WHERE 
		( ExamID	 = @ExamID)
	
GO
	if OBJECT_ID('Select_ExamDetail_by_where') is not  null
	drop PROCEDURE Select_ExamDetail_by_where
GO
	CREATE procEDURE [dbo].[Select_ExamDetail_by_where]
	@where varchar(2047)
	AS
	declare @s nvarchar(4000)

	IF OBJECT_ID('tempdb..##E') IS NOT NULL DROP TABLE ##E
	IF OBJECT_ID('tempdb..##ApplicantExam') IS NOT NULL DROP TABLE ##ApplicantExam

	set   @s='SELECT  ExamID into ##E FROM   Exam '
	if @where<>''  set  @where=' where '+@where
	set @s=@s+@where
	exec sp_executesql @S
	set @s='
	SELECT  ApplicantExam.ExamID,
	round(AVG(FinalMark),3)     AS [„Ì«‰êÌ‰ ‰„—« ],
	round( STDEVP(FinalMark),3)  AS [«” «‰œ«—œ œÊÌ‘‰ ‰„—« ],
	max((case when FinalMark<=0 then 0 else FinalMark end))  AS [»Ì‘ —Ì‰ ‰„—« ],
	min((case when FinalMark<=0 then 0 else FinalMark end))  AS [ò„ —Ì‰ ‰„—« ]'
	set @s=@s+'
	 into ##ApplicantExam
	FROM      ApplicantExam 
	inner join Exam on ApplicantExam.examid=Exam.examid
	where Exam.examid in (select examid from ##E)
	group by ApplicantExam.ExamID
	'

	exec(@s)

	--SELECT * FROM ##ApplicantExam

	set @s='

	DECLARE @SQLString NVARCHAR(500)
	DECLARE @ParmDefinition NVARCHAR(500)
	DECLARE @parmIN int
	DECLARE @parmRET1 float


	select @parmIN = examid from exam  '+@where +'
	SET @SQLString=N''EXEC SP_KR20 @parm, @parm1OUT OUTPUT''
	SET @ParmDefinition=N''@parm int, @parm1OUT float OUTPUT''

	EXECUTE sp_executesql
	@SQLString,
	@ParmDefinition,
	@parm=@parmIN,
	@parm1OUT=@parmRET1 OUTPUT



	SELECT     Exam.ExamTitle [⁄‰Ê«‰ ¬“„Ê‰],
	Exam.ExamDate [ «—ÌŒ »—ê“«—Ì],
	round(Exam.CorrectItemPoint,3) [«„ Ì«“ Å«”Œ œ—” ],
	round(Exam.WrongItemPoint,3) [«„ Ì«“ Å«”Œ ‰«œ—” ],
	round(Exam.BlankItemPoint,3) [«„ Ì«“ »œÊ‰ Å«”Œ],
	round(Exam.DamagedItemPoint,3) [«„ Ì«“ Å«”Œ „ŒœÊ‘],
	Exam.MinPassedMark*Exam.Maxmark/100 [‰„—Â ﬁ»Ê·Ì],
	Exam.Number_of_Items [ ⁄œ«œ ê“Ì‰Â],
	Exam.Number_of_Question [ ⁄œ«œ ”∆Ê«·],
	Exam.number_of_applicant [ ⁄œ«œ œ«Êÿ·»],
	round(exam.Difficulty,2) as [÷—Ì» œ‘Ê«—Ì],
	Round(Exam.Discrimination,2) as [÷—Ì» «› —«ﬁ],
	NumberOf_1item_Question [ ⁄œ«œ ”∆Ê«·«  1 ê“Ì‰Â «Ì],
	NumberOf_2item_Question [ ⁄œ«œ ”∆Ê«·«  2 ê“Ì‰Â «Ì],
	NumberOf_3item_Question [ ⁄œ«œ ”∆Ê«·«  3 ê“Ì‰Â «Ì],
	NumberOf_4item_Question [ ⁄œ«œ ”∆Ê«·«  4 ê“Ì‰Â «Ì],
	NumberOf_5item_Question [ ⁄œ«œ ”∆Ê«·«  5 ê“Ì‰Â «Ì],
	NumberOf_6item_Question [ ⁄œ«œ ”∆Ê«·«  6 ê“Ì‰Â «Ì],
	round(StandardError,2)  [Œÿ«Ì «” «‰œ«—œ],
	Alpha ¬·›«,
	round(ExamVariance,2) [Ê«—Ì«‰” ‰„—« ],
	RPBIS ,
	@parmRET1 KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxonomy23,1 objectionnumber0,1 objectionnumber1,
	1 objectionnumber2,1 objectionnumber3,
	 ##ApplicantExam.* '
	select @s=@s+', (select count(Questionid) from Question where examId=Exam.ExamID and
	Difficulty >= '+cast(minvalue as varchar(10))+' and Difficulty <'+cast(maxvalue as varchar(10)) +') as [œ‘Ê«—Ì:'+Difficultytitle+'] '
	from Difficulty

	select @s=@s+', (select count(Questionid) from Question where examId=Exam.ExamID and
	Discrimination >=   '+cast(minvalue as varchar(10))+' and  Discrimination<'+cast(maxvalue as varchar(10))+') as [«› —«ﬁ:'+DiscriminationTitle+'] '
	from Discrimination
	set @s=@s+'
	FROM Exam
	INNER JOIN ##ApplicantExam on ##ApplicantExam.ExamID=Exam.ExamID
	left JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID
	'
	print @s
	exec(@s)
	drop table ##E
	drop Table ##ApplicantExam
	--By Hadi Mohamed 93/05/04	
GO
------------------------------------
	if OBJECT_ID('Select_Question_By_ExamID_and_Where') is not  null
	drop PROCEDURE Select_Question_By_ExamID_and_Where
GO
	CREATE  PROCEDURE [dbo].[Select_Question_By_ExamID_and_Where]
		(@examId int,@where 	nvarchar(2000))
	AS
	declare @SQL nvarchar(4000)
	set @SQL='SELECT 
	Question.QuestionID,Course.CourseTitle,Question.ExamID,Question.Number,Question.DesignerTeacherID,Question.CourseID,Question.Correct,Question.Answerd,Question.All_Count,
					  Question.Wrong,Question.Difficulty,Question.Discrimination AS Discrimination,Question.G1_0,Question.G3_0,Question.all0,Question.G1_1,Question.G3_1,Question.all1,
					 Question.G1_2,Question.G3_2,Question.all2,Question.G1_3,Question.G3_3,Question.all3,Question.G1_4,Question.G3_4,Question.all4,Question.G1_5,Question.G3_5,	   
					 Question.all5,Question.number_Of_Item,Question.QuestionActivityID,Question.TemporaryActive,Question.Coefficient,Question.RPBIS,Question.CorrectItemNumber,
					 Question.CorrectItemNumber2,Question.Taxonomy,Question.ObjectionNumber,Question.all6	
		   ,cast(DifficultyTitle as varchar(50)) as DifficultyTitle, DiscriminationTitle,questionActivityTitle,
		   100*all0/All_Count all0_percent
		  ,100*all1/All_Count all1_percent
		  ,100*all2/All_Count all2_percent
		  ,100*all3/All_Count all3_percent
		  ,100*all4/All_Count all4_percent
		  ,100*all5/All_Count all5_percent
		  ,100*all6/All_Count all6_percent
	      
	FROM         Question LEFT JOIN Course ON Question.CourseID=Course.CourseID 
	left JOIN Difficulty       ON Question.Difficulty >= Difficulty.MinValue and Question.Difficulty <Difficulty.MaxValue
	left JOIN Discrimination   ON Question.Discrimination >= Discrimination.MinValue and Question.Discrimination <Discrimination.MaxValue
	left join questionActivity ON questionActivity.questionActivityID= Question.questionActivityID where Question.ExamID='+cast(@examID as varchar(5))
	set @where =case when ltrim(isnull(@where,''))='' then '' else ' and '+@where end 
	set @sql=@sql+@where 
	--PRINT @SQL
	--By Hadi Mohamed 92/11/16
	exec(@sql)

GO
	if OBJECT_ID('Select_TrainingCourse_By_Where') is not  null
	drop PROCEDURE Select_TrainingCourse_By_Where
GO
---------------------------------------------------------------------------
	CREATE proc [dbo].[Select_TrainingCourse_By_Where]

	(@where 	nvarchar(2000))
	AS
	declare @SQL nvarchar(4000)
	set @SQL='SELECT  TrainingCourse.*,Course.CourseCode, Course.CourseTitle, Teacher.TeacherCode, Teacher.FirstName, Teacher.LastName, Teacher.FullName, 
						  Teacher.Title, Exam.ExamTitle
	FROM	Course 
			LEFT OUTER JOIN TrainingCourse ON TrainingCourse.CourseID = Course.CourseID 
			LEFT OUTER JOIN Teacher ON TrainingCourse.TeacherID = Teacher.TeacherID 
			LEFT OUTER JOIN Exam ON TrainingCourse.ExamID = Exam.ExamID
	'
	set @where =case when ltrim(isnull(@where,''))='' then '' else ' where '+@where + ' --and TrainingCourseID IS NULL'end 
	set @sql=@sql+@where 
	exec(@sql)

GO
	if OBJECT_ID('update_ApplicantExam_FinalMArk') is not  null
	drop PROCEDURE update_ApplicantExam_FinalMArk
GO
	CREATE PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]
		(@ExamID	[int])
	AS
	declare @number_of_applicant int,@Order1 int,@order2 int,@mxMark float,
			@CorrectItemPoint FLOAT,@sumCofficient FLOAT,@DamagedItemPoint float,@BlankItemPoint float,@WrongItemPoint float,@MinPassedMark float,@AcceptedMark 
	FLOAT,@ZaribeFinalMark FLOAT	
		
			
	select @BlankItemPoint=BlankItemPoint,
		   @CorrectItemPoint= CorrectItemPoint,
		   @WrongItemPoint=WrongItemPoint,
		   @DamagedItemPoint = DamagedItemPoint,
		   @MinPassedMark   = MinPassedMark,
		   @ZaribeFinalMark=MaxMark/Number_of_Question,
		   @mxMark = MaxMark
	from  Exam
	where ExamID =@ExamID

	SELECT * into #question FROM question WHERE ExamID=@ExamID and QuestionActivityID in (1,3)

	--select @AcceptedMark=(@MinPassedMark/100.0)*sum(Coefficient )*@CorrectItemPoint
	select @AcceptedMark = (@MinPassedMark/100.0)*@mxMark
	from #question

	IF OBJECT_ID('tempdb..#m') IS NOT NULL DROP TABLE #m

	SELECT     ApplicantAnswer.ApplicantID,sum(#Question.Coefficient*
	case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivityID=2 then @BlankItemPoint
		  when  ApplicantAnswer.AnswerItemNumber in ( #Question.CorrectItemNumber,#Question.CorrectItemNumber2) or QuestionActivityID=3 then @CorrectItemPoint
		  when  ApplicantAnswer.AnswerItemNumber>6  then @DamagedItemPoint
		  else    @WrongItemPoint end)/@CorrectItemPoint as finalmark 
	into #m
	FROM         ApplicantAnswer 
	INNER JOIN   #Question ON ApplicantAnswer.QuestionID = #Question.QuestionID
	where #Question.ExamID=@ExamID
	group by ApplicantAnswer.ApplicantID


	SELECT @sumCofficient = sum(#Question.Coefficient) FROM #Question where #Question.ExamID=@ExamID
	SELECT @ZaribeFinalMark=MaxMark/@sumCofficient from  Exam where ExamID =@ExamID
	-- Added By Saeedi on 901115
	UPDATE #m
	SET finalmark=finalmark*@ZaribeFinalMark

	IF OBJECT_ID('tempdb..#n') IS NOT NULL DROP TABLE #n
	select *,Null group27,identity(int,1,1) ord into #n
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
	SELECT ApplicantID INTO #AppIDs FROM Applicant 
		WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHERE ExamID=1197)
		
	SELECT * into #AppExam FROM ApplicantExam WHERE ExamID=@ExamID
	---------------------------
		DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinPassedMark1 FLOAT,@Mark FLOAT		
		SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(MinPassedMark,0) FROM Exam WHERE ExamID=@ExamID		
		DECLARE crr CURSOR FOR 	
		SELECT ApplicantID FROM #AppIDs 
		OPEN crr
		FETCH NEXT FROM crr INTO @ApplicantID

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SELECT @FinalMark=ISNULL(FinalMark,0) 
			FROM #AppExam
			WHERE ApplicantID=@ApplicantID
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
	---------- BY Hadi Mohamed  1393/05/04

GO
	if OBJECT_ID('Update_ExamAndQuestion_ByExamID') is not  null
	drop PROCEDURE Update_ExamAndQuestion_ByExamID
GO
	CREATE proc [dbo].[Update_ExamAndQuestion_ByExamID]
	(@ExamID	[int])
	as
	DECLARE @Number_of_Question INT,
			@number_of_applicant INT
	select @Number_of_Question = count(*) from question where ExamID = @ExamID
	select @number_of_applicant = count(*) from dbo.ApplicantExam where examid = @ExamID

	update exam set Number_of_Question = (@Number_of_Question)
	where ExamID = @ExamID

	update Exam set number_of_applicant = (@number_of_applicant)
	where examid = @ExamID
GO
	if OBJECT_ID('update_ExamKey') is not  null
	drop PROCEDURE update_ExamKey
GO
	CREATE PROCEDURE [dbo].[update_ExamKey]
		(@ExamID 	int, @KeyID int,
		 @AnswerKey 	varchar(1000))
	AS
	set @AnswerKey=replace(@AnswerKey,' ','0')
		UPDATE  Exam SET
			AnswerKey1 = (case when @KeyID <=1 then  @AnswerKey else AnswerKey1 end),
			AnswerKey2 = (case when @KeyID  =2 then  @AnswerKey else AnswerKey2 end),
			AnswerKey3 = (case when @KeyID  =3 then  @AnswerKey else AnswerKey3 end),
			AnswerKey4 = (case when @KeyID  =4 then  @AnswerKey else AnswerKey4 end),
			AnswerKey5 = (case when @KeyID  =5 then  @AnswerKey else AnswerKey5 end),
			AnswerKey6 = (case when @KeyID >=6 then  @AnswerKey else AnswerKey6 end)
			WHERE 	( ExamID	 = @ExamID)
			
GO		
	if OBJECT_ID('StandardError') is not  null
	drop FUNCTION StandardError
GO
	CREATE FUNCTION [dbo].[StandardError](@examid int)
	RETURNS float  AS
	BEGIN 
		
	DECLARE @SQLString NVARCHAR(500)
	DECLARE @ParmDefinition NVARCHAR(500)
	DECLARE @parmIN int
	DECLARE @parmRET1 float


	SET @parmIN= CONVERT(nvarchar(10),@ExamID)
	SET @SQLString=N'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'
	SET @ParmDefinition=N'@parm int,
					  @parm1OUT float OUTPUT'

	EXECUTE sp_executesql
	@SQLString,
	@ParmDefinition,
	@parm=@parmIN,
	@parm1OUT=@parmRET1 OUTPUT

	declare @vp float
	select @vp=VARP(FinalMark) 
	from ApplicantExam
	where examid=@examid
	return(round( sqrt(@vp)*sqrt(  1-CONVERT(float,@parmRET1)),2)  )
	END
GO