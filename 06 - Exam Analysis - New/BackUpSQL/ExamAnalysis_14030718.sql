USE [master]
GO
/****** Object:  Database [ExamAnalysis]    Script Date: 18/07/1403 05:24:04 ب.ظ ******/
CREATE DATABASE [ExamAnalysis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YEGANEH_Data', FILENAME = N'D:\Tahami\backup bagheri\ExamAnalysisAnalysis.mdf' , SIZE = 19584KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'YEGANEH_Log', FILENAME = N'D:\Tahami\backup bagheri\ExamAnalysisAnalysis_log.LDF' , SIZE = 504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ExamAnalysis] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExamAnalysis].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [ExamAnalysis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExamAnalysis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExamAnalysis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExamAnalysis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExamAnalysis] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExamAnalysis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExamAnalysis] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [ExamAnalysis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExamAnalysis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExamAnalysis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExamAnalysis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExamAnalysis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExamAnalysis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExamAnalysis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExamAnalysis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExamAnalysis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExamAnalysis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExamAnalysis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExamAnalysis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExamAnalysis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExamAnalysis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExamAnalysis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExamAnalysis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ExamAnalysis] SET  MULTI_USER 
GO
ALTER DATABASE [ExamAnalysis] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [ExamAnalysis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExamAnalysis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExamAnalysis] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ExamAnalysis] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ExamAnalysis', N'ON'
GO
ALTER DATABASE [ExamAnalysis] SET QUERY_STORE = OFF
GO
USE [ExamAnalysis]
GO
/****** Object:  User [YeganehCorporate_ExamAnalysis]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
CREATE USER [YeganehCorporate_ExamAnalysis] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCorporate_ExamAnalysis]
GO
/****** Object:  User [yeganehCompany_ExamAnalysis]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
CREATE USER [yeganehCompany_ExamAnalysis] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[yeganehCompany_ExamAnalysis]
GO
/****** Object:  User [WebLogin]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
CREATE USER [WebLogin] FOR LOGIN [WebLogin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCorporate_ExamAnalysis]
GO
ALTER ROLE [db_owner] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_datareader] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [yeganehCompany_ExamAnalysis]
GO
/****** Object:  Schema [yeganehCompany_ExamAnalysis]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
CREATE SCHEMA [yeganehCompany_ExamAnalysis]
GO
/****** Object:  Schema [YeganehCorporate_ExamAnalysis]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
CREATE SCHEMA [YeganehCorporate_ExamAnalysis]
GO
/****** Object:  UserDefinedFunction [dbo].[CalcFullPoint]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  Function [dbo].[CalcFullPoint](@ExamID int)

returns float   AS BEGIN 
declare @FP float

	select @FP=sum( Coefficient)
	FROM         Question
	WHERE     ( ExamID = @ExamID) and (questionactivityid<>2)

	select @FP=CorrectItemPoint*@FP
	from Exam 
	WHERE     ( ExamID = @ExamID)


Return @FP

end


GO
/****** Object:  UserDefinedFunction [dbo].[delphiType]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[delphiType] (@typeName varchar(100))  
RETURNS varchar(20) AS  
BEGIN 
Return
(case  
when  @typeName in ('int','bigint','smallint') then 'integer'
when  @typeName in ('tinyint') then 'integer'
when  @typeName in ('bit') then 'boolean'
when  @typeName in ('varchar','char','sysname','text','shamsiDate','tel','path','time') then 'string'
when  @typeName in ('nvarchar','ntext') then 'widestring'
when  @typeName in ('sql_variant') then 'variant'
when  @typeName in ('float') then 'real'  end)
END




GO
/****** Object:  UserDefinedFunction [dbo].[GenerateBarcode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GenerateBarcode]
(
	@Input varchar(12)
)
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
/****** Object:  UserDefinedFunction [dbo].[GetEqualQuestionNumber]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GetEqualQuestionNumber] (@QuestionId int,@GroupExamid int ,@Type bit)
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
/****** Object:  UserDefinedFunction [dbo].[GetTitle]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GetTitle](@Examid int )
	returns varchar(max)
	as
	begin
		declare @Title varchar(max)='',			
				@CT varchar(200)
		DECLARE _cursor CURSOR FOR
		select distinct  isnull(c.CourseTitle ,'ساير دروس')
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
/****** Object:  UserDefinedFunction [dbo].[InternalConsistency]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 


CREATE function [dbo].[InternalConsistency](@examid int)
returns float
begin
 declare @n int,@Qn int
declare @tmp table(applicantid int, half tinyint, point int)
SELECT     @n=COUNT(*)
FROM         ApplicantExam
WHERE     (ExamID = @examid)
select @Qn =1+count(*)/2 from question where examid=@examid
insert into @tmp
SELECT    applicantid, number/@qn  half,sum(case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) or questionactivityid=3 then CorrectItemPoint else 0 end +case when 
AnswerItemNumber=0 then BlankItemPoint else 0 end+
case when AnswerItemNumber not in (0,CorrectItemNumber,CorrectItemNumber2) then WrongItemPoint else 0 end) point  
FROM         ApplicantAnswer INNER JOIN
                      Question ON ApplicantAnswer.QuestionID = Question.QuestionID INNER JOIN
                      Exam ON Question.ExamID = Exam.ExamID  
where exam.examid=@examid and questionactivityid in (1,3)
group by applicantid,number/@Qn
order by 2
declare @sx bigint,@sy bigint,@sxy bigint,@sx2 bigint,@sy2 bigint,@r float ,@p float
select @sxy=sum(m1.point*m2.point)
from @tmp m1,@tmp m2 
where m1.applicantid=m2.applicantid and m1.half=0 and m2.half=1
select @sx=sum(point),@sx2=sum(point*point)
from @tmp
where half=0
select @sy=sum(point),@sy2=sum(point*point)
from @tmp
where half=1
set @r=(@n*@sxy-@sx*@sy+.000001)/sqrt((@n*@sx2-@sx*@sx)*(@n*@sy2-@sy*@sy))
return((3*@r)/(2+@r))
end




GO
/****** Object:  UserDefinedFunction [dbo].[MiladiLeapyear]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[MiladiLeapyear](@y int)
RETURNS int AS  
BEGIN
     if ((@y%4=0) and (@y%100<>0)) or ((@y%100=0) and ((@y/100)%4=0))
return 1 
 
return 0
END




GO
/****** Object:  UserDefinedFunction [dbo].[NTH_WORD]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[NTH_WORD]
(
	@str VARCHAR(8000), 
	@substr VARCHAR(255) = ' ', 
	@occurrence INT
)
	RETURNS varchar(255)
AS
BEGIN

	DECLARE @found INT = @occurrence,
			@word VARCHAR(8000),
			@text VARCHAR(100),
			@end int;

	-- Start an infinite loop that will only end when the Nth word is found
	WHILE 1=1
	BEGIN
		IF @found = 1
		BEGIN
			SET @end = CHARINDEX(@substr, @str)
			IF @end IS NULL or @end = 0
			BEGIN
				SET @end = LEN(@str)
			END
			SET @text = LEFT(@str,@end)
			BREAK
		END;
		-- If the selected word is beyond the number of words, NULL is returned
		IF CHARINDEX(@substr, @str) IS NULL or CHARINDEX(@substr, @str) = 0
		BEGIN
			SET @text = NULL;
			BREAK;
		END

		-- Each iteration of the loop will remove the first word fromt the left
		SET @str = RIGHT(@str, LEN(@str)-CHARINDEX(@substr, @str));
		SET @found = @found - 1
	END

	RETURN @text;
END
GO
/****** Object:  UserDefinedFunction [dbo].[R20]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[R20](@examid int)
RETURNS float  AS  
BEGIN 
declare @Qn int,@app int,@pq float,@vp float
select @app=count(*), @vp=VARP(FinalMark) 
from ApplicantExam
where examid=@examid
select @qn=count(*)
from question
where examid=@examid
set @pq=0
select @pq=@pq+
(SELECT count(*) FROM   ApplicantAnswer
WHERE    QuestionID = q.QuestionID and AnswerItemNumber  in (isnull(CorrectItemNumber,'+'), isnull(CorrectItemNumber2,'+')))*
(SELECT count(*) FROM   ApplicantAnswer
WHERE    QuestionID = q.QuestionID and AnswerItemNumber  not in (isnull(CorrectItemNumber,'+'), isnull(CorrectItemNumber2,'+')))/cast(@app*@app as float)
from question  q
where questionactivityid =1 and examid=@examid
if @vp<>0 
return(round( (@qn/ (@qn-1.0) )*(  1-@pq/@vp  ),3)   )
return(0)
END





GO
/****** Object:  UserDefinedFunction [dbo].[RPBIS]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[RPBIS](@QuestionID int)
returns float
begin
declare @n0 float,@n1 float,@n float,@x0 float,@x1 float,@sx float
SELECT    
@x0=avg(case when (AnswerItemNumber<>CorrectItemNumber) then FinalMark else null end),
@x1=avg(case when (AnswerItemNumber=CorrectItemNumber) then FinalMark  else null end),
@n0=sum(case when (AnswerItemNumber<>CorrectItemNumber) then 1 else 0 end),
@n1=sum(case when (AnswerItemNumber=CorrectItemNumber) then 1 else 0 end),
@sx=stdev(finalmark)
FROM         Question 
 INNER JOIN   ApplicantAnswer ON Question.QuestionID = ApplicantAnswer.QuestionID 
 INNER JOIN  ApplicantExam ON ApplicantAnswer.ApplicantID = ApplicantExam.ApplicantID AND Question.ExamID = ApplicantExam.ExamID
WHERE      (ApplicantAnswer.QuestionID = @QuestionID)
set @n=@n0+@n1
return(isnull(((@x1-@x0)/@sx)*sqrt(@n0*@n1/(@n*(@n-1))),0))
end





GO
/****** Object:  UserDefinedFunction [dbo].[Select_Applicant_by_Examid_Tahlil_PERCENT_GHABOLI]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[Select_Applicant_by_Examid_Tahlil_PERCENT_GHABOLI]
(
	@EXAMID INT
)
RETURNS VARCHAR(100) 
AS
BEGIN
	DECLARE	@RES NUMERIC(6,2);
	DECLARE	@RecCount NUMERIC(6,2);

	SELECT @RecCount = COUNT(*)
	FROM Applicant    
		INNER JOIN ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
		left  JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
		left  JOIN Major  ON Applicant.MajorID = Major.MajorID
		left  join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
		LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	WHERE	ExamId=@ExamId

	SELECT @RES = COUNT(*)
	FROM Applicant    
		INNER JOIN ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
		left  JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
		left  JOIN Major  ON Applicant.MajorID = Major.MajorID
		left  join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
		LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	where ApplicantExam.Accepted = 1 AND ExamId=@ExamId

	RETURN(ROUND((@RES/@RecCount)*100,2))

END
GO
/****** Object:  UserDefinedFunction [dbo].[Select_Applicant_by_Examid_Tahlil_PERCENT_RADI]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[Select_Applicant_by_Examid_Tahlil_PERCENT_RADI] 
(
	@EXAMID INT
)
RETURNS VARCHAR(100) 
AS
BEGIN
	DECLARE @RES NUMERIC(6,2);
	DECLARE @RecCount NUMERIC(6,2);

	SELECT @RecCount = COUNT(*)
	FROM Applicant    
		INNER JOIN ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
		left  JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
		left  JOIN Major  ON Applicant.MajorID = Major.MajorID
		left  join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
		LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	WHERE ExamId=@ExamId

	SELECT @RES = COUNT(*)
	FROM Applicant    
		INNER JOIN ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
		left  JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
		left  JOIN Major  ON Applicant.MajorID = Major.MajorID
		left  join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
		LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	where ApplicantExam.Accepted <> 1 AND ExamId=@ExamId

	RETURN(ROUND((@RES/@RecCount)*100,2))

END
GO
/****** Object:  UserDefinedFunction [dbo].[Select_Applicant_by_Examid_Tahlil_TEDAD_GHABOLI]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[Select_Applicant_by_Examid_Tahlil_TEDAD_GHABOLI] 
(
	@EXAMID INT
)
RETURNS VARCHAR(100) 
AS
BEGIN

	DECLARE @RES INT;
	SET @RES = 0;

	SELECT @RES = COUNT(*)
	FROM Applicant    
		INNER JOIN ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
		left  JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
		left  JOIN Major  ON Applicant.MajorID = Major.MajorID
		left  join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
		LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	where ApplicantExam.Accepted = 1 AND ExamId=@ExamId

	RETURN(@RES)
END
GO
/****** Object:  UserDefinedFunction [dbo].[Select_Applicant_by_Examid_Tahlil_TEDAD_RADI]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[Select_Applicant_by_Examid_Tahlil_TEDAD_RADI] 
(
	@EXAMID INT
)
RETURNS VARCHAR(100) 
AS
BEGIN
                      
	DECLARE @RES INT;
	SET @RES = 0;

	SELECT @RES = COUNT(*)
	FROM Applicant    
		INNER JOIN ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
		left  JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
		left  JOIN Major  ON Applicant.MajorID = Major.MajorID
		left  join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
		LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
	where ApplicantExam.Accepted <> 1 AND ExamId=@ExamId

	RETURN(@RES)
END
GO
/****** Object:  UserDefinedFunction [dbo].[Shamsi]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  Function [dbo].[Shamsi](@DATE datetime)
returns char(10)   AS BEGIN 
Declare @mi smallint,@sy smallint,@sm smallint,@sd smallint,@i    smallint,
        @si smallint,@my smallint,@mm smallint,@md smallint,@Diff smallint,@result varchar(10)
Set @my=datepart(yy,@date) 
Set @mm=datepart(mm,@date) 
Set @md=datepart(dd,@date)
set @mi=0 
set @i=0
while @i<@mm-1 
 begin
    set @i=@i+1
    set @mi=@mi+case when @i in (1,3,5,7,8,10,12) then 31
                     when @i=2 then 28+dbo.MiladiLeapYear(@my) else 30 end
 end
set @mi=@mi+@md 
set @sy=@my-622
set @Diff=79-dbo.ShamsiLeapYear(@sy)
set @si= case when @mi>@Diff then 0              else 365              end+@mi-@Diff
set @sy= case when @mi>@Diff then 1              else 0                end+@sy
set @sm= case when @si<187   then ((@si-1)/31)+1 else 7+((@si-187)/30) end
set @sd= case when @si<187   then ((@si-1)%31)+1 else ((@si-187)%30)+1 end
Return(                                      cast(@sy as varchar(4))+'/'+
       Case when @sm<10 then '0' else '' end+cast(@sm as varchar(2))+'/'+
       case when @sd<10 then '0' else '' end+cast(@sd as varchar(2)))
end




GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiLeapYear]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ShamsiLeapYear](@y int) 
RETURNS tinyint  
AS BEGIN
declare @s tinyint
  set @s=(@y-22)%33
  Return(case when (@s<>32) and (@s%4 = 0) then  1 else 0 end )
END




GO
/****** Object:  UserDefinedFunction [dbo].[StandardError]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[StandardError]
(
	@examid int
)
RETURNS float  
AS  
BEGIN 
	
	DECLARE @SQLString NVARCHAR(500)
	DECLARE @ParmDefinition NVARCHAR(500)
	DECLARE @parmIN int
	DECLARE @parmRET1 float

	SET @parmIN= CONVERT(nvarchar(10),@ExamID)
	SET @SQLString=N'EXEC SP_KR20 @parm, @parm1OUT OUTPUT'
	SET @ParmDefinition=N'@parm int, @parm1OUT float OUTPUT'

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
/****** Object:  Table [dbo].[TrainingCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCourse](
	[TrainingCourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [smallint] NOT NULL,
	[TermCode] [char](3) NULL,
	[GrourpCode] [varchar](5) NOT NULL,
	[StartDate] [char](10) NULL,
	[TeacherID] [smallint] NOT NULL,
	[ExamID] [int] NULL,
 CONSTRAINT [PK_TrainingCourse] PRIMARY KEY CLUSTERED 
(
	[TrainingCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [smallint] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](15) NULL,
	[CourseTitle] [nvarchar](60) NOT NULL,
	[NumberOfUnits] [real] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY NONCLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
CREATE CLUSTERED INDEX [idx] ON [dbo].[Course]
(
	[CourseTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VTrainingCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTrainingCourse]
AS
SELECT        dbo.Course.CourseCode, dbo.Course.CourseTitle, dbo.TrainingCourse.*
FROM            dbo.Course INNER JOIN
                         dbo.TrainingCourse ON dbo.Course.CourseID = dbo.TrainingCourse.CourseID
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [smallint] IDENTITY(1,1) NOT NULL,
	[TeacherCode] [varchar](20) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FullName] [nvarchar](80) NOT NULL,
	[Title] [nvarchar](20) NULL,
	[PhoneNumbers] [nvarchar](100) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Teacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Teacher]
AS
SELECT     TeacherID, FullName
FROM         dbo.Teacher

GO
/****** Object:  Table [dbo].[AnswerKey]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerKey](
	[AnswerKeyID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantExamID] [int] NOT NULL,
	[AnswerKey] [varchar](1000) NULL,
 CONSTRAINT [PK_AnswerKey] PRIMARY KEY CLUSTERED 
(
	[AnswerKeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicant](
	[ApplicantID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantCode] [varchar](20) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FullName] [nvarchar](80) NULL,
	[MajorID] [smallint] NULL,
	[Termcode] [char](3) NULL,
	[FatherName] [nvarchar](50) NULL,
	[CustomField1] [nvarchar](50) NULL,
	[CustomField2] [nvarchar](50) NULL,
	[CustomField3] [nvarchar](100) NULL,
	[CustomField4] [nvarchar](100) NULL,
	[CustomField5] [nvarchar](100) NULL,
	[Pic] [image] NULL,
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantAnswer]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantAnswer](
	[ApplicantAnswerID] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[AnswerItemNumber] [tinyint] NOT NULL,
 CONSTRAINT [PK_ApplicantAnswer] PRIMARY KEY CLUSTERED 
(
	[ApplicantAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantCourse](
	[ApplicantCourseID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[TrainingCourseID] [int] NOT NULL,
	[EducationMark] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantData]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantData](
	[ApplicantID] [int] NOT NULL,
	[ApplicantPicture] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantExam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantExam](
	[ApplicantExamID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[FinalMark] [real] NULL,
	[GroupingID] [tinyint] NULL,
	[ord] [int] NULL,
	[Accepted] [bit] NULL,
	[GroupExamId] [int] NULL,
	[SeatNumber] [int] NULL,
 CONSTRAINT [PK_ApllicantExam] PRIMARY KEY CLUSTERED 
(
	[ApplicantExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantSeatNumber]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantSeatNumber](
	[SeatNumberID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[CourseID] [smallint] NOT NULL,
	[SeatNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_StudentSeatNumber] PRIMARY KEY CLUSTERED 
(
	[SeatNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ddd]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ddd](
	[mmn] [float] NULL,
	[cn] [nvarchar](255) NULL,
	[cc] [float] NULL,
	[st] [float] NULL,
	[fn] [nvarchar](255) NULL,
	[ln] [nvarchar](255) NULL,
	[نام استاد] [nvarchar](255) NULL,
	[mm] [float] NULL,
	[m] [nvarchar](255) NULL,
	[مکان امتحان] [nvarchar](255) NULL,
	[CustomField2] [float] NULL,
	[ApplicantFullname] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESIGN_REP_01]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESIGN_REP_01](
	[ITEM_01] [varchar](50) NULL,
	[ITEM_02] [varchar](50) NULL,
	[ITEM_03] [varchar](50) NULL,
	[ITEM_04] [varchar](50) NULL,
	[ITEM_05] [varchar](50) NULL,
	[ITEM_06] [varchar](50) NULL,
	[ITEM_07] [varchar](50) NULL,
	[ITEM_08] [varchar](50) NULL,
	[ITEM_09] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Difficulty]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Difficulty](
	[DifficultyID] [tinyint] NOT NULL,
	[DifficultyTitle] [nvarchar](50) NOT NULL,
	[MinValue] [real] NOT NULL,
	[MaxValue] [real] NOT NULL,
 CONSTRAINT [PK_Difficulty] PRIMARY KEY CLUSTERED 
(
	[DifficultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discrimination]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discrimination](
	[DiscriminationID] [tinyint] NOT NULL,
	[DiscriminationTitle] [nvarchar](50) NOT NULL,
	[Minvalue] [real] NOT NULL,
	[MaxValue] [real] NOT NULL,
 CONSTRAINT [PK_Dissociation] PRIMARY KEY CLUSTERED 
(
	[DiscriminationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationGroup]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationGroup](
	[EducationGroupID] [smallint] IDENTITY(1,1) NOT NULL,
	[EducationGroupCode] [varchar](50) NULL,
	[EducationGroupTitle] [nvarchar](50) NULL,
	[FacultyID] [smallint] NULL,
 CONSTRAINT [PK_EducationGroup] PRIMARY KEY CLUSTERED 
(
	[EducationGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamTitle] [nvarchar](50) NOT NULL,
	[MainCourseID] [smallint] NULL,
	[MainDesignerTeacherID] [smallint] NULL,
	[ExamDate] [char](10) NULL,
	[CorrectItemPoint] [real] NULL,
	[DamagedItemPoint] [real] NULL,
	[BlankItemPoint] [real] NULL,
	[MinPassedMark] [real] NULL,
	[ExamTypeID] [tinyint] NULL,
	[Number_of_Items] [tinyint] NOT NULL,
	[Number_of_Question] [int] NOT NULL,
	[number_of_applicant] [int] NULL,
	[TexFormatID] [int] NULL,
	[AnswerKey] [varchar](1000) NULL,
	[Difficulty] [real] NULL,
	[Discrimination] [real] NULL,
	[StandardError] [real] NULL,
	[Alpha] [real] NULL,
	[Reliability] [float] NULL,
	[ExamVariance] [real] NULL,
	[NumberOf_1item_Question] [smallint] NULL,
	[NumberOf_2item_Question] [smallint] NULL,
	[NumberOf_3item_Question] [smallint] NULL,
	[NumberOf_4item_Question] [smallint] NULL,
	[NumberOf_5item_Question] [smallint] NULL,
	[RPBIS] [real] NULL,
	[TermCode] [char](3) NULL,
	[KR20] [real] NULL,
	[MaxMark] [float] NULL,
	[NumberOf_6item_Question] [smallint] NULL,
	[EducationGroupID] [int] NULL,
	[TeacherID] [int] NULL,
	[CustomField1] [nvarchar](50) NULL,
	[CustomField2] [nvarchar](50) NULL,
	[CustomField3] [nvarchar](50) NULL,
	[CustomField4] [nvarchar](50) NULL,
	[CustomField5] [nvarchar](50) NULL,
	[GroupExamid] [int] NULL,
	[WrongItemPoint] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamData]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamData](
	[ExamDataID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_ExamData] PRIMARY KEY CLUSTERED 
(
	[ExamDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamEqualQuestion]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamEqualQuestion](
	[ExamEqualQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[ExamId] [int] NULL,
	[GroupExamId] [int] NULL,
	[QuestionNumber] [int] NULL,
	[EqualQuestionNumber] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamText]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamText](
	[ExamID] [int] NOT NULL,
	[ExamImage] [image] NULL,
 CONSTRAINT [PK_ExamText] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamType]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamType](
	[ExamTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ExamTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExamType] PRIMARY KEY CLUSTERED 
(
	[ExamTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExPositive]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExPositive](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NULL,
	[ApplicantId] [nvarchar](500) NULL,
	[Score] [nvarchar](600) NULL,
	[SumScore] [nvarchar](600) NULL,
	[Desc] [nvarchar](500) NULL,
 CONSTRAINT [PK_ExPositive] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyID] [smallint] IDENTITY(1,1) NOT NULL,
	[FacultyTitle] [nvarchar](50) NOT NULL,
	[FacultyCode] [varchar](50) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gosh]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gosh](
	[mm] [float] NULL,
	[نام گروه آموزشي] [nvarchar](255) NULL,
	[کد تقويم] [float] NULL,
	[cn] [nvarchar](255) NULL,
	[cc] [float] NULL,
	[کد کلاس] [float] NULL,
	[st] [float] NULL,
	[fn] [nvarchar](255) NULL,
	[ln] [nvarchar](255) NULL,
	[نام استاد] [nvarchar](255) NULL,
	[m] [nvarchar](255) NULL,
	[مکان امتحان] [nvarchar](255) NULL,
	[CustomField2] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupExam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupExam](
	[GroupExamId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Title] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grouping]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grouping](
	[GroupingID] [tinyint] IDENTITY(1,1) NOT NULL,
	[GroupingTitle] [nvarchar](50) NOT NULL,
	[BeginInterval] [real] NULL,
	[EndInterval] [real] NULL,
 CONSTRAINT [PK_Group27] PRIMARY KEY CLUSTERED 
(
	[GroupingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTemplate]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Document] [image] NULL,
	[Title] [varchar](50) NULL,
 CONSTRAINT [PK_LetterTemplate] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[LevelID] [tinyint] IDENTITY(1,1) NOT NULL,
	[LevelTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[MajorID] [smallint] IDENTITY(1,1) NOT NULL,
	[MajorCode] [varchar](20) NULL,
	[MajorTitle] [nvarchar](60) NOT NULL,
	[EducationGroupID] [smallint] NULL,
	[LevelID] [smallint] NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oragh]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oragh](
	[mm] [float] NULL,
	[نام گروه آموزشي] [nvarchar](255) NULL,
	[کد تقويم] [float] NULL,
	[cn] [nvarchar](255) NULL,
	[cc] [float] NULL,
	[کد کلاس] [float] NULL,
	[st] [float] NULL,
	[fn] [nvarchar](255) NULL,
	[ln] [nvarchar](255) NULL,
	[نام استاد] [nvarchar](255) NULL,
	[m] [nvarchar](255) NULL,
	[مکان امتحان] [nvarchar](255) NULL,
	[CustomField2] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oragh1]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oragh1](
	[شناسه سازمان] [float] NULL,
	[شناسه گروه آموزشي] [float] NULL,
	[شناسه دانشکده] [float] NULL,
	[mm] [float] NULL,
	[نام گروه آموزشي] [nvarchar](255) NULL,
	[نام دانشکده] [nvarchar](255) NULL,
	[کد دانشکده] [float] NULL,
	[شناسه تقويم] [float] NULL,
	[نام تقويم] [nvarchar](255) NULL,
	[کد تقويم] [float] NULL,
	[cn] [nvarchar](255) NULL,
	[cc] [float] NULL,
	[کد کلاس] [float] NULL,
	[st] [float] NULL,
	[fn] [nvarchar](255) NULL,
	[ln] [nvarchar](255) NULL,
	[نام استاد] [nvarchar](255) NULL,
	[m] [nvarchar](255) NULL,
	[مکان امتحان] [nvarchar](255) NULL,
	[CustomField2] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oragh33]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oragh33](
	[mm] [float] NULL,
	[نام گروه آموزشي] [nvarchar](255) NULL,
	[کد تقويم] [float] NULL,
	[cn] [nvarchar](255) NULL,
	[cc] [float] NULL,
	[کد کلاس] [float] NULL,
	[st] [float] NULL,
	[fn] [nvarchar](255) NULL,
	[ln] [nvarchar](255) NULL,
	[نام استاد] [nvarchar](255) NULL,
	[m] [nvarchar](255) NULL,
	[مکان امتحان] [nvarchar](255) NULL,
	[CustomField2] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oragh402]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oragh402](
	[m] [float] NULL,
	[نام گروه آموزشي] [nvarchar](255) NULL,
	[کد تقويم] [float] NULL,
	[cn] [nvarchar](255) NULL,
	[cc] [float] NULL,
	[کد کلاس] [float] NULL,
	[st] [float] NULL,
	[fn] [nvarchar](255) NULL,
	[ln] [nvarchar](255) NULL,
	[نام استاد] [nvarchar](255) NULL,
	[mm] [nvarchar](255) NULL,
	[مکان امتحان] [nvarchar](255) NULL,
	[CustomField2] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qqq]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qqq](
	[st] [nvarchar](255) NULL,
	[ns] [nvarchar](255) NULL,
	[ترم] [nvarchar](255) NULL,
	[cc] [nvarchar](255) NULL,
	[cn] [nvarchar](255) NULL,
	[s] [nvarchar](255) NULL,
	[m] [nvarchar](255) NULL,
	[مقطع] [nvarchar](255) NULL,
	[cg] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[Number] [smallint] NOT NULL,
	[DesignerTeacherID] [smallint] NULL,
	[CourseID] [smallint] NULL,
	[Correct] [smallint] NULL,
	[Answerd] [smallint] NULL,
	[All_Count] [smallint] NULL,
	[Wrong] [smallint] NULL,
	[Difficulty] [float] NULL,
	[Discrimination] [float] NULL,
	[G1_0] [smallint] NULL,
	[G3_0] [smallint] NULL,
	[all0] [smallint] NULL,
	[G1_1] [smallint] NULL,
	[G3_1] [smallint] NULL,
	[all1] [smallint] NULL,
	[G1_2] [smallint] NULL,
	[G3_2] [smallint] NULL,
	[all2] [smallint] NULL,
	[G1_3] [smallint] NULL,
	[G3_3] [smallint] NULL,
	[all3] [smallint] NULL,
	[G1_4] [smallint] NULL,
	[G3_4] [smallint] NULL,
	[all4] [smallint] NULL,
	[G1_5] [smallint] NULL,
	[G3_5] [smallint] NULL,
	[all5] [smallint] NULL,
	[number_Of_Item] [tinyint] NULL,
	[QuestionActivityID] [tinyint] NULL,
	[TemporaryActive] [bit] NULL,
	[Coefficient] [float] NOT NULL,
	[RPBIS] [float] NULL,
	[CorrectItemNumber] [tinyint] NULL,
	[CorrectItemNumber2] [tinyint] NULL,
	[Taxonomy] [tinyint] NULL,
	[ObjectionNumber] [tinyint] NULL,
	[all6] [smallint] NULL,
	[CorrectItemNumber3] [tinyint] NULL,
	[CorrectItemNumber4] [tinyint] NULL,
	[CorrectItemNumber5] [tinyint] NULL,
	[CorrectItemNumber6] [tinyint] NULL,
	[CourseMark] [float] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionActivity]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionActivity](
	[QuestionActivityID] [tinyint] NOT NULL,
	[QuestionActivityTitle] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_QuestionActivity] PRIMARY KEY CLUSTERED 
(
	[QuestionActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionBody]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionBody](
	[QuestionBodyID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Text] [nvarchar](512) NOT NULL,
	[WordBody] [image] NOT NULL,
	[SubCourseID] [int] NULL,
	[CorrectItem] [tinyint] NOT NULL,
 CONSTRAINT [PK_QuestionBody] PRIMARY KEY CLUSTERED 
(
	[QuestionBodyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionDelete]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionDelete](
	[QuestionID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[Number] [smallint] NOT NULL,
	[DesignerTeacherID] [smallint] NULL,
	[CourseID] [smallint] NULL,
	[Correct] [smallint] NULL,
	[Answerd] [smallint] NULL,
	[All_Count] [smallint] NULL,
	[Wrong] [smallint] NULL,
	[Difficulty] [float] NULL,
	[Discrimination] [float] NULL,
	[G1_0] [smallint] NULL,
	[G3_0] [smallint] NULL,
	[all0] [smallint] NULL,
	[G1_1] [smallint] NULL,
	[G3_1] [smallint] NULL,
	[all1] [smallint] NULL,
	[G1_2] [smallint] NULL,
	[G3_2] [smallint] NULL,
	[all2] [smallint] NULL,
	[G1_3] [smallint] NULL,
	[G3_3] [smallint] NULL,
	[all3] [smallint] NULL,
	[G1_4] [smallint] NULL,
	[G3_4] [smallint] NULL,
	[all4] [smallint] NULL,
	[G1_5] [smallint] NULL,
	[G3_5] [smallint] NULL,
	[all5] [smallint] NULL,
	[number_Of_Item] [tinyint] NULL,
	[QuestionActivityID] [tinyint] NULL,
	[TemporaryActive] [bit] NULL,
	[Coefficient] [float] NOT NULL,
	[RPBIS] [float] NULL,
	[CorrectItemNumber] [tinyint] NULL,
	[CorrectItemNumber2] [tinyint] NULL,
	[CorrectItemNumber3] [tinyint] NULL,
	[CorrectItemNumber4] [tinyint] NULL,
	[CorrectItemNumber5] [tinyint] NULL,
	[CorrectItemNumber6] [tinyint] NULL,
	[Taxonomy] [tinyint] NULL,
	[ObjectionNumber] [tinyint] NULL,
	[all6] [smallint] NULL,
	[CourseMark] [float] NULL,
 CONSTRAINT [PK_QuestionDelete] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[File] [image] NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROND_INF]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROND_INF](
	[ROND] [int] NULL,
	[EXAMID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCourse](
	[SubCourseID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[SubCourseTitle] [nvarchar](50) NOT NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_SubCourse] PRIMARY KEY CLUSTERED 
(
	[SubCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Access]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Access](
	[AccessID] [smallint] IDENTITY(1,1) NOT NULL,
	[AccessTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_AccessAction]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_AccessAction](
	[ActionAccessID] [int] IDENTITY(1,1) NOT NULL,
	[AccessID] [smallint] NOT NULL,
	[ActionID] [smallint] NOT NULL,
	[HasAccess] [bit] NOT NULL,
 CONSTRAINT [PK_ActionAccess] PRIMARY KEY CLUSTERED 
(
	[ActionAccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Action]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Action](
	[ActionID] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [varchar](50) NOT NULL,
	[ActionCaption] [nvarchar](50) NOT NULL,
	[ActionGroupID] [smallint] NOT NULL,
 CONSTRAINT [PK_ApplicationAction] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_ActionGroup]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_ActionGroup](
	[ActionGroupID] [smallint] IDENTITY(1,1) NOT NULL,
	[ActionGroupTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationForm] PRIMARY KEY CLUSTERED 
(
	[ActionGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Field]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Field](
	[FieldID] [smallint] IDENTITY(1,1) NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[FieldTitle] [nvarchar](50) NULL,
	[TableID] [smallint] NOT NULL,
 CONSTRAINT [PK_Sys_Field] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Setting]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Setting](
	[SettingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[VariableName] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](255) NULL,
 CONSTRAINT [PK_sys_Setting] PRIMARY KEY CLUSTERED 
(
	[SettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Table]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Table](
	[TableID] [smallint] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[TableTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_sys_table] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Template]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Template](
	[TemplateID] [smallint] IDENTITY(1,1) NOT NULL,
	[TemplateTitle] [nvarchar](50) NOT NULL,
	[Documnet] [image] NULL,
	[TableID] [smallint] NULL,
 CONSTRAINT [PK_sys_Template] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_User]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[AccessID] [tinyint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAppVer]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppVer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ver] [varchar](50) NOT NULL,
	[changeDate] [datetime] NOT NULL,
	[Descript] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblAppVer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextFormat]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextFormat](
	[TextFormatID] [int] IDENTITY(1,1) NOT NULL,
	[TextFormatTitle] [nvarchar](100) NOT NULL,
	[StnoStart] [smallint] NOT NULL,
	[StnoLength] [smallint] NOT NULL,
	[MajorStart] [smallint] NOT NULL,
	[MajorLength] [smallint] NOT NULL,
	[TermcodeStart] [smallint] NOT NULL,
	[TermCodeLength] [smallint] NOT NULL,
	[CourseStart] [smallint] NOT NULL,
	[CourseLength] [smallint] NOT NULL,
	[CourseGroupStart] [smallint] NOT NULL,
	[CourseGroupLength] [smallint] NOT NULL,
	[AnswerStart] [smallint] NOT NULL,
	[indiscernibleChar] [char](1) NULL,
	[WithoutAnswerChar] [char](1) NULL,
	[KeyLineNumber] [smallint] NOT NULL,
	[AnswerStartLineNumber] [smallint] NOT NULL,
	[GroupExamStart] [smallint] NULL,
	[AnserEnd] [int] NULL,
	[ExPositive_Start] [int] NULL,
	[ExPositive_End] [int] NULL,
 CONSTRAINT [PK_TextFormat] PRIMARY KEY CLUSTERED 
(
	[TextFormatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDefaultReport]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDefaultReport](
	[userID] [int] NOT NULL,
	[reportID] [int] NOT NULL,
 CONSTRAINT [PK_UserDefaultReport] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VERSION_INFO]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VERSION_INFO](
	[IDX] [int] NOT NULL,
	[INFO_] [varchar](500) NULL,
	[DATE_] [nchar](10) NULL,
	[VERSION_] [varchar](50) NULL,
	[CUSTOMER] [varchar](100) NULL,
	[SQL_SP] [varchar](100) NULL,
	[DELPHI_FORM] [varchar](500) NULL,
	[SOFTWARE_NAME] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_Number_of_Question]  DEFAULT ((0)) FOR [Number_of_Question]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF__Exam__MaxMark__68687968]  DEFAULT ((20)) FOR [MaxMark]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_QuestionActivityID]  DEFAULT (1) FOR [QuestionActivityID]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_Coefficient]  DEFAULT (1) FOR [Coefficient]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT (1) FOR [Taxonomy]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT (0) FOR [ObjectionNumber]
GO
ALTER TABLE [dbo].[QuestionBody] ADD  CONSTRAINT [DF_QuestionBody_CorrectItem]  DEFAULT (0) FOR [CorrectItem]
GO
ALTER TABLE [dbo].[SubCourse] ADD  CONSTRAINT [DF_SubCourse_ParentID]  DEFAULT (0) FOR [ParentID]
GO
ALTER TABLE [dbo].[TextFormat] ADD  DEFAULT (0) FOR [AnswerStartLineNumber]
GO
ALTER TABLE [dbo].[TextFormat] ADD  CONSTRAINT [DF_TextFormat_AnserEnd]  DEFAULT ((0)) FOR [AnserEnd]
GO
ALTER TABLE [dbo].[TextFormat] ADD  CONSTRAINT [DF_TextFormat_ExPositive_Start]  DEFAULT ((0)) FOR [ExPositive_Start]
GO
ALTER TABLE [dbo].[TextFormat] ADD  CONSTRAINT [DF_TextFormat_ExPositive_End]  DEFAULT ((0)) FOR [ExPositive_End]
GO
ALTER TABLE [dbo].[ApplicantSeatNumber]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantSeatNumber_Applicant] FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicant] ([ApplicantID])
GO
ALTER TABLE [dbo].[ApplicantSeatNumber] CHECK CONSTRAINT [FK_ApplicantSeatNumber_Applicant]
GO
ALTER TABLE [dbo].[ApplicantSeatNumber]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantSeatNumber_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[ApplicantSeatNumber] CHECK CONSTRAINT [FK_ApplicantSeatNumber_Course]
GO
/****** Object:  StoredProcedure [dbo].[Analysis_Exam_Temporary]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Analysis_Exam_Temporary]
	(@ExamID	int)
AS
  Select *
  From exam 
  Where ExamID = @ExamID
GO
/****** Object:  StoredProcedure [dbo].[Analysis_Exam_Total]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Analysis_Exam_Total]
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
	Difficulty=round((select avg(Difficulty) from #question),3),
	Discrimination= round((select avg(Discrimination) from #question),3),
	RPBIS=round((select avg(RPBIS) from #question),3),
	StandardError=  @parmRET1,
	kr20  = @parmRET1,
	Alpha = @parmRET1 ,
	ExamVariance=round((select varp(finalmark) from #finMark ),3)
	FROM    Exam
	where Exam.examid = @examid

GO
/****** Object:  StoredProcedure [dbo].[Analysis_Question_byExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Analysis_Question_byExamID]
		(@ExamID	[int])
	AS

	 IF OBJECT_ID('tempdb..##m') IS NOT NULL DROP TABLE ##m	

	 declare @select nvarchar(4000)
	 set   @select='SELECT Question.QuestionID  , 
	 sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 
end)  Correct,
	 sum ( case when AnswerItemNumber in (1,2,3,4,5,6) then 1 else 0 end) Answerd,
	 count(*) All_Count,
	 sum ( case when AnswerItemNumber not in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) and 
AnswerItemNumber<>0 then 1 else 0 end) Wrong,
	Round( sum ( case when AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 
else 0 end) /
	cast(count(AnswerItemNumber )as float),3) as  Di,
	sum ( case when  GroupingID=3  then 1 else 0 end) Group3,
	sum ( case when  GroupingID=1  then 1 else 0 end) Group1, 
	sum ( case when  GroupingID=3 and AnswerItemNumber in 
(CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 end) Correct_G3,
	sum ( case when  GroupingID=1 and AnswerItemNumber in 
(CorrectItemNumber,CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,CorrectItemNumber5,CorrectItemNumber6) then 1 else 0 end) Correct_G1,
	0.0 dis
	 '
	declare @Number_Of_Item tinyint
	SELECT     @Number_Of_Item=Number_of_Items
	FROM         Exam
	WHERE     (ExamID = @ExamID)
	declare @ItemNumber tinyint,@GroupingID tinyint
	set @ItemNumber=0 
	while @ItemNumber<=6 /* @Number_Of_Item */
	 begin
	  set @GroupingID=1 
	  while @GroupingID<=3 
	   begin
		 if @GroupingID<>2   
		  set @select=@select+',sum ( case when AnswerItemNumber= '+cast(@ItemNumber as char(1))+' and GroupingID='+cast(@GroupingID as char(1)) +
								' then 1 else 0 end ) G'+cast(@GroupingID as char(1))+'_'+cast(@ItemNumber as char(1))

		 set @GroupingID=@GroupingID+1
	  end  /* @GroupingID */
	  
	  
	  set @select=@select+',
	sum ( case when AnswerItemNumber= '+cast(@ItemNumber as char(1))+ 
	' then 1 else 0 end ) all'+cast(@ItemNumber as char(1))
	 set @ItemNumber=@ItemNumber+1
	end /* @ItemNumber */
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
/****** Object:  StoredProcedure [dbo].[Assign_Applicant_To_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[Assign_Applicant_To_Exam]
@ApplicantID int,@ExamID int
as

if not exists (select *  from ApplicantExam where ApplicantID=@ApplicantID and  ExamID=@ExamID)
INSERT INTO ApplicantExam
                      (ApplicantID, ExamID)
VALUES     (@ApplicantID,@ExamID)




GO
/****** Object:  StoredProcedure [dbo].[Assign_TrainingCourse_To_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Assign_TrainingCourse_To_Exam]
@TrainingCourseID int,@ExamID int
as


UPDATE    TrainingCourse
SET              ExamID = @ExamID
WHERE     (TrainingCourseID = @TrainingCourseID)

INSERT INTO ApplicantExam   (ApplicantID, ExamID)
SELECT     ApplicantID,@ExamID
FROM         ApplicantCourse
WHERE     (TrainingCourseID = @TrainingCourseID) and 
ApplicantID not in (select ApplicantID from ApplicantExam where ExamID=@ExamID)




GO
/****** Object:  StoredProcedure [dbo].[AssignGroupExamToApplicanet]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[AssignGroupExamToApplicanet] (@ExamId int , @Type bit)
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
/****** Object:  StoredProcedure [dbo].[Browse_Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Browse_Applicant]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='
SELECT     Applicant.ApplicantID, Applicant.ApplicantCode, Applicant.FirstName, Applicant.LastName, Applicant.FullName, Applicant.MajorID,
 Applicant.Termcode,  Major.MajorCode, Major.MajorTitle, EducationGroup.EducationGroupCode, EducationGroup.EducationGroupTitle,
Level.LevelTitle,  Major.EducationGroupID, Major.LevelID, EducationGroup.FacultyID, Faculty.FacultyTitle
FROM         Applicant 
LEFT  JOIN    Major         ON Applicant.MajorID = Major.MajorID
LEFT  JOIN   Level        ON Major.LevelID = Level.LevelID
LEFT  JOIN  EducationGroup ON EducationGroup.EducationGroupID = Major.EducationGroupID
LEFT  JOIN  Faculty ON Faculty.FacultyID = EducationGroup.FacultyID '
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by LastName  '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Browse_ApplicantDetail]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Browse_ApplicantDetail]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='
SELECT     Applicant.ApplicantID, Applicant.ApplicantCode, Applicant.FirstName, Applicant.LastName, Applicant.FullName, Applicant.MajorID,
 Applicant.Termcode,  Major.MajorCode, Major.MajorTitle, EducationGroup.EducationGroupCode, EducationGroup.EducationGroupTitle, 
Level.LevelTitle,  Major.EducationGroupID, Major.LevelID, EducationGroup.FacultyID, Faculty.FacultyTitle
FROM         Applicant 
LEFT  JOIN    Major         ON Applicant.MajorID = Major.MajorID
LEFT  JOIN   Level        ON Major.LevelID = Level.LevelID
LEFT  JOIN  EducationGroup ON EducationGroup.EducationGroupID = Major.EducationGroupID
LEFT  JOIN  Faculty ON Faculty.FacultyID = EducationGroup.FacultyID '
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by LastName  '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Browse_Course]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Browse_Course]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     *
FROM         Course'
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by CourseTitle '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Browse_DesignerTeacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Browse_DesignerTeacher]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='
SELECT    *
FROM  Teacher'
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by Lastname '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Browse_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Browse_Exam]
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
/****** Object:  StoredProcedure [dbo].[Browse_ExamDetail]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Browse_ExamDetail]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     Exam.*, ExamType.ExamTypeTitle, Teacher.TeacherCode, Teacher.FullName, 
                      TextFormat.TextFormatTitle, Course.CourseCode, Course.CourseTitle
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
/****** Object:  StoredProcedure [dbo].[Browse_InstructorTeacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Browse_InstructorTeacher]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='
SELECT    *
FROM  Teacher'
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by Lastname '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Browse_Teacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Browse_Teacher]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='
SELECT    *
FROM  Teacher'
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by Lastname '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Browse_TrainingCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Browse_TrainingCourse]
@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     TrainingCourse.*, Course.CourseCode, Course.CourseTitle,  Exam.ExamTitle, Teacher.TeacherCode, 
                      Teacher.FullName
FROM         TrainingCourse 
INNER JOIN  Course ON TrainingCourse.CourseID = Course.CourseID 
INNER JOIN  Exam ON TrainingCourse.ExamID = Exam.ExamID 
LEFT  JOIN  Teacher ON TrainingCourse.TeacherID = Teacher.TeacherID
'
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' where '+@where
set @SqlCommand=@SqlCommand+@where+' order by ExamDate desc '
exec sp_executesql @SqlCommand





GO
/****** Object:  StoredProcedure [dbo].[delete_Accesses]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_Accesses]
	(@AccessID 	[tinyint])

AS 
delete sys_AccessAction 
where (AccessID = @AccessID)

DELETE  sys_Access
where (AccessID = @AccessID)







GO
/****** Object:  StoredProcedure [dbo].[delete_action]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[delete_action]
as
delete sys_Action




GO
/****** Object:  StoredProcedure [dbo].[delete_all]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[delete_all]
as
delete applicant
delete course
delete major
delete TrainingCourse
delete ApplicantExam
delete ApplicantCourse
delete ApplicantAnswer
delete AnswerKey




GO
/****** Object:  StoredProcedure [dbo].[delete_Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_Applicant]
	(@ApplicantID 	int)
AS DELETE ExamAnalysis.dbo.Applicant
WHERE 
	( ApplicantID	 = @ApplicantID)




GO
/****** Object:  StoredProcedure [dbo].[delete_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[delete_Exam]
	(@ExamID 	int)
AS
delete AnswerKey where applicantexamid in (select applicantexamid from ApplicantExam where examid=@examid)
 delete ApplicantExam where examid=@examid 
delete ApplicantAnswer where QuestionId in (select QuestionID from Question where examid=@examid )
delete Question where examid=@examid 
delete TrainingCourse where examid=@examid 

delete Exam where examid=@examid



GO
/****** Object:  StoredProcedure [dbo].[delete_Question]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_Question]
	(@QuestionID 	int)
AS DELETE ExamAnalysis.dbo.Question 
WHERE 
	( QuestionID	 = @QuestionID)




GO
/****** Object:  StoredProcedure [dbo].[delete_Teacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[delete_Teacher]
	(@TeacherID 	smallint)
AS DELETE ExamAnalysis.dbo.Teacher 
WHERE 
	( TeacherID	 = @TeacherID)




GO
/****** Object:  StoredProcedure [dbo].[Duplicate_CourseCode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[Duplicate_CourseCode]
@CourseCode varchar(15),@result bit output
as
set @result=0
if exists (SELECT     *
FROM         Course
WHERE      CourseCode = @CourseCode) 
set @result=1




GO
/****** Object:  StoredProcedure [dbo].[Duplicate_CourseTitle]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[Duplicate_CourseTitle]
@CourseTitle nvarchar(60),@result bit output
as
set @result=0
if exists (SELECT     *
FROM         Course
WHERE     replace(CourseTitle,' ','')=replace(@CourseTitle,' ',''))
set @result=1


GO
/****** Object:  StoredProcedure [dbo].[EditReportFile]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[EditReportFile]
@ID INT, @File IMAGE
AS
	UPDATE Reports SET [File] = @File WHERE [ID] = @ID
GO
/****** Object:  StoredProcedure [dbo].[Exist_applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Exist_applicant]
@appcode varchar(20) ,@exists bit out
as
if exists(select * from Applicant where ApplicantCode=@appCode)
set @exists=1
else
set @exists=0
GO
/****** Object:  StoredProcedure [dbo].[Get_ApplicantCodeExam_Info]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_ApplicantCodeExam_Info]
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
/****** Object:  StoredProcedure [dbo].[Get_ApplicantExamDetails_by_ApplicantCode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_ApplicantExamDetails_by_ApplicantCode]
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
/****** Object:  StoredProcedure [dbo].[Get_ApplicantExamInfo_ByDate]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[Get_ApplicantExamInfo_ByDate]
 @ApplicantID int,@BeginExamDate char(10),@EndExamDate char(10)

as
SELECT    applicant.*, Course.CourseTitle, Course.CourseCode, ExamDate, Exam.TermCode ExamTermCode, ExamTitle, AppExam.FinalMark, GroupingTitle, AppExam.ord, 
                     Accepted, Number_of_Question, Number_of_Items, number_of_applicant, Exam.Difficulty, Exam.Discrimination, 
                     Exam.RPBIS

,(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer
INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and AnswerItemNumber in (CorrectItemNumber,CorrectItemNumber2) and QuestionActivityID=1) Correct_answer
,
(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer 
INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and AnswerItemNumber not in (CorrectItemNumber,CorrectItemNumber2) and AnswerItemNumber<>0 and QuestionActivityID=1) Wrong_answer
,
(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer 
INNER JOIN  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and  AnswerItemNumber=0 and QuestionActivityID=1) Withot_answer
,(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer 
INNER JOIN  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and  AnswerItemNumber=1  ) item1
,(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer 
INNER JOIN  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and  AnswerItemNumber=2  ) item2
,(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer 
INNER JOIN  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and  AnswerItemNumber=3  ) item3
,(SELECT     count(Question.QuestionID)
FROM         ApplicantAnswer 
INNER JOIN  Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantAnswer.ApplicantID = AppExam.ApplicantID) AND (Question.ExamID = AppExam.Examid)
and  AnswerItemNumber=4  ) item4

FROM         ApplicantExam  AppExam
 inner join applicant on applicant.Applicantid=AppExam.Applicantid
 INNER JOIN        Exam ON AppExam.ExamID = Exam.ExamID
 INNER JOIN     Grouping ON AppExam.GroupingID = Grouping.GroupingID 
LEFT OUTER JOIN  Course ON Exam.MainCourseID = Course.CourseID
WHERE     (AppExam.ApplicantID = @ApplicantID) and Exam.ExamDate between @BeginExamDate  and @EndExamDate





GO
/****** Object:  StoredProcedure [dbo].[Get_ExamKey_Details_ByExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_ExamKey_Details_ByExamID]
@examid int
as
/* SELECT     Question.Number, Question.CorrectItemNumber,isnull(CorrectItemNumber2,0) CorrectItemNumber2,
cast(case when Question.CorrectItemNumber=1 then 1 else 0 end as bit) Item1,
cast(case when Question.CorrectItemNumber=2 then 1 else 0 end as bit) Item2,
cast(case when Question.CorrectItemNumber=3 then 1 else 0 end as bit) Item3,
cast(case when Question.CorrectItemNumber=4 then 1 else 0 end as bit) Item4,
cast(case when Question.CorrectItemNumber=5 then 1 else 0 end as bit) Item5
FROM    Question 
WHERE     examid=@examid */


SELECT     
     Question.Number, 
     Question.CorrectItemNumber,
     isnull(CorrectItemNumber2,0) CorrectItemNumber2,
     isnull(CorrectItemNumber3,0) CorrectItemNumber3,
     isnull(CorrectItemNumber4,0) CorrectItemNumber4,
     isnull(CorrectItemNumber5,0) CorrectItemNumber5,
     isnull(CorrectItemNumber6,0) CorrectItemNumber6,
     cast(case when Question.CorrectItemNumber=1 then 1 else 0 end as bit) Item1,
     cast(case when Question.CorrectItemNumber=2 then 1 else 0 end as bit) Item2,
     cast(case when Question.CorrectItemNumber=3 then 1 else 0 end as bit) Item3,
     cast(case when Question.CorrectItemNumber=4 then 1 else 0 end as bit) Item4,
     cast(case when Question.CorrectItemNumber=5 then 1 else 0 end as bit) Item5
FROM    Question 
WHERE     examid=@examid

GO
/****** Object:  StoredProcedure [dbo].[Get_InstructorExamInfo_ByDate]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[Get_InstructorExamInfo_ByDate]
 @TeacherID int,@BeginExamDate char(10),@EndExamDate char(10),@examid int

as


SELECT     Exam.*, Course.CourseCode, Course.CourseTitle, TrainingCourse.TermCode CourseTermCode, TrainingCourse.GrourpCode, TrainingCourse.StartDate, TrainingCourse.TrainingCourseID,

(SELECT     round(avg(ApplicantExam.FinalMark),3)
FROM         ApplicantExam 
WHERE ApplicantExam.ExamID =  Exam.ExamID) Total_avgmark,

(SELECT     min(ApplicantExam.FinalMark)
FROM         ApplicantExam 
WHERE ApplicantExam.ExamID =  Exam.ExamID) Total_minmark,

(SELECT     max(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
WHERE ApplicantExam.ExamID =  Exam.ExamID) Total_maxmark,

(SELECT     round(varp(ApplicantExam.FinalMark),3)
FROM         ApplicantExam 
WHERE ApplicantExam.ExamID =  Exam.ExamID) Total_varmark,

(SELECT     count(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
WHERE ApplicantExam.ExamID =  Exam.ExamID and Accepted=1) Total_AcceptedCount ,

(SELECT     count(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
WHERE ApplicantExam.ExamID =  Exam.ExamID ) Total_AllCount, 

(SELECT      round(avg(ApplicantExam.FinalMark),3) 
FROM         ApplicantExam 
INNER JOIN   ApplicantCourse ON ApplicantExam.ApplicantID = ApplicantCourse.ApplicantID
WHERE     ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID AND ApplicantExam.ExamID =  Exam.ExamID) avgmark,

(SELECT     min(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
INNER JOIN   ApplicantCourse ON ApplicantExam.ApplicantID = ApplicantCourse.ApplicantID
WHERE     ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID AND ApplicantExam.ExamID =  Exam.ExamID) minmark,

(SELECT     max(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
INNER JOIN   ApplicantCourse ON ApplicantExam.ApplicantID = ApplicantCourse.ApplicantID
WHERE     ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID AND ApplicantExam.ExamID =  Exam.ExamID) maxmark,

(SELECT     round(varp(ApplicantExam.FinalMark),3)
FROM         ApplicantExam 
INNER JOIN   ApplicantCourse ON ApplicantExam.ApplicantID = ApplicantCourse.ApplicantID
WHERE     ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID AND ApplicantExam.ExamID =  Exam.ExamID) varmark,
(SELECT     count(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
INNER JOIN   ApplicantCourse ON ApplicantExam.ApplicantID = ApplicantCourse.ApplicantID
WHERE     ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID AND ApplicantExam.ExamID =  Exam.ExamID and Accepted=1) AcceptedCount ,
(SELECT     count(ApplicantExam.FinalMark) 
FROM         ApplicantExam 
INNER JOIN   ApplicantCourse ON ApplicantExam.ApplicantID = ApplicantCourse.ApplicantID
WHERE     ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID AND ApplicantExam.ExamID =  Exam.ExamID ) AllCount 

FROM         TrainingCourse INNER JOIN
                      Exam ON TrainingCourse.ExamID = Exam.ExamID INNER JOIN
                      Course ON TrainingCourse.CourseID = Course.CourseID
WHERE     (TrainingCourse.TeacherID = @TeacherID)  and Exam.ExamDate between @BeginExamDate  and @EndExamDate

and (@examID=0 or Exam.Examid=@examid)



GO
/****** Object:  StoredProcedure [dbo].[Get_SystemSetting]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[Get_SystemSetting]
@VariableName varchar(50),@Value nvarchar(100)  output
AS
 exec Get_UserSetting -1,@VariableName,@value output

GO
/****** Object:  StoredProcedure [dbo].[Get_TeacherExamInfo_ByDate]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_TeacherExamInfo_ByDate]
 @TeacherID int,@BeginExamDate char(10),@EndExamDate char(10),@examID int

as



SELECT       Exam.* ,ExamTypeTitle,
(select count(*) from Question where examid=Exam.examid and number_Of_Item=1 and DesignerTeacherID = @TeacherID) Teacher_NumberOf_1item_Question ,
(select count(*) from Question where examid=Exam.examid and number_Of_Item=2 and DesignerTeacherID = @TeacherID) Teacher_NumberOf_2item_Question,
(select count(*) from Question where examid=Exam.examid and number_Of_Item=3 and DesignerTeacherID = @TeacherID) Teacher_NumberOf_3item_Question,
(select count(*) from Question where examid=Exam.examid and number_Of_Item=4 and DesignerTeacherID = @TeacherID) Teacher_NumberOf_4item_Question,
(select count(*) from Question where examid=Exam.examid and number_Of_Item=5 and DesignerTeacherID = @TeacherID) Teacher_NumberOf_5item_Question,
(select count(*) from Question where examid=Exam.examid and number_Of_Item=6 and DesignerTeacherID = @TeacherID) Teacher_NumberOf_6item_Question,
(select round(avg(Difficulty),3) from Question where examId=Exam.ExamID and DesignerTeacherID = @TeacherID )Teacher_Difficulty,
(select round(avg(Discrimination),2) from Question where examId=Exam.ExamID and DesignerTeacherID = @TeacherID) Teacher_Discrimination,
(select round(avg(RPBIS),2) from Question where examId=Exam.ExamID and DesignerTeacherID = @TeacherID) Teacher_RPBIS,
(select count(*) from Question where examId=Exam.ExamID and DesignerTeacherID = @TeacherID) Teacher_Count
FROM         Exam
 LEFT  JOIN   ExamType ON Exam.ExamTypeID = ExamType.ExamTypeID
where examid in (select distinct ExamID from Question where Question.DesignerTeacherID = @TeacherID)
 and( Exam.ExamDate between @BeginExamDate  and @EndExamDate  )
and (@examID=0 or Examid=@examid)
GO
/****** Object:  StoredProcedure [dbo].[Get_TextFormat_By_ExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_TextFormat_By_ExamID]
	(
		 @examId                INT = 7, 
		 @StnoStart             INT OUTPUT ,
		 @StnoLength            INT OUTPUT , 
		 @MajorStart            INT OUTPUT , 
		 @MajorLength           INT OUTPUT ,
		 @TermcodeStart         INT OUTPUT , 
		 @TermCodeLength        INT OUTPUT , 
		 @CourseStart           INT OUTPUT , 
		 @CourseLength          INT OUTPUT ,
		 @CourseGroupStart      INT OUTPUT , 
		 @CourseGroupLength     INT OUTPUT , 
		 @AnswerStart           INT OUTPUT ,
		 @indiscernibleChar     CHAR(1) OUTPUT, 
		 @KeyLineNumber         INT OUTPUT , 
		 @AnswerStartLineNumber INT OUTPUT , 
		 @GroupExamStart        INT OUTPUT ,
		 @AnserEnd              INT OUTPUT ,
		 @ExPositive_Start      INT OUTPUT ,
		 @ExPositive_End        INT OUTPUT 
	 )
	AS
	SELECT 
	   @StnoStart = TextFormat.StnoStart,
	   @StnoLength = TextFormat.StnoLength,
	   @MajorStart = TextFormat.MajorStart,
	   @MajorLength = TextFormat.MajorLength,
	   @TermcodeStart = TextFormat.TermcodeStart,
	   @TermCodeLength = TextFormat.TermCodeLength,
	   @CourseStart = TextFormat.CourseStart,
	   @CourseLength = TextFormat.CourseLength,
	   @CourseGroupStart = TextFormat.CourseGroupStart,
	   @CourseGroupLength = TextFormat.CourseGroupLength,
	   @AnswerStart = TextFormat.AnswerStart,
	   @indiscernibleChar = TextFormat.indiscernibleChar,
	   @KeyLineNumber = TextFormat.KeyLineNumber,
	   @AnswerStartLineNumber = TextFormat.AnswerStartLineNumber,
	   @GroupExamStart = ISNULL(TextFormat.GroupExamStart,0),
	   @AnserEnd = TextFormat.AnserEnd ,
	   @ExPositive_Start = TextFormat.ExPositive_Start ,
	   @ExPositive_End = TextFormat.ExPositive_End 

	FROM Exam 
	INNER JOIN TextFormat 
	  ON Exam.TexFormatID = TextFormat.TextFormatID
	WHERE (Exam.ExamID = @ExamID)

	/* ALTER PROCEDURE [dbo].[Get_TextFormat_By_ExamID]
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
	 WHERE (Exam.ExamID = @ExamID) */

GO
/****** Object:  StoredProcedure [dbo].[Get_UserSetting]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_UserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(100) output
AS
SELECT     @Value=Value
FROM         sys_Setting
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)

set @Value=isnull(@Value,'')


GO
/****** Object:  StoredProcedure [dbo].[imp_insert_Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[imp_insert_Applicant]
	(@ApplicantID 	[int] output,
	 @ApplicantCode 	[varchar](20),
	 @FirstName  [nvarchar](80),
	 @LastName  [nvarchar](80),
	 @FullName 	[nvarchar](80),
	 @MajorID 	[smallint],
	 @Termcode 	[char](3))

AS 
if not exists (select * from applicant where ApplicantCode=@ApplicantCode)
INSERT INTO [Applicant] 
	 (   [ApplicantCode],[FirstName],[LastName],[FullName],	 [MajorID],	 [Termcode])

VALUES 	(  	 @ApplicantCode,@FirstName,@LastName,	 @FullName,	 @MajorID,	 @Termcode)

select @ApplicantID=ApplicantID from applicant where ApplicantCode=@ApplicantCode





GO
/****** Object:  StoredProcedure [dbo].[imp_insert_ApplicantCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[imp_insert_ApplicantCourse]
	(@ApplicantCourseID 	[int] output,
	 @ApplicantID 	[int],
	 @TrainingCourseID 	[int])

AS 
if not exists(select * from ApplicantCourse where ApplicantID=@ApplicantID and TrainingCourseID=@TrainingCourseID)
INSERT INTO [ApplicantCourse] 
	 (  [ApplicantID],
	 [TrainingCourseID]) 
 
VALUES 
	(  @ApplicantID,
	 @TrainingCourseID)

select @ApplicantCourseID=ApplicantCourseID
 from ApplicantCourse 
where ApplicantID=@ApplicantID and TrainingCourseID=@TrainingCourseID





GO
/****** Object:  StoredProcedure [dbo].[imp_insert_ApplicantSeatNumber]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROCEDURE [dbo].[imp_insert_ApplicantSeatNumber]
	(@ApplicantID INT, 
	 @CourseID SMALLINT, 
	 @SeatNumber NVARCHAR(50)
	 ) 
	AS 
	BEGIN
     if not exists (select * from ApplicantSeatNumber 
                     Where ApplicantID=@ApplicantID AND CourseID = @CourseID)
     begin                      	
  	     INSERT INTO ApplicantSeatNumber 
	     (ApplicantID,CourseID,SeatNumber)
         VALUES (@ApplicantID, @CourseID, @SeatNumber)
     end    	    	
	END
GO
/****** Object:  StoredProcedure [dbo].[imp_insert_Course]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[imp_insert_Course]
	(@CourseID 	[smallint] output,
	 @CourseCode 	[varchar](15),
	 @CourseTitle 	[nvarchar](60))

AS
if not exists (select * from Course where courseCode=@CourseCode)
 INSERT INTO [Course] 
	 ( [CourseCode],
	 [CourseTitle]) 
 
VALUES 	( @CourseCode,
	 @CourseTitle)

select @CourseID=CourseID from Course where courseCode=@CourseCode




GO
/****** Object:  StoredProcedure [dbo].[imp_insert_Major]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[imp_insert_Major]
	(@MajorID 	[smallint] output,
	 @MajorCode 	[varchar](20),
	 @MajorTitle 	[nvarchar](60))

AS 
if not exists( select * from major where majorcode=@MajorCode)
INSERT INTO [Major] 
	 ( 
	 [MajorCode],
	 [MajorTitle]
	) 
 
VALUES 
	( 
	 @MajorCode,
	 @MajorTitle)

 select @MajorID=MajorID from major where majorcode=@MajorCode




GO
/****** Object:  StoredProcedure [dbo].[imp_insert_Teacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[imp_insert_Teacher]
	(@TeacherID 	[smallint]  output,
	 @TeacherCode 	[varchar](20),
	 @FullName 	[nvarchar](80))

AS
--if not exists(select * from teacher where TeacherCode=@TeacherCode)
 if not exists(select * from teacher where FullName LIKE N'%' + @FullName + '%')
   INSERT INTO [Teacher]  (  [TeacherCode], [FullName]) 
   VALUES ( @TeacherCode,	 @FullName  )

select @TeacherID=TeacherID from Teacher where TeacherCode=@TeacherCode





GO
/****** Object:  StoredProcedure [dbo].[imp_insert_TrainingCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[imp_insert_TrainingCourse]
	(@TrainingCourseID 	[int] output,
	 @CourseID 	[smallint],
	 @TermCode 	[char](3),
	 @GrourpCode 	[varchar](5),
	  @TeacherID 	[smallint],
	 @ExamID 	[int])

AS
if not exists (select * from TrainingCourse where    CourseID = @CourseID AND TermCode =@TermCode AND GrourpCode = @GrourpCode)
 INSERT INTO [TrainingCourse] 
	 ( 
	 [CourseID],
	 [TermCode],
	 [GrourpCode],
	 [TeacherID],
	 [ExamID]) 
 
VALUES 
	( 
	 @CourseID,
	 @TermCode,
	 @GrourpCode,
	 @TeacherID,
	 @ExamID)

select @TrainingCourseID=TrainingCourseID
from TrainingCourse where    CourseID = @CourseID AND TermCode =@TermCode AND GrourpCode = @GrourpCode



GO
/****** Object:  StoredProcedure [dbo].[imp_TotalEducation]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[imp_TotalEducation]

@ApplicantCode varchar(20),
@ApplicantFullname nvarchar(80),--
@ApplicantFirstName nvarchar(80),
@ApplicantLastName nvarchar(80),
@CourseCode varchar(15),
@CourseTitle nvarchar(60),
@CourseGroup varchar(5),
@MajorCode varchar(20),
@majorTitle nvarchar(60),
@TermCode char(3),--
@TeacherCode varchar(20),
@TeacherFullname nvarchar(80),
@EntranceTerm char(3)

 as
set @ApplicantCode=isnull(@ApplicantCode,'')
set @ApplicantFullname=isnull(@ApplicantFullname,'')
set @ApplicantFirstName=isnull(@ApplicantFirstName,'')
set @ApplicantLastName=isnull(@ApplicantLastName,'')
set @CourseCode=isnull(@CourseCode,'')
set @CourseTitle=isnull(@CourseTitle,'')
set @CourseGroup=isnull(@CourseGroup,'')
set @MajorCode=isnull(@MajorCode,'')
set @majorTitle=isnull(@majorTitle,'')
set @TermCode=isnull(@TermCode,'')
set @TeacherCode=isnull(@TeacherCode,'')
set @TeacherFullname=isnull(@TeacherFullname,'')
set @EntranceTerm=isnull(@EntranceTerm,'')    

declare @ApplicantID    int ,@TrainingCourseID  int, @MajorID  smallint,
        @TeacherID  smallint,@ApplicantCourseID int,@CourseID  smallint

exec imp_insert_Major   @MajorID   output, @MajorCode,  @majorTitle
exec imp_insert_Course  @CourseID  output, @CourseCode, @CourseTitle
exec imp_insert_Teacher @TeacherID output, @TeacherCode,@TeacherFullname
exec imp_insert_TrainingCourse @TrainingCourseID output,@CourseID,@TermCode,@CourseGroup,@TeacherID,0 --@ExamID
exec imp_insert_Applicant @ApplicantID output,@ApplicantCode,@ApplicantFirstName,@ApplicantLastName,@ApplicantFullname,@MajorID ,@EntranceTerm
exec imp_insert_ApplicantCourse @ApplicantCourseID output, @ApplicantID ,@TrainingCourseID



GO
/****** Object:  StoredProcedure [dbo].[insert_AnswerKey]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[insert_AnswerKey]
	(@AnswerKeyID 	int output ,
	 @ApplicantExamID 	int,
	 @AnswerKey 	varchar(1000))
AS 
if exists (select * from AnswerKey where ApplicantExamID=@ApplicantExamID)
 begin
  select @AnswerKeyID=AnswerKeyID from AnswerKey where ApplicantExamID=@ApplicantExamID
  update AnswerKey set AnswerKey=@AnswerKey where ApplicantExamID=@ApplicantExamID
 end
 else
 begin
  INSERT INTO AnswerKey (ApplicantExamID, AnswerKey) VALUES 	( @ApplicantExamID, @AnswerKey)
  select @AnswerKeyID= @@identity
 end

GO
/****** Object:  StoredProcedure [dbo].[insert_AnswerLine]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insert_AnswerLine]
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
				set @ApplicantCode=LEFT(@TempApplicantCode,15)
				set @ApplicantCode=REPLACE(@ApplicantCode,'+','') 
		        
        		        
		        
		        
		select @CurrentTermcode=Termcode from Exam where ExamID=@ExamID

		exec insert_Course_byCode              @CourseID          output , @CourseCode 
		exec insert_Major_ByCode               @MajorID           output , @MajorCode 
		exec insert_Applicant_ByCode           @ApplicantID       output , @ApplicantCode    , @MajorID  , @Termcode , @ExamId 
		exec insert_ApplicantExam              @ApplicantExamID	  output , @ApplicantID      , @ExamID	 , @GroupExamId	
		exec insert_TrainingCourse_Bycode      @TrainingCourseID  output , @CourseID         , @CurrentTermcode , @CourseGroup , @ExamID
		exec insert_AnswerKey                  @AnswerKeyID       output , @ApplicantExamID  , @AnswerKey 
		exec insert_ApplicantCourse_byCode     @ApplicantCourseID output , @ApplicantID      , @TrainingCourseID	
	end

GO
/****** Object:  StoredProcedure [dbo].[insert_Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[insert_Applicant]
	(@ApplicantID 	int  output,
	 @ApplicantCode 	varchar(20),
	 @FirstName 	nvarchar(50),
	 @LastName 	nvarchar(50),
	 @FullName 	nvarchar(80),
	 @MajorID 	smallint,
	 @Termcode 	char(3))
AS INSERT INTO ExamAnalysis.dbo.Applicant 
	 (  
	 ApplicantCode,
	 FirstName,
	 LastName,
	 FullName,
	 MajorID,
	 Termcode) 
 
VALUES 
	( 
	 @ApplicantCode,
	 @FirstName,
	 @LastName,
	 @FullName,
	 @MajorID,
	 @Termcode)
select @ApplicantID=@@identity




GO
/****** Object:  StoredProcedure [dbo].[insert_Applicant_ByCode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[insert_Applicant_ByCode]
	(@ApplicantID 	int output ,
	 @ApplicantCode 	varchar(20),
	 @MajorID 	smallint,
	 @Termcode 	char(3),
	 @ExamId INT=0)
AS 
begin
IF (@ExamId !=0) 
BEGIN
  PRINT @ApplicantCode
  SET @ApplicantID = (SELECT TOP 1 AE.ApplicantID FROM ApplicantExam AE
                      INNER JOIN Applicant AS A ON A.ApplicantID = AE.ApplicantID
                      WHERE ExamID=@ExamId AND A.ApplicantID = AE.ApplicantID  
                      AND A.ApplicantCode=@ApplicantCode)
                      
  IF (@ApplicantID IS NULL) 
  BEGIN
     SET @ApplicantID = (SELECT TOP 1 ApplicantID FROM Applicant WHERE ApplicantCode=@ApplicantCode)
     IF (@ApplicantID IS NULL) 
     BEGIN
    	INSERT INTO Applicant (  ApplicantCode,	 MajorID,	 Termcode,FullName)  
        VALUES ( @ApplicantCode,@MajorID, @Termcode,'Stno: '+@ApplicantCode)
        set @ApplicantID=@@identity
     END 
  END	                       
END ELSE
Begin		
  if NOT exists (select ApplicantID
             from applicant where @ApplicantCode=ApplicantCode )
  begin           
	INSERT INTO Applicant (  ApplicantCode,	 MajorID,	 Termcode,FullName)  
    VALUES ( @ApplicantCode,@MajorID, @Termcode,'Stno: '+@ApplicantCode)
    set @ApplicantID=@@identity
  END ELSE 
  BEGIN
  	SELECT TOP 1 @ApplicantID=ApplicantID FROM Applicant
  	WHERE ApplicantCode=@ApplicantCode 
  END		  
END
end
GO
/****** Object:  StoredProcedure [dbo].[insert_Applicant_ByCode_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[insert_Applicant_ByCode_Exam]
	(@ExamID INT ,
	 @ApplicantID 	INT=0 OUTPUT ,
	 @ApplicantCode 	varchar(20),
	 @MajorID 	smallint,
	 @Termcode 	char(3))
AS 
begin
	SELECT TOP 1 @ApplicantID = ISNULL(A.ApplicantID,0)  
	FROM Applicant AS A
	WHERE (A.ApplicantCode=@ApplicantCode) AND (A.Termcode=@Termcode)
	IF (ISNULL(@ApplicantID,0) = 0) 
	BEGIN
		 INSERT INTO Applicant (ApplicantCode, MajorID,	Termcode, FullName)  
		 VALUES ( @ApplicantCode,@MajorID, @Termcode,'Code: '+@ApplicantCode)
		 set @ApplicantID=@@identity
	END
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Applicant_Picture_By_ApplicantID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Insert_Applicant_Picture_By_ApplicantID]
	(@ApplicantID 	int, @ApplicantPicture image)
AS  
	if exists(Select ApplicantID from ApplicantData 	WHERE  ApplicantID	 = @ApplicantID)
		update ApplicantData set ApplicantPicture = @ApplicantPicture where ApplicantID	 = @ApplicantID
	else 
		insert into ApplicantData(ApplicantID,ApplicantPicture) values(@ApplicantID,@ApplicantPicture)
GO
/****** Object:  StoredProcedure [dbo].[insert_ApplicantAnswer_ByExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[insert_ApplicantAnswer_ByExamID]
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
/****** Object:  StoredProcedure [dbo].[insert_ApplicantCourse_byCode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_ApplicantCourse_byCode]
	(@ApplicantCourseID 	int output,
	 @ApplicantID 	int,
	 @TrainingCourseID 	int)
AS 
if exists (select * from ApplicantCourse where ApplicantID=@ApplicantID and TrainingCourseID=@TrainingCourseID)
begin
 select @ApplicantCourseID=ApplicantCourseID from ApplicantCourse where ApplicantID=@ApplicantID and TrainingCourseID=@TrainingCourseID
end
else
 begin
  INSERT INTO ApplicantCourse ( ApplicantID,TrainingCourseID) 
  VALUES 	( @ApplicantID,	 @TrainingCourseID)
   select @ApplicantCourseID=@@identity
 end




GO
/****** Object:  StoredProcedure [dbo].[insert_ApplicantExam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insert_ApplicantExam]
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
/****** Object:  StoredProcedure [dbo].[insert_Course_byCode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[insert_Course_byCode]
	(@CourseID 	smallint output,
	 @CourseCode 	varchar(15))
AS 
if exists( select * from course where courseCode=@CourseCode)
select @CourseID=CourseID from course where courseCode=@CourseCode
else
 begin
   INSERT INTO Course (CourseCode,CourseTitle)  VALUES ( @CourseCode,'Code: '+cast(@CourseCode as nvarchar(15)))
   select @CourseID=@@identity
end




GO
/****** Object:  StoredProcedure [dbo].[insert_Major_ByCode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[insert_Major_ByCode]
	(@MajorID 	smallint output,
	 @MajorCode 	varchar(20))
AS 
if exists( select * from Major where MajorCode=@MajorCode)
select @MajorID=MajorID from Major where MajorCode=@MajorCode
else
 begin
   INSERT INTO Major (MajorCode,MajorTitle)  VALUES ( @MajorCode,'Code: '+@MajorCode)
   select @MajorID=@@identity
 end




GO
/****** Object:  StoredProcedure [dbo].[insert_New_AccessAction]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[insert_New_AccessAction]
AS 

delete from sys_AccessAction where  ActionID  not in (select ActionID from sys_action)

INSERT INTO [dbo].[sys_AccessAction] 
	 ( [AccessID],
	 [ActionID],
	 [HasAccess]) 

SELECT     sys_Access.AccessID,  sys_Action.Actionid,1 
FROM         sys_Access,sys_Action 
where str(sys_Access.Accessid)+Str(sys_action.Actionid) not in 
 (select str(sys_Access.Accessid)+Str(actionid)  from dbo.sys_AccessAction)



GO
/****** Object:  StoredProcedure [dbo].[insert_Question]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[insert_Question]
	(
	 @ExamID 	int,
	 @Number 	smallint,
	 @DesignerTeacherID 	smallint,
	 @CourseID 	smallint,
	 @CorrectItemNumber 	tinyint)

AS INSERT INTO ExamAnalysis.dbo.Question 
	 ( 
	 ExamID,
	 Number,
	 DesignerTeacherID,
	 CourseID,
	 CorrectItemNumber) 
 
VALUES 
	(
	 @ExamID,
	 @Number,
	 @DesignerTeacherID,
	 @CourseID,
	 @CorrectItemNumber)







GO
/****** Object:  StoredProcedure [dbo].[insert_Question_ByExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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

SELECT     @AnswerKey=AnswerKey ,@DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
FROM         Exam
WHERE     (ExamID=@ExamID )

declare @c char(1)
while @i<=@number_of_question 
 begin
    if isnumeric(substring(@AnswerKey,@i,1))=1 set @c=substring(@AnswerKey,@i,1) else set @c='8'  -- مخدوش
    if not exists (select * from question where examid=@examid and number=@i )
      INSERT INTO Question ( ExamID,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
                VALUES (@ExamID, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
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
/****** Object:  StoredProcedure [dbo].[insert_sys_Action]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[insert_sys_Action]
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
/****** Object:  StoredProcedure [dbo].[insert_Teacher]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[insert_Teacher]
	(@TeacherID 	smallint output,
	 @TeacherCode 	varchar(20),
	 @FirstName 	nvarchar(50),
	 @LastName 	nvarchar(50),
	 @FullName 	nvarchar(80),
	 @Title 	nvarchar(20))
AS INSERT INTO ExamAnalysis.dbo.Teacher 
	 (  
	 TeacherCode,
	 FirstName,
	 LastName,
	 FullName,
	 Title) 
 
VALUES 
	(  
	 @TeacherCode,
	 @FirstName,
	 @LastName,
	 @FullName,
	 @Title)
select @TeacherID=@@identity




GO
/****** Object:  StoredProcedure [dbo].[insert_TrainingCourse_Bycode]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_TrainingCourse_Bycode]
	(@TrainingCourseID 	int output ,
	 @CourseID 	smallint,
	 @TermCode 	char(3),
	 @GrourpCode 	varchar(5),
	 @ExamID	int)
AS 
if exists (select * from TrainingCourse where CourseID=@CourseID and  TermCode=@TermCode and GrourpCode=@GrourpCode)
select @TrainingCourseID=TrainingCourseID from TrainingCourse where CourseID=@CourseID and  TermCode=@TermCode and GrourpCode=@GrourpCode
else
 begin
   INSERT INTO TrainingCourse 	 (  CourseID,	 TermCode,	 GrourpCode, TeacherID,	 ExamID)  
                  VALUES 	 (  @CourseID,	 @TermCode,	 @GrourpCode,0         ,	 @ExamID)
   Set @TrainingCourseID=@@identity
end





GO
/****** Object:  StoredProcedure [dbo].[InsertQuestionToTableDeleteQuestion]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[InsertQuestionToTableDeleteQuestion](@QuestionID int)
AS
BEGIN
	INSERT INTO QuestionDelete
	SELECT * FROM Question WHERE QuestionID = @QuestionID
END
GO
/****** Object:  StoredProcedure [dbo].[InsertReport]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[InsertReport]
@Name NVARCHAR(50), @File IMAGE
AS
	DECLARE @ID INT
	SELECT @ID = ID FROM Reports 
	SET @ID = isnull(@ID,0)+1
	INSERT INTO Reports([ID],[NAME],[File])
	VALUES(@ID,@Name,@File)
GO
/****** Object:  StoredProcedure [dbo].[PRC_ExPositive_Delete]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRC_ExPositive_Delete]
			(
			  @FLAG   INT, --نوع حذف
			  @ID     INT,
			  @ExamID INT,
			  @ApplicantId nvarchar(20)

			)
AS
IF @FLAG = 1
BEGIN 
	DELETE FROM [dbo].[ExPositive]
		  WHERE ID = @ID
END
IF @FLAG = 2
BEGIN 
	DELETE FROM [dbo].[ExPositive]
		  WHERE ExamID = @ExamID
          AND ApplicantId = @ApplicantId
END
GO
/****** Object:  StoredProcedure [dbo].[PRC_ExPositive_Insert]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRC_ExPositive_Insert]
      (
            @ExamID      INT
           ,@ApplicantId NVARCHAR(20)
           ,@Score       NVARCHAR(max)
           ,@Desc        NVARCHAR(500)
		   ,@ExPositiveKey  NVARCHAR(max)
		   
	  )
AS
  IF EXISTS (
             SELECT  * 
             FROM  [ExPositive] 
			 WHERE ExamID = @ExamID 
			 And ApplicantId = @ApplicantId
			)
BEGIN
  EXEC [dbo].[PRC_ExPositive_Delete] 2,0,@ExamID,@ApplicantId
END 
  
  DECLARE @InputStringPurchaseRequestItemID NVARCHAR(max) = @Score + '-0' 
  DECLARE @_PurchaseRequestItemID NVARCHAR(max) 
  DECLARE @value_New NVARCHAR(max) = ''
  DECLARE @number INT
  DECLARE @number2  NVARCHAR(max)
  DECLARE @number1  NVARCHAR(max) =  replace (@ExPositiveKey,'-','+')
  CREATE TABLE #tmp (ExPositiveKey NVARCHAR(max) )
  
  SELECT 
    * 
  INTO #tp
  FROM ( SELECT  @number1 AS f2	)sub1
  SELECT @number2 = ' SELECT ' + f2   FROM #tp
  INSERT INTO #tmp EXECUTE SP_EXECUTESQL @number2
  SELECT CAST(ExPositiveKey AS float) FROM #tmp

  SET @number = (SELECT CAST(ExPositiveKey AS float) FROM #tmp)
  print '@number'
  print @number

	  WHILE (CHARINDEX('-' , @InputStringPurchaseRequestItemID,0) <> 0) AND (@number > 0)
	  begin
		set @_PurchaseRequestItemID = ltrim(rtrim(substring(@InputStringPurchaseRequestItemID , 0 , charindex('-' , @InputStringPurchaseRequestItemID,0))))
		IF @value_New <> '' 
		SET @value_New = @value_New + '-'+ @_PurchaseRequestItemID
		IF @value_New = ''
		SET @value_New = @_PurchaseRequestItemID
		set @InputStringPurchaseRequestItemID = substring(@InputStringPurchaseRequestItemID , charindex('-' , @InputStringPurchaseRequestItemID) + 1 , LEN(@InputStringPurchaseRequestItemID))
	  SET @number = @number - 1
	  print @number
	  END 
  SELECT @value_New


/* شروع محاسبه جمع نمرات تشريحي */
DECLARE @D NVARCHAR(max)
DECLARE @Score_New NVARCHAR(max)
CREATE TABLE #temptable (SumScore NVARCHAR(max) )

SET @Score_New = REPLACE( REPLACE(@value_New,'-','+'),',','.')

SELECT 
   * 
INTO #temp
FROM ( SELECT  @Score_New AS f2	)sub1

SELECT @D = ' SELECT ' + f2 + '-0' FROM #temp

INSERT INTO #temptable EXECUTE SP_EXECUTESQL @D

print @d
print '@value_New' 
print @value_New
/* پايان محاسبه جمع نمرات تشريحي */

SELECT SumScore FROM #temptable

INSERT INTO [dbo].[ExPositive]
           ([ExamID]
           ,[ApplicantId]
           ,[Score]
           ,[SumScore]
           ,[Desc])
     VALUES
           (@ExamID
           ,@ApplicantId
           ,@Score
           ,(SELECT SumScore FROM #temptable)
           ,@Desc)
DROP TABLE #temp
DROP TABLE #temptable
drop table #tmp
drop table  #tp

GO
/****** Object:  StoredProcedure [dbo].[PRC_ExPositive_Update]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRC_ExPositive_Update]
		(
		   @ID          INT
		  ,@ExamID      INT
		  ,@ApplicantId INT
		  ,@Score       NVARCHAR(600)
		  ,@SumScore    FLOAT
		  ,@Desc        NVARCHAR(500)
		)
AS
UPDATE [dbo].[ExPositive]
   SET [ExamID] = @ExamID
      ,[ApplicantId] = @ApplicantId
      ,[Score] = @Score
      ,[SumScore] = @SumScore
      ,[Desc] = @Desc
 WHERE ID = @ID

GO
/****** Object:  StoredProcedure [dbo].[Refine_Question_ByExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Refine_Question_ByExamID]
	(@ExamID	int)
AS
declare @i smallint,@number_of_question smallint,
        @j tinyint,@Number_of_Items tinyint,
        @QuestionID int,@AnswerKey varchar(1000)

select @number_of_question=number_of_question,@Number_of_Items=Number_of_Items
from exam where examid=@examid

set @i=1 

declare @DesignerTeacherID int,@CourseID int

SELECT     @DesignerTeacherID=MainDesignerTeacherID,@CourseID=MainCourseID
FROM         Exam
WHERE     (ExamID=@ExamID )

delete question where examid=@examid

declare @c char(1)
set @c='8'
while @i<=@number_of_question 
 begin
      INSERT INTO Question ( ExamID,  Number,  CorrectItemNumber,CourseID,DesignerTeacherID) 
          VALUES (@ExamID, cast(@i as varchar(3)), @c,@CourseID,@DesignerTeacherID)
set @i=@i+1
end--while @i*/


GO
/****** Object:  StoredProcedure [dbo].[Report_Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE procedure [dbo].[Report_Applicant]
@Where nvarchar(2000)
as

declare @sql nvarchar(4000)
set @Where =isnull(ltrim(@Where),'')


set @sql=' SELECT  Applicant.*, EducationGroupCode, EducationGroupTitle, FacultyTitle,LevelTitle, MajorCode,  MajorTitle
FROM    Applicant 
LEFT JOIN Major          ON Major.MajorID = Applicant.MajorID
LEFT JOIN EducationGroup ON Major.EducationGroupID = EducationGroup.EducationGroupID 
LEFT JOIN Faculty        ON EducationGroup.FacultyID = Faculty.FacultyID
LEFT JOIN [Level]        ON Major.LevelID = [Level].LevelID  '+@Where
exec sp_executesql @sql 

          




GO
/****** Object:  StoredProcedure [dbo].[SaveAs_Accesses]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[SaveAs_Accesses]
	( @Title nvarchar(50),@OldID int ,@newID int output)

AS
 INSERT INTO [dbo].[sys_Access] 
	 ( [AccessTitle]) 
 
VALUES ( @Title)

select @newID=max(AccessID)
from sys_Access


insert into sys_AccessAction(AccessID,ActionID,HasAccess)
SELECT     @newid,ActionID, HasAccess
FROM         sys_AccessAction
where accessid=@oldID

insert into sys_AccessAction(AccessID,ActionID,HasAccess)
SELECT     sys_Access.AccessID AS accessid, sys_Action.ActionID AS actionid,0 AS hasaccess
FROM         sys_Action , sys_Access
where str(sys_Access.AccessID)+str(sys_Action.ActionID) not in (select str(accessid)+str(ActionID) from sys_AccessAction)












GO
/****** Object:  StoredProcedure [dbo].[Select_Action_By_ActionGroupID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[Select_Action_By_ActionGroupID]
@ActionGroupID int
as

SELECT     * 
FROM         sys_Action
WHERE     (ActionGroupID = @ActionGroupID)




GO
/****** Object:  StoredProcedure [dbo].[Select_ActionAccess_By_AccessID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE procedure [dbo].[Select_ActionAccess_By_AccessID]
@accessID int
as
SELECT       ActionName, HasAccess 
FROM         sys_AccessAction
INNER JOIN   sys_Action ON sys_AccessAction.ActionID = sys_Action.ActionID
WHERE       (sys_AccessAction.AccessID =@AccessID) 





GO
/****** Object:  StoredProcedure [dbo].[Select_ActionAccess_By_ActionGroupID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[Select_ActionAccess_By_ActionGroupID]
@ActionGroupID int,@accessID int
as
SELECT       sys_AccessAction.*
FROM         sys_AccessAction
INNER JOIN   sys_Action ON sys_AccessAction.ActionID = sys_Action.ActionID
WHERE       (sys_Action.ActionGroupID =  @ActionGroupID) and (sys_AccessAction.AccessID =@AccessID) 




GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_By_ApplicantID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Applicant_By_ApplicantID]
	(@ApplicantID 	int)
AS  Select * from Applicant 
WHERE 
	( ApplicantID	 = @ApplicantID)



GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_ExamAndWhere]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[Select_Applicant_by_ExamAndWhere]
		(@ExamID	int,@where nvarchar(1000),@order varchar(100) ,@OrderType INT=0)
	AS 	 
	 declare @SQL nvarchar(4000)
	 
	 DECLARE @StrOrderType NVARCHAR(10)
	 IF ISNULL(@OrderType,0)=0 SET @StrOrderType=' ASC ';
	 IF ISNULL(@OrderType,0)=1 SET @StrOrderType=' DESC ';
 	 
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
	set @order =case when isnull(ltrim(@order),'')='' then '' else ' order by '+isnull(ltrim(@order),'') END    
	set @where =case when ltrim(isnull(@where,''))='' then '' else ' and '+@where end 
	set @sql=@sql+@where +@order + @StrOrderType
	print @sql
	exec(@sql)
	
GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_Examid]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Applicant_by_Examid] ( @ExamID INT )
AS
BEGIN
      DECLARE @FullPoint FLOAT ,
              @maxMark FLOAT ,
              @Number_of_Question INT ,
              @AcceptCount NUMERIC(6, 2) ,
              @RejectCount NUMERIC(6, 2) ,
              @AcceptPercent NUMERIC(6, 2) ,
              @RejectPercent NUMERIC(6, 2) ,
              @RecCount NUMERIC(6, 2) ,
              @DeleteQuestionCount INT ,
              @CorrectItemPoint NUMERIC(6, 2)

      IF OBJECT_ID('tempdb..#AnswerApplicant') IS NOT NULL
         DROP TABLE #AnswerApplicant

      SELECT    dbo.Applicant.ApplicantID,
                ( SELECT    COUNT(Question.QuestionID)
                  FROM      ApplicantAnswer
                            INNER JOIN Question ON ApplicantAnswer.QuestionID = Question.QuestionID
                  WHERE     ( ApplicantAnswer.ApplicantID = Applicant.ApplicantID ) AND ( Question.ExamID = ApplicantExam.Examid ) AND AnswerItemNumber IN (
                            CorrectItemNumber, CorrectItemNumber2, CorrectItemNumber3, CorrectItemNumber4,
                            CorrectItemNumber5, CorrectItemNumber6 ) AND QuestionActivityID = 1 ) Correct_Answer,
                ( SELECT    COUNT(Question.QuestionID)
                  FROM      ApplicantAnswer
                            INNER JOIN Question ON ApplicantAnswer.QuestionID = Question.QuestionID
                  WHERE     ( ApplicantAnswer.ApplicantID = Applicant.ApplicantID ) AND ( Question.ExamID = ApplicantExam.Examid ) AND AnswerItemNumber NOT IN (
                            CorrectItemNumber, ISNULL(CorrectItemNumber2, 0), ISNULL(CorrectItemNumber3, 0),
                            ISNULL(CorrectItemNumber4, 0), ISNULL(CorrectItemNumber5, 0), ISNULL(CorrectItemNumber6, 0) ) AND AnswerItemNumber <> 0 AND QuestionActivityID = 1 ) Wrong_Answer,
                ( SELECT    COUNT(Question.QuestionID)
                  FROM      ApplicantAnswer
                            INNER JOIN Question ON ApplicantAnswer.QuestionID = Question.QuestionID
                  WHERE     ( ApplicantAnswer.ApplicantID = Applicant.ApplicantID ) AND ( Question.ExamID = ApplicantExam.Examid ) AND AnswerItemNumber = 0 AND QuestionActivityID = 1 ) Withot_Answer
      INTO      #AnswerApplicant
      FROM      ApplicantExam
                INNER JOIN Applicant ON ApplicantExam.ApplicantID = Applicant.ApplicantID
                LEFT OUTER JOIN Major ON Applicant.MajorID = Major.MajorID
                LEFT OUTER JOIN Grouping ON ApplicantExam.GroupingID = Grouping.GroupingID
      WHERE     ApplicantExam.examid = @examid
      
      ---/////********************************** test
     -- AND Accepted IS NOT NULL
    --  AND GroupExamId IS NOT NULL 
	  ----------//////************************** test
      IF OBJECT_ID('tempdb..#Applicant') IS NOT NULL
         DROP TABLE #Applicant

      SELECT    @FullPoint = SUM(Coefficient)
      FROM      Question
      WHERE     ( ExamID = @ExamID ) AND ( questionactivityid <> 2 )

      SELECT    @FullPoint = CorrectItemPoint * @fullPoint, @maxMark = maxMark, @Number_of_Question = Number_of_Question,
                @CorrectItemPoint = ISNULL(CustomField2, 0)
      FROM      Exam
      WHERE     ( ExamID = @ExamID )

      IF @maxMark IS NULL OR @maxMark <= 0
         SET @maxMark = 20

      SELECT    @DeleteQuestionCount = COUNT(*)
      FROM      QuestionDelete
      WHERE     ExamId = @ExamID

        /* SELECT @Number_of_Question/@MaxMark , @maxMark ,  @FullPoint */
        /* SELECT FinalMark FROM ApplicantExam WHERE ExamID=223 */
/*-------------------------------------------------------------begin movahed---------------------------------------------------------------*/
      SELECT    Applicant.*, Faculty.FacultyTitle, Major.MajorTitle, ApplicantExam.FinalMark AS FinalMark, @FullPoint FullPoint,
                ApplicantExam.ord, CASE WHEN ApplicantExam.Accepted = 1 THEN 'قبول'
                                        ELSE 'رد'
                                   END ACCEPT, Grouping.GroupingTitle,
                /*case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@FullPoint,2) end mark,
                case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPoint,2) end mark20,
                case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullPoint,2) end mark100
                CASE WHEN FinalMark < 0 THEN 0
                     ELSE ROUND(FinalMark, 2) 
                END mark, */
				(SELECT 
				   CASE 
					  WHEN  [decimal] BETWEEN 0.25 AND 0.49 THEN [Floor] + 0.25
					  WHEN  [decimal] BETWEEN 0.50 AND 0.74 THEN [Floor] + 0.50
					  WHEN  [decimal] BETWEEN 0.75 AND 0.99 THEN [Floor] + 0.75
				   ELSE [floor] END  Floor_New
				FROM 
				(

				 SELECT ABS(FinalMark) - FLOOR(ABS(FinalMark)) AS [decimal],FLOOR(ABS(FinalMark)) AS [Floor]

				 )
                  Sub1) mark,
				CASE WHEN FinalMark < 0 THEN 0
                               ELSE ROUND(FinalMark * ( 20 / @maxMark ), 2)
                          END mark20, CASE WHEN FinalMark < 0 THEN 0
                                           ELSE ROUND(FinalMark * ( 100.0 / @maxMark ), 2)
                                      END mark100, CAST(0.0 AS NUMERIC(6, 2)) AS AcceptCount,
                CAST(0.0 AS NUMERIC(6, 2)) AS RejectCount, CAST(0.0 AS NUMERIC(6, 2)) AS AcceptPercent,
                CAST(0.0 AS NUMERIC(6, 2)) AS RejectPercent, @DeleteQuestionCount AS DeleteQuestionCount,
                @CorrectItemPoint AS CorrectItemPoint, @maxMark AS maxMark
      INTO      #Applicant
      FROM      Applicant
                INNER JOIN ApplicantExam ON ApplicantExam.ApplicantID = Applicant.ApplicantID
                LEFT JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
                LEFT  JOIN Major ON Applicant.MajorID = Major.MajorID
                LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Major.EducationGroupID
                LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
				/* LEFT  JOIN ExPositive  e ON Applicant.ApplicantCode = e.ApplicantId AND e.ExamID = @ExamID */
      WHERE     ExamId = @ExamId
      ORDER BY  ord
    /*  SELECT    Applicant.*, Faculty.FacultyTitle, Major.MajorTitle, ISNULL(ApplicantExam.FinalMark,0) + ISNULL(SumScore,0) AS FinalMark, @FullPoint FullPoint,
                ApplicantExam.ord, CASE WHEN ApplicantExam.Accepted = 1 THEN 'قبول'
                                        ELSE 'رد'
                                   END ACCEPT, Grouping.GroupingTitle,
                --case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@FullPoint,2) end mark,
                --case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPoint,2) end mark20,
                --case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullPoint,2) end mark100
                CASE WHEN FinalMark < 0 THEN 0
                     ELSE ROUND(FinalMark, 2) + SumScore 
                END mark, CASE WHEN FinalMark < 0 THEN 0
                               ELSE ROUND((FinalMark+SumScore) * ( 20 / @maxMark ), 2)
                          END mark20, CASE WHEN FinalMark < 0 THEN 0
                                           ELSE ROUND((FinalMark+SumScore) * ( 100.0 / @maxMark ), 2)
                                      END mark100, CAST(0.0 AS NUMERIC(6, 2)) AS AcceptCount,
                CAST(0.0 AS NUMERIC(6, 2)) AS RejectCount, CAST(0.0 AS NUMERIC(6, 2)) AS AcceptPercent,
                CAST(0.0 AS NUMERIC(6, 2)) AS RejectPercent, @DeleteQuestionCount AS DeleteQuestionCount,
                @CorrectItemPoint AS CorrectItemPoint, @maxMark AS maxMark
      INTO      #Applicant
      FROM      Applicant
                INNER JOIN ApplicantExam ON ApplicantExam.ApplicantID = Applicant.ApplicantID
                LEFT JOIN Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
                LEFT  JOIN Major ON Applicant.MajorID = Major.MajorID
                LEFT JOIN EducationGroup ON EducationGroup.EducationGroupID = Major.EducationGroupID
                LEFT  JOIN Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
				LEFT  JOIN ExPositive  e ON Applicant.ApplicantCode = e.ApplicantId AND e.ExamID = @ExamID
      WHERE     ApplicantExam.ExamId = @ExamId
      ORDER BY  ord */
/*-------------------------------------------------------------END movahed---------------------------------------------------------------*/

      SELECT    @AcceptCount = COUNT(*)
      FROM      #Applicant
      WHERE     ACCEPT = 'قبول'

      SELECT    @RejectCount = COUNT(*)
      FROM      #Applicant
      WHERE     ACCEPT = 'رد'

      SELECT    @RecCount = COUNT(*)
      FROM      #Applicant

      IF @RecCount > 0
      SELECT    @AcceptPercent = ( @AcceptCount / @RecCount ) * 100
      ELSE
      SET @AcceptPercent = ''
      IF @RecCount > 0
      SELECT    @RejectPercent = ( @RejectCount / @RecCount ) * 100
      ELSE
      SET @RejectPercent = ''

      UPDATE    #Applicant
      SET       AcceptCount = @AcceptCount, RejectCount = @RejectCount, AcceptPercent = @AcceptPercent,
                RejectPercent = @RejectPercent

      SELECT    A1.ApplicantID, ApplicantCode, FirstName, LastName,
                CASE WHEN LEN(RTRIM(LTRIM(IsNull(FirstName, '')))) = 0 THEN RTRIM(LTRIM(LastName))
                                                                       ELSE RTRIM(LTRIM(LastName)) + '-' + RTRIM(LTRIM(FirstName))
                                                                       END AS 'FullName'
                , MajorID, Termcode, FatherName,
                CustomField1, CustomField2, FacultyTitle, MajorTitle, FinalMark, FullPoint, ord, 
				ACCEPT
				, GroupingTitle,
                MARK, mark20, mark100, CAST(AcceptCount AS INT) AcceptCount, CAST(RejectCount AS INT) RejectCount,
                AcceptPercent, RejectPercent, DeleteQuestionCount, CorrectItemPoint, maxMark, Correct_answer,
                Wrong_answer, Withot_answer,ISNULL(e.SumScore,0)AS SumScore
      FROM      #Applicant A1
                INNER JOIN #AnswerApplicant A2 ON A1.ApplicantID = A2.ApplicantID
				LEFT  JOIN ExPositive  e ON A1.ApplicantCode = e.ApplicantId AND e.ExamID = @ExamID
      ORDER BY  ApplicantCode
END
	
GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_Examid_advanced]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[Select_Applicant_by_Examid_advanced]
	(@ExamID	int,@questionNumber1 int ,@questionNumber2 int,@maxMark float )
AS


declare @number_of_applicant int ,@CorrectItemPoint float,@BlankItemPoint float,@WrongItemPoint float

select @BlankItemPoint=BlankItemPoint,@CorrectItemPoint= CorrectItemPoint,
       @WrongItemPoint=WrongItemPoint
 from  Exam
 where ExamID =@ExamID


SELECT     ApplicantAnswer.ApplicantID,sum(Coefficient*
case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivityID=2 then     @BlankItemPoint
      when  ApplicantAnswer.AnswerItemNumber in ( Question.CorrectItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=3 then @CorrectItemPoint
      else    @WrongItemPoint end) as finalmark 
into #m
FROM         ApplicantAnswer 
INNER JOIN   Question ON ApplicantAnswer.QuestionID = Question.QuestionID

where Question.ExamID=@ExamID and question.Number between @questionNumber1  and @questionNumber2
group by ApplicantAnswer.ApplicantID

 
declare @FullPoint float
select @FullPoint=sum( Coefficient)
FROM         Question 
WHERE     ( ExamID = @ExamID) and question.Number between @questionNumber1  and @questionNumber2 and (questionactivityid<>2)

select @FullPoint=CorrectItemPoint*@fullPoint 
from Exam 
WHERE     ( ExamID = @ExamID)


SELECT     Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle, @FullPoint FullPoint , 
case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@FullPoint,2) end mark

FROM      Applicant    
INNER JOIN    #m  ON #m.ApplicantID = Applicant.ApplicantID 
left  JOIN Major  ON Applicant.MajorID = Major.MajorID
left join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
 LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.FacultyID






GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_Examid_Tahlil]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Applicant_by_Examid_Tahlil]
	(@ExamID	int)
