USE [master]
GO
/****** Object:  Database [yArchive_null]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE DATABASE [yArchive_null]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'm_Data', FILENAME = N'F:\Backups\DataBase\Archive\DataFile\YArchive.mdf' , SIZE = 10880KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'm_Log', FILENAME = N'F:\Backups\DataBase\Archive\DataFile\yArchive_null_log.ldf' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [yArchive_null] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yArchive_null].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [yArchive_null] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yArchive_null] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yArchive_null] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yArchive_null] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yArchive_null] SET ARITHABORT OFF 
GO
ALTER DATABASE [yArchive_null] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yArchive_null] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [yArchive_null] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yArchive_null] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yArchive_null] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yArchive_null] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yArchive_null] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yArchive_null] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yArchive_null] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yArchive_null] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yArchive_null] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yArchive_null] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yArchive_null] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yArchive_null] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yArchive_null] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yArchive_null] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yArchive_null] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yArchive_null] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [yArchive_null] SET  MULTI_USER 
GO
ALTER DATABASE [yArchive_null] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [yArchive_null] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yArchive_null] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yArchive_null] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [yArchive_null] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'yArchive_null', N'ON'
GO
ALTER DATABASE [yArchive_null] SET QUERY_STORE = OFF
GO
USE [yArchive_null]
GO
/****** Object:  User [YeganehCorporate_Archive]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE USER [YeganehCorporate_Archive] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCorporate_Archive]
GO
/****** Object:  User [YeganehCompany_Dabir]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE USER [YeganehCompany_Dabir] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCompany_Dabir]
GO
/****** Object:  User [y_dabir_app]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE USER [y_dabir_app] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[y_dabir_app]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCorporate_Archive]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCompany_Dabir]
GO
ALTER ROLE [db_owner] ADD MEMBER [y_dabir_app]
GO
/****** Object:  Schema [y_dabir_app]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE SCHEMA [y_dabir_app]
GO
/****** Object:  Schema [YeganehCompany_Dabir]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE SCHEMA [YeganehCompany_Dabir]
GO
/****** Object:  Schema [YeganehCorporate_Archive]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE SCHEMA [YeganehCorporate_Archive]
GO
/****** Object:  FullTextCatalog [fgh]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE FULLTEXT CATALOG [fgh] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  UserDefinedFunction [dbo].[ArchiveFolders]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[ArchiveFolders] (@LetterID int,@UserID  tinyint)  
RETURNS nvarchar(1000)
BEGIN
declare @result  nvarchar(1000)
set @result=''
SELECT   @result=@result +' , '+Title +' - '+ArchiveDate
FROM         LetterArchiveFolder 
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result='بایگانی در: '+substring(@result,4,1000)
return(@result)
end





GO
/****** Object:  UserDefinedFunction [dbo].[ArchiveID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[ArchiveID] (@Sid int,@fid  tinyint,@Myear tinyint,@page tinyint)  
RETURNS varchar(20)
BEGIN 
declare @result vaRCHAR(20)

if isnull(@fid,0)=0 
SET @result=cast(@sid as varchar(8))+'/'+cast(@myear as char(2))+'/'+cast(@page as varchar(4)) 
else
SET @result=cast(@sid as varchar(8))+'-'+cast(@fid as varchar(2))++'/'+cast(@myear as char(2))+'/'+cast(@page as varchar(4)) 
return(@result)
END


GO
/****** Object:  UserDefinedFunction [dbo].[ArchivePlaces]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[ArchivePlaces] (@LetterID int,@UserID  tinyint)  
RETURNS nvarchar(1000)
BEGIN
declare @result  nvarchar(1000)
set @result=''
SELECT   @result=@result +' , '+Place 
FROM         LetterArchiveFolder 
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result=substring(@result,4,1000)
return(@result)
end








GO
/****** Object:  UserDefinedFunction [dbo].[CleanAndTrimString]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[CleanAndTrimString] 
(@MyString as varchar(Max))
Returns varchar(Max)
As
Begin
    Set @MyString = Replace(@MyString,CHAR(0),'');
    Set @MyString = Replace(@MyString,CHAR(9),'');
    Set @MyString = Replace(@MyString,CHAR(10),'');
    Set @MyString = Replace(@MyString,CHAR(11),'');
    Set @MyString = Replace(@MyString,CHAR(12),'');
    Set @MyString = Replace(@MyString,CHAR(13),'');
    Set @MyString = Replace(@MyString,CHAR(14),'');
    Set @MyString = Replace(@MyString,CHAR(160),'');
    Set @MyString = LTRIM(RTRIM(@MyString));
    Return @MyString
End
GO
/****** Object:  UserDefinedFunction [dbo].[delphiType]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[everyLike]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[everyLike](@fieldType varchar(50),@len int)
RETURNS  bit AS  
BEGIN 
 return case when @fieldType in('varchar','nvarchar','text') and @len>50 then 1 else 0 end
END





GO
/****** Object:  UserDefinedFunction [dbo].[ExactCopyTitle]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[ExactCopyTitle](@year tinyint,@ind int)
RETURNS varchar(1000) AS  
BEGIN 
declare  @Name varchar(50)
declare  @Res nvarchar(1000)
declare Main_Cursor cursor for  
           SELECT     ToOrganizations.Title--, ReCommites.ID, ReCommites.Type
             FROM         ReCommites INNER JOIN
                      ToOrganizations ON ReCommites.OrgID = ToOrganizations.ID
WHERE     (ReCommites.Type = 6) and  (LetterMyear = @year) AND (LetterIndicatorID = @ind)
 open  Main_Cursor 
 fetch next from Main_Cursor into @Name
set @res=''
 while @@Fetch_Status=0 
  begin
   set @res=@res+'+'+isnull(@name,'')
   fetch next from Main_Cursor into @Name
  end 
 close Main_Cursor
 deallocate Main_Cursor
 return(right(@res,len(@res)-1))
END




GO
/****** Object:  UserDefinedFunction [dbo].[Fasl]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[Fasl](@date char(10))
RETURNS varchar(50) AS  
BEGIN 
declare @m tinyint,@f tinyint
set @m=cast(substring(@date,6,2) as tinyint)
set @f=case when @m>1 then (@m-1)/3+1 else 1 end
return(case @f when 1 then 'بهار' 
when 2 then 'تابستان'
when 3 then 'پاييز'
else 'زمستان' end) 
END




















GO
/****** Object:  UserDefinedFunction [dbo].[Fu_LetterAlarm]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*0_No Alarm , 1_Have Alarm With No delay , 2_Have Alarm With Delay*/
CREATE Function [dbo].[Fu_LetterAlarm](@LetterID int , @MiladyTodayDate DateTime , @UsersID int) 
Returns int
As
Begin
   if Exists( Select AlarmID from AlarmUsers Where USersID=@UsersID And AlarmID in (Select AlarmID From Alarm Where(LetterID = @LetterID)And(TagText = 'LetterAlerm')) )
   begin
      Declare @Value int
      Declare @CurrentTime DateTime
      Set @CurrentTime = Cast( Cast(DatePart(hour,@MiladyTodayDate)as nVarchar)+':'+Cast(DatePart(minute,@MiladyTodayDate)as nVarchar) as Datetime)

      Declare @ShamsiTodayDate Nvarchar(20)
      Set @ShamsiTodayDate = dbo.Shamsi(@MiladyTodayDate)

      Declare @DateAlarm Nvarchar(20)
      Set @DateAlarm = (Select Top 1 RTrim(DateAlarm) from Alarm Where LetterID = @LetterID)
      Declare @TimeAlarm DateTime
if IsDate(Cast((Select Top 1 RTrim(TimeAlarm) from Alarm Where LetterID = @LetterID) as DateTime)) = 1
      Set @TimeAlarm = Cast((Select Top 1 RTrim(TimeAlarm) from Alarm Where LetterID = @LetterID) as DateTime)
else
Set @TimeAlarm = @CurrentTime

      Select @Value = (Case When @ShamsiTodayDate > (@DateAlarm) then 2 
                       else (Case When (@ShamsiTodayDate = @DateAlarm)And(@CurrentTime > @TimeAlarm) then 2 
                             else 1 end) end)
   end
      else
         Set @Value = 0
   Return @Value
end
-- Select dbo.Fu_LetterAlarm(5164,GetDate(),23)

GO
/****** Object:  UserDefinedFunction [dbo].[GetSystemValue]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO















CREATE FUNCTION [dbo].[GetSystemValue](@varID int)
RETURNS nvarchar(255)  AS  
BEGIN 
return(select value from settings where variableid=@varID and userid=-1)
END















GO
/****** Object:  UserDefinedFunction [dbo].[has_file]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[has_file](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     LetterDataID
FROM         LetterData
WHERE     LetterID=@LetterID and extention>3)
set @res=1
else
set @res=0
return(@res)

END
GO
/****** Object:  UserDefinedFunction [dbo].[has_Page]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[has_Page](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit,@extention tinyint

/*
if dbo.GetSystemValue(27)='False'   
   set @extention=2 --Tiff
else
   set @extention=1 --Jpg
if exists(SELECT PageNumber FROM LetterData WHERE LetterID=@LetterID and extention=@extention)
*/
if exists(SELECT LetterID FROM LetterData WHERE LetterID=@LetterID And /*PageNumber>0 And*/ Extention in (1,2))
   set @res=1
else
   set @res=0
return(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[has_tifPage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create FUNCTION [dbo].[has_tifPage](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention=2)
set @res=1
else
set @res=0
return(@res)

END

 


GO
/****** Object:  UserDefinedFunction [dbo].[has_WordPage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create FUNCTION [dbo].[has_WordPage](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention=3)
set @res=1
else
set @res=0
return(@res)

END


 


GO
/****** Object:  UserDefinedFunction [dbo].[HistoryDateList]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE function [dbo].[HistoryDateList](@today char(10),@weekday tinyint)

returns @result table (id int , Title nvarchar(100),beginDate char(10),Enddate char(10))
begin

declare @year char(4)
set @year=substring(@today,1,4)

insert into @result values (1, 'امروز',@today,@today)
insert into @result values (2, 'ديروز',dbo.ShamsiIncDate(@today,0,0,-1),dbo.ShamsiIncDate(@today,0,0,-1))
insert into @result values (3, 'هفته اخير',dbo.ShamsiIncDate(@today,0,0,-@weekday),@today)
insert into @result values (4, 'ماه اخير',substring(@today,1,8)+'01',@today)
declare @month int,@i int
set @month=cast(substring(@today,9,2) as int)-1
set @i=1

 if @i<=@month
 insert into @result values (15, 'فروردين',@year+'/01/01',@year+'/01/31')
 set @i=@i+1
  
 if @i<=@month
 insert into @result values (14, 'ارديبهشت',@year+'/02/01',@year+'/02/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (13, 'خرداد',@year+'/03/01',@year+'/03/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (12, 'تير',@year+'/04/01',@year+'/04/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (11, 'مرداد',@year+'/05/01',@year+'/05/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (10, 'شهريور',@year+'/06/01',@year+'/06/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (9, 'مهر',@year+'/07/01',@year+'/07/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (8, 'آبان',@year+'/08/01',@year+'/08/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (7, 'آذر',@year+'/09/01',@year+'/09/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (6, 'دي',@year+'/10/01',@year+'/10/31')
 set @i=@i+1

 if @i<=@month
 insert into @result values (5, 'بهمن',@year+'/11/01',@year+'/11/31')

 insert into @result values (0, ' همه موارد ','1300/11/01',+'1399/12/30')
return


end




GO
/****** Object:  UserDefinedFunction [dbo].[InnerNo]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE function [dbo].[InnerNo](@LetterID int)
returns nvarchar(100)
begin
declare @SecCode nvarchar(50),@MYear nchar(2), @IndicatorID nvarchar(6), @ToOrgCode  nvarchar(50), 
@FromOrgCode  nvarchar(50), @LetterTypCode  nvarchar(2),@result nvarchar(100)

SELECT    
@SecCode=isnull(Secretariats.Precode,''),
@MYear=Letter.MYear, 
@IndicatorID=Letter.IndicatorID,
@ToOrgCode=isnull(Toorg.Code,''),
@FromOrgCode= isnull(FromOrg.Code,''),
@LetterTypCode=isnull(LetterTypes.PreCode,'')
FROM         Letter 
INNER JOIN  FromOrganizations Toorg ON Letter.FromOrgID = Toorg.ID 
INNER JOIN  FromOrganizations FromOrg ON Letter.FromOrgID = FromOrg.ID 
INNER JOIN  LetterTypes ON Toorg.ID = LetterTypes.ID
INNER JOIN  Secretariats ON Letter.SecretariatID = Secretariats.SecID
WHERE     (Letter.LetterID = @LetterID)

set @result=case  dbo.GetSystemValue(35)
                   when 0 then '' 
                   when 1 then @SecCode+'/'
                   when 2 then @MYear+'/'
                   when 3 then @IndicatorID+'/'
                   when 4 then @ToOrgCode+'/'
                   when 5 then @FromOrgCode+'/'
                   when 6 then @LetterTypCode+'/' end+

             case  dbo.GetSystemValue(36)
                   when 0 then '' 
                   when 1 then @SecCode+'/'
                   when 2 then @MYear+'/'
                   when 3 then @IndicatorID+'/'
                   when 4 then @ToOrgCode+'/'
                   when 5 then @FromOrgCode+'/'
                   when 6 then @LetterTypCode+'/' end+

             case  dbo.GetSystemValue(37)
                   when 0 then '' 
                   when 1 then @SecCode+'/'
                   when 2 then @MYear+'/'
                   when 3 then @IndicatorID+'/'
                   when 4 then @ToOrgCode+'/'
                   when 5 then @FromOrgCode+'/'
                   when 6 then @LetterTypCode+'/' end+

             case  dbo.GetSystemValue(38)
                   when 0 then '' 
                   when 1 then @SecCode+'/'
                   when 2 then @MYear+'/'
                   when 3 then @IndicatorID+'/'
                   when 4 then @ToOrgCode+'/'
                   when 5 then @FromOrgCode+'/'
                   when 6 then @LetterTypCode+'/' end+

             case  dbo.GetSystemValue(39)
                   when 0 then '' 
                   when 1 then @SecCode+'/'
                   when 2 then @MYear+'/'
                   when 3 then @IndicatorID+'/'
                   when 4 then @ToOrgCode+'/'
                   when 5 then @FromOrgCode+'/'
                   when 6 then @LetterTypCode+'/' end+

             case  dbo.GetSystemValue(40)
                   when 0 then '' 
                   when 1 then @SecCode+'/'
                   when 2 then @MYear+'/'
                   when 3 then @IndicatorID+'/'
                   when 4 then @ToOrgCode+'/'
                   when 5 then @FromOrgCode+'/'
                   when 6 then @LetterTypCode+'/' end

set @result=replace(ltrim(rtrim(@result)),'//','/')
set @result=replace(@result,'//','/')


if substring(@result,len(@result),1)='/'
   set @result=substring(@result,1,len(@result)-1)


return(@result)
end



GO
/****** Object:  UserDefinedFunction [dbo].[Is_ParentId]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   FUNCTION [dbo].[Is_ParentId] (@ChildID int,@ParentID int)  
RETURNS bit AS  
BEGIN 

 declare @PI int,@CurID int,@stoper int
if @childid=@parentid return(1) 
if @ParentID<=5 return(1)
 set @CurID=@ChildID
set @stoper=1 
 while @CurID<>0 and @stoper<4
   begin
    select @PI=ParentID from FromOrganizations where id=@CurID
    if @PI=@ParentID return(1)  else set @CurID=@PI
   set @stoper=@stoper+1
   end
return(0)  
END

 


GO
/****** Object:  UserDefinedFunction [dbo].[isLike]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[isLike](@fieldType varchar(50))
RETURNS  bit AS  
BEGIN 
 return case when @fieldType in ('float','int','bit','money','bigint','datetime') then 0 else 1 end
END


GO
/****** Object:  UserDefinedFunction [dbo].[IsString]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO





















CREATE FUNCTION [dbo].[IsString](@fieldType varchar(50))
RETURNS bit  AS  
BEGIN 
return case when @fieldType in ('float','int','bit','money','bigint') then 0 else 1 end
END




















GO
/****** Object:  UserDefinedFunction [dbo].[Letter_Archived]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





create function [dbo].[Letter_Archived](@letterID int )
returns bit
begin
if exists(SELECT     *
FROM         LetterArchiveFolder INNER JOIN
                      ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE     (ArchiveFolder.UserID = 0) AND (LetterArchiveFolder.LetterID =@letterID ))
return(1)

return(0)
end



GO
/****** Object:  UserDefinedFunction [dbo].[MiladiLeapyear]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[Number_Of_Week]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
























CREATE FUNCTION [dbo].[Number_Of_Week] (@D datetime)  
RETURNS tinyint
 AS  
BEGIN 
declare @r tinyint
if (datepart(month,@d)>3) or (datepart(month,@d)=3 and datepart(day,@d)>20)
select @r=datepart(week,@d)-11 --if getdate>='Mar 21'
else
select @r=datepart(week,@d)+41--if getdate<'Mar 21'
return(@r)
END

--select substring('1381/01/01',1,4) --year
--select substring('1381/01/01',6,2) --month
--select substring('1381/01/01',9,2) --day in month
--select substring('1381/01/01',6,5)--day in year
--select (cast(substring('1381/12/01',6,2) as tinyint)-1)/3+1 --month
--select dbo.Number_Of_week(getdate()) --week in year
--select isnull(sign(len(rtrim(ltrim(AttachTitle)))),0)



























GO
/****** Object:  UserDefinedFunction [dbo].[ParentFolders]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ParentFolders] (@FolderID int)  
RETURNS nvarchar(500) AS  
BEGIN 
 declare @i int,@PI int ,@res nvarchar(500),@CurID int,@Parents nvarchar(500)
 set @i=0 
set @CurID=@FolderID

select @PI=ParentFolderID,@res=Title+cast(isnull('['+Place+']','') as varchar(10)) from ArchiveFolder where FolderID=@FolderID
if @PI=0 return(@res)   else set @CurID=@PI

set @Parents=''

 while @i<5 and @PI>0
   begin
    select @PI=ParentFolderID,@Parents=@Parents+','+Title from ArchiveFolder where FolderID=@CurID
    set @CurID=@PI
    set @i=@i+1
   end
if @Parents<>''
 begin
  set @Parents=case when substring(@Parents,1,1)=',' then substring(@Parents,2,500) end
  set @Parents='('+@Parents+')'
  set @res=@res+@Parents
end
return(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[ParentId]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ParentId] (@ID int)  
RETURNS int AS  
BEGIN 
 declare @i int,@PI int,@CurID int
 set @i=0 
 set @CurID=@id
 while @i<10 
   begin
    select @PI=ParentID from FromOrganizations where id=@CurID
    if @PI=1 return(@CurID)   else set @CurID=@PI

    set @i=@i+1
   end
return(@PI)  
END


GO
/****** Object:  UserDefinedFunction [dbo].[pm]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


















CREATE FUNCTION [dbo].[pm](@time char(5))
RETURNS varchar(100) AS  
BEGIN 
return(case when substring(@time,1,2)>12 then 'بعد از ظهر' else 'قبل از ظهر' end)
END

















GO
/****** Object:  UserDefinedFunction [dbo].[Recommite_FirstProceed]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE  FUNCTION [dbo].[Recommite_FirstProceed](@RecommiteID int)
RETURNS  varchar(10) AS  
BEGIN 

declare @result char(10)
declare @id int,@letterid int
select @id=id,@Letterid=Letterid
from [ReCommites] 
where (RecommiteID=@RecommiteID )

select @result=Proceeddate from  ReCommites 
where Letterid=@Letterid and parentid=@id

set @result=isnull(@result,'-')
return(@result)
END
























GO
/****** Object:  UserDefinedFunction [dbo].[Recommite_FirstView]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  FUNCTION [dbo].[Recommite_FirstView](@RecommiteID 	[int])
RETURNS  varchar(10) AS  
BEGIN 
declare @result char(10)
declare @id int,@letterid int
select @id=id,@Letterid=Letterid
from [ReCommites] 
where (RecommiteID=@RecommiteID )

select @result=Viewdate from  ReCommites 
where Letterid=@Letterid and parentid=@id

set @result=isnull(@result,'-')
return(@result)
END




GO
/****** Object:  UserDefinedFunction [dbo].[Recommite_has_done]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[Recommite_has_done](@RecommiteID int)
returns tinyint
begin
declare   @LetterID int, @ID int, @Type int

SELECT     @LetterID=LetterID, @ID=ID,@Type=Type 
FROM         ReCommites
WHERE     (RecommiteID = @RecommiteID)
declare @all int ,@done int

select @all=count(*),@done=sum(case when Proceeded=1 then 1 else 0 end)
from  ReCommites
WHERE     (LetterID=@LetterID and Type=@Type and id>@id)
if @all>@done and @done>0  return(1)
if @all=@done and @done>0  return(2)
return(0)
end

GO
/****** Object:  UserDefinedFunction [dbo].[Recommites_by_indicator]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE  FUNCTION [dbo].[Recommites_by_indicator](@LetterID int )
RETURNS nvarchar(1000) AS  
BEGIN 


declare @res nvarchar(1000)
set @res=''

SELECT       @res=@res+','+FromOrganizations.Title+'  '+recommitedate
FROM         ReCommites  INNER JOIN
                      FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID
WHERE     (ReCommites.LetterID = @LetterID)

if @res<>'' set @res=substring(@res,2,len(@res)-1)

return(@res)

END










GO
/****** Object:  UserDefinedFunction [dbo].[RentStatus]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[RentStatus] (@LetterID int,@today char(10))  
RETURNS tinyint
BEGIN
declare @result  tinyint,@rentID int 
/*
1=عادي
2=در دست امانت
3=در دست امانت با تاخير
*/


SELECT @RentID=RentID
  FROM  Rent
where LetterID=@LetterID
and isnull(ltrim(EndDate),'')=''
if @RentID is null return(1)

if exists (select * from Rent where RentId=@rentID and MatureDate<@today) 
return(3)

return(2)
end

GO
/****** Object:  UserDefinedFunction [dbo].[Shamsi]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Ravanpoor*/
CREATE FUNCTION [dbo].[Shamsi](@Date  DateTime)  
RETURNS Varchar(20)
as                 --  EHSAN RAVANPOUR 1386-06-31
begin
SET @Date = CAST(CONVERT(VARCHAR(20),@Date,111) AS DATETIME)
DECLARE @Farsi_Date  as Varchar(20) 
DECLARE @StY Varchar(10), @StM Varchar(10),@StD Varchar(10)
declare @y bigint, @m bigint, @d bigint
declare @d1 bigint, @d4 bigint, @d33 bigint

set @d1=365
set @d4=4*@d1 +1
set @d33=33*@d1 +8
set @d=cast(@Date as bigint)+422506
set @y=(@d/@d33)*33+122
set @d=@d % @d33
if(@d>(7*@d4+@d1))
Begin
   set @y=@y+1
   set @d=@d-@d1
End
set @y=@y+(@d/@d4)*4
set @d=@d % @d4
declare @i bigint
set @i=@d/@d1
set @d=@d%@d1;
if(@i=4)
Begin
   set @i=@i-1
   set @d=@d+@d1
End
set @y=@y+@i
if(@d<186)
Begin
   set @m=(@d/31)+1
   set @d=(@d%31)+1
end
Else
Begin
   set @d=@d-186
   set @m=(@d/30)+7
   set @d=(@d%30)+1
End
 SET @StY = CAST (@y as VarChar(5))
 SET @StM = RIGHT('0'+CAST (@m as VarChar(5)),2)
 SET @StD = RIGHT('0'+CAST (@d as VarChar(5)),2)
 SET @Farsi_Date = @StY+'/'+@StM+'/'+@StD
 Return @Farsi_Date
end

GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDateDiff]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
























CREATE FUNCTION [dbo].[ShamsiDateDiff](@dateFrom char(10),@dateTo char(10))
RETURNS   int  
AS  
BEGIN 

  RETURN(case when @dateTo>@dateFrom then dbo.ShamsiToInt(@dateTo)-dbo.ShamsiToInt(@dateFrom) else 0 end)
END


























GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOf]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
























create function [dbo].[ShamsiDayOf](@date char(10))
returns  INT 
as begin
Return(cast(right(@date,2) as int)) 
end

























GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOfWeek]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


















CREATE FUNCTION [dbo].[ShamsiDayOfWeek](@date char(10))
RETURNS varchar(50) AS  
BEGIN 
return(case  (dbo.shamsitoint(@date)+1)%7 
when 0 then 'شنبه'
when 1 then 'يکشنبه'
when 2 then 'دوشنبه'
when 3 then 'سه شنبه'
when 4 then 'چهار شنبه'
when 5 then 'پنج شنبه'
when 6 then 'جمعه' end)
END



















GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayPerMonth]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[ShamsiDayPerMonth](@y int,@m int) RETURNS  INT 
AS BEGIN
 return(case when @m<=6 then 31 when @m>6 and @m<>12 then 30 else 29+dbo.ShamsiLeapYear(@y) end)
END









GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiEnCodeDate]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE function [dbo].[ShamsiEnCodeDate](@y int ,@m int ,@d int) 
returns char(10)  
as 
begin
 return(cast(@y as char(4))+'/'+
  case when @m<10 then '0'+cast(@m as char(1)) else cast(@m as char(2)) end+'/'+
  case when @d<10 then '0'+cast(@d as char(1)) else cast(@d as char(2)) end+'/')
end






GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiIncDate]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE function [dbo].[ShamsiIncDate](@date char(10) ,@y int ,@m int ,@d int) 
returns char(10)  
as 
begin
declare @ny int,@nm int ,@nd int
  set @ny=dbo.shamsiYearof(@date) 
  set @nm=dbo.shamsimonthof(@date) 
  set @nd=dbo.shamsidayof(@date) 
  set @ny=@ny+@y

 set @nm=@nm+@m
 set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end
 set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end
 set @nd=@nd+@d

 if @nd>dbo.shamsidayPermonth(@ny,@nm) 
   begin
    set @nd=@nd-dbo.shamsidayPermonth(@ny,@nm)
    set @nm=@nm+1
 set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end
 set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end
  end

  if @nd<1 
   begin
    set @nm=@nm-1
 set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end
 set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end
     set  @nd=@nd+dbo.shamsidayPermonth(@ny,@nm)
   end

return(dbo.ShamsiEnCodeDate(@ny,@nm,@nd))
end











GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiInvertForWord]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[ShamsiInvertForWord](@date  varchar(10))
RETURNS varchar(10)   AS  
BEGIN 
return(substring(@date,9,2)+substring(@date,5,4)+substring(@date,1,4))
END






GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiLeapYear]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
























CREATE FUNCTION [dbo].[ShamsiLeapYear](@y int) 
RETURNS tinyint  
AS BEGIN
declare @s tinyint
  set @s=(@y-22)%33
  Return(case when (@s<>32) and (@s%4 = 0) then  1 else 0 end )
END























GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiMonthOf]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
























create function [dbo].[ShamsiMonthOf](@date char(10))
returns  INT 
as begin
Return(cast(substring(@date,6,2) as int) )
end
























GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiToInt]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
























CREATE FUNCTION [dbo].[ShamsiToInt](@date char(10)) RETURNS  INT 
AS BEGIN
  declare @d1 int ,@d2 int ,@Y int ,@m int ,@d int ,@dif int ,@i int
