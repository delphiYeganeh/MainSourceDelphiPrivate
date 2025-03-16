	if not exists (select * from syscolumns where name = 'CustomField1'  and syscolumns.id=OBJECT_ID('Exam'))
	alter table Exam
	add CustomField1 nvarchar(50)
	if not exists (select * from syscolumns where name = 'CustomField2'  and syscolumns.id=OBJECT_ID('Exam'))
	alter table Exam
	add CustomField2 nvarchar(50)
	if not exists (select * from syscolumns where name = 'CustomField3'  and syscolumns.id=OBJECT_ID('Exam'))
	alter table Exam
	add CustomField3 nvarchar(50)
	if not exists (select * from syscolumns where name = 'CustomField4'  and syscolumns.id=OBJECT_ID('Exam'))
	alter table Exam
	add CustomField4 nvarchar(50)
	if not exists (select * from syscolumns where name = 'CustomField5'  and syscolumns.id=OBJECT_ID('Exam'))
	alter table Exam
	add CustomField5 nvarchar(50)
GO
	if not exists (select * from syscolumns where name = 'CustomField1'  and syscolumns.id=OBJECT_ID('Applicant'))
	alter table Applicant
	add CustomField1 nvarchar(100)
	if not exists (select * from syscolumns where name = 'CustomField2'  and syscolumns.id=OBJECT_ID('Applicant'))
	alter table Applicant
	add CustomField2 nvarchar(100)
	if not exists (select * from syscolumns where name = 'CustomField3'  and syscolumns.id=OBJECT_ID('Applicant'))
	alter table Applicant
	add CustomField3 nvarchar(100)
	if not exists (select * from syscolumns where name = 'CustomField4'  and syscolumns.id=OBJECT_ID('Applicant'))
	alter table Applicant
	add CustomField4 nvarchar(100)
	if not exists (select * from syscolumns where name = 'CustomField5'  and syscolumns.id=OBJECT_ID('Applicant'))
	alter table Applicant
	add CustomField5 nvarchar(100)

GO
	if not exists (select * from syscolumns where name = 'GroupExamStart'  and syscolumns.id=OBJECT_ID('TextFormat'))
	alter table TextFormat
	add GroupExamStart SmallInt null
GO
	IF OBJECT_ID('ExamEqualQuestion') is null
	CREATE TABLE ExamEqualQuestion
	(
		[ExamEqualQuestionId] [int] IDENTITY(1,1) NOT NULL,
		[ExamId] [int] NULL,
		[GroupExamId] [int] NULL,
		[QuestionNumber] [int] NULL,
		[EqualQuestionNumber] [int] NULL
	) ON [PRIMARY]

GO
	if OBJECT_ID('GenerateBarcode') is not null
	drop function GenerateBarcode
GO
	Create function  GenerateBarcode(@Input varchar(12))
	returns varchar(12)
	as
	begin
		declare @len int 
		 set @len=len(@input)
		 while @len<12
		 begin
			set @Input=@Input+'+'
			set @len=@len+1	
		 end
		 return @input
	end
GO
	if OBJECT_ID ('GroupExam') is null
	create  table GroupExam
	(	
		GroupExamId int identity,
		Code  int,
		Title varchar(50)
	)
GO
	truncate table GroupExam
	insert into GroupExam (Code,Title)
	select 1,'«·›' 
	insert into GroupExam (code,Title)
	select 2 ,'»'
	insert into GroupExam (code,Title)
	select 3 ,'Ã'
	insert into GroupExam (code,Title)
	select 4,'œ'
GO
	if not exists (select * from syscolumns where name = 'GroupExamid'  and syscolumns.id=OBJECT_ID('Exam'))
	alter table Exam
	add GroupExamid int  
GO
	if OBJECT_ID ('Browse_Exam') is not null
	drop procedure Browse_Exam
GO
	Create PROCEDURE [dbo].[Browse_Exam]
	@where varchar(2047)
	AS
	 declare @SqlCommand nvarchar(4000)
	 set   @SqlCommand='SELECT     GroupExam.Code GroupExam ,Exam.ExamID, Exam.ExamTitle, Exam.MainCourseID, Exam.MainDesignerTeacherID, Exam.ExamDate, Exam.CorrectItemPoint, 
						  Exam.WrongItemPoint, Exam.BlankItemPoint, Exam.MinPassedMark, Exam.ExamTypeID, Exam.Number_of_Items, Exam.Number_of_Question, 
						  Exam.number_of_applicant, Exam.TexFormatID, Exam.TermCode, ExamType.ExamTypeTitle, Teacher.TeacherCode, Teacher.FullName, 
						  TextFormat.TextFormatTitle, Course.CourseCode, Course.CourseTitle,
						  Exam.CustomField1,Exam.CustomField2,Exam.CustomField3,Exam.CustomField4,Exam.CustomField5
	FROM         Exam 
	LEFT JOIN  Teacher ON Exam.MainDesignerTeacherID = Teacher.TeacherID 
	LEFT JOIN  Course ON Exam.MainCourseID = Course.CourseID 
	LEFT JOIN  TextFormat ON Exam.TexFormatID = TextFormat.TextFormatID 
	LEFT JOIN  ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID
	left join  GroupExam on Exam.GroupExamId=GroupExam.GroupExamId
	'
	set @where=isnull(ltrim(@where),'')
	 if @where<>''  set  @where=' where '+@where
	set @SqlCommand=@SqlCommand+@where+' order by ExamDate desc '
	exec sp_executesql @SqlCommand
GO
	if not exists (select * from syscolumns where name = 'GroupExamid'  and syscolumns.id=OBJECT_ID('ApplicantExam'))
	alter table ApplicantExam 
	add GroupExamId int 
GO
	if not exists (select * from syscolumns where name = 'SeatNumber'  and syscolumns.id=OBJECT_ID('ApplicantExam'))
	alter table ApplicantExam 
	add SeatNumber int 
GO
	if not exists (select * from syscolumns where name = 'Pic'  and syscolumns.id=OBJECT_ID('Applicant'))
	alter table Applicant 
	add Pic Image 
GO
	if OBJECT_ID ('AssignGroupExamToApplicanet') is not null
	drop procedure AssignGroupExamToApplicanet