AS
declare @FullPoint float,@maxMark FLOAT,@Number_of_Question INT,
		@AcceptCount NUMERIC(6,2),@RejectCount NUMERIC(6,2),
		@AcceptPercent NUMERIC(6,2),@RejectPercent NUMERIC(6,2),
		@RecCount NUMERIC(6,2)
		
IF OBJECT_ID('tempdb..#Applicant') IS NOT NULL DROP TABLE #Applicant

select @FullPoint=sum(Coefficient)
FROM Question
WHERE (ExamID=@ExamID) and (questionactivityid<>2)

select @FullPoint=CorrectItemPoint*@fullPoint,@maxMark=maxMark,@Number_of_Question=Number_of_Question
from Exam 
WHERE (ExamID=@ExamID)

if @maxMark is null or @maxMark<=0 set @maxMark=20

--SELECT @Number_of_Question/@MaxMark , @maxMark ,  @FullPoint
--SELECT FinalMark FROM ApplicantExam WHERE ExamID=223  


SELECT    Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle, ApplicantExam.FinalMark, @FullPoint FullPoint ,ApplicantExam.ord, 
                      CASE WHEN ApplicantExam.Accepted = 1 THEN 'قبول' ELSE 'رد' END ACCEPT, Grouping.GroupingTitle,