set @y=dbo.shamsiYearof(@date) 
  set @m=dbo.shamsimonthof(@date) 
  set @d=dbo.shamsidayof(@date)   
set @dif=case when @m<7 then  (@m-1)*31+@d else 186+(@m-7)*30+@d end;
  set @i=1300
  while @i<@y
    begin
     set @dif=@dif+dbo.ShamsiLeapYear(@i)+365
     set @i=@i+1  
    end
  RETURN(@dif)
END




























GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiToMiladi]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ShamsiToMiladi](@DateStr varchar(11))
RETURNS DATETIME
AS  
Begin
   declare @YYear int
   declare @MMonth int
   declare @DDay int
   declare @epbase int
   declare @epyear int
   declare @mdays int
   declare @persian_jdn int
   declare @i int
   declare @j int
   declare @l int
   declare @n int
   declare @TMPRESULT varchar(10)
   declare @IsValideDate int
   declare @TempStr varchar(20)
   declare @TmpDateStr varchar(10)

   --Ranjbar
   Set @DateStr = Rtrim(LTrim(@DateStr))
   IF CHARINDEX('/', @DateStr,1) = 6
      Set @DateStr = SubString(@DateStr,2,Len(@DateStr))
   ---
   SET @i=charindex('/',@DateStr)      
   IF LEN(@DateStr) - CHARINDEX('/', @DateStr,CHARINDEX('/', @DateStr,1)+1) = 4
   BEGIN
      SET @TmpDateStr = dbo.ReversDate(@DateStr)
      IF ( ISDATE(@TmpDateStr) =1 )  
         Return @TmpDateStr
      ELSE
         Return NULL
   END
     ELSE
        SET @TmpDateStr = @DateStr

   IF ((@i<>0) and  --(dbo.SubStrCount('/', @TmpDateStr)=2)/*تعداد اسلش*/ and
      (ISNUMERIC(REPLACE(@TmpDateStr,'/',''))=1) and 
      (charindex('.',@TmpDateStr)=0)  )
   BEGIN
	   SET @YYear=CAST(SUBSTRING(@TmpDateStr,1,@i-1) AS INT)
      IF ( @YYear< 1300 )
         SET @YYear =@YYear + 1300
      IF @YYear > 9999
         Return NULL
	
	   SET @TempStr= SUBSTRING(@TmpDateStr,@i+1,Len(@TmpDateStr))
	
	   SET @i=charindex('/',@TempStr)
	   SET @MMonth=CAST(SUBSTRING(@TempStr,1,@i-1) AS INT)
	   SET @MMonth=@MMonth-- -1
	   
	   SET @TempStr= SUBSTRING(@TempStr,@i+1,Len(@TempStr))   
	
	   SET @DDay=CAST(@TempStr AS INT)
	   SET @DDay=@DDay-- - 1
	       
      IF ( @YYear >= 0 )
         SET @epbase = @YYear - 474
      Else
         SET @epbase = @YYear - 473
      SET @epyear = 474 + (@epbase % 2820)

 	   IF (@MMonth <= 7 )
         SET @mdays = ((@MMonth) - 1) * 31
	   Else
	      SET @mdays = ((@MMonth) - 1) * 30 + 6

	   SET @persian_jdn =(@DDay)  + @mdays + CAST((((@epyear * 682) - 110) / 2816) as int)  + (@epyear - 1) * 365  +  CAST((@epbase / 2820)  as int ) * 1029983  + (1948321 - 1)

      IF (@persian_jdn > 2299160) 
      BEGIN
	      SET @l = @persian_jdn + 68569
	      SET @n = CAST(((4 * @l) / 146097) as int)
	      SET @l = @l -  CAST(((146097 * @n + 3) / 4) as int)
	      SET @i =  CAST(((4000 * (@l + 1)) / 1461001) as int)
	      SET @l = @l - CAST( ((1461 * @i) / 4) as int) + 31
	      SET @j =  CAST(((80 * @l) / 2447) as int)
	      SET @DDay = @l - CAST( ((2447 * @j) / 80) as int)
         SET @l =  CAST((@j / 11) as int)
	      SET @MMonth = @j + 2 - 12 * @l
	      SET @YYear = 100 * (@n - 49) + @i + @l
      END

      SET @TMPRESULT=Cast(@MMonth as varchar(2))+'/'+CAST(@DDay as Varchar(2))+'/'+CAST(@YYear as varchar(4))  
      Return Cast(@TMPRESULT as Datetime)  
   End
   RETURN NULL
End



GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiYearOf]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
























create function [dbo].[ShamsiYearOf](@date char(10))
returns  INT 
as begin
return(cast(left(@date,4) as int)) 
end
