GO	
	Create procedure AssignGroupExamToApplicanet (@ExamId int , @Type bit)
	as
	begin
		declare @GroupExamId int =1

		select @GroupExamId= isnull(GroupExamId,1) 
		from Exam 
		where  ExamId=@ExamId
		
		if @GroupExamId=1
			begin
				if @Type=0
					begin
									update ApplicantExam
						set GroupExamId=1,
						SeatNumber=s.RowNumber
											 from (	  
														select	row_number()  over( order by a.LastName) RowNumber,	a.FullName,ae.*   	 
														from ApplicantExam ae
														inner join Applicant a on a.ApplicantID=ae.ApplicantID
														where  ExamId=@ExamId)s
						where ApplicantExam.ApplicantExamID=s.ApplicantExamID
					end
				else
					begin
						update ApplicantExam
						set GroupExamId=1,
						SeatNumber=s.RowNumber
											 from (	  
														select	row_number()  over( order by a.ApplicantCode) RowNumber,	a.FullName,ae.*   	 
														from ApplicantExam ae
														inner join Applicant a on a.ApplicantID=ae.ApplicantID
														where  ExamId=@ExamId)s
						where ApplicantExam.ApplicantExamID=s.ApplicantExamID
					end 
			end
		else
			begin
				if @Type=0 
					begin
						update ApplicantExam
						set GroupExamId=case when s.RowNumber%@GroupExamId>0 then s.RowNumber%@GroupExamId else @GroupExamId end
						,seatNumber=s.RowNumber	
											 from (	  
													select	row_number()  over( order by a.LastName) RowNumber,	a.FullName,ae.*   	 
													from ApplicantExam ae
													inner join Applicant a on a.ApplicantID=ae.ApplicantID
													where  ExamId=@ExamId)s
						where ApplicantExam.ApplicantExamID=s.ApplicantExamID			
					
					end
				else
					begin
					
						update ApplicantExam
						set GroupExamId=case when s.RowNumber%@GroupExamId>0 then s.RowNumber%@GroupExamId else @GroupExamId end
						,seatNumber=s.RowNumber	
											 from (	  
													select	row_number()  over( order by a.Applicantcode) RowNumber,	a.ApplicantCode,ae.*   	 
													from ApplicantExam ae
													inner join Applicant a on a.ApplicantID=ae.ApplicantID
													where  ExamId=@ExamId)s
						where ApplicantExam.ApplicantExamID=s.ApplicantExamID			
					end
			end	
	end

GO
	if OBJECT_ID ('Select_Applicant_by_ExamAndWhere') is not null
	drop procedure Select_Applicant_by_ExamAndWhere
GO
	Create  PROCEDURE [dbo].[Select_Applicant_by_ExamAndWhere]
		(@ExamID	int,@where nvarchar(1000),@order varchar(100) )
	AS
	 declare @SQL nvarchar(4000)
	set @SQL=' SELECT
		dbo.GenerateBarcode(Applicant.ApplicantCode)+ case when len (ApplicantExam.GroupExamId)<2 then ''0''+CONVERT(varchar(02),ApplicantExam.GroupExamId) else CONVERT(varchar(02),ApplicantExam.GroupExamId) end Barcode, 
	 Applicant.*, Faculty.FacultyTitle, Major.MajorTitle, Exam.ExamTitle, Course.CourseCode, 
	 Course.CourseCode, Course.CourseTitle, Exam.ExamDate, Exam.TermCode ExamTerm,T.FullName, T.FullName as TeacherTitle, EducationGroup.EducationGroupTitle,
	 Exam.CustomField1 as ECF1, Exam.CustomField2 as ECF2, Exam.CustomField3 as ECF3, Exam.CustomField4 as ECF4, Exam.CustomField5 as ECF5 ,GE.Title GroupExamTitle,ApplicantExam.SeatNumber
	FROM ApplicantExam 
	inner JOIN  Applicant ON ApplicantExam.ApplicantID = Applicant.ApplicantID
	inner JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID
	Left join Teacher T on Exam.TeacherID = T.TeacherID 
	left JOIN Course ON Exam.MainCourseID = Course.CourseID 
	LEFT JOIN Major ON Applicant.MajorID = Major.MajorID 
	LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Exam.EducationGroupID 
	LEFT JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	left join GroupExam GE on GE.GroupExamId =ApplicantExam.GroupExamId 
	where Exam.ExamID='+cast(@examID as varchar(10))                      
	set @order =case when isnull(ltrim(@order),'')='' then '' else ' order by '+isnull(ltrim(@order),'') end
	set @where =case when ltrim(isnull(@where,''))='' then '' else ' and '+@where end 
	set @sql=@sql+@where +@order
	print @sql
	exec(@sql)
GO
	if OBJECT_ID ('sp_Inport_Applicant') is not null
	drop procedure sp_Inport_Applicant