--case when FinalMark<0 then 0 else round(FinalMark*@maxMark/@FullPoint,2) end mark,
--case when FinalMark<0 then 0 else round(FinalMark*20.0/@FullPoint,2) end mark20,
--case when FinalMark<0 then 0 else round(FinalMark*100.0/@FullPoint,2) end mark100
case when FinalMark<0 then 0 else round(FinalMark,2) end mark,
case when FinalMark<0 then 0 else round(FinalMark*(20/@maxMark),2) end mark20,
case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMark),2) end mark100,
CAST(0.0 AS NUMERIC(6,2)) AS AcceptCount,
CAST(0.0 AS NUMERIC(6,2)) AS RejectCount,
CAST(0.0 AS NUMERIC(6,2)) AS AcceptPercent,
CAST(0.0 AS NUMERIC(6,2)) AS RejectPercent

INTO #Applicant
FROM      Applicant    
INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
left  JOIN Major  ON Applicant.MajorID = Major.MajorID
left join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
 LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
where ExamId=@ExamId
order by ord

SELECT @AcceptCount=COUNT(*) FROM #Applicant WHERE ACCEPT='قبول'
SELECT @RejectCount=COUNT(*) FROM #Applicant WHERE ACCEPT='رد' 
SELECT @RecCount=COUNT(*) FROM #Applicant 
SELECT @AcceptPercent=(@AcceptCount/@RecCount)*100
SELECT @RejectPercent=(@RejectCount/@RecCount)*100