GO
/****** Object:  UserDefinedFunction [dbo].[testt]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[testt](@s varchar(500))
returns varchar(50)
BEGIN 
 return(substring(@s,charindex('-',@s)+1,500)+'  '+substring(@s,1,charindex('-',@s)-1))
END





GO
/****** Object:  UserDefinedFunction [dbo].[YTrim]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[YTrim]( @Input NVARCHAR(4000))
RETURNS NVARCHAR(4000)
AS
BEGIN
	RETURN
	REPLACE(
		REPLACE(
			REPLACE(
				REPLACE(
					REPLACE(
						REPLACE(@Input, CHAR(10), ' ')
					, CHAR(13), ' ')
				, CHAR(09), ' ')
			,' ','<>')
		,'><','')
	,'<>',' ')
END
GO
/****** Object:  Table [dbo].[Extention]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extention](
	[ExtentionID] [int] IDENTITY(1,1) NOT NULL,
	[ExtentionTitle] [nvarchar](100) NOT NULL,
	[Extention] [varchar](5) NOT NULL,
	[IsSystem] [bit] NOT NULL,
 CONSTRAINT [PK_Extention] PRIMARY KEY CLUSTERED 
(
	[ExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterData]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterData](
	[LetterDataID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[PageNumber] [int] NULL,
	[Image] [image] NULL,
	[extention] [tinyint] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[LastUpdate] [datetime] NULL,
	[ListItemsID] [int] NULL,
	[IsCorrectedImage] [bit] NULL,
	[ColorID] [int] NULL,
	[VersionNo] [varchar](50) NULL,
	[VersionDate] [varchar](10) NULL,
	[status] [nvarchar](50) NULL,
	[Url] [nvarchar](50) NULL,
	[path] [nvarchar](50) NULL,
	[FileType] [nvarchar](50) NULL,
	[compress] [int] NULL,
 CONSTRAINT [PK_LetterData] PRIMARY KEY CLUSTERED 
(
	[LetterDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutomationRelation]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutomationRelation](
	[DabirLetterID] [int] NOT NULL,
	[DabirIndicatorID] [int] NOT NULL,
	[DabirMyear] [tinyint] NOT NULL,
	[DabirKhanehName] [nvarchar](100) NOT NULL,
	[ArchiveID] [int] NOT NULL,
	[isDocument] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AutomationView]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AutomationView]
AS
SELECT    
	DocPart =  CASE WHEN isDocument = 1 THEN 'کل سند ' ELSE
                          (SELECT     'پيوست'+' '+CONVERT(NVARCHAR(10),PageNumber)+' ('+extention.ExtentionTitle+')'
                             FROM         LetterData INNER JOIN Extention ON Extention.ExtentionID = LetterData.extention
                             WHERE     LetterData.LetterDataID = AutomationRelation.ArchiveID 
                          ) END,
	DabirIndicatorID, 
	DabirMyear, 
	DabirKhanehName, 
	isDocument, 
	ArchiveID, 
	ArchiveLetterID = CASE WHEN isDocument = 1 THEN ArchiveID ELSE
                          (SELECT     LetterID
                             FROM         LetterData
                             WHERE     LetterData.LetterDataID = AutomationRelation.ArchiveID) END 
FROM         dbo.AutomationRelation

GO
/****** Object:  Table [dbo].[ListItems]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListItems](
	[ListItemsID] [int] IDENTITY(1,1) NOT NULL,
	[ListID] [tinyint] NOT NULL,
	[KeyValue] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Notes] [nvarchar](255) NULL,
	[UsersID] [int] NULL,
 CONSTRAINT [PK_List] PRIMARY KEY CLUSTERED 
(
	[ListItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VwContentType]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create View [dbo].[VwContentType]
as
SELECT     ListItemsID AS ID, Title
FROM         ListItems
WHERE     (ListID = 8)


GO
/****** Object:  Table [dbo].[Rent]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[RentID] [int] IDENTITY(1,1) NOT NULL,
	[RenterID] [int] NOT NULL,
	[LetterID] [int] NOT NULL,
	[BeginDate] [char](10) NOT NULL,
	[EndDate] [char](10) NULL,
	[Comment] [nvarchar](255) NULL,
	[MatureDate] [char](10) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[RentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Renter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Renter](
	[RenterID] [int] IDENTITY(1,1) NOT NULL,
	[RenterTitle] [nvarchar](255) NOT NULL,
	[RenterComment] [nvarchar](255) NULL,
 CONSTRAINT [PK_Renter] PRIMARY KEY CLUSTERED 
(
	[RenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Report_Renter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Report_Renter]
AS 
SELECT 
  b.LetterID,	
  b.RentID,	
  a.RenterID,	
  a.RenterTitle,   -- نام امانت گیرنده	
  a.RenterComment, --توضیحات
  b.BeginDate,	   -- تاریخ امانت
  b.EndDate,	   -- تاریخ عودت
  b.MatureDate,	   -- موعد تحویل
  b.Comment,	
  b.UserId
    --b.RenterID,
FROM Renter a
LEFT JOIN Rent b
  ON a.RenterID = b.RenterID




GO
/****** Object:  Table [dbo].[Accesses]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesses](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actions](
	[FormTag] [tinyint] NOT NULL,
	[ActionName] [nvarchar](100) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Actions_ActionName] PRIMARY KEY CLUSTERED 
(
	[FormTag] ASC,
	[ActionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionsAccess]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionsAccess](
	[AccessID] [tinyint] NOT NULL,
	[ActionName] [nvarchar](100) NOT NULL,
	[FormTag] [tinyint] NOT NULL,
	[HasAccess] [bit] NOT NULL,
 CONSTRAINT [PK_ActionsAccess] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC,
	[ActionName] ASC,
	[FormTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Added]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Added](
	[Number] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Added] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alarm]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarm](
	[AlarmID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NULL,
	[Memo] [nvarchar](3000) NULL,
	[DateAlarm] [nvarchar](10) NULL,
	[TimeAlarm] [nvarchar](5) NULL,
	[TagText] [nvarchar](20) NOT NULL,
	[UsersID] [int] NULL,
	[LetterID] [int] NULL,
 CONSTRAINT [PK_Alarm] PRIMARY KEY CLUSTERED 
(
	[AlarmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlarmUsers]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlarmUsers](
	[AlarmUsersID] [int] IDENTITY(1,1) NOT NULL,
	[AlarmID] [int] NOT NULL,
	[UsersID] [int] NOT NULL,
 CONSTRAINT [PK_AlarmUsers] PRIMARY KEY CLUSTERED 
(
	[AlarmUsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppColumns]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppColumns](
	[ColumnID] [int] IDENTITY(1,1) NOT NULL,
	[GridID] [int] NOT NULL,
	[ColumnEngName] [nvarchar](255) NOT NULL,
	[ColumnFarsiTitle] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_AppColumns] PRIMARY KEY CLUSTERED 
(
	[ColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppForms]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppForms](
	[FormTag] [int] NOT NULL,
	[FormEngName] [nvarchar](100) NOT NULL,
	[FormFarTitle] [nvarchar](255) NOT NULL,
	[FormEngTitle] [nvarchar](255) NULL,
 CONSTRAINT [PK_AppForms] PRIMARY KEY CLUSTERED 
(
	[FormTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppGrids]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppGrids](
	[GridID] [int] IDENTITY(1,1) NOT NULL,
	[FormTag] [int] NOT NULL,
	[GridName] [nvarchar](150) NOT NULL,
	[GridFarsiName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_AppGrids] PRIMARY KEY CLUSTERED 
(
	[GridID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationForms]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationForms](
	[ID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_ApplicationForms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchiveCenter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveCenter](
	[ArchiveCenterID] [int] NOT NULL,
	[ArchiveCenterTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ArchiveCenter] PRIMARY KEY CLUSTERED 
(
	[ArchiveCenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchiveFolder]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveFolder](
	[FolderID] [int] IDENTITY(1,1) NOT NULL,
	[ParentFolderID] [int] NOT NULL,
	[Title] [nvarchar](100) NULL,
	[UserID] [int] NOT NULL,
	[Notes] [nvarchar](500) NULL,
	[Place] [nvarchar](100) NULL,
	[ArchiveCenterID] [int] NULL,
 CONSTRAINT [PK_ArchiveFolder] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classifications]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classifications](
	[ID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Classifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefineColors]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefineColors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NULL,
	[Descriptions] [varchar](200) NULL,
	[AccessDesc] [varchar](200) NULL,
	[Parent] [int] NULL,
	[ParentName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorMessage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorMessage](
	[Errorid] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorMessage] [nvarchar](255) NULL,
	[ErrorDate] [nvarchar](10) NULL,
	[UserCode] [int] NULL,
	[FarsiMessage] [nvarchar](255) NULL,
	[ShowMessage] [bit] NULL,
 CONSTRAINT [PK_ErrorMessage] PRIMARY KEY CLUSTERED 
(
	[Errorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[TableID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[IsWhere] [bit] NOT NULL,
	[ISString] [bit] NOT NULL,
	[IsLike] [bit] NOT NULL,
	[EveryLike] [bit] NOT NULL,
	[VisibleInGrid] [bit] NOT NULL,
	[isblob] [bit] NOT NULL,
	[FieldGroupID] [int] NULL,
	[FieldTypeID] [tinyint] NULL,
	[ReferenceTableID] [tinyint] NULL,
	[isboolean] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldType]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldType](
	[FieldTypeID] [tinyint] NOT NULL,
	[FieldTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FieldType] PRIMARY KEY CLUSTERED 
(
	[FieldTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File_Address]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_File_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FromOrganizations]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FromOrganizations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[ParentID] [int] NOT NULL,
	[Phone] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[ResponsibleStaffer] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[PreCode] [nvarchar](20) NULL,
	[IsInnerOrg] [bit] NOT NULL,
	[Code] [nvarchar](50) NULL,
 CONSTRAINT [PK_FromOrganizations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keyvalue]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keyvalue](
	[KEY] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](50) NULL,
 CONSTRAINT [PK_Keyvalue] PRIMARY KEY CLUSTERED 
(
	[KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeyWords]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyWords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[word] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KeyWords] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Letter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letter](
	[LetterID] [int] IDENTITY(1,1) NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[MYear] [tinyint] NOT NULL,
	[SecretariatID] [tinyint] NOT NULL,
	[Letter_Type] [tinyint] NOT NULL,
	[letterformat] [tinyint] NOT NULL,
	[IncommingNO] [nvarchar](50) NULL,
	[Incommingdate] [nvarchar](10) NULL,
	[CenterNo] [nvarchar](50) NULL,
	[CenterDate] [char](10) NULL,
	[FromOrgID] [int] NOT NULL,
	[ToOrgID] [int] NOT NULL,
	[Signerid] [nvarchar](50) NULL,
	[ClassificationID] [tinyint] NOT NULL,
	[UrgencyID] [smallint] NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[AttachTitle] [nvarchar](50) NULL,
	[NumberOfAttachPages] [smallint] NULL,
	[NumberOfPage] [tinyint] NOT NULL,
	[ReceiveTypeID] [tinyint] NOT NULL,
	[UserID] [int] NOT NULL,
	[RetroactionNo] [nvarchar](50) NULL,
	[UserMemo] [nvarchar](255) NULL,
	[RegistrationDate] [char](10) NOT NULL,
	[RegistrationTime] [varchar](5) NOT NULL,
	[FollowLetterNo] [nvarchar](50) NULL,
	[ToStaffer] [nvarchar](50) NULL,
	[SentLetterID] [int] NULL,
	[TemplateID] [int] NULL,
	[HeaderID] [int] NULL,
	[LetterRecommites] [nvarchar](500) NULL,
	[FromStaffer] [nvarchar](50) NULL,
	[LastUpdate] [datetime] NOT NULL,
	[SendStatusID] [tinyint] NOT NULL,
	[UserTableID] [int] NULL,
	[Finalized] [bit] NOT NULL,
	[UserMemo1] [nvarchar](255) NULL,
	[UserMemo2] [nvarchar](255) NULL,
	[Color] [int] NULL,
	[Linked_LetterID] [int] NULL,
	[VersionDate] [char](10) NULL,
	[VersionNumber] [varchar](50) NULL,
	[Subject] [nvarchar](250) NULL,
	[Has_Page] [bit] NULL,
	[Has_WordPage] [bit] NULL,
	[Has_File] [bit] NULL,
 CONSTRAINT [PK_Letter] PRIMARY KEY CLUSTERED 
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LETTER_PEYVAST_PDF]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LETTER_PEYVAST_PDF](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[LETTERID] [int] NULL,
	[PAGE] [int] NULL,
	[STR_] [nvarchar](max) NULL,
	[LETTER_DATA_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterArchiveFolder]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterArchiveFolder](
	[LetterArchiveID] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveFolderID] [int] NOT NULL,
	[LetterID] [int] NOT NULL,
	[ArchiveDate] [char](10) NOT NULL,
	[Page] [int] NULL,
	[ArchiveNotes] [nvarchar](50) NULL,
 CONSTRAINT [PK_LetterArchiveFolder] PRIMARY KEY CLUSTERED 
(
	[LetterArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterColor]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterColor](
	[LetterID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
 CONSTRAINT [PK_LetterColor] PRIMARY KEY CLUSTERED 
(
	[LetterID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterDataText]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterDataText](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[letterDataID] [int] NOT NULL,
	[textPart] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_LetterDataText] PRIMARY KEY CLUSTERED 
(
	[letterDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterEdit]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterEdit](
	[LetterEditID] [int] IDENTITY(1,1) NOT NULL,
	[EditDate] [nvarchar](20) NOT NULL,
	[EditTime] [nvarchar](5) NULL,
	[LetterID] [int] NOT NULL,
	[UsersID] [int] NOT NULL,
	[Statement] [nvarchar](300) NULL,
 CONSTRAINT [PK_LetterEdit] PRIMARY KEY CLUSTERED 
(
	[LetterEditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterFieldValue]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterFieldValue](
	[LetterFieldValueID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[FieldID] [int] NOT NULL,
	[FieldValue] [nvarchar](2000) NULL,
 CONSTRAINT [PK_LetterFieldValue] PRIMARY KEY CLUSTERED 
(
	[LetterFieldValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterFormats]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterFormats](
	[Code] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_LetterTypes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTemplate]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Document] [image] NULL,
	[Title] [nvarchar](50) NULL,
	[validHeader] [smallint] NULL,
	[TemplateGroupID] [int] NOT NULL,
 CONSTRAINT [PK_LetterTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterText]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterText](
	[LetterID] [int] NULL,
	[TypeText] [ntext] NULL,
	[LetterFormat] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTypes]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterTypes](
	[ID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[PreCode] [nvarchar](2) NULL,
 CONSTRAINT [PK_LetterTypes_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveTypes]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveTypes](
	[ID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReceiveTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommiteData]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommiteData](
	[RecommiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[RecommiteID] [int] NOT NULL,
	[Image] [image] NULL,
	[extention] [tinyint] NOT NULL,
 CONSTRAINT [PK_RecommiteData_RecommiteDataID] PRIMARY KEY CLUSTERED 
(
	[RecommiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReCommites]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReCommites](
	[RecommiteID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[ID] [smallint] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[ParentId] [smallint] NOT NULL,
	[OrgID] [int] NOT NULL,
	[Paraph] [nvarchar](500) NULL,
	[RecommiteDate] [varchar](10) NOT NULL,
	[UserID] [tinyint] NOT NULL,
	[IsCopy] [bit] NULL,
	[Proceeded] [bit] NOT NULL,
	[ProceedDate] [varchar](10) NULL,
	[staffmemo] [nvarchar](255) NULL,
	[viewdate] [char](10) NULL,
	[OrgStaff] [nvarchar](100) NULL,
	[DeadLineDate] [char](10) NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [PK_ReCommites] PRIMARY KEY CLUSTERED 
(
	[RecommiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommiteTypes]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommiteTypes](
	[ID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ReceiveMode] [bit] NULL,
	[InnerOrganize] [bit] NULL,
 CONSTRAINT [PK_RecommiteTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceTableData]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceTableData](
	[ReferenceTableDataID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NOT NULL,
	[DataID] [tinyint] NOT NULL,
	[DataTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ReferenceTableData] PRIMARY KEY CLUSTERED 
(
	[ReferenceTableDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secretariats]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secretariats](
	[SecID] [int] IDENTITY(1,1) NOT NULL,
	[SecTitle] [nvarchar](50) NULL,
	[PreCode] [nvarchar](50) NULL,
	[ArchiveCenterID] [int] NOT NULL,
 CONSTRAINT [PK_Secretariats] PRIMARY KEY CLUSTERED 
(
	[SecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SendStatus]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SendStatus](
	[SendStatusID] [tinyint] NOT NULL,
	[SendStatusTitle] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SendStatus] PRIMARY KEY CLUSTERED 
(
	[SendStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sentenses]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sentenses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SentenseName] [nvarchar](50) NULL,
	[SentensValue] [nvarchar](255) NULL,
 CONSTRAINT [PK_Sentenses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[UserID] [int] NOT NULL,
	[VariableId] [int] NULL,
	[Value] [nvarchar](255) NULL,
	[description] [nvarchar](50) NULL,
	[VariableName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_AppMessage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_AppMessage](
	[ID] [int] NOT NULL,
	[FarsiMessage] [nvarchar](255) NULL,
 CONSTRAINT [PK_sys_AppMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[TableId] [tinyint] NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[TableType] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbExcel]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbExcel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NULL,
	[F1] [nvarchar](500) NULL,
	[F2] [nvarchar](500) NULL,
	[F3] [nvarchar](500) NULL,
	[F4] [nvarchar](500) NULL,
	[F5] [nvarchar](500) NULL,
	[F6] [nvarchar](500) NULL,
	[F7] [nvarchar](500) NULL,
	[F8] [nvarchar](500) NULL,
	[F9] [nvarchar](500) NULL,
	[F10] [nvarchar](500) NULL,
	[F11] [nvarchar](500) NULL,
	[F12] [nvarchar](500) NULL,
	[F13] [nvarchar](500) NULL,
	[F14] [nvarchar](500) NULL,
	[F15] [nvarchar](500) NULL,
	[F16] [nvarchar](500) NULL,
	[F17] [nvarchar](500) NULL,
	[F18] [nvarchar](500) NULL,
	[F19] [nvarchar](500) NULL,
	[F20] [nvarchar](500) NULL,
	[F21] [nvarchar](500) NULL,
	[F22] [nvarchar](500) NULL,
	[F23] [nvarchar](500) NULL,
	[F24] [nvarchar](500) NULL,
	[F25] [nvarchar](500) NULL,
	[F26] [nvarchar](500) NULL,
	[F27] [nvarchar](500) NULL,
	[F28] [nvarchar](500) NULL,
	[F29] [nvarchar](500) NULL,
	[F30] [nvarchar](500) NULL,
	[F31] [nvarchar](500) NULL,
	[F32] [nvarchar](500) NULL,
	[F33] [nvarchar](500) NULL,
	[DateModify] [datetime] NULL,
	[IDNumber] [int] NULL,
 CONSTRAINT [PK_TbExcel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateGroup]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateGroup](
	[TemplateGroupID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateGroupTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TemplateGroup] PRIMARY KEY CLUSTERED 
(
	[TemplateGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeTable]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Grid_TitleColor] [varchar](50) NULL,
	[Grid_OddColor] [varchar](50) NULL,
	[Grid_EvenColor] [varchar](50) NULL,
	[Grid_Color] [varchar](50) NULL,
	[Grid_VerLine] [bit] NULL,
	[Grid_HorLine] [bit] NULL,
	[PanelColor] [varchar](50) NULL,
	[ActiveControl] [varchar](50) NULL,
	[UserID] [int] NULL,
	[Grid_Band] [bit] NULL,
	[Menu_BarColor] [varchar](50) NULL,
	[Menu_ItemColor] [varchar](50) NULL,
	[Menu_Color] [varchar](50) NULL,
	[CalendarColor] [varchar](50) NULL,
 CONSTRAINT [PK_ThemeTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransferHistory]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferHistory](
	[ID] [int] NOT NULL,
	[TransferDate] [nvarchar](10) NOT NULL,
	[StartDate] [nvarchar](10) NOT NULL,
	[EndDate] [nvarchar](10) NOT NULL,
	[TransferTime] [nvarchar](5) NULL,
	[SecondaryDB_ID] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[LastLetter_ID] [int] NOT NULL,
 CONSTRAINT [PK_TransferHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urgenceis]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urgenceis](
	[ID] [smallint] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Urgenceis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccArchive]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccArchive](
	[UserAccArchiveID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ArchiveCenterID] [int] NOT NULL,
	[ArchiveFolderID] [int] NOT NULL,
	[ISAccess] [bit] NULL,
	[SecID] [int] NULL,
 CONSTRAINT [PK_UserAccArchive] PRIMARY KEY CLUSTERED 
(
	[UserAccArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserExtention]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserExtention](
	[UserExtentionID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ExtentionID] [int] NOT NULL,
	[ReaderApplication] [nvarchar](500) NULL,
 CONSTRAINT [PK_UserExtention] PRIMARY KEY CLUSTERED 
(
	[UserExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLog](
	[UserID] [tinyint] NOT NULL,
	[FormID] [tinyint] NOT NULL,
	[Time1] [datetime] NOT NULL,
	[LetterID] [int] NULL,
	[ActionName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginLogout]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginLogout](
	[UserLoginLogoutID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IPAddress] [char](15) NULL,
	[LoginTime] [datetime] NOT NULL,
	[LogoutTime] [datetime] NOT NULL,
	[isSafeLogout] [bit] NOT NULL,
	[ComputerName] [char](30) NULL,
 CONSTRAINT [PK_UserLoginLogout] PRIMARY KEY CLUSTERED 
(
	[UserLoginLogoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMemo]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMemo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserMemo] [varchar](255) NULL,
 CONSTRAINT [PK_UserMemo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMemo1]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMemo1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserMemo1] [varchar](255) NULL,
 CONSTRAINT [PK_UserMemo1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMemo2]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMemo2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserMemo2] [varchar](255) NULL,
 CONSTRAINT [PK_UserMemo2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNote]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNote](
	[UserNoteID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Note] [ntext] NULL,
	[CreateDate] [char](10) NOT NULL,
 CONSTRAINT [PK_UserNote] PRIMARY KEY CLUSTERED 
(
	[UserNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](100) NULL,
	[AccessID] [tinyint] NULL,
	[FromOrgID] [int] NULL,
	[DefualtSecretariatID] [tinyint] NOT NULL,
	[IsSecretariantStaffer] [bit] NULL,
	[KartableGridInfo] [image] NULL,
	[DabirGridInfo] [image] NULL,
	[HasSecureLetterAccess] [bit] NOT NULL,
	[CanAttachColor] [bit] NULL,
	[CanViewAllAttachPages] [bit] NULL,
	[CanViewAllRecommites] [bit] NOT NULL,
	[ChangeByAdmin] [bit] NULL,
	[BeginActiveDate] [char](10) NULL,
	[EndActiveDate] [char](10) NULL,
	[ShowAllDoc] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSecretariats]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSecretariats](
	[UserId] [int] NOT NULL,
	[SecId] [int] NOT NULL,
	[AccessId] [int] NULL,
 CONSTRAINT [PK_UserSecretariats] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserShortCut]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserShortCut](
	[userShortCutID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[keyText] [nvarchar](100) NOT NULL,
	[altKey] [char](1) NOT NULL,
 CONSTRAINT [PK_UserShortCut] PRIMARY KEY NONCLUSTERED 
(
	[userShortCutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [userShortCut_user_idx]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE CLUSTERED INDEX [userShortCut_user_idx] ON [dbo].[UserShortCut]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTemplateGroup]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTemplateGroup](
	[UserTemplateGroupID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateGroupID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_UserTemplateGroup] PRIMARY KEY CLUSTERED 
(
	[UserTemplateGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VERSION_INFO]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
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
/****** Object:  Index [IX_Alarm_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Alarm_LetterID] ON [dbo].[Alarm]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Alarm_UsersID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Alarm_UsersID] ON [dbo].[Alarm]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AlarmUsers_AlarmID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_AlarmUsers_AlarmID] ON [dbo].[AlarmUsers]
(
	[AlarmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AlarmUsers_UsersID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_AlarmUsers_UsersID] ON [dbo].[AlarmUsers]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationForms_ID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationForms_ID] ON [dbo].[ApplicationForms]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ArchiveFolder_ParentFolderID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ArchiveFolder_ParentFolderID] ON [dbo].[ArchiveFolder]
(
	[ParentFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ArchiveFolder_Title]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ArchiveFolder_Title] ON [dbo].[ArchiveFolder]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ArchiveFolder_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ArchiveFolder_UserID] ON [dbo].[ArchiveFolder]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ErrorMessage_ErrorMessage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ErrorMessage_ErrorMessage] ON [dbo].[ErrorMessage]
(
	[ErrorMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ErrorMessage_FarsiMessage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ErrorMessage_FarsiMessage] ON [dbo].[ErrorMessage]
(
	[FarsiMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_FieldGroupID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldGroupID] ON [dbo].[Fields]
(
	[FieldGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Fields_FieldName]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldName] ON [dbo].[Fields]
(
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_FieldTypeID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldTypeID] ON [dbo].[Fields]
(
	[FieldTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_ReferenceTableID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_ReferenceTableID] ON [dbo].[Fields]
(
	[ReferenceTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_TableID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_TableID] ON [dbo].[Fields]
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [HHH]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [HHH] ON [dbo].[FromOrganizations]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FromOrganizations]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FromOrganizations] ON [dbo].[FromOrganizations]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FromOrganizations_ParentID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FromOrganizations_ParentID] ON [dbo].[FromOrganizations]
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FromOrganizations_Title]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FromOrganizations_Title] ON [dbo].[FromOrganizations]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_ClassificationID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_ClassificationID] ON [dbo].[Letter]
(
	[ClassificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_FromOrgID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_FromOrgID] ON [dbo].[Letter]
(
	[FromOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Letter_IncommingNO]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_IncommingNO] ON [dbo].[Letter]
(
	[IncommingNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_IndicatorID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_IndicatorID] ON [dbo].[Letter]
(
	[IndicatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_Letter_Type]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_Letter_Type] ON [dbo].[Letter]
(
	[Letter_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_letterformat]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_letterformat] ON [dbo].[Letter]
(
	[letterformat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_MYear]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_MYear] ON [dbo].[Letter]
(
	[MYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Letter_RegistrationDate]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_RegistrationDate] ON [dbo].[Letter]
(
	[RegistrationDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_SecretariatID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_SecretariatID] ON [dbo].[Letter]
(
	[SecretariatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Letter_Signerid]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_Signerid] ON [dbo].[Letter]
(
	[Signerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_ToOrgID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_ToOrgID] ON [dbo].[Letter]
(
	[ToOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_UrgencyID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_UrgencyID] ON [dbo].[Letter]
(
	[UrgencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_UserID] ON [dbo].[Letter]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letter_IDX_Indicator]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [Letter_IDX_Indicator] ON [dbo].[Letter]
(
	[IndicatorID] ASC,
	[MYear] ASC,
	[SecretariatID] ASC,
	[Letter_Type] ASC,
	[letterformat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterArchiveFolder_ArchiveFolderID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterArchiveFolder_ArchiveFolderID] ON [dbo].[LetterArchiveFolder]
(
	[ArchiveFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterArchiveFolder_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterArchiveFolder_LetterID] ON [dbo].[LetterArchiveFolder]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letterarchive_Folder_idx]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArchiveFolder]
(
	[ArchiveFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letterarchive_Letter_Folder_idx]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[LetterArchiveFolder]
(
	[ArchiveFolderID] ASC,
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letterarchive_Letter_idx]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArchiveFolder]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterData_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterData_LetterID] ON [dbo].[LetterData]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterEdit_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterEdit_LetterID] ON [dbo].[LetterEdit]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterEdit_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterEdit_UserID] ON [dbo].[LetterEdit]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterFieldValue_FieldID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterFieldValue_FieldID] ON [dbo].[LetterFieldValue]
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterFieldValue_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterFieldValue_LetterID] ON [dbo].[LetterFieldValue]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LetterTemplate_Title]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterTemplate_Title] ON [dbo].[LetterTemplate]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterText_LetterFormat]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterText_LetterFormat] ON [dbo].[LetterText]
(
	[LetterFormat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterText_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterText_LetterID] ON [dbo].[LetterText]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ListItems_ListID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ListItems_ListID] ON [dbo].[ListItems]
(
	[ListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ReceiveTypes_Title]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReceiveTypes_Title] ON [dbo].[ReceiveTypes]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecommiteData_extention]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RecommiteData_extention] ON [dbo].[RecommiteData]
(
	[extention] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecommiteData_RecommiteID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RecommiteData_RecommiteID] ON [dbo].[RecommiteData]
(
	[RecommiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ReCommites_DeadLineDate]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_DeadLineDate] ON [dbo].[ReCommites]
(
	[DeadLineDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_ID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_ID] ON [dbo].[ReCommites]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_LetterID] ON [dbo].[ReCommites]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_OrgID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_OrgID] ON [dbo].[ReCommites]
(
	[OrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_ParentId]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_ParentId] ON [dbo].[ReCommites]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_UserID] ON [dbo].[ReCommites]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTableData_DataID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReferenceTableData_DataID] ON [dbo].[ReferenceTableData]
(
	[DataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTableData_TableID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReferenceTableData_TableID] ON [dbo].[ReferenceTableData]
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Secretariats_ArchiveCenterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Secretariats_ArchiveCenterID] ON [dbo].[Secretariats]
(
	[ArchiveCenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Secretariats_Precode]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Secretariats_Precode] ON [dbo].[Secretariats]
(
	[PreCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tables_TableType]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Tables_TableType] ON [dbo].[Tables]
(
	[TableType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccArchive_ArchiveCenterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserAccArchive_ArchiveCenterID] ON [dbo].[UserAccArchive]
(
	[ArchiveCenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccArchive_ArchiveFolderID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserAccArchive_ArchiveFolderID] ON [dbo].[UserAccArchive]
(
	[ArchiveFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccArchive_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserAccArchive_UserID] ON [dbo].[UserAccArchive]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserExtention_ExtentionID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserExtention_ExtentionID] ON [dbo].[UserExtention]
(
	[ExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserExtention_UserId]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserExtention_UserId] ON [dbo].[UserExtention]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_extention_idx]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [User_extention_idx] ON [dbo].[UserExtention]
(
	[UserId] ASC,
	[ExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLog_ActionName]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_ActionName] ON [dbo].[UserLog]
(
	[ActionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_FormID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_FormID] ON [dbo].[UserLog]
(
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_LetterID] ON [dbo].[UserLog]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_UserID] ON [dbo].[UserLog]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLoginLogout_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLoginLogout_UserID] ON [dbo].[UserLoginLogout]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserNote_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserNote_UserID] ON [dbo].[UserNote]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_AccessID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_AccessID] ON [dbo].[Users]
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_DefualtSecretariatID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_DefualtSecretariatID] ON [dbo].[Users]
(
	[DefualtSecretariatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_FromOrgID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_FromOrgID] ON [dbo].[Users]
(
	[FromOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [userShortCut_keytext_idx]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [userShortCut_keytext_idx] ON [dbo].[UserShortCut]
(
	[keyText] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTemplateGroup_TemplateGroupID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserTemplateGroup_TemplateGroupID] ON [dbo].[UserTemplateGroup]
(
	[TemplateGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTemplateGroup_UserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserTemplateGroup_UserID] ON [dbo].[UserTemplateGroup]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArchiveFolder] ADD  CONSTRAINT [DF_ArchiveFolder_ArchiveCenterID]  DEFAULT (0) FOR [ArchiveCenterID]
GO
ALTER TABLE [dbo].[ErrorMessage] ADD  CONSTRAINT [DF_ErrorMessage_ShowMessage]  DEFAULT (1) FOR [ShowMessage]
GO
ALTER TABLE [dbo].[Extention] ADD  CONSTRAINT [DF_Extention_IsSystem]  DEFAULT (0) FOR [IsSystem]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_TableID]  DEFAULT (1) FOR [TableID]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_IsWhere]  DEFAULT (1) FOR [IsWhere]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_ISString]  DEFAULT (1) FOR [ISString]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_IsLike]  DEFAULT (1) FOR [IsLike]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_EveryLike]  DEFAULT (0) FOR [EveryLike]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_VisibleInGrid]  DEFAULT (1) FOR [VisibleInGrid]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF__Fields__isblob__1AB4CD6A]  DEFAULT (0) FOR [isblob]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF__Fields__order__569F9A3F]  DEFAULT (1) FOR [order]
GO
ALTER TABLE [dbo].[FromOrganizations] ADD  CONSTRAINT [DF_FromOrganizations_IsActive]  DEFAULT (1) FOR [IsActive]
GO
ALTER TABLE [dbo].[FromOrganizations] ADD  CONSTRAINT [DF_FromOrganizations_IsInnerOrg]  DEFAULT (1) FOR [IsInnerOrg]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__Secretar__1DBB5747]  DEFAULT (1) FOR [SecretariatID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__Letter_T__1EAF7B80]  DEFAULT (1) FOR [Letter_Type]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__letterfo__1FA39FB9]  DEFAULT (1) FOR [letterformat]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__FromOrgI__2097C3F2]  DEFAULT ((-1)) FOR [FromOrgID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__ToOrgID__218BE82B]  DEFAULT (0) FOR [ToOrgID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__Classifi__22800C64]  DEFAULT (1) FOR [ClassificationID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__UrgencyI__2374309D]  DEFAULT (1) FOR [UrgencyID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__NumberOf__246854D6]  DEFAULT (1) FOR [NumberOfAttachPages]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__NumberOf__255C790F]  DEFAULT (1) FOR [NumberOfPage]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__ReceiveT__26509D48]  DEFAULT (1) FOR [ReceiveTypeID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__UserID__2744C181]  DEFAULT (0) FOR [UserID]
GO
ALTER TABLE [dbo].[Letter] ADD  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF_Letter_Sent]  DEFAULT (1) FOR [SendStatusID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__Finalize__4EFE7877]  DEFAULT (1) FOR [Finalized]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF_Letter_Has_Page]  DEFAULT ((0)) FOR [Has_Page]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF_Letter_Has_WordPage]  DEFAULT ((0)) FOR [Has_WordPage]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF_Letter_Has_File]  DEFAULT ((0)) FOR [Has_File]
GO
ALTER TABLE [dbo].[LetterData] ADD  CONSTRAINT [DF_letterdata_pageNumber]  DEFAULT (0) FOR [PageNumber]
GO
ALTER TABLE [dbo].[LetterData] ADD  CONSTRAINT [DF_LetterData_extention]  DEFAULT (1) FOR [extention]
GO
ALTER TABLE [dbo].[LetterData] ADD  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[LetterTemplate] ADD  DEFAULT (1) FOR [TemplateGroupID]
GO
ALTER TABLE [dbo].[LetterText] ADD  DEFAULT (0) FOR [LetterFormat]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_Type]  DEFAULT (1) FOR [Type]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_ParentId]  DEFAULT (0) FOR [ParentId]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_UserID]  DEFAULT (1) FOR [UserID]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_Done]  DEFAULT (0) FOR [Proceeded]
GO
ALTER TABLE [dbo].[ReCommites] ADD  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[Secretariats] ADD  DEFAULT (0) FOR [ArchiveCenterID]
GO
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF_UserLog_FormID]  DEFAULT (1) FOR [FormID]
GO
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF_UserLog_Time1]  DEFAULT (getdate()) FOR [Time1]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_LoginTime]  DEFAULT (getdate()) FOR [LoginTime]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_LogoutTime]  DEFAULT (getdate()) FOR [LogoutTime]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_isSafeLogout]  DEFAULT (0) FOR [isSafeLogout]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DefualtSecretariatID]  DEFAULT (1) FOR [DefualtSecretariatID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsSecretariantStaffer]  DEFAULT (1) FOR [IsSecretariantStaffer]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (1) FOR [HasSecureLetterAccess]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [CanViewAllRecommites]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ChangeByAdmin]
GO
ALTER TABLE [dbo].[AppColumns]  WITH CHECK ADD  CONSTRAINT [FK_AppColumns_AppGrids] FOREIGN KEY([GridID])
REFERENCES [dbo].[AppGrids] ([GridID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppColumns] CHECK CONSTRAINT [FK_AppColumns_AppGrids]
GO
ALTER TABLE [dbo].[AppGrids]  WITH CHECK ADD  CONSTRAINT [FK_AppGrids_AppForms] FOREIGN KEY([FormTag])
REFERENCES [dbo].[AppForms] ([FormTag])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppGrids] CHECK CONSTRAINT [FK_AppGrids_AppForms]
GO
ALTER TABLE [dbo].[FromOrganizations]  WITH NOCHECK ADD  CONSTRAINT [FK_FromOrganizations_FromOrganizations] FOREIGN KEY([ParentID])
REFERENCES [dbo].[FromOrganizations] ([ID])
GO
ALTER TABLE [dbo].[FromOrganizations] NOCHECK CONSTRAINT [FK_FromOrganizations_FromOrganizations]
GO
ALTER TABLE [dbo].[UserAccArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAccArchive_ArchiveCenter] FOREIGN KEY([ArchiveCenterID])
REFERENCES [dbo].[ArchiveCenter] ([ArchiveCenterID])
GO
ALTER TABLE [dbo].[UserAccArchive] NOCHECK CONSTRAINT [FK_UserAccArchive_ArchiveCenter]
GO
ALTER TABLE [dbo].[UserAccArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAccArchive_ArchiveFolder] FOREIGN KEY([ArchiveFolderID])
REFERENCES [dbo].[ArchiveFolder] ([FolderID])
GO
ALTER TABLE [dbo].[UserAccArchive] NOCHECK CONSTRAINT [FK_UserAccArchive_ArchiveFolder]
GO
ALTER TABLE [dbo].[UserAccArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAccArchive_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAccArchive] NOCHECK CONSTRAINT [FK_UserAccArchive_Users]
GO
/****** Object:  StoredProcedure [dbo].[Activate_Letter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE PROCEDURE [dbo].[Activate_Letter](@receivedMode bit,@indicatorID int ,@myear int, @secID int)
as
    if @receivedMode=1 
 update ReceievedLetters
                 set letter_type=1
                 where IndicatorID=@indicatorID
                 and  MYear=@myear
                 and  SecretariatID=@secID  
else
 update SentLetters
                 set letter_type=1
                 where IndicatorID=@indicatorID
                 and  MYear=@myear
                 and  SecretariatID=@secID

  delete from LetterFile
                 where LetterIndicatorID=@indicatorID
                 and  LetterMYear=@myear
                 and  SecID=@secid  






GO
/****** Object:  StoredProcedure [dbo].[Activate_Recommite]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE procedure  [dbo].[Activate_Recommite](
               @RecommiteID  int)
 AS
update  [dbo].[ReCommites] 
set proceeded=0
WHERE 
	( RecommiteID	 = @RecommiteID)























GO
/****** Object:  StoredProcedure [dbo].[AnswerLetter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE Procedure [dbo].[AnswerLetter]( @LetterID int,@AnswerLetterID int,@Today char(10))

as
UPDATE Letter SET SentLetterID = @AnswerLetterID
 WHERE   LetterID=@LetterID
DECLARE @Letterformat int

select @letterFormat=letterFormat from letter  
 WHERE   LetterID=@LetterID


if @letterFormat=1 
UPDATE ReCommites 
SET Proceeded=1, ProceedDate = @today
WHERE (Proceeded=0) AND (LetterID=@LetterID)






GO
/****** Object:  StoredProcedure [dbo].[AnswerNote]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[AnswerNote] 
@recommiteID int
as
update Recommites 
set Staffmemo='پیش نویس صادره آماده شد '
where recommiteid=@recommiteID




GO
/****** Object:  StoredProcedure [dbo].[Archive_ParentFolders]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create Procedure [dbo].[Archive_ParentFolders] (@LetterID int,@UserID  tinyint,@result  nvarchar(4000) output )
as
set @result=''
SELECT   @result=@result +' , '+dbo.ParentFolders( ArchiveFolder.FolderID)
FROM         LetterArchiveFolder 
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result=substring(@result,4,1000)


GO
/****** Object:  StoredProcedure [dbo].[delete_Accesses]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
















CREATE PROCEDURE [dbo].[delete_Accesses]
	(@AccessID 	[tinyint])

AS DELETE [dbo].[Accesses] 

WHERE 
	( [ID]	 = @AccessID)















GO
/****** Object:  StoredProcedure [dbo].[delete_Actions_ByFormID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

















CREATE PROCEDURE [dbo].[delete_Actions_ByFormID]
	(@FormTag 	[tinyint])

AS DELETE [dbo].[Actions] 

WHERE (
	 [FormTag]	 = @FormTag)
















GO
/****** Object:  StoredProcedure [dbo].[Delete_All_Secretariats_Of_User]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_All_Secretariats_Of_User](@UserId INT, @SecId INT)
AS
BEGIN
    DELETE FROM UserSecretariats WHERE (UserId = @UserID) AND (SecId = @SecId)
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_TemplateGroup_Of_User]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











create procedure [dbo].[Delete_All_TemplateGroup_Of_User](@userid int)
as
DELETE FROM UserTemplateGroup
WHERE     (UserId = @UserID)


GO
/****** Object:  StoredProcedure [dbo].[delete_ArchiveFolder]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
















CREATE PROCEDURE [dbo].[delete_ArchiveFolder]
	(@FolderID 	[int])

AS DELETE [dbo].[ArchiveFolder] 

WHERE 
	( [FolderID]	 = @FolderID)















GO
/****** Object:  StoredProcedure [dbo].[Delete_Exported_LetterData]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE proc [dbo].[Delete_Exported_LetterData](@SecretariatID int, @myear tinyint)
as
delete     LetterData
FROM         LetterData 
INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID
WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MYear = @myear)






GO
/****** Object:  StoredProcedure [dbo].[delete_Extention]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------ ----------------------------------------------------------------------------
----------------Ver_4.0.0.6
CREATE PROCEDURE [dbo].[delete_Extention]
@ExtentionID int 
AS
if not exists(select LetterDataID from LetterData where extention=@ExtentionID)
begin
	delete UserExtention where ExtentionID=@ExtentionID
	delete Extention where ExtentionID=@ExtentionID
end
else
	raiserror('از اين نوع فايل در پيوست ها استفاده شده است مجاز به حذف نيستيد'     ,16,1) ;

GO
/****** Object:  StoredProcedure [dbo].[delete_Letter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_Letter] 
@LetterID int,@newInd int
AS

declare @letterformat tinyint

select   @letterformat=letterformat
from letter
where letterid=@LetterID

if @letterformat=1 
  UPDATE    Letter
  SET             LetterFormat = 3 ,indicatorid=@newind
 WHERE     (LetterID = @LetterID)

 if @letterformat>1  
begin
  delete from Letter
  WHERE     (LetterID = @LetterID)
  DELETE [ReCommites]  WHERE     (LetterID = @LetterID)
  DELETE [LetterText]  WHERE     (LetterID = @LetterID)
  DELETE [LetterFile]  WHERE     (LetterID = @LetterID)
  DELETE [LetterData]  WHERE     (LetterID = @LetterID)
  Delete LetterArchiveFolder WHERE (LetterID = @LetterID)
end



















GO
/****** Object:  StoredProcedure [dbo].[delete_LetterArchiveFolder]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
















CREATE PROCEDURE [dbo].[delete_LetterArchiveFolder]
	(@LetterArchiveID 	[int])

AS DELETE [dbo].[LetterArchiveFolder] 

WHERE 
	( [LetterArchiveID]	 = @LetterArchiveID)















GO
/****** Object:  StoredProcedure [dbo].[delete_LetterData]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[delete_LetterData] (@LetterDataID int )
as
delete       LetterData WHERE     (LetterDataID = @LetterDataID)
delete       LetterDataText WHERE     (LetterDataID = @LetterDataID)
GO
/****** Object:  StoredProcedure [dbo].[delete_letterImage]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_letterImage]
@Letterdataid int
as
declare @pageNumber int,@Letterid int

select @pageNumber=pageNumber,@Letterid=Letterid from letterdata
WHERE     (Letterdataid = @Letterdataid)

DELETE FROM letterdata
WHERE     (Letterdataid = @Letterdataid)

update letterdata
set pageNumber=pageNumber-1
where @Letterid=Letterid and pageNumber>@pageNumber


GO
/****** Object:  StoredProcedure [dbo].[delete_LetterWord]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[delete_LetterWord]
	(@LetterID 	[int])

AS DELETE [dbo].[LetterData] 

WHERE 
	( [LetterID]	 = @LetterID AND
	 [extention]	 = 3)



GO
/****** Object:  StoredProcedure [dbo].[delete_ReCommites]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





















CREATE PROCEDURE [dbo].[delete_ReCommites]
	(@RecommiteID 	[int])

AS DELETE [dbo].[ReCommites] 

WHERE 
	( [RecommiteID]	 = @RecommiteID)




















GO
/****** Object:  StoredProcedure [dbo].[Delete_Table]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[Delete_Table](@tableID int)
as

declare @IsSystemTable bit,@Tablename varchar(50)

select @tablename=Tablename,@IsSystemTable=IsSystemTable
 from tables
where tableid=@tableid
if @IsSystemTable=0 
 begin
  delete from tables
  where tableid=@tableid
  
  delete from Fields
  where tableid=@tableid

  exec('drop table '+@tablename)
end






GO
/****** Object:  StoredProcedure [dbo].[Deleted_to_Letter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



























create PROCEDURE [dbo].[Deleted_to_Letter] 
@LetterID int,@newInd int,@today char(10)
AS
   UPDATE   Letter
   SET        registrationdate=@today,      IndicatorID = @newInd,  LetterFormat = 1
 WHERE     (LetterID = @LetterID)























GO
/****** Object:  StoredProcedure [dbo].[DeleteFulltextLetter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[DeleteFulltextLetter]
@MYear int,@Indicator int,@receivedMode bit
AS
DELETE LetterFullText

WHERE 
	[Myear]	 = @Myear AND
	 [SecretariatID] = 1 AND
	 [IndicatorID]	 = @Indicator AND
	 [ReceivedMode]	 = @ReceivedMode







GO
/****** Object:  StoredProcedure [dbo].[Draft_to_SentLetter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[Draft_to_SentLetter] 
@LetterID int,@newInd int,@today char(10)
AS

   UPDATE   Letter
   SET        registrationdate=@today,      IndicatorID = @newInd,  LetterFormat = 1
  WHERE     (LetterID = @LetterID)

  update recommites
  set proceeded=1 where letterid=@LetterID

declare @receivedLetter int

select top 1 @receivedLetter=Letterid
from letter where sentletterid=@LetterID

if @receivedLetter is not null
  update recommites
  set proceeded=1 where letterid=@receivedLetter





GO
/****** Object:  StoredProcedure [dbo].[Export_LetterData]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Export_LetterData](@LetterdataID int)
as
if not exists (select * from yeganeh_tmp_db.dbo.sysobjects where name='LetterData')
begin
CREATE TABLE yeganeh_tmp_db.dbo.LetterData (
	LetterDataID int  NOT NULL ,
	LetterID int NOT NULL ,
	PageNumber tinyint NOT NULL ,
	Image image NULL ,
	extention tinyint NOT NULL,
	[Description] [nvarchar] (200)  NULL )
end
insert INTO yeganeh_tmp_db.DBO.LetterData (LetterDataID,LetterID,PageNumber,Image,extention,[Description])
SELECT     LetterDataID,LetterID,PageNumber,Image,extention,[Description]
FROM         LetterData
WHERE     (LetterdataID = @LetterdataID)
GO
/****** Object:  StoredProcedure [dbo].[Folder_hasChild]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


















CREATE PROCEDURE [dbo].[Folder_hasChild]
	(@userid int ,@ParentID 	[int],@hasChild bit output)
AS 
if exists( SELECT     *
FROM         ArchiveFolder
WHERE     (ParentFolderID = @ParentID) and (UserID = @userid))
set @haschild=1
else
set @haschild=0



















GO
/****** Object:  StoredProcedure [dbo].[Folder_hasLetter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Folder_hasLetter](@Folderid int,@hasLetter bit output)
as
if exists (SELECT     *
FROM         LetterArchiveFolder inner join letter on letter.letterid=LetterArchiveFolder.letterid
WHERE   ArchiveFolderID = @Folderid  and letterformat=1) set @hasLetter=1
else
set @hasLetter=0
GO
/****** Object:  StoredProcedure [dbo].[Get_ActiveUser]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE  procedure [dbo].[Get_ActiveUser]
as

SELECT     Users.UserName, 
max(case when datepart(hh, LoginTime)<10 then '0'+cast(datepart(hh, LoginTime) as char(1)) else cast(datepart(hh, LoginTime) as char(2)) end +':'+
case when datepart(mi, LoginTime)<10 then '0'+cast(datepart(mi, LoginTime) as char(1)) else cast(datepart(mi, LoginTime) as char(2)) end ) as logintime
FROM         UserLoginLogout 
INNER JOIN   Users ON UserID = Users.Id
where isSafeLogout=0 and dbo.Shamsi(LoginTime)=dbo.Shamsi(getdate())
and datediff(mi,LogoutTime,getdate())<5
group by Users.UserName




GO
/****** Object:  StoredProcedure [dbo].[Get_All_Letter]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_All_Letter] 
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(4000),
@top INT ,@archiveFolderID int ,@UsersID int, @WordText nvarchar(2000)='', @AttachText nvarchar(2000)='',@TYP CHAR(10)='DATE-AVAL'
as                
BEGIN

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TTES]') AND type in (N'U'))
DROP TABLE [dbo].[TTES]

declare @today char(10)              
set @today=dbo.Shamsi(getdate())              

declare @sqlCommand nvarchar(max)              

declare @sqlCommand2 nvarchar(max) 
             
SET @sqlCommand2 = ''

IF EXISTS (SELECT * FROM dbo.Settings WHERE VariableName = 'SORT_IncommingNO' AND Value = 1)
BEGIN             
set @sqlCommand='SELECT TOP '+Cast(@top as varchar(MAX)) +
                      ' Letter.LetterID,
                      Letter.IndicatorID, 
					  Letter.MYear, 
					  Letter.SecretariatID,               
                      Letter.Letter_Type, 
					  Letter.letterformat, 
					  Letter.IncommingNO, 
					  CONVERT(BIGINT, dbo.CleanAndTrimString(Letter.IncommingNO)) AS IncommingNO_INT , 
					  1 AS SORT_INT , 
					  Letter.FromOrgID,
					  Letter.IncommingDate, 
					  Letter.Subject,              
                      Letter.ToOrgID, 
					  Letter.UrgencyID, 
					  Letter.Memo, 
					  Letter.RetroactionNo, 
					  Letter.RegistrationDate, 
					  Letter.FollowLetterNo,               
                      Letter.ToStaffer, 
					  Letter.SentLetterID, 
					  Letter.TemplateID, 
					  Letter.HeaderID, 
					  sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,
					  dbo.has_Page(Letter.letterid) has_Page,              
                      dbo.has_WordPage(Letter.letterid) has_WordPage,
					  dbo.has_file(Letter.letterid) has_file,              
                      LetterTypes.Title LetterTypeTitle,
					  LetterRecommites,
					  dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
                      dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,
					  sendstatusTitle,
					  dbo.InnerNo(Letter.LetterID)  InnerNo,              
                      dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
                      LC.ColorID as Color , Letter.ReceiveTypeID        
                     ,(Select SecTitle 
					   From Secretariats S,
					   UserSecretariats US 
					   Where S.SecID = US.SecId 
					   And US.SecId = Letter.SecretariatID 
					   And US.UserID = Letter.UserID) as SecTitle
                      ,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
					  ,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
					  ,Letter.AttachTitle ,
					  Letter.UserMemo ,
					  Letter.UserMemo1,
					  Letter.UserMemo2,
					  Letter.VersionNumber,
					  Letter.VersionDate    
                     ,( Select Top 1 AF.Title 
					    From ArchiveFolder AF , 
						     LetterArchiveFolder LAF , 
							 Letter L 
					    Where(LAF.LetterID = Letter.LetterID)    
                        And(LAF.LetterID = L.LetterID)  
						And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle 
                     ,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm,Letter.UserID AS LUID  
             -- INTO TTES 
			FROM Letter
			left  JOIN FromOrganizations sender 
			   ON Letter.ToOrgID = sender.ID 
			left  JOIN FromOrganizations Deliver 
			   ON Letter.FromOrgID = Deliver.ID               
			Left join LetterTypes 
			   on LetterTypes.ID=Letter.Letter_type 
			left join LetterColor LC 
			   on Letter.letterID = LC.LetterID and LC.UserID = '+ Cast(@UsersID as Nvarchar(10))+'            
			inner join sendstatus 
			   on sendstatus.sendstatusID=Letter.sendstatusID '              
END
ELSE
BEGIN             
set @sqlCommand='SELECT TOP '+Cast(@top as varchar(MAX)) +' 
                      Letter.LetterID,Letter.IndicatorID,Letter.MYear,Letter.SecretariatID,Letter.Letter_Type,Letter.letterformat,Letter.IncommingNO ,0 AS SORT_INT ,
					  Letter.FromOrgID,Letter.IncommingDate,Letter.Subject,Letter.ToOrgID,Letter.UrgencyID,Letter.Memo, Letter.RetroactionNo,Letter.RegistrationDate,Letter.FollowLetterNo,Letter.ToStaffer, 
					  Letter.SentLetterID,Letter.TemplateID,Letter.HeaderID,sender.Title AS SenderTitle,Deliver.Title AS DeliverTitle,
					  /*dbo.has_Page(Letter.letterid) has_Page,*/
					  /*   CAST(CASE WHEN( exists (Select LetterID from LetterData WHERE LetterID=Letter.LetterID And /*PageNumber>0 And*/ Extention in (1,2)) ) then 1 Else 0 END AS BIT) has_Page,*/
                      /*dbo.has_WordPage(Letter.letterid) has_WordPage,*/
					     /*CAST(CASE WHEN( exists (Select PageNumber from LetterData WHERE LetterID=Letter.LetterID And /*PageNumber>0 And*/ Extention = 3) ) then 1 Else 0 END AS BIT) has_WordPage,*/
					  /*dbo.has_file(Letter.letterid) has_file,*/
					     /*CAST (CASE WHEN( exists (Select LetterDataID from LetterData WHERE LetterID=Letter.LetterID And /*PageNumber>0 And*/ Extention > 3) ) then 1 Else 0 END AS BIT) has_file,*/
                      has_Page,has_WordPage,has_filE,
					  LetterTypes.Title LetterTypeTitle,
					  LetterRecommites,
					 /* dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
					  dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,*/
					     (a.ArchiveDate + '' ''+ a.Title ) AS ArchiveFolders,(substring(Place,4,1000) ) AS ArchivePlaces,
					  sendstatusTitle,/*dbo.InnerNo(Letter.LetterID)  InnerNo,*/CAST(Letter.IndicatorID AS Nvarchar(100) )InnerNo,
					  dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,LC.ColorID as Color ,Letter.ReceiveTypeID ,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle 
					  ,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
					  ,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate,    
					  /*,( Select Top 1 AF.Title From ArchiveFolder AF ,LetterArchiveFolder LAF ,Letter L Where(LAF.LetterID = Letter.LetterID) And(LAF.LetterID = L.LetterID)And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle */
						 a.title As ArchiveFolderTitle,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm,Letter.UserID AS LUID,vw.RenterTitle,vw.BeginDate,vw.EndDate
				FROM Letter
				left JOIN FromOrganizations sender  ON Letter.ToOrgID = sender.ID 
				left JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
				left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
				left join LetterColor LC on Letter.letterID = LC.LetterID and LC.UserID = '+ Cast(@UsersID as Nvarchar(10))+'            
				inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID 
				LEFT JOIN Report_Renter vw ON vw.LetterID = Letter.LetterID  
				LEFT JOIN (SELECT ISNULL(count(LetterArchiveFolder.LetterID),0)cnt,LetterArchiveFolder.LetterID ,LetterArchiveFolder.ArchiveDate ,ArchiveFolder.Title,Place FROM  LetterArchiveFolder INNER JOIN ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID WHERE     (ArchiveFolder.UserID = 0)group BY LetterArchiveFolder.LetterID ,LetterID,LetterArchiveFolder.ArchiveDate ,ArchiveFolder.Title,Place )a ON a.LetterID = Letter.LetterID ' 