GO
	create PROCEDURE [dbo].[sp_Inport_Applicant]
		@ApplicantCode			NVARCHAR(20)='',
		@FirstName				NVARCHAR(50)='',
		@LastName				NVARCHAR(50)='',
		@FatherName				NVARCHAR(50)='',
		@Termcode				CHAR(3)='',
		@CustomField1			NVARCHAR(50)='',
		@CustomField2			NVARCHAR(50)='',
		@CustomField3			NVARCHAR(100)='',
		@CustomField4			NVARCHAR(100)='',
		@CustomField5			NVARCHAR(100)='',
		@MajorCode				NVARCHAR(20)='',
		@MajorTitle				NVARCHAR(60)='',
		@EducationGroupCode		NVARCHAR(50)='',
		@EducationGroupTitle	NVARCHAR(50)='',
		@FacultyCode			NVARCHAR(50)='',
		@FacultyTitle			NVARCHAR(50)='',
		@LevelTitle				NVARCHAR(50)=''
	AS
	BEGIN
		DECLARE @MajorID SMALLINT
		SET @MajorID = 0
					
		IF @MajorID = 0
			IF (LTRIM(RTRIM(@MajorTitle)) <> '')
				IF EXISTS(SELECT * FROM Major WHERE LTRIM(RTRIM(MajorTitle)) = LTRIM(RTRIM(@MajorTitle)))
					SELECT @MajorID = MajorID FROM Major WHERE LTRIM(RTRIM(MajorTitle)) = LTRIM(RTRIM(@MajorTitle))
		
		IF @MajorID = 0
			IF (LTRIM(RTRIM(@MajorCode)) <> '')
				IF EXISTS(SELECT * FROM Major WHERE LTRIM(RTRIM(MajorCode)) = LTRIM(RTRIM(@MajorCode)))
					SELECT @MajorID = MajorID FROM Major WHERE LTRIM(RTRIM(MajorCode)) = LTRIM(RTRIM(@MajorCode))

				
		IF @MajorID = 0
		BEGIN
			DECLARE @EduGrpID SMALLINT
			SET @EduGrpID = 0
			
			IF @EduGrpID = 0
				IF (LTRIM(RTRIM(@EducationGroupTitle)) <> '')
					IF EXISTS(SELECT * FROM EducationGroup WHERE LTRIM(RTRIM(EducationGroupTitle)) = LTRIM(RTRIM(@EducationGroupTitle)))
						SELECT @EduGrpID = EducationGroupID FROM EducationGroup WHERE LTRIM(RTRIM(EducationGroupTitle)) = LTRIM(RTRIM
	(@EducationGroupTitle))
		
			IF @EduGrpID = 0
				IF (LTRIM(RTRIM(@EducationGroupCode)) <> '')
					IF EXISTS(SELECT * FROM EducationGroup WHERE LTRIM(RTRIM(EducationGroupCode)) = LTRIM(RTRIM(@EducationGroupCode)))
						SELECT @EduGrpID = EducationGroupID FROM EducationGroup WHERE LTRIM(RTRIM(EducationGroupCode)) = LTRIM(RTRIM
	(@EducationGroupCode))	
			
			IF @EduGrpID = 0
			BEGIN
				DECLARE @FacultyID SMALLINT
				SET @FacultyID = 0
			
				IF @FacultyID = 0
					IF (LTRIM(RTRIM(@FacultyTitle)) <> '')
						IF EXISTS(SELECT * FROM Faculty WHERE LTRIM(RTRIM(FacultyTitle)) = LTRIM(RTRIM(@FacultyTitle)))
							SELECT @FacultyID = FacultyID FROM Faculty WHERE LTRIM(RTRIM(FacultyTitle)) = LTRIM(RTRIM(@FacultyTitle))
		
				IF @FacultyID = 0
					IF (LTRIM(RTRIM(@FacultyCode)) <> '')
						IF EXISTS(SELECT * FROM Faculty WHERE LTRIM(RTRIM(FacultyCode)) = LTRIM(RTRIM(@FacultyCode)))
							SELECT @FacultyID = FacultyID FROM Faculty WHERE LTRIM(RTRIM(FacultyCode)) = LTRIM(RTRIM(@FacultyCode))	
				
				IF @FacultyID = 0
				BEGIN
					IF LTRIM(RTRIM(@FacultyTitle)) = ''
						SET @FacultyTitle = N'‰«„‘Œ’'
					IF EXISTS(SELECT * FROM Faculty WHERE LTRIM(RTRIM(FacultyTitle)) = LTRIM(RTRIM(@FacultyTitle)))
						SELECT @FacultyID = FacultyID FROM Faculty WHERE LTRIM(RTRIM(FacultyTitle)) = LTRIM(RTRIM(@FacultyTitle))
					IF @FacultyID = 0
					BEGIN
						IF LTRIM(RTRIM(@FacultyCode)) = ''
							SET @FacultyCode = N'0'
						INSERT INTO Faculty(FacultyTitle,FacultyCode)
						VALUES(	@FacultyTitle,	@FacultyCode)
						SELECT @FacultyID = @@IDENTITY
					END
				END
				
				IF LTRIM(RTRIM(@EducationGroupTitle)) = ''
					SET @EducationGroupTitle = N'‰«„‘Œ’'
				IF EXISTS(SELECT * FROM EducationGroup WHERE LTRIM(RTRIM(EducationGroupTitle)) = LTRIM(RTRIM(@EducationGroupTitle)))
					SELECT @EduGrpID = EducationGroupID FROM EducationGroup WHERE LTRIM(RTRIM(EducationGroupTitle)) = LTRIM(RTRIM(@EducationGroupTitle))
				IF @EduGrpID = 0
				BEGIN
					IF LTRIM(RTRIM(@EducationGroupCode)) = ''
						SET @EducationGroupCode = N'0'
					INSERT INTO EducationGroup(EducationGroupCode,EducationGroupTitle,FacultyID)
					VALUES(@EducationGroupCode,@EducationGroupTitle,@FacultyID)
					SELECT @EduGrpID = @@IDENTITY
				END
			END
			
			IF LTRIM(RTRIM(@MajorTitle)) = ''
				SET @MajorTitle = N'‰«„‘Œ’'
			IF EXISTS(SELECT * FROM Major WHERE LTRIM(RTRIM(MajorTitle)) = LTRIM(RTRIM(@MajorTitle)))
				SELECT @MajorID = MajorID FROM Major WHERE LTRIM(RTRIM(MajorTitle)) = LTRIM(RTRIM(@MajorTitle))
			IF @MajorID = 0
			BEGIN
				IF LTRIM(RTRIM(@MajorCode)) = ''
					SET @MajorCode = N'0'
				DECLARE @LevelID SMALLINT
				SET @LevelID = 0 
				
				IF @LevelID = 0
					IF (LTRIM(RTRIM(@LevelTitle)) <> '')
						IF EXISTS(SELECT * FROM [Level] WHERE LTRIM(RTRIM(LevelTitle)) = LTRIM(RTRIM(@LevelTitle)))
							SELECT @LevelID = LevelID FROM [Level] WHERE LTRIM(RTRIM(LevelTitle)) = LTRIM(RTRIM(@LevelTitle))
				IF @LevelID = 0
				BEGIN
					IF LTRIM(RTRIM(@LevelTitle)) = ''
						SET @LevelTitle = N'‰«„‘Œ’'
					INSERT INTO [Level](LevelTitle)
					VALUES(@LevelTitle)
					SELECT @LevelID = @@IDENTITY	
				END
				INSERT INTO Major(MajorCode,MajorTitle,EducationGroupID,LevelID	)
				VALUES(@MajorCode,@MajorTitle,@EduGrpID,@LevelID)
				SELECT @MajorID = @@IDENTITY
			END
		END	
		
		INSERT INTO Applicant(	ApplicantCode,
								FirstName,
								LastName,
								FullName,
								MajorID,
								Termcode,
								FatherName,
								CustomField1,
								CustomField2,
								CustomField3,
								CustomField4,
								CustomField5)
		VALUES(	@ApplicantCode/* ApplicantCode	*/,
				@FirstName/* FirstName	*/,
				@LastName/* LastName	*/,
				@FirstName+' '+@LastName/* FullName	*/,
				@MajorID/* MajorID	*/,
				@Termcode/* Termcode	*/,
				@FatherName/* FatherName	*/,
				@CustomField1/* CustomField1	*/,
				@CustomField2/* CustomField2	*/,
				@CustomField3/* CustomField3	*/,
				@CustomField4/* CustomField4	*/,
				@CustomField5/* CustomField5	*/)
	END
GO
	if OBJECT_ID('insert_sys_Action') is not null
	drop procedure insert_sys_Action
GO
	Create PROCEDURE [dbo].[insert_sys_Action]
		(@ActionName 	[varchar](50),
		 @ActionCaption 	[nvarchar](50),
		 @ActionGroupID	[smallint])

	AS INSERT INTO [sys_Action] 
		 ( [ActionName],
		 [ActionCaption],
		 [ActionGroupID]) 
	 
	VALUES 
		( @ActionName,
		 @ActionCaption,
		 @ActionGroupID)
GO
	if OBJECT_ID('update_ApplicantExam_FinalMArk') is not null
	drop procedure update_ApplicantExam_FinalMArk
GO
	Create PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]
		(@ExamID	[int])
	AS
	Begin
		declare @number_of_applicant int,@Order1 int,@order2 int,@mxMark float,
			@CorrectItemPoint float,@sumCofficient FLOAT,@BlankItemPoint float,@WrongItemPoint float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark FLOAT		
	
		select @BlankItemPoint=BlankItemPoint,
			   @CorrectItemPoint= CorrectItemPoint,
			   @WrongItemPoint=WrongItemPoint,
			   --@DamagedItemPoint = DamagedItemPoint,
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
			  --when  ApplicantAnswer.AnswerItemNumber>6  then @DamagedItemPoint
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

	End
GO
	if OBJECT_ID ('insert_AnswerLine')is not null
	drop procedure insert_AnswerLine