UPDATE #Applicant
SET AcceptCount=@AcceptCount,
	RejectCount=@RejectCount,
	AcceptPercent=@AcceptPercent,
	RejectPercent=@RejectPercent

SELECT TOP 1                
		CAST(AcceptCount AS INT) AcceptCount,                             
		CAST(RejectCount AS INT) RejectCount,                             
		AcceptPercent,                           
		RejectPercent
FROM #Applicant
GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_Examid_TrainingCourseID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  PROCEDURE [dbo].[Select_Applicant_by_Examid_TrainingCourseID]
	(@ExamID	[int],
@TrainingCourseID int)
AS


SELECT     Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle, ApplicantExam.FinalMark, ApplicantExam.ord
FROM      Applicant    
INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
left JOIN    Grouping ON Grouping.GroupingID = ApplicantExam.GroupingID
left  JOIN Major  ON Applicant.MajorID = Major.MajorID
left join EducationGroup  ON EducationGroup.EducationGroupID = Major.EducationGroupID
 LEFT  JOIN  Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
where ExamId=@ExamId and Applicant.applicantid in (SELECT     ApplicantID FROM  ApplicantCourse WHERE   TrainingCourseID = @TrainingCourseID)
order by ord





GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_TrainingCourseID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Applicant_by_TrainingCourseID]
	(@TrainingCourseID	int)