END
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID ' 
if len(@WordText)>0   
    set @sqlCommand=@sqlCommand+' inner join LetterText on LetterText.Letterid=Letter.LetterID '
              
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (Letter.LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
  -- set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              
  SET @where=@where+' And ISNULL(a.cnt,0) = 0'

if len(@WordText)>0 
    set @where=@where+' And (replace(CONVERT(nvarchar(Max),TypeText),nchar(1740),nchar(1610)) LIKE ''%'+@WordText+'%'')'  
if LEN(@AttachText)>0
    set @where=@where+' And letter.letterid in(select letterid from letterdata where LetterdataID in (select LetterdataID from letterdatatext where (replace(CONVERT(nvarchar(Max),TextPart),nchar(1740),nchar(1610)) LIKE ''%'+@AttachText+'%'')))'  

if (@archiveFolderID = -1)or(@MYear=0)
BEGIN
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 )
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) ' +
                       'AND(l.LetterID NOT IN(SELECT l1.LetterID FROM Letter l1 
                                INNER JOIN LetterArchiveFolder laf1 ON l1.LetterID = laf1.LetterID
                                INNER JOIN UserAccArchive uaa1 ON uaa1.ArchiveFolderID = laf1.ArchiveFolderID AND uaa1.UserID = l1.UserID
                            WHERE l1.UserID = ' + Cast(@UsersID as nvarchar(10)) + '
                                AND ((uaa1.SecID = ' + Cast(@Secretariatid as nvarchar(10)) + ')or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                                AND (L1.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )
                                AND uaa1.ISAccess = 1)))'                       
END

IF @TYP = 'DATE-AVAL'
   Exec ( @sqlCommand+@where + ' ORDER BY REGISTRATIONDATE ASC ,indicatorid ASC ,Memo,IncommingNO  ')
  

   --Select @sqlCommand+@where + ' ORDER BY REGISTRATIONDATE ASC ,indicatorid ASC ,Memo,IncommingNO'

IF @TYP = 'DATE-AKHAR'
   Exec ( @sqlCommand+@where + ' ORDER BY REGISTRATIONDATE DESC,indicatorid DESC,Memo,IncommingNO ' )

--print   @sqlCommand+@where + ' ORDER BY REGISTRATIONDATE DESC,indicatorid DESC,Memo,IncommingNO' 

END
GO
/****** Object:  StoredProcedure [dbo].[Get_All_LetterData_by_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Get_All_LetterData_by_LetterID](@LetterID int)    
As  
Select letterid,LetterDataID, LetterData.Extention, description, Extention.Extention As ExtentionName,LetterData.VersionNo,
       LetterData.VersionDate   
From LetterData Inner Join  
      Extention On LetterData.extention = Extention.ExtentionID  
Where(LetterData.LetterID = @LetterID) 
GO
/****** Object:  StoredProcedure [dbo].[Get_ArchiveFolder_ByArchiveCenterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--////////////////////////////////////////////////////////////////////
--////////////////////////////////////////////////////////////////////
CREATE PROCEDURE [dbo].[Get_ArchiveFolder_ByArchiveCenterID] @ArchiveCenterID int , @userID int, @SecID int        
AS              
SELECT distinct AF.*          
FROM ArchiveFolder AF , UserAccArchive UAA       
Where (UAA.UserID = @userID)             
And(UAA.ArchiveCenterID = @ArchiveCenterID)        
And(UAA.IsAccess = 1)        
And(UAA.ArchiveFolderID = AF.FolderID)
AND(UAA.SecID= @SecID)
GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Letterid]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Letterid]
@Letterid int,@ArchiveCenterid int
AS
SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFolder.Place
FROM         LetterArchiveFolder INNER JOIN
                      ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archivefolder.ArchiveCenterid=@ArchiveCenterid



 

GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Place]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Place]
@ArchiveCenterID int,@Place nvarchar(100),@FolderID int output
AS

SELECT      top 1 @FolderID=FolderID
FROM         ArchiveFolder
WHERE     (ArchiveCenterID = @ArchiveCenterID)  and (Place=@Place)



 

GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Title]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Title]
@ArchiveCenterID int,@like nvarchar(100)
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (ArchiveCenterID = @ArchiveCenterID)  and ( title like '%'+@like+'%' or place like  '%'+@like+'%' )




GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[get_ArchiveFolder_byUserID]
@userID int
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (UserID = @userID)
order by title
GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID_and_Letterid]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Letterid]
@Letterid int,@userid int
AS
SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFolder.Place
FROM         LetterArchiveFolder INNER JOIN
                      ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archivefolder.userid=@userid










GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID_and_Place]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Place]
@userID int,@Place nvarchar(100),@FolderID int output
AS

SELECT      top 1 @FolderID=FolderID
FROM         ArchiveFolder
WHERE     (UserID = @userID)  and (Place=@Place)








GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID_and_Title]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Title]
@userID int,@like nvarchar(100)
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (UserID = @userID)  and ( title like '%'+@like+'%' or place like  '%'+@like+'%' )
GO
/****** Object:  StoredProcedure [dbo].[get_DayID_InWeek]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

















CREATE PROCEDURE [dbo].[get_DayID_InWeek]
	(@DayID tinyint output)
AS 
SET DATEFIRST 6
select @DayID=datepart(dw,getdate())-1

















GO
/****** Object:  StoredProcedure [dbo].[Get_FieldValues_by_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
CREATE procedure [dbo].[Get_FieldValues_by_LetterID]
@LetterID int
as
SELECT  *,(select [order] from  Fields where ID = LetterFieldValue.FieldID) [order],
(select [Description] from  Fields where ID = LetterFieldValue.FieldID) [Description],
(select FieldTypeID from  Fields where ID = LetterFieldValue.FieldID) FieldTypeID,
(select ReferenceTableID from  Fields where ID = LetterFieldValue.FieldID) ReferenceTableID
FROM         LetterFieldValue 
WHERE    LetterFieldValue.letterid=@LetterID
ORDER BY [order]
GO
/****** Object:  StoredProcedure [dbo].[get_FormFields]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[get_FormFields] @FormID int
AS
	select *
	From  Fields F inner join FieldType FT on F.FieldTypeID = FT.FieldTypeID
	where TableId=@FormID
	order by [order]
GO
/****** Object:  StoredProcedure [dbo].[get_Forms]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[get_Forms]
AS
	select T.TableId,T.Description,COUNT(F.ID) as FieldsCount
	From Tables T inner join Fields F on T.TableId = F.TableID
	where TableType=3 group by T.TableId,t.Description
GO
/****** Object:  StoredProcedure [dbo].[Get_FromOrganizations_ByCode]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[Get_FromOrganizations_ByCode] @Code nvarchar(10),@ID int output , @ResponsibleStaffer nvarchar(50) output 
AS 
set @id=0
set @ResponsibleStaffer=''
select top 1 @ID= ID,@ResponsibleStaffer=ResponsibleStaffer	
from dbo.FromOrganizations 
WHERE 	Code	 = @Code and isactive=1







GO
/****** Object:  StoredProcedure [dbo].[Get_FromOrganizationsID_ByCode]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[Get_FromOrganizationsID_ByCode] @Code nvarchar(10),@ID int output 

AS 
set @id=0
select top 1 @ID= ID	
from dbo.FromOrganizations 
WHERE 	Code	 = @Code and isactive=1









GO
/****** Object:  StoredProcedure [dbo].[Get_FromOrganizationsTitle_ByID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_FromOrganizationsTitle_ByID]  
(@ID [int],  
@Title [nvarchar](100) output,  
@ResponsibleStaffer [nvarchar](50) output , 
@code nvarchar(10) output )  
AS 
Select  @Title  = Title,  
@ResponsibleStaffer  = ResponsibleStaffer,  
@code=code  from [dbo].[FromOrganizations]   
WHERE ( [ID]  = @ID)
/*Ranjbar*/
if @ResponsibleStaffer is null
   Set @ResponsibleStaffer = '' --'بدون مسئول'  
----
GO
/****** Object:  StoredProcedure [dbo].[get_indicatorID_BySentLetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE procedure [dbo].[get_indicatorID_BySentLetterID](@SentLetterID int,@indicatorID int output)
as
select top 1 @indicatorID=indicatorID from letter where 
SentLetterID =@SentLetterID
 set @indicatorID=isnull(@indicatorID,-1)









GO
/****** Object:  StoredProcedure [dbo].[get_LastIndicatorID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















create procedure [dbo].[get_LastIndicatorID](@letter_type tinyint ,@SecretariatID int,@Myear int,
@LetterFormat tinyint,@newIndicatorid int output) 
as
declare @j  int

Select @newIndicatorid=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=1 

Select @j=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=2 

 if dbo.GetSystemValue(5)='True'
  begin
     if @j>@newIndicatorid 
        set @newIndicatorid=@j
  end
  else
   begin
    if @letter_type<>1 
     set @newIndicatorid=@j
   end


  if @newIndicatorid<dbo.GetSystemValue(3) 
    set  @newIndicatorid=dbo.GetSystemValue(3)


















GO
/****** Object:  StoredProcedure [dbo].[Get_LastUserId]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_LastUserId](@id int output)
as
SELECT     @id=MAX(Id)
FROM         Users

GO
/****** Object:  StoredProcedure [dbo].[get_Letter_ByIndicator]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO











CREATE PROCEDURE [dbo].[get_Letter_ByIndicator]
	(@IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint])

AS 
SELECT     FromOrganizations.Title AS FromorgTitle, FromOrganizations_1.Title AS ToorgTitle,
 Letter.LetterID, Letter.IncommingNO, Letter.Incommingdate,Letter.Memo, Letter.RegistrationDate
FROM         Letter INNER JOIN
                      FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID INNER JOIN
                      FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID
WHERE 
	( [IndicatorID]	 = @IndicatorID AND
	 [MYear]	 = @MYear AND
	 [SecretariatID]	 = @SecretariatID AND
	 [Letter_Type]	 = @Letter_Type AND
	 [letterformat]	 = @letterformat)











GO
/****** Object:  StoredProcedure [dbo].[Get_LetterAbstract]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

























CREATE PROCEDURE [dbo].[Get_LetterAbstract]
	@LetterID int

AS
SELECT     IndicatorID, IncommingNO, Incommingdate, RegistrationDate, Memo
FROM         Letter
WHERE 
	LetterID=@LetterID



















GO
/****** Object:  StoredProcedure [dbo].[Get_LetterData_by_LetterDataID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	


CREATE proc [dbo].[Get_LetterData_by_LetterDataID](@LetterDataID int )
as
SELECT     LetterDataID, Image, LetterData.VersionNo, LetterData.VersionDate,ISNULL(PageNumber,0)PageNumber,[Path]
FROM        LetterData
WHERE     (LetterDataID = @LetterDataID)
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterData_by_LetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE proc [dbo].[Get_LetterData_by_LetterID]
(
 @LetterID int, 
 @LetterDataID int = 0, 
 @flag int = 0
)    
As  
IF @flag = 0
BEGIN
Select letterid,LetterDataID, LetterData.Extention, description, Extention.Extention As ExtentionName,LetterData.VersionNo,
       LetterData.VersionDate
From LetterData Inner Join  
      Extention On LetterData.extention = Extention.ExtentionID  
Where(Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID) 
END
IF @flag = 1
begin
Select letterid,LetterDataID, LetterData.Extention, description, Extention.Extention As ExtentionName,LetterData.VersionNo,
       LetterData.VersionDate
From LetterData Inner Join  
      Extention On LetterData.extention = Extention.ExtentionID  
Where(Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID) AND LetterDataID = @LetterDataID 
end
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterDataIDs]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE proc [dbo].[Get_LetterDataIDs](@SecretariatID int, @myear tinyint)
as
SELECT     LetterData.LetterDataID  
FROM         LetterData 
INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID
WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MYear = @myear)








GO
/****** Object:  StoredProcedure [dbo].[get_LetterID_ByInCommingNo]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[get_LetterID_ByInCommingNo]
	(@InCommingNo nvarchar(50),@Myear tinyint,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterid=0
SELECT     top 1 @LetterID=LetterID
FROM         Letter
WHERE     (InCommingNo =@InCommingNo)
 and LetterFormat=@LetterFormat   and 
( SecretariatID=@SecretariatID or @SecretariatID=0)
order by Myear desc



GO
/****** Object:  StoredProcedure [dbo].[get_LetterID_ByIndicatorid]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[get_LetterID_ByIndicatorid]
	(@indicatrid int,@Myear tinyint,@LetterFormat tinyint,@letter_type tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterID=0
SELECT    top 1 @LetterID=LetterID
from letter
where  
(indicatorid=@indicatrid  or @indicatrid=0) and 
(LetterFormat=@LetterFormat or @letterFormat=0)  and 
(letter_type=@letter_type  or @letter_type=0) and 
( SecretariatID=@SecretariatID or @secretariatid=0)
and(Myear=@Myear or Myear=@myear-1 or @myear=0)
order by Myear desc

















GO
/****** Object:  StoredProcedure [dbo].[get_LetterID_ByRetroActionNo]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














CREATE PROCEDURE [dbo].[get_LetterID_ByRetroActionNo]
	(@RetroActionNo nvarchar(50),@Myear tinyint,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterid=0
SELECT     top 1 @LetterID=LetterID
FROM         Letter
WHERE     (RetroActionNo =@RetroActionNo)
 and myear=@Myear  and LetterFormat=@LetterFormat  and 
( SecretariatID=@SecretariatID or @SecretariatID=0)















GO
/****** Object:  StoredProcedure [dbo].[Get_LetterJpgFile]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Get_LetterJpgFile](@LetterID int)  
as  
Select *  
from letterdata  
where LetterID = @LetterID  /* and PageNumber= @pagenumber  */
And Extention=1  