GO
	Create PROCEDURE [dbo].[insert_AnswerLine]
		(
	@ExamID        int,
	@ApplicantCode varchar(20),
	@AnswerKey     varchar(1000) ,
	@termcode      char(3),
	@majorCode     varchar(20),
	@CourseCode    varchar(15),
	@CourseGroup   varchar(5),
	@GroupExamId   int
	)
	AS 
	begin
		set @AnswerKey=replace(@AnswerKey,' ','0')
		declare @CourseID smallint ,
				@MajorID int, 
				@ApplicantID int,
				@TrainingCourseID int,
				@ApplicantExamID int,
				@AnswerKeyID int,
				@ApplicantCourseID int, 
				@CurrentTermcode char(3),
				@TempApplicantCode varchar(20)
				set @TempApplicantCode=@ApplicantCode
				set @ApplicantCode=LEFT(@TempApplicantCode,12)
				set @ApplicantCode=REPLACE(@ApplicantCode,'+','') 
		        
		select @CurrentTermcode=Termcode from Exam where ExamID=@ExamID

		exec insert_Course_byCode              @CourseID          output , @CourseCode 
		exec insert_Major_ByCode               @MajorID           output , @MajorCode 
		exec insert_Applicant_ByCode           @ApplicantID       output , @ApplicantCode    , @MajorID  , @Termcode 
		exec insert_ApplicantExam              @ApplicantExamID	  output , @ApplicantID      , @ExamID	 , @GroupExamId	
		exec insert_TrainingCourse_Bycode      @TrainingCourseID  output , @CourseID         , @CurrentTermcode , @CourseGroup , @ExamID
		exec insert_AnswerKey                  @AnswerKeyID       output , @ApplicantExamID  , @AnswerKey 
		exec insert_ApplicantCourse_byCode     @ApplicantCourseID output , @ApplicantID      , @TrainingCourseID	
	end


GO
	if OBJECT_ID ('insert_ApplicantExam')is not null
	drop procedure insert_ApplicantExam
GO
	Create PROCEDURE [dbo].[insert_ApplicantExam]
		( @ApplicantExamID	int output,
		 @ApplicantID 	int,
		 @ExamID 	int,
		 @GroupExamId int =1)
	AS
	begin
		if exists (select * from ApplicantExam where ApplicantID=@applicantID and ExamID=@Examid)
		begin
		  select @ApplicantExamID=ApplicantExamID from ApplicantExam where ApplicantID=@applicantID and ExamID=@Examid
		end
		else
		begin
		 INSERT INTO ApplicantExam( ApplicantID, ExamID,GroupExamId) VALUES ( @ApplicantID,	 @ExamID ,@GroupExamId)
		 select @ApplicantExamID=@@identity
		end
	end

GO
	if exists (select * from sys.columns c inner join sys.types t on c.user_type_id=t.user_type_id and t.name<>'decimal' where object_id=object_id('Exam') and c.name='WrongItemPoint' )
	begin
		alter table exam 
		add temp real
	end
GO
	if exists (select * from sys.columns c inner join sys.types t on c.user_type_id=t.user_type_id and t.name<>'decimal' where object_id=object_id('Exam') and c.name='WrongItemPoint' )
	Begin
	declare @sql varchar(max)=
		'update Exam 
		set temp=WrongItemPoint
		alter table exam 
		drop column WrongItemPoint
		alter table exam 
		add WrongItemPoint decimal (18,2)
		update Exam 
		set WrongItemPoint=temp
		alter table exam 
		drop column temp'
		exec (@sql)

	end

GO
	if OBJECT_ID ('ViewExamEqualQuestion')is not null
	drop procedure ViewExamEqualQuestion
GO
	Create Procedure [dbo].[ViewExamEqualQuestion] (@ExamId int,@res Varchar(200) out) 
	 as
	begin
		 
			select distinct  
			(select top 1 EqualQuestionNumber from ExamEqualQuestion e1 where groupexamid=1 and e1.questionnumber=e.questionnumber and e1.examid=e.examid)Group1,   
			(select top 1 EqualQuestionNumber from ExamEqualQuestion e2 where groupexamid=2 and e2.questionnumber=e.questionnumber and e2.examid=e.examid)Group2,
			(select top 1 EqualQuestionNumber from ExamEqualQuestion e3 where groupexamid=3 and e3.questionnumber=e.questionnumber and e3.examid=e.examid)Group3,
			(select top 1 EqualQuestionNumber from ExamEqualQuestion e4 where groupexamid=4 and e4.questionnumber=e.questionnumber and e4.examid=e.examid)Group4
			into #temp
			from ExamEqualQuestion e 
			inner join GroupExam on GroupExam.GroupExamId=e.GroupExamId
			where e.examid=@ExamId
			
			

			declare @MaxNumber int=0
			declare @count int =0
			declare @GroupExamCount int =0
			declare @ExamEqualQuestion int =0
			set @res=''
			
			select @GroupExamCount=GroupExamid from Exam where ExamID=@examid
			select @MaxNumber=MAX (Group1) from #temp
			select @count=count(distinct Group1) from #temp
			select @ExamEqualQuestion=max (distinct GroupExamId) from ExamEqualQuestion where examid=@examid

			if @ExamEqualQuestion<>@GroupExamCount
				set @res =' ⁄œ«œ ê—ÊÂ ”Ê«·«  »«  ⁄œ«œ ê—ÊÂ »—ê“«—Ì ¬“„Ê‰ „ÿ«»ﬁ  ‰œ«—œ'

			if (@MaxNumber<>(select MAX (Group2) from #temp) or  @count<>(select Count (distinct Group2) from #temp)) and @GroupExamCount>=2
				select @res=@res+'
				Œÿ« œ— ”Ê«·«  ê—ÊÂ œÊ„'
			if (@MaxNumber<>(select MAX (Group3) from #temp) or  @count<>(select Count (distinct Group3) from #temp)) and @GroupExamCount>=3
				select @res=@res+'
				Œÿ« œ— ”Ê«·«  ê—ÊÂ ”Ê„'
			if (@MaxNumber<>(select MAX (Group4) from #temp) or  @count<>(select Count (distinct Group4) from #temp)) and @GroupExamCount>=4
				select @res=@res+'
				Œÿ« œ— ”Ê«·«  ê—ÊÂ çÂ«—„'

			select Group1 'ê—ÊÂ Ìò',Group2 'ê—ÊÂ œÊ',Group3 'ê—ÊÂ ”Â',Group4 'ê—ÊÂ çÂ«—' 
			from #temp 
			
			order by group1
	end
GO
	if OBJECT_ID ('Get_ApplicantExamDetails_by_ApplicantCode')is not null
	drop procedure Get_ApplicantExamDetails_by_ApplicantCode
GO
	Create  proc Get_ApplicantExamDetails_by_ApplicantCode
	 @ApplicantCode varchar(15),@examid int
	as

	select * from (
	SELECT     /*Question.Number,*/ Question.CorrectItemNumber, Question.CorrectItemNumber2, ApplicantAnswer.AnswerItemNumber,
	cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0 end as bit) Item1,
	cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0 end as bit) Item2,
	cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0 end as bit) Item3,
	cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0 end as bit) Item4,
	cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0 end as bit) Item5,
	cast(case when ApplicantAnswer.AnswerItemNumber=6 then 1 else 0 end as bit) Item6,
	Isnull(dbo.GetEqualQuestionNumber (Question.QuestionID ,ApplicantExam.GroupExamid ,1),Question.Number) Number

	FROM         Applicant 
	INNER JOIN ApplicantExam ON Applicant.ApplicantID = ApplicantExam.ApplicantID 
	INNER JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID 
	INNER JOIN Question ON Exam.ExamID = Question.ExamID
	INNER JOIN ApplicantAnswer ON Applicant.ApplicantID = ApplicantAnswer.ApplicantID AND Question.QuestionID = ApplicantAnswer.QuestionID
	WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.examid=@examid)s
	order by s.Number

GO

	if OBJECT_ID('Select_ApplicantExam_Log_List')is not null
	drop procedure Select_ApplicantExam_Log_List
GO
	Create procedure Select_ApplicantExam_Log_List @ExamId int 
	as
	Begin
		declare @CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint float 
		select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= CorrectItemPoint,
			   @WrongItemPoint=WrongItemPoint
		 from  Exam
		 where ExamID =@ExamId

	declare @sql Varchar(max)
	if OBJECT_ID('tempdb..##AppLog') is not null drop table ##AppLog
	select @sql='
	SELECT 
	ApplicantID, '+dbo.GetTitle(@examid)+
	'
	into ##AppLog
	FROM
	(
		SELECT  ApplicantID,isnull(Course.CourseTitle,''”«Ì— œ—Ê”'') coursetitle,
		Round(100.0*sum(Coefficient*
		case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivityID=2 then     '+str(@BlankItemPoint)+'
			  when  ApplicantAnswer.AnswerItemNumber in ( Question.CorrectItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=3 then '+str(@CorrectItemPoint)+'
			  else    '+str(@WrongItemPoint)+' end)/sum(Coefficient*'+str(@CorrectItemPoint)+'),2) PercentMark
		FROM         Question 
		INNER JOIN ApplicantAnswer ON Question.QuestionID = ApplicantAnswer.QuestionID 
		LEFT OUTER JOIN Course ON Question.CourseID = Course.CourseID
		WHERE     (Question.ExamID = '+str(@examid)+') AND QuestionActivityID in (1,3)
		group by isnull(Course.CourseTitle,''”«Ì— œ—Ê”''),ApplicantID


	) as ttt
	PIVOT
	(
	sum (PercentMark)
	FOR CourseTitle IN ('+dbo.GetTitle(@examid)+')
	) AS PivotTable'
	exec( @sql)
	declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT,
			@AcceptCount NUMERIC(6,2),@RejectCount NUMERIC(6,2),
			@AcceptPercent NUMERIC(6,2),@RejectPercent NUMERIC(6,2),
			@RecCount NUMERIC(6,2)

	select @FullPoint=sum(Coefficient)
	FROM Question
	WHERE (ExamID=@ExamID) and (questionactivityid<>2)

	select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,@Number_of_Question=Number_of_Question
	from Exam 
	WHERE (ExamID=@ExamID)

	if @maxMark is null or @maxMark<=0 set @maxMark=20



	SELECT    a.ApplicantCode[‘„«—Â œ«‰‘ÃÊÌÌ],a.FullName [‰«„ Ê ‰«„ Œ«‰Ê«œêÌ] , ApplicantExam.FinalMark[ —«“ ò· œ«‰‘ÃÊ], @FullPoint  [ —«“ ò«„·],ApplicantExam.ord[— »Â œ«‰‘ÃÊ],case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMark),2) end [— »Â ò· »Â œ—’œ],##AppLog.*
	FROM      Applicant a
	inner join ##AppLog on a.ApplicantID=##AppLog.ApplicantID
	INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = a.ApplicantID 
	where ExamId=@ExamId
	order by ord

	end