AS
SELECT    top 1000  Applicant.*  , Faculty.FacultyTitle, Major.MajorTitle, ApplicantExam.FinalMark, ApplicantExam.ord, 
                      CASE WHEN ApplicantExam.Accepted = 1 THEN 'قبول' ELSE 'رد' END ACCEPT, Grouping.GroupingTitle,
EducationMark   mark20,
Course.CourseTitle, Course.CourseCode, TrainingCourse.TermCode CourseTerm , TrainingCourse.GrourpCode, TrainingCourse.StartDate, 
                      Teacher.TeacherCode, Teacher.FullName TeacherTitle, 
                      isnull(Exam.ExamDate, '') AS ExamDate, isnull(Exam.ExamTitle, '') AS ExamTitle, isnull(Exam.TermCode, 0) ExamTerm,
                      EducationGroup.EducationGroupTitle
FROM         Applicant 
left  JOIN   ApplicantExam ON ApplicantExam.ApplicantID = Applicant.ApplicantID 
LEFT JOIN Exam ON ApplicantExam.ExamID = Exam.ExamID
INNER JOIN ApplicantCourse ON Applicant.ApplicantID = ApplicantCourse.ApplicantID
INNER JOIN TrainingCourse ON ApplicantCourse.TrainingCourseID = TrainingCourse.TrainingCourseID
INNER JOIN  Course ON TrainingCourse.CourseID = Course.CourseID 
left JOIN   Grouping ON ApplicantExam.GroupingID = Grouping.GroupingID
left JOIN  Teacher ON TrainingCourse.TeacherID = Teacher.TeacherID 
LEFT  JOIN Major ON Applicant.MajorID = Major.MajorID 
LEFT  JOIN EducationGroup ON EducationGroup.EducationGroupID = Major.EducationGroupID 
LEFT  JOIN   Faculty ON EducationGroup.FacultyID = Faculty.FacultyID
WHERE     (TrainingCourse.TrainingCourseID=@TrainingCourseID )
order by ord
	