GO
/****** Object:  StoredProcedure [dbo].[get_LetterMemo_ByID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[get_LetterMemo_ByID]
	(@LetterID  int,@memo nvarchar(500) output)
AS 
SELECT     @memo=Memo
FROM         Letter
WHERE     (LetterID =@LetterID)
















GO
/****** Object:  StoredProcedure [dbo].[Get_LetterTifFile]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




















create procedure [dbo].[Get_LetterTifFile](@LetterID int)
as
select *
from letterdata
where LetterID=@LetterID
and Extention=2




















GO
/****** Object:  StoredProcedure [dbo].[Get_LetterWordFile]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



















CREATE PROCEDURE [dbo].[Get_LetterWordFile](@LetterID int) AS

SELECT     *
FROM         LetterData
WHERE     (extention = 3) AND (LetterID = @LetterID)


















GO
/****** Object:  StoredProcedure [dbo].[get_MaxPage_ByLetterID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE procedure [dbo].[get_MaxPage_ByLetterID](@extention tinyint,@letterid int,@PageNumber int output)
as

SELECT    @PageNumber=isnull(max(PageNumber),0)
FROM         LetterData
WHERE     (extention = @extention) AND (LetterID = @LetterID)

















GO
/****** Object:  StoredProcedure [dbo].[get_MaxReferenceDataID_By_TableID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_MaxReferenceDataID_By_TableID]
@tableID int,@maxDataID int output
as
SELECT     @maxDataID=isnull(MAX(DataID)+1,1)
FROM         ReferenceTableData
WHERE     (TableID = @tableID)

GO
/****** Object:  StoredProcedure [dbo].[get_NewOrgID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[get_NewOrgID]
	(@isInner bit, @NewID [int] output)
AS 
 select @NewID=isnull(max(CAST(CODE AS BIGINT)),0)+1  from  FromOrganizations
WHERE ISNUMERIC(CODE)=1
GO
/****** Object:  StoredProcedure [dbo].[get_Nowdate]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

















CREATE procedure [dbo].[get_Nowdate](@date datetime output )
as
select @date=getdate()















GO
/****** Object:  StoredProcedure [dbo].[get_NowTime]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

















CREATE procedure [dbo].[get_NowTime] (@time char(5)output)
as
select @time=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))















GO
/****** Object:  StoredProcedure [dbo].[get_OrgPreCodeByID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

















CREATE PROCEDURE [dbo].[get_OrgPreCodeByID]
	(@ID 	[int],@PreCode nvarchar(50) output)

AS 
select @PreCode=PreCode
 from FromOrganizations
 WHERE ( [ID]	 = @ID)















GO
/****** Object:  StoredProcedure [dbo].[get_OrgTitleByID]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

















CREATE PROCEDURE [dbo].[get_OrgTitleByID]
	(@ID 	[int],@title nvarchar(250) output)

AS 
select @title=title
 from FromOrganizations
 WHERE ( [ID]	 = @ID)

















GO
/****** Object:  StoredProcedure [dbo].[Get_RecommiteJpgFile]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




















create procedure [dbo].[Get_RecommiteJpgFile](@RecommiteID  int)
as
select top 1 *
from Recommitedata
where RecommiteID=@RecommiteID
and Extention=1




















GO
/****** Object:  StoredProcedure [dbo].[Get_RedAlarm_Count]    Script Date: 18/07/1403 05:19:26 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Get_RedAlarm_Count]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,
@UsersID INT
as               
declare @today char(10)
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)

set @sqlCommand='
Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+')  as HasLetterAlerm 
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type               
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '
              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

if (@archiveFolderID = -1)or(@MYear=0)
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --دسترسي ندارد
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) )'
                                                                                       
set @sqlCommand=@sqlCommand+@where

set @sqlCommand='SELECT COUNT(HasLetterAlerm) as RedAlarmCount FROM ( '+ @sqlCommand + ') AS list1 WHERE list1.HasLetterAlerm=2'                      
--Print @sqlCommand
Exec sp_executesql @sqlCommand
GO
/****** Object:  StoredProcedure [dbo].[get_ReferenceTable]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[get_ReferenceTable]
@like  nvarchar(100)
as
SELECT     Tables.*
FROM         Tables
WHERE     (TableType = 4) and description like '%'+@like+'%'


GO
/****** Object:  StoredProcedure [dbo].[get_ReferenceTableData_by_tableID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  procedure [dbo].[get_ReferenceTableData_by_tableID]
@tableID int
as
SELECT     *
FROM         ReferenceTableData
WHERE     (TableID = @tableID)


GO
/****** Object:  StoredProcedure [dbo].[Get_Related_Letters]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_Related_Letters](@LetterID int )
as
CREATE TABLE #RelatedLetters (
	[Id]int identity(1,1)  NOT NULL ,
	[ParentID] [int] NOT NULL ,
	[LetterID] [int] NOT NULL ,
        LetterType tinyint ,
        RetroactionNo nvarchar(50),
        FollowLetterNo nvarchar(50), 
        Done tinyint 
) ON [PRIMARY]

insert into #RelatedLetters(ParentID,LetterID,LetterType,FollowLetterNo,RetroactionNo,Done)
select 0,LetterID,Letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter
where letterid=@letterid

while exists (select * from #RelatedLetters where done=0)
 begin
update #RelatedLetters
set done=2
where done=0

insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=1 and letter.letter_type=1 and 
 letter.incommingno=r.FollowLetterNo

insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=2 and letter.letter_type=2 and 
 letter.indicatorid=r.FollowLetterNo



insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=1 and letter.letter_type=2 and 
 letter.indicatorid=r.RetroactionNo



insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=2 and letter.letter_type=1 and 
 letter.incommingno=r.RetroactionNo

update #RelatedLetters
set done=1
where done=2
end

SELECT     r.*,IndicatorID, MYear,  IncommingNO, Incommingdate, Memo,  
                      Letter.LetterRecommites, t.Title AS FromorgTitle, FromOrganizations.Title AS ToOrgTitle into tempp
FROM       #RelatedLetters r 
inner join Letter            on letter.letterid=r.letterid 
INNER JOIN FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID 
INNER JOIN FromOrganizations t ON Letter.ToOrgID = t.ID


GO
/****** Object:  StoredProcedure [dbo].[Get_RentID_ByLetterID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_RentID_ByLetterID]
@LetterID int ,@RentID int output
as

SELECT @RentID=RentID
  FROM  Rent
where LetterID=@LetterID
and isnull(ltrim(EndDate),'')=''

set @RentID=isnull(@RentID,-1)
GO
/****** Object:  StoredProcedure [dbo].[Get_sys_AppMessage]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

























create PROCEDURE [dbo].[Get_sys_AppMessage]
	(@ID 	[int])

AS select * from  [dbo].[sys_AppMessage] 

WHERE 
	( [ID]	 = @ID)

























GO
/****** Object:  StoredProcedure [dbo].[Get_tmp_LetterDataIDs]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE proc [dbo].[Get_tmp_LetterDataIDs]
as
SELECT     LetterDataID  
FROM         yeganeh_tmp_db.dbo.LetterData






GO
/****** Object:  StoredProcedure [dbo].[get_UserExtention_by_UserID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[get_UserExtention_by_UserID] (@userID int )
as

SELECT UserExtention.*
FROM   UserExtention
WHERE (UserId = 3)
      and extentionid in (SELECT ExtentionID FROM Extention WHERE IsSystem = 0)
UNION ALL
SELECT 0,3,Extention.ExtentionID,''
FROM Extention WHERE ExtentionID NOT IN (SELECT Extention.ExtentionID 
FROM Extention  LEFT  outer JOIN UserExtention ON UserExtention.ExtentionID = Extention.ExtentionID 
WHERE (UserId = 3))
GO
/****** Object:  StoredProcedure [dbo].[get_userfields_by_tableID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[get_userfields_by_tableID]
@tableID int
as
SELECT     Fields.*
FROM         Fields 
WHERE     (Fields.TableID = @tableID)

GO
/****** Object:  StoredProcedure [dbo].[get_userTable]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[get_userTable]
@like  nvarchar(100)
as
SELECT     Tables.*
FROM         Tables
WHERE     (TableType = 3) and description like '%'+@like+'%'

GO
/****** Object:  StoredProcedure [dbo].[Get_WhiteAlarm_Count]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Get_WhiteAlarm_Count]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,
@UsersID INT
as               
declare @today char(10)
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)

set @sqlCommand='
Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+')  as HasLetterAlerm 
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type               
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '
              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

if (@archiveFolderID = -1)or(@MYear=0)
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --دسترسي ندارد
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) )'
                                                                                       
set @sqlCommand=@sqlCommand+@where

set @sqlCommand='SELECT COUNT(HasLetterAlerm) as WhiteAlarmCount FROM ( '+ @sqlCommand + ') AS list1 WHERE list1.HasLetterAlerm=1'                      
--Print @sqlCommand
Exec sp_executesql @sqlCommand
GO
/****** Object:  StoredProcedure [dbo].[GetLetterTemplate_HeaderID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE proc [dbo].[GetLetterTemplate_HeaderID]
@letterid int
as
select LetterID,TemplateId,headerid,FromOrgID,fromorganizations.PreCode
from letter
inner join fromorganizations on fromorganizations.id=letter.fromorgid
where letterid=@letterid




GO
/****** Object:  StoredProcedure [dbo].[GetList]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



















CREATE PROCEDURE [dbo].[GetList](@ListID int)
 AS

SELECT     KeyValue, Title, Notes
FROM         ListItems
where ListID=@ListID



















GO
/****** Object:  StoredProcedure [dbo].[GetSystemSetting]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSystemSetting]              
@VariableName varchar(50),@Value nvarchar(255)  output 
AS                                                     
exec GetUserSetting -1,@VariableName,@value output     
GO
/****** Object:  StoredProcedure [dbo].[GetUserLogout_status]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[GetUserLogout_status]
	( @UserID 	[int] , @logout bit output, @isSafeLogout 	bit output)
AS

declare @LogoutTime datetime
set @logout=0
set @isSafeLogout=0
select top 1 @LogoutTime=LogoutTime,@isSafeLogout=isSafeLogout
from UserLoginLogout
where userid=@UserID
order by UserLoginLogoutID desc
if @LogoutTime is null set @logout=1
if @isSafeLogout=1
 set @logout=1
else
 if DATEDIFF(second, @LogoutTime,getdate())>60
 set @logout=1







GO
/****** Object:  StoredProcedure [dbo].[GetUserSetting]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(255) output
AS
SELECT     @Value=Value
FROM         Settings
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)

set @Value=isnull(@Value,'Not Found')
GO
/****** Object:  StoredProcedure [dbo].[hassame_orgtitle]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO























create procedure [dbo].[hassame_orgtitle](@title nvarchar(255),@id int output)
as
set @id=-1
select @id=id
from fromorganizations
where replace(title,' ','')=replace(@title,' ','')

























GO
/****** Object:  StoredProcedure [dbo].[HasSame_Rentertitle]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create procedure [dbo].[HasSame_Rentertitle](@Rentertitle nvarchar(255),@id int output)
as
set @id=-1
select @id=RenterID
from Renter
where replace(Rentertitle,' ','')=replace(@Rentertitle,' ','')
GO
/****** Object:  StoredProcedure [dbo].[Import_LetterData]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO











CREATE proc [dbo].[Import_LetterData](@LetterDataID int)
as

set identity_insert letterdata on
insert into letterdata(LetterDataID,LetterID,PageNumber,Image,extention)
SELECT    LetterDataID,LetterID,PageNumber,Image,extention
FROM         yeganeh_tmp_db.DBO.LetterData
where  LetterDataID=@LetterDataID
and not exists (select letterdataid from letterdata where letterdataid=@LetterDataID)
set identity_insert letterdata off
GO
/****** Object:  StoredProcedure [dbo].[Insert_Actions]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Insert_Actions](@FormTag Tinyint , @Title nvarchar(50),@ActionName nvarchar(100))   
As 
Insert Into dbo.Actions(FormTag,Title,ActionName)      
Values(@FormTag,@Title,@ActionName) 

GO
/****** Object:  StoredProcedure [dbo].[insert_All_ReCommites]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[insert_All_ReCommites]
AS INSERT INTO [dbo].[ReCommites] 
	 (
	 [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],
	 [Proceeded]) 
select letterid,1,3,0,fromorgid,'',registrationdate,userid,0,0 
from letter
where letterid not in (select distinct letterid from recommites)















GO
/****** Object:  StoredProcedure [dbo].[insert_ArchiveFolder]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE PROCEDURE [dbo].[insert_ArchiveFolder]
	(@FolderID 	[int] output,
	 @ParentFolderID 	[int],
	 @Title 	[nvarchar](100),
	 @UserID 	[int],
	 @Notes 	[nvarchar](500),
              @Place nvarchar(100),@archiveCenterID int )

AS INSERT INTO [dbo].[ArchiveFolder] 
	 ( 
	 [ParentFolderID],  [Title],  [UserID],  [Notes],  Place,ArchiveCenterID) 
 
VALUES 
	(
	 @ParentFolderID,
	 @Title,
	 @UserID,
	 @Notes,
@Place ,@archiveCenterID)

select @folderid= @@identity



GO
/****** Object:  StoredProcedure [dbo].[insert_Extention]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[insert_Extention]
@ExtentionID int 
 AS


delete UserExtention where ExtentionID=@ExtentionID
INSERT INTO UserExtention (UserId, ExtentionID) select id,@ExtentionID from users
GO
/****** Object:  StoredProcedure [dbo].[insert_Letter]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO










CREATE PROCEDURE [dbo].[insert_Letter]
	(@letterID integer output,
@IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5))

AS INSERT INTO [dbo].[Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [Memo],
	 [UserID],
	 [RegistrationDate],
	 [RegistrationTime]) 
 
VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @Memo,
	 @UserID,
	 @RegistrationDate,
	 @RegistrationTime)

SET @LetterID=@@Identity









GO
/****** Object:  StoredProcedure [dbo].[Insert_Letter_From_Dabir]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Insert_Letter_From_Dabir] 
	 @INNO NVARCHAR(50),
	 @IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @ExtenTionType NVARCHAR(5),
	 @ExtenTionDesc NVARCHAR(100),
	 @DataDesc NVARCHAR(50),
	 @out_LetterDataID INT OUT
AS
-----------------------------------------------------------------------------------------------------------
DECLARE @LetterID INT , @extID INT
----------------------------------------------------------------------------------------------------------- 
IF NOT EXISTS(SELECT * FROM Users WHERE Title = 'کاربر دبيرخانه')
BEGIN
	INSERT INTO users(Title,UserName,DefualtSecretariatID,HasSecureLetterAccess)
		VALUES('کاربر دبيرخانه','کاربر دبيرخانه',1,1)
END 
-----------------------------------------------------------------------------------------------------------
SELECT @userID=id FROM Users 
WHERE Title = 'کاربر دبيرخانه'
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Extention WHERE Extention = @ExtenTionType)
BEGIN
	INSERT INTO Extention(Extention,ExtentionTitle,IsSystem)
		VALUES(@ExtenTionType,@ExtenTionDesc,0)
END
-----------------------------------------------------------------------------------------------------------
SELECT @extID = ExtentionID FROM Extention WHERE Extention = @ExtenTionType
-----------------------------------------------------------------------------------------------------------
select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @MYear and SecretariatID = @SecretariatID
-----------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT LetterID FROM Letter WHERE IncommingNO = @INNO)
BEGIN
	INSERT INTO [dbo].[Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [Memo],
	 [UserID],
	 [Incommingdate],
	 [RegistrationDate],
	 [RegistrationTime],
	 [IncommingNO]) 
 
VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @Memo,
	 @UserID,
	 @RegistrationDate,
	 @RegistrationDate,
	 @RegistrationTime,
	 @INNO)
END 
-----------------------------------------------------------------------------------------------------------
SELECT @LetterID =LetterID FROM Letter WHERE IncommingNO = @INNO
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
INSERT INTO LetterData(LetterID,extention,PageNumber,[Description],LastUpdate)
	VALUES(@LetterID,@extID,(SELECT MAX(PageNumber)FROM LetterData WHERE LetterID = @LetterID),@DataDesc,GETDATE())
SET @out_LetterDataID =@@identity
-----------------------------------------------------------------------------------------------------------
GO
/****** Object:  StoredProcedure [dbo].[insert_LetterArchiveFolder]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
















CREATE PROCEDURE [dbo].[insert_LetterArchiveFolder]
	(@LetterArchiveID 	[int] output,
	 @ArchiveFolderID 	[int],
	 @LetterID 	[int],
	 @ArchiveDate 	[char](10),
	 @Page 	[int],
	 @ArchiveNotes 	[nvarchar](50))

AS INSERT INTO [dbo].[LetterArchiveFolder] 
	 ( 
	 [ArchiveFolderID],
	 [LetterID],
	 [ArchiveDate],
	 [Page],
	 [ArchiveNotes]) 
 
VALUES 
	( 
	 @ArchiveFolderID,
	 @LetterID,
	 @ArchiveDate,
	 @Page,
	 @ArchiveNotes)


set @LetterArchiveID=@@identity















GO
/****** Object:  StoredProcedure [dbo].[insert_LetterData]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO










CREATE PROCEDURE [dbo].[insert_LetterData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint])

AS INSERT INTO [dbo].[LetterData] 
	 (  [LetterID],
	 [PageNumber],
	 [extention]) 
 
VALUES 
	( @LetterID,
	 @PageNumber,
	 @extention)

set  @LetterDataID=@@identity









GO
/****** Object:  StoredProcedure [dbo].[insert_LetterDataText]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[insert_LetterDataText]
	(@LetterDataID int,
	 @FileText   	ntext)
AS 
	DECLARE @textPart NVARCHAR(450)
	--DELETE FROM LetterDataText WHERE letterDataID = @LetterDataID  
	WHILE DATALENGTH(@FileText)>0
	BEGIN
		SET @textPart = SUBSTRING(@FileText,0,450)
		SET @textPart = REVERSE(RIGHT(REVERSE (@textPart), len(@textPart) - NULLIF(charindex(' ', REVERSE(@textPart)),0)))
		SET @FileText = SUBSTRING(@FileText,LEN(@textPart),DATALENGTH(@FileText)/2-LEN(@textPart))
		SET @textPart = dbo.YTrim(@textPart)
		INSERT INTO [dbo].[LetterDataText]( [LetterDataID], [textPart])
			VALUES 	( @LetterDataID, @textPart  )
	END
GO
/****** Object:  StoredProcedure [dbo].[insert_LetterText]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

























CREATE PROCEDURE [dbo].[insert_LetterText]
	(@LetterID int,
	 @TypeText   	ntext)
AS 
if exists(select * from [dbo].[LetterText] 
 WHERE     (LetterID = @LetterID))
update LetterText 
set TypeText=@TypeText
 WHERE     (LetterID = @LetterID)
else
INSERT INTO [dbo].[LetterText] 
	 ( [LetterID],
	 [TypeText]) 
 
VALUES 
	( @LetterID,
	 @TypeText  )

















GO
/****** Object:  StoredProcedure [dbo].[Insert_NewActionsAccess]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
CREATE PROCEDURE [insert_newActionsAccess]    
AS     
    
delete from ActionsAccess where str(formtag)+str(ActionID) not in (select str(formtag)+str(ID) from     
actions)    
    
INSERT INTO [dbo].[ActionsAccess]     
  ( [AccessID],    
  [ActionID],    
  [FormTag],    
  [HasAccess])     
    
SELECT     Accesses.ID,  Actions.ID,Actions.FormTag,1     
FROM         Accesses,Actions     
where str(accesses.id)+Str(actions.id) not in     
 (select str(accesses.id)+Str(actionid)  from dbo.ActionsAccess) 
*/   
   
--
CREATE PROCEDURE [dbo].[Insert_NewActionsAccess]    
AS     
    
Delete from ActionsAccess   
where Str(formtag) not in (Select Str(formtag) from Actions)    
And RTrim(ActionName) not in (Select RTrim(ActionName) from Actions)    

/*دادن دسترسي*/    
INSERT INTO [dbo].[ActionsAccess]( [AccessID],[ActionName],[FormTag],[HasAccess])         
SELECT Acc.ID,A.ActionName,A.FormTag,1        
FROM Accesses Acc,Actions A       
where (Str(A.formtag)+LTrim(RTrim(A.ActionName))+ Str(Acc.ID) not in 
      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionName))+ Str(AAC.AccessID) From ActionsAccess AAC) )
GO
/****** Object:  StoredProcedure [dbo].[Insert_ReciveLetter]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_ReciveLetter]  
  (@letterID integer output,  
  @IndicatorID  [int],  
  @MYear  [tinyint],  
  @SecretariatID  [tinyint],  
  @Letter_Type  [tinyint],  
  @letterformat  [tinyint],  
  @Memo  [nvarchar](500),  
  @UserID  [int],  
  @RegistrationDate  [char](10),  
  @RegistrationTime  [varchar](5))  
  
AS 
INSERT INTO [dbo].[Letter]   
   ( IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,Memo,UserID,RegistrationDate,RegistrationTime,ReceiveTypeID/*Ranjbar*/ )      
VALUES   
   ( @IndicatorID,@MYear,@SecretariatID,@Letter_Type,@letterformat,@Memo,@UserID,@RegistrationDate,@RegistrationTime,2)    
SET @LetterID=@@Identity  
  


GO
/****** Object:  StoredProcedure [dbo].[insert_ReCommites]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[insert_ReCommites]
	(@LetterID 	[int],
	 @ID 	[smallint],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit])
AS
declare @OrgStaff nvarchar(50)
select top 1 @OrgStaff=ResponsibleStaffer	
from dbo.FromOrganizations 
WHERE 	id	 = @OrgID

set @RecommiteDate = dbo.Shamsi(GETDATE())
 
 INSERT INTO [dbo].[ReCommites] 
	 (
	 [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],
	 [Proceeded],
OrgStaff) 
 
VALUES 
	( 
	 @LetterID,
	 @ID,
	 @Type,
	 @ParentId,
	 @OrgID,
	 @Paraph,
	 @RecommiteDate,
	 @UserID,
	 @IsCopy,
	 @Proceeded,
@OrgStaff )
GO
/****** Object:  StoredProcedure [dbo].[Insert_UserLog]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_UserLog]  
 (@UserID  [tinyint],
  /*@ActionID  [int],  */
  @ActionName  nvarchar(100),    
  @LetterID [int])  
  
AS INSERT INTO [dbo].[UserLog]   
  ( [UserID],  
  [ActionName],  
  [LetterID])   
   
VALUES   
 ( @UserID,  
  @ActionName,  
  @LetterID)

GO
/****** Object:  StoredProcedure [dbo].[Insert_UserLoginLogout]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_UserLoginLogout]  
 ( @UserID  int , @IPAddress char(15), @ComputerName char(30) , @UserLoginLogoutID int output)    
AS    
INSERT INTO [dbo].[UserLoginLogout]   
  ( [UserID],[IPAddress],[ComputerName])      
VALUES (@UserID,@IPAddress,@ComputerName)  
set @UserLoginLogoutID=@@identity 

GO
/****** Object:  StoredProcedure [dbo].[insertReCommites_autoID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






create  PROCEDURE [dbo].[insertReCommites_autoID]
	(@LetterID 	[int],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit])

AS 
declare	 @ID int,@orgstaff nvarchar (50)

select @id=max(id)+1
from recommites
where Letterid=@LetterID

select @orgstaff=ResponsibleStaffer
from fromorganizations
where id=@OrgID

INSERT INTO [ReCommites] 
	 ( [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],orgstaff) 
 
VALUES 
	( @LetterID,
	 @ID,
	 @Type,
	 @ParentId,
	 @OrgID,
	 @Paraph,
	 @RecommiteDate,
	 @UserID,
	 @IsCopy,@orgstaff)






GO
/****** Object:  StoredProcedure [dbo].[insertText]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[insertText]
 @Text nvarchar(4000),@MYear int,@indicator int,@receivedMode bit
AS
 declare @i int,@W nvarchar(50)
set @text=ltrim(rtrim(@text))
if @text=''  return
     while charindex(' ',@Text)>0
       begin
        set @i=charindex(' ',@Text);
        set @w=substring(@Text,1,@i-1);
        exec insertWordInLetter @w,@MYear ,@indicator ,@receivedMode 
        set @Text=ltrim(rtrim(substring(@text,@i,len(@text)-@i+1)));
       end;
  exec insertWordInLetter @Text,@MYear ,@indicator ,@receivedMode




GO
/****** Object:  StoredProcedure [dbo].[letterContainText]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[letterContainText]
 @secID tinyint,@where nvarchar(500)
AS
SELECT    distinct Letter.LetterID, indicatorid, RegistrationDate, 
Memo
FROM         LetterText 
INNER JOIN   Letter on letter.letterid=LetterText.letterid
where (Letter.SecretariatID=cast(@secId as varchar(3))  or cast(@SeCID as varchar(3)) = 0)
AND (replace(CONVERT(nvarchar(Max),TypeText),nchar(1740),nchar(1610)) LIKE '%'+@where+'%')
GO
/****** Object:  StoredProcedure [dbo].[letterDataTextSearch]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[letterDataTextSearch]
 @secID tinyint,@where nvarchar(500)
AS

declare @sqlCommand nvarchar(4000)

set @where=ltrim(rtrim(isnull(@where,'')))

 set  @sqlcommand='SELECT    distinct Letter.LetterID, LetterData.LetterDataID ,Letter_type, indicatorid, RegistrationDate, 
Memo
FROM         LetterDataText 
inner join   LetterData on LetterDataText.LetterdataID = LetterData.LetterDataID
INNER JOIN   Letter on letter.letterid=LetterData.letterid
where (Letter.SecretariatID='+cast(@secId as varchar(3)) +' or '+cast
(@SeCID as varchar(3))+' = 0)'

if @where<>'' set @sqlcommand=@sqlcommand+' and ('+@where+')'
exec sp_executesql @sqlcommand
GO
/****** Object:  StoredProcedure [dbo].[Make_FieldValues_by_LetterID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Make_FieldValues_by_LetterID]
@LetterID int
as


declare @tableID int

select @TableID=UserTableID
from letter
where letterid=@LetterID

if @tableID is not null
 insert into  LetterFieldValue(letterid,FieldID)
 select @letterID,ID
 from Fields
 where tableid=@TableID and id not in (select FieldID from LetterFieldValue where Letterid=@LetterID)

GO
/****** Object:  StoredProcedure [dbo].[min_page]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO























CREATE procedure [dbo].[min_page](@LetterID int,@haspage bit output,@minpage tinyint output)
as

SELECT     @minpage=MIN(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1)

if @minpage is null set @haspage=0 else set @haspage=1
set @minpage=isnull(@minpage,1)













GO
/****** Object:  StoredProcedure [dbo].[NewRecommiteID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO




















CREATE PROCEDURE [dbo].[NewRecommiteID](@letterID int,@type int,@NewID int output) 
AS

SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE LetterID=@letterID and type=@type



















GO
/****** Object:  StoredProcedure [dbo].[NextTag]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO





























create PROCEDURE [dbo].[NextTag] 
@formtag tinyint
AS
if @formtag>0 
SELECT     MAX(ID)+1
FROM         Actions
WHERE     (FormTag =@formtag)
else
SELECT     MAX(FormTag)+1
FROM         Actions




























GO
/****** Object:  StoredProcedure [dbo].[NumberOfLetter_By_SecID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[NumberOfLetter_By_SecID]
@secID int,@Number_OF_Letter int output
 AS
select @Number_OF_Letter =count(*) from letter where secretariatid=@secid








GO
/****** Object:  StoredProcedure [dbo].[NumberOfTemplate_By_TemplateGroupID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[NumberOfTemplate_By_TemplateGroupID]
@TemplateGroupID int,@Number_OF_Template int output
 AS
select @Number_OF_Template =count(*) from LetterTemplate where TemplateGroupid=@TemplateGroupid
GO
/****** Object:  StoredProcedure [dbo].[Org_hasChild]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO










CREATE PROCEDURE [dbo].[Org_hasChild]
	(@ParentID 	[int],@hasChild bit output)
AS 
if exists( select * from  FromOrganizations
 WHERE  [ParentID]	 = @ParentID)
set @haschild=1
else
set @haschild=0








GO
/****** Object:  StoredProcedure [dbo].[org_hasLetter]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE procedure [dbo].[org_hasLetter](@orgid int,@count int output)
as
set @count=0
select @count=count(1)
from recommites
where orgid=@orgid








GO
/****** Object:  StoredProcedure [dbo].[PRC_Impourt_Execl]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----DECLARE @SecretariatsID int = 1
--CREATE PROC PRC_Inpourt_Execl
--(
--   @SecretariatsID int, --= 1 
--   @Path nvarchar(500)
--)
/*AS
sp_configure 'show advanced options', 1
GO
RECONFIGURE WITH OverRide
GO
sp_configure 'Ad Hoc Distributed Queries', 1
GO
RECONFIGURE WITH OverRide
GO



EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.16.0', N'AllowInProcess', 1 
GO 
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.16.0', N'DynamicParameters', 1 
GO 
*/


create PROC [dbo].[PRC_Impourt_Execl] --PRC_Inpourt_Execl 1,'NULL'
(
   @SecretariatsID int = 1, --= 1 
   @Path nvarchar(500) = 'D:\bafgh\hesab\xlsx conv\anbar.xlsx'
)
AS

  IF @SecretariatsID < 1 
    Set @SecretariatsID = 1

--**************************************************شروع خواندن از اکسل********************************************************
DECLARE @w nvarchar(max)
--SET @w = 'Microsoft.ACE.OLEDB.12.0', 'Excel 12.0 Xml;HDR=YES;IMEX=1;Database='+@path+', SELECT * FROM [Sheet1$]'
--SELECT *
--INTO #temptable 
--FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0', 'Excel 12.0 Xml;HDR=YES;IMEX=1;Database=D:\bafgh\123.xlsx', 'SELECT * FROM [Sheet1$]')
DECLARE @sql nvarchar(max)
CREATE TABLE  #temptable
(
   f1  nvarchar(max)  NULL,
   f2  nvarchar(max)  NULL,
   f3  nvarchar(max)  NULL,
   f4  nvarchar(max)  NULL,
   f5  nvarchar(max)  NULL,
   f6  nvarchar(max)  NULL,
   f7  nvarchar(max)  NULL,
   f8  nvarchar(max)  NULL,
   f9  nvarchar(max)  NULL,
   f10 nvarchar(max)  NULL,
   f11 nvarchar(max)  NULL,
   f12 nvarchar(max)  NULL,
   f13 nvarchar(max)  NULL,
   f14 nvarchar(max)  NULL,
   f15 nvarchar(max)  NULL,
   f16 nvarchar(max)  NULL,
   f17 nvarchar(max)  NULL,
   f18 nvarchar(max)  NULL,
   f19 nvarchar(max)  NULL,
   f20 nvarchar(max)  NULL,
   f21 nvarchar(max)  NULL,
   f22 nvarchar(max)  NULL,
   f23 nvarchar(max)  NULL,
   f24 nvarchar(max)  NULL,
   f25 nvarchar(max)  NULL,
   f26 nvarchar(max)  NULL,
   f27 nvarchar(max)  NULL,
   f28 nvarchar(max)  NULL,
   f29 nvarchar(max)  NULL,
   f30 nvarchar(max)  NULL,
   f31 nvarchar(max)  NULL,
   f32 nvarchar(max)  NULL,
   f33 nvarchar(max)  NULL
   )