GO
	declare @sql Varchar(max)
	set @sql =' 
	ALTER DATABASE '+DB_NAME()+
	' SET COMPATIBILITY_LEVEL = 100'
	exec (@sql)
GO
	if OBJECT_ID('GetTitle') is not null
	drop function GetTitle
GO
	Create Function GetTitle(@Examid int )
	returns varchar(max)
	as
	begin
		declare @Title varchar(max)='',			
				@CT varchar(200)
		DECLARE _cursor CURSOR FOR
		select distinct  isnull(c.CourseTitle ,'”«Ì— œ—Ê”')
		from Question q 
		left join Course c on c.CourseID=q.CourseID
		where ExamID=@ExamId 
		open _cursor
		fetch next from _cursor 
		into 	@ct 

		while @@FETCH_STATUS=0
		begin
			Set @Title=@Title+'['+@CT+'],'
			fetch next from _cursor 
			into 	@ct 
		end 						
		close _cursor
		deallocate _cursor
		set @Title=SUBSTRING(@Title,1,LEN(@Title)-1)
		Return @Title
	end
GO
	if OBJECT_ID('Get_TextFormat_By_ExamID')is not null
	drop procedure Get_TextFormat_By_ExamID
GO	
	Create PROCEDURE Get_TextFormat_By_ExamID
	 @examId int , @StnoStart int output , @StnoLength int output , @MajorStart int output , @MajorLength int output ,
	 @TermcodeStart int output , @TermCodeLength int output , @CourseStart int output , @CourseLength int output ,
	 @CourseGroupStart int output , @CourseGroupLength int output , @AnswerStart int output ,
	@indiscernibleChar char(1) output, @KeyLineNumber int output , @AnswerStartLineNumber int output, @GroupExamStart int output 
	as
	SELECT @StnoStart=StnoStart,@StnoLength=StnoLength,@MajorStart=MajorStart,@MajorLength=MajorLength,
	@TermcodeStart=TermcodeStart,@TermCodeLength=TermCodeLength,@CourseStart=CourseStart,@CourseLength=CourseLength,
	@CourseGroupStart=CourseGroupStart,@CourseGroupLength=CourseGroupLength,@AnswerStart=AnswerStart,
	@indiscernibleChar=indiscernibleChar,@KeyLineNumber=KeyLineNumber,@AnswerStartLineNumber=AnswerStartLineNumber,
	@GroupExamStart=isnull(GroupExamStart,0)
	FROM Exam 
	INNER JOIN TextFormat ON Exam.TexFormatID = TextFormat.TextFormatID
	WHERE (Exam.ExamID = @ExamID)


GO
	if OBJECT_ID('Analysis_Exam_Total')is not null
	drop procedure Analysis_Exam_Total