GO
/****** Object:  StoredProcedure [dbo].[Select_Applicant_by_Where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Applicant_by_Where]
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
/****** Object:  StoredProcedure [dbo].[Select_Applicant_Picture_By_ApplicantID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Applicant_Picture_By_ApplicantID]
(
	@ApplicantID 	int
)

AS  
Select ApplicantID,ApplicantPicture 
	FROM ApplicantData 
	WHERE (ApplicantID = @ApplicantID)

GO
/****** Object:  StoredProcedure [dbo].[Select_ApplicantAnswer_by_ApplicantID_and_ExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_ApplicantAnswer_by_ApplicantID_and_ExamID]
@ApplicantID int ,@ExamID int 
AS
 
SELECT     *
FROM         ApplicantAnswer INNER JOIN
                      Question ON ApplicantAnswer.QuestionID = Question.QuestionID
WHERE     (ApplicantID =  @ApplicantID ) and (Question.ExamID = @ExamID )




GO
/****** Object:  StoredProcedure [dbo].[Select_ApplicantExam_Log]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_ApplicantExam_Log]
(
  @applicantID INT ,
  @ExamID [int]
 )
AS
BEGIN 
      DECLARE @CorrectItemPoint FLOAT ,
              @BlankItemPoint FLOAT ,
              @WrongItemPoint FLOAT

      SELECT    @BlankItemPoint = BlankItemPoint, @CorrectItemPoint = CorrectItemPoint, @WrongItemPoint = WrongItemPoint
      FROM      Exam
      WHERE     ExamID = @ExamID

      SELECT    MAX(ApplicantID) ApplicantID, ISNULL(Course.CourseTitle, 'ساير دروس') coursetitle,
                ROUND(ISNULL(MAX(CourseMark), 100.0) * SUM(Coefficient * CASE WHEN ApplicantAnswer.AnswerItemNumber = 0 OR QuestionActivityID = 2
                                                                              THEN @BlankItemPoint
                                                                              WHEN ApplicantAnswer.AnswerItemNumber IN (
                                                                                   CorrectItemNumber, CorrectItemNumber2,
                                                                                   CorrectItemNumber3,
                                                                                   CorrectItemNumber4,
                                                                                   CorrectItemNumber5,
                                                                                   CorrectItemNumber6 ) OR QuestionActivityID = 3
                                                                              THEN @CorrectItemPoint
                                                                              ELSE @WrongItemPoint
                                                                         END) / SUM(Coefficient * @CorrectItemPoint), 2) PercentMark
      FROM      Question
                INNER JOIN ApplicantAnswer ON Question.QuestionID = ApplicantAnswer.QuestionID
                LEFT OUTER JOIN Course ON Question.CourseID = Course.CourseID
      WHERE     ( Question.ExamID = @ExamID ) AND ( ApplicantAnswer.ApplicantID = @ApplicantID ) AND QuestionActivityID IN (
                1, 3 )
      GROUP BY  ISNULL(Course.CourseTitle, 'ساير دروس')
      ORDER BY  1
END
	
GO
/****** Object:  StoredProcedure [dbo].[Select_ApplicantExam_Log_List]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_ApplicantExam_Log_List] @ExamId int 
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
		SELECT  ApplicantID,isnull(Course.CourseTitle,''ساير دروس'') coursetitle,
		Round(100.0*sum(Coefficient*
		case  when  ApplicantAnswer.AnswerItemNumber=0 or QuestionActivityID=2 then     '+str(@BlankItemPoint)+'
			  when  ApplicantAnswer.AnswerItemNumber in ( Question.CorrectItemNumber,Question.CorrectItemNumber2) or QuestionActivityID=3 then '+str(@CorrectItemPoint)+'
			  else    '+str(@WrongItemPoint)+' end)/sum(Coefficient*'+str(@CorrectItemPoint)+'),2) PercentMark
		FROM         Question 
		INNER JOIN ApplicantAnswer ON Question.QuestionID = ApplicantAnswer.QuestionID 
		LEFT OUTER JOIN Course ON Question.CourseID = Course.CourseID
		WHERE     (Question.ExamID = '+str(@examid)+') AND QuestionActivityID in (1,3)
		group by isnull(Course.CourseTitle,''ساير دروس''),ApplicantID


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



	SELECT    a.ApplicantCode[شماره دانشجويي],a.FullName [نام و نام خانوادگي] , ApplicantExam.FinalMark[تراز کل دانشجو], @FullPoint  [تراز کامل],ApplicantExam.ord[رتبه دانشجو],case when FinalMark<0 then 0 else round(FinalMark*(100.0/@maxMark),2) end [رتبه کل به درصد],##AppLog.*
	FROM      Applicant a
	inner join ##AppLog on a.ApplicantID=##AppLog.ApplicantID
	INNER JOIN    ApplicantExam  ON ApplicantExam.ApplicantID = a.ApplicantID 
	where ExamId=@ExamId
	order by ord

	end

GO
/****** Object:  StoredProcedure [dbo].[select_Course]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create Proc [dbo].[select_Course]
@Like nvarchar(50)
as
SELECT     *
FROM         Course
WHERE     (CourseTitle LIKE '%'+@like+'%') OR  (CourseCode LIKE N'%'+@like+'%')




GO
/****** Object:  StoredProcedure [dbo].[Select_Course_By_ExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Course_By_ExamID]
	(@ExamID	int)
AS
SELECT  Course.*
FROM         Question INNER JOIN
                      Course ON Question.CourseID = Course.CourseID
WHERE     (Question.ExamID = @ExamID)




GO
/****** Object:  StoredProcedure [dbo].[Select_Course_By_InstructorTeacherID_and_where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Course_By_InstructorTeacherID_and_where]
@TeacherID int ,@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     *
FROM         TrainingCourse
WHERE   TeacherID='+cast(@TeacherID as varchar(10)) 
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' and '+@where
set @SqlCommand=@SqlCommand+@where+' order by Exam.ExamID  '
exec sp_executesql @SqlCommand





GO
/****** Object:  StoredProcedure [dbo].[Select_EducationGroup_by_FacultyID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  PROCEDURE [dbo].[Select_EducationGroup_by_FacultyID]
	(@FacultyID	[int])
AS
SELECT     *
FROM         EducationGroup
WHERE     (FacultyID = @FacultyID)




GO
/****** Object:  StoredProcedure [dbo].[Select_Exam_By_ApplicantID_and_Where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Exam_By_ApplicantID_and_Where]
@ApplicantID int ,@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     *
FROM         ApplicantExam
WHERE     (ApplicantID = '+cast(@ApplicantID as varchar(10))
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' and '+@where
set @SqlCommand=@SqlCommand+@where+' order by ExamID  '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Select_Exam_By_DesignerTeacherID_and_where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Exam_By_DesignerTeacherID_and_where]
@TeacherID int ,@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     Exam.ExamID
FROM         Exam INNER JOIN
                      Question ON Exam.ExamID = Question.ExamID
WHERE     Question.DesignerTeacherID = '+cast(@TeacherID as varchar(10))
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' and '+@where
set @SqlCommand=@SqlCommand+@where+' order by Exam.ExamID  '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Select_Exam_ByExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Exam_ByExamID]
(
  @ExamID 	int
)
AS  
SELECT  ExamID, ExamTitle, MainCourseID, MainDesignerTeacherID, ExamDate, CorrectItemPoint, WrongItemPoint, DamagedItemPoint, BlankItemPoint,
ROUND(CorrectItemPoint,3) AS CorrectIP, ROUND(WrongItemPoint,3) AS WrongIP, ROUND(DamagedItemPoint,3) AS DamagedIP,ROUND(BlankItemPoint,3) AS BlankIP, 
MinPassedMark, ExamTypeID, Number_of_Items, Number_of_Question, number_of_applicant, TexFormatID, AnswerKey, Difficulty, 
Discrimination, StandardError, Alpha, Reliability, ExamVariance, NumberOf_1item_Question, NumberOf_2item_Question, NumberOf_3item_Question, 
NumberOf_4item_Question, NumberOf_5item_Question, RPBIS, TermCode, KR20, MaxMark, NumberOf_6item_Question, EducationGroupID, TeacherID, 
CustomField1, CustomField2, CustomField3, CustomField4, CustomField5
,GroupExamid
FROM Exam
WHERE (ExamID = @ExamID)
	
GO
/****** Object:  StoredProcedure [dbo].[Select_Exam_CorrectNumber]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Exam_CorrectNumber]
@examID int 
as
select CorrectItemNumber,count(*)
from question
where CorrectItemNumber between 1 and 6  and  examid=@examid
group by CorrectItemNumber
GO
/****** Object:  StoredProcedure [dbo].[Select_Exam_QuestionActivity]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[Select_Exam_QuestionActivity]
@examID int 
as
select QuestionActivityTitle,count(*)
from question
inner join QuestionActivity on QuestionActivity.QuestionActivityid=question.QuestionActivityID
where examid=@examID
group by QuestionActivitytitle






GO
/****** Object:  StoredProcedure [dbo].[Select_ExamData]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create Procedure [dbo].[Select_ExamData](@ExamID int)
as
Select *
from ExamData
where ExamID=@examID

GO
/****** Object:  StoredProcedure [dbo].[Select_ExamDetail]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_ExamDetail]
	(@ExamID 	int)
AS  Select * from Exam 
WHERE 
	( ExamID	 = @ExamID)




GO
/****** Object:  StoredProcedure [dbo].[Select_ExamDetail_by_where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_ExamDetail_by_where]
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
(select count(*) from QuestionDelete '+@where+') as del ,
round(AVG(FinalMark),3)     AS [ميانگين نمرات],
round( STDEVP(FinalMark),3)  AS [استاندارد دويشن نمرات],
max((case when FinalMark<0 then 0 else round((FinalMark*(Number_of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null or maxmark <=0 then 20 else maxmark
end))/dbo.CalcFullPoint(Exam.examid)
                                                                ,2) end)  )  AS [بيشترين نمرات]
,
min((case when FinalMark<0 then 0 else round((FinalMark*(Number_of_Question/MaxMark)*CorrectItemPoint*(case when maxmark is null or maxmark <=0 then 20 else maxmark
end))/dbo.CalcFullPoint(Exam.examid)
                                                                ,2) end)  )  AS [کمترين نمرات] '
set @s=@s+'
 into ##ApplicantExam
FROM      ApplicantExam
inner join Exam on ApplicantExam.examid=Exam.examid
where Exam.examid in (select examid from ##E)
group by ApplicantExam.ExamID
'

exec(@s)

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



SELECT
dbo.[Select_Applicant_by_Examid_Tahlil_TEDAD_RADI]('+SUBSTRING(@where,15,LEN(@where)-14)+') [تعداد ردي] ,
dbo.[Select_Applicant_by_Examid_Tahlil_TEDAD_GHABOLI]('+SUBSTRING(@where,15,LEN(@where)-14)+') [تعداد قبولي] ,
CAST(ROUND(CAST(dbo.[Select_Applicant_by_Examid_Tahlil_PERCENT_RADI]('+SUBSTRING(@where,15,LEN(@where)-14)+') AS FLOAT),2) AS VARCHAR(100)) [درصد ردي] ,
CAST(ROUND(CAST(dbo.[Select_Applicant_by_Examid_Tahlil_PERCENT_GHABOLI]('+SUBSTRING(@where,15,LEN(@where)-14)+') AS FLOAT),2) AS VARCHAR(100)) [درصد قبولي],
Exam.ExamTitle [عنوان آزمون],
Exam.ExamDate [تاريخ برگزاري],
Exam.CorrectItemPoint [امتياز پاسخ درست],
Exam.WrongItemPoint [امتياز پاسخ نادرست],
Exam.BlankItemPoint [امتياز بدون پاسخ],
Exam.MinPassedMark*Exam.Maxmark/100 [نمره قبولي],
Exam.Number_of_Items [تعداد گزينه],
Exam.Number_of_Question [تعداد سئوال],
(select count(*) from QuestionDelete '+@where+') as [سوالات حذفي] ,
Exam.number_of_applicant [تعداد داوطلب],
round(exam.Difficulty,2) as [ضريب دشواري],
Round(Exam.Discrimination,2) as [ضريب افتراق],
NumberOf_1item_Question [تعداد سئوالات 1 گزينه اي],
NumberOf_2item_Question [تعداد سئوالات 2 گزينه اي],
NumberOf_3item_Question [تعداد سئوالات 3 گزينه اي],
NumberOf_4item_Question [تعداد سئوالات 4 گزينه اي],
NumberOf_5item_Question [تعداد سئوالات 5 گزينه اي],
NumberOf_6item_Question [تعداد سئوالات 6 گزينه اي],
round(StandardError,2)  [خطاي استاندارد],
Alpha آلفا,
round(ExamVariance,2) [واريانس نمرات],
RPBIS ,
@parmRET1 KR20 , 1 taxonomy1, 1 taxonomy2,1 taxonomy3,1 taxonomy23,1 objectionnumber0,1 objectionnumber1,
1 objectionnumber2,1 objectionnumber3,
 ##ApplicantExam.* '
select @s=@s+', (select count(Questionid) from Question where examId=Exam.ExamID and
Difficulty >= '+cast(minvalue as varchar(10))+' and Difficulty <'+cast(maxvalue as varchar(10)) +') as [دشواري:'+Difficultytitle+'] '
from Difficulty

select @s=@s+', (select count(Questionid) from Question where examId=Exam.ExamID and
Discrimination >=   '+cast(minvalue as varchar(10))+' and  Discrimination<'+cast(maxvalue as varchar(10))+') as [افتراق:'+DiscriminationTitle+'] '
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
	
GO
/****** Object:  StoredProcedure [dbo].[Select_ExamText]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_ExamText]
	(@ExamID 	int)
AS Select * From ExamText 
WHERE 
	( ExamID	 = @ExamID)




GO
/****** Object:  StoredProcedure [dbo].[Select_Major_by_EducationGroupID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[Select_Major_by_EducationGroupID]
	(@EducationGroupID	[int])
AS
SELECT     *
FROM         Major
WHERE     (EducationGroupID = @EducationGroupID)







GO
/****** Object:  StoredProcedure [dbo].[Select_Question]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Question]
		(@QuestionID 	int)
	AS  
    
    Select QuestionID, ExamID, Number, DesignerTeacherID, CourseID, CorrectItemNumber, Coefficient, QuestionActivityID, CorrectItemNumber2,CorrectItemNumber3,CorrectItemNumber4,
	CorrectItemNumber5,CorrectItemNumber6,Taxonomy
	FROM Question 
	WHERE (QuestionID = @QuestionID)
	
GO
/****** Object:  StoredProcedure [dbo].[Select_Question_By_CourseID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[Select_Question_By_CourseID]
@CourseID int
as
SELECT     * 
FROM         Question
WHERE     (CourseID = @CourseID)




GO
/****** Object:  StoredProcedure [dbo].[Select_Question_By_ExamID_and_Where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Question_By_ExamID_and_Where]
(
	@examId int,
	@where 	nvarchar(2000)
)

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
exec(@sql)
	
GO
/****** Object:  StoredProcedure [dbo].[Select_Question_By_ExamID_TeacherID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Question_By_ExamID_TeacherID]
@TeacherID smallint ,@ExamID int
AS

SELECT     Question.*, DifficultyTitle, DiscriminationTitle,questionActivityTitle
FROM         Question left JOIN
                      Difficulty ON Question.Difficulty >= Difficulty.MinValue and Question.Difficulty <Difficulty.MaxValue left JOIN
                      Discrimination ON Question.Discrimination >= Discrimination.MinValue and Question.Discrimination <Discrimination.MaxValue
left join questionActivity on  questionActivity.questionActivityID= Question.questionActivityID
where ExamID=@ExamID and DesignerTeacherID=@TeacherID





GO
/****** Object:  StoredProcedure [dbo].[Select_Question_By_ExamID_TeacherID_and_where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Question_By_ExamID_TeacherID_and_where]
@TeacherID smallint ,@ExamID int
AS
SELECT     *
FROM         Question
WHERE     (DesignerTeacherID = @TeacherID) AND (ExamID = @ExamID)




GO
/****** Object:  StoredProcedure [dbo].[Select_Question_By_TemporaryActive]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[Select_Question_By_TemporaryActive]
	(@ExamID 	[int],
	 @TemporaryActive 	[bit])

AS select * from Question
where ExamID=@ExamID and  [TemporaryActive]	 = @TemporaryActive 






GO
/****** Object:  StoredProcedure [dbo].[Select_Question_byExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[Select_Question_byExamID]
	(@ExamID	[int])
AS
SELECT     Question.*, DifficultyTitle, DiscriminationTitle,questionActivityTitle
FROM         Question left JOIN
                      Difficulty ON Question.Difficulty >= Difficulty.MinValue and Question.Difficulty <Difficulty.MaxValue left JOIN
                      Discrimination ON Question.Discrimination >= Discrimination.MinValue and Question.Discrimination <Discrimination.MaxValue
left join questionActivity on  questionActivity.questionActivityID= Question.questionActivityID
where ExamID=@ExamID




GO
/****** Object:  StoredProcedure [dbo].[Select_Question_byExamID2]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  PROCEDURE [dbo].[Select_Question_byExamID2]
	(@ExamID	[int])
AS

SELECT    *
FROM         Question
WHERE     ExamID =@ExamID





GO
/****** Object:  StoredProcedure [dbo].[Select_QuestionBody_by_QuestionBodyID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




Create Proc [dbo].[Select_QuestionBody_by_QuestionBodyID]
@QuestionBodyID  int
as
SELECT     *
FROM         QuestionBody
WHERE     (QuestionBodyID = @QuestionBodyID)




GO
/****** Object:  StoredProcedure [dbo].[Select_QuestionBody_By_Where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[Select_QuestionBody_By_Where]
	(@where 	nvarchar(2000))
AS
declare @SQL nvarchar(4000)


set @SQL='SELECT    top 1000 QuestionBody.QuestionBodyID, QuestionBody.Title, 
QuestionBody.SubCourseID, QuestionBody.CorrectItem, Course.CourseCode, Course.CourseTitle, 
                      SubCourseTitle
FROM     QuestionBody  
left JOIN   SubCourse ON SubCourse.SubCourseID = QuestionBody.SubCourseID
left JOIN   Course    ON Course.CourseID       = SubCourse.CourseID  '
                      

set @where =case when ltrim(isnull(@where,''))='' then '' else ' where '+@where end 
set @sql=@sql+@where 
exec(@sql)



GO
/****** Object:  StoredProcedure [dbo].[Select_QuestionBodyTemplate]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[Select_QuestionBodyTemplate]
as
SELECT     WordBody
FROM         QuestionBody



GO
/****** Object:  StoredProcedure [dbo].[Select_QuestionDetail]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_QuestionDetail]
	(@QuestionID 	int)
AS  Select * from Question 
WHERE 
	( QuestionID	 = @QuestionID)




GO
/****** Object:  StoredProcedure [dbo].[select_SubCourse_By_CourseID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[select_SubCourse_By_CourseID]
@CourseID int 
as
SELECT     *
FROM         SubCourse
WHERE     (CourseID =@CourseID)




GO
/****** Object:  StoredProcedure [dbo].[select_SubCourseTitle_By_bysubCourseID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[select_SubCourseTitle_By_bysubCourseID]
@SubCourseID int,@title nvarchar(100) output 
as
SELECT     @title=Course.CourseTitle+':'+ SubCourse.SubCourseTitle
FROM         SubCourse INNER JOIN
                      Course ON SubCourse.CourseID = Course.CourseID
WHERE     (SubCourse.SubCourseID = @SubCourseID)

set @title=isnull(@title,'')




GO
/****** Object:  StoredProcedure [dbo].[Select_Table_CustomFieldsCaption]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Table_CustomFieldsCaption]
@TableName NVARCHAR(50)
AS 
DECLARE @cfc1 NVARCHAR(50),
		@cfc2 NVARCHAR(50),
		@cfc3 NVARCHAR(50),
		@cfc4 NVARCHAR(50),
		@cfc5 NVARCHAR(50) 
		
SELECT @cfc1 = VALUE FROM sys_Setting WHERE VariableName = @TableName+'.CustomField1'
SELECT @cfc2 = VALUE FROM sys_Setting WHERE VariableName = @TableName+'.CustomField2'
SELECT @cfc3 = VALUE FROM sys_Setting WHERE VariableName = @TableName+'.CustomField3'
SELECT @cfc4 = VALUE FROM sys_Setting WHERE VariableName = @TableName+'.CustomField4'
SELECT @cfc5 = VALUE FROM sys_Setting WHERE VariableName = @TableName+'.CustomField5'

Select	ISNULL(@cfc1,'فيلد 1') AS CFC1,
		ISNULL(@cfc2,'فيلد 2') AS CFC2,
		ISNULL(@cfc3,'فيلد 3') AS CFC3,
		ISNULL(@cfc4,'فيلد 4') AS CFC4,
		ISNULL(@cfc5,'فيلد 5') AS CFC5

GO
/****** Object:  StoredProcedure [dbo].[Select_Teacher_by_TeacherID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_Teacher_by_TeacherID]
	(@TeacherID 	smallint)
AS  Select * from Teacher 
WHERE 
	( TeacherID	 = @TeacherID)



GO
/****** Object:  StoredProcedure [dbo].[select_teacher_by_where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE proc [dbo].[select_teacher_by_where]
@where nvarchar(3000)
as
declare @sql nvarchar(4000)
set @sql='select TeacherID into ##temp
from Teacher '+case when isnull(ltrim(@where),'')='' then '' else ' where '+@where end
exec(@sql)
SELECT TeacherID, TeacherCode, FirstName, LastName, FullName, Title,
round(AVG(Difficulty),3) difficulty, round(AVG(Discrimination),3) Discrimination, 
sum(case when QuestionActivityID=1 then 1 else 0 end) NormalQuestion,
sum(case when QuestionActivityID=2 then 1 else 0 end) DeleetedQuestion,
sum(case when QuestionActivityID=3 then 1 else 0 end) AddedQuestion,
round( AVG(RPBIS),3) RPBIS, 
sum(case when number_Of_Item=1 then 1 else 0 end) Question_1tem_number,
sum(case when number_Of_Item=2 then 1 else 0 end) Question_2tem_number,
sum(case when number_Of_Item=3 then 1 else 0 end) Question_3tem_number,
sum(case when number_Of_Item=4 then 1 else 0 end) Question_4tem_number,
sum(case when number_Of_Item=5 then 1 else 0 end) Question_51tem_number
FROM         teacher
left join Question on teacher.TeacherID=Question.DesignerTeacherID
WHERE     teacherid in (select TeacherID from ##temp)
GROUP BY TeacherID, TeacherCode, FirstName, LastName, FullName, Title
drop table ##temp





GO
/****** Object:  StoredProcedure [dbo].[Select_TrainingCourse]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc 
[dbo].[Select_TrainingCourse]
@TrainingCourseID int
as 
SELECT     *
FROM         TrainingCourse
WHERE     (TrainingCourseID = @TrainingCourseID)




GO
/****** Object:  StoredProcedure [dbo].[Select_TrainingCourse_By_ApplicantID_and_Where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Select_TrainingCourse_By_ApplicantID_and_Where]
@ApplicantID int ,@where varchar(2047)
AS
 declare @SqlCommand nvarchar(4000)
 set   @SqlCommand='SELECT     *
FROM         ApplicantCourse
WHERE     (ApplicantID = '+cast(@ApplicantID as varchar(10))
set @where=isnull(ltrim(@where),'')
 if @where<>''  set  @where=' and '+@where
set @SqlCommand=@SqlCommand+@where+' order by 1  '
exec sp_executesql @SqlCommand




GO
/****** Object:  StoredProcedure [dbo].[Select_TrainingCourse_By_Where]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_TrainingCourse_By_Where]
(
	@where 	nvarchar(2000)
)

AS

declare @SQL nvarchar(4000)
set @SQL='SELECT  TrainingCourse.*,Course.CourseCode, Course.CourseTitle, Teacher.TeacherCode, Teacher.FirstName, Teacher.LastName, Teacher.FullName, 
                      Teacher.Title, Exam.ExamTitle
FROM	Course 
		LEFT OUTER JOIN TrainingCourse ON TrainingCourse.CourseID = Course.CourseID 
		LEFT OUTER JOIN Teacher ON TrainingCourse.TeacherID = Teacher.TeacherID 
		LEFT OUTER JOIN Exam ON TrainingCourse.ExamID = Exam.ExamID '
set @where =case when ltrim(isnull(@where,''))='' then '' else ' where '+@where + ' --and TrainingCourseID IS NULL'end 
set @sql=@sql+@where 
exec(@sql)
	
GO
/****** Object:  StoredProcedure [dbo].[Select_TrainingCourse_Detail]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[Select_TrainingCourse_Detail]
@TrainingCourseID int
as 
SELECT     *
FROM         TrainingCourse
WHERE     (TrainingCourseID = @TrainingCourseID)




GO
/****** Object:  StoredProcedure [dbo].[SelectReportFile]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SelectReportFile]
@ID INT
AS
	SELECT [Name],[File] FROM Reports WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[SelectReports]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SelectReports]
AS
	SELECT [ID],[Name] FROM Reports 

GO
/****** Object:  StoredProcedure [dbo].[Set_systemSetting]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Set_systemSetting]
@VariableName varchar(50),@Value nvarchar(100)
AS
exec Set_UserSetting -1 ,@VariableName ,@Value



GO
/****** Object:  StoredProcedure [dbo].[Set_UserSetting]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Set_UserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(100)
AS
if not exists(select * From sys_Setting WHERE (UserID = @UserID) AND (VariableName = @VariableName))
insert into sys_Setting(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)
Update sys_Setting
set Value=@Value
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)

GO
/****** Object:  StoredProcedure [dbo].[sp_delphi]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE  [dbo].[sp_delphi] (@spN varchar(50) )
as
declare @line1 varchar(1000),@line2 varchar(4000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname varchar(100),
@isoutparam bit,@temp int,@length int,@isFunction bit ,@Rtype nvarchar(100),@Rpname nvarchar(100)
  SELECT    identity(int,1,1) id, name  into #m
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like '%'+@spn) 
select @count=max(id)
from #m
set @id=1
while @id<=@count 
 begin
   select @spname=name from #m where id=@id
   declare spcol cursor for  
    select substring(syscolumns.name,2,100),max(dbo.delphiType(systypes.name)),max(colid),max( isoutparam),max(syscolumns.length)
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id INNER JOIN
            systypes ON syscolumns.xtype = systypes.xtype
    WHERE     (sysobjects.xtype = 'p') AND (sysobjects.name = @spname)
    group by substring(syscolumns.name,2,100)
   order by 3
if (    select count(syscolumns.name)
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id 
    WHERE      (sysobjects.name =@spname) and syscolumns.isoutparam=1)=1 
set @isFunction =1
else 
set @isFunction=0
    open  spcol 
    fetch next from spcol into @colname,@spType,@temp,@isoutparam,@length
    set @line1=case when @isfunction=0 then 'Procedure  ' else 'function ' end+'Exec_'+@spname+'('
    set @line2='';
    while @@Fetch_Status=0 
     begin
      if @colname='type' set @colname='_Type'
      set @line1=@line1+case when @isfunction=0 or @isoutparam=0 then  @colname+':'+@spType+';' else '' end
      set @line2=@line2+'
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ft'+@spType+';
      Direction := '+case @isoutparam when 0 then 'pdInput;' else 'pdoutput;' end +'
      Name:=''@'+@colname+''';'+case when @spType like '%string%' then '
      size:= '+cast(@length as varchar(10))+';' else '' end+
case @isoutparam when 0 then  '
      Value :='+@colname+';
' else '' end +'
    end;
'
if  @isoutparam=1 set  @Rtype=@spType;
if  @isoutparam=1 set  @Rpname=@colname;
    fetch next from spcol into @colname,@spType,@temp,@isoutparam,@length
     end;
if @line1 like '%;' set @line1=substring(@line1,1,len(@line1)-1)
set @line1=@line1+case when  @isfunction=0 then ');' else '):'+@Rtype+';' end 
    print replace(@line1+'
'+@line1+'
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='''+@spname+''';
',';;',';')
PRINT @LINE2
    print
'    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
'+case when @isfunction=0 then '' else 
'   Result:=ADOSP.Parameters.ParamByname(''@'+@Rpname+''').value;' end+'
end;'
  close spcol
  deallocate spcol
  set @id=@id+1
 end



GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_proceByName]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  procedure  [dbo].[sp_delphi_proceByName](@spN varchar(50) )
as

declare @ALL VARCHAR(4000),@line1 varchar(1000),@line2 varchar(4000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname varchar(100)

  SELECT    identity(int,1,1) id, name  into #m
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like @spn)


select @count=max(id)
from #m



set @id=1

while @id<=@count
 begin
   select @spname=name from #m where id=@id
   declare spcol cursor for
    select substring(syscolumns.name,2,100),max(dbo.delphiType(systypes.name))
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id INNER JOIN
            systypes ON syscolumns.xtype = systypes.xtype
    WHERE     (sysobjects.xtype = 'p') AND (sysobjects.name = @spname)
    group by substring(syscolumns.name,2,100)
    open  spcol
    fetch next from spcol into @colname,@spType
    set @line1='Procedure  Open_'+@spname+'(';
    set @line2='';


    while @@Fetch_Status=0
     begin
      if @colname='type' set @colname='_Type'
      set @line1=@line1+@colname+':'+@spType+';'
      set @line2=@line2+'ParamByName(''@'+ @colname+''').value:='+@colName+';
'
    fetch next from spcol into @colname,@spType
     end

    SET @ALL= @line1+');
'+@line1+');
  begin
  with Dm.' + @spname +',parameters do
   begin
    Close;
    ' + @LINE2+'    Open;
   end;
end;'


PRINT Replace(REPLACE(@all,';;',';'),';)',')')

  close spcol
  deallocate spcol
  set @id=@id+1
 end
select  'object '+name+': TADOStoredProc
  Connection = YeganehConnection
  CursorType = ctStatic
  ProcedureName = '''+name+'''
end','
object D'+name+': TDataSource
  DataSet = '+name+'
end'
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like @spn)










GO
/****** Object:  StoredProcedure [dbo].[sp_EntityCaptions]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_EntityCaptions] 
AS
BEGIN
	DECLARE @ApplicantEntityCaption NVARCHAR(50),
		@ApplicantEntityPular NVARCHAR(50),
		@ApplicantCodeEntityCaption NVARCHAR(50)

	SELECT @ApplicantEntityCaption = [Value]
	FROM [sys_Setting] WHERE [VariableName] = N'AplicantCaption'
	
	SELECT @ApplicantEntityPular = [Value]
	FROM [sys_Setting] WHERE [VariableName] = N'AplicantPluralCaption'
	
	SELECT @ApplicantCodeEntityCaption = [Value]
	FROM [sys_Setting] WHERE [VariableName] = N'AplicantCodeCaption'

	IF @ApplicantEntityCaption IS NULL
		SET @ApplicantEntityCaption = N'دانشجو'
	IF @ApplicantEntityPular IS NULL
		SET @ApplicantEntityPular = N'دانشجويان'
	IF @ApplicantCodeEntityCaption IS NULL
		SET @ApplicantCodeEntityCaption = N'شماره دانشجويي'
	
	UPDATE sys_ActionGroup SET ActionGroupTitle = @ApplicantEntityPular WHERE ActionGroupID = 3

	UPDATE sys_Action SET ActionCaption = N'پاسخ هاي '+@ApplicantEntityCaption WHERE ActionName = N'xpBitBtn22'
	UPDATE sys_Action SET ActionCaption = N'پاسخ هاي '+@ApplicantEntityCaption WHERE ActionName = N'btnGetStno'
	UPDATE sys_Action SET ActionCaption = N'ايجاد '+@ApplicantEntityCaption WHERE ActionName = N'xpBitBtn50'
	UPDATE sys_Action SET ActionCaption = @ApplicantEntityPular+N' اين درس' WHERE ActionName = N'xpBitBtn33'
	UPDATE sys_Action SET ActionCaption = @ApplicantEntityPular+N' آزمون' WHERE ActionName = N'xpBitBtn6'
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Inport_Applicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_Inport_Applicant]
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
						SET @FacultyTitle = N'نامشخص'
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
					SET @EducationGroupTitle = N'نامشخص'
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
				SET @MajorTitle = N'نامشخص'
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
						SET @LevelTitle = N'نامشخص'
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
/****** Object:  StoredProcedure [dbo].[sp_Inport_Applicant_New]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_Inport_Applicant_New]
		@ApplicantCode			NVARCHAR(20)='',
		@FirstName				NVARCHAR(50)='',
		@LastName				NVARCHAR(50)='',
		@FatherName				NVARCHAR(50)='',
		@Termcode				NVARCHAR(3)='',
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
		@LevelTitle				NVARCHAR(50)='',
		@CourseCode 	        NVARCHAR(50)='',
		@CourseTitle            NVARCHAR(100)='',  
		@TeacherCode            NVARCHAR(50)='',
		@TeacherFullname        NVARCHAR(100)=''  
	AS
	BEGIN
        declare @ApplicantID    int ,@TrainingCourseID  int, @MajorID  smallint,
            @TeacherID  smallint,@ApplicantCourseID int,@CourseID  smallint		
				

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
						SET @FacultyTitle = N'نامشخص'
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
					SET @EducationGroupTitle = N'نامشخص'
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
				SET @MajorTitle = N'نامشخص'
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
						SET @LevelTitle = N'نامشخص'
					INSERT INTO [Level](LevelTitle)
					VALUES(@LevelTitle)
					SELECT @LevelID = @@IDENTITY	
				END
				INSERT INTO Major(MajorCode,MajorTitle,EducationGroupID,LevelID	)
				VALUES(@MajorCode,@MajorTitle,@EduGrpID,@LevelID)
				SELECT @MajorID = @@IDENTITY
			END
		END	
		
	    IF NOT EXISTS (SELECT * FROM Applicant WHERE ApplicantCode=@ApplicantCode)
	    begin 
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
				@CustomField5/* CustomField5	*/);
 			    select @ApplicantID=@@identity
	     END;    
		    
         exec imp_insert_Course  @CourseID  output, @CourseCode, @CourseTitle;
         exec imp_insert_Teacher @TeacherID output, @TeacherCode,@TeacherFullname;
         exec imp_insert_TrainingCourse @TrainingCourseID output,@CourseID,@TermCode,@EducationGroupCode,@TeacherID,0; --@ExamID
         exec imp_insert_ApplicantCourse @ApplicantCourseID output, @ApplicantID ,@TrainingCourseID;
         exec imp_insert_ApplicantSeatNumber @ApplicantID, @CourseID , @CustomField2				
	END



 