SET @sql = '
SELECT *
--INTO #temptable 
FROM OPENROWSET(''Microsoft.ACE.OLEDB.12.0'', ''Excel 12.0 Xml;HDR=YES;IMEX=1;Database=' + ''+ @path +'''' +','+ '''SELECT * FROM [Sheet1$]''' +')' 

INSERT INTO #temptable
EXEC SP_EXECUTESQL  @sql  


ALTER TABLE letter ALTER COLUMN MYear nvarchar(50)

--*************************************************شروع حذف برای درج مجدد رکورد ها*******************************************

DELETE FROM TbExcel
WHERE IDNumber In(
                   SELECT DISTINCT IDNumber  
				   FROM TbExcel
                   WHERE f1 IN(
								SELECT DISTINCT f1 
								FROM #temptable
								WHERE ISNULL(f33,0) = 0
                              )
                 )
--*************************************************پایان حذف برای درج مجدد رکورد ها******************************************


--**************************************************پایان خواندن از اکسل******************************************************
DECLARE @IDNumber int	 
SET @IDNumber = (SELECT MAX(ISNULL(IDNumber,0))+ 1 FROM TbExcel ) 
--**************************************************شروع درج در جدول انتقال اکسل*********************************************
	DECLARE @LetterID_Insert int
    DECLARE @TbExcelID_Insert int 
	--DECLARE @SecretariatsID int = 1 

INSERT INTO [dbo].[TbExcel]
           ([LetterID]
           ,[F1]
           ,[F2]
           ,[F3]
           ,[F4]
           ,[F5]
           ,[F6]
           ,[F7]
           ,[F8]
           ,[F9]
           ,[F10]
           ,[F11]
           ,[F12]
           ,[F13]
           ,[F14]
           ,[F15]
           ,[F16]
           ,[F17]
           ,[F18]
           ,[F19]
           ,[F20]
           ,[F21]
           ,[F22]
           ,[F23]
           ,[F24]
           ,[F25]
           ,[F26]
           ,[F27]
           ,[F28]
           ,[F29]
           ,[F30]
           ,[F31]
           ,[F32]
           ,[F33]
		   ,IDNumber)
SELECT 
   b.LetterID,
   a.f1,
   a.f2,
   a.f3,
   a.f4,
   a.f5,
   a.f6,
   a.f7,
   a.f8,
   a.f9,
   a.f10,
   a.f11,
   a.f12,
   a.f13,
   a.f14,
   a.f15,
   a.f16,
   a.f17,
   a.f18,
   a.f19,
   a.f20,
   a.f21,
   a.f22,
   a.f23,
   a.f24,
   a.f25,
   a.f26,
   a.f27,
   a.f28,
   a.f29,
   a.f30,
   a.f31,
   a.f32,
   a.f33,
   @IDNumber
FROM #temptable a 
LEFT JOIN letter b
  ON  a.f1 = b.IncommingNO
  AND a.f8 = MYear
--**************************************************پایان درج در جدول انتقال اکسل********************************************

--************************************************** شروع درج نامه های که در جدول letter وجود ندارند*************************

INSERT INTO [dbo].[Letter]
           (
             [IncommingNO]
	  	    ,[MYear]
			,SecretariatID
			,IndicatorID
			,RegistrationDate
			,RegistrationTime
           )
 	SELECT 
		F1 AS ShonarehSanad,
		F8  AS Myear,
		@SecretariatsID,
		(select ISNULL(Max(indicatorID),0)+1 FROM Letter WHERE MYear = b.f8 and SecretariatID = @SecretariatsID ),
		( Select dbo.Shamsi(GETDATE()) ) ,
		(SELECT SUBSTRING( CONVERT(VARCHAR(8), getdate(), 108) , 1,5 ))
	FROM TbExcel b
	WHERE ISNULL(F33,0) = 0
	AND DateModify IS NULL
	AND LetterID IS NULL
	AND IDNumber = @IDNumber
	GROUP BY f1,F8

--	Select SCOPE_IDENTITY()

	DECLARE cur CURSOR FOR
	SELECT
			b.LetterID,
			a.id 
	FROM TbExcel a
	INNER JOIN Letter b
		ON a.F1 = b.IncommingNO
		AND a.F8 = b.MYear
		AND b.SecretariatID = @SecretariatsID
	WHERE ISNULL(F33,0) = 0
	AND DateModify IS NULL
	AND a.LetterID IS NULL
	AND IDNumber = @IDNumber -----------------
	
OPEN  cur  
FETCH NEXT FROM cur 
INTO @LetterID_Insert,@TbExcelID_Insert

WHILE @@FETCH_STATUS = 0  
BEGIN
	UPDATE TbExcel
	SET LetterID = @LetterID_Insert
	WHERE ID  = @TbExcelID_Insert

FETCH NEXT FROM cur 
INTO @LetterID_Insert,@TbExcelID_Insert
END   
CLOSE cur 
DEALLOCATE cur 


--************************************************** پایان درج نامه های که در جدول letter وجود ندارند***************************


--************************************************** شروع بروز رسانی برای نامه موجود در سیستم*********************************
DECLARE @TbExcelID      int
DECLARE @LetterID      int
DECLARE @ShonarehSanad nvarchar(500)
DECLARE @TarikheSanad  nvarchar(500)
DECLARE @SharheKhat    nvarchar(500)
DECLARE @KholaseSanad  nvarchar(500)
DECLARE @MKarBari1     nvarchar(500)
DECLARE @MKarBari2     nvarchar(500)
DECLARE @MKarBari3     nvarchar(500)
DECLARE @Myear         nvarchar(500)



DECLARE vend_cursor CURSOR FOR

	SELECT 
	    ID AS TbExcelID,
		LetterID AS LetterID,
		F1 AS ShonarehSanad,
		F2 AS TarikheSanad,
		F3 AS SharheKhat,
		F4 AS KholaseSanad,
		F5 AS MKarBari1,
		F6 AS MKarBari2,
		F7 AS MKarBari3,
		F8 AS Myear
	--	F9, --AS ,
	--	F33 --AS --,
	--	DateModify
	FROM TbExcel
	WHERE ISNULL(F33,0) = 0
	AND DateModify IS NULL
	AND LetterID IS NOT NULL

OPEN  vend_cursor  
FETCH NEXT FROM vend_cursor 
INTO @TbExcelID,@LetterID,@ShonarehSanad,@TarikheSanad,@SharheKhat,
     @KholaseSanad,@MKarBari1,@MKarBari2,@MKarBari3,@Myear         

WHILE @@FETCH_STATUS = 0  
BEGIN
    
	UPDATE Letter
	SET IncommingNO   =  @ShonarehSanad
	,   Incommingdate =  @TarikheSanad
	,   [Subject]     =  @SharheKhat
	,   Memo          =  @KholaseSanad
	,   UserMemo      =  @MKarBari1
	,   UserMemo1     =  @MKarBari2              
	,   UserMemo2     =  @MKarBari3
	,   MYear         =  @Myear
	WHERE LetterID = @LetterID
	--AND SecretariatID = @SecretariatsID 

	UPDATE TbExcel
	SET DateModify = Getdate()
	WHERE ID = @TbExcelID 

    FETCH NEXT FROM vend_cursor   
    INTO @TbExcelID,@LetterID,@ShonarehSanad,@TarikheSanad,@SharheKhat,
         @KholaseSanad,@MKarBari1,@MKarBari2,@MKarBari3,@Myear         
END   
CLOSE vend_cursor  
DEALLOCATE vend_cursor  

ALTER TABLE letter ALTER COLUMN MYear int

--************************************************** پایان بروز رسانی برای نامه موجود در سیستم********************************

DROP TABLE #temptable 
GO
/****** Object:  StoredProcedure [dbo].[Prc_latererdata]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Prc_latererdata]
(
  @LetterDataID  INT   
)
AS

select * from  LetterData where LetterDataID = @LetterDataID

GO
/****** Object:  StoredProcedure [dbo].[Prc_latererdata_OLD 13980130]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Prc_latererdata_OLD 13980130]
(
  @LetterDataID  INT   
)
AS





--1-- اضافه کردن فیلد path در جدول تصاویر
--2 اجرای اسکیرپت زیر

-- *************************شروع دریافت پارامتر ورودی*************************
--DECLARE  @LetterID  INT  = 5146 
-- *************************پایان دریافت پارامتر ورودی************************
CREATE TABLE #temp (Letterdataid int ,Pic varbinary(MAX))
DECLARE @tab AS TABLE (tabPic varbinary(MAX) ) 

--DECLARE @LetterDataID INT
DECLARE @Path  nvarchar(50)
DECLARE @command nvarchar(max)

DECLARE vendor_cursor CURSOR FOR  
	SELECT 
	  LetterDataID,
	  Path 
	FROM LetterData
	--WHERE Letterid  = @LetterID
	Where LetterDataID = @LetterDataID

OPEN vendor_cursor
FETCH NEXT FROM vendor_cursor   
INTO @LetterDataID, @Path
WHILE @@FETCH_STATUS = 0  
BEGIN  
	 SELECT   @command = N'DECLARE @Img AS VARBINARY(MAX)
					       SELECT @Img = CAST(bulkcolumn AS varbinary(MAX))
					       FROM OPENROWSET(BULK ''' +@Path+ ''',
					       SINGLE_BLOB) ROW_SET 
						   SELECT @img ' 

	 INSERT into @tab EXEC sp_executesql @command
	 INSERT INTO #temp
	 (
	    Letterdataid,
    	Pic
	 )
	 SELECT DISTINCT
		 @LetterDataID
		,tabPic
	 FROM @tab 

	 DELETE FROM @tab
 FETCH NEXT FROM vendor_cursor   
  INTO @LetterDataID, @Path 
END   
CLOSE vendor_cursor;  
DEALLOCATE vendor_cursor;    



SELECT-- b.*, a.Pic As [image]
	b.LetterDataID,	
	b.LetterID,	
	b.PageNumber,	
	a.Pic AS Image,	
	b.extention,	
	b.Description,	
	b.LastUpdate,	
	b.ListItemsID,	
	b.IsCorrectedImage,
	b.ColorID,	
	b.VersionNo,	
	b.VersionDate,	
	b.UI,	
	b.BLOBData,
	b.Path	
FROM #temp  a
INNER JOIN LetterData b
  ON a.Letterdataid = b.LetterDataID
--Where (b.PageNumber = @PageNumber or @PageNumber = 0)

DROP TABLE #temp 

/*

Select  * 
From LetterData
Where LetterDataID = :Pa_LetterDataID

*/


--Select *
--from ListItems
--Where(ListID=8)
GO
/****** Object:  StoredProcedure [dbo].[PRC_TBExcel_Select]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC  [dbo].[PRC_TBExcel_Select] 
	(
	  @LetterID INT = 5146
	  ,@where    nvarchar(max) = 'NUll'--'اجراي برق'
	)
AS

DECLARE @IDNumber INT 
SET @IDNumber = (SELECT DISTINCT IDNumber from TbExcel WHERE LetterID = @LetterID)
SELECT 
  ID,	
  LetterID,	
  F1,	
  F2,	
  F3,	
  F4,	
  F5,	
  F6,	
  F7,	
  F8,	
  F9,	
  F10,	
  F11,	
  F12,	
  F13,	
  F14,	
  F15,	
  F16,	
  F17,	
  F18,	
  F19,	
  F20,	
  F21,	
  F22,	
  F23,	
  F24,	
  F25,	
  F26,	
  F27,	
  F28,	
  F29,	
  F30,	
  F31,	
  F32,	
  F33,	
  DateModify,	
  IDNumber
FROM TbExcel
WHERE LetterID = @LetterID
AND (( 
	f1 like @where 
	OR f2 like @where 
	OR f3 like @where 
	OR F4 like @where  
	OR f5 like @where
	OR f6 like @where
	OR f7 like @where 
	OR f8 like @where 
	OR f9 like @where
	OR f10 like @where
	OR f11 like @where 
	OR f12 like @where 
	OR f13 like @where
	OR f14 like @where
	OR f15 like @where
	OR f16 like @where
	OR f17 like @where
	OR f18 like @where
	OR f19 like @where
	OR f20 like @where
	OR f21 like @where
	OR f22 like @where
	OR f23 like @where
	OR f24 like @where
	OR f25 like @where
	OR f26 like @where
	OR f27 like @where
	OR f28 like @where
	OR f29 like @where
	OR f30 like @where 
	OR f31 like @where 
	OR f32 like @where
 ) or @where = 'NULL')
OR (LetterID IS NULL AND IDNumber = @IDNumber)
ORDER by LetterID ASC
GO
/****** Object:  StoredProcedure [dbo].[PRCTbExcel_AccessFroDelete]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[PRCTbExcel_AccessFroDelete]
	(
	  @UserID int
	)
AS
SELECT 
   ISNULL(AccessID,1)AccessID
FROM Users
WHERE ID = @UserID 
GO
/****** Object:  StoredProcedure [dbo].[PRCTbExcel_Delete]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[PRCTbExcel_Delete]
(
  @ID int
)
AS
DELETE FROM [dbo].[TbExcel]
      WHERE id = @ID
GO
/****** Object:  StoredProcedure [dbo].[Recommite_has_JpgFile]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




















CREATE  procedure [dbo].[Recommite_has_JpgFile](@RecommiteID  int,@hasJpg bit output)
as
if exists(select  *
from Recommitedata
where RecommiteID=@RecommiteID
and Extention=1  and image is not null)  set @hasJpg=1 else set @hasJpg=0




















GO
/****** Object:  StoredProcedure [dbo].[Recommite_Report]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[Recommite_Report]
 @begindate char(10),@enddate char(10),@secid int ,@letter_type int 
as

select Recommiteid,orgid,dbo.ShamsiDateDiff(recommitedate,isnull(Proceeddate,'1385/06/08'))delay ,proceeded into #abs
from recommites
inner join letter on letter.letterid=recommites.letterid
where recommitedate between @begindate  and @enddate
and letter.Secretariatid=@secid
and (@letter_type=0) or (Letter_type=@letter_type)


select *
from #abs
inner join fromorganizations on Fromorganizations.id=orgid








GO
/****** Object:  StoredProcedure [dbo].[Remove_UserTable_ByLetterID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Remove_UserTable_ByLetterID]
@LetterID int
as
update Letter
set UserTableID=null
where LetterID=@LetterID


delete LetterFieldValue
where LetterID=@LetterID

GO
/****** Object:  StoredProcedure [dbo].[Report_UserLog]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Report_UserLog]
@Secretariatid int,
@myear tinyint,
@where nvarchar(2000),
@topCnt int=1000
as 
declare @sqlCommand nvarchar(4000)
set @sqlCommand = 'SELECT '
if @topCnt > 0 
	--set @sqlCommand = @sqlCommand + ' top '+ CONVERT(varchar(5),@topCnt)
	set @sqlCommand = @sqlCommand + ' top 100 percent '--+ CONVERT(varchar(5),@topCnt)
set @sqlCommand = @sqlCommand + ' 
 ApplicationForms.Title AS FormTitle,
 Users.Title AS UserTitle,
 Actions.Title AS ActionTitle,
 Letter.IndicatorID,
 LetterTypes.Title AS LetterType,
 Letter.IncommingNO,
 Letter.Incommingdate,
 Letter.RegistrationDate,
 Letter.Memo,
 dbo.Shamsi(UserLog.Time1) AS Date,
 right(cast(UserLog.Time1 as varchar(50)),7) as Time

FROM       UserLog
INNER JOIN Users            ON Users.Id = UserLog.UserID
INNER JOIN Actions          ON UserLog.Actionname = Actions.Actionname 
INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.FormTag
LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterID
LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.ID '


set @where=isnull(ltrim(rtrim(@where)),'')
if @where <>'' set @where =' and '+@where

if @Secretariatid<>0
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if substring(@where,1,4)=' and' set @where=' where '+substring(@where,5,4000)

 --set @sqlCommand=@sqlCommand+@where + ' order by time1  '
 --set @sqlCommand=@sqlCommand+@where + ' order by Letter.RegistrationDate desc '
  --set @sqlCommand=@sqlCommand+@where + ' order by dbo.Shamsi(UserLog.Time1) desc, right(cast(UserLog.Time1 as varchar(50)),7) desc,UserLog.Time1 desc '
  set @sqlCommand=@sqlCommand+@where + ' order by UserLog.Time1 desc '
exec(@sqlCommand)

--Select @sqlCommand
GO
/****** Object:  StoredProcedure [dbo].[Report_UserTable]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Report_UserTable]  
@tableID int,@LetterWhere nvarchar(2000),@UserTableWhere nvarchar(2000)  
as  
  
declare @sql nvarchar(4000)  
  
set @sql= 'select LetterID into ##Uletters from Letter '  
  
if @UserTableWhere<>''   
 set @sql=@sql+' where  '+@UserTableWhere  
  
exec(@SQL)  
  
  
set @sql='Select l.LetterID into ##r from Letter l  
 inner join ##Uletters on ##Uletters.LetterID=l.LetterID  
 where UserTableID='+cast(@tableID as varchar(5))+' and '+@LetterWhere  
  
exec(@Sql)  
set @sql= 'create  table ##m (LetterID int '  
  
SELECT     top 60 identity(int,1,1) id , Fields.Description,cast (fields.id as int ) fieldid into #m  
FROM      Fields  
WHERE     (tableid = @tableID)  
order by [order]  
  
  
SELECT     @sql=@sql+' ,['+isnull(Description,'')+'_'+  
Cast((select count(*) from #m where isnull(Description,'')=isnull(m.Description,'') and id <=m.id) as varchar(3))+  
'] nvarchar(2000)'  
FROM      #m m  
  
set @sql= @sql+')'  
  
print @sql   
exec(@sql)  
declare @insert  varchar(8000)  
    
set @insert= 'insert into ##m select LetterID'  
   
SELECT @insert=@insert+',(select FieldValue from LetterFieldValue where FieldId=' + cast(fieldid as varchar(10))+' and letterid=r.LetterID)'  
FROM #m  
  
set @insert= @insert+' from ##r r '  
  
exec(@insert)  
  
  
select ##m.* ,IndicatorID,IncommingNO,IncommingDate,CenterNo,CenterDate  
,Memo/*,RetroactionNo*/,UserMemo,RegistrationDate/*,FollowLetterNo,LetterRecommites*/  
,sender.Title AS SenderTitle ,Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle  
FROM  ##m  
inner join Letter on ##m.Letterid=Letter.Letterid  
left  JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID   
left JOIN  FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID   
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type   
left join Secretariats on Secretariats.Secid=Letter.SecretariatID  
  
drop table ##m    
drop table ##Uletters  
drop table ##r

GO
/****** Object:  StoredProcedure [dbo].[SaveAs_Accesses]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveAs_Accesses]  
       ( @Title nvarchar(50),@oldaccessID int ,@newID int output)  
  
AS  
INSERT INTO [dbo].[Accesses]( [Title])   
VALUES ( @Title)  
  
select @newID = Max(ID) from accesses  

insert into ActionsAccess(accessid,ActionName, FormTag, HasAccess)  
SELECT @newid,ActionName, FormTag, HasAccess  
FROM ActionsAccess  
where accessid=@oldaccessID  
  
insert into ActionsAccess(accessid,ActionName, FormTag, HasAccess)  
SELECT Accesses.ID AS accessid, Actions.ActionName, Actions.FormTag, 0 AS hasaccess  
FROM Actions , Accesses  
--where str(Accesses.ID)+str(Actions.ID) not in (select str(accessid)+str(ActionID) from ActionsAccess)  
where (Str(Actions.formtag)+LTrim(RTrim(Actions.ActionName))+ Str(Accesses.ID) not in 
      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionName))+ Str(AAC.AccessID) From ActionsAccess AAC) )

GO
/****** Object:  StoredProcedure [dbo].[select_CiticalLetterFields]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[select_CiticalLetterFields]
	@LetterID int

AS
select   LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, letterformat  
from Letter 
WHERE LetterID=@LetterID


GO
/****** Object:  StoredProcedure [dbo].[Select_ExactCopy]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO




















CREATE PROCEDURE [dbo].[Select_ExactCopy](@LetterID int) AS

Select recommites.*,org.title,org.IsInnerOrg
From recommites inner join fromorganizations org on org.id=orgid
where LetterID=@LetterID
 and type=1



















GO
/****** Object:  StoredProcedure [dbo].[select_fromorganization]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO























create PROCEDURE [dbo].[select_fromorganization] AS
SELECT    FromOrganizations.ID,  FromOrganizations_1.Title AS parent,FromOrganizations.ResponsibleStaffer,
FromOrganizations.Title
FROM         FromOrganizations INNER JOIN
                      FromOrganizations FromOrganizations_1 ON FromOrganizations.ParentID = FromOrganizations_1.ID
WHERE     (FromOrganizations.ParentID <> 1000001)
and FromOrganizations.id not like '9%'
ORDER BY cast(FromOrganizations.id as varchar(10))
























GO
/****** Object:  StoredProcedure [dbo].[select_Letter]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
























CREATE PROCEDURE [dbo].[select_Letter]
	@LetterID int

AS
select Letter.*,title senderTitle  from 
   Letter left JOIN
                      FromOrganizations ON Letter.ToOrgID = FromOrganizations.ID
WHERE 
	LetterID=@LetterID


















GO
/****** Object:  StoredProcedure [dbo].[Select_LetterReCommite]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[Select_LetterReCommite]	

(@letterID 	[int],@type tinyint)  AS 

SELECT R.*,f.title+' - '+r.OrgStaff orgtitle,IsInnerOrg 

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID 

where Letterid=@letterID and type=@type 






GO
/****** Object:  StoredProcedure [dbo].[select_ReceivedLetters]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[select_ReceivedLetters]
	@IndicatorID 	int,
	 @MYear 	tinyint,
	 @LetterFormat tinyint,@Secretariatid int

AS
SELECT     ReceivedLetters.*, FromOrgANIZATIONS.Title
FROM         ReceivedLetters 
INNER JOIN  FromOrgANIZATIONS ON ReceivedLetters.tOOrgID = FromOrgANIZATIONS.ID
WHERE 
	IndicatorID	 = @IndicatorID AND
	 MYear = @MYear and
              (LetterFormat=@LetterFormat or @letterformat=0) and
              Secretariatid=@Secretariatid







GO
/****** Object:  StoredProcedure [dbo].[Select_recommites_byLetterID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Select_recommites_byLetterID]
@letterId int
as

SELECT     FromOrganizations.Title AS [ارجاع شونده], FromOrganizations_1.Title AS [ارجاع دهنده], FromOrganizations_1.ResponsibleStaffer AS [نام ارجاع دهنده], 
                      FromOrganizations.ResponsibleStaffer AS [نام ارجاع گيرنده], Users.Title AS [کاربر ثبت کننده], ReCommites.Paraph AS [مضمون ارجاع], 
                      ReCommites.RecommiteDate AS [تاريخ ارجاع], ReCommites.IsCopy AS [کپي؟], ReCommites.Proceeded AS [اقدام شده؟], 
                      ReCommites.ProceedDate AS [تاريخ اقدام يا ارجاع], ReCommites.staffmemo AS [ملاحظات بايگاني], ReCommites.viewdate AS [تاريخ مشاهده], 
                      ReCommites.OrgStaff AS [نام ارجاع شونده ], ReCommites.DeadLineDate AS [مهلت اقدام], RecommiteTypes.Title AS [نوع ارجاع]
FROM         RecommiteTypes INNER JOIN
                      ReCommites INNER JOIN
                      Users ON ReCommites.UserID = Users.Id INNER JOIN
                      FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID ON RecommiteTypes.ID = ReCommites.Type LEFT OUTER JOIN
                      FromOrganizations FromOrganizations_1 INNER JOIN
                      ReCommites ReCommites_1 ON FromOrganizations_1.ID = ReCommites_1.OrgID ON ReCommites.LetterID = ReCommites_1.LetterID AND 
                      ReCommites.ParentId = ReCommites_1.ID
WHERE    recommites.type=3 and (ReCommites.LetterID = @letterId)

GO
/****** Object:  StoredProcedure [dbo].[Select_Rent]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[Select_Rent]
@RentID int 
as
SELECT *
  FROM  Rent
where RentID=@RentID
GO
/****** Object:  StoredProcedure [dbo].[Select_Rent_byLetterID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_Rent_byLetterID] --Select_Rent_byLetterID 9731,3
@LetterID int,
@userid int = 0
AS
--declare @LetterID int =9731 
--declare @userid int =3
SELECT rr.RenterTitle,
       u.Title AS Title,--as N'کاربر تحویل دهنده ', --اضافه کردن ستون کاربر وارد شده به نرم افزار در قسمت وضعیت گزارش دهی از سند 
       r.RentID,
	   r.RenterID,
	   l.LetterID,
	   R.BeginDate,
	   R.EndDate,
	   R.Comment,
	   R.MatureDate  
 FROM  Letter AS L   
  Left Join rent AS R      
     ON L.letterid=R.letterid 
  Left Join users AS U   
     ON U.ID=r.userid  
  Left  Join Renter  AS RR  
	 ON RR.RenterID=R.RenterID   
	 WHERE L.letterid=@LetterID
	 AND   (u.Id=@userid or @userid = 0) 
ORDER BY BeginDate DESC


--ALTER PROCEDURE [DBO].[SELECT_RENT_BYLETTERID]
--@LETTERID INT
--AS
--SELECT RENT.*,RENTERTITLE
--  FROM  RENT
--LEFT JOIN RENTER ON RENTER.RENTERID=RENT.RENTERID
--  WHERE LETTERID=@LETTERID
--ORDER BY BEGINDATE DESC

GO
/****** Object:  StoredProcedure [dbo].[select_sentLetters]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
















CREATE PROCEDURE [dbo].[select_sentLetters]
	@IndicatorID 	int,
	 @MYear 	tinyint,
	 @LetterFormat tinyint,
              @Secretariatid tinyint

	 

AS
SELECT     SentLetters.*, FromOrgANIZATIONS.Title
FROM         SentLetters 
INNER JOIN  FromOrgANIZATIONS ON SentLetters.ToOrgID = FromOrgANIZATIONS.ID
WHERE 
	IndicatorID	 = @IndicatorID AND
	 MYear = @MYear and
              (LetterFormat=@LetterFormat or @letterformat=0) and
              Secretariatid=@Secretariatid










GO
/****** Object:  StoredProcedure [dbo].[select_userLoginLogout]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[select_userLoginLogout](@bdate char(10), @edate char(10), @userid int)    
as    
SELECT Users.UserName, IPAddress,ComputerName ,      
       dbo.Shamsi(LoginTime) LoginDate,cast(datepart(hh, LoginTime) as varchar(2))+':'+cast (datepart(mi, LoginTime) as varchar(2)) LoginTime,    
       dbo.Shamsi(LogoutTime) LogoutDate,cast(datepart(hh, LogoutTime) as varchar(2))+':'+cast (datepart(mi, LogoutTime) as varchar(2)) LogoutTime,    
       isSafeLogout    
FROM UserLoginLogout INNER JOIN    
     Users ON UserID = Users.Id    
where dbo.Shamsi(LoginTime)  between @bdate and @edate    


GO
/****** Object:  StoredProcedure [dbo].[selectAddedInfo]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[selectAddedInfo]
@where nvarchar(2000) 
as
declare @sqlCommand nvarchar(4000)
set @sqlcommand='SELECT *  FROM vw_AddedInfo AI '

if @where<>'' set @sqlCommand=@sqlCommand+'  where  '+@where
exec sp_executesql @sqlCommand







GO
/****** Object:  StoredProcedure [dbo].[SelectAppColumns]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectAppColumns] 
@formName nvarchar(100),
@gridName nvarchar(100)
AS
select ac.* 
from appColumns ac 
	inner join appGrids ag on ac.gridID=ag.gridID 
	inner join appForms af on ag.formtag=af.formTag
Where af.FormEngName = @formName and ag.GridName = @gridName
GO
/****** Object:  StoredProcedure [dbo].[SelectInfo]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE  PROCEDURE [dbo].[SelectInfo]
@where nvarchar(1900)
as 
declare @mainTable varchar(50), @PrimaryCode varchar(50)
select @mainTable=value
from settings
where userid=-1 and variableid=24

select @PrimaryCode=value
from settings
where userid=-1 and variableid=26

declare @sqlCommand nvarchar(4000)
set @sqlcommand='select l.*,dbo.innerno(l.LetterID) innerno,
ReceiveTypes.Title AS ReciveTitle,Classifications.Title AS ClassificatioTitle,Urgenceis.Title AS UrgencyTitle,Users.Title AS UserTitle,
LetterFormats.Title AS FormatTitle,ToOrganizations.Title AS ToOrgTitle,LetterTemplate.Title AS TemplateTitle, 
FromOrganizations.Title AS FromTitle,f.title SignerTitle,ai.*
FROM  Letter l
LEFT JOIN '+@mainTable+'  AI  on l.UserMemo=cast (ltrim(ai.'+@PrimaryCode+' ) as nvarchar(255) )
LEFT JOIN fromorganizations f on f.id=l.signerid
LEFT JOIN ReceiveTypes ReceiveTypes ON ReceiveTypes.ID = L.ReceiveTypeID
LEFT JOIN Classifications Classifications ON L.ClassificationID = Classifications.ID 
LEFT JOIN Urgenceis Urgenceis ON L.UrgencyID = Urgenceis.ID
LEFT JOIN Users Users ON L.UserID = Users.Id
LEFT JOIN FromOrganizations FromOrganizations ON L.FromOrgID = FromOrganizations.ID 
LEFT JOIN fromorganizations ToOrganizations  ON L.ToOrgID = ToOrganizations.ID 
LEFT JOIN LetterFormats LetterFormats ON L.letterformat = LetterFormats.Code
LEFT JOIN LetterTemplate LetterTemplate ON l.TemplateID = LetterTemplate.ID '

if @where<>'' set @sqlCommand=@sqlCommand+' where '+@where

exec sp_executesql @sqlCommand

GO
/****** Object:  StoredProcedure [dbo].[SelectLetter]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[SelectLetter]    
	@where nvarchar(2000)     
	as     
	declare @sqlCommand nvarchar(4000)    
	set @sqlCommand='select distinct Null as HasTasvir, l.*,     
	 ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS ClassificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS UserTitle,     
	 LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, LetterTemplate.Title AS TemplateTitle,      
	 FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTypeTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.IndicatorID  AnswerIndicatorID    
	 ,dbo.has_Page(L.letterid) has_Page /*Ranjbar*/
	from Letter as L    
	 Left JOIN ReceiveTypes ON ReceiveTypes.ID = L.ReceiveTypeID    
	 Left JOIN Classifications ON L.ClassificationID = Classifications.ID     
	 Left JOIN Urgenceis ON L.UrgencyID = Urgenceis.ID    
	 Left JOIN Users ON L.UserID = Users.Id    
	 Left JOIN FromOrganizations ON L.FromOrgID = FromOrganizations.ID     
	 Left JOIN fromOrganizations ToOrg ON L.ToOrgID = ToOrg.ID     
	 Left JOIN LetterFormats ON L.letterformat = LetterFormats.Code    
	 left JOIN LetterTemplate ON l.TemplateID = LetterTemplate.ID    
	 left JOIN LetterTypes ON l.Letter_type = LetterTypes.ID    
	 LEFT JOIN     Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID   
	 Left join LetterArchiveFolder ON L.LetterID = LetterArchiveFolder.LetterID   /*Ranjbar ID=13*/ 
	 left join LetterColor lc on l.LetterID=lc.LetterID 
	 '     
	 
	set @where=isnull(ltrim(rtrim(@where)),'')    
	if @where<>''     
	 set @sqlCommand=@sqlCommand+' where '+@where    
	 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '    
	exec sp_executesql @sqlCommand
GO
/****** Object:  StoredProcedure [dbo].[SetSystemSetting]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetSystemSetting]
@VariableName varchar(50),@Value nvarchar(255)
AS
exec SetUserSetting -1 ,@VariableName ,@Value
GO
/****** Object:  StoredProcedure [dbo].[SetUserSetting ]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetUserSetting ]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(255)
AS
    DELETE FROM Settings WHERE  (UserID = @UserID) AND (VariableName = LTRIM(RTRIM(@VariableName)))
    insert into Settings(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)
    Update Settings 
    set Value=@Value
    WHERE     (UserID = @UserID) AND (VariableName = @VariableName)
GO
/****** Object:  StoredProcedure [dbo].[shrink_Files]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








create procedure [dbo].[shrink_Files](@number int,@dbanme nvarchar(50),@logPath nvarchar(255))
as
declare @i int
set @i=1 
while @i<=@number 
 begin
  dbcc shrinkfile(1,1)
  dbcc shrinkfile(2,1)
  exec(N'backup log '+@dbanme+' to disk='''+@logPath+'''')
  set @i=@i+1
  print 'stage '+cast(@i as varchar(3)) +' completetd. '
 end









GO
/****** Object:  StoredProcedure [dbo].[sp_Add_GroupRecommite]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE procedure [dbo].[sp_Add_GroupRecommite]( @letterid int,@Type tinyint,@OrgID int,@Paraph nvarchar(500),@RecommiteDate char(10),
@UserID int ,@IsCopy bit ,@Proceeded bit,@OrgStaff nvarchar(100))
as


declare @id int

select  @id=max(id)
from recommites
where letterid=@letterid and type=@type

set @id=isnull(@id,0)

update recommites
set Proceeded=@Proceeded
where letterid=@letterid and id=@id and type=@type

INSERT INTO ReCommites
                      (LetterID, id,Type, ParentId,OrgID, Paraph, RecommiteDate, UserID, IsCopy, Proceeded, OrgStaff)
VALUES                (@letterid ,@id+1,@Type ,@Id,@OrgID ,@Paraph ,@RecommiteDate ,@UserID ,@IsCopy,0,@OrgStaff)








SET QUOTED_IDENTIFIER OFF 




GO
/****** Object:  StoredProcedure [dbo].[Sp_AddFileToDB]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE Procedure [dbo].[Sp_AddFileToDB] @DBName nVarchar(50) 
As

Declare @MaxFileID int
Declare @FileSizeInMB int
Declare @FileName nVarchar(50)
Declare @NewFileName nVarchar(50)
Declare @NewFilePath nVarchar(500)

Declare @NewFileNu int
Declare @MDFSqlText nVarchar(1000)
Declare @SqlText nVarchar(1000)

Select @MaxFileID = Max(FileID) 
FROM dbo.sysfiles  
WHERE Groupid = (SELECT u.groupid FROM dbo.sysfilegroups u WHERE u.groupname = N'PRIMARY')

Select @FileSizeInMB = ( (size * (8192/1024))/1024 ) , @FileName = Name , @NewFilePath = FileName
from dbo.sysfiles
Where Groupid = (SELECT u.groupid FROM dbo.sysfilegroups u WHERE u.groupname = N'PRIMARY') 
And(FileID = @MaxFileID )

Set @NewFileName = @FileName

Set @NewFilePath = Substring(@NewFilePath,1, Len(RTrim(@NewFilePath))-Len(RTrim(@NewFileName)+'.mdb')  )
if @MaxFileID = 1  --.mdf
   Set @NewFileNu = 2
else
   Set @NewFileNu   = Cast(Substring(@NewFileName,Len(RTrim(@NewFileName))-1 ,Len(RTrim(@NewFileName))) as int)+1

if Len( Cast(@NewFileNu as nvarchar) ) = 1
   Set @NewFileName = @DBName+'_Data_'+ '0' +Cast(@NewFileNu as nvarchar)
else
   Set @NewFileName = @DBName+'_Data_'+ Cast(@NewFileNu as nvarchar)
/*
Select @NewFilePath
Select @MaxFileID
Select @NewFileNu
Select @NewFileName
Select @FileSizeInMB --*/

if @FileSizeInMB > 3800 --MB
begin
   if @MaxFileID = 1  --mdf قرار دادن ماكزيمم حجم براي فايل
   begin
      Set @MDFSqlText = 'Use Master ALTER DATABASE ['+ @DBName +'] MODIFY FILE (NAME = N'''+ RTrim(@FileName) +''', MAXSIZE = '+ Cast(@FileSizeInMB+30 as nvarchar(10)) +') '
      Exec(@MDFSqlText)
      Print @MDFSqlText
   end 

   Set @SqlText = 'use Master '+
   'ALTER DATABASE [' + RTrim(@DBName) + '] 
    ADD FILE( NAME = '''+@NewFileName+''' , FILENAME = ''' + @NewFilePath + @NewFileName + '.NDF'' , 
             SIZE = 1 , MAXSIZE = 4000 , FILEGROWTH = 10% ) '
   Exec(@SqlText)
   Print @SqlText