GO
	Create PROCEDURE Analysis_Exam_Total
		(@ExamID	int)
	as
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

	SELECT * into #question FROM Question WHERE ExamID = @ExamID
	SELECT FinalMark into #finMark FROM ApplicantExam WHERE ExamID = @ExamID

	update exam
	set
	NumberOf_1item_Question=(select count(*) from #question where  number_Of_Item=1),
	NumberOf_2item_Question=(select count(*) from #question where  number_Of_Item=2),
	NumberOf_3item_Question=(select count(*) from #question where  number_Of_Item=3),
	NumberOf_4item_Question=(select count(*) from #question where  number_Of_Item=4),
	NumberOf_5item_Question=(select count(*) from #question where  number_Of_Item=5),
	NumberOf_6item_Question=(select count(*) from #question where  number_Of_Item=6),
	Difficulty=round(       (select avg(Difficulty) from #question     ),3),
	Discrimination= round(  (select avg(Discrimination) from #question ),3),
	RPBIS=round(            (select avg(RPBIS)      from #question     ),3),
	StandardError=  @parmRET1,
	kr20  = @parmRET1,
	Alpha = @parmRET1 ,
	ExamVariance=round(     (select varp(finalmark)      from #finMark ),3)
	FROM    Exam
	where Exam.examid =@examid
GO
	if OBJECT_ID('GetEqualQuestionNumber')is not null
	drop Function GetEqualQuestionNumber
GO
	Create Function dbo.GetEqualQuestionNumber (@QuestionId int,@GroupExamid int ,@Type bit)
	returns int
	as 
	begin
		declare @Res int
		if @Type=0
			begin
					select @Res=Case When @GroupExamId <>1 then eeq.EqualQuestionNumber Else q.number end  
					from Question q
					left join ExamEqualQuestion eeq on eeq.questionNumber=q.number and q.ExamID=eeq.ExamID
					where QuestionID=@QuestionId and GroupExamid =@GroupExamid	
			end
		else 
			begin
					select @Res=Case When @GroupExamId <>1 then eeq.EqualQuestionNumber Else q.number end  
					from Question q
					left join ExamEqualQuestion eeq on eeq.QuestionNumber=q.number and q.ExamID=eeq.ExamID
					where QuestionID=@QuestionId and GroupExamid =@GroupExamid	
			end	

		return @res
	end
GO
	if OBJECT_ID('insert_ApplicantAnswer_ByExamID')is not null
	drop Procedure insert_ApplicantAnswer_ByExamID
GO
	Create PROCEDURE insert_ApplicantAnswer_ByExamID
		(@ExamID	[int])
	AS
	declare @GroupExamId int
	select @GroupExamId=GroupExamId from Exam where ExamID=@ExamID
	SELECT     Applicant.ApplicantID,  Applicant.ApplicantCode, Question.number,Question.QuestionID, 
	case when isnumeric(substring(AnswerKey.AnswerKey,Question.number,1))=1  then substring(AnswerKey.AnswerKey,Question.number,1) else '9' END AS Akey,
	case when isnumeric(substring(AnswerKey.AnswerKey,dbo.GetEqualQuestionNumber(Question.QuestionID,ApplicantExam.GroupExamId,0),1))=1 
	 then substring(AnswerKey.AnswerKey,dbo.GetEqualQuestionNumber(Question.QuestionID,ApplicantExam.GroupExamId,0),1) else '9' END AS eqAkey,
	dbo.GetEqualQuestionNumber(Question.QuestionID,ApplicantExam.GroupExamId,0)EqualQuestionNumber
	INTO #AppAnswer
	FROM         Applicant 
	INNER JOIN   ApplicantExam ON Applicant.ApplicantID = ApplicantExam.ApplicantID 
	INNER JOIN   Question ON ApplicantExam.ExamID = Question.ExamID
	INNER JOIN   AnswerKey ON ApplicantExam.ApplicantExamID = AnswerKey.ApplicantExamID

	where Question.ExamID=@ExamID
	delete ApplicantAnswer where questionid in (select questionid from Question where examid=@examid)
	if @GroupExamId<>1
		INSERT INTO ApplicantAnswer(ApplicantID, QuestionID, AnswerItemNumber)
		SELECT     ApplicantID, QuestionID,eqAkey
		FROM         #AppAnswer
		order by ApplicantID, QuestionID
	else 
		INSERT INTO ApplicantAnswer(ApplicantID, QuestionID, AnswerItemNumber)
		SELECT     ApplicantID, QuestionID,Akey
		FROM         #AppAnswer
		order by ApplicantID, QuestionID
GO
--	if OBJECT_ID('Select_Exam_ByExamID')is not null
--	drop Procedure Select_Exam_ByExamID
--GO

--	Create PROCEDURE [dbo].[Select_Exam_ByExamID]
--		(@ExamID 	int)
--	AS  
--	SELECT  ExamID, ExamTitle, MainCourseID, MainDesignerTeacherID, ExamDate, CorrectItemPoint, WrongItemPoint, DamagedItemPoint, BlankItemPoint,
--	ROUND(CorrectItemPoint,3) AS CorrectIP, ROUND(WrongItemPoint,3) AS WrongIP, ROUND(DamagedItemPoint,3) AS DamagedIP,ROUND(BlankItemPoint,3) AS BlankIP, 
--	MinPassedMark, ExamTypeID, Number_of_Items, Number_of_Question, number_of_applicant, TexFormatID, AnswerKey, Difficulty, 
--	Discrimination, StandardError, Alpha, Reliability, ExamVariance, NumberOf_1item_Question, NumberOf_2item_Question, NumberOf_3item_Question, 
--	NumberOf_4item_Question, NumberOf_5item_Question, RPBIS, TermCode, KR20, MaxMark, NumberOf_6item_Question, EducationGroupID, TeacherID, 
--	CustomField1, CustomField2, CustomField3, CustomField4, CustomField5
--	FROM         Exam
--	WHERE 
--		( ExamID	 = @ExamID)
GO
	IF object_id ('Select_Question') IS NOT NULL
	DROP PROCEDURE dbo.Select_Question
GO
	 CREATE PROCEDURE dbo.Select_Question
		(@QuestionID 	int)
	AS  Select QuestionID, ExamID, Number, DesignerTeacherID, CourseID, CorrectItemNumber, Coefficient, QuestionActivityID, CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,
	CorrectItemNumber5,CorrectItemNumber6,Taxonomy
	 from Question 
	WHERE 	( QuestionID	 = @QuestionID)
GO
	IF object_id ('Question')IS NOT NULL AND 
	 NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_id('Question' ) AND name ='CorrectItemNumber3')
	 ALTER TABLE dbo.Question 
	 ADD CorrectItemNumber3 TINYINT
GO
	IF object_id ('Question')IS NOT NULL AND 
	 NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_id('Question' ) AND name ='CorrectItemNumber4')
	 ALTER TABLE dbo.Question 
	 ADD CorrectItemNumber4 TINYINT
 GO
	IF object_id ('Question')IS NOT NULL AND 
	 NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_id('Question' ) AND name ='CorrectItemNumber5')
	 ALTER TABLE dbo.Question 
	 ADD CorrectItemNumber5 TINYINT
 GO
	IF object_id ('Question')IS NOT NULL AND 
	NOT EXISTS (SELECT * FROM sys.columns WHERE object_id=object_id('Question' ) AND name ='CorrectItemNumber6')
	ALTER TABLE dbo.Question 
	ADD CorrectItemNumber6 TINYINT
GO
	IF object_id('update_ApplicantExam_FinalMArk')	 IS NOT NULL
	DROP PROCEDURE dbo.update_ApplicantExam_FinalMArk
GO
	CREATE PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]
		(@ExamID	[int])
	AS
	declare @number_of_applicant int,@Order1 int,@order2 int,@mxMark float,
			@CorrectItemPoint float,@sumCofficient FLOAT,@BlankItemPoint float,@WrongItemPoint float,@MinPassedMark float,@AcceptedMark FLOAT,@ZaribeFinalMark FLOAT		
			
	
	select @BlankItemPoint=BlankItemPoint,--»œÊ‰ ÃÊ«»
		   @CorrectItemPoint= CorrectItemPoint,--œ—” 
		   @WrongItemPoint=WrongItemPoint,--«‘ »«Â
		   @MinPassedMark   = MinPassedMark,--ò„ —Ì‰ ‰„—„Â ﬁ»Ê·Ì œ—’œ
		   @ZaribeFinalMark=MaxMark/Number_of_Question,--«„ Ì«“ ò· ¬“„Ê‰ /  ⁄œ«œ ”Ê«·« 
		   @mxMark = MaxMark--«„ Ì«“ ò· ¬“„Ê‰
	from  Exam
	where ExamID =@ExamID

	--select MaxMark,Number_of_Question ,*from Exam where ExamID=@ExamID

	SELECT * into #question FROM question WHERE ExamID=@ExamID and QuestionActivityID in (1,3)
	select @AcceptedMark = (@MinPassedMark/100.0)*@mxMark--„Õ«”»Â Õœ ﬁ»Ê· Ì« „—œÊœ »— Õ”» ò„ —Ì‰ ‰„—Â ﬁ»Ê·Ì Ê «„ «“ ò· ¬“„Ê‰ 
	from #question

	select * from #question
	IF OBJECT_ID('tempdb..#m') IS NOT NULL DROP TABLE #m

	SELECT     ApplicantAnswer.ApplicantID,sum(#Question.Coefficient*--Ã„⁄ ÷—Ì» ”Ê«·«  ÷—»œ—
	case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivityID=2 then @BlankItemPoint--«ê— »œÊ‰ ÃÊ«» »Êœ Ì« ”Ê«· «“ ‰Ê⁄ Õ–›Ì »Êœ ==>«„ Ì«“ »œÊ‰ ÃÊ«»
		  when  ApplicantAnswer.AnswerItemNumber in ( #Question.CorrectItemNumber,#Question.CorrectItemNumber2) or QuestionActivityID=3 then @CorrectItemPoint--«ê— ÃÊ«» »Ì‰ ê“Ì‰Â Ìò œ—”  Ì« œÊ œ—”  »Êœ Ì« ÃÊ«» ”Ê«· œ—”  »Êœ ==>«„ Ì«“ ”Ê«· œ—”  
		  when  ApplicantAnswer.AnswerItemNumber in ( #Question.CorrectItemNumber,#Question.CorrectItemNumber3) or QuestionActivityID=3 then @CorrectItemPoint--«ê— ÃÊ«» »Ì‰ ê“Ì‰Â Ìò œ—”  Ì« œÊ œ—”  »Êœ Ì« ÃÊ«» ”Ê«· œ—”  »Êœ ==>«„ Ì«“ ”Ê«· œ—”  
		  when  ApplicantAnswer.AnswerItemNumber in ( #Question.CorrectItemNumber,#Question.CorrectItemNumber4) or QuestionActivityID=3 then @CorrectItemPoint--«ê— ÃÊ«» »Ì‰ ê“Ì‰Â Ìò œ—”  Ì« œÊ œ—”  »Êœ Ì« ÃÊ«» ”Ê«· œ—”  »Êœ ==>«„ Ì«“ ”Ê«· œ—”  
		  when  ApplicantAnswer.AnswerItemNumber in ( #Question.CorrectItemNumber,#Question.CorrectItemNumber5) or QuestionActivityID=3 then @CorrectItemPoint--«ê— ÃÊ«» »Ì‰ ê“Ì‰Â Ìò œ—”  Ì« œÊ œ—”  »Êœ Ì« ÃÊ«» ”Ê«· œ—”  »Êœ ==>«„ Ì«“ ”Ê«· œ—”  
		  when  ApplicantAnswer.AnswerItemNumber in ( #Question.CorrectItemNumber,#Question.CorrectItemNumber6) or QuestionActivityID=3 then @CorrectItemPoint--«ê— ÃÊ«» »Ì‰ ê“Ì‰Â Ìò œ—”  Ì« œÊ œ—”  »Êœ Ì« ÃÊ«» ”Ê«· œ—”  »Êœ ==>«„ Ì«“ ”Ê«· œ—”  
		  else    @WrongItemPoint end)/*œ— €Ì— «Ì‰ ’Ê—  «„ Ì«“ ÃÊ«» €·ÿ*//@CorrectItemPoint as finalmark-- ﬁ”Ì„ »— «„ Ì«“ ÃÊ«» œ—”   
	into #m
	FROM         ApplicantAnswer 
	INNER JOIN   #Question ON ApplicantAnswer.QuestionID = #Question.QuestionID
	where #Question.ExamID=@ExamID
	group by ApplicantAnswer.ApplicantID -- «„ Ì«“ Â— œ«‰‘ÃÊ œ— ¬“„Ê‰

	select * from #m -- «„ Ì«“ Â— œ«‰‘ÃÊ œ— ¬“„Ê‰

	SELECT @sumCofficient = sum(#Question.Coefficient) FROM #Question where #Question.ExamID=@ExamID--Ã„⁄ ÷—Ì» ”Ê·«  ¬“„Ê‰
	select @sumCofficient --Ã„⁄ ÷—Ì» ”Ê·« 
	SELECT @ZaribeFinalMark=MaxMark/@sumCofficient from  Exam where ExamID =@ExamID--„Õ«”»Â ‰„—Â «“ / Ã„⁄ ÷—Ì» ”Ê·«  
	select @ZaribeFinalMark 
	-- Added By Saeedi on 901115
	UPDATE #m
	SET finalmark=finalmark*@ZaribeFinalMark -- »Â —Ê“—”«‰Ì «„ Ì«“ Â— œ«‰‘ÃÊ œ— ¬“„Ê‰ »—Õ”» Ã„⁄ ÷—Ì» ”Ê·«  ¬“„Ê‰ Ê „Õ«”»Â ‰„—Â ¬“„Ê‰ «“ 
		

		IF OBJECT_ID('tempdb..#n') IS NOT NULL DROP TABLE #n
		select *,null group27,identity(int,1,1) ord into #n
		from #m m
		order by finalmark desc 
		select @number_of_applicant=max(ord)
		from #n --— »Â »‰œÌ œ«‰‘ÃÊÌ«‰ ¬“„Ê‰ »— Õ”» «„ Ì«“ „Õ«”»Â ‘œÂ œ— ¬“„Ê‰ 

		if @number_of_applicant<20 -- ⁄ÌÌ‰ ‰›—«  ê—ÊÂÂ«
		  set  @Order1=@number_of_applicant/2--«ê—  ⁄œ«œ œ«‰‘ÃÊÌ«‰ ¬“„Ê‰ ò„ — «“ »Ì”  ‰›— »Êœ ==> ⁄œ«œ œ«‰‘ÃÊÌ«‰ ¬“„Ê‰  ﬁ”Ì„ »— œÊ 
		else
		if @number_of_applicant between 20  and 40-- «ê—  ⁄œ«œ œ«‰‘ÃÊÌ«‰ »Ì‰ »Ì”  Ê çÂ· ‰›— »Êœ ==>œÂ ‰›— 
		  set  @Order1=10
		else 
		set @Order1=(27*@number_of_applicant)/100 -- «ê— »Ì‘ — «“ çÂ· ‰›— »Êœ »Ì”  Ê Â›  œ—’— ò· ‘—ò  ò‰‰œê«‰ 
		select 27,@number_of_applicant ,100 ,@Order1 Order1 
			--Add begin By Turaj Soheil 1393-09-12
			declare @sql varchar(max)/* ⁄ÌÌ‰ ê—ÊÂ »«·« Ê Å«ÌÌ‰ »— Õ”» ⁄œœ »Â œ”  ¬„œÂ @Order1*/
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
							 
							 



		update ApplicantExam -- »Â —Ê“ —”«‰Ì ÃœÊ·Ì «’·Ì ‘—ò  ò‰‰œê«‰ ¬“„Ê‰ 
		set ApplicantExam.GroupingID=#n.Group27 ,-- ⁄ÌÌ‰ ê—ÊÂ »«·« Ê Å«ÌÌ‰ 
			ApplicantExam.ord=#n.ord,-- ⁄ÌÌ‰ — »Â œ«‰‘ÃÊ œ— ¬—„Ê‰ 
			ApplicantExam.finalmark=#n.finalmark,--«„ Ì«“ ò”» ‘œÂ  Ê”ÿ œ«‰‘ÃÊ
			accepted=case when #n.finalmark<@AcceptedMark then 0 else 1 end--ﬁ»Ê· Ì« „—œÊœ »— Õ”» «„ Ì«“ ò”» ‘œÂ Ê Õœ «„ Ì«“
		from  ApplicantExam
		 inner join  #n on ApplicantExam.applicantid=#n.applicantid
		where ApplicantExam.ExamID=@ExamID
		
		
		---------- Added BY Saeedi on 1391/01/29
		--ﬁ»Ê· Ì« „—œÊœ »— Õ”» «„ Ì«“ ò”» ‘œÂ Ê Õœ «„ Ì«“    œÊ»«—Â ‰ÊÌ”Ì øøø
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
	 	
GO
	IF OBJECT_ID('Analysis_Question_byExamID') IS not null
	DROP PROCEDURE dbo.Analysis_Question_byExamID
GO
	CREATE  PROCEDURE [dbo].[Analysis_Question_byExamID]
		(@ExamID	[int])
	AS

	 IF OBJECT_ID('tempdb..##m') IS NOT NULL DROP TABLE ##m	

	 declare @select nvarchar(3000)
	 set   @select='SELECT Question.QuestionID  , 
	 sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 end)  Correct,
	 sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else 0 end) Answerd,
	 count(*) All_Count,
	 sum ( case when AnswerItemNumber not in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) and AnswerItemNumber<>0 then 1 else 0 end) Wrong,
	Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 end) /
	cast(count(AnswerItemNumber )as float),3) as  Di,
	sum ( case when  GroupingID=3  then 1 else 0 end) Group3,
	sum ( case when  GroupingID=1  then 1 else 0 end) Group1, 
	sum ( case when  GroupingID=3 and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 end) Correct_G3,
	sum ( case when  GroupingID=1 and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 end) Correct_G1,
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
	print @Select

	update Question
	set Question.Correct=##m.Correct ,
	Question.Answerd=##m.Answerd ,
	Question.All_Count=##m.All_Count ,
	Question.Wrong=##m.Wrong ,
	Question.Difficulty  =##m.Di ,
	Question.Discrimination =round(
	(Correct_G3 -Correct_G1)/cast(case when group3>group1 then group3 else group1 end as float) ,3),
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
	IF OBJECT_ID('Get_ApplicantExamDetails_by_ApplicantCode') IS NOT NULL
	DROP PROCEDURE Get_ApplicantExamDetails_by_ApplicantCode
GO
	CREATE  proc Get_ApplicantExamDetails_by_ApplicantCode
	 @ApplicantCode varchar(15),@examid int
	as

	select * from (
	SELECT     /*Question.Number,*/ Question.CorrectItemNumber, Question.CorrectItemNumber2,Question.CorrectItemNumber3,Question.CorrectItemNumber4,
	Question.CorrectItemNumber5,Question.CorrectItemNumber6
	, ApplicantAnswer.AnswerItemNumber,
	cast(case when ApplicantAnswer.AnswerItemNumber=1 then 1 else 0 end as bit) Item1,
	cast(case when ApplicantAnswer.AnswerItemNumber=2 then 1 else 0 end as bit) Item2,
	cast(case when ApplicantAnswer.AnswerItemNumber=3 then 1 else 0 end as bit) Item3,
	cast(case when ApplicantAnswer.AnswerItemNumber=4 then 1 else 0 end as bit) Item4,
	cast(case when ApplicantAnswer.AnswerItemNumber=5 then 1 else 0 end as bit) Item5,
	cast(case when ApplicantAnswer.AnswerItemNumber=6 then 1 else 0 end as bit) Item6,
	Isnull(dbo.GetEqualQuestionNumber (Question.QuestionID ,ApplicantExam.GroupExamid ,1),Question.Number) Number

	FROM         Applicant 
	INNER JOIN ApplicantExam ON Applicant.ApplicantID = ApplicantExam.ApplicantID 
	INNER JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID 
	INNER JOIN Question ON Exam.ExamID = Question.ExamID
	INNER JOIN ApplicantAnswer ON Applicant.ApplicantID = ApplicantAnswer.ApplicantID AND Question.QuestionID = ApplicantAnswer.QuestionID
	WHERE     (Applicant.ApplicantCode = @ApplicantCode) and Exam.examid=@examid)s
	order by s.Number

GO
	if object_id('Get_ApplicantCodeExam_Info')is not null
	drop procedure Get_ApplicantCodeExam_Info
GO
	create proc [dbo].[Get_ApplicantCodeExam_Info]
	 @ApplicantCode varchar(15),@examid int
	as
	SELECT     Applicant.ApplicantCode, Applicant.FirstName, Applicant.LastName, Applicant.Termcode, Major.MajorTitle, ApplicantExam.FinalMark, Grouping.GroupingTitle, 
						  ApplicantExam.ord,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6)
	 and QuestionActivityID=1) Correct_answer
	,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and AnswerItemNumber not in (CorrectItemNumber,isnull(CorrectItemNumber2,0),isnull(CorrectItemNumber3,0),isnull(CorrectItemNumber4,0),isnull(CorrectItemNumber5,0),isnull(CorrectItemNumber6,0))
	 and AnswerItemNumber<>0 and QuestionActivityID=1) Wrong_answer
	,
	(SELECT     count(Question.QuestionID)
	FROM         ApplicantAnswer INNER JOIN
						  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
	WHERE     (ApplicantAnswer.ApplicantID = Applicant.ApplicantID) AND (Question.ExamID = ApplicantExam.Examid)
	and  AnswerItemNumber=0 and QuestionActivityID=1) Withot_answer
	FROM         ApplicantExam INNER JOIN
						  Applicant ON ApplicantExam.ApplicantID = Applicant.ApplicantID LEFT OUTER JOIN
						  Major ON Applicant.MajorID = Major.MajorID LEFT OUTER JOIN
						  Grouping ON ApplicantExam.GroupingID = Grouping.GroupingID
	WHERE     (Applicant.ApplicantCode = @ApplicantCode) and ApplicantExam.examid=@examid
GO	