GO
/****** Object:  StoredProcedure [dbo].[SP_KR20]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SP_KR20](@examid int, @result float output)/* شماره آزمون */
AS
BEGIN 
declare @qn int, /* تعداد سوالات آزمون */
		@app int, /* تعداد داوطلبان آزمون */
		@pq float, /* مجموع (جواب هاي درست * ج.ابهاي غلط براي هر سوال) در */
		@vp float /* واريانس سوالات آزمون */
		
---------------------------------------------------------
select * into #ApplicantExam  
from ApplicantExam 
where examid=@examid

select * into #Question  
from Question 
where examid=@examid

select ApplicantAnswer.* into #ApplicantAnswer  
from ApplicantAnswer inner join Question on ApplicantAnswer.QuestionID = Question.QuestionID
where examid=@examid
---------------------------------------------------------

select @app=count(*), @vp=VARP(FinalMark) 
from #ApplicantExam
where examid=@examid


select @qn=count(*)
from #Question
where examid=@examid


set @pq=0
 
select @pq=@pq+
(correct* (@app - Correct))/cast((@app* @app)AS float) 
from #Question  q
where questionactivityid =1 and examid=@examid
set @result = 0
if @vp<>0 
	set @result = round( (@qn/ (@qn-1.0) )*(  1-(@pq/(@vp))  ),3)
IF @result<0 
SET @result = 0
return
END