end


GO
/****** Object:  StoredProcedure [dbo].[sp_AutomationLetters_by_ArchiveLetterID]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_AutomationLetters_by_ArchiveLetterID]
@ArchiveLetterId INT
AS
	SELECT * FROM Automationview
	WHERE ArchiveLetterID = @ArchiveLetterId
GO
/****** Object:  StoredProcedure [dbo].[sp_board]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





















CREATE    PROCEDURE [dbo].[sp_board] 
@OrgID int,@myear tinyint,@date char(10)
as
if isnull(@date,'')='' set @date='0'

SELECT SL.IndicatorID, SL.MYear, SL.SecretariatID, SL.Letter_type, SL.LetterFormat, 
SL.FromOrgID, SL.ToOrgID,  SL.UrgencyID,  SL.Memo, SL.AttachTitle,
 SL.RegistrationDate, SL.RegistrationTime, SL.FollowLetterNo, SL.ToStaffer,
  RC.Paraph, RC.RecommiteDate, '' no1
FROM ReCommites RC 
INNER JOIN SentLetters SL ON RC.LetterIndicatorID = SL.IndicatorID AND RC.LetterMyear = SL.MYear AND 
 RC.SecretariatID = SL.SecretariatID AND RC.LetterFormat = SL.LetterFormat 
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID
WHERE    (Rc.OrgID = @OrgID)and RecommiteTypes.InnerOrganize=1 
and sl.myear=@myear and (RC.RecommiteDate=@date or @date='0')
 and RecommiteTypes.ReceiveMode=0
union
SELECT RL.IndicatorID, RL.MYear, RL.SecretariatID, RL.Letter_type, RL.LetterFormat, 
RL.FromOrgID, RL.ToOrgID,  RL.UrgencyID,  RL.Memo, RL.AttachTitle,
 RL.RegistrationDate, RL.RegistrationTime, RL.FollowLetterNo, RL.ToStaffer,
  RC.Paraph, RC.RecommiteDate,  no1
FROM ReCommites RC 
INNER JOIN ReceivedLetters RL ON RC.LetterIndicatorID = RL.IndicatorID AND RC.LetterMyear = RL.MYear AND 
 RC.SecretariatID = RL.SecretariatID AND RC.LetterFormat = RL.LetterFormat 
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID
WHERE  (Rc.OrgID = @OrgID) and RecommiteTypes.ReceiveMode=1 and RecommiteTypes.InnerOrganize=1 
and rl.myear=@myear  and (RC.RecommiteDate=@date or @date='0')
order by 1 desc












GO
/****** Object:  StoredProcedure [dbo].[sp_checkusernotes]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE proc [dbo].[sp_checkusernotes]
@USERID INT ,@DateID int ,@where nvarchar(1000)
AS
 declare @sql nvarchar (4000)

set @sql=' SELECT top 200 *,substring(note,1,100)+'' ...'' as Abstract  from UserNote where userid='+cast(@USERID as varchar(5))
set @where =ltrim(rtrim(isnull(@where ,'')))
if @where <>'' 
set @sql=@sql+' and '+@where 

if @DateID<>0
begin
 declare @today char(10),@dw tinyint,@bdate char(10),@edate char(10)
 set @today=dbo.shamsi(getdate())
 set @dw=datepart(dw,getdate())
 select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@DateID
 set @sql=@sql+' AND CreateDate between '''+@bdate+''' and '''+@edate+''''
end

exec sp_executesql @sql





GO
/****** Object:  StoredProcedure [dbo].[sp_CompleteFieldBook]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[sp_CompleteFieldBook](@tableName varchar(50),@description varchar(50) ,
@tableid int output)
as
if @tablename is null return
if not exists( select *
from tables where  replace(
replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']',''))
begin
 select @tableid=max(tableid)+1 from tables
 insert into tables (tableid,tablename,description)
 values(@tableid,@tablename,@description)
end
else
if (select description from tables where  replace(
replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']','')) is null

update tablename
set description=@description
where    replace(replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']','')
 
select @tableid=tableid from tables where replace(replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']','')


insert into Fields(TableID, FieldName, Description,islike,isstring,everylike)
SELECT  @tableid,syscolumns_f.name,isnull((select cast(value as varchar(50)) from sysproperties where id = syscolumns_f.id AND smallid = syscolumns_f.colid and
 name='MS_Description'),syscolumns_f.name) Description,dbo.islike(systypes.name),
dbo.isstring(systypes.name),dbo.everylike(systypes.name,syscolumns_f.length)
FROM  sysobjects sysobjects_f 
INNER JOIN syscolumns syscolumns_f ON sysobjects_f.id = syscolumns_f.id
inner join systypes on syscolumns_f.xtype=systypes.xtype
where replace(replace(sysobjects_f.name,'[',''),']','')=replace(replace(@tablename,'[',''),']','')
and  syscolumns_f.name not in (SELECT     FieldName
FROM         Fields
WHERE     (TableID = @tableid))
return @tableid
GO
/****** Object:  StoredProcedure [dbo].[sp_dailyRep]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_dailyRep]
@myear tinyint,@bdate char(10),@edate char(10),@where nvarchar(1000)
as
 declare @sql nvarchar (4000)

set @sql='select  
				1 AS MY ,
				 0 AS SORT_INT, 
				 U.UserName AS USER_NAME,l.*,
				lettertypes.title ReceiveMode ,
				lETTERrecommites rECOMMITES,
				TTO.title toorgtitle
,
  (Select   CAST(COUNT(*)   AS int)
	from LetterData a
	INNER JOIn Extention b
	On a.extention = b.ExtentionID
	WHERE (b.Extention like ' +'''%jpg%''' + 'or b.Extention like' +  '''%tif%'''+')'+
	'AND  a.LetterID=l.LetterID
 )as  NUM 

FROM Letter L 
 left JOIN fromOrganizations TTO 
  ON TTO.ID = l.ToOrgID 
LEFT JOIN LETTERTYPES 
  ON lettertypes.id=l.letter_type
INNER JOIN dbo.Users U 
  ON l.UserID = U.Id
WHERE(L.RegistrationDaTE between '''+@bdate+''' and '''+@edate+''')'

set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>''
select @sql=@sql+' and  '+@where

set @sql=@sql+' order by 1 desc'
exec(@sql)
--Select @sql


GO
/****** Object:  StoredProcedure [dbo].[sp_DelayedLetter]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[sp_DelayedLetter] 
@SecretariatID int,@myear tinyint,@DeadLine int, @userID int
as

declare 
@sql nvarchar (4000),
@rw nvarchar(255),
@Today char(10),
@deadlineDate char(10),
@OrgID int

select @today=dbo.shamsi(getdate())

if @DeadLine between -30 and 30 
  set @deadlineDate=dbo.ShamsiIncDate(@today,0,0,@DeadLine)

SELECT     @OrgID=FromOrgID
FROM         Users
WHERE     Id = @userID

set @RW='WHERE Proceeded=0 and   ( L.myear='+cast(@myear as varchar(10))+') AND (Rc.OrgID = '+
cast(@OrgID as varchar(10))+') '

if @SecretariatID>0 
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'
else 
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'

set @rw=@rw+' AND (ltrim(isnull(DeadLineDate,''''))<>'''' and  ltrim(isnull(DeadLineDate,''''))<= '''+@deadlineDate+''')' 



set @sql=' SELECT count( *)
FROM ReCommites RC 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
 '

set @sql=@sql+@rW



exec sp_executesql  @sql
GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_makeField]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO























CREATE procedure  [dbo].[sp_delphi_makeField](@spN varchar(50) )
as
declare @spname varchar(100),@colname varchar(100)
declare spc cursor for  
  SELECT     name 
  FROM         sysobjects
  WHERE     (xtype = 'u') AND (status >=0)
     and (isnull(@spn,'')='' or name like @spn+'%') 

open  spc 
fetch next from spc into @spname


 while @@Fetch_Status=0 
  begin
  set @spname=substring(@spname,5,64)
  print 'object Get_ltr_Letter'+@spname+'Title: TStringField
  FieldKind = fkLookup
  FieldName = '''+@spname+'Title''
  LookupDataSet = ref_'+@spname+'
  LookupKeyFields = '''+@spname+ 'ID''
  LookupResultField = '''+@spname+'Title''
  KeyFields = '''+@spname+'ID''
  Lookup = True
end'
    fetch next from spc into @spname
end
 close spc
 deallocate spc






















GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_makeproce]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

























CREATE procedure  [dbo].[sp_delphi_makeproce](@spN varchar(50) )
as
declare @spname varchar(100),@colname varchar(100)
declare spc cursor for  
  SELECT     name 
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
     and (isnull(@spn,'')='' or name=@spn) 

open  spc 
fetch next from spc into @spname


 while @@Fetch_Status=0 
  begin
    print 'object '+@spname +': TADOStoredProc'
    print 'ProcedureName = '''+@spname+''''
    print 'end'

    print 'object D'+@spname +': TDataSource'
    print 'DataSet = '+@spname
    print 'end'
    fetch next from spc into @spname
end
 close spc
 deallocate spc






















GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_makeTable]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO























CREATE procedure  [dbo].[sp_delphi_makeTable](@spN varchar(50) )
as
declare @spname varchar(100),@colname varchar(100)
declare spc cursor for  
  SELECT     name 
  FROM         sysobjects
  WHERE     (xtype = 'u') AND (status >= 0)
     and (isnull(@spn,'')='' or name like @spn+'%') 

open  spc 
fetch next from spc into @spname


 while @@Fetch_Status=0 
  begin
    print 'object '+@spname +': TADOTable'
    print 'TableName = '''+@spname+''''
    print 'end'
    fetch next from spc into @spname
end
 close spc
 deallocate spc






















GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_proceByName]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
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
         and (isnull(@spn,'')='' or name=@spn) 


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
    set @line1='Procedure  Exec'+@spname+'(';
    set @line2='';


    while @@Fetch_Status=0 
     begin
      if @colname='type' set @colname='_Type'
      set @line1=@line1+@colname+':'+@spType+';'
      set @line2=@line2+'      ParamByName(''@'+ @colname+''').value:='+@colName+';
'
    fetch next from spcol into @colname,@spType
     end

    SET @ALL= @line1+');
Tdm.'+@line1+');
  begin 
  with ' + @spname +',parameters do 
     begin
       Close;
' + @LINE2+'
      ExecProc;
   end; 
end;'
PRINT Replace(REPLACE(@all,';;',';'),';)',')')
  close spcol
  deallocate spcol
  set @id=@id+1
 end





















GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_procecreate]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
















CREATE  procedure  [dbo].[sp_delphi_procecreate] (@spN varchar(50) )
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
/****** Object:  StoredProcedure [dbo].[sp_distinctDate]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE   PROCEDURE [dbo].[sp_distinctDate] 
as
 declare @today char(10),@dw tinyint
 set @today=dbo.shamsi(getdate())
 set @dw=datepart(dw,getdate())
 select * from 
 HistoryDateList(@today ,@dw) 
 order by id





























GO
/****** Object:  StoredProcedure [dbo].[sp_FieldByTableCode]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
























create PROCEDURE [dbo].[sp_FieldByTableCode]
 @tableid int
as
select *
from fields
where tableid=@tableid
























GO
/****** Object:  StoredProcedure [dbo].[sp_GetDispatchedRecommites]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create procedure [dbo].[sp_GetDispatchedRecommites](@OrgID INT, @FromMe BIT , @ForMe BIT,@type bit=0)
	AS
	BEGIN
		DECLARE @userID INT
		if @type=0
		begin

			SELECT @userID = ID  FROM Users WHERE FromOrgID = @OrgID
			SET @userID = ISNULL(@userID, 0)
			SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph,
				r.OrgID, r.UserID, usender.title + ' - ' + foSender.title + '  ' + foSender.ResponsibleStaffer  as SenderDesc
				, uReceiver.title + ' - ' + foReceiver.title + '  ' + foReceiver.ResponsibleStaffer  as ReceiverDesc
			  , (CASE WHEN r.OrgID = @OrgID THEN ISNULL(usender.title,'') + ' - ' + ISNULL(foSender.title,'') + '  ' + ISNULL(foSender.ResponsibleStaffer,'')
						ELSE ISNULL(uReceiver.title,'') + ' - ' + ISNULL(foReceiver.title,'') + '  ' + ISNULL(foReceiver.ResponsibleStaffer,'') end) AS TarafErja
			,l.UserMemo customField1,l.UserMemo1 customField2,l.UserMemo2 customField3,uSender.Title senderTitle, uReceiver.Title receiverTitle,r.RecommiteDate
			FROM recommites R
			INNER JOIN letter AS  l ON l.LetterID=r.LetterID
			left JOIN users as uSender ON r.UserID = usender.Id
			left JOIN FromOrganizations AS  foSender ON usender.FromOrgID = foSender.ID
			left JOIN FromOrganizations as foReceiver ON r.OrgID = foReceiver.ID
			left JOIN users as uReceiver  ON foReceiver.ID = uReceiver.FromOrgID
			WHERE	(r.OrgID= @OrgID AND @ForMe = 1) OR (r.UserID = @UserID AND @FromMe = 1)	
		end
		else
		begin
			SELECT @userID = ID  FROM Users WHERE FromOrgID = @OrgID
			SET @userID = ISNULL(@userID, 0)
			SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph,
				r.OrgID, r.UserID, usender.title + ' - ' + foSender.title + '  ' + foSender.ResponsibleStaffer  as SenderDesc
				, uReceiver.title + ' - ' + foReceiver.title + '  ' + foReceiver.ResponsibleStaffer  as ReceiverDesc
			  , (CASE WHEN r.OrgID = @OrgID THEN ISNULL(usender.title,'') + ' - ' + ISNULL(foSender.title,'') + '  ' + ISNULL(foSender.ResponsibleStaffer,'')
						ELSE ISNULL(uReceiver.title,'') + ' - ' + ISNULL(foReceiver.title,'') + '  ' + ISNULL(foReceiver.ResponsibleStaffer,'') end) AS TarafErja
			,l.UserMemo customField1,l.UserMemo1 customField2,l.UserMemo2 customField3,uSender.Title senderTitle, uReceiver.Title receiverTitle,r.RecommiteDate
			FROM recommites R
			INNER JOIN letter AS  l ON l.LetterID=r.LetterID
			left JOIN users as uSender ON r.UserID = usender.Id
			left JOIN FromOrganizations AS  foSender ON usender.FromOrgID = foSender.ID
			left JOIN FromOrganizations as foReceiver ON r.OrgID = foReceiver.ID
			left JOIN users as uReceiver  ON foReceiver.ID = uReceiver.FromOrgID
		end
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFromHelp]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_GetFromHelp] 
@Formtag int
as
select htmlHelp
from FormsHelp
where formTag=@formtag









GO
/****** Object:  StoredProcedure [dbo].[sp_GetLetterWordText]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_GetLetterWordText]
@IndicatorID int,
@SecID tinyint,
@myear tinyint,
@LetterFormat tinyint
 AS
SELECT     *
FROM         LetterWordText
WHERE     (IndicatorID =@IndicatorID ) AND (SecretariatID = @SecID) AND (Myear = @myear) and (LetterFormat=@LetterFormat)





GO
/****** Object:  StoredProcedure [dbo].[sp_GetTermCode]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_GetTermCode](@today char(10)) 
AS
declare @Code char(3)
select top 1 @code=code
from behdasht..lt53 
where  '1383/12/12' between bdate and edate
order by 1 desc


if @code is null 
select top 1 @code=code
from behdasht..lt53 
order by 1 desc






GO
/****** Object:  StoredProcedure [dbo].[sp_Import_Document]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---------------------------------
--//Last Update Sanaye 94-10-03//
---------------------------------
CREATE PROCEDURE [dbo].[sp_Import_Document] 
@canInsert bit,
@canEdit bit,
@year tinyint,
@secID tinyint,
@docNo nvarchar(50),
@docDate nvarchar(10),
@docSubject nvarchar(100),
@docSummery nvarchar(2000),
@classification nvarchar(50),
@customField1 nvarchar(255),
@customField2 nvarchar(255),
@customField3 nvarchar(255),
@FormID int,
@UserID int,
@FormField1 nvarchar(255)=NULL,
@FormField2 nvarchar(255)=NULL,
@FormField3 nvarchar(255)=NULL,
@FormField4 nvarchar(255)=NULL,
@FormField5 nvarchar(255)=NULL,
@FormField6 nvarchar(255)=NULL,
@FormField7 nvarchar(255)=NULL,
@FormField8 nvarchar(255)=NULL,
@FormField9 nvarchar(255)=NULL,
@FormField10 nvarchar(255)=NULL,
@FormField11 nvarchar(255)=NULL,
@FormField12 nvarchar(255)=NULL,
@FormField13 nvarchar(255)=NULL,
@FormField14 nvarchar(255)=NULL,
@FormField15 nvarchar(255)=NULL,
@FormField16 nvarchar(255)=NULL,
@FormField17 nvarchar(255)=NULL,
@FormField18 nvarchar(255)=NULL,
@FormField19 nvarchar(255)=NULL,
@FormField20 nvarchar(255)=NULL
AS
	declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
	declare @docID int
	declare @claID tinyint
	declare @subjID int
	declare @indicatorID int
	set @docID = -1
    --------------------------------------------------------------------------------------------------------------	
	select @docID= LetterID From  Letter where IncommingNO = @docNo and MYear = @year and SecretariatID = @secID
	--------------------------------------------------------------------------------------------------------------
	if @docID>0 
	begin
		if @canEdit=1 
		begin
			------------------------------------Edit Document-----------------------------------------------------
			set @claID =1 --عادي
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			update Letter set 
				Incommingdate = @docDate , Memo = @docSummery, 
				UserMemo = @customField1, UserMemo1 = @customField2, UserMemo2 = @customField3,
				ClassificationID = @claID, ToOrgID = @subjID
			where LetterID = @docID
			------------------------------------------------------------------------------------------------------
			set @result = 1
		end
		else
			set @result = -1	
	end
	else 
	begin
		if @canInsert=1 
		begin
			-------------------------------------Insert Document--------------------------------------------------
			set @claID =1 --عادي
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			select @indicatorID = ISNULL(Max(indicatorID),0)+1 FROM Letter Where MYear = @Year and SecretariatID = @SecID
			insert into Letter(IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,FromOrgID,UserID,
						ToOrgID,ClassificationID,UrgencyID,Memo,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,
						RegistrationDate,RegistrationTime,LastUpdate,SendStatusID,Finalized,
						UserMemo,UserMemo1,UserMemo2)
				 values(@indicatorID,@year,@secID,1,1,@docNo,@docDate,-1,@UserId,
						@subjID,@claID,1,@docSummery,1,1,1,
						dbo.shamsi(getdate()),LEFT(RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7),5),getdate(),1,1,
						@customField1,@customField2,@customField3)
			SELECT @docID=SCOPE_IDENTITY()
			------------------------------------------------------------------------------------------------------
			set @result = 2
		end
		else
			set @result = -2
	end
	
	if @result>0
		if @docID>0
			if @FormID>0
			begin
				----------------------------------------------------------
				update Letter set UserTableID = @FormID	where LetterID = @docID
				
				insert into  LetterFieldValue(letterid,FieldID)
					select @docID,ID
					from Fields
					where tableid=@FormID and id not in (select FieldID from LetterFieldValue where Letterid=@docID)
				
				CREATE TABLE #tmpFields
				(
					ord INT,
					val nvarchar(255)
				)

				INSERT INTO #tmpFields
					select 1,@FormField1 union 
					select 2,@FormField2 union
					select 3,@FormField3 union 
					select 4,@FormField4 union
					select 5,@FormField5 union 
					select 6,@FormField6 union
					select 7,@FormField7 union 
					select 8,@FormField8 union
					select 9,@FormField9 union 
					select 10,@FormField10 union
					select 11,@FormField11 union 
					select 12,@FormField12 union
					select 13,@FormField13 union 
					select 14,@FormField14 union
					select 15,@FormField15 union 
					select 16,@FormField16 union
					select 17,@FormField17 union 
					select 18,@FormField18 union
					select 19,@FormField19 union 
					select 20,@FormField20 
				
				declare @FieldID int ,@ord int, @FTypeID tinyint,@LFVID int 

				DECLARE cr CURSOR FOR  
					select ID,fieldTypeID,ROW_NUMBER() OVER (ORDER BY [Order]) AS Row from Fields where TableID = @FormID order by [order] 

				OPEN cr  
				FETCH NEXT FROM cr INTO @FieldID,@FTypeID,@ord  

				WHILE @@FETCH_STATUS = 0  
				BEGIN
					select @LFVID = LetterFieldValueID from LetterFieldValue where FieldID = @FieldID and LetterID=@docID
					if @FTypeID = 5   
						update LetterFieldValue set FieldValue = (case when val IN('T','1','بله','true','yes') then 1 else 0 end) from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					if @FTypeID = 6
					begin
						declare @intval int, @refTblID int
						declare @strVal nvarchar(255)
						
						--select @refTblID=ReferenceTableID from Fields where ID = @FieldID farzad
						select @refTblID= TableID from Fields where ID = @FieldID 
						
						select @strVal = val from #tmpFields where ord = @ord 
						
						set @intval = 0
						
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						if @intval = 0 
							insert into ReferenceTableData(TableID,DataID,DataTitle)
							values(@refTblID,(select ISNULL(MAX(dataid)+1,0) from ReferenceTableData where TableID = @refTblID),ISNULL(@strVal,''))
							
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						update LetterFieldValue set FieldValue = CONVERT(VARCHAR, @intval) 
						where  LetterFieldValueID=@LFVID
					end
					else
						update LetterFieldValue set FieldValue = val from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					FETCH NEXT FROM cr INTO @FieldID,@FTypeID,@ord  
				END  
	
				CLOSE cr  
				DEALLOCATE cr  
				----------------------------------------------------------
			end
	select @result
GO
/****** Object:  StoredProcedure [dbo].[sp_Import_Other_Fields]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Import_Other_Fields] 
@year tinyint,
@secID tinyint,
@docNo nvarchar(50),
@FormID int,
@FiledsPage int,
@FormField1 nvarchar(255)=NULL,
@FormField2 nvarchar(255)=NULL,
@FormField3 nvarchar(255)=NULL,
@FormField4 nvarchar(255)=NULL,
@FormField5 nvarchar(255)=NULL,
@FormField6 nvarchar(255)=NULL,
@FormField7 nvarchar(255)=NULL,
@FormField8 nvarchar(255)=NULL,
@FormField9 nvarchar(255)=NULL,
@FormField10 nvarchar(255)=NULL,
@FormField11 nvarchar(255)=NULL,
@FormField12 nvarchar(255)=NULL,
@FormField13 nvarchar(255)=NULL,
@FormField14 nvarchar(255)=NULL,
@FormField15 nvarchar(255)=NULL,
@FormField16 nvarchar(255)=NULL,
@FormField17 nvarchar(255)=NULL,
@FormField18 nvarchar(255)=NULL,
@FormField19 nvarchar(255)=NULL,
@FormField20 nvarchar(255)=NULL
AS
	declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
	declare @docID int
	declare @claID tinyint
	declare @subjID int
	declare @indicatorID int
	set @docID = -1
    --------------------------------------------------------------------------------------------------------------	
	select @docID= LetterID From  Letter where IncommingNO = @docNo and MYear = @year and SecretariatID = @secID
	--------------------------------------------------------------------------------------------------------------
		if @docID>0
			if @FormID>0
			begin
				----------------------------------------------------------
				CREATE TABLE #tmpFields
				(
					ord INT,
					val nvarchar(255)
				)

				INSERT INTO #tmpFields
					select 1+ 20*@FiledsPage,@FormField1 union 
					select 2+ 20*@FiledsPage,@FormField2 union
					select 3+ 20*@FiledsPage,@FormField3 union 
					select 4+ 20*@FiledsPage,@FormField4 union
					select 5+ 20*@FiledsPage,@FormField5 union 
					select 6+ 20*@FiledsPage,@FormField6 union
					select 7+ 20*@FiledsPage,@FormField7 union 
					select 8+ 20*@FiledsPage,@FormField8 union
					select 9+ 20*@FiledsPage,@FormField9 union 
					select 10+20*@FiledsPage,@FormField10 union
					select 11+20*@FiledsPage,@FormField11 union 
					select 12+20*@FiledsPage,@FormField12 union
					select 13+20*@FiledsPage,@FormField13 union 
					select 14+20*@FiledsPage,@FormField14 union
					select 15+20*@FiledsPage,@FormField15 union 
					select 16+20*@FiledsPage,@FormField16 union
					select 17+20*@FiledsPage,@FormField17 union 
					select 18+20*@FiledsPage,@FormField18 union
					select 19+20*@FiledsPage,@FormField19 union 
					select 20+20*@FiledsPage,@FormField20 
				
				declare @FieldID int ,@ord int, @FTypeID tinyint,@LFVID int 

				DECLARE cr CURSOR FOR  
					select ID,fieldTypeID,ROW_NUMBER() OVER (ORDER BY [Order]) AS Row from Fields where TableID = @FormID order by [order] 

				OPEN cr  
				FETCH NEXT FROM cr INTO @FieldID,@FTypeID,@ord  

				WHILE @@FETCH_STATUS = 0  
				BEGIN
					select @LFVID = LetterFieldValueID from LetterFieldValue where FieldID = @FieldID and LetterID=@docID
					if @FTypeID = 5   
						update LetterFieldValue set FieldValue = (case when val IN('T','1','بله','true','yes') then 1 else 0 end) from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					if @FTypeID = 6
					begin
						declare @intval int, @refTblID int
						declare @strVal nvarchar(255)
						select @refTblID=ReferenceTableID from Fields where ID = @FieldID
						
						select @strVal = val from #tmpFields where ord = @ord 
						
						set @intval = 0
						
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						if @intval = 0 
							insert into ReferenceTableData(TableID,DataID,DataTitle)
							values(@refTblID,(select MAX(dataid)+1 from ReferenceTableData where TableID = @refTblID),@strVal)
							
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						update LetterFieldValue set FieldValue = CONVERT(VARCHAR, @intval) 
						where  LetterFieldValueID=@LFVID
					end
					else
						update LetterFieldValue set FieldValue = val from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					FETCH NEXT FROM cr INTO @FieldID,@FTypeID,@ord  
				END  
	
				CLOSE cr  
				DEALLOCATE cr  
				----------------------------------------------------------
			end
	select @result
GO
/****** Object:  StoredProcedure [dbo].[sp_inbox]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[sp_inbox] 
@SecretariatID int, @LetterFormat tinyint,@OrgID int,
@Proceeded bit,@Type tinyint,@myear tinyint,@date tinyint,@ArchiveFolderID int ,@where nvarchar(1000), 
@userID int,@Letter_Type int,@DeadLine int 
as

declare 
@sql nvarchar (4000),
@rw nvarchar(2000),
@Today char(10),
@deadlineDate char(10)

select @today=dbo.shamsi(getdate())

if @DeadLine between -1 and 30 
  set @deadlineDate=dbo.ShamsiIncDate(@today,0,0,@DeadLine)



set @RW='WHERE   (l.LetterFormat ='+cast( @LetterFormat as varchar(2))+') AND (Rc.OrgID = '+
cast(@OrgID as varchar(10))+') AND (Rc.Proceeded = '+cast(@Proceeded as varchar(2))+')
  and  L.myear='+cast(@myear as varchar(10))


if @letter_Type>0 
set @rw=@rw+' AND (l.letter_Type = '+cast(@Letter_Type as varchar(2))+')'

if @type>0 
set @rw=@rw+' AND (Rc.Type = '+cast(@Type as varchar(2))+')'

if @ArchiveFolderID>0 
set @rw=@rw+' AND (ArchiveFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'

if @date<>0
begin
 declare @dw tinyint,@bdate char(10),@edate char(10)
 set @dw=datepart(dw,getdate())
 select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@date
 set @rw=@rw+' AND (RC.RecommiteDate between '''+@bdate+''' and '''+@edate+''')'
end

if @SecretariatID>0 
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'
else 
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'

if @DeadLine between -1 and 30 
 set @rw=@rw+' AND (ltrim(isnull(rc.DeadLineDate,''''))<>'''' and  ltrim(isnull(rc.DeadLineDate,''''))<= '''+@deadlineDate+''')' 



set @sql=' SELECT top 100 l.*,DBO.INNERNO(L.Letterid)  InnerNo, PRC.OrgID,  RC.ParentId,  RC.Paraph, RC.RecommiteDate,  RC.Proceeded,
 RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,
case when fo.title is null then 0 else 1 end IsInner, isnull(FO.Title,TTO.title) RecommiterTitle,tto.title sendertitle,rc.recommiteid,
 rc.id, RC.ViewDate, RC.StaffMemo,
dbo.Recommite_FirstView( Rc.RecommiteID) FirstView,
isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy
,dbo.has_Page(l.letterid) has_Page,
dbo.has_WordPage(l.letterid) has_WordPage,
dbo.has_file(l.letterid) has_file
FROM ReCommites RC 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID 
left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID 
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '

if @archiveFolderID<>0  
set @sql=@sql+' 
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=l.LetterID '

set @sql=@sql+@rW


set @where=isnull(ltrim(rtrim(@where)),'')
if (@where<>'') 
select @sql=@sql+' and '+@where

set @sql=@sql+' order by rc.recommitedate desc,l.indicatorid desc'
exec sp_executesql  @sql
PRINT @sql



GO
/****** Object:  StoredProcedure [dbo].[sp_Letter_Numbers]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














CREATE procedure [dbo].[sp_Letter_Numbers]
@bdate char(10),@edate Char(10),
@receivedNum int output,
@SentNum int output,
@recommitesNum int output,
@SecID int
as
set @receivedNum=0
set @SentNum=0
set @recommitesNum=0

select @receivedNum=count(*) from Letter where registrationdate between @bdate and @edate and (secretariatid=@SecID or @SecID=0) and Letter_type=1
select @SentNum=count(*) from Letter where registrationdate between @bdate and @edate and (secretariatid=@SecID or @SecID=0) and Letter_type=2
select @recommitesNum=count(*)-@SentNum-@receivedNum from ReCommites
inner join letter on letter.letterid=ReCommites.LetterId where ReCommitedate between @bdate and @edate and (secretariatid=@SecID or @SecID=0)





















GO
/****** Object:  StoredProcedure [dbo].[sp_makeRecommited]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





create  proc [dbo].[sp_makeRecommited]
@RecommiteID int ,
@staffmemo nvarchar(255), 
@ProceedDate char(10)
as
UPDATE    ReCommites
SET               Proceeded =1, staffmemo =@staffmemo, ProceedDate =@ProceedDate
WHERE     (RecommiteID = @RecommiteID) 






GO
/****** Object:  StoredProcedure [dbo].[sp_Recommites_Number]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
























create procedure [dbo].[sp_Recommites_Number]
@bdate char(10),@edate Char(10) as
SELECT     Title,
 sum(case when Proceeded=1 then 1 else 0 end) as Proceed,
sum(case when Proceeded=0 then 1 else 0 end) as NotProceed, 
sum(case when Proceeded=1 then dbo.ShamsiDateDiff(RecommiteDate, ProceedDate) else 0 end) SumProceed into #m
FROM         ReCommites INNER JOIN
                      FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID
WHERE     (RecommiteDate BETWEEN @bdate AND @edate)
group by title

SELECT     *,case when Proceed>0 then  round(cast(SumProceed as float)/Proceed,2)  else 0 end as avgProceed
FROM         #m























GO
/****** Object:  StoredProcedure [dbo].[sp_ReindexTables]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_ReindexTables]
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
    set @sql='dbcc dbreindex( ['+@name+'] )'
    print @sql+'...'
    exec sp_executesql @SQL        
   fetch next from Main_Cursor into @Name
  end 

 close Main_Cursor
 deallocate Main_Cursor















GO
/****** Object:  StoredProcedure [dbo].[sp_SearchArchive]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sp_SearchArchive]
		@TOP int = 100, @MYEAR int = 0, @SecID int = 0, @INDICATORID int = 0, @INCOMMINGNO nvarchar(50) = '', 
		@FROMDATE nvarchar(10) = '', @TODATE nvarchar(10) = '', @MEMO nvarchar(500) = '', 
		@USERFIELD1 nvarchar(500) = '', @USERFIELD2 nvarchar(500) = '', @USERFIELD3 nvarchar(500) = '', @ArchiveUserID INT = 0
AS
SELECT  TOP (@TOP) Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID, 
		Letter.IncommingNO, Letter.FromOrgID, Letter.IncommingDate, Letter.ToOrgID, Letter.Memo, 
		Letter.RegistrationDate, sender.Title AS SenderTitle, Deliver.Title AS DeliverTitle,
		dbo.InnerNo(Letter.LetterID) AS InnerNo, Users.Title AS UserTitle, 
		Letter.UserMemo, Letter.UserMemo1, Letter.UserMemo2  
FROM	Letter               
		LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID            
		LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
		LEFT JOIN sendstatus ON sendstatus.sendstatusID=Letter.sendstatusID  
		INNER JOIN users ON Users.ID = Letter.UserID
WHERE   LetterFormat = 1 
		AND (MYear = @MYEAR OR @MYEAR = 0 OR @MYEAR IS NULL)
		AND (SecretariatID IN(select secid from UserSecretariats where userid=@ArchiveUserID))
		AND (IndicatorID = @INDICATORID OR @INDICATORID = 0 OR @INDICATORID IS NULL)
		AND (IncommingNO like '%'+@INCOMMINGNO+'%' OR @INCOMMINGNO = '' OR @INCOMMINGNO IS NULL)
		AND (IndicatorID = @INDICATORID OR @INDICATORID = 0 OR @INDICATORID IS NULL)
		AND ((Incommingdate >= @FROMDATE)OR(RegistrationDate >= @FROMDATE)OR(LTRIM(@FROMDATE) = '')OR(@FROMDATE IS NULL))
		AND ((Incommingdate <= @TODATE)OR(RegistrationDate <= @TODATE)OR(LTRIM(@TODATE) = '')OR(@TODATE IS NULL))
		AND (Memo like '%'+@MEMO+'%' OR @MEMO = '' OR @MEMO IS NULL)
		AND (UserMemo like '%'+@USERFIELD1+'%' OR @USERFIELD1 = '' OR @USERFIELD1 IS NULL)
		AND (UserMemo1 like '%'+@USERFIELD2+'%' OR @USERFIELD2 = '' OR @USERFIELD2 IS NULL)
		AND (UserMemo2 like '%'+@USERFIELD3+'%' OR @USERFIELD3 = '' OR @USERFIELD3 IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_UserAccArchive]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Sp_Sel_UserAccArchive] @userID int  , @ArchiveCenterID INT, @SecID INT   
As      
BEGIN
	Select *      
	From UserAccArchive      
	Where(UserID = @userID)      
	And(ArchiveCenterID = @ArchiveCenterID)
	AND(SecID = @SecID)	
END      
GO
/****** Object:  StoredProcedure [dbo].[Sp_SetAccessToArchiveFolder]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
CREATE Procedure [dbo].[Sp_SetAccessToArchiveFolder] @ArchiveFolderID INT
As   
/*براي تمامي كاربران UserAccArchive دادن دسترسي به زونكن جديد در جدول*/   
Declare @UserID int    
Declare @ArchiveCenterID int
Select @ArchiveCenterID = ArchiveCenterID From ArchiveFolder Where FolderID = @ArchiveFolderID     