GO
/****** Object:  StoredProcedure [dbo].[TrainingCourse_MarkList]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[TrainingCourse_MarkList]
	(@TrainingCourseID	int)
AS
SELECT     Applicant.*, ApplicantCourse.*
FROM         ApplicantCourse INNER JOIN
                      Applicant ON ApplicantCourse.ApplicantID = Applicant.ApplicantID
WHERE     (ApplicantCourse.TrainingCourseID = @TrainingCourseID)




GO
/****** Object:  StoredProcedure [dbo].[UnAssign_Applicant_To_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[UnAssign_Applicant_To_Exam]
@ApplicantID int,@ExamID int
as
delete AnswerKey where ApplicantExamID in (select ApplicantExamID  from ApplicantExam where ApplicantID=@ApplicantID and  ExamID=@ExamID)
delete ApplicantAnswer where ApplicantID=@ApplicantID and questionID in (select questionID  from question where  ExamID=@ExamID)
delete ApplicantExam  from ApplicantExam where ApplicantID=@ApplicantID and  ExamID=@ExamID





GO
/****** Object:  StoredProcedure [dbo].[UnAssign_TrainingCourse_From_Exam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE proc [dbo].[UnAssign_TrainingCourse_From_Exam]
@TrainingCourseID int,@ExamID int
as


delete  ApplicantExam
WHERE   ExamID=@ExamID and   
ApplicantID in (select ApplicantID from ApplicantCourse where  TrainingCourseID = @TrainingCourseID)

UPDATE    TrainingCourse
SET              ExamID = 0
WHERE     (TrainingCourseID = @TrainingCourseID)





GO
/****** Object:  StoredProcedure [dbo].[Update_Applicant_ByApplicantNo]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[Update_Applicant_ByApplicantNo]
@ApplicantWhere nvarchar(2000),
@TermCode_Start tinyint,
@TermCode_Len tinyint,
@MajorCode_Start tinyint,
@MajorCode_Len tinyint

as

declare @sql nvarchar(4000)
set @ApplicantWhere =isnull(ltrim(@ApplicantWhere),'')
if @ApplicantWhere<>'' 
   set @ApplicantWhere =' where '+@ApplicantWhere 
 
set @sql=' Update Applicant 
set Majorid=Major.Majorid
from Applicant
inner join Major on Major.MajorCode=Substring(applicantno,@p1,@p2) '+@ApplicantWhere
exec sp_executesql @sql,N'@p1 tinyint,@p2 tinyint',@MajorCode_Start ,@MajorCode_Len 


set @sql=' Update Applicant 
set TermCode=Substring(applicantno,@p1,@p2) '+@ApplicantWhere
exec sp_executesql @sql,N'@p1 tinyint,@p2 tinyint',@TermCode_Start ,@TermCode_Len 




GO
/****** Object:  StoredProcedure [dbo].[update_ApplicantExam_FinalMArk]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_ApplicantExam_FinalMArk]
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
		  when  ApplicantAnswer.AnswerItemNumber in ( CorrectItemNumber,CorrectItemNumber2 ,CorrectItemNumber3,CorrectItemNumber4 ,CorrectItemNumber5 ,CorrectItemNumber6) or QuestionActivityID=3 then @CorrectItemPoint
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

-------------------Modify By Mostafa Ramezani On 1394/04/10
UPDATE ApplicantExam
SET Accepted=
case when CAST((ISNULL(FinalMark,0)*100)/(ISNULL(exam.MaxMark,0)) AS FLOAT) >=CAST(ISNULL(MinPassedMark,0) AS FLOAT) then 1 else 0 end 
FROM ApplicantExam 
join exam on exam.examid=ApplicantExam.examid
WHERE exam.ExamID=@ExamID 


/*

	---------- Added BY Saeedi on 1391/01/29
		DECLARE @ApplicantID INT, @FinalMark FLOAT,@MaxMark FLOAT,@MinPassedMark1 FLOAT,@Mark FLOAT		
		,@id int=0
		
		SELECT @MaxMark=ISNULL(MaxMark,0),@MinPassedMark1=ISNULL(MinPassedMark,0) FROM Exam WHERE ExamID=@ExamID		
		
		DECLARE crr CURSOR FOR 	
		SELECT ApplicantID FROM Applicant 
		WHERE ApplicantID IN (SELECT ApplicantID FROM ApplicantExam WHERE ExamID=@ExamID)
		
		OPEN crr
		FETCH NEXT FROM crr INTO @ApplicantID

		WHILE @@FETCH_STATUS = 0
		BEGIN
		
		set @id=@id+1
		select @id
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
	 	
 	  	
	---------- End Of Added BY Saeedi on 1391/01/29
*/
GO
/****** Object:  StoredProcedure [dbo].[update_Exam_Numbers]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[update_Exam_Numbers]
	(@ExamID 	int,
	 @Number_of_Question int , @number_of_applicant int )
AS 
UPDATE  Exam 
SET  Number_of_Question=@Number_of_Question  , number_of_applicant=@number_of_applicant
WHERE 	( ExamID	 = @ExamID)




GO
/****** Object:  StoredProcedure [dbo].[Update_ExamAndQuestion_ByExamID]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Update_ExamAndQuestion_ByExamID]
(
	@ExamID	[int]
)

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
/****** Object:  StoredProcedure [dbo].[update_ExamKey]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[update_ExamKey]
	(@ExamID 	int,
	 @AnswerKey 	varchar(1000))
AS 
set @AnswerKey=replace(@AnswerKey,' ','0')
UPDATE  Exam 
SET  AnswerKey	 = @AnswerKey 
WHERE 	( ExamID	 = @ExamID)




GO
/****** Object:  StoredProcedure [dbo].[update_Question_TemporaryActive]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[update_Question_TemporaryActive]
	(@QuestionID 	[int],
	 @TemporaryActive 	[bit])

AS UPDATE [ExamAnalysis].[dbo].[Question] 

SET  [TemporaryActive]	 = @TemporaryActive 

WHERE 
	( [QuestionID]	 = @QuestionID)




GO
/****** Object:  StoredProcedure [dbo].[Update_Table_CustomFieldsCaption]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Update_Table_CustomFieldsCaption]
		@TableName NVARCHAR(50),
		@cfc1 NVARCHAR(50),
		@cfc2 NVARCHAR(50),
		@cfc3 NVARCHAR(50),
		@cfc4 NVARCHAR(50),
		@cfc5 NVARCHAR(50) 
AS		
IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableName+'.CustomField1')
	UPDATE sys_Setting SET [Value] = @cfc1 WHERE VariableName = @TableName+'.CustomField1'
ELSE 
	INSERT INTO sys_Setting(UserID,VariableName,[Value])
	VALUES(-1, @TableName+'.CustomField1', @cfc1)
	
IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableName+'.CustomField2')
	UPDATE sys_Setting SET [Value] = @cfc2 WHERE VariableName = @TableName+'.CustomField2'
ELSE 
	INSERT INTO sys_Setting(UserID,VariableName,[Value])
	VALUES(-1, @TableName+'.CustomField2', @cfc2)
	
IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableName+'.CustomField3')
	UPDATE sys_Setting SET [Value] = @cfc3 WHERE VariableName = @TableName+'.CustomField3'
ELSE 
	INSERT INTO sys_Setting(UserID,VariableName,[Value])
	VALUES(-1, @TableName+'.CustomField3', @cfc3)

IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableName+'.CustomField4')
	UPDATE sys_Setting SET [Value] = @cfc4 WHERE VariableName = @TableName+'.CustomField4'
ELSE 
	INSERT INTO sys_Setting(UserID,VariableName,[Value])
	VALUES(-1, @TableName+'.CustomField4', @cfc4)

IF EXISTS(SELECT * FROM sys_Setting WHERE VariableName = @TableName+'.CustomField5')
	UPDATE sys_Setting SET [Value] = @cfc5 WHERE VariableName = @TableName+'.CustomField5'
ELSE 
	INSERT INTO sys_Setting(UserID,VariableName,[Value])
	VALUES(-1, @TableName+'.CustomField5', @cfc5)

GO
/****** Object:  StoredProcedure [dbo].[UpdateAnswerKey]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[UpdateAnswerKey] 
@ExamID INT, @AnswerKey NVARCHAR(500)
AS
BEGIN
	UPDATE Question	SET	CorrectItemNumber = CONVERT(INT,SUBSTRING(@AnswerKey, Number,1))
	WHERE ExamID = @ExamID 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Calc_CourseMark_As_MaxMark]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_Calc_CourseMark_As_MaxMark] ( @ExamID INT )
AS
BEGIN
      SELECT    MAX(ExamID) ExamID, SUM(distinct ( CourseMark )) CourseMark
      INTO      #Tmp
      FROM      dbo.Question
      WHERE     ExamID = @ExamID
      GROUP BY  CourseID
    
      SELECT    MAX(Exam.MaxMark) MaxMark, ISNULL(SUM(CourseMark), 0) SumCourseMark
      FROM      exam
                INNER JOIN #Tmp ON #Tmp.ExamID = dbo.Exam.ExamID
      WHERE     Exam.ExamID = @ExamID
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Course_Count_ForExam]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_Course_Count_ForExam] ( @ExamID INT )
AS
BEGIN 
      SELECT    COUNT(DISTINCT ( CourseID )) CourseCount
      FROM      dbo.Question
      WHERE     ExamID = @ExamID
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListTafkikiKol]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_ListTafkikiKol] ( @ExamId INT )
AS
BEGIN

      CREATE TABLE tmpTable
      (
        ApplicantID INT ,
        ApplicantCode VARCHAR(20) ,
        FullName NVARCHAR(50) ,
        CourseTitle NVARCHAR(100) ,
        PercentMark DECIMAL(8, 5) ,
        FinalMark DECIMAL(8, 5),
        ExamID INT
      )

      DECLARE @CorrectItemPoint FLOAT ,
              @BlankItemPoint FLOAT ,
              @WrongItemPoint FLOAT
              
      DECLARE @ROND INT
                
      IF EXISTS(SELECT ROND FROM ROND_INF WHERE EXAMID =  @ExamId)
         SELECT @ROND = ROND FROM ROND_INF WHERE EXAMID =  @ExamId
         ELSE
         SET    @ROND = 0
              

      SELECT    @BlankItemPoint = BlankItemPoint, @CorrectItemPoint = CorrectItemPoint, @WrongItemPoint = WrongItemPoint
      FROM      Exam
      WHERE     ExamID = @ExamID

      INSERT    INTO tmpTable
                SELECT  dbo.Applicant.ApplicantID, MAX(ApplicantCode) ApplicantCode,
                        MAX(dbo.Applicant.LastName) FullName, ISNULL(Course.CourseTitle, 'ساير دروس') CourseTitle,
                        ROUND(ISNULL(MAX(CourseMark), 100.0) * SUM(Coefficient * CASE WHEN ApplicantAnswer.AnswerItemNumber = 0 OR QuestionActivityID = 2
                                                                                      THEN @BlankItemPoint
                                                                                      WHEN ApplicantAnswer.AnswerItemNumber IN (
                                                                                           CorrectItemNumber,
                                                                                           CorrectItemNumber2,
                                                                                           CorrectItemNumber3,
                                                                                           CorrectItemNumber4,
                                                                                           CorrectItemNumber5,
                                                                                           CorrectItemNumber6 ) OR QuestionActivityID = 3
                                                                                      THEN @CorrectItemPoint
                                                                                      ELSE @WrongItemPoint
                                                                                 END) / SUM(Coefficient * @CorrectItemPoint),
                              /* 2,1) PercentMark */
                              @ROND) PercentMark
                              ,CASE WHEN MAX(FinalMark) < 0 THEN 0
                                                   /* ELSE ROUND(MAX(FinalMark), 2,1) */
                                                   ELSE ROUND(MAX(FinalMark), @ROND)
                                              END FinalMark,@ExamID
                FROM    dbo.Question
                        INNER JOIN ApplicantAnswer ON Question.QuestionID = ApplicantAnswer.QuestionID
                        LEFT  JOIN Course ON Question.CourseID = Course.CourseID
                        INNER JOIN dbo.Applicant ON dbo.Applicant.ApplicantID = dbo.ApplicantAnswer.ApplicantID
                        INNER JOIN dbo.ApplicantExam ON dbo.ApplicantExam.ApplicantID = dbo.Applicant.ApplicantID AND dbo.ApplicantExam.ExamID = dbo.Question.ExamID
                WHERE   ( Question.ExamID = @ExamID ) AND QuestionActivityID IN ( 1, 3 )
                GROUP BY dbo.Applicant.ApplicantID, ISNULL(Course.CourseTitle, 'ساير دروس')
                ORDER BY 1

/*
UPDATE tmpTable SET FinalMark = (
SELECT ROUND(SUM(PercentMark), 2)
FROM tmpTable AS TT
WHERE TT.applicantcode = tmpTable.applicantcode
GROUP by ApplicantCode
)
*/

      DECLARE @SQLQuery AS NVARCHAR(MAX)
      DECLARE @PivotColumns AS NVARCHAR(MAX)

    /* Get unique values of pivot column */
      SELECT    @PivotColumns = COALESCE(@PivotColumns + ',', '') + QUOTENAME(CourseTitle)
      FROM      ( SELECT DISTINCT
                            CourseTitle
                  FROM      tmpTable ) AS [PIVOT]

    /* Create the dynamic query with all the values for
    pivot column at runtime */
      SET @SQLQuery = N'    SELECT ApplicantCode [شماره دانشجويي], FullName [نام کامل], FinalMark [نمره نهايي], ' + @PivotColumns + '
                            FROM tmpTable
                            PIVOT( SUM(PercentMark)
                            FOR CourseTitle IN (' + @PivotColumns + ')) AS Query'
      EXEC sp_executesql @SQLQuery


      IF EXISTS ( SELECT    *
                  FROM      sys.objects
                  WHERE     object_id = OBJECT_ID(N'[dbo].[tmpTable]') AND type IN ( N'U' ) )
         DROP TABLE tmpTable

END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListTafkikiKol_02]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_ListTafkikiKol_02] ( @ExamId INT )
AS
BEGIN

      CREATE TABLE tmpTable
      (
        ApplicantID INT ,
        ApplicantCode VARCHAR(20) ,
        FullName NVARCHAR(50) ,
        CourseTitle NVARCHAR(100) ,
        PercentMark DECIMAL(8, 5) ,
        FinalMark DECIMAL(8, 5),
        ExamID INT
      )

      DECLARE @CorrectItemPoint FLOAT ,
              @BlankItemPoint FLOAT ,
              @WrongItemPoint FLOAT
              
      DECLARE @ROND INT
                
      IF EXISTS(SELECT ROND FROM ROND_INF WHERE EXAMID =  @ExamId)
         BEGIN
         SELECT @ROND = ROND FROM ROND_INF WHERE EXAMID =  @ExamId
         END
         ELSE
         SET    @ROND = 0

      SELECT    @BlankItemPoint = BlankItemPoint, @CorrectItemPoint = CorrectItemPoint, @WrongItemPoint = WrongItemPoint
      FROM      Exam
      WHERE     ExamID = @ExamID

      INSERT    INTO tmpTable
                SELECT  dbo.Applicant.ApplicantID, MAX(ApplicantCode) ApplicantCode,
                        MAX(dbo.Applicant.FullName) FullName, ISNULL(Course.CourseTitle, 'ساير دروس') CourseTitle,
                        ROUND(ISNULL(MAX(CourseMark), 100.0) * SUM(Coefficient * CASE WHEN ApplicantAnswer.AnswerItemNumber = 0 OR QuestionActivityID = 2
                                                                                      THEN @BlankItemPoint
                                                                                      WHEN ApplicantAnswer.AnswerItemNumber IN (
                                                                                           CorrectItemNumber,
                                                                                           CorrectItemNumber2,
                                                                                           CorrectItemNumber3,
                                                                                           CorrectItemNumber4,
                                                                                           CorrectItemNumber5,
                                                                                           CorrectItemNumber6 ) OR QuestionActivityID = 3
                                                                                      THEN @CorrectItemPoint
                                                                                      ELSE @WrongItemPoint
                                                                                 END) / SUM(Coefficient * @CorrectItemPoint),
                              2,1) PercentMark
                              ,CASE WHEN MAX(FinalMark) < 0 THEN 0
                                                   /* ELSE ROUND(MAX(FinalMark), 2,1) */
                                                   ELSE ROUND(MAX(FinalMark), @ROND)
                                              END FinalMark,@ExamID
                FROM    dbo.Question
                        INNER JOIN ApplicantAnswer ON Question.QuestionID = ApplicantAnswer.QuestionID
                        LEFT  JOIN Course ON Question.CourseID = Course.CourseID
                        INNER JOIN dbo.Applicant ON dbo.Applicant.ApplicantID = dbo.ApplicantAnswer.ApplicantID
                        INNER JOIN dbo.ApplicantExam ON dbo.ApplicantExam.ApplicantID = dbo.Applicant.ApplicantID AND dbo.ApplicantExam.ExamID = dbo.Question.ExamID
                WHERE   ( Question.ExamID = @ExamID ) AND QuestionActivityID IN ( 1, 3 )
                GROUP BY dbo.Applicant.ApplicantID, ISNULL(Course.CourseTitle, 'ساير دروس')
                ORDER BY 1

/*
UPDATE tmpTable SET FinalMark = (
SELECT ROUND(SUM(PercentMark), 2)
FROM tmpTable AS TT
WHERE TT.applicantcode = tmpTable.applicantcode
GROUP by ApplicantCode
)
*/

DECLARE
    @ApplicantID_      AS INT,
    @FinalMark_        AS REAL,
    @ExamID_           AS INT

DECLARE EXM_CURSOR CURSOR FOR
SELECT ApplicantID,FinalMark,ExamID FROM tmpTable /* FOR UPDATE OF RANDOM_GEN_NO */
OPEN EXM_CURSOR
FETCH NEXT FROM EXM_CURSOR
INTO @ApplicantID_, @FinalMark_ , @ExamID_

WHILE (@@FETCH_STATUS = 0)
BEGIN
    UPDATE ApplicantExam SET FinalMark = @FinalMark_ WHERE ApplicantID = @ApplicantID_ AND ExamID = @ExamID_

    FETCH NEXT FROM EXM_CURSOR
    INTO @ApplicantID_, @FinalMark_ , @ExamID_
END

CLOSE EXM_CURSOR
DEALLOCATE EXM_CURSOR

IF EXISTS ( SELECT    *
                  FROM      sys.objects
                  WHERE     object_id = OBJECT_ID(N'[dbo].[tmpTable]') AND type IN ( N'U' ) )
         DROP TABLE tmpTable

END

GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateNumberOfApplicant]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_UpdateNumberOfApplicant](@ExamID int)
AS
BEGIN
    DECLARE @Number_of_Applicant INT 
    
    SELECT @Number_of_Applicant = COUNT(*)
    FROM dbo.ApplicantExam
    WHERE ExamID = @ExamID
     
    UPDATE dbo.Exam SET number_of_applicant = @Number_of_Applicant
    FROM dbo.Exam 
    WHERE ExamID = @ExamID
END

GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateNumberOfQuestion]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_UpdateNumberOfQuestion](@ExamID int)
AS
BEGIN
    DECLARE @Number_of_Question INT 
    
    SELECT @Number_of_Question = COUNT(*)
    FROM dbo.Question 
    WHERE ExamID = @ExamID
     
    UPDATE dbo.Exam SET Number_of_Question = @Number_of_Question
    FROM dbo.Exam 
    WHERE ExamID = @ExamID
END

GO
/****** Object:  StoredProcedure [dbo].[ViewExamEqualQuestion]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[ViewExamEqualQuestion] (@ExamId int,@res Varchar(200) out) 
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
				set @res ='تعداد گروه سوالات با تعداد گروه برگزاري آزمون مطابقت ندارد'

			if (@MaxNumber<>(select MAX (Group2) from #temp) or  @count<>(select Count (distinct Group2) from #temp)) and @GroupExamCount>=2
				select @res=@res+'
				خطا در سوالات گروه دوم'
			if (@MaxNumber<>(select MAX (Group3) from #temp) or  @count<>(select Count (distinct Group3) from #temp)) and @GroupExamCount>=3
				select @res=@res+'
				خطا در سوالات گروه سوم'
			if (@MaxNumber<>(select MAX (Group4) from #temp) or  @count<>(select Count (distinct Group4) from #temp)) and @GroupExamCount>=4
				select @res=@res+'
				خطا در سوالات گروه چهارم'

			select Group1 'گروه يک',Group2 'گروه دو',Group3 'گروه سه',Group4 'گروه چهار' 
			from #temp 
			
			order by group1
	end

GO
/****** Object:  StoredProcedure [dbo].[YSP_Backup]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[YSP_Backup](@dbname nvarchar(50),@path nvarchar(255))
 as
Exec('backup database '+@dbname+' to disk='''+@path+'''')




GO
/****** Object:  StoredProcedure [dbo].[ysp_delphi]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE  [dbo].[ysp_delphi] (@spN varchar(50) )
as
declare @line1 varchar(1000),@line2 varchar(4000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname varchar(100),
@isoutparam bit,@temp int,@length int,@isFunction bit ,@Rtype nvarchar(100),@Rpname nvarchar(100)
  SELECT    identity(int,1,1) id, name  into #m
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like '%'+@spn) 
select @count=max(id)
from #m
set @id=1
while @id<=@count 
 begin
   select @spname=name from #m where id=@id
   declare spcol cursor for  
    select substring(syscolumns.name,2,100),max(dbo.delphiType(systypes.name)),max(colid),max( isoutparam),max(syscolumns.length)
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id INNER JOIN
            systypes ON syscolumns.xtype = systypes.xtype
    WHERE     (sysobjects.xtype = 'p') AND (sysobjects.name = @spname)
    group by substring(syscolumns.name,2,100)
   order by 3
if (    select count(syscolumns.name)
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id 
    WHERE      (sysobjects.name =@spname) and syscolumns.isoutparam=1)=1 
set @isFunction =1
else 
set @isFunction=0
    open  spcol 
    fetch next from spcol into @colname,@spType,@temp,@isoutparam,@length
    set @line1=case when @isfunction=0 then 'Procedure  ' else 'function ' end+'Exec_'+@spname+'('
    set @line2='';
    while @@Fetch_Status=0 
     begin
      if @colname='type' set @colname='_Type'
      set @line1=@line1+case when @isfunction=0 or @isoutparam=0 then  @colname+':'+@spType+';' else '' end
      set @line2=@line2+'
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ft'+@spType+';
      Direction := '+case @isoutparam when 0 then 'pdInput;' else 'pdoutput;' end +'
      Name:=''@'+@colname+''';'+case when @spType like '%string%' then '
      size:= '+cast(@length as varchar(10))+';' else '' end+
case @isoutparam when 0 then  '
      Value :='+@colname+';
' else '' end +'
    end;
'
if  @isoutparam=1 set  @Rtype=@spType;
if  @isoutparam=1 set  @Rpname=@colname;
    fetch next from spcol into @colname,@spType,@temp,@isoutparam,@length
     end;
if @line1 like '%;' set @line1=substring(@line1,1,len(@line1)-1)
set @line1=@line1+case when  @isfunction=0 then ');' else '):'+@Rtype+';' end 
    print replace(@line1+'
'+@line1+'
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='''+@spname+''';
',';;',';')
PRINT @LINE2
    print
'    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
'+case when @isfunction=0 then '' else 
'   Result:=ADOSP.Parameters.ParamByname(''@'+@Rpname+''').value;' end+'
end;'
  close spcol
  deallocate spcol
  set @id=@id+1
 end



GO
/****** Object:  StoredProcedure [dbo].[YSP_Reindex]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[YSP_Reindex]
as
declare  @Name varchar(50)
declare  @SQL nvarchar(100)
declare Main_Cursor cursor for  
           select name from sysobjects
           where type='U' order by name
 open  Main_Cursor 
 fetch next from Main_Cursor into @Name
 while @@Fetch_Status=0 
  begin
    set @sql='dbcc dbreindex( '+@name+' )'
    print @sql+'...'
    exec sp_executesql @SQL        
   fetch next from Main_Cursor into @Name
  end 
 close Main_Cursor
 deallocate Main_Cursor




GO
/****** Object:  StoredProcedure [dbo].[YSP_SetForeinKey]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[YSP_SetForeinKey]
 @inp bit
as
declare  @SQL nvarchar(4000)
set @sql=''
if @inp=0
 select   @sql= @sql+'
        alter table '+name+' nocheck constraint all'
 from sysobjects     where type='U' 
else
 select   @sql= @sql+'
        alter table '+name+' check constraint all'
 from sysobjects     where type='U' 
    exec sp_executesql @SQL




GO
/****** Object:  StoredProcedure [dbo].[YSP_shrink]    Script Date: 18/07/1403 05:24:05 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[YSP_shrink](@dbname nvarchar(50))
 as
Exec('backup log '+@dbname+' with truncate_only')
  dbcc shrinkfile(1,1)
 dbcc shrinkfile(2,1)




GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id آزمون' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExPositive', @level2type=N'COLUMN',@level2name=N'ExamID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id دانشجو' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExPositive', @level2type=N'COLUMN',@level2name=N'ApplicantId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نمرات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExPositive', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'جمع نمرات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExPositive', @level2type=N'COLUMN',@level2name=N'SumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'توضیحات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExPositive', @level2type=N'COLUMN',@level2name=N'Desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'آخرین کاراکتر الگوی جواب تستی' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TextFormat', @level2type=N'COLUMN',@level2name=N'AnserEnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'اولین کاراکتر الگوی تشریحی' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TextFormat', @level2type=N'COLUMN',@level2name=N'ExPositive_Start'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'آخرین کاراکتر الگوی تشریحی' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TextFormat', @level2type=N'COLUMN',@level2name=N'ExPositive_End'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Course"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 238
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TrainingCourse"
            Begin Extent = 
               Top = 6
               Left = 249
               Bottom = 277
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTrainingCourse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTrainingCourse'
GO
USE [master]
GO
ALTER DATABASE [ExamAnalysis] SET  READ_WRITE 
GO