Declare Cu_Users Cursor For    
Select ID from Users    
    
Open Cu_Users     
Fetch Next From Cu_Users Into @UserID    
While @@FETCH_STATUS = 0    
begin    

declare @SecID int

SELECT @SecID = DefualtSecretariatID FROM users WHERE Id = @UserID
     
Insert Into UserAccArchive(UserID, ArchiveCenterID, ArchiveFolderID, ISAccess, SecID)     
Values(@UserID,@ArchiveCenterID,@ArchiveFolderID,1, @SecID)
/*Select @UserID , AF.ArchiveCenterID , AF.FolderID , 1       
From Secretariats Se , ArchiveCenter AC , ArchiveFolder AF    
Where(AF.FolderID = @ArchiveFolderID)    
And(Se.ArchiveCenterID = AC.ArchiveCenterID)    
And(AC.ArchiveCenterID = AF.ArchiveCenterID)    */
    
Fetch Next From Cu_Users Into @UserID    
end    
Close Cu_Users    
Deallocate Cu_Users
GO
/****** Object:  StoredProcedure [dbo].[sp_SetForeinKey]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_SetForeinKey]
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
/****** Object:  StoredProcedure [dbo].[sp_Statistic]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO












CREATE  procedure [dbo].[sp_Statistic]
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@archiveFolderID int,@GroupBy int
as 

set @where= case when isnull(ltrim(rtrim(@where)),'')<>'' then
                          'where len(registrationdate)=10 and '+@where else ' where len(registrationdate)=10' end

if @Letter_Type<>0 
  set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'

if @Secretariatid<>0 
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0 
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if @LetterFormat<>0 
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'

--if @archiveFolderID<>0   set @where=@where+' and (@archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'


declare @sql nvarchar(4000),@select  varchar(500),@joins varchar(500)



set @joins =case when @groupby<8         then ' '
                             when @groupby=8 then 'L left JOIN Classifications ON L.ClassificationID = Classifications.ID '                     
                             when @groupby=9 then 'l left JOIN Urgenceis ON L.UrgencyID = Urgenceis.ID '                     
                             when @groupby=10 then 'l left JOIN  Fromorganizations  ToOrganizations ON L.ToOrgID = ToOrganizations.ID '
                             when @groupby=11 then 'l left JOIN  Fromorganizations   ON L.FromOrgID = Fromorganizations.ID '   
                             when @groupby=12 then 'l left JOIN  users   ON L.userid = users.ID '   end

           


declare @Field varchar(100)
set @field= case @groupby 
                         when 1  then 'registrationdate '
                          when 2  then 'dbo.ShamsiDayOfWeek(registrationdate) '
                          when 3  then 'substring(registrationdate,6,2) '
                          when 4  then 'dbo.fasl(registrationdate) '
                          when 5  then 'substring(registrationdate,1,4) '
                          when 6  then 'substring(registrationTime,1,2) '
                          when 7  then 'dbo.pm(registrationtime) '
                          when 8  then 'Classifications.Title '
                          when 9  then 'Urgenceis.Title '
                          when 10 then 'ToOrganizations.title ' 
                          when 11 then 'FromOrganizations.title ' 
                          when 12 then 'users.title ' end

set @select ='select '+@field+' ,count(1)  from letter '

create table ##s(id int identity(1,1),title nvarchar(255),number int)


set @sql=' insert  into ##s(title,number) '+@select+  @joins+@where+
+'group by '+@field +' order by 2 desc '

exec(@sql)

if @groupby in (1,10,11)
 begin
   declare @c int,@d int
   select  @d=number from ##s where id=50 
   set @d=isnull(@d,0)
   select @c=sum(number) from ##s where number<=@d
   delete from ##s where number<=@d
   set  IDENTITY_INSERT ##s On
   insert into ##s(id,title,number) values(50,'ساير ',@c)
 end
  
 
create table #s(id int identity(1,1),title nvarchar(255),number int)

insert into #s(title,number)
select title,number from ##s order by title

select cast(id as int) id ,title,number
from #s
order by title

drop table ##s
GO
/****** Object:  StoredProcedure [dbo].[Update_all_recommites]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[Update_all_recommites] AS
declare @i int
set @i=1
update letter
set letterRecommites=FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=1 and type=3


while @i<16
 begin
set @i=@i+1
update letter
set letterRecommites=letterRecommites+','+FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=@i  and type=3


update letter
set letterRecommites=letterRecommites+','+FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=@i-1 and type=2

update letter
set letterRecommites=letterRecommites+','+FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=@i-1 and type=1
end








GO
/****** Object:  StoredProcedure [dbo].[update_ArchiveFolder]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[update_ArchiveFolder]
	(@FolderID 	[int],
	 @Title 	[nvarchar](100),
	 @Notes 	[nvarchar](500),
 @Place nvarchar(100))

AS UPDATE [dbo].[ArchiveFolder] 

SET  [Title]	 = @Title,
	 [Notes]	 = @Notes,
 Place=@Place

WHERE 
	( [FolderID]	 = @FolderID)
GO
/****** Object:  StoredProcedure [dbo].[update_FromOrganizations_Title]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE procedure [dbo].[update_FromOrganizations_Title](@ID INT, @Newtitle nVARCHAR(200),@NewResponsibleStaffer nvarchar(100),@newID int output)
as
insert into FromOrganizations(Title, ParentID, Phone, Fax, Email, ResponsibleStaffer, IsActive, PreCode, IsInnerOrg, Code)
select @Newtitle, ParentID, Phone, Fax, Email, @NewResponsibleStaffer, IsActive, PreCode, IsInnerOrg, Code
from FromOrganizations
where ID=@ID

set @newID=@@identity

Update FromOrganizations
set Isactive=0,Code='_'+Code
where ID=@ID



Update FromOrganizations
set ParentId=@newID
where ParentId=@ID










GO
/****** Object:  StoredProcedure [dbo].[update_Letter_Indicator]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO












CREATE PROCEDURE [dbo].[update_Letter_Indicator]
	(@LetterID 	[int],
	 @NewIndicatorID 	[int],
	 @NewSecretariatID 	[tinyint],
	 @NewLetter_Type 	[tinyint],
	 @Newletterformat 	[tinyint],
	 @NewRegistrationDate 	[char](10),@Updated bit output)

AS
declare @myear int
select @myear=myear
from letter 
where ( [LetterID]	 = @LetterID)


set @updated=1


if not exists (SELECT   *  
FROM         Letter
WHERE     (IndicatorID = @NewIndicatorID) AND (MYear = @myear) AND (SecretariatID = @NewSecretariatID) AND (Letter_Type = @NewLetter_Type) AND (letterformat = @Newletterformat))
 UPDATE [dbo].[Letter] 

SET  [IndicatorID]	 = @NewIndicatorID,
	 [SecretariatID]	 = @NewSecretariatID,
	 [Letter_Type]	 = @NewLetter_Type,
	 [letterformat]	 = @Newletterformat,
	 [RegistrationDate]	 = @NewRegistrationDate 

WHERE 
	( [LetterID]	 = @LetterID)
else 
set @updated=0











GO
/****** Object:  StoredProcedure [dbo].[update_LetterText]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create PROCEDURE [dbo].[update_LetterText]
	(@LetterID  	int,
	 @TypeText   	[nvarchar](4000))

AS UPDATE [dbo].[LetterText] 

SET 	 [TypeText]	 = @TypeText 

WHERE 
	( LetterID = @LetterID  )






GO
/****** Object:  StoredProcedure [dbo].[update_ReCommites_proceed]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



























CREATE PROCEDURE [dbo].[update_ReCommites_proceed]
	(@RecommiteID int,
	 @Proceeded 	[bit],
	 @ProceedDate 	[nvarchar](10))

AS UPDATE [dbo].[ReCommites] 


SET  [Proceeded]	 = @Proceeded,
	 [ProceedDate]	 = @ProceedDate 

WHERE 
	( RecommiteID	 = @RecommiteID)



GO
/****** Object:  StoredProcedure [dbo].[update_ReCommites_viewDate]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE PROCEDURE [dbo].[update_ReCommites_viewDate]
	(@RecommiteID int,
	 @ViewDate 	[char](10))

AS UPDATE [dbo].[ReCommites] 

SET  	 ViewDate=@ViewDate


WHERE 
	( RecommiteID	 = @RecommiteID)








GO
/****** Object:  StoredProcedure [dbo].[update_UserLoginLogout]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[update_UserLoginLogout]
	( @UserLoginLogoutID	[int],
	 @isSafeLogout 	[bit])

AS
 UPDATE [dbo].[UserLoginLogout] 

SET          [LogoutTime]	 = getdate(),
	 [isSafeLogout]	 = @isSafeLogout 

WHERE 	( [UserLoginLogoutID]	 = @UserLoginLogoutID)







GO
/****** Object:  StoredProcedure [dbo].[UserChange_pass]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE  PROCEDURE [dbo].[UserChange_pass] (@userID int,@newPass nvarchar(100) )
	AS
	update users
	set password=@newPass,
		ChangeByAdmin=0
	where id=@userid 
GO
/****** Object:  StoredProcedure [dbo].[UserLog_Report]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[UserLog_Report] 
AS
SELECT     Users.Title AS usertitle, Actions.Title AS actiontitle, UserLog.Time1 AS Time, Letter.IndicatorID, LetterTypes.Title AS Letter_type
FROM         UserLog INNER JOIN
                      Users ON UserLog.UserID = Users.Id INNER JOIN
                      Actions ON UserLog.ActionID = Actions.ID LEFT OUTER JOIN
                      Letter ON UserLog.LetterID = Letter.LetterID LEFT OUTER JOIN
                      LetterTypes ON Letter.Letter_Type = LetterTypes.ID
ORDER BY LetterTypes.Title




GO
/****** Object:  StoredProcedure [dbo].[ysp_Backup]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
















create procedure [dbo].[ysp_Backup](@dbname nvarchar(50),@path nvarchar(255))
 as
Exec('backup database '+@dbname+' to disk='''+@path+'''')

















GO
/****** Object:  StoredProcedure [dbo].[Ysp_create_Temp_Database]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------ ----------------------------------------------------------------------------
------


CREATE proc [dbo].[Ysp_create_Temp_Database](@Path nvarchar(255))
as
declare @sql nvarchar(1000)
set @sql=
'CREATE DATABASE [yeganeh_tmp_db]  ON PRIMARY (NAME = N''yeganeh_tmp_db_Data'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Data.MDF'' ,
 SIZE = 5120kb, FILEGROWTH = 10%)
 LOG ON (NAME = N''yeganeh_tmp_db_Log'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Log.LDF'' , SIZE = 5120kb, FILEGROWTH = 10%)'

exec master..sp_executesql  @sql
GO
/****** Object:  StoredProcedure [dbo].[ysp_DELETE_Temp_Database]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[ysp_DELETE_Temp_Database]
AS
if exists (SELECT name
FROM master.dbo.sysdatabases
WHERE name = 'yeganeh_tmp_db')
drop database [yeganeh_tmp_db]








GO
/****** Object:  StoredProcedure [dbo].[ysp_exists_Temp_Database]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[ysp_exists_Temp_Database](@exists bit output)
AS
if exists (SELECT name
FROM master.dbo.sysdatabases
WHERE name = 'yeganeh_tmp_db')
  set @exists=1  else set @exists=0









GO
/****** Object:  StoredProcedure [dbo].[ysp_shrink]    Script Date: 18/07/1403 05:19:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE PROCEDURE [dbo].[ysp_shrink]
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @RecoveryMode VARCHAR(20)
	declare @query nvarchar(1000)
	DECLARE @dbName NVARCHAR(100)
	
	SET @dbName = DB_NAME()
	SET @RecoveryMode = CONVERT(varchar,DATABASEPROPERTYEX(@DBName, 'RECOVERY'))
	declare @dbid int
	set @query='ALTER DATABASE '+@DBName+' SET RECOVERY SIMPLE'
	EXEC(@query)
	CHECKPOINT
	SELECT @dbid=database_id FROM sys.databases where name=@DBName
 
	DECLARE @v INT
	DECLARE lp CURSOR FOR
	SELECT file_id FROM sys.master_files where database_id=@dbid

	OPEN lp

	FETCH NEXT FROM lp into @v

	WHILE @@FETCH_STATUS =0
	BEGIN
		DBCC SHRINKFILE(@v,1) 
		FETCH NEXT FROM lp into @v
	END

	CLOSE lp
	DEALLOCATE lp

	set @query='ALTER DATABASE '+@DBName+' SET RECOVERY  '+@RecoveryMode

	exec (@query)
END
-----------------------------------------------------------------
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نام شخص مسئول' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FromOrganizations', @level2type=N'COLUMN',@level2name=N'ResponsibleStaffer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'??? ?????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReCommites', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نقش سازماني' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'FromOrgID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'دبيرخانه ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'DefualtSecretariatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'آيا يك كارمند دبيرخانه است يا كارتابل داشته باشد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IsSecretariantStaffer'
GO
USE [master]
GO
ALTER DATABASE [yArchive_null] SET  READ_WRITE 
GO
