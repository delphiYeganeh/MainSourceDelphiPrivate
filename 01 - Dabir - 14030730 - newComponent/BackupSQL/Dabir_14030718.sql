USE [master]
GO
/****** Object:  Database [ydabir]    Script Date: 18/07/1403 05:28:03 ب.ظ ******/
CREATE DATABASE [ydabir]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'm_Data', FILENAME = N'H:\Yeganeh\Lastversion\DataFile\ydabir.mdf' , SIZE = 144064KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'm_Log', FILENAME = N'D:\datafile\ydabir_log.ldf' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ydabir] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ydabir].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [ydabir] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ydabir] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ydabir] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ydabir] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ydabir] SET ARITHABORT OFF 
GO
ALTER DATABASE [ydabir] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ydabir] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [ydabir] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ydabir] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ydabir] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ydabir] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ydabir] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ydabir] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ydabir] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ydabir] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ydabir] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ydabir] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ydabir] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ydabir] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ydabir] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ydabir] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ydabir] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ydabir] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ydabir] SET  MULTI_USER 
GO
ALTER DATABASE [ydabir] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [ydabir] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ydabir] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ydabir] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ydabir] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ydabir', N'ON'
GO
ALTER DATABASE [ydabir] SET QUERY_STORE = OFF
GO
USE [ydabir]
GO
/****** Object:  User [YeganehCorporate_Dabir]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE USER [YeganehCorporate_Dabir] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCorporate_Dabir]
GO
/****** Object:  User [YeganehCompany_Dabir]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE USER [YeganehCompany_Dabir] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCompany_Dabir]
GO
/****** Object:  User [Y_Dabir_App]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE USER [Y_Dabir_App] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Y_Dabir_App]
GO
/****** Object:  User [WebLogin]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE USER [WebLogin] FOR LOGIN [WebLogin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mso]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE USER [mso] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[mso]
GO
/****** Object:  User [Administrators]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE USER [Administrators] WITH DEFAULT_SCHEMA=[Administrators]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCorporate_Dabir]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCorporate_Dabir]
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
ALTER ROLE [db_owner] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Y_Dabir_App]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrators]
GO
/****** Object:  Schema [Administrators]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE SCHEMA [Administrators]
GO
/****** Object:  Schema [mso]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE SCHEMA [mso]
GO
/****** Object:  Schema [tSQLt]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE SCHEMA [tSQLt]
GO
/****** Object:  Schema [Y_Dabir_App]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE SCHEMA [Y_Dabir_App]
GO
/****** Object:  Schema [YeganehCompany_Dabir]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE SCHEMA [YeganehCompany_Dabir]
GO
/****** Object:  Schema [YeganehCorporate_Dabir]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE SCHEMA [YeganehCorporate_Dabir]
GO
/****** Object:  FullTextCatalog [fgh]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE FULLTEXT CATALOG [fgh] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  UserDefinedFunction [dbo].[ArchiveFolders]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
if @result<>'' set  @result='بايگاني در: '+substring(@result,4,1000)
return(@result)
end

GO
/****** Object:  UserDefinedFunction [dbo].[ArchiveID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ArchiveID] 
(
	@Sid int,@fid  tinyint,@Myear int,@page tinyint
)
	RETURNS varchar(20)
BEGIN
	Declare @result vaRCHAR(20)

	if isnull(@fid,0)=0
		SET @result=cast(@sid as varchar(8))+'/'+cast(@myear as char(4))+'/'+cast(@page as varchar(4))
	else
		SET @result=cast(@sid as varchar(8))+'-'+cast(@fid as varchar(2))++'/'+cast(@myear as char(4))+'/'+cast(@page as varchar(4))
	
	return(@result)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ArchivePlaces]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  UserDefinedFunction [dbo].[ATF_PEY_SETTING]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ATF_PEY_SETTING] (@S VARCHAR(10))
RETURNS VARCHAR(1) AS
BEGIN

DECLARE @RES CHAR(1)

SET @RES = (SELECT Value FROM dbo.Settings WHERE VariableName = 'ATF-PEY')

RETURN(@RES)
END
GO
/****** Object:  UserDefinedFunction [dbo].[delphiType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
when  @typeName in ('float') then 'real'  else @typeName	end)

END




GO
/****** Object:  UserDefinedFunction [dbo].[everyLike]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[everyLike](@fieldType varchar(50),@len int)
RETURNS  bit AS  
BEGIN 
 return case when @fieldType in('varchar','nvarchar','text') and @len>50 then 1 else 0 end
END





GO
/****** Object:  UserDefinedFunction [dbo].[Fasl]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_GetNode_TOLeaf]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GetNode_TOLeaf] 
( @ID INT )
RETURNS @Table_Var TABLE (ID INT)
AS
BEGIN		
	DECLARE @temp_ID INT
	
    INSERT INTO @Table_Var (ID) VALUES (@ID)     
    
    DECLARE CUR CURSOR FOR 
    
    SELECT ID FROM (SELECT * FROM FromOrganizations WHERE IsInnerOrg=1 and isactive=1) AS list1    
    WHERE list1.Parentid = @ID
    
    OPEN CUR 
    FETCH NEXT FROM CUR INTO @temp_ID
    WHILE @@FETCH_STATUS = 0 
    BEGIN 
       INSERT INTO @Table_Var (ID) 
       SELECT ID FROM dbo.fn_GetNode_TOLeaf(@temp_ID)
            
       FETCH NEXT FROM CUR INTO @temp_ID
    END 
    CLOSE CUR 
    DEALLOCATE CUR	
	
	RETURN 
END


GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetNode_TORoot]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GetNode_TORoot] 
( @ID int )
RETURNS @Table_Var TABLE (Name varchar(50))
AS
BEGIN
	
	DECLARE @Parentid INT , @Name VARCHAR(50), @temp_ID INT
	SELECT @Parentid=ParentID,@Name=Name FROM Family WHERE ID = @ID 

    INSERT INTO @Table_Var (Name) VALUES (@Name)     
    
    DECLARE CUR CURSOR FOR 
    
    SELECT ID FROM Family WHERE ID = @Parentid
    
    OPEN CUR 
    FETCH NEXT FROM CUR INTO @temp_ID
    WHILE @@FETCH_STATUS = 0 
        BEGIN 
            INSERT INTO @Table_Var (Name) 
            SELECT Name FROM dbo.fn_GetNode_TORoot(@temp_ID)
            
            FETCH NEXT FROM CUR INTO @temp_ID
        END 
    CLOSE CUR 
    DEALLOCATE CUR	
	
	RETURN 
END

GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetUserRecomCount]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FN_GetUserRecomCount](@OrgID INT, @LetterID INT)
RETURNS INT
AS
BEGIN
	DECLARE @res INT
	Select @res = Count(R.RecommiteID)         
	From ReCommites R       
	Inner join Letter on Letter.LetterID = R.LetterID      
	Inner join FromOrganizations on R.OrgID = FromOrganizations.ID      
	Where R.LetterID = @LetterID
	And R.OrgID = @OrgID
	Having Count(R.RecommiteID) > 1
	
	RETURN ISNULL(@res, 0)
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_HasPhoneAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_HasPhoneAccess](@UserID INT, @PhoneID INT) RETURNS BIT
AS
BEGIN
	DECLARE @res BIT
	SELECT @res = ISNULL(HasAccess , 1) FROM UsersPhoneAccess upa
	WHERE upa.PhoneID = @PhoneID AND upa.UserID = @UserID
	
	DECLARE @tmpMainUserID INT
	SELECT @tmpMainUserID = UsersID FROM Phone p WHERE p.PhoneID = @PhoneID
	
	IF @tmpMainUserID = @UserID
		SET @res = 1
	
	RETURN isnull(@res, 1)
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_IsDuplicateIndicator]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----------------------------------
----------------------------------
CREATE FUNCTION [dbo].[FN_IsDuplicateIndicator](@LetterID int, @IndicatorID INT)
RETURNS BIT
AS
BEGIN
	DECLARE @res BIT
	SET @res=0
	
	DECLARE @IsUniq BIT
	SET @IsUniq = 0
-- 92/02/17
-- By Hadi Mohamed
--متغير سال با مقدار سال شماره نامه مقداردهي مي شود و در شرط تابع قرار ميگيرد
	DECLARE @mYare INT
	SELECT @mYare=MYear FROM Letter WHERE LetterID=@LetterID
	
	SELECT @IsUniq=ABS(Convert(int, isnull(VALUE, 0))) FROM Settings 
		where VariableName = 'UniqueIndSec'
		
	IF @IsUniq<>0
	BEGIN
		IF EXISTS(SELECT * FROM Letter 
					WHERE LetterID <> @LetterID AND MYear=@mYare AND  IndicatorID=@IndicatorID)
			SET @Res= 1
	END
	
	RETURN @res
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_TRUNC]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FN_TRUNC](@Input NVARCHAR(MAX), @MaxSize INT = 30)
RETURNS NVARCHAR(MAX) 
BEGIN 
	DECLARE @out NVARCHAR(MAX)
	DECLARE @pos INT
	SET @out = ''
	SET @Input = LTRIM(RTRIM(@Input))
	IF (LEN(@Input) <= @MaxSize) 
		SET @out = @Input
	ELSE
	BEGIN
		SET @out = SUBSTRING(@Input, 1, @MaxSize)
		SET @out = REVERSE(@out)
		SET @pos = CHARINDEX(' ', @out)
		IF @pos >= @MaxSize 
			SET @pos = 3
		--IF @pos < 3 
		--	SET @pos = 3
		SET @out = SUBSTRING(@out, @pos + 1, @MaxSize - @pos) + '...' 
		SET @out = REVERSE(@out) 	
	END	
	RETURN @out 
END 
GO
/****** Object:  UserDefinedFunction [dbo].[FollowLetterNo_LIST]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FollowLetterNo_LIST] (@LID INT)
RETURNS VARCHAR(100) AS
BEGIN

DECLARE 
@ID AS VARCHAR(4000)          

DECLARE 
@FollowLetterNo VARCHAR(100)

SET @FollowLetterNo = '';

DECLARE EXM_CURSOR CURSOR FOR
SELECT dbo.Letter.IndicatorID  FROM dbo.Follow_Retroaction_Letter 
LEFT JOIN dbo.Letter ON dbo.Letter.LetterID = dbo.Follow_Retroaction_Letter.FR_LetterID
WHERE 
dbo.Follow_Retroaction_Letter.LetterID = @LID
and 
dbo.Follow_Retroaction_Letter.FR_Kind = 1
OPEN EXM_CURSOR
FETCH NEXT FROM EXM_CURSOR
INTO @ID

WHILE (@@FETCH_STATUS = 0)
BEGIN

IF (@FollowLetterNo <> '')
SET @FollowLetterNo = @FollowLetterNo + ','

SET @FollowLetterNo = @FollowLetterNo + CAST(@ID AS VARCHAR(10))
    
FETCH NEXT FROM EXM_CURSOR
INTO @ID
END

CLOSE EXM_CURSOR
DEALLOCATE EXM_CURSOR

SET @FollowLetterNo = '   ' + @FollowLetterNo

RETURN(@FollowLetterNo)
END
GO
/****** Object:  UserDefinedFunction [dbo].[FollowLetterNo_LIST_02]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FollowLetterNo_LIST_02] (@LID INT)
RETURNS VARCHAR(100) AS
BEGIN

DECLARE 
@ID AS VARCHAR(100)

DECLARE 
@FollowLetterNo VARCHAR(100)

SET @FollowLetterNo = '';

DECLARE EXM_CURSOR CURSOR FOR
SELECT ISNULL(dbo.Letter.IncommingNO,'(بدون شماره)')  FROM dbo.Follow_Retroaction_Letter 
LEFT JOIN dbo.Letter ON dbo.Letter.LetterID = dbo.Follow_Retroaction_Letter.FR_LetterID
WHERE 
dbo.Follow_Retroaction_Letter.LetterID = @LID
and 
dbo.Follow_Retroaction_Letter.FR_Kind = 1
OPEN EXM_CURSOR
FETCH NEXT FROM EXM_CURSOR
INTO @ID

WHILE (@@FETCH_STATUS = 0)
BEGIN

IF (@FollowLetterNo <> '')
BEGIN
SET @FollowLetterNo = @FollowLetterNo + ' ### '
END

SET @FollowLetterNo = @FollowLetterNo + CAST(@ID AS VARCHAR(100))
      
FETCH NEXT FROM EXM_CURSOR
INTO @ID
END

CLOSE EXM_CURSOR
DEALLOCATE EXM_CURSOR

SET @FollowLetterNo = '   ' + @FollowLetterNo

RETURN(@FollowLetterNo)
END
GO
/****** Object:  UserDefinedFunction [dbo].[get_Number_Of_Letter_RelatedSecretariatID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[get_Number_Of_Letter_RelatedSecretariatID](
@RelatedSecretariatID int)
returns int
begin
declare  @Number_Of_Letter int 
SELECT    @Number_Of_Letter= COUNT(*)  
FROM         Letter INNER JOIN
                      RelatedSecretariats ON Letter.ToOrgID = RelatedSecretariats.DestinationOrgID_inSource
WHERE     ((RelatedSecretariats.RelatedSecretariatID = @RelatedSecretariatID) AND Letter.SendStatusID=2 and letterformat=1)


set @Number_Of_Letter=isnull(@Number_Of_Letter,0)
return(@Number_Of_Letter)
end



GO
/****** Object:  UserDefinedFunction [dbo].[Get_Subset_OrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*Ranjbar تابع بدست آوردن زير شاخه هاي يك چارت سازماني*/  
CREATE Function [dbo].[Get_Subset_OrgID]
(
	@OrgID int
)  
	Returns @ReturnTable TABLE (OrgID int)  
As  
begin  
	Insert into @ReturnTable(OrgID)
	Values(@OrgID)
	While @@RowCount > 0
	begin
	   Insert into @ReturnTable(OrgID)   
	   Select ID from FromOrganizations Where ParentID in (Select OrgID from @ReturnTable) And not ID in (Select OrgID from @ReturnTable)  
	end

	/*
	روش دوم
	Declare @LocalTable1 TABLE (OrgID int)  
	Declare @LocalTable2 TABLE (OrgID int)  
  
	Insert into @LocalTable1(OrgID)  
	Select @OrgID as ID   
	Union  
	Select ID from FromOrganizations Where ParentID = @OrgID  --And IsInnerOrg = 1  
  
	Insert into @LocalTable2(OrgID)  
	Select OrgID From @LocalTable1   
  
	While @@ROWCOUNT > 0  
	begin     
	   Insert into @ReturnTable(OrgID)  
	   Select OrgID from @LocalTable1   
  
	   Delete From @LocalTable1    
  
	   Insert into @LocalTable1(OrgID)  
	   Select ID from FromOrganizations Where ParentID in (Select OrgID From @LocalTable2)   --And IsInnerOrg = 1
     
	   Delete From @LocalTable2  
  
	   Insert into @LocalTable2(OrgID)  
	   Select OrgID from @LocalTable1  
	end */
  
	Return 
end  
GO
/****** Object:  UserDefinedFunction [dbo].[GetExcelId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GetExcelId]()
RETURNS Int AS  
BEGIN 
	Declare @res int
	Set @res = 0
	If Exists(Select  Top 1 ExtentionID From Extention Where Lower(Extention) = 'xls')
		Set @res = (Select Top 1 ExtentionID From Extention Where Lower(Extention) = 'xls')

	Return(@res)

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetNumericValue]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GetNumericValue] 
(
	@strAlphaNumeric VARCHAR(256)
)  
RETURNS VARCHAR(256)  
AS  
BEGIN  
	DECLARE @intAlpha INT  
	SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric)  
	BEGIN  
		WHILE @intAlpha > 0  
		BEGIN  
			SET @strAlphaNumeric = STUFF(@strAlphaNumeric, @intAlpha, 1, '' )  
			SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric )  
		END  
	END  
	RETURN ISNULL(@strAlphaNumeric,0)  
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetParentOfFollowLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create Function [dbo].[GetParentOfFollowLetter](@LetterID Int)
	RETURNS INT
	AS
	BEGIN
		DECLARE @IncommingNo NVARCHAR(50)
				,@IndicatorId int
				,@Row INT=1
				,@Out int
				DECLARE @Temp TABLE (ID INT,Letterid int)
				
		WHILE @letterid IS NOT null
		BEGIN
			SELECT @IncommingNo=IncommingNo ,@IndicatorId=IndicatorID FROM letter WHERE letterid = @LetterID
			IF EXISTS(SELECT Letterid FROM letter WHERE FollowLetterNo=CONVERT(NVARCHAR(50),@IncommingNo ) OR RetroactionNo=CONVERT(NVARCHAR(50),@IncommingNo ) OR FollowLetterNo=CONVERT(NVARCHAR(50),@IndicatorId)OR RetroactionNo=CONVERT(NVARCHAR(50),@IndicatorId))
			BEGIN
			INSERT INTO @Temp( ID, Letterid )
				SELECT @Row,Letterid FROM letter WHERE FollowLetterNo=CONVERT(NVARCHAR(50),@IncommingNo ) OR RetroactionNo=CONVERT(NVARCHAR(50),@IncommingNo ) OR FollowLetterNo=CONVERT(NVARCHAR(50),@IndicatorId)OR RetroactionNo=CONVERT(NVARCHAR(50),@IndicatorId)
				SELECT @letterid=Letterid FROM letter WHERE FollowLetterNo=CONVERT(NVARCHAR(50),@IncommingNo ) OR RetroactionNo=CONVERT(NVARCHAR(50),@IncommingNo ) OR FollowLetterNo=CONVERT(NVARCHAR(50),@IndicatorId)OR RetroactionNo=CONVERT(NVARCHAR(50),@IndicatorId)
			end	
				
			ELSE
			return @letterid
			SET @row=@Row+1
		END
	IF EXISTS(SELECT TOP 1 Letterid FROM @Temp)
		SELECT TOP 1 @Out= Letterid FROM @Temp ORDER BY id DESC
		ELSE 
		SELECT @Out=@LetterID
		RETURN @Out
	end
GO
/****** Object:  UserDefinedFunction [dbo].[GetSystemValue]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Function [dbo].[GetSystemValue](@VariableName Nvarchar(50))  
Returns nvarchar(255)  
AS    
BEGIN   

/*Alter Function dbo.GetSystemValue(@varID int)  
Returns nvarchar(255)  
AS    
BEGIN   
   if not exists(select * from settings where variableid=@varID and userid = -1)  
      Return(0)  
   Return(select value from settings where variableid=@varID and userid = -1)  
END*/


   if not Exists(Select * from settings where VariableName = @VariableName And UserID = -1)  
      Return(0)  
   Return(select value from settings where VariableName=@VariableName And UserID = -1)  
END 


GO
/****** Object:  UserDefinedFunction [dbo].[has_ExpiredFollowUp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[has_ExpiredFollowUp](@LetterID int)
RETURNS bit AS  
BEGIN 
	declare @res bit

	if exists(
	SELECT     FollowUPID
	FROM       FollowUp
	WHERE     LetterID=@LetterID and dbo.ShamsiToMiladi(ToDoDate)< GETDATE() AND DoneStatusID=0 )
	set @res=1
	else
	set @res=0
	return(@res)

END
GO
/****** Object:  UserDefinedFunction [dbo].[has_file]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[has_file]
(
	@LetterID int
)

RETURNS bit AS  
BEGIN 
	Declare @res bit

	If Exists(Select LetterDataID
				From LetterData
				Where LetterID = @LetterID And extention > 3 And extention <> dbo.GetExcelId())
		OR (Select COUNT(LetterDataID)
				From LetterData
				Where LetterID = @LetterID and extention = 3 And extention <> dbo.GetExcelId()) > 1
		Set @res=1
	Else
		Set @res=0

Return(@res)

END

GO
/****** Object:  UserDefinedFunction [dbo].[has_Page]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[has_Page](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit
if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention in (1,2))
set @res=1
else
set @res=0
return(@res)

END



GO
/****** Object:  UserDefinedFunction [dbo].[Has_Sign]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Has_Sign](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     ID
FROM         LetterSign
WHERE     LetterID=@LetterID)
set @res=1
else
set @res=0
return(@res)

END

GO
/****** Object:  UserDefinedFunction [dbo].[has_tifPage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[has_tifPage](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention in (1,2))
set @res=1
else
set @res=0
return(@res)

END


GO
/****** Object:  UserDefinedFunction [dbo].[has_UncheckedFollowUp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[has_UncheckedFollowUp](@LetterID int)
RETURNS bit AS  
BEGIN 
	declare @res bit

	if exists(
	SELECT     FollowUPID
	FROM       FollowUp
	WHERE     LetterID=@LetterID and dbo.ShamsiToMiladi(ToDoDate)>= GETDATE() AND DoneStatusID=0 )
	set @res=1
	else
	set @res=0
	return(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[has_WordExcel]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[has_WordExcel]
(
	@LetterID int
)

RETURNS Int AS  
BEGIN 
	declare @res Int
	Set @res=0

	Select @res = extention	
		From LetterData
		Where LetterID=@LetterID 
			And (extention=3 Or extention=dbo.GetExcelId())
	
Return(@res)

END

GO
/****** Object:  UserDefinedFunction [dbo].[has_WordPage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[has_WordPage]
(
	@LetterID int
)

RETURNS bit AS  
BEGIN 
	declare @res bit
	
	If Exists(Select PageNumber	
					From LetterData
					Where LetterID = @LetterID 
						And ([extention] = 3 Or [extention] = dbo.GetExcelId()))
		Set @res=1
	Else
		Set @res=0

Return(@res)

END

GO
/****** Object:  UserDefinedFunction [dbo].[HasLetterForms]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[HasLetterForms](@Letterid int)
RETURNS BIT
BEGIN
DECLARE @Out BIT 
	IF EXISTS(SELECT 1 FROM dbo.LetterForms WHERE letterid = @LetterID)
		SET @Out=1
	ELSE
		SET @Out=0
	RETURN @Out	
END;

GO
/****** Object:  UserDefinedFunction [dbo].[HistoryDateList]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
CREATE function [dbo].[HistoryDateList](@today char(10),@weekday tinyint)  
  
returns @result table (id int , Title nvarchar(100),beginDate char(10),Enddate char(10))  
begin  
  
declare @year char(4)  
set @year=substring(@today,1,4)  
  
insert into @result values (1, 'امروز',@today,@today)  
insert into @result values (2, 'ديروز',dbo.ShamsiIncDate(@today,0,0,-1),dbo.ShamsiIncDate(@today,0,0,-1))  
insert into @result values (3, 'هفته اخير',dbo.ShamsiIncDate(@today,0,0,-@weekday),@today)  
insert into @result values (4, 'ماه اخير',substring(@today,1,8)+'01',@today)  
/*declare @month int,@i int  
set @month=cast(substring(@today,9,2) as int)-1  */
--set @i=1  
  
-- if @i<=@month  
 insert into @result values (5, 'فروردين',@year+'/01/01',@year+'/01/31')  
-- set @i=@i+1  
    
-- if @i<=@month  
 insert into @result values (6, 'ارديبهشت',@year+'/02/01',@year+'/02/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (7, 'خرداد',@year+'/03/01',@year+'/03/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (8, 'تير',@year+'/04/01',@year+'/04/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (9, 'مرداد',@year+'/05/01',@year+'/05/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (10, 'شهريور',@year+'/06/01',@year+'/06/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (11, 'مهر',@year+'/07/01',@year+'/07/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (12, 'آبان',@year+'/08/01',@year+'/08/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (13, 'آذر',@year+'/09/01',@year+'/09/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (14, 'دي',@year+'/10/01',@year+'/10/31')  
-- set @i=@i+1  
  
-- if @i<=@month  
 insert into @result values (15, 'بهمن',@year+'/11/01',@year+'/11/31')  

---/*RAnjbar*/
-- set @i=@i+1  
-- if @i<=@month  
 insert into @result values (16, 'اسفند',@year+'/12/01',@year+'/12/29')  
---//
  
 insert into @result values (17, ' همه موارد ','1300/11/01',+'1399/12/30')  
return    
end
GO
/****** Object:  UserDefinedFunction [dbo].[InnerNo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[InnerNo]
(
	@LetterID int,@LetterTypeID INT = NULL
)  
	Returns nvarchar(200)  
begin  	
	declare @SecCode nvarchar(50),@MYear nchar(4), @IndicatorID nvarchar(10), @ToOrgCode  nvarchar(50),  
	@FromOrgCode  nvarchar(50), @LetterTypCode  nvarchar(10),@result nvarchar(4000),@UserMemo nvarchar(255),  
	@FromPrecode  nvarchar(50), @CentralNoDabir nvarchar(50)  

	DECLARE @InnerNo NVARCHAR(500), @Delimeter char(1) , 
			@LetterFormulaPart1 VARCHAR(50)
			, @LetterFormulaPart2 VARCHAR(50)
			, @LetterFormulaPart3 VARCHAR(50)
			, @LetterFormulaPart4 VARCHAR(50)
			, @LetterFormulaPart5 VARCHAR(50)
			, @LetterFormulaPart6 VARCHAR(50)
			, @SecID INT
			, @Subject NVARCHAR(4000)
			           
	SELECT  @SecCode=ltrim(isnull(Secretariats.Precode,'')),  
			@MYear=Letter.MYear,  
			@IndicatorID=Letter.IndicatorID,  
			@FromOrgCode= case when len(fromorg.code)>5  then  FromOrg.Code  else ltrim(isnull(fromorg.code,'')) end ,  
			@ToOrgCode= case when len(Toorg.code)>5  then  Toorg.Code  else ltrim(isnull(Toorg.code,'')) end ,  
			@LetterTypCode=ltrim(isnull(LetterTypes.PreCode,'')),  
			@UserMemo=ltrim(isnull(Usermemo,'')),  
			@FromPrecode=ltrim(isnull(fromorg.Precode,'')),
			@CentralNoDabir=ltrim(isnull(CenterNo,'')),
			@SecID=ISNULL(letter.SecretariatID,0),
			@Subject = s.SubjectCode		  
	FROM         Letter    
	INNER JOIN  FromOrganizations FromOrg ON Letter.FromOrgID = FromOrg.ID  
	INNER JOIN  LetterTypes ON Letter.Letter_Type = LetterTypes.ID  
	INNER JOIN  Secretariats ON Letter.SecretariatID = Secretariats.SecID
	LEFT JOIN  FromOrganizations Toorg ON Letter.ToorgID = Toorg.ID
	LEFT outer JOIN [Subject] s ON s.SubjectID = Letter.SubjectID 
	WHERE     (Letter.LetterID = @LetterID)         
	
	--IF ISNULL(@LetterID,0) > 0
	--BEGIN
	SELECT @Delimeter=ISNULL(LetterFormulaSeperator,0)
			,@LetterFormulaPart1=ISNULL(LetterFormulaPart1,0)
			,@LetterFormulaPart2=ISNULL(LetterFormulaPart2,0)
			,@LetterFormulaPart3=ISNULL(LetterFormulaPart3,0)
			,@LetterFormulaPart4=ISNULL(LetterFormulaPart4,0)
			,@LetterFormulaPart5=ISNULL(LetterFormulaPart5,0)
			,@LetterFormulaPart6=ISNULL(LetterFormulaPart6,0)  
	FROM LetterFormula WHERE SecID=@SecID and UseForWord is null  AND (letterTypeID = @LetterTypeID OR @LetterTypeID IS NULL)	

--	END
	--ELSE
	--BEGIN
	--SELECT @Delimeter=0
	--		,@LetterFormulaPart1='0'
	--		,@LetterFormulaPart2='0'
	--		,@LetterFormulaPart3='0'
	--		,@LetterFormulaPart4='0'
	--		,@LetterFormulaPart5='0'
	--		,@LetterFormulaPart6='0'

	--END

	set @result=ltrim(rtrim(cast(case  @LetterFormulaPart1--dbo.GetSystemValue('LetterFormulaPart1')--35  
					   when 0 then ''  
					   when 1 then @SecCode+@Delimeter  
					   when 2 then @MYear+@Delimeter  
					   when 3 then @IndicatorID+@Delimeter  
					   when 4 then @ToOrgCode+@Delimeter  
					   when 5 then @FromOrgCode+@Delimeter  
					   when 6 then @LetterTypCode+@Delimeter  
					   when 7 then @UserMemo+@Delimeter  
					   when 8 then @FromPrecode+@Delimeter 
					   when 9 then @CentralNoDabir+@Delimeter
					   WHEN 10 THEN ISNULL(@Subject, '') + @Delimeter end AS VARCHAR)))+  ' '+
	  
				 ltrim(rtrim(cast(case  @LetterFormulaPart2--dbo.GetSystemValue('LetterFormulaPart2')--36  
					   when 0 then ''  
					   when 1 then @SecCode+@Delimeter  
					   when 2 then @MYear+@Delimeter  
					   when 3 then @IndicatorID+@Delimeter  
					   when 4 then @ToOrgCode+@Delimeter  
					   when 5 then @FromOrgCode+@Delimeter  
					   when 6 then @LetterTypCode+@Delimeter  
					   when 7 then @UserMemo+@Delimeter   
					   when 8 then @FromPrecode+@Delimeter  
					   when 9 then @CentralNoDabir+@Delimeter
					   WHEN 10 THEN ISNULL(@Subject, '') + @Delimeter end AS VARCHAR)))+ ' '+
	  
				 ltrim(rtrim(cast(case  @LetterFormulaPart3--dbo.GetSystemValue('LetterFormulaPart3')--37  
					   when 0 then ''  
					   when 1 then @SecCode+@Delimeter  
					   when 2 then @MYear+@Delimeter  
					   when 3 then @IndicatorID+@Delimeter  
					   when 4 then @ToOrgCode+@Delimeter  
					   when 5 then @FromOrgCode+@Delimeter  
					   when 6 then @LetterTypCode+@Delimeter  
					   when 7 then @UserMemo+@Delimeter   
					   when 8 then @FromPrecode+@Delimeter
					   when 9 then @CentralNoDabir+@Delimeter
					   WHEN 10 THEN ISNULL(@Subject, '') + @Delimeter end AS VARCHAR)))+ ' '+
	  
				 ltrim(rtrim(cast(case  @LetterFormulaPart4--dbo.GetSystemValue('LetterFormulaPart4')--38  
					   when 0 then ''  
					   when 1 then @SecCode+@Delimeter  
					   when 2 then @MYear+@Delimeter  
					   when 3 then @IndicatorID+@Delimeter  
					   when 4 then @ToOrgCode+@Delimeter  
					   when 5 then @FromOrgCode+@Delimeter  
					   when 6 then @LetterTypCode+@Delimeter  
					   when 7 then @UserMemo+@Delimeter   
					   when 8 then @FromPrecode+@Delimeter
					   when 9 then @CentralNoDabir+@Delimeter 
					   WHEN 10 THEN ISNULL(@Subject, '') + @Delimeter end AS VARCHAR)))+                   
	  
				 ltrim(rtrim(cast(case  @LetterFormulaPart5--dbo.GetSystemValue('LetterFormulaPart5')--39  
					   when 0 then ''  
					   when 1 then @SecCode+@Delimeter  
					   when 2 then @MYear+@Delimeter  
					   when 3 then @IndicatorID+@Delimeter  
					   when 4 then @ToOrgCode+@Delimeter  
					   when 5 then @FromOrgCode+@Delimeter  
					   when 6 then @LetterTypCode+@Delimeter  
					   when 7 then @UserMemo+@Delimeter   
					   when 8 then @FromPrecode+@Delimeter
					   when 9 then @CentralNoDabir+@Delimeter
					   WHEN 10 THEN ISNULL(@Subject, '') + @Delimeter end AS VARCHAR)))+  ' '+                 
	  
				 ltrim(rtrim(cast(case  @LetterFormulaPart6--dbo.GetSystemValue('LetterFormulaPart6')--40  
					   when 0 then ''  
					   when 1 then @SecCode+@Delimeter  
					   when 2 then @MYear+@Delimeter  
					   when 3 then @IndicatorID+@Delimeter  
					   when 4 then @ToOrgCode+@Delimeter  
					   when 5 then @FromOrgCode+@Delimeter  
					   when 6 then @LetterTypCode+@Delimeter  
					   when 7 then @UserMemo+@Delimeter   
					   when 8 then @FromPrecode+@Delimeter
					   when 9 then @CentralNoDabir+@Delimeter
					   WHEN 10 THEN ISNULL(@Subject, '') + @Delimeter end AS VARCHAR))) +' '
	  
	while charindex('  ',@result)<>0  
	  begin  
	   Set @result=replace(@result,'  ',' ')  
	  -- Set @result=replace(@result,'/ ','/')  
	  -- Set @result=replace(@result,' /','/')  
	   Set @result = replace(@result, @Delimeter + ' ', @Delimeter)  
	   Set @result = replace(@result,' ' + @Delimeter ,@Delimeter)  
	  end   
	  
	set @result=replace(ltrim(rtrim(@result)),@Delimeter+@Delimeter,@Delimeter)  
	set @result=replace(@result,@Delimeter+@Delimeter,@Delimeter)  
	  
	  
	if substring(@result,len(@result),1)=@Delimeter  
	   set @result=substring(@result,1,len(@result)-1)  
	  
	if substring(@result,1,1)=@Delimeter  
	   set @result=substring(@result,2,len(@result)-1)  

         --parsa bug
	 IF @Delimeter = '/'
	   Set @result=replace(@result,'/','|')   
         --parsa
	  
	return(@result)  
end
GO
/****** Object:  UserDefinedFunction [dbo].[InnerNoFormat]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[InnerNoFormat]
(
	@SenderTableName varchar(100),@ReceiverTableName varchar(100),@SecID INT
)
	Returns varchar(1000)
as
Begin
	DECLARE @InnerNo NVARCHAR(500), @Delimeter char(1) , 
			@LetterFormulaPart1 VARCHAR(50)
			, @LetterFormulaPart2 VARCHAR(50)
			, @LetterFormulaPart3 VARCHAR(50)
			, @LetterFormulaPart4 VARCHAR(50)
			, @LetterFormulaPart5 VARCHAR(50)
			, @LetterFormulaPart6 VARCHAR(50)         

	SELECT @Delimeter=ISNULL(LetterFormulaSeperator,0)
			,@LetterFormulaPart1=ISNULL(LetterFormulaPart1,0)
			,@LetterFormulaPart2=ISNULL(LetterFormulaPart2,0)
			,@LetterFormulaPart3=ISNULL(LetterFormulaPart3,0)
			,@LetterFormulaPart4=ISNULL(LetterFormulaPart4,0)
			,@LetterFormulaPart5=ISNULL(LetterFormulaPart5,0)
			,@LetterFormulaPart6=ISNULL(LetterFormulaPart6,0)  
	FROM LetterFormula WHERE SecID=@SecID 

	--set @Delimeter=dbo.GetSystemValue('LetterFormulaSeperator')--44        
	set @InnerNo=case  @LetterFormulaPart1--dbo.GetSystemValue('LetterFormulaPart1') --35       
					   when 0 then ''        
					   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
					   when 2 then 'cast(Myear as char(4))+'''+@Delimeter+'''+'        
					   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
					   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
					   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
					   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'  
					   when 9 then 'isnull(CenterNo,'''')+'''+@Delimeter+'''+' 
			   WHEN 10 THEN 'isnull((Select SubjectCode from Subject where SubjectID = Letter.SubjectID), '''')+'''+@Delimeter+'''+' end+        
        
				 case  @LetterFormulaPart2--dbo.GetSystemValue('LetterFormulaPart2')--36        
					   when 0 then ''        
					   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
					   when 2 then 'cast(Myear as char(4))+'''+@Delimeter+'''+'        
					   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
					   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
					   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
					   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'
					   when 9 then 'isnull(CenterNo,'''')+'''+@Delimeter+'''+' 
			   WHEN 10 THEN 'isnull((Select SubjectCode from Subject where SubjectID = Letter.SubjectID), '''')+'''+@Delimeter+'''+' end+                           
        
				 case  @LetterFormulaPart3--dbo.GetSystemValue('LetterFormulaPart3')--37  
					   when 0 then ''        
					   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
					   when 2 then 'cast(Myear as char(4))+'''+@Delimeter+'''+'        
					   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
					   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
					   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
					   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'
					   when 9 then 'isnull(CenterNo,'''')+'''+@Delimeter+'''+' 
			   WHEN 10 THEN 'isnull((Select SubjectCode from Subject where SubjectID = Letter.SubjectID), '''')+'''+@Delimeter+'''+' end+                   
        
				 case  @LetterFormulaPart4--dbo.GetSystemValue('LetterFormulaPart4')--38        
					   when 0 then ''        
					   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
					   when 2 then 'cast(Myear as char(4))+'''+@Delimeter+'''+'        
					   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
					   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
					   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
					   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'
					   when 9 then 'isnull(CenterNo,'''')+'''+@Delimeter+'''+' 
			   WHEN 10 THEN 'isnull((Select SubjectCode from Subject where SubjectID = Letter.SubjectID), '''')+'''+@Delimeter+'''+' end+
        
				 case  @LetterFormulaPart5--dbo.GetSystemValue('LetterFormulaPart5')--39        
					   when 0 then ''        
					   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                         
					   when 2 then 'cast(Myear as char(4))+'''+@Delimeter+'''+'        
					   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
					   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
					   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
					   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'
					   when 9 then 'isnull(CenterNo,'''')+'''+@Delimeter+'''+' 
			   WHEN 10 THEN 'isnull((Select SubjectCode from Subject where SubjectID = Letter.SubjectID), '''')+'''+@Delimeter+'''+' end+                   
        
				 case  @LetterFormulaPart6--dbo.GetSystemValue('LetterFormulaPart6')--40        
					   when 0 then ''        
					   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
					   when 2 then 'cast(Myear as char(4))+'''+@Delimeter+'''+'        
					   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
					   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
					   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
					   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
					   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'
					   when 9 then 'isnull(CenterNo,'''')+'''+@Delimeter+'''+'  
			   WHEN 10 THEN 'isnull((Select SubjectCode from Subject where SubjectID = Letter.SubjectID), '''')+'''+@Delimeter+'''+'                     
				 end        
        
	IF len(@InnerNo)>5        
	if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'        
	   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)        
        
	if @innerno<>''        
	set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'        
	else        
	set @innerno='cast(indicatorid as nvarchar(500))'  
	return LTRIM(rtrim(@InnerNo))
END
GO
/****** Object:  UserDefinedFunction [dbo].[InnerNoForWord]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[InnerNoForWord] 
( 
	@LetterID INT 
)
	RETURNS NVARCHAR(200)
BEGIN 
        DECLARE @SecCode NVARCHAR(50) ,
            @MYear NCHAR(4) ,
            @IndicatorID NVARCHAR(20) ,
            @ToOrgCode NVARCHAR(50) ,
            @FromOrgCode NVARCHAR(50) ,
            @LetterTypCode NVARCHAR(10) ,
            @result NVARCHAR(4000) ,
            @UserMemo NVARCHAR(255) ,
            @FromPrecode NVARCHAR(50) ,
            @CentralNoDabir NVARCHAR(50)  

        DECLARE @InnerNo NVARCHAR(500) ,
            @Delimeter CHAR(1) ,
            @LetterFormulaPart1 VARCHAR(50) ,
            @LetterFormulaPart2 VARCHAR(50) ,
            @LetterFormulaPart3 VARCHAR(50) ,
            @LetterFormulaPart4 VARCHAR(50) ,
            @LetterFormulaPart5 VARCHAR(50) ,
            @LetterFormulaPart6 VARCHAR(50) ,
            @SecID INT ,
            @Subject NVARCHAR(4000)
                       
        SELECT  @SecCode = LTRIM(ISNULL(Secretariats.Precode, '')) ,
                @MYear = Letter.MYear ,
                @IndicatorID = '((' + CAST(Letter.IndicatorID AS NVARCHAR(10))
                + '))' ,
                @FromOrgCode = CASE WHEN LEN(fromorg.code) > 5
                                    THEN FromOrg.Code
                                    ELSE LTRIM(ISNULL(fromorg.code, ''))
                               END ,
                @ToOrgCode = CASE WHEN LEN(Toorg.code) > 5 THEN Toorg.Code
                                  ELSE LTRIM(ISNULL(Toorg.code, ''))
                             END ,
                @LetterTypCode = LTRIM(ISNULL(LetterTypes.PreCode, '')) ,
                @UserMemo = LTRIM(ISNULL(Usermemo, '')) ,
                @FromPrecode = LTRIM(ISNULL(fromorg.Precode, '')) ,
                @CentralNoDabir = LTRIM(ISNULL(CenterNo, '')) ,
                @SecID = ISNULL(letter.SecretariatID, 0) ,
                @Subject = s.SubjectCode
        FROM    Letter
                INNER JOIN FromOrganizations FromOrg ON Letter.FromOrgID = FromOrg.ID
                INNER JOIN LetterTypes ON Letter.Letter_Type = LetterTypes.ID
                INNER JOIN Secretariats ON Letter.SecretariatID = Secretariats.SecID
                LEFT JOIN FromOrganizations Toorg ON Letter.ToorgID = Toorg.ID
                LEFT OUTER JOIN [Subject] s ON s.SubjectID = Letter.SubjectID
        WHERE   ( Letter.LetterID = @LetterID )         

        SELECT  @Delimeter = ISNULL(LetterFormulaSeperator, 0) ,
                @LetterFormulaPart1 = ISNULL(LetterFormulaPart1, 0) ,
                @LetterFormulaPart2 = ISNULL(LetterFormulaPart2, 0) ,
                @LetterFormulaPart3 = ISNULL(LetterFormulaPart3, 0) ,
                @LetterFormulaPart4 = ISNULL(LetterFormulaPart4, 0) ,
                @LetterFormulaPart5 = ISNULL(LetterFormulaPart5, 0) ,
                @LetterFormulaPart6 = ISNULL(LetterFormulaPart6, 0)
        FROM    LetterFormula
        WHERE   SecID = @SecID
                AND UseForWord = 1      

        SET @result = LTRIM(RTRIM(CAST(CASE @LetterFormulaPart1--dbo.GetSystemValue('LetterFormulaPart1')--35  
                                         WHEN -1 THEN ''
                                         WHEN 0 THEN ''
                                         WHEN 1 THEN @SecCode + @Delimeter
                                         WHEN 2 THEN @MYear + @Delimeter
                                         WHEN 3 THEN @IndicatorID + @Delimeter
                                         WHEN 4 THEN @ToOrgCode + @Delimeter
                                         WHEN 5 THEN @FromOrgCode + @Delimeter
                                         WHEN 6
                                         THEN @LetterTypCode + @Delimeter
                                         WHEN 7 THEN @UserMemo + @Delimeter
                                         WHEN 8 THEN @FromPrecode + @Delimeter
                                         WHEN 9
                                         THEN @CentralNoDabir + @Delimeter
                                         WHEN 10
                                         THEN ISNULL(@Subject, '')
                                              + @Delimeter
                                       END AS VARCHAR)))
            + LTRIM(RTRIM(CAST(CASE @LetterFormulaPart2--dbo.GetSystemValue('LetterFormulaPart2')--36  
                                 WHEN -1 THEN ''
                                 WHEN 0 THEN ''
                                 WHEN 1 THEN @SecCode + @Delimeter
                                 WHEN 2 THEN @MYear + @Delimeter
                                 WHEN 3 THEN @IndicatorID + @Delimeter
                                 WHEN 4 THEN @ToOrgCode + @Delimeter
                                 WHEN 5 THEN @FromOrgCode + @Delimeter
                                 WHEN 6 THEN @LetterTypCode + @Delimeter
                                 WHEN 7 THEN @UserMemo + @Delimeter
                                 WHEN 8 THEN @FromPrecode + @Delimeter
                                 WHEN 9 THEN @CentralNoDabir + @Delimeter
                                 WHEN 10
                                 THEN ISNULL(@Subject, '') + @Delimeter
                               END AS VARCHAR)))
            + LTRIM(RTRIM(CAST(CASE @LetterFormulaPart3--dbo.GetSystemValue('LetterFormulaPart3')--37  
                                 WHEN -1 THEN ''
                                 WHEN 0 THEN ''
                                 WHEN 1 THEN @SecCode + @Delimeter
                                 WHEN 2 THEN @MYear + @Delimeter
                                 WHEN 3 THEN @IndicatorID + @Delimeter
                                 WHEN 4 THEN @ToOrgCode + @Delimeter
                                 WHEN 5 THEN @FromOrgCode + @Delimeter
                                 WHEN 6 THEN @LetterTypCode + @Delimeter
                                 WHEN 7 THEN @UserMemo + @Delimeter
                                 WHEN 8 THEN @FromPrecode + @Delimeter
                                 WHEN 9 THEN @CentralNoDabir + @Delimeter
                                 WHEN 10
                                 THEN ISNULL(@Subject, '') + @Delimeter
                               END AS VARCHAR)))
            + LTRIM(RTRIM(CAST(CASE @LetterFormulaPart4--dbo.GetSystemValue('LetterFormulaPart4')--38  
                                 WHEN -1 THEN ''
                                 WHEN 0 THEN ''
                                 WHEN 1 THEN @SecCode + @Delimeter
                                 WHEN 2 THEN @MYear + @Delimeter
                                 WHEN 3 THEN @IndicatorID + @Delimeter
                                 WHEN 4 THEN @ToOrgCode + @Delimeter
                                 WHEN 5 THEN @FromOrgCode + @Delimeter
                                 WHEN 6 THEN @LetterTypCode + @Delimeter
                                 WHEN 7 THEN @UserMemo + @Delimeter
                                 WHEN 8 THEN @FromPrecode + @Delimeter
                                 WHEN 9 THEN @CentralNoDabir + @Delimeter
                                 WHEN 10
                                 THEN ISNULL(@Subject, '') + @Delimeter
                               END AS VARCHAR)))
            + LTRIM(RTRIM(CAST(CASE @LetterFormulaPart5--dbo.GetSystemValue('LetterFormulaPart5')--39  
                                 WHEN -1 THEN ''
                                 WHEN 0 THEN ''
                                 WHEN 1 THEN @SecCode + @Delimeter
                                 WHEN 2 THEN @MYear + @Delimeter
                                 WHEN 3 THEN @IndicatorID + @Delimeter
                                 WHEN 4 THEN @ToOrgCode + @Delimeter
                                 WHEN 5 THEN @FromOrgCode + @Delimeter
                                 WHEN 6 THEN @LetterTypCode + @Delimeter
                                 WHEN 7 THEN @UserMemo + @Delimeter
                                 WHEN 8 THEN @FromPrecode + @Delimeter
                                 WHEN 9 THEN @CentralNoDabir + @Delimeter
                                 WHEN 10
                                 THEN ISNULL(@Subject, '') + @Delimeter
                               END AS VARCHAR)))
            + LTRIM(RTRIM(CAST(CASE @LetterFormulaPart6--dbo.GetSystemValue('LetterFormulaPart6')--40  
                                 WHEN -1 THEN ''
                                 WHEN 0 THEN ''
                                 WHEN 1 THEN @SecCode + @Delimeter
                                 WHEN 2 THEN @MYear + @Delimeter
                                 WHEN 3 THEN @IndicatorID + @Delimeter
                                 WHEN 4 THEN @ToOrgCode + @Delimeter
                                 WHEN 5 THEN @FromOrgCode + @Delimeter
                                 WHEN 6 THEN @LetterTypCode + @Delimeter
                                 WHEN 7 THEN @UserMemo + @Delimeter
                                 WHEN 8 THEN @FromPrecode + @Delimeter
                                 WHEN 9 THEN @CentralNoDabir + @Delimeter
                                 WHEN 10
                                 THEN ISNULL(@Subject, '') + @Delimeter
                               END AS VARCHAR))) 
      
        WHILE CHARINDEX('  ', @result) <> 0
            BEGIN  
                SET @result = REPLACE(@result, '  ', ' ')  
                SET @result = REPLACE(@result, '/ ', '/')  
                SET @result = REPLACE(@result, ' /', '/')  
            END   
      
        SET @result = REPLACE(LTRIM(RTRIM(@result)), @Delimeter + @Delimeter,
                              @Delimeter)  
        SET @result = REPLACE(@result, @Delimeter + @Delimeter, @Delimeter)  
      
      
        IF SUBSTRING(@result, LEN(@result), 1) = @Delimeter
            SET @result = SUBSTRING(@result, 1, LEN(@result) - 1)  
      
        IF SUBSTRING(@result, 1, 1) = @Delimeter
            SET @result = SUBSTRING(@result, 2, LEN(@result) - 1)  
      
        RETURN(@result)  
END
GO
/****** Object:  UserDefinedFunction [dbo].[IS_Inner_ORG]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IS_Inner_ORG]
(
	@pid INT
)
	RETURNS BIT
AS
BEGIN
	WHILE (@pid>4)
	BEGIN
		SELECT @pid = parentID FROM FromOrganizations WHERE ID = @pid
	END
	
	DECLARE @ret BIT
	
	--parsa
       --	SET @ret = 3
        --پيش فرض همه سازمان دروني هستند
	SET @ret = 1
	--parsa
	
	--SET @ret = 1
	--IF @pid > 2
	--parsa 
       -- IF @pid = 2 --چارت سازماني
       --	 SET @ret = 1
   

	IF @pid IN (3,4)--سازمان هاي بروني
	   SET @ret = 0    
	--parsa
	    
	RETURN @ret
END
GO
/****** Object:  UserDefinedFunction [dbo].[Is_ParentId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 


CREATE   FUNCTION [dbo].[Is_ParentId] (@ChildID int,@ParentID int)
RETURNS bit AS
BEGIN

 declare @PI int,@CurID int,@stoper int
if @childid=@parentid return(1)
if @ParentID<5 return(1)
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
/****** Object:  UserDefinedFunction [dbo].[isLike]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[isLike](@fieldType varchar(50))
RETURNS  bit AS  
BEGIN 
 return case when @fieldType in ('float','int','bit','money','bigint','datetime') then 0 else 1 end
END




GO
/****** Object:  UserDefinedFunction [dbo].[IsString]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[IsString](@fieldType varchar(50))
RETURNS bit  AS
BEGIN
return case when @fieldType in ('float','int','bit','money','bigint') then 0 else 1 end
END



GO
/****** Object:  UserDefinedFunction [dbo].[Letter_Archived]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[MiladiLeapyear]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[NewIndicatorID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Function [dbo].[NewIndicatorID](@letter_type int,@LetterFormat int,@myear int,@SecretariatID int)  
RETURNS int AS    
BEGIN  
declare @RecivedInd int ,@SentInd  int,@innerind int,@newIndicatorid int  
  
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=1   
  
Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=2   
  
  
 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=3  
  
  if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3  
    set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3  
  
  
  if @SentInd<dbo.GetSystemValue('BeginIndicator')--3   
    set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3  
  
  if @innerind<dbo.GetSystemValue('BeginIndicator')--3   
    set  @innerind=dbo.GetSystemValue('BeginIndicator')--3  
  
  
if @letter_type=3   
  return(@innerind)  
    
  
 if dbo.GetSystemValue('UniqeIndicator')=0  --5
  begin  
     if @SentInd>@RecivedInd   
        set @newIndicatorid=@SentInd  
       else  
        set @newIndicatorid=@RecivedInd  
  
  end  
  
 if dbo.GetSystemValue('UniqeIndicator')=1  --5
   begin  
    if @letter_type=1   
     set @newIndicatorid=@RecivedInd  
    if @letter_type=2  
     set @newIndicatorid=@SentInd  
   end  
  
 if dbo.GetSystemValue('UniqeIndicator')=2  --5
  begin  
   if @letter_type=2  
      set @newIndicatorid=2*(1+(@SentInd-1)/2)  
  
   if @letter_type=1  
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1  
  end  
  
 if dbo.GetSystemValue('UniqeIndicator')=3  --5
  begin  
   if @letter_type=1  
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)  
  
   if @letter_type=2  
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1  
  end  
return(@newIndicatorid)   
END

GO
/****** Object:  UserDefinedFunction [dbo].[Number_Of_Inbox]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Function [dbo].[Number_Of_Inbox]
(
	@SecretariatID int, @LetterFormat tinyint,@OrgID int,
	@Proceeded bit,@myear int,@Letter_Type int
)
	returns int
BEGIN
	return( SELECT count(Letter.letterID)
			FROM ReCommites
				INNER JOIN Letter  ON ReCommites.LetterID = Letter.LetterID
			Where (Letter.myear = @myear)
				and (SecretariatID= @SecretariatID or @SecretariatID = 0)
				and (LetterFormat = @LetterFormat or  @LetterFormat = 0)
				and (OrgID = @OrgID )
				and (Proceeded = @Proceeded)
				and (Letter_Type = @Letter_Type or @Letter_Type = 0))
END
GO
/****** Object:  UserDefinedFunction [dbo].[Number_Of_Week]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
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



GO
/****** Object:  UserDefinedFunction [dbo].[NumberOfPage_ByMaxSize]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[NumberOfPage_ByMaxSize] (@letterID int ,@MaxSize int)
RETURNS int AS
BEGIN
declare @result int
set @result=-1
select top 1 @result=Pagenumber
from letterdata ld
where (select sum(datalength(image)) from letterData where letterid=@letterID and pagenumber<=ld.Pagenumber)<=1000*@MaxSize
order by Pagenumber desc
return(@result)
END




GO
/****** Object:  UserDefinedFunction [dbo].[ParentId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[pm]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[pm](@time char(5))
RETURNS varchar(100) AS  
BEGIN
return(case when substring(@time,1,2)>12 then 'بعد از ظهر' else 'قبل از ظهر' end)
END


GO
/****** Object:  UserDefinedFunction [dbo].[Recommite_DeadLine]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  FUNCTION [dbo].[Recommite_DeadLine](@RecommiteID int,@today char(10))
RETURNS int AS
BEGIN
declare @letterid int, @deadlinedate char(10),@parentID int,@proceeded bit

select @parentID=id ,@letterid=letterid,@proceeded=proceeded,@deadlinedate=deadlinedate from recommites where  RecommiteID=@RecommiteID

if @proceeded=1
select @deadlinedate=min(deadlinedate)
from recommites
where letterid=@LetterID and Parentid=@ParentID and proceeded=0

if isnull(@deadlinedate,'')='' return(null)

return(dbo.ShamsiDatediff(@today,@deadlinedate))
END


GO
/****** Object:  UserDefinedFunction [dbo].[Recommite_FirstProceed]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[Recommite_FirstView]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[Recommite_has_done]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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

if exists (select *
from  ReCommites
WHERE     LetterID=@LetterID and Type=@Type and id>@id and proceeded=0)  return(2)

return(1)

end




GO
/****** Object:  UserDefinedFunction [dbo].[Recommites_by_indicator]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  FUNCTION [dbo].[Recommites_by_indicator](@LetterID int )
RETURNS nvarchar(500) AS
BEGIN


declare @res nvarchar(500)
set @res=''

SELECT       @res=@res+','+FromOrganizations.Title+'  '+recommitedate
FROM         ReCommites  INNER JOIN
                      FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID
WHERE     (ReCommites.LetterID = @LetterID)

if @res<>'' set @res=substring(@res,2,len(@res)-1)

return(@res)

END




GO
/****** Object:  UserDefinedFunction [dbo].[RetroactionNo_LIST]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[RetroactionNo_LIST] (@LID INT)
RETURNS VARCHAR(100)
WITH EXECUTE AS CALLER
AS
BEGIN                         
                                               
DECLARE 
@ID AS VARCHAR(4000)

DECLARE 
@RetroactionNo VARCHAR(100)

SET @RetroactionNo = '';

DECLARE EXM_CURSOR CURSOR FOR
SELECT dbo.Letter.IndicatorID  FROM dbo.Follow_Retroaction_Letter 
LEFT JOIN dbo.Letter ON dbo.Letter.LetterID = dbo.Follow_Retroaction_Letter.FR_LetterID
WHERE 
dbo.Follow_Retroaction_Letter.LetterID = @LID
and 
dbo.Follow_Retroaction_Letter.FR_Kind = 0
OPEN EXM_CURSOR
FETCH NEXT FROM EXM_CURSOR
INTO @ID

WHILE (@@FETCH_STATUS = 0)
BEGIN

IF (@RetroactionNo <> '')
SET @RetroactionNo = @RetroactionNo + ','

SET @RetroactionNo = @RetroactionNo + CAST(@ID AS VARCHAR(10))
    
FETCH NEXT FROM EXM_CURSOR
INTO @ID
END

CLOSE EXM_CURSOR
DEALLOCATE EXM_CURSOR

SET @RetroactionNo = '   ' + @RetroactionNo

RETURN(@RetroactionNo)
END
GO
/****** Object:  UserDefinedFunction [dbo].[RetroactionNo_LIST_02]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[RetroactionNo_LIST_02] (@LID INT)
RETURNS VARCHAR(100)
WITH EXECUTE AS CALLER
AS
BEGIN
                         
DECLARE 
@ID AS VARCHAR(4000)

DECLARE 
@RetroactionNo VARCHAR(100)

SET @RetroactionNo = '';

DECLARE EXM_CURSOR CURSOR FOR
SELECT ISNULL(dbo.Letter.IncommingNO,'(بدون شماره)')  FROM dbo.Follow_Retroaction_Letter 
LEFT JOIN dbo.Letter ON dbo.Letter.LetterID = dbo.Follow_Retroaction_Letter.FR_LetterID
WHERE 
dbo.Follow_Retroaction_Letter.LetterID = @LID
and 
dbo.Follow_Retroaction_Letter.FR_Kind = 0
OPEN EXM_CURSOR
FETCH NEXT FROM EXM_CURSOR
INTO @ID

WHILE (@@FETCH_STATUS = 0)
BEGIN

IF (@RetroactionNo <> '')
SET @RetroactionNo = @RetroactionNo + ' ### '

SET @RetroactionNo = @RetroactionNo + CAST(@ID AS VARCHAR(100))
    
FETCH NEXT FROM EXM_CURSOR
INTO @ID
END

CLOSE EXM_CURSOR
DEALLOCATE EXM_CURSOR

SET @RetroactionNo = '   ' + @RetroactionNo 

RETURN(@RetroactionNo)
END
GO
/****** Object:  UserDefinedFunction [dbo].[Shamsi]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------
-------------------------------------------
CREATE  Function [dbo].[Shamsi](@DATE datetime)
RETURNS Varchar(10)
AS
BEGIN
DECLARE @SYear as Integer
DECLARE @SMonth as Integer
DECLARE @SDay as Integer
DECLARE @AllDays as float
DECLARE @ShiftDays as float
DECLARE @OneYear as float
DECLARE @LeftDays as float
DECLARE @YearDay as Integer
DECLARE @Farsi_Date as Varchar(100)
SET @Date=@Date-CONVERT(char,@Date,114)

SET @ShiftDays=466699 +2
SET @OneYear= 365.24199


SET @SYear = 0
SET @SMonth = 0
SET @SDay = 0
SET @AllDays = CAst(@date as Real)

SET @AllDays = @AllDays + @ShiftDays

SET @SYear = (@AllDays / @OneYear) --trunc
SET @LeftDays = @AllDays - @SYear * @OneYear

if (@LeftDays < 0.5)
begin
SET @SYear=@SYear+1
SET @LeftDays = @AllDays - @SYear * @OneYear
end;

SET @YearDay = @LeftDays --trunc
if (@LeftDays - @YearDay) >= 0.5
SET @YearDay=@YearDay+1

if ((@YearDay / 31) > 6 )
begin
SET @SMonth = 6
SET @YearDay=@YearDay-(6 * 31)
SET @SMonth= @SMonth+( @YearDay / 30)
if (@YearDay % 30) <> 0
SET @SMonth=@SMonth+1
SET @YearDay=@YearDay-((@SMonth - 7) * 30)
end
else
begin
SET @SMonth = @YearDay / 31
if (@YearDay % 31) <> 0
SET @SMonth=@SMonth+1
SET @YearDay=@YearDay-((@SMonth - 1) * 31)
end
SET @SDay = @YearDay
SET @SYear=@SYear+1


SET @Farsi_Date=(                                      cast(@SYear as varchar(4))+'/'+
       Case when @SMonth<10 then '0' else '' end+cast(@SMonth as varchar(2))+'/'+
       case when @SDay<10 then '0' else '' end+cast(@SDay as varchar(2)))
Return @Farsi_Date
END
GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDateDiff]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[ShamsiDateDiff](@dateFrom char(10),@dateTo char(10))
RETURNS   int
AS
BEGIN

RETURN( dbo.ShamsiToInt(@dateTo)-dbo.ShamsiToInt(@dateFrom))
END




GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOf]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOfWeek]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayPerMonth]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ShamsiDayPerMonth](@y int,@m int) RETURNS  INT 
AS BEGIN
 return(case when @m<=6 then 31 when @m>6 and @m<>12 then 30 else 29+dbo.ShamsiLeapYear(@y) end)
END


 
GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiEnCodeDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiIncDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiInvertForWord]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiLeapYear]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiMonthOf]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiToInt]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--//


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
/****** Object:  UserDefinedFunction [dbo].[ShamsiToMiladi]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiYearOf]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[StartEmail]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[StartEmail] 
(
	@input VARCHAR(MAX)
) 
RETURNS Int
AS
BEGIN
  DECLARE @allowables char(26) = 'abcdefghijklmnopqrstuvwxyz';
  DECLARE @allowed int = 0; 
  DECLARE @index int = 1;
  WHILE @index <= LEN(@input)
    BEGIN
    IF CHARINDEX(SUBSTRING(@input,@index,1),@allowables) <> 0
      BEGIN
		SET @allowed = @index;
		BREAK;
      END
    ELSE
      BEGIN
		SET @allowed = 0;
		SET @index = @index+1;
      END
    END
  RETURN @allowed
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_getFollowUpSize]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[udf_getFollowUpSize]
(
	@UserId int
)
returns int
as
begin
	declare @count int=0
	select @count=count(*) from FollowUp
	where  1=1
	and CONVERT(date,dbo.ShamsiToMiladi(ToDoDate)) = CONVERT(date,getdate())
	and convert(varchar(5),convert(time,SYSDATETIME())) =  SUBSTRING(ToDoTime,1, 5)
	and UserID=@UserId
	return @count
	end
GO
/****** Object:  UserDefinedFunction [dbo].[udf_recommiteUnreadSize]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udf_recommiteUnreadSize]
(
	@userId int
)
returns int
As
Begin
	declare @result int=0;
	select @result= count(*) from ReCommites t1
	inner join Users u
	on u.id=@userId and ( u.FromOrgID =t1.OrgID or u.SecondOrgID=t1.OrgID or u.TreeOrgID=t1.OrgID or u.FourOrgID=t1.OrgID or u.FiveOrgID=t1.OrgID)
	where viewdate is null
	return @result
End
GO
/****** Object:  UserDefinedFunction [dbo].[web_GetExtentionID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[web_GetExtentionID](@Extention nvarchar(10), @IsSystem int) 
Returns int 
AS
begin
declare @ExtentionID as int
select @ExtentionID = ExtentionID from Extention where Extention = @Extention and IsSystem = @IsSystem
return @ExtentionID
end

GO
/****** Object:  UserDefinedFunction [dbo].[YTrim]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------
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
/****** Object:  UserDefinedFunction [tSQLt].[GetTestResultFormatter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [tSQLt].[GetTestResultFormatter]()
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @FormatterName NVARCHAR(MAX);
    
    SELECT @FormatterName = CAST(value AS NVARCHAR(MAX))
    FROM sys.extended_properties
    WHERE name = N'tSQLt.ResultsFormatter'
      AND major_id = OBJECT_ID('tSQLt.Private_OutputTestResults');
      
    SELECT @FormatterName = COALESCE(@FormatterName, 'tSQLt.DefaultResultFormatter');
    
    RETURN @FormatterName;
END;
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetCleanObjectName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [tSQLt].[Private_GetCleanObjectName](@ObjectName NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    RETURN (SELECT OBJECT_NAME(OBJECT_ID(@ObjectName)));
END;
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetCleanSchemaName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*******************************************************************************************/
/*******************************************************************************************/
/*******************************************************************************************/
CREATE FUNCTION [tSQLt].[Private_GetCleanSchemaName](@SchemaName NVARCHAR(MAX), @ObjectName NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    RETURN (SELECT SCHEMA_NAME(schema_id) 
              FROM sys.objects 
             WHERE object_id = CASE WHEN ISNULL(@SchemaName,'') in ('','[]')
                                    THEN OBJECT_ID(@ObjectName)
                                    ELSE OBJECT_ID(@SchemaName + '.' + @ObjectName)
                                END);
END;
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetLastTestNameIfNotProvided]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------------
CREATE FUNCTION [tSQLt].[Private_GetLastTestNameIfNotProvided](@TestName NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
  IF(LTRIM(ISNULL(@TestName,'')) = '')
  BEGIN
    SELECT @TestName = TestName 
      FROM tSQLt.Run_LastExecution le
      JOIN sys.dm_exec_sessions es
        ON le.SessionId = es.session_id
       AND le.LoginTime = es.login_time
     WHERE es.session_id = @@SPID;
  END

  RETURN @TestName;
END
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetOriginalTableName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*******************************************************************************************/
/*******************************************************************************************/
/*******************************************************************************************/
CREATE FUNCTION [tSQLt].[Private_GetOriginalTableName](@SchemaName NVARCHAR(MAX), @TableName NVARCHAR(MAX)) --DELETE!!!
RETURNS NVARCHAR(MAX)
AS
BEGIN
  RETURN (SELECT CAST(value AS NVARCHAR(4000))
    FROM sys.extended_properties
   WHERE class_desc = 'OBJECT_OR_COLUMN'
     AND major_id = OBJECT_ID(@SchemaName + '.' + @TableName)
     AND minor_id = 0
     AND name = 'tSQLt.FakeTable_OrgTableName');
END;
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_QuoteClassNameForNewTestClass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Build+
CREATE FUNCTION [tSQLt].[Private_QuoteClassNameForNewTestClass](@ClassName NVARCHAR(MAX))
  RETURNS NVARCHAR(MAX)
AS
BEGIN
  RETURN 
    CASE WHEN @ClassName LIKE '[[]%]' THEN @ClassName
         ELSE QUOTENAME(@ClassName)
     END;
END;
---Build-
GO
/****** Object:  View [tSQLt].[TestClasses]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------------
CREATE VIEW [tSQLt].[TestClasses]
AS
  SELECT s.name AS Name, s.schema_id AS SchemaId
    FROM sys.extended_properties ep
    JOIN sys.schemas s
      ON ep.major_id = s.schema_id
   WHERE ep.name = N'tSQLt.TestClass';
GO
/****** Object:  View [tSQLt].[Tests]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [tSQLt].[Tests]
AS
  SELECT classes.SchemaId, classes.Name AS TestClassName, 
         procs.object_id AS ObjectId, procs.name AS Name
    FROM tSQLt.TestClasses classes
    JOIN sys.procedures procs ON classes.SchemaId = procs.schema_id
   WHERE LOWER(procs.name) LIKE 'test%';
GO
/****** Object:  Table [tSQLt].[TestResult]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tSQLt].[TestResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [nvarchar](max) NOT NULL,
	[TestCase] [nvarchar](max) NOT NULL,
	[Name]  AS ((quotename([Class])+'.')+quotename([TestCase])),
	[TranName] [nvarchar](max) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[Msg] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [tSQLt].[TestCaseSummary]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [tSQLt].[TestCaseSummary]()
RETURNS TABLE
AS
RETURN WITH A(Cnt, SuccessCnt, FailCnt, ErrorCnt) AS (
                SELECT COUNT(1),
                       ISNULL(SUM(CASE WHEN Result = 'Success' THEN 1 ELSE 0 END), 0),
                       ISNULL(SUM(CASE WHEN Result = 'Failure' THEN 1 ELSE 0 END), 0),
                       ISNULL(SUM(CASE WHEN Result = 'Error' THEN 1 ELSE 0 END), 0)
                  FROM tSQLt.TestResult
                  
                )
       SELECT 'Test Case Summary: ' + CAST(Cnt AS NVARCHAR) + ' test case(s) executed, '+
                  CAST(SuccessCnt AS NVARCHAR) + ' succeeded, '+
                  CAST(FailCnt AS NVARCHAR) + ' failed, '+
                  CAST(ErrorCnt AS NVARCHAR) + ' errored.' Msg,*
         FROM A;
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetOriginalTableInfo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [tSQLt].[Private_GetOriginalTableInfo](@TableObjectId INT)
RETURNS TABLE
AS
  RETURN SELECT CAST(value AS NVARCHAR(4000)) OrgTableName,
                OBJECT_ID(QUOTENAME(OBJECT_SCHEMA_NAME(@TableObjectId)) + '.' + QUOTENAME(CAST(value AS NVARCHAR(4000)))) OrgTableObjectId
    FROM sys.extended_properties
   WHERE class_desc = 'OBJECT_OR_COLUMN'
     AND major_id = @TableObjectId
     AND minor_id = 0
     AND name = 'tSQLt.FakeTable_OrgTableName';
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_FindConstraint]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [tSQLt].[Private_FindConstraint]
(
  @TableObjectId INT,
  @ConstraintName NVARCHAR(MAX)
)
RETURNS TABLE
AS
RETURN
  SELECT TOP(1) constraints.object_id AS ConstraintObjectId, type_desc AS ConstraintType
    FROM sys.objects constraints
    CROSS JOIN tSQLt.Private_GetOriginalTableInfo(@TableObjectId) orgTbl
   WHERE @ConstraintName IN (constraints.name, QUOTENAME(constraints.name))
     AND constraints.parent_object_id = orgTbl.OrgTableObjectId
   ORDER BY LEN(constraints.name) ASC;
GO
/****** Object:  Table [dbo].[ChartWorkGroupDetails]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartWorkGroupDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[OrgID] [int] NULL,
	[AccessForErja] [bit] NULL,
 CONSTRAINT [PK_ChartWorkGroupDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FromOrganizations]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[PreCode] [nvarchar](50) NULL,
	[IsInnerOrg] [bit] NOT NULL,
	[Code] [nvarchar](100) NULL,
	[UniqueID] [bigint] NULL,
	[GroupID] [int] NULL,
 CONSTRAINT [PK_FromOrganizations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FromOrganizations_fn]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[FromOrganizations_fn]
(
  @OrgID int
)
returns table
as
return 
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID
	FROM FromOrganizations 
	WHERE isactive=1 
	AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
	AND ID IN(
				SELECT 
				    DISTINCT OrgID
				FROM ChartWorkGroupDetails
				WHERE GroupID in(
									SELECT 
									  GroupID 
									FROM ChartWorkGroupDetails
									WHERE OrgID = @OrgID
									AND AccessForErja = 1)
				AND AccessForErja = 1
             )
AND GroupID IS NOT NULL
)
UNION 
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
	AND IsInnerOrg = 0
)
/*
UNION 
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	--AND ID In( 3,1)
)
*/
/*UNION 
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND ID in (
				SELECT 
				   ParentID
				FROM FromOrganizations 
				WHERE isactive=1 
				AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
				AND ID IN(
							SELECT 
								DISTINCT OrgID
							FROM ChartWorkGroupDetails
							WHERE GroupID in(
												SELECT 
												  GroupID 
												FROM ChartWorkGroupDetails
												WHERE OrgID = @OrgID
												AND AccessForErja = 1)
							AND AccessForErja = 1
						 )
	         )
)
*/
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](100) NULL,
	[AccessID] [tinyint] NULL,
	[FromOrgID] [int] NULL,
	[DefualtSecretariatID] [tinyint] NOT NULL,
	[IsSecretariantStaffer] [bit] NULL,
	[KartableGridInfo] [image] NULL,
	[DabirGridInfo] [image] NULL,
	[EndActiveDate] [char](10) NULL,
	[BeginActiveDate] [char](10) NULL,
	[AlternativeUserID] [int] NULL,
	[AlternativeEndDate] [char](10) NULL,
	[AlternativebeginDate] [char](10) NULL,
	[HasSecureLetterAccess] [bit] NOT NULL,
	[SecondOrgID] [int] NULL,
	[eCartableGridInfo] [varchar](500) NULL,
	[eCartableTheme] [varchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CanViewSecureRecommite] [bit] NULL,
	[GroupID] [int] NULL,
	[CanRecommiteWithOtherOrg] [bit] NULL,
	[canViewClassifiedArchiveDocs] [bit] NULL,
	[archiveUserID] [int] NULL,
	[iscartableuser] [bit] NULL,
	[TreeOrgID] [int] NULL,
	[FourOrgID] [int] NULL,
	[FiveOrgID] [int] NULL,
	[FullAdmin] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FromOrganizations_fnforDabir]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[FromOrganizations_fnforDabir]
(
  @UserID int
)
returns table
as
return 

(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID--,
	   --AccessForErja
	FROM FromOrganizations 
	WHERE isactive=1 
	AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
	AND ID IN(
				SELECT 
				    DISTINCT OrgID
				FROM ChartWorkGroupDetails
				WHERE GroupID in(
									Select GroupID from FromOrganizations
									Where id in 
									(
											Select 
											   OrgID 
											from 
											(
											Select id,FromOrgID OrgID,Title from Users
											union  
											Select id,SecondOrgID,Title from Users
											union
											Select id,TreeOrgID,Title from Users
											union
											Select id,FourOrgID,Title from Users
											union
											Select id,FiveOrgID,Title from Users
											)a
											WHERE OrgID is not null
											AND id = @UserID
									)
                               )
				AND AccessForErja = 1
             )
AND GroupID IS NOT NULL
)
UNION 
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
	AND IsInnerOrg = 0
)
UNION 
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND ID In( 3,1,2243)
)



-------------------------------------------------------
/*Select distinct Sub1.ID,
	   Sub1.code, 
	   Sub1.Title,
	   Sub1.ResponsibleStaffer,
	   Sub1.ParentID,
	   Sub1.GroupID,
	   Sub1.IsActive,
	   Sub1.IsInnerOrg,
	   Sub1.Phone,
	   Sub1.Fax,
       Sub1.Email,
       Sub1.PreCode,
       Sub1.UniqueID
from (
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID
	FROM FromOrganizations 
	WHERE isactive=1 
	AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
	AND ID IN(
				SELECT 
				    DISTINCT OrgID
				FROM ChartWorkGroupDetails
				WHERE GroupID in(
									SELECT 
									  GroupID 
									FROM ChartWorkGroupDetails
									WHERE OrgID = @OrgID
									AND AccessForErja = 1)
				AND AccessForErja = 1
             )
AND GroupID IS NOT NULL
)
UNION all
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND (Title LIKE '%' + '' + '%' OR ResponsibleStaffer LIKE '%' + '' + '%' OR code LIKE '%' + '' +'%')
	AND IsInnerOrg = 0
)
/*UNION all
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND ID In( 3,1)
)*/
)Sub1
inner JOIN ChartWorkGroupDetails b
  ON sub1.id = b.OrgID
WHERE 1=1
AND AccessForErja= 1


UNION all
(
	SELECT 
	   ID,
	   code, 
	   Title,
	   ResponsibleStaffer,
	   ParentID,
	   GroupID,
	   IsActive,
	   IsInnerOrg,
	   Phone,
	   Fax,
       Email,
       PreCode,
       UniqueID  
	FROM FromOrganizations 
	WHERE isactive=1 
	AND ID In( 3,1,2,4)
)
*/
------------------------------------
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetFullTypeName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [tSQLt].[Private_GetFullTypeName](@TypeId INT, @Length INT, @Precision INT, @Scale INT, @CollationName NVARCHAR(MAX))
RETURNS TABLE
AS
RETURN SELECT SchemaName + '.' + Name + Suffix + Collation AS TypeName, SchemaName, Name, Suffix
FROM(
  SELECT QUOTENAME(SCHEMA_NAME(schema_id)) SchemaName, QUOTENAME(name) Name,
              CASE WHEN max_length = -1
                    THEN ''
                   WHEN @Length = -1
                    THEN '(MAX)'
                   WHEN name LIKE 'n%char'
                    THEN '(' + CAST(@Length / 2 AS NVARCHAR) + ')'
                   WHEN name LIKE '%char' OR name LIKE '%binary'
                    THEN '(' + CAST(@Length AS NVARCHAR) + ')'
                   WHEN name IN ('decimal', 'numeric')
                    THEN '(' + CAST(@Precision AS NVARCHAR) + ',' + CAST(@Scale AS NVARCHAR) + ')'
                   ELSE ''
               END Suffix,
              CASE WHEN @CollationName IS NULL THEN ''
                   ELSE ' COLLATE ' + @CollationName
               END Collation
          FROM sys.types WHERE user_type_id = @TypeId
          )X;
---Build-
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_GetQuotedTableNameForConstraint]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [tSQLt].[Private_GetQuotedTableNameForConstraint](@ConstraintObjectId INT)
RETURNS TABLE
AS
RETURN
  SELECT QUOTENAME(SCHEMA_NAME(newtbl.schema_id)) + '.' + QUOTENAME(OBJECT_NAME(newtbl.object_id)) QuotedTableName,
         SCHEMA_NAME(newtbl.schema_id) SchemaName,
         OBJECT_NAME(newtbl.object_id) TableName,
         OBJECT_NAME(constraints.parent_object_id) OrgTableName
      FROM sys.objects AS constraints
      JOIN sys.extended_properties AS p
      JOIN sys.objects AS newtbl
        ON newtbl.object_id = p.major_id
       AND p.minor_id = 0
       AND p.class_desc = 'OBJECT_OR_COLUMN'
       AND p.name = 'tSQLt.FakeTable_OrgTableName'
        ON OBJECT_NAME(constraints.parent_object_id) = CAST(p.value AS NVARCHAR(4000))
       AND constraints.schema_id = newtbl.schema_id
       AND constraints.object_id = @ConstraintObjectId;
GO
/****** Object:  UserDefinedFunction [tSQLt].[Private_ResolveFakeTableNamesForBackwardCompatibility]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [tSQLt].[Private_ResolveFakeTableNamesForBackwardCompatibility] 
 (@TableName NVARCHAR(MAX), @SchemaName NVARCHAR(MAX))
RETURNS TABLE AS 
RETURN
  SELECT QUOTENAME(OBJECT_SCHEMA_NAME(object_id)) AS CleanSchemaName,
         QUOTENAME(OBJECT_NAME(object_id)) AS CleanTableName
     FROM (SELECT CASE
                    WHEN @SchemaName IS NULL THEN OBJECT_ID(@TableName)
                    ELSE COALESCE(OBJECT_ID(@SchemaName + '.' + @TableName),OBJECT_ID(@TableName + '.' + @SchemaName)) 
                  END object_id
          ) ids;
GO
/****** Object:  Table [dbo].[Accesses]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesses](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[IsExp] [bit] NULL,
	[IsIncom] [bit] NULL,
	[IsDoc] [bit] NULL,
	[IsInter] [bit] NULL,
 CONSTRAINT [PK_Accesses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessType](
	[AccessTypeID] [tinyint] NOT NULL,
	[AccessTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccessType] PRIMARY KEY CLUSTERED 
(
	[AccessTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actions](
	[FormTag] [tinyint] NOT NULL,
	[ID] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[DeactiveInLight] [tinyint] NULL,
	[ComponentTag] [int] NULL,
	[GUID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionsAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionsAccess](
	[AccessID] [tinyint] NOT NULL,
	[ActionID] [nvarchar](50) NOT NULL,
	[FormTag] [tinyint] NOT NULL,
	[HasAccess] [bit] NOT NULL,
	[GUID] [int] NULL,
 CONSTRAINT [PK_ActionsAccess] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC,
	[ActionID] ASC,
	[FormTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionType](
	[ActionTypeID] [int] NOT NULL,
	[ActionTypeTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_ActionType] PRIMARY KEY CLUSTERED 
(
	[ActionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[added]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[added](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ParentID] [int] NOT NULL,
	[Phone] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[ResponsibleStaffer] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[PreCode] [nvarchar](50) NULL,
	[IsInnerOrg] [bit] NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Number] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppGridColumns]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppGridColumns](
	[id] [int] NOT NULL,
	[AppID] [tinyint] NOT NULL,
	[GridName] [nvarchar](255) NOT NULL,
	[GridFile] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationForms]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationForms](
	[ID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchiveCenter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[ArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[ArchiveCenterID] [int] NOT NULL,
 CONSTRAINT [PK_ArchiveFolder] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartWorkGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartWorkGroup](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](100) NULL,
 CONSTRAINT [PK_ChartWorkGroup] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classifications]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classifications](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Classifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentTag]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentTag](
	[ComponentTagId] [int] NULL,
	[ComponentTitle] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBUpdate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBUpdate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DBVersion] [varchar](50) NULL,
	[Tag] [int] NULL,
 CONSTRAINT [PK_DBUpdate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeletedLetters]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeletedLetters](
	[LetterId] [int] NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[EmailNuFromDate] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentsRelation]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsRelation](
	[MainDocID] [int] NOT NULL,
	[RelatedDocID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoneStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoneStatus](
	[DoneStatusID] [tinyint] NOT NULL,
	[DoneStatustitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoneStatus] PRIMARY KEY CLUSTERED 
(
	[DoneStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAddresses]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAddresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[PassWord] [varchar](64) NOT NULL,
	[Recievehost] [varchar](50) NOT NULL,
	[SendHost] [varchar](50) NOT NULL,
	[RecivePort] [smallint] NOT NULL,
	[SendPort] [smallint] NOT NULL,
	[AuthenticationType] [varchar](50) NOT NULL,
	[SSLOption] [varchar](50) NOT NULL,
	[ReciverOrgID] [int] NOT NULL,
	[ReciverSecID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ConnectionTimeOut] [smallint] NOT NULL,
 CONSTRAINT [PK_EmailAddresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[EmailsID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[SendAddress] [nvarchar](100) NULL,
	[ReciveAddress] [nvarchar](100) NULL,
	[Memo] [image] NULL,
	[AttachFile] [image] NULL,
	[AttachFileName] [nvarchar](50) NULL,
	[Status] [smallint] NULL,
	[DateEmail] [nvarchar](10) NOT NULL,
	[TimeEmail] [nvarchar](10) NOT NULL,
	[IsAnswer] [bit] NULL,
	[IsReciveEmail] [bit] NULL,
	[UsersID] [int] NOT NULL,
	[IsRead] [bit] NULL,
	[IsPersonal] [bit] NULL,
	[IsImportant] [bit] NULL,
	[IsSecret] [bit] NULL,
	[EmailNuFromDate] [nvarchar](20) NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[EmailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[Extention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extention](
	[ExtentionID] [int] IDENTITY(1,1) NOT NULL,
	[ExtentionTitle] [nvarchar](200) NOT NULL,
	[Extention] [varchar](5) NOT NULL,
	[IsSystem] [bit] NOT NULL,
 CONSTRAINT [PK_Extention] PRIMARY KEY CLUSTERED 
(
	[ExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldAccess](
	[FieldAccessID] [int] IDENTITY(1,1) NOT NULL,
	[FieldID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[AccessTypeID] [tinyint] NOT NULL,
 CONSTRAINT [PK_FieldAccess] PRIMARY KEY CLUSTERED 
(
	[FieldAccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [nvarchar](50) NOT NULL,
	[TableID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[IsWhere] [bit] NOT NULL,
	[ISString] [bit] NOT NULL,
	[IsLike] [bit] NOT NULL,
	[EveryLike] [bit] NOT NULL,
	[VisibleInGrid] [bit] NOT NULL,
	[isblob] [bit] NULL,
	[FieldTypeID] [int] NULL,
	[ReferenceTableID] [int] NULL,
	[order] [int] NULL,
	[FieldGroupID] [int] NULL,
	[isboolean] [bit] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldType](
	[FieldTypeID] [int] NOT NULL,
	[FieldTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FieldType] PRIMARY KEY CLUSTERED 
(
	[FieldTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Follow_Retroaction_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Follow_Retroaction_Letter](
	[FR_ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[FR_LetterID] [int] NULL,
	[FR_Kind] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUp](
	[FollowUPID] [int] IDENTITY(1,1) NOT NULL,
	[StartFollowUpID] [int] NULL,
	[FollowUPTypeID] [int] NOT NULL,
	[DoneStatusID] [tinyint] NOT NULL,
	[UserID] [int] NOT NULL,
	[Comment] [nvarchar](255) NULL,
	[ToDoDate] [char](10) NULL,
	[ToDoTime] [char](5) NULL,
	[DoneComment] [nvarchar](255) NULL,
	[HasAlarm] [bit] NULL,
	[Letterid] [int] NULL,
 CONSTRAINT [PK_FollowUp] PRIMARY KEY CLUSTERED 
(
	[FollowUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUpType](
	[FollowUpTypeID] [int] IDENTITY(1,1) NOT NULL,
	[FollowUpTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FollowUpType] PRIMARY KEY CLUSTERED 
(
	[FollowUpTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageData](
	[ImageDataID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [image] NULL,
	[FileName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[TableID] [int] NOT NULL,
	[Tag] [int] NULL,
 CONSTRAINT [PK_ImageData] PRIMARY KEY CLUSTERED 
(
	[ImageDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letter](
	[LetterID] [int] IDENTITY(1,1) NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[MYear] [int] NOT NULL,
	[SecretariatID] [int] NOT NULL,
	[Letter_Type] [int] NOT NULL,
	[letterformat] [int] NOT NULL,
	[IncommingNO] [nvarchar](50) NULL,
	[Incommingdate] [nvarchar](10) NULL,
	[CenterDate] [char](10) NULL,
	[FromOrgID] [int] NOT NULL,
	[ToOrgID] [int] NOT NULL,
	[Signerid] [nvarchar](50) NULL,
	[ClassificationID] [int] NOT NULL,
	[UrgencyID] [int] NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[AttachTitle] [nvarchar](255) NULL,
	[NumberOfAttachPages] [smallint] NULL,
	[NumberOfPage] [tinyint] NOT NULL,
	[ReceiveTypeID] [int] NOT NULL,
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
	[PreCode] [nvarchar](50) NULL,
	[fromstaffer] [nvarchar](50) NULL,
	[Finalized] [bit] NOT NULL,
	[SendStatusID] [int] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UserTableID] [int] NULL,
	[UniqueID] [bigint] NULL,
	[Archived] [bit] NOT NULL,
	[SubjectDescription] [nvarchar](255) NULL,
	[SubjectID] [int] NULL,
	[LatestActionTypeID] [int] NULL,
	[LatestActionReason] [nvarchar](255) NULL,
	[DeadLineDate] [char](10) NULL,
	[ActionTypeID] [int] NOT NULL,
	[UserTableID2] [int] NULL,
	[EmailNuFromDate] [nvarchar](20) NULL,
	[OldSecretariatID] [int] NULL,
	[CustomerID] [int] NULL,
	[InnerNO] [varchar](50) NULL,
	[ECEAnswer] [bit] NULL,
	[RetroactionYear] [int] NULL,
	[FollowLetterYear] [int] NULL,
	[InnerNoForWord] [varchar](50) NULL,
	[anjam_shod] [int] NULL,
	[LetterIDUP] [int] NULL,
	[letterTypeID] [int] NULL,
	[PEY] [varchar](max) NULL,
	[ATF] [varchar](max) NULL,
	[PEY2] [varchar](max) NULL,
	[ATF2] [varchar](max) NULL,
	[Has_Page] [bit] NULL,
	[Has_WordPage] [bit] NULL,
	[Has_File] [bit] NULL,
	[EmailFromDateTime] [nvarchar](20) NULL,
	[EmailFrom] [nvarchar](1000) NULL,
	[EmailSubject] [nvarchar](2000) NULL,
	[IsNetWork] [bit] NULL,
	[CenterNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Letter] PRIMARY KEY CLUSTERED 
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Letter_log]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letter_log](
	[LetterID] [int] IDENTITY(1,1) NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[MYear] [int] NOT NULL,
	[SecretariatID] [int] NOT NULL,
	[Letter_Type] [int] NOT NULL,
	[letterformat] [int] NOT NULL,
	[IncommingNO] [nvarchar](50) NULL,
	[Incommingdate] [nvarchar](10) NULL,
	[CenterNo] [nvarchar](50) NULL,
	[CenterDate] [char](10) NULL,
	[FromOrgID] [int] NOT NULL,
	[ToOrgID] [int] NOT NULL,
	[Signerid] [nvarchar](50) NULL,
	[ClassificationID] [int] NOT NULL,
	[UrgencyID] [int] NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[AttachTitle] [nvarchar](255) NULL,
	[NumberOfAttachPages] [smallint] NULL,
	[NumberOfPage] [tinyint] NOT NULL,
	[ReceiveTypeID] [int] NOT NULL,
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
	[PreCode] [nvarchar](50) NULL,
	[fromstaffer] [nvarchar](50) NULL,
	[Finalized] [bit] NOT NULL,
	[SendStatusID] [int] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UserTableID] [int] NULL,
	[UniqueID] [bigint] NULL,
	[Archived] [bit] NOT NULL,
	[SubjectDescription] [nvarchar](255) NULL,
	[SubjectID] [int] NULL,
	[LatestActionTypeID] [int] NULL,
	[LatestActionReason] [nvarchar](255) NULL,
	[DeadLineDate] [char](10) NULL,
	[ActionTypeID] [int] NOT NULL,
	[UserTableID2] [int] NULL,
	[EmailNuFromDate] [nvarchar](20) NULL,
	[OldSecretariatID] [int] NULL,
	[CustomerID] [int] NULL,
	[InnerNO] [varchar](50) NULL,
	[ECEAnswer] [bit] NULL,
	[RetroactionYear] [int] NULL,
	[FollowLetterYear] [int] NULL,
	[InnerNoForWord] [varchar](50) NULL,
	[anjam_shod] [int] NULL,
	[LetterIDUP] [int] NULL,
	[UserName] [nvarchar](100) NULL,
	[DateAction] [datetime] NULL,
	[TypeAction] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Letter_tt]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letter_tt](
	[LetterID] [int] IDENTITY(1,1) NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[MYear] [int] NOT NULL,
	[SecretariatID] [int] NOT NULL,
	[Letter_Type] [int] NOT NULL,
	[letterformat] [int] NOT NULL,
	[IncommingNO] [nvarchar](50) NULL,
	[Incommingdate] [nvarchar](10) NULL,
	[CenterDate] [char](10) NULL,
	[FromOrgID] [int] NOT NULL,
	[ToOrgID] [int] NOT NULL,
	[Signerid] [nvarchar](50) NULL,
	[ClassificationID] [int] NOT NULL,
	[UrgencyID] [int] NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[AttachTitle] [nvarchar](255) NULL,
	[NumberOfAttachPages] [smallint] NULL,
	[NumberOfPage] [tinyint] NOT NULL,
	[ReceiveTypeID] [int] NOT NULL,
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
	[PreCode] [nvarchar](50) NULL,
	[fromstaffer] [nvarchar](50) NULL,
	[Finalized] [bit] NOT NULL,
	[SendStatusID] [int] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UserTableID] [int] NULL,
	[UniqueID] [bigint] NULL,
	[Archived] [bit] NOT NULL,
	[SubjectDescription] [nvarchar](255) NULL,
	[SubjectID] [int] NULL,
	[LatestActionTypeID] [int] NULL,
	[LatestActionReason] [nvarchar](255) NULL,
	[DeadLineDate] [char](10) NULL,
	[ActionTypeID] [int] NOT NULL,
	[UserTableID2] [int] NULL,
	[EmailNuFromDate] [nvarchar](20) NULL,
	[OldSecretariatID] [int] NULL,
	[CustomerID] [int] NULL,
	[InnerNO] [varchar](50) NULL,
	[ECEAnswer] [bit] NULL,
	[RetroactionYear] [int] NULL,
	[FollowLetterYear] [int] NULL,
	[InnerNoForWord] [varchar](50) NULL,
	[anjam_shod] [int] NULL,
	[LetterIDUP] [int] NULL,
	[letterTypeID] [int] NULL,
	[PEY] [varchar](max) NULL,
	[ATF] [varchar](max) NULL,
	[PEY2] [varchar](max) NULL,
	[ATF2] [varchar](max) NULL,
	[Has_Page] [bit] NULL,
	[Has_WordPage] [bit] NULL,
	[Has_File] [bit] NULL,
	[EmailFromDateTime] [nvarchar](20) NULL,
	[EmailFrom] [nvarchar](1000) NULL,
	[EmailSubject] [nvarchar](2000) NULL,
	[IsNetWork] [bit] NULL,
	[CenterNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_LetterArchiveFolder] PRIMARY KEY CLUSTERED 
(
	[LetterArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[Description] [nvarchar](200) NULL,
	[LastUpdate] [datetime] NULL,
	[UniqueID] [bigint] NULL,
	[ListItemsID] [int] NULL,
	[IsCorrectedImage] [bit] NULL,
	[VersionNo] [varchar](10) NULL,
	[VersionDate] [varchar](10) NULL,
	[archiveID] [int] NULL,
	[isDocument] [bit] NULL,
	[UI] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Path] [nvarchar](50) NULL,
	[URL] [nvarchar](250) NULL,
	[FileType] [nvarchar](50) NULL,
	[FileName] [nvarchar](100) NULL,
	[IsTemplate] [bit] NULL,
 CONSTRAINT [PK_LetterData] PRIMARY KEY CLUSTERED 
(
	[LetterDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterData_Log]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterData_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterDataID] [int] NULL,
	[LetterID] [int] NULL,
	[PageNumber] [int] NULL,
	[Image] [image] NULL,
	[extention] [tinyint] NULL,
	[Description] [nvarchar](200) NULL,
	[LastUpdate] [datetime] NULL,
	[UniqueID] [bigint] NULL,
	[ListItemsID] [int] NULL,
	[IsCorrectedImage] [bit] NULL,
	[VersionNo] [varchar](10) NULL,
	[VersionDate] [varchar](10) NULL,
	[archiveID] [int] NULL,
	[isDocument] [bit] NULL,
	[UserName] [nvarchar](100) NULL,
	[DateAction] [datetime] NULL,
	[TypeAction] [nvarchar](100) NULL,
 CONSTRAINT [PK_LetterData_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterDataText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterEmails]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](200) NULL,
	[Title] [nvarchar](100) NULL,
	[ResType] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterFieldValue]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterFieldValue](
	[LetterFieldValueID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[FieldID] [int] NOT NULL,
	[FieldValue] [nvarchar](2000) NULL,
	[uniqueID] [bigint] NULL,
	[LastUpdate] [datetime] NULL,
	[InsertUserID] [int] NOT NULL,
	[FormOrder] [tinyint] NOT NULL,
 CONSTRAINT [PK_LetterFieldValue] PRIMARY KEY CLUSTERED 
(
	[LetterFieldValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterFormats]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterForms]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterForms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NULL,
	[FormID] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_LetterForms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterFormSigners]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterFormSigners](
	[iD] [int] IDENTITY(1,1) NOT NULL,
	[letterFormID] [int] NOT NULL,
	[signerUserID] [int] NOT NULL,
	[date] [nvarchar](10) NULL,
	[time] [nvarchar](10) NULL,
	[paraph] [nvarchar](255) NULL,
 CONSTRAINT [PK_LetterFormSigners] PRIMARY KEY CLUSTERED 
(
	[iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterFormula]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterFormula](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SecID] [int] NULL,
	[LetterFormulaPart1] [varchar](50) NULL,
	[LetterFormulaPart2] [varchar](50) NULL,
	[LetterFormulaPart3] [varchar](50) NULL,
	[LetterFormulaPart4] [varchar](50) NULL,
	[LetterFormulaPart5] [varchar](50) NULL,
	[LetterFormulaPart6] [varchar](50) NULL,
	[LetterFormulaSeperator] [varchar](50) NULL,
	[UseForWord] [bit] NULL,
	[letterTypeID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterRelation]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterRelation](
	[LetterRelationID] [int] IDENTITY(1,1) NOT NULL,
	[MainLetterID] [int] NOT NULL,
	[SubLetterID] [int] NOT NULL,
	[Ord] [tinyint] NOT NULL,
 CONSTRAINT [PK_LetterRelation] PRIMARY KEY CLUSTERED 
(
	[LetterRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterSign]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterSign](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Date] [nvarchar](10) NOT NULL,
	[Time] [nvarchar](5) NOT NULL,
	[IsOld] [bit] NULL,
	[paraph] [nvarchar](255) NULL,
 CONSTRAINT [PK_LetterSign] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTemplate_hasan]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterTemplate_hasan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Document] [image] NULL,
	[Title] [nvarchar](50) NULL,
	[validHeader] [smallint] NULL,
	[TemplateGroupID] [int] NOT NULL,
 CONSTRAINT [PK_LetterTemplate_hasan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTemplate1]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterTemplate1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Document] [image] NULL,
	[Title] [nvarchar](50) NULL,
	[validHeader] [smallint] NULL,
	[TemplateGroupID] [int] NOT NULL,
 CONSTRAINT [PK_LetterTemplate1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterText](
	[LetterID] [int] NULL,
	[LetterFormat] [int] NOT NULL,
	[TypeText] [ntext] NULL,
	[Html] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterTypes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterTypes](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[PreCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_LetterTypes_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LifeTips]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LifeTips](
	[id] [int] NOT NULL,
	[title] [nvarchar](150) NULL,
 CONSTRAINT [PK_LifeTips] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListItems]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Memo] [nvarchar](3000) NULL,
	[UrgenceisID] [int] NULL,
	[DateAnnounce] [nvarchar](10) NULL,
	[TimeAnnounce] [nvarchar](10) NULL,
	[DateExpire] [nvarchar](10) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsGroup](
	[NewsGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Descript] [nvarchar](300) NULL,
	[UsersID] [int] NOT NULL,
 CONSTRAINT [PK_NewsGroup] PRIMARY KEY CLUSTERED 
(
	[NewsGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsGroupUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsGroupUsers](
	[NewsGroupUsersID] [int] IDENTITY(1,1) NOT NULL,
	[UsersID] [int] NOT NULL,
	[NewsGroupID] [int] NOT NULL,
 CONSTRAINT [PK_NewsGroupUsers] PRIMARY KEY CLUSTERED 
(
	[NewsGroupUsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsUsers](
	[NewsUsersID] [int] IDENTITY(1,1) NOT NULL,
	[NewsID] [int] NOT NULL,
	[UsersID] [int] NOT NULL,
	[IsRead] [bit] NULL,
	[NotShow] [bit] NULL,
 CONSTRAINT [PK_NewsUsers] PRIMARY KEY CLUSTERED 
(
	[NewsUsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenWords]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenWords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_OpenWords] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParaphTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParaphTemplate](
	[ParaphTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Paraph] [nvarchar](500) NOT NULL,
	[Type] [tinyint] NULL,
 CONSTRAINT [PK_ParaphTemplate] PRIMARY KEY CLUSTERED 
(
	[ParaphTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[PhoneID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[PersonName] [nvarchar](50) NULL,
	[Tel1] [nvarchar](20) NULL,
	[Tel2] [nvarchar](20) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Internet] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[ZipCode] [nvarchar](30) NULL,
	[Descript] [nvarchar](500) NULL,
	[PhoneGroupID] [int] NULL,
	[UsersID] [int] NOT NULL,
	[IsPublic] [bit] NULL,
	[IsForWeb] [bit] NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[PhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneGroup](
	[PhoneGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[UsersID] [int] NOT NULL,
 CONSTRAINT [PK_PhoneGroup] PRIMARY KEY CLUSTERED 
(
	[PhoneGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Memo] [nvarchar](2000) NULL,
	[Descript] [nvarchar](500) NULL,
 CONSTRAINT [PK_Receipt_ReceiptID] PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveTypes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveTypes](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReceiveTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommiteData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommiteData](
	[RecommiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[RecommiteID] [int] NOT NULL,
	[Image] [image] NULL,
	[extention] [tinyint] NOT NULL,
	[UniqueID] [bigint] NULL,
 CONSTRAINT [PK_RecommiteData_RecommiteDataID] PRIMARY KEY CLUSTERED 
(
	[RecommiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommitePayvast]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommitePayvast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NULL,
	[RecommiteID] [int] NULL,
	[Image] [image] NULL,
	[extention] [tinyint] NULL,
	[Description] [nvarchar](200) NULL,
	[PageNumber] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[VersionNo] [varchar](10) NULL,
	[VersionDate] [varchar](10) NULL,
	[FileName] [nvarchar](100) NULL,
 CONSTRAINT [PK_RecommitePayvast] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReCommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[Paraph] [nvarchar](3000) NULL,
	[RecommiteDate] [varchar](10) NOT NULL,
	[UserID] [int] NOT NULL,
	[IsCopy] [bit] NULL,
	[Proceeded] [bit] NOT NULL,
	[ProceedDate] [varchar](10) NULL,
	[staffmemo] [nvarchar](255) NULL,
	[viewdate] [char](10) NULL,
	[OrgStaff] [nvarchar](50) NULL,
	[DeadLineDate] [char](10) NULL,
	[LastUpdate] [datetime] NULL,
	[UniqueID] [bigint] NULL,
	[ActionTypeID] [int] NULL,
	[DeadLineToint] [int] NULL,
	[IsAnswer] [bit] NULL,
	[ISFollowup] [bit] NULL,
	[Finallized] [bit] NOT NULL,
	[IsCopy_In_Dabir] [bit] NULL,
	[SentToDabir] [bit] NULL,
	[HasPayvast] [bit] NULL,
	[Erja_Or_Answer_Date] [char](10) NULL,
	[GroupFlag] [bit] NULL,
	[IsSecure] [bit] NULL,
	[RecommiteTime] [nvarchar](5) NULL,
 CONSTRAINT [PK_ReCommites] PRIMARY KEY CLUSTERED 
(
	[RecommiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommiteTypes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceTableData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[RelatedSecretariats]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatedSecretariats](
	[RelatedSecretariatID] [int] IDENTITY(1,1) NOT NULL,
	[RelatedSecretariatTitle] [nvarchar](50) NOT NULL,
	[DestinationOrgID_inSource] [int] NOT NULL,
	[DestinationSecID] [int] NOT NULL,
	[DestinationServerIP] [varchar](30) NULL,
	[DestinationServerDB] [varchar](50) NULL,
 CONSTRAINT [PK_RelatedSecretarats] PRIMARY KEY CLUSTERED 
(
	[RelatedSecretariatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secretariats]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secretariats](
	[SecID] [int] IDENTITY(1,1) NOT NULL,
	[SecTitle] [nvarchar](50) NULL,
	[Precode] [nvarchar](50) NULL,
	[ServerID] [int] NOT NULL,
	[ArchiveCenterID] [int] NOT NULL,
 CONSTRAINT [PK_Secretariats] PRIMARY KEY CLUSTERED 
(
	[SecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SendStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SendStatus](
	[SendStatusID] [int] NOT NULL,
	[SendStatusTitle] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SendStatus] PRIMARY KEY CLUSTERED 
(
	[SendStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sentenses]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[UserID] [int] NOT NULL,
	[VariableId] [int] NULL,
	[Value] [nvarchar](255) NULL,
	[VariableName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectTitle] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SubjectCode] [varchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_AppMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[Tables]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[TableId] [int] NOT NULL,
	[TableName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[TableType] [tinyint] NULL,
	[TableCode] [varchar](50) NULL,
	[UserField1] [nvarchar](50) NULL,
	[UserField2] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDbName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDbName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ServerName] [nvarchar](100) NULL,
	[DBName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tbDbName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLAPPSETTING]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLAPPSETTING](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descript] [nvarchar](2000) NULL,
	[Max_TableScriptNumber] [int] NULL,
	[Max_ViewScriptNumber] [int] NULL,
	[Last_TableScriptNumber] [int] NULL,
	[Last_ViewScriptNumber] [int] NULL,
	[Error_RunTableScriptNumber] [int] NULL,
	[Error_RunViewScriptNumber] [int] NULL,
	[Date] [datetime] NULL,
	[AppVersion] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAppVer]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[TempInbox]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempInbox](
	[MyTmp_ID] [int] IDENTITY(1,1) NOT NULL,
	[LetterID] [int] NULL,
	[SignerID] [nvarchar](1000) NULL,
	[IndicatorID] [int] NULL,
	[MYear] [int] NULL,
	[subjectid] [int] NULL,
	[SecretariatID] [int] NULL,
	[Letter_Type] [int] NULL,
	[letterformat] [int] NULL,
	[IncommingNO] [nvarchar](1000) NULL,
	[Incommingdate] [nvarchar](100) NULL,
	[ClassificationID] [int] NULL,
	[UrgencyID] [int] NULL,
	[Memo] [nvarchar](4000) NULL,
	[Tostaffer] [nvarchar](4000) NULL,
	[SentLetterID] [int] NULL,
	[AttachTitle] [nvarchar](1000) NULL,
	[NumberOfAttachPages] [int] NULL,
	[NumberOfPage] [int] NULL,
	[ReceiveTypeID] [int] NULL,
	[UserID] [int] NULL,
	[RetroactionNo] [nvarchar](100) NULL,
	[UserMemo] [nvarchar](1000) NULL,
	[RegistrationDate] [char](100) NULL,
	[toorgid] [int] NULL,
	[fromorgid] [int] NULL,
	[FollowLetterNo] [nvarchar](1000) NULL,
	[LetterRecommites] [nvarchar](1000) NULL,
	[finalized] [bit] NULL,
	[CenterNo] [nvarchar](100) NULL,
	[CenterDate] [char](100) NULL,
	[templateID] [int] NULL,
	[headerID] [int] NULL,
	[registrationTime] [varchar](100) NULL,
	[fromstaffer] [nvarchar](4000) NULL,
	[sendStatusID] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[UserTableID] [int] NULL,
	[InnerNo] [nvarchar](1000) NULL,
	[OrgID] [int] NULL,
	[ParentId] [smallint] NULL,
	[Paraph] [nvarchar](4000) NULL,
	[RecommiteDate] [varchar](100) NULL,
	[Proceeded] [bit] NULL,
	[ProceedDate] [varchar](100) NULL,
	[ReType] [smallint] NULL,
	[RecommitTypeTitle] [nvarchar](1000) NULL,
	[IsInner] [int] NULL,
	[RecommiterTitle] [nvarchar](1000) NULL,
	[sendertitle] [nvarchar](1000) NULL,
	[recommiteid] [int] NULL,
	[id] [smallint] NULL,
	[isSecure] [bit] NULL,
	[StaffMemo] [nvarchar](4000) NULL,
	[Yincommingno] [nvarchar](1000) NULL,
	[PreCode] [nvarchar](100) NULL,
	[IsCopy] [bit] NULL,
	[IsCopy_In_Dabir] [bit] NULL,
	[SentToDabir] [bit] NULL,
	[has_Page] [bit] NULL,
	[has_WordPage] [bit] NULL,
	[has_UncheckedFollowUp] [bit] NULL,
	[has_ExpiredFollowUp] [bit] NULL,
	[LetterDataId] [int] NULL,
	[has_file] [bit] NULL,
	[DeadLineDays] [int] NULL,
	[ViewDate] [char](100) NULL,
	[DeadLineDate] [char](100) NULL,
	[ChildParaph] [varchar](3000) NULL,
	[ChildOrg] [varchar](1000) NULL,
	[ActionTypeID] [int] NULL,
	[UserRecomCount] [int] NULL,
	[IsAnswer] [bit] NULL,
	[ISFollowup] [bit] NULL,
	[Erja_Or_Answer_Date] [char](10) NULL,
	[ColorFlag] [varchar](50) NULL,
	[MemoAndRecomUserCount] [varchar](4000) NULL,
	[has_Sign] [bit] NULL,
	[row_num] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateGroup](
	[TemplateGroupID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateGroupTitle] [nvarchar](100) NOT NULL,
	[TemplateGroupType] [char](1) NOT NULL,
 CONSTRAINT [PK_TemplateGroup] PRIMARY KEY CLUSTERED 
(
	[TemplateGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSelect]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSelect](
	[LetterID] [int] NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[MYear] [int] NOT NULL,
	[SecretariatID] [int] NOT NULL,
	[Letter_Type] [int] NOT NULL,
	[letterformat] [int] NOT NULL,
	[IncommingNO] [nvarchar](50) NULL,
	[Incommingdate] [nvarchar](10) NULL,
	[CenterNo] [nvarchar](50) NULL,
	[CenterDate] [char](10) NULL,
	[FromOrgID] [int] NOT NULL,
	[ToOrgID] [int] NOT NULL,
	[Signerid] [nvarchar](50) NULL,
	[ClassificationID] [int] NOT NULL,
	[UrgencyID] [int] NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[AttachTitle] [nvarchar](255) NULL,
	[NumberOfAttachPages] [smallint] NULL,
	[NumberOfPage] [tinyint] NOT NULL,
	[ReceiveTypeID] [int] NOT NULL,
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
	[PreCode] [nvarchar](50) NULL,
	[fromstaffer] [nvarchar](50) NULL,
	[Finalized] [bit] NOT NULL,
	[SendStatusID] [int] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UserTableID] [int] NULL,
	[UniqueID] [bigint] NULL,
	[Archived] [bit] NOT NULL,
	[SubjectDescription] [nvarchar](255) NULL,
	[SubjectID] [int] NULL,
	[LatestActionTypeID] [int] NULL,
	[LatestActionReason] [nvarchar](255) NULL,
	[DeadLineDate] [char](10) NULL,
	[ActionTypeID] [int] NOT NULL,
	[UserTableID2] [int] NULL,
	[EmailNuFromDate] [nvarchar](20) NULL,
	[OldSecretariatID] [int] NULL,
	[CustomerID] [int] NULL,
	[InnerNO] [varchar](50) NULL,
	[ECEAnswer] [bit] NULL,
	[RetroactionYear] [int] NULL,
	[FollowLetterYear] [int] NULL,
	[ReciveTitle] [nvarchar](50) NULL,
	[ClassificatioTitle] [nvarchar](50) NULL,
	[UrgencyTitle] [nvarchar](50) NULL,
	[UserTitle] [nvarchar](50) NULL,
	[FormatTitle] [nvarchar](50) NULL,
	[ToOrgTitle] [nvarchar](100) NULL,
	[TemplateTitle] [nvarchar](50) NULL,
	[FromTitle] [nvarchar](100) NULL,
	[LetterTypeTitle] [nvarchar](50) NULL,
	[AnswerMYear] [int] NOT NULL,
	[AnswerIndicatorID] [int] NULL,
	[has_Page] [bit] NULL,
	[has_WordPage] [bit] NULL,
	[has_file] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSelect2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSelect2](
	[LetterID] [int] NULL,
	[Letter_type] [int] NULL,
	[indicatorid] [int] NULL,
	[RegistrationDate] [char](10) NULL,
	[Memo] [nvarchar](2000) NULL,
	[FromTitle] [nvarchar](100) NULL,
	[ToTitle] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSelect2Web]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSelect2Web](
	[LetterID] [int] NOT NULL,
	[RecommiteID] [int] NOT NULL,
	[Letter_type] [int] NOT NULL,
	[indicatorid] [int] NOT NULL,
	[RegistrationDate] [char](10) NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[FromTitle] [nvarchar](100) NULL,
	[ToTitle] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSelect3]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSelect3](
	[LetterID] [int] NULL,
	[IndicatorID] [int] NULL,
	[IncommingDate] [nvarchar](10) NULL,
	[IncommingNo] [nvarchar](50) NULL,
	[Memo] [nvarchar](2000) NULL,
	[RetroactionNo] [nvarchar](50) NULL,
	[RegistrationDate] [char](10) NULL,
	[FollowLetterNo] [nvarchar](50) NULL,
	[ToStaffer] [nvarchar](50) NULL,
	[SenderTitle] [nvarchar](100) NULL,
	[DeliverTitle] [nvarchar](100) NULL,
	[LetterTypeTitle] [nvarchar](50) NULL,
	[LetterRecommites] [nvarchar](500) NULL,
	[Paraph] [nvarchar](3000) NULL,
	[RecommiteDate] [varchar](10) NULL,
	[Proceeded] [bit] NULL,
	[ProceedDate] [varchar](10) NULL,
	[RecommitTypeTitle] [nvarchar](50) NULL,
	[RecommiterTitle] [nvarchar](100) NULL,
	[Recommited] [nvarchar](100) NULL,
	[ViewDate] [char](10) NULL,
	[StaffMemo] [nvarchar](255) NULL,
	[DeadlineDays] [int] NULL,
	[ProgressDays] [int] NULL,
	[DeadLineDate] [char](10) NULL,
	[ActionTypeTitle] [nvarchar](50) NULL,
	[SecTitle] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSelect4]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSelect4](
	[UserNoteID] [int] NULL,
	[UserID] [int] NULL,
	[Note] [ntext] NULL,
	[CreateDate] [char](10) NULL,
	[Abstract] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempSelectWeb]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempSelectWeb](
	[LetterID] [int] NOT NULL,
	[IndicatorID] [int] NOT NULL,
	[MYear] [int] NOT NULL,
	[SecretariatID] [int] NOT NULL,
	[Letter_Type] [int] NOT NULL,
	[letterformat] [int] NOT NULL,
	[IncommingNO] [nvarchar](50) NULL,
	[Incommingdate] [nvarchar](10) NULL,
	[CenterNo] [nvarchar](50) NULL,
	[CenterDate] [char](10) NULL,
	[FromOrgID] [int] NOT NULL,
	[ToOrgID] [int] NOT NULL,
	[Signerid] [nvarchar](50) NULL,
	[ClassificationID] [int] NOT NULL,
	[UrgencyID] [int] NOT NULL,
	[Memo] [nvarchar](2000) NULL,
	[AttachTitle] [nvarchar](255) NULL,
	[NumberOfAttachPages] [smallint] NULL,
	[NumberOfPage] [tinyint] NOT NULL,
	[ReceiveTypeID] [int] NOT NULL,
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
	[PreCode] [nvarchar](50) NULL,
	[fromstaffer] [nvarchar](50) NULL,
	[Finalized] [bit] NOT NULL,
	[SendStatusID] [int] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UserTableID] [int] NULL,
	[UniqueID] [bigint] NULL,
	[Archived] [bit] NOT NULL,
	[SubjectDescription] [nvarchar](255) NULL,
	[SubjectID] [int] NULL,
	[LatestActionTypeID] [int] NULL,
	[LatestActionReason] [nvarchar](255) NULL,
	[DeadLineDate] [char](10) NULL,
	[ActionTypeID] [int] NOT NULL,
	[UserTableID2] [int] NULL,
	[EmailNuFromDate] [nvarchar](20) NULL,
	[OldSecretariatID] [int] NULL,
	[CustomerID] [int] NULL,
	[InnerNO] [varchar](50) NULL,
	[ECEAnswer] [bit] NULL,
	[RetroactionYear] [int] NULL,
	[FollowLetterYear] [int] NULL,
	[InnerNoForWord] [varchar](50) NULL,
	[anjam_shod] [int] NULL,
	[LetterIDUP] [int] NULL,
	[letterTypeID] [int] NULL,
	[EmailFromDateTime] [nvarchar](20) NULL,
	[ReciveTitle] [nvarchar](50) NULL,
	[ClassificatioTitle] [nvarchar](50) NULL,
	[UrgencyTitle] [nvarchar](50) NULL,
	[UserTitle] [nvarchar](100) NULL,
	[FormatTitle] [nvarchar](50) NULL,
	[ToOrgTitle] [nvarchar](100) NULL,
	[TemplateTitle] [nvarchar](50) NULL,
	[FromTitle] [nvarchar](100) NULL,
	[LetterTypeTitle] [nvarchar](50) NULL,
	[AnswerMYear] [int] NULL,
	[AnswerIndicatorID] [int] NULL,
	[has_Page] [bit] NULL,
	[has_WordPage] [bit] NULL,
	[has_file] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urgenceis]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urgenceis](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Urgenceis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccArchive]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccArchive](
	[UserAccArchiveID] [int] IDENTITY(1,1) NOT NULL,
	[SecID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ArchiveFolderID] [int] NOT NULL,
	[ISAccess] [bit] NULL,
 CONSTRAINT [PK_UserAccArchive] PRIMARY KEY CLUSTERED 
(
	[UserAccArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserExtention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserExtention](
	[UserExtentionID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ExtentionID] [int] NOT NULL,
	[ReaderApplication] [nvarchar](2000) NULL,
 CONSTRAINT [PK_UserExtention] PRIMARY KEY CLUSTERED 
(
	[UserExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLog](
	[UserID] [int] NOT NULL,
	[FormID] [int] NOT NULL,
	[ActionID] [nvarchar](50) NOT NULL,
	[Time1] [datetime] NOT NULL,
	[LetterID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginLogout]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
	[isCartable] [bit] NULL,
	[forceToExit] [bit] NULL,
 CONSTRAINT [PK_UserLoginLogout] PRIMARY KEY CLUSTERED 
(
	[UserLoginLogoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userMailInfo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userMailInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[mailAddress] [nvarchar](50) NULL,
	[mailPWD] [nvarchar](50) NULL,
	[SMTP] [nvarchar](50) NULL,
	[SMTP_port] [int] NULL,
	[pop3MailServer] [nvarchar](50) NULL,
	[pop3MailServerPort] [int] NULL,
	[isSSL] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMessage](
	[UserMessageID] [bigint] IDENTITY(1,1) NOT NULL,
	[To_] [int] NOT NULL,
	[Code] [int] NULL,
	[From_] [int] NULL,
	[MsgDate] [varchar](10) NULL,
	[MsgTime] [varchar](6) NULL,
	[Subject] [nvarchar](50) NULL,
	[Message] [text] NULL,
	[Status] [int] NULL,
	[IsForSender] [bit] NULL,
 CONSTRAINT [PK_UserMessage] PRIMARY KEY CLUSTERED 
(
	[UserMessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNote]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[UserProfile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ShowNotifications] [bit] NULL,
	[INtervalNotifications] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSecretariats]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSecretariats](
	[UserId] [int] NOT NULL,
	[SecId] [int] NOT NULL,
 CONSTRAINT [PK_UserSecretariats] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserShortCut]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Index [userShortCut_user_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE CLUSTERED INDEX [userShortCut_user_idx] ON [dbo].[UserShortCut]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSign]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSign](
	[UserID] [int] NOT NULL,
	[UserSign] [image] NULL,
	[SecoundSign] [image] NULL,
 CONSTRAINT [PK_UserSign] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersPhoneAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPhoneAccess](
	[UserID] [int] NOT NULL,
	[PhoneID] [int] NOT NULL,
	[HasAccess] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[tableID] [int] NOT NULL,
	[hasAccess] [bit] NOT NULL,
	[HasDelete] [bit] NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTemplateGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  Table [dbo].[VERSION_INFO]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VERSION_INFO](
	[INFO_] [varchar](500) NULL,
	[DATE_] [nchar](10) NULL,
	[VERSION_] [varchar](50) NULL,
	[CUSTOMER] [varchar](100) NULL,
	[SQL_SP] [varchar](100) NULL,
	[DELPHI_FORM] [varchar](500) NULL,
	[SOFTWARE_NAME] [varchar](50) NULL,
	[IDX] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkGroup](
	[WorkGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Descript] [nvarchar](300) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_WorkGroup] PRIMARY KEY CLUSTERED 
(
	[WorkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkGroupOrg]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkGroupOrg](
	[WorkGroupOrgID] [int] IDENTITY(1,1) NOT NULL,
	[FromOrgID] [int] NOT NULL,
	[WorkGroupID] [int] NOT NULL,
 CONSTRAINT [PK_WorkGroupOrg] PRIMARY KEY CLUSTERED 
(
	[WorkGroupOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheet_Base]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheet_Base](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[RegUserID] [int] NULL,
	[RegDate_Shamsi] [varchar](50) NULL,
	[RegDate_Miladi] [varchar](50) NULL,
	[Year_Shamsi] [varchar](50) NULL,
	[Year_Miladi] [varchar](50) NULL,
	[Month_Shamsi] [varchar](50) NULL,
	[Month_Miladi] [varchar](50) NULL,
	[Day_Shamsi] [varchar](50) NULL,
	[Day_Miladi] [varchar](50) NULL,
	[BeginTimeToMinute] [int] NULL,
	[EndTimeToMinute] [int] NULL,
	[Place] [varchar](200) NULL,
	[Subject] [varchar](3000) NULL,
	[ImportantLevel] [int] NULL,
	[Description] [varchar](3000) NULL,
	[ManagerUserID] [int] NULL,
	[Status] [int] NULL,
	[Date_Shamsi] [varchar](50) NULL,
	[Date_Miladi] [varchar](50) NULL,
	[SendNews] [bit] NULL,
	[Monshi] [int] NULL,
	[BeginTimeHour] [varchar](50) NULL,
	[BeginTimeMinute] [varchar](50) NULL,
	[EndTimeHour] [varchar](50) NULL,
	[EndTimeMinute] [varchar](50) NULL,
	[SendLetter] [bit] NULL,
	[SendLetterToOtherPerson] [bit] NULL,
	[isForWeb] [bit] NULL,
 CONSTRAINT [PK_WorkSheet_Base] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheet_Results]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheet_Results](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkSheetBaseID] [int] NULL,
	[Image] [image] NULL,
	[Extension] [int] NULL,
	[Description] [varchar](3000) NULL,
	[RegDate_Shamsi] [varchar](50) NULL,
	[RegDate_Miladi] [varchar](50) NULL,
	[RegUserID] [int] NULL,
 CONSTRAINT [PK_WorkSheet_Results] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheet_ResultUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheet_ResultUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkSheet_ResultsID] [int] NULL,
	[UserID] [int] NULL,
	[DoAtDate] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheet_ResultUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheet_Sessions]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheet_Sessions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkSheetBaseID] [int] NULL,
	[UserID] [int] NULL,
	[Description] [varchar](3000) NULL,
	[AddedSubject] [varchar](3000) NULL,
	[MustCome] [int] NULL,
	[UserResponse] [int] NULL,
	[UserDescription] [varchar](3000) NULL,
	[RegUserID] [int] NULL,
	[RegDate_Shamsi] [varchar](50) NULL,
	[RegDate_Miladi] [varchar](50) NULL,
	[WithAlarm] [bit] NULL,
 CONSTRAINT [PK_WorkSheet_Sessions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheet_Tasks]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheet_Tasks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkSheetBaseID] [int] NULL,
	[Description] [varchar](3000) NULL,
	[Status] [int] NULL,
	[WithAlarm] [bit] NULL,
	[RegUserID] [int] NULL,
	[RegDate_Shamsi] [varchar](50) NULL,
	[RegDate_Miladi] [varchar](50) NULL,
	[UserID] [int] NULL,
	[UserResponse] [int] NULL,
	[UserDescription] [varchar](3000) NULL,
 CONSTRAINT [PK_WorkSheet_Tasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheet_Visits]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheet_Visits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkSheetBaseID] [int] NULL,
	[UserID] [int] NULL,
	[Description] [varchar](3000) NULL,
	[UserResponse] [int] NULL,
	[UserDescription] [varchar](3000) NULL,
	[RegUserID] [int] NULL,
	[RegDate_Shamsi] [varchar](50) NULL,
	[RegDate_Miladi] [varchar](50) NULL,
	[WithAlarm] [bit] NULL,
 CONSTRAINT [PK_WorkSheetBaseVisits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetBaseImportantLevel]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetBaseImportantLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetBaseImportantLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetBaseStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetBaseStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetBaseStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetBaseType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetBaseType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetBase_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetSessionsMustCome]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetSessionsMustCome](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetSessionsMustCome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetSessionsUserResponse]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetSessionsUserResponse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetSessionsUserResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetTasksStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetTasksStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetTasksStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetTasksUserResponse]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetTasksUserResponse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetTasksUserResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetTasksWithAlarm]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetTasksWithAlarm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetTasksWithAlarm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSheetVisitsUserResponse]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSheetVisitsUserResponse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Mean] [varchar](50) NULL,
 CONSTRAINT [PK_WorkSheetVisitsUserResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tSQLt].[Run_LastExecution]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tSQLt].[Run_LastExecution](
	[TestName] [nvarchar](max) NULL,
	[SessionId] [int] NULL,
	[LoginTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tSQLt].[TestMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tSQLt].[TestMessage](
	[Msg] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Actions_ID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Actions_ID] ON [dbo].[Actions]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Actions]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Actions] ON [dbo].[ActionsAccess]
(
	[ActionID] ASC,
	[FormTag] ASC,
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationForms_ID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationForms_ID] ON [dbo].[ApplicationForms]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ArchiveFolder_ParentFolderID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ArchiveFolder_ParentFolderID] ON [dbo].[ArchiveFolder]
(
	[ParentFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ArchiveFolder_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ArchiveFolder_Title] ON [dbo].[ArchiveFolder]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ArchiveFolder_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ArchiveFolder_UserID] ON [dbo].[ArchiveFolder]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Emails_Code]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Emails_Code] ON [dbo].[Emails]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Emails_EmailNuFromDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Emails_EmailNuFromDate] ON [dbo].[Emails]
(
	[EmailNuFromDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Emails_SendAddress]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Emails_SendAddress] ON [dbo].[Emails]
(
	[SendAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Emails_Subject]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Emails_Subject] ON [dbo].[Emails]
(
	[Subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ErrorMessage_ErrorMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ErrorMessage_ErrorMessage] ON [dbo].[ErrorMessage]
(
	[ErrorMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ErrorMessage_FarsiMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ErrorMessage_FarsiMessage] ON [dbo].[ErrorMessage]
(
	[FarsiMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FieldAccess_AccessTypeID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FieldAccess_AccessTypeID] ON [dbo].[FieldAccess]
(
	[AccessTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FieldAccess_FieldID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FieldAccess_FieldID] ON [dbo].[FieldAccess]
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FieldAccess_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FieldAccess_UserID] ON [dbo].[FieldAccess]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_FieldGroupID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldGroupID] ON [dbo].[Fields]
(
	[FieldGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Fields_FieldName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldName] ON [dbo].[Fields]
(
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_FieldTypeID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldTypeID] ON [dbo].[Fields]
(
	[FieldTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_ReferenceTableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_ReferenceTableID] ON [dbo].[Fields]
(
	[ReferenceTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Fields_TableID] ON [dbo].[Fields]
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FollowUp_DoneStatusID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FollowUp_DoneStatusID] ON [dbo].[FollowUp]
(
	[DoneStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FollowUp_FollowUPTypeID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FollowUp_FollowUPTypeID] ON [dbo].[FollowUp]
(
	[FollowUPTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FollowUp_Letterid]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FollowUp_Letterid] ON [dbo].[FollowUp]
(
	[Letterid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FollowUp_StartFollowUpID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FollowUp_StartFollowUpID] ON [dbo].[FollowUp]
(
	[StartFollowUpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FollowUp_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FollowUp_UserID] ON [dbo].[FollowUp]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FromOrganizations]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FromOrganizations] ON [dbo].[FromOrganizations]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FromOrganizations_ParentID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FromOrganizations_ParentID] ON [dbo].[FromOrganizations]
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FromOrganizations_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_FromOrganizations_Title] ON [dbo].[FromOrganizations]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageData_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ImageData_TableID] ON [dbo].[ImageData]
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ImageData_TableName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ImageData_TableName] ON [dbo].[ImageData]
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_ClassificationID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_ClassificationID] ON [dbo].[Letter]
(
	[ClassificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_FromOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_FromOrgID] ON [dbo].[Letter]
(
	[FromOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Letter_IncommingNO]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_IncommingNO] ON [dbo].[Letter]
(
	[IncommingNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_IndicatorID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_IndicatorID] ON [dbo].[Letter]
(
	[IndicatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_Letter_Type]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_Letter_Type] ON [dbo].[Letter]
(
	[Letter_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_letterformat]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_letterformat] ON [dbo].[Letter]
(
	[letterformat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_MYear]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_MYear] ON [dbo].[Letter]
(
	[MYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Letter_RegistrationDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_RegistrationDate] ON [dbo].[Letter]
(
	[RegistrationDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_SecretariatID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_SecretariatID] ON [dbo].[Letter]
(
	[SecretariatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Letter_Signerid]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_Signerid] ON [dbo].[Letter]
(
	[Signerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_ToOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_ToOrgID] ON [dbo].[Letter]
(
	[ToOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_UrgencyID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_UrgencyID] ON [dbo].[Letter]
(
	[UrgencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Letter_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Letter_UserID] ON [dbo].[Letter]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterArchiveFolder_ArchiveFolderID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterArchiveFolder_ArchiveFolderID] ON [dbo].[LetterArchiveFolder]
(
	[ArchiveFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterArchiveFolder_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterArchiveFolder_LetterID] ON [dbo].[LetterArchiveFolder]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterArchiveFolder_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterArchiveFolder_UserID] ON [dbo].[LetterArchiveFolder]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letterarchive_Folder_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArchiveFolder]
(
	[ArchiveFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letterarchive_Letter_Folder_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[LetterArchiveFolder]
(
	[ArchiveFolderID] ASC,
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Letterarchive_Letter_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArchiveFolder]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterData_extention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterData_extention] ON [dbo].[LetterData]
(
	[extention] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterData_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterData_LetterID] ON [dbo].[LetterData]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterFieldValue_FieldID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterFieldValue_FieldID] ON [dbo].[LetterFieldValue]
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterFieldValue_InsertUserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterFieldValue_InsertUserID] ON [dbo].[LetterFieldValue]
(
	[InsertUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterFieldValue_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterFieldValue_LetterID] ON [dbo].[LetterFieldValue]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterText_LetterFormat]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterText_LetterFormat] ON [dbo].[LetterText]
(
	[LetterFormat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LetterText_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_LetterText_LetterID] ON [dbo].[LetterText]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ListItems_ListID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ListItems_ListID] ON [dbo].[ListItems]
(
	[ListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_Code]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_News_Code] ON [dbo].[News]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_News_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_News_Title] ON [dbo].[News]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_News_UserID] ON [dbo].[News]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NewsGroup_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_NewsGroup_Title] ON [dbo].[NewsGroup]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsGroup_UsersID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_NewsGroup_UsersID] ON [dbo].[NewsGroup]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsGroupUsers_NewsGroupID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_NewsGroupUsers_NewsGroupID] ON [dbo].[NewsGroupUsers]
(
	[NewsGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsGroupUsers_UsersID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_NewsGroupUsers_UsersID] ON [dbo].[NewsGroupUsers]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsUsers_NewsID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_NewsUsers_NewsID] ON [dbo].[NewsUsers]
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsUsers_UsersID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_NewsUsers_UsersID] ON [dbo].[NewsUsers]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParaphTemplate_OrderID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ParaphTemplate_OrderID] ON [dbo].[ParaphTemplate]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ParaphTemplate_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ParaphTemplate_Title] ON [dbo].[ParaphTemplate]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParaphTemplate_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ParaphTemplate_UserID] ON [dbo].[ParaphTemplate]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Phone_Email]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_Email] ON [dbo].[Phone]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Phone_Mobile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_Mobile] ON [dbo].[Phone]
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Phone_PersonName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_PersonName] ON [dbo].[Phone]
(
	[PersonName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Phone_Tel1]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_Tel1] ON [dbo].[Phone]
(
	[Tel1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Phone_Tel2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_Tel2] ON [dbo].[Phone]
(
	[Tel2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Phone_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_Title] ON [dbo].[Phone]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Phone_UsersID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Phone_UsersID] ON [dbo].[Phone]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PhoneGroup_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_PhoneGroup_Title] ON [dbo].[PhoneGroup]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhoneGroup_UsersID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_PhoneGroup_UsersID] ON [dbo].[PhoneGroup]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Receipt_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Receipt_Title] ON [dbo].[Receipt]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ReceiveTypes_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReceiveTypes_Title] ON [dbo].[ReceiveTypes]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecommiteData_extention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RecommiteData_extention] ON [dbo].[RecommiteData]
(
	[extention] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecommiteData_RecommiteID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RecommiteData_RecommiteID] ON [dbo].[RecommiteData]
(
	[RecommiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_ActionTypeID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_ActionTypeID] ON [dbo].[ReCommites]
(
	[ActionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ReCommites_DeadLineDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_DeadLineDate] ON [dbo].[ReCommites]
(
	[DeadLineDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_ID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_ID] ON [dbo].[ReCommites]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_LetterID] ON [dbo].[ReCommites]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_OrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_OrgID] ON [dbo].[ReCommites]
(
	[OrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_ParentId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_ParentId] ON [dbo].[ReCommites]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReCommites_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReCommites_UserID] ON [dbo].[ReCommites]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [recommite_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [recommite_idx] ON [dbo].[ReCommites]
(
	[LetterID] ASC,
	[ID] ASC,
	[Type] ASC,
	[ParentId] ASC,
	[OrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTableData_DataID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReferenceTableData_DataID] ON [dbo].[ReferenceTableData]
(
	[DataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceTableData_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReferenceTableData_TableID] ON [dbo].[ReferenceTableData]
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RelatedSecretariats_DestinationOrgID_inSource]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RelatedSecretariats_DestinationOrgID_inSource] ON [dbo].[RelatedSecretariats]
(
	[DestinationOrgID_inSource] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RelatedSecretariats_DestinationSecID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RelatedSecretariats_DestinationSecID] ON [dbo].[RelatedSecretariats]
(
	[DestinationSecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Secretariats_ArchiveCenterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Secretariats_ArchiveCenterID] ON [dbo].[Secretariats]
(
	[ArchiveCenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Secretariats_Precode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Secretariats_Precode] ON [dbo].[Secretariats]
(
	[Precode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Settings_UserID_VariableId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Settings_UserID_VariableId] ON [dbo].[Settings]
(
	[UserID] ASC,
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Settings_UserID_VariableName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Settings_UserID_VariableName] ON [dbo].[Settings]
(
	[UserID] ASC,
	[VariableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tables_TableType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Tables_TableType] ON [dbo].[Tables]
(
	[TableType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccArchive_ArchiveFolderID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserAccArchive_ArchiveFolderID] ON [dbo].[UserAccArchive]
(
	[ArchiveFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccArchive_SecID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserAccArchive_SecID] ON [dbo].[UserAccArchive]
(
	[SecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccArchive_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserAccArchive_UserID] ON [dbo].[UserAccArchive]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserExtention_ExtentionID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserExtention_ExtentionID] ON [dbo].[UserExtention]
(
	[ExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserExtention_UserId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserExtention_UserId] ON [dbo].[UserExtention]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_extention_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [User_extention_idx] ON [dbo].[UserExtention]
(
	[UserId] ASC,
	[ExtentionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLog_ActionID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_ActionID] ON [dbo].[UserLog]
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_FormID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_FormID] ON [dbo].[UserLog]
(
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_LetterID] ON [dbo].[UserLog]
(
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLog_User_Act_Form]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_User_Act_Form] ON [dbo].[UserLog]
(
	[UserID] ASC,
	[ActionID] ASC,
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLog_User_Act_Form_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_User_Act_Form_Letter] ON [dbo].[UserLog]
(
	[UserID] ASC,
	[ActionID] ASC,
	[FormID] ASC,
	[LetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLog_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLog_UserID] ON [dbo].[UserLog]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLoginLogout_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserLoginLogout_UserID] ON [dbo].[UserLoginLogout]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UserMessage_To_status_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [UserMessage_To_status_idx] ON [dbo].[UserMessage]
(
	[To_] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserNote_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserNote_UserID] ON [dbo].[UserNote]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_AccessID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_AccessID] ON [dbo].[Users]
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_DefualtSecretariatID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_DefualtSecretariatID] ON [dbo].[Users]
(
	[DefualtSecretariatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_FromOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_FromOrgID] ON [dbo].[Users]
(
	[FromOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_SecondOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_Users_SecondOrgID] ON [dbo].[Users]
(
	[SecondOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserShortcut_altkey_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserShortcut_altkey_idx] ON [dbo].[UserShortCut]
(
	[UserID] ASC,
	[altKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [userShortCut_keytext_idx]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [userShortCut_keytext_idx] ON [dbo].[UserShortCut]
(
	[keyText] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTemplateGroup_TemplateGroupID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserTemplateGroup_TemplateGroupID] ON [dbo].[UserTemplateGroup]
(
	[TemplateGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTemplateGroup_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_UserTemplateGroup_UserID] ON [dbo].[UserTemplateGroup]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_WorkGroup] ON [dbo].[WorkGroup]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkGroupOrg_FromOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_WorkGroupOrg_FromOrgID] ON [dbo].[WorkGroupOrg]
(
	[FromOrgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkGroupOrg_WorkGroupID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_WorkGroupOrg_WorkGroupID] ON [dbo].[WorkGroupOrg]
(
	[WorkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[added] ADD  DEFAULT (0) FOR [Number]
GO
ALTER TABLE [dbo].[ArchiveFolder] ADD  DEFAULT ((-1)) FOR [ArchiveCenterID]
GO
ALTER TABLE [dbo].[ErrorMessage] ADD  CONSTRAINT [DF_ErrorMessage_ShowMessage]  DEFAULT (1) FOR [ShowMessage]
GO
ALTER TABLE [dbo].[Extention] ADD  CONSTRAINT [DF__Extention__IsSys__3E88198C]  DEFAULT ((0)) FOR [IsSystem]
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
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF__Fields__isblob__4AEDF071]  DEFAULT (0) FOR [isblob]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF__Fields__order__0A9E6132]  DEFAULT (1) FOR [order]
GO
ALTER TABLE [dbo].[Follow_Retroaction_Letter] ADD  DEFAULT ((0)) FOR [FR_Kind]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_DoneStatusID]  DEFAULT (1) FOR [DoneStatusID]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_Letterid]  DEFAULT (0) FOR [Letterid]
GO
ALTER TABLE [dbo].[FromOrganizations] ADD  CONSTRAINT [DF_FromOrganizations_IsActive]  DEFAULT (1) FOR [IsActive]
GO
ALTER TABLE [dbo].[FromOrganizations] ADD  CONSTRAINT [DF_FromOrganizations_IsInnerOrg]  DEFAULT (1) FOR [IsInnerOrg]
GO
ALTER TABLE [dbo].[FromOrganizations] ADD  CONSTRAINT [DF_FromOrganizations_Code]  DEFAULT (1) FOR [Code]
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
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__Finalize__4BE214AA]  DEFAULT (1) FOR [Finalized]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__SendStat__4CD638E3]  DEFAULT (1) FOR [SendStatusID]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__LastUpda__7D446614]  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__Archived__047B7388]  DEFAULT (0) FOR [Archived]
GO
ALTER TABLE [dbo].[Letter] ADD  CONSTRAINT [DF__Letter__ActionTy__657894D2]  DEFAULT (1) FOR [ActionTypeID]
GO
ALTER TABLE [dbo].[Letter] ADD  DEFAULT ((0)) FOR [RetroactionYear]
GO
ALTER TABLE [dbo].[Letter] ADD  DEFAULT ((0)) FOR [FollowLetterYear]
GO
ALTER TABLE [dbo].[Letter] ADD  DEFAULT ((0)) FOR [anjam_shod]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  CONSTRAINT [DF_Letter_Finalized]  DEFAULT ((1)) FOR [Finalized]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  CONSTRAINT [DF_Letter_SendStatusID]  DEFAULT ((1)) FOR [SendStatusID]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  CONSTRAINT [DF_Letter_Archived]  DEFAULT ((0)) FOR [Archived]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  CONSTRAINT [DF_Letter_ActionTypeID]  DEFAULT ((1)) FOR [ActionTypeID]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  DEFAULT ((0)) FOR [RetroactionYear]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  DEFAULT ((0)) FOR [FollowLetterYear]
GO
ALTER TABLE [dbo].[Letter_tt] ADD  DEFAULT ((0)) FOR [anjam_shod]
GO
ALTER TABLE [dbo].[LetterArchiveFolder] ADD  DEFAULT (0) FOR [UserID]
GO
ALTER TABLE [dbo].[LetterData] ADD  CONSTRAINT [DF_letterdata_pageNumber]  DEFAULT (0) FOR [PageNumber]
GO
ALTER TABLE [dbo].[LetterData] ADD  CONSTRAINT [DF_LetterData_extention]  DEFAULT (1) FOR [extention]
GO
ALTER TABLE [dbo].[LetterData] ADD  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[LetterData] ADD  CONSTRAINT [DF_LetterData__UI]  DEFAULT (newid()) FOR [UI]
GO
ALTER TABLE [dbo].[LetterData_Log] ADD  DEFAULT ((0)) FOR [PageNumber]
GO
ALTER TABLE [dbo].[LetterData_Log] ADD  DEFAULT ((1)) FOR [extention]
GO
ALTER TABLE [dbo].[LetterData_Log] ADD  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[LetterFieldValue] ADD  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[LetterFieldValue] ADD  DEFAULT (0) FOR [InsertUserID]
GO
ALTER TABLE [dbo].[LetterFieldValue] ADD  DEFAULT (1) FOR [FormOrder]
GO
ALTER TABLE [dbo].[LetterRelation] ADD  CONSTRAINT [DF_LetterRelation_Ord]  DEFAULT (1) FOR [Ord]
GO
ALTER TABLE [dbo].[LetterTemplate] ADD  DEFAULT ((1)) FOR [TemplateGroupID]
GO
ALTER TABLE [dbo].[LetterTemplate_hasan] ADD  CONSTRAINT [DF__LetterTem__Templ__2FA69406]  DEFAULT ((1)) FOR [TemplateGroupID]
GO
ALTER TABLE [dbo].[LetterTemplate1] ADD  CONSTRAINT [DF__LetterTem__Templ__2BD60322]  DEFAULT ((1)) FOR [TemplateGroupID]
GO
ALTER TABLE [dbo].[LetterText] ADD  CONSTRAINT [DF_LetterText_LetterFormat]  DEFAULT (1) FOR [LetterFormat]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_UrgencyID]  DEFAULT (1) FOR [UrgenceisID]
GO
ALTER TABLE [dbo].[Phone] ADD  DEFAULT ((0)) FOR [IsForWeb]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_Type]  DEFAULT (1) FOR [Type]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_ParentId]  DEFAULT (0) FOR [ParentId]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_UserID]  DEFAULT (1) FOR [UserID]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF_ReCommites_Done]  DEFAULT (0) FOR [Proceeded]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF__ReCommite__LastU__7F2CAE86]  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[ReCommites] ADD  CONSTRAINT [DF__ReCommite__Actio__056F97C1]  DEFAULT (1) FOR [ActionTypeID]
GO
ALTER TABLE [dbo].[ReCommites] ADD  DEFAULT (1) FOR [Finallized]
GO
ALTER TABLE [dbo].[Secretariats] ADD  DEFAULT (0) FOR [ServerID]
GO
ALTER TABLE [dbo].[Secretariats] ADD  DEFAULT (0) FOR [ArchiveCenterID]
GO
ALTER TABLE [dbo].[Subject] ADD  DEFAULT (1) FOR [IsActive]
GO
ALTER TABLE [dbo].[TemplateGroup] ADD  DEFAULT ('w') FOR [TemplateGroupType]
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
ALTER TABLE [dbo].[UserMessage] ADD  DEFAULT ((0)) FOR [IsForSender]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DefualtSecretariatID]  DEFAULT (1) FOR [DefualtSecretariatID]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (1) FOR [HasSecureLetterAccess]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [CanRecommiteWithOtherOrg]
GO
ALTER TABLE [dbo].[UsersPhoneAccess] ADD  DEFAULT ((1)) FOR [HasAccess]
GO
ALTER TABLE [dbo].[UserTable] ADD  CONSTRAINT [DF_UserTable_HasDelete]  DEFAULT ((0)) FOR [HasDelete]
GO
ALTER TABLE [dbo].[WorkSheet_Base] ADD  DEFAULT ((0)) FOR [isForWeb]
GO
ALTER TABLE [dbo].[ArchiveFolder]  WITH NOCHECK ADD  CONSTRAINT [FK_ArchiveFolder_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ArchiveFolder] NOCHECK CONSTRAINT [FK_ArchiveFolder_Users]
GO
ALTER TABLE [dbo].[Emails]  WITH NOCHECK ADD  CONSTRAINT [FK_Emails_Users] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Emails] NOCHECK CONSTRAINT [FK_Emails_Users]
GO
ALTER TABLE [dbo].[FieldAccess]  WITH NOCHECK ADD  CONSTRAINT [FK_FieldAccess_AccessType] FOREIGN KEY([AccessTypeID])
REFERENCES [dbo].[AccessType] ([AccessTypeID])
GO
ALTER TABLE [dbo].[FieldAccess] NOCHECK CONSTRAINT [FK_FieldAccess_AccessType]
GO
ALTER TABLE [dbo].[FieldAccess]  WITH NOCHECK ADD  CONSTRAINT [FK_FieldAccess_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldAccess] NOCHECK CONSTRAINT [FK_FieldAccess_Fields]
GO
ALTER TABLE [dbo].[FieldAccess]  WITH NOCHECK ADD  CONSTRAINT [FK_FieldAccess_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FieldAccess] NOCHECK CONSTRAINT [FK_FieldAccess_Users]
GO
ALTER TABLE [dbo].[Fields]  WITH NOCHECK ADD  CONSTRAINT [FK_Fields_FieldType] FOREIGN KEY([FieldTypeID])
REFERENCES [dbo].[FieldType] ([FieldTypeID])
GO
ALTER TABLE [dbo].[Fields] NOCHECK CONSTRAINT [FK_Fields_FieldType]
GO
ALTER TABLE [dbo].[Fields]  WITH NOCHECK ADD  CONSTRAINT [FK_Fields_Tables] FOREIGN KEY([TableID])
REFERENCES [dbo].[Tables] ([TableId])
GO
ALTER TABLE [dbo].[Fields] NOCHECK CONSTRAINT [FK_Fields_Tables]
GO
ALTER TABLE [dbo].[Follow_Retroaction_Letter]  WITH NOCHECK ADD FOREIGN KEY([FR_LetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[Follow_Retroaction_Letter]  WITH NOCHECK ADD FOREIGN KEY([LetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[FollowUp]  WITH NOCHECK ADD  CONSTRAINT [FK_FollowUp_DoneStatus] FOREIGN KEY([DoneStatusID])
REFERENCES [dbo].[DoneStatus] ([DoneStatusID])
GO
ALTER TABLE [dbo].[FollowUp] NOCHECK CONSTRAINT [FK_FollowUp_DoneStatus]
GO
ALTER TABLE [dbo].[FollowUp]  WITH NOCHECK ADD  CONSTRAINT [FK_FollowUp_FollowUpType] FOREIGN KEY([FollowUPTypeID])
REFERENCES [dbo].[FollowUpType] ([FollowUpTypeID])
GO
ALTER TABLE [dbo].[FollowUp] NOCHECK CONSTRAINT [FK_FollowUp_FollowUpType]
GO
ALTER TABLE [dbo].[FollowUp]  WITH NOCHECK ADD  CONSTRAINT [FK_FollowUp_Letter] FOREIGN KEY([Letterid])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[FollowUp] NOCHECK CONSTRAINT [FK_FollowUp_Letter]
GO
ALTER TABLE [dbo].[FollowUp]  WITH NOCHECK ADD  CONSTRAINT [FK_FollowUp_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FollowUp] NOCHECK CONSTRAINT [FK_FollowUp_Users]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_ActionType] FOREIGN KEY([ActionTypeID])
REFERENCES [dbo].[ActionType] ([ActionTypeID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_ActionType]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_Classifications] FOREIGN KEY([ClassificationID])
REFERENCES [dbo].[Classifications] ([ID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_Classifications]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_LetterFormats] FOREIGN KEY([letterformat])
REFERENCES [dbo].[LetterFormats] ([Code])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_LetterFormats]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_LetterTypes] FOREIGN KEY([Letter_Type])
REFERENCES [dbo].[LetterTypes] ([ID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_LetterTypes]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_ReceiveTypes] FOREIGN KEY([ReceiveTypeID])
REFERENCES [dbo].[ReceiveTypes] ([ID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_ReceiveTypes]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_Secretariats] FOREIGN KEY([SecretariatID])
REFERENCES [dbo].[Secretariats] ([SecID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_Secretariats]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_SendStatus] FOREIGN KEY([SendStatusID])
REFERENCES [dbo].[SendStatus] ([SendStatusID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_SendStatus]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_Subject]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_Urgenceis] FOREIGN KEY([UrgencyID])
REFERENCES [dbo].[Urgenceis] ([ID])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_Urgenceis]
GO
ALTER TABLE [dbo].[Letter]  WITH NOCHECK ADD  CONSTRAINT [FK_Letter_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Letter] NOCHECK CONSTRAINT [FK_Letter_Users]
GO
ALTER TABLE [dbo].[LetterArchiveFolder]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterArchiveFolder_ArchiveFolder] FOREIGN KEY([ArchiveFolderID])
REFERENCES [dbo].[ArchiveFolder] ([FolderID])
GO
ALTER TABLE [dbo].[LetterArchiveFolder] NOCHECK CONSTRAINT [FK_LetterArchiveFolder_ArchiveFolder]
GO
ALTER TABLE [dbo].[LetterArchiveFolder]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterArchiveFolder_Letter] FOREIGN KEY([LetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[LetterArchiveFolder] NOCHECK CONSTRAINT [FK_LetterArchiveFolder_Letter]
GO
ALTER TABLE [dbo].[LetterArchiveFolder]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterArchiveFolder_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[LetterArchiveFolder] NOCHECK CONSTRAINT [FK_LetterArchiveFolder_Users]
GO
ALTER TABLE [dbo].[LetterData]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterData_Letter] FOREIGN KEY([LetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[LetterData] NOCHECK CONSTRAINT [FK_LetterData_Letter]
GO
ALTER TABLE [dbo].[LetterFieldValue]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterFieldValue_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[LetterFieldValue] NOCHECK CONSTRAINT [FK_LetterFieldValue_Fields]
GO
ALTER TABLE [dbo].[LetterFieldValue]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterFieldValue_Letter] FOREIGN KEY([LetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[LetterFieldValue] NOCHECK CONSTRAINT [FK_LetterFieldValue_Letter]
GO
ALTER TABLE [dbo].[LetterFieldValue]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterFieldValue_Users] FOREIGN KEY([InsertUserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[LetterFieldValue] NOCHECK CONSTRAINT [FK_LetterFieldValue_Users]
GO
ALTER TABLE [dbo].[LetterRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterRelation_Letter] FOREIGN KEY([MainLetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[LetterRelation] NOCHECK CONSTRAINT [FK_LetterRelation_Letter]
GO
ALTER TABLE [dbo].[LetterRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterRelation_Letter1] FOREIGN KEY([MainLetterID])
REFERENCES [dbo].[Letter] ([LetterID])
GO
ALTER TABLE [dbo].[LetterRelation] NOCHECK CONSTRAINT [FK_LetterRelation_Letter1]
GO
ALTER TABLE [dbo].[LetterTemplate]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterTemplate_TemplateGroup] FOREIGN KEY([TemplateGroupID])
REFERENCES [dbo].[TemplateGroup] ([TemplateGroupID])
GO
ALTER TABLE [dbo].[LetterTemplate] NOCHECK CONSTRAINT [FK_LetterTemplate_TemplateGroup]
GO
ALTER TABLE [dbo].[LetterTemplate_hasan]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterTemplate_hasan_TemplateGroup] FOREIGN KEY([TemplateGroupID])
REFERENCES [dbo].[TemplateGroup] ([TemplateGroupID])
GO
ALTER TABLE [dbo].[LetterTemplate_hasan] NOCHECK CONSTRAINT [FK_LetterTemplate_hasan_TemplateGroup]
GO
ALTER TABLE [dbo].[LetterTemplate1]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterTemplate1_TemplateGroup] FOREIGN KEY([TemplateGroupID])
REFERENCES [dbo].[TemplateGroup] ([TemplateGroupID])
GO
ALTER TABLE [dbo].[LetterTemplate1] NOCHECK CONSTRAINT [FK_LetterTemplate1_TemplateGroup]
GO
ALTER TABLE [dbo].[LetterText]  WITH NOCHECK ADD  CONSTRAINT [FK_LetterText_LetterFormats] FOREIGN KEY([LetterFormat])
REFERENCES [dbo].[LetterFormats] ([Code])
GO
ALTER TABLE [dbo].[LetterText] NOCHECK CONSTRAINT [FK_LetterText_LetterFormats]
GO
ALTER TABLE [dbo].[News]  WITH NOCHECK ADD  CONSTRAINT [FK_News_Urgenceis] FOREIGN KEY([UrgenceisID])
REFERENCES [dbo].[Urgenceis] ([ID])
GO
ALTER TABLE [dbo].[News] NOCHECK CONSTRAINT [FK_News_Urgenceis]
GO
ALTER TABLE [dbo].[News]  WITH NOCHECK ADD  CONSTRAINT [FK_News_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[News] NOCHECK CONSTRAINT [FK_News_Users]
GO
ALTER TABLE [dbo].[NewsGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_NewsGroup_Users] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[NewsGroup] NOCHECK CONSTRAINT [FK_NewsGroup_Users]
GO
ALTER TABLE [dbo].[NewsGroupUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_NewsGroupUsers_NewsGroup] FOREIGN KEY([NewsGroupID])
REFERENCES [dbo].[NewsGroup] ([NewsGroupID])
GO
ALTER TABLE [dbo].[NewsGroupUsers] NOCHECK CONSTRAINT [FK_NewsGroupUsers_NewsGroup]
GO
ALTER TABLE [dbo].[NewsGroupUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_NewsGroupUsers_Users] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[NewsGroupUsers] NOCHECK CONSTRAINT [FK_NewsGroupUsers_Users]
GO
ALTER TABLE [dbo].[NewsUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_NewsUsers_Users] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[NewsUsers] NOCHECK CONSTRAINT [FK_NewsUsers_Users]
GO
ALTER TABLE [dbo].[ParaphTemplate]  WITH NOCHECK ADD  CONSTRAINT [FK_ParaphTemplate_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ParaphTemplate] NOCHECK CONSTRAINT [FK_ParaphTemplate_Users]
GO
ALTER TABLE [dbo].[Phone]  WITH NOCHECK ADD  CONSTRAINT [FK_Phone_PhoneGroup] FOREIGN KEY([PhoneGroupID])
REFERENCES [dbo].[PhoneGroup] ([PhoneGroupID])
GO
ALTER TABLE [dbo].[Phone] NOCHECK CONSTRAINT [FK_Phone_PhoneGroup]
GO
ALTER TABLE [dbo].[Phone]  WITH NOCHECK ADD  CONSTRAINT [FK_Phone_Users] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Phone] NOCHECK CONSTRAINT [FK_Phone_Users]
GO
ALTER TABLE [dbo].[PhoneGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_PhoneGroup_Users] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[PhoneGroup] NOCHECK CONSTRAINT [FK_PhoneGroup_Users]
GO
ALTER TABLE [dbo].[RecommiteData]  WITH NOCHECK ADD  CONSTRAINT [FK_RecommiteData_ReCommites] FOREIGN KEY([RecommiteID])
REFERENCES [dbo].[ReCommites] ([RecommiteID])
GO
ALTER TABLE [dbo].[RecommiteData] NOCHECK CONSTRAINT [FK_RecommiteData_ReCommites]
GO
ALTER TABLE [dbo].[ReCommites]  WITH NOCHECK ADD  CONSTRAINT [FK_ReCommites_ActionType] FOREIGN KEY([ActionTypeID])
REFERENCES [dbo].[ActionType] ([ActionTypeID])
GO
ALTER TABLE [dbo].[ReCommites] NOCHECK CONSTRAINT [FK_ReCommites_ActionType]
GO
ALTER TABLE [dbo].[ReCommites]  WITH NOCHECK ADD  CONSTRAINT [FK_ReCommites_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ReCommites] NOCHECK CONSTRAINT [FK_ReCommites_Users]
GO
ALTER TABLE [dbo].[ReferenceTableData]  WITH NOCHECK ADD  CONSTRAINT [FK_ReferenceTableData_Tables] FOREIGN KEY([TableID])
REFERENCES [dbo].[Tables] ([TableId])
GO
ALTER TABLE [dbo].[ReferenceTableData] NOCHECK CONSTRAINT [FK_ReferenceTableData_Tables]
GO
ALTER TABLE [dbo].[RelatedSecretariats]  WITH NOCHECK ADD  CONSTRAINT [FK_RelatedSecretariats_Secretariats] FOREIGN KEY([DestinationSecID])
REFERENCES [dbo].[Secretariats] ([SecID])
GO
ALTER TABLE [dbo].[RelatedSecretariats] NOCHECK CONSTRAINT [FK_RelatedSecretariats_Secretariats]
GO
ALTER TABLE [dbo].[Secretariats]  WITH NOCHECK ADD  CONSTRAINT [FK_Secretariats_ArchiveCenter] FOREIGN KEY([ArchiveCenterID])
REFERENCES [dbo].[ArchiveCenter] ([ArchiveCenterID])
GO
ALTER TABLE [dbo].[Secretariats] NOCHECK CONSTRAINT [FK_Secretariats_ArchiveCenter]
GO
ALTER TABLE [dbo].[UserAccArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAccArchive_ArchiveFolder] FOREIGN KEY([ArchiveFolderID])
REFERENCES [dbo].[ArchiveFolder] ([FolderID])
GO
ALTER TABLE [dbo].[UserAccArchive] NOCHECK CONSTRAINT [FK_UserAccArchive_ArchiveFolder]
GO
ALTER TABLE [dbo].[UserAccArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAccArchive_Secretariats] FOREIGN KEY([SecID])
REFERENCES [dbo].[Secretariats] ([SecID])
GO
ALTER TABLE [dbo].[UserAccArchive] NOCHECK CONSTRAINT [FK_UserAccArchive_Secretariats]
GO
ALTER TABLE [dbo].[UserAccArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAccArchive_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAccArchive] NOCHECK CONSTRAINT [FK_UserAccArchive_Users]
GO
ALTER TABLE [dbo].[UserExtention]  WITH NOCHECK ADD  CONSTRAINT [FK_UserExtention_Extention] FOREIGN KEY([ExtentionID])
REFERENCES [dbo].[Extention] ([ExtentionID])
GO
ALTER TABLE [dbo].[UserExtention] NOCHECK CONSTRAINT [FK_UserExtention_Extention]
GO
ALTER TABLE [dbo].[UserExtention]  WITH NOCHECK ADD  CONSTRAINT [FK_UserExtention_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserExtention] NOCHECK CONSTRAINT [FK_UserExtention_Users]
GO
ALTER TABLE [dbo].[UserLoginLogout]  WITH NOCHECK ADD  CONSTRAINT [FK_UserLoginLogout_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserLoginLogout] NOCHECK CONSTRAINT [FK_UserLoginLogout_Users]
GO
ALTER TABLE [dbo].[userMailInfo]  WITH NOCHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserMessage]  WITH NOCHECK ADD  CONSTRAINT [FK_UserMessage_Users] FOREIGN KEY([To_])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserMessage] NOCHECK CONSTRAINT [FK_UserMessage_Users]
GO
ALTER TABLE [dbo].[UserMessage]  WITH NOCHECK ADD  CONSTRAINT [FK_UserMessage_Users1] FOREIGN KEY([From_])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserMessage] NOCHECK CONSTRAINT [FK_UserMessage_Users1]
GO
ALTER TABLE [dbo].[UserNote]  WITH NOCHECK ADD  CONSTRAINT [FK_UserNote_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserNote] NOCHECK CONSTRAINT [FK_UserNote_Users]
GO
ALTER TABLE [dbo].[UserProfile]  WITH NOCHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserSecretariats]  WITH NOCHECK ADD  CONSTRAINT [FK_UserSecretariats_Secretariats] FOREIGN KEY([SecId])
REFERENCES [dbo].[Secretariats] ([SecID])
GO
ALTER TABLE [dbo].[UserSecretariats] NOCHECK CONSTRAINT [FK_UserSecretariats_Secretariats]
GO
ALTER TABLE [dbo].[UserSecretariats]  WITH NOCHECK ADD  CONSTRAINT [FK_UserSecretariats_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserSecretariats] NOCHECK CONSTRAINT [FK_UserSecretariats_Users]
GO
ALTER TABLE [dbo].[UserShortCut]  WITH NOCHECK ADD  CONSTRAINT [FK_UserShortCut_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserShortCut] NOCHECK CONSTRAINT [FK_UserShortCut_Users]
GO
ALTER TABLE [dbo].[UserTable]  WITH NOCHECK ADD  CONSTRAINT [FK_UserTable_Tables] FOREIGN KEY([tableID])
REFERENCES [dbo].[Tables] ([TableId])
GO
ALTER TABLE [dbo].[UserTable] NOCHECK CONSTRAINT [FK_UserTable_Tables]
GO
ALTER TABLE [dbo].[UserTable]  WITH NOCHECK ADD  CONSTRAINT [FK_UserTable_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserTable] NOCHECK CONSTRAINT [FK_UserTable_Users]
GO
ALTER TABLE [dbo].[UserTemplateGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_UserTemplateGroup_TemplateGroup] FOREIGN KEY([TemplateGroupID])
REFERENCES [dbo].[TemplateGroup] ([TemplateGroupID])
GO
ALTER TABLE [dbo].[UserTemplateGroup] NOCHECK CONSTRAINT [FK_UserTemplateGroup_TemplateGroup]
GO
ALTER TABLE [dbo].[UserTemplateGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_UserTemplateGroup_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserTemplateGroup] NOCHECK CONSTRAINT [FK_UserTemplateGroup_Users]
GO
ALTER TABLE [dbo].[WorkGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkGroup_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[WorkGroup] NOCHECK CONSTRAINT [FK_WorkGroup_Users]
GO
/****** Object:  StoredProcedure [dbo].[Activate_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
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
/****** Object:  StoredProcedure [dbo].[Activate_Recommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Activate_Recommite]
(
	@RecommiteID  int
)
AS
UPDATE [dbo].[ReCommites] 
	Set proceeded = 0,
		ActionTypeID = 1
Where RecommiteID = @RecommiteID

Delete From LetterArchiveFolder Where LetterID = @RecommiteID

GO
/****** Object:  StoredProcedure [dbo].[AnswerLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[AnswerLetter]
    (
      @LetterID INT ,
      @AnswerLetterID INT ,
      @Today CHAR(10)
    )
AS
    BEGIN
        INSERT  INTO dbo.Follow_Retroaction_Letter
                (LetterID, FR_LetterID, FR_Kind)
        VALUES  (@AnswerLetterID, @LetterID, 1)

        UPDATE  Letter
        SET     SentLetterID = @AnswerLetterID
        WHERE   LetterID = @LetterID  

        DECLARE @Letterformat INT   
        SELECT  @letterFormat = letterFormat
        FROM    letter
        WHERE   LetterID = @LetterID  
    
        IF @letterFormat = 1  
            BEGIN  
                UPDATE  ReCommites
                SET     Proceeded = 1 ,
                        ProceedDate = @today ,
                        IsAnswer = 1 --Ranjbar ID=258 
                WHERE   (Proceeded = 0)
                        AND (LetterID = @LetterID)  
  
                UPDATE  ReCommites
                SET     ActionTypeID = 5
                WHERE   (LetterID = @LetterID)  

                UPDATE  letter
                SET     LatestActionTypeID = 5
                WHERE   letterid = @letterid  
            END 
    END
GO
/****** Object:  StoredProcedure [dbo].[AnswerNote]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create proc [dbo].[AnswerNote]
@recommiteID int
as
update Recommites
set Staffmemo='پيش نويس صادره آماده شد ',actiontypeid=4
where recommiteid=@recommiteID

 
GO
/****** Object:  StoredProcedure [dbo].[Check_duplicate_UserName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create procedure [dbo].[Check_duplicate_UserName]
@UserName nvarchar(50),@result bit  output
as
if exists (SELECT *
  FROM  Users where ltrim(rtrim(username))=ltrim(rtrim(@UserName)))
set @result=1
else
set @result=0

GO
/****** Object:  StoredProcedure [dbo].[Check_Word_is_Open]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Check_Word_is_Open] 
@LetterID INT, @userID INT OUTPUT 
AS
BEGIN
	SELECT     UserID,MAX(UserLoginLoGOutID) ID, isCartable into #LastLoGOut
	FROM         UserLoginLoGOut 
	where  dbo.Shamsi(LoginTime)=dbo.Shamsi(getdate()) 
	group by Userid,isCartable

	SELECT @userID = OpenWords.UserID 
	FROM OpenWords 
		INNER JOIN #LastLoGOut ON #LastLoGOut.UserID = OpenWords.UserID
		inner join  UserLoginLoGOut  on UserLoginLoGOut.UserLoginLoGOutID=#LastLoGOut.ID
		INNER JOIN   Users ON #LastLoGOut.UserID = Users.Id
	where  datediff(ss,LoGOutTime,getdate())<90  
		AND (isSafeLoGOut=0) 
		AND OpenWords.LetterID = @LetterID
		AND OpenWords.UserID <> @userID

	IF  (@userID IS NULL)OR (@userID = 0) 
		SET @userID = -1
END
GO
/****** Object:  StoredProcedure [dbo].[CheckAccessForErja]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[CheckAccessForErja]
   (
      @FromOrgID int = 3441 ,
	  @ToOrgID   int = 3444
   )
AS
DECLARE @Parent int 

IF NOT  EXISTS(
                SELECT * FROM FromOrganizations
				WHERE ParentID = 4
				AND ID = @FromOrgID
)
and @FromOrgID <> 0
BEGIN

	IF EXISTS
			(
				SELECT 
					  *
				FROM ChartWorkGroupDetails A
				INNER JOIN FromOrganizations B
				  ON A.ORGID = b.id
				WHERE ORGID  = @ToOrgID--3445--گيرنده
				AND AccessForErja = 1
				AND a.groupid IN(
									SELECT A.groupid  -- قرستنده
									FROM ChartWorkGroupDetails A
									INNER JOIN FromOrganizations B
									  ON A.ORGID = b.id
									WHERE ORGID  = @FromOrgID--3441
									AND AccessForErja = 1
								)
			)  

	SELECT  1 AS Result
	ELSE 
	SELECT  0 AS Result
END
ELSE
  SELECT 1 AS Result

/*SET @Parent = 4 

IF EXISTS
		(
			SELECT 
				  *
			FROM ChartWorkGroupDetails A
			INNER JOIN FromOrganizations B
			  ON A.ORGID = b.id
			WHERE ORGID  = @ToOrgID--3445--گيرنده
			AND AccessForErja = 1
			AND a.groupid IN(
								SELECT A.groupid  -- قرستنده
								FROM ChartWorkGroupDetails A
								INNER JOIN FromOrganizations B
								  ON A.ORGID = b.id
								WHERE ORGID  = @FromOrgID--3441
								AND AccessForErja = 1
		                    )
        )  
--OR @Parent = 4
OR not  EXISTS
(
Select * from FromOrganizations
Where ParentID = 4
)
SELECT  1 AS Result
ELSE 
SELECT  0 AS Result
*/

GO
/****** Object:  StoredProcedure [dbo].[CountIncommingNO_PRC]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[CountIncommingNO_PRC]
			(
				  @IncommingNO nvarchar(50) = 25
				 ,@Year INT = 96
				 ,@SecretariatID INT = 0
			)
AS 
	SELECT COUNT(IncommingNO)Cnt
	FROM Letter
	WHERE LTRIM(RTRIM(IncommingNO)) = @IncommingNO
	AND MYear = @Year
GO
/****** Object:  StoredProcedure [dbo].[delete_Accesses]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[delete_Actions_ByFormID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Delete_All_Secretariats_Of_User]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





create procedure [dbo].[Delete_All_Secretariats_Of_User](@userid int)
as
DELETE FROM UserSecretariats
WHERE     (UserId = @UserID)


 

GO
/****** Object:  StoredProcedure [dbo].[Delete_All_TemplateGroup_Of_User]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[Delete_All_TemplateGroup_Of_User](@userid int)
as
DELETE FROM UserTemplateGroup
WHERE     (UserId = @UserID)



 

GO
/****** Object:  StoredProcedure [dbo].[Delete_ArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_ArchiveFolder](@FolderID [int])  
AS

DELETE UserAccArchive  
WHERE( ArchiveFolderID = @FolderID)  
---
 
delete LetterArchiveFolder 
where ArchiveFolderID = @FolderID  

DELETE ArchiveFolder  
WHERE( FolderID = @FolderID)  



GO
/****** Object:  StoredProcedure [dbo].[Delete_Exported_LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Delete_Exported_LetterData](@SecretariatID int, @myear int)
as
	Delete     LetterData
		FROM         LetterData 
			INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID
		WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MYear = @myear)
GO
/****** Object:  StoredProcedure [dbo].[delete_Extention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_Extention]
@ExtentionID int
AS
delete UserExtention where ExtentionID=@ExtentionID
delete Extention where ExtentionID=@ExtentionID





GO
/****** Object:  StoredProcedure [dbo].[Delete_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Delete_Letter]  
	@LetterID int,
	@newInd int  
AS  
	Declare @letterformat TINYINT, @EmailNuFromDate Nvarchar(20), @indicatorID INT

	IF OBJECT_ID('tempdb..#Topol') IS NOT NULL 
		DROP TABLE #Topol
	CREATE TABLE #Topol(ID INT)
	  
	Select @letterformat=letterformat, @indicatorID=IndicatorID, @EmailNuFromDate = EmailNuFromDate   
		From letter  
		Where letterid=@LetterID 

	IF NOT EXISTS (SELECT 1 FROM DeletedLetters WHERE LetterID = @LetterID)
		INSERT INTO DeletedLetters(letterID,IndicatorID, EmailNuFromDate) VALUES (@LetterID,@indicatorID, @EmailNuFromDate) 
	ELSE
		UPDATE DeletedLetters SET IndicatorID=@indicatorID, EmailNuFromDate = @EmailNuFromDate WHERE LetterID = @LetterID
	  
	if @letterformat=1   
	  UPDATE    Letter  
		SET        LetterFormat = 3 ,memo=isnull(memo,'') +'('+cast(@newInd as varchar(6))+')', indicatorid=@newind  
		WHERE     (LetterID = @LetterID)  

	if @letterformat in (2,3)  
	begin    
	  DELETE [ReCommites]  	WHERE     (LetterID = @LetterID)  
	  DELETE [LetterText]  	WHERE     (LetterID = @LetterID)  
	  DELETE [LetterData]  	WHERE     (LetterID = @LetterID)  
	  DELETE [Letter] 		WHERE     (LetterID = @LetterID)  
	end
GO
/****** Object:  StoredProcedure [dbo].[delete_LetterArchive]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[delete_LetterArchive]
	(@ArchiveFolderID 	[int], @LetterID int)
AS
DELETE [dbo].[LetterArchiveFolder]
WHERE( [ArchiveFolderID]	 = @ArchiveFolderID AND LetterID = @LetterID)

if not exists (select * from [LetterArchiveID] where letterid=@letterid) 
update letter
set Archived=0
where letterid=@letterid
GO
/****** Object:  StoredProcedure [dbo].[delete_LetterArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_LetterArchiveFolder]
	(@LetterArchiveID 	[int])

AS
declare @letterid int

select @letterid =letterid
from[LetterArchiveFolder]
where [LetterArchiveID]	 = @LetterArchiveID


DELETE [dbo].[LetterArchiveFolder]
WHERE (LetterArchiveID=@LetterArchiveID)

-- Commented by Saeedi & Moghadam on 96/11/05
--if not exists (select * from [LetterArchiveID] where letterid=@letterid) 
--update letter
--set Archived=0
--where letterid=@letterid

-- Added By Saeedi & Moghadam on 96/11/05
IF NOT EXISTS (SELECT * FROM LETTER AS L
			INNER JOIN RECOMMITES AS R ON L.LETTERID=R.LETTERID
			INNER JOIN LETTERARCHIVEFOLDER AS LA ON LA.LETTERID=R.RECOMMITEID
			WHERE R.RECOMMITEID=@LETTERID)
BEGIN
	UPDATE RECOMMITES
	SET PROCEEDDATE=NULL,PROCEEDED=0
	WHERE RECOMMITEID=@LETTERID
END






GO
/****** Object:  StoredProcedure [dbo].[delete_LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[delete_LetterData] (@LetterDataID int )
as
begin
declare @LetterID int = 0
select @LetterID = LetterID from LetterData where LetterDataID = @LetterDataID and Extention in (3, 20)
if(@LetterID > 0)
delete from LetterSign where LetterID = @LetterID

delete       LetterData WHERE     (LetterDataID = @LetterDataID)
delete       LetterDataText WHERE     (LetterDataID = @LetterDataID)
end

GO
/****** Object:  StoredProcedure [dbo].[delete_letterImage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[delete_LetterWord]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_LetterWord]
(@LetterID 	[int])

AS 
	DELETE [dbo].[LetterData] 
		WHERE ([LetterID] = @LetterID AND ([extention] = 3 or [extention] = dbo.GetExcelId()))

	DELETE [dbo].[LetterText]
		WHERE LetterID=@LetterID
	 
	DELETE [dbo].[LetterSign]
		WHERE LetterID=@LetterID

GO
/****** Object:  StoredProcedure [dbo].[delete_ParaphTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[delete_ParaphTemplate]
@ParaphTemplateID int
as
declare @OrderId tinyint,@Userid int


select @OrderID=Orderid,@Userid=Userid from ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID

delete  ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID


   update ParaphTemplate set OrderId=OrderID-1      where  Userid=@Userid and Orderid>@orderid


GO
/****** Object:  StoredProcedure [dbo].[delete_RecommiteData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[delete_RecommiteData] (@LetterDataID int )
as
delete       RecommitePayvast
WHERE     (ID = @LetterDataID)
GO
/****** Object:  StoredProcedure [dbo].[delete_RecommitePayvast]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[delete_RecommitePayvast] 
		@ID int
	AS
	BEGIN
		DELETE FROM RecommitePayvast
		WHERE     (ID = @ID)
	END
GO
/****** Object:  StoredProcedure [dbo].[delete_ReCommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[delete_ReCommites]
	(@RecommiteID 	[int])

AS 

IF OBJECT_ID('tempdb..#Topol') IS NOT NULL DROP TABLE #Topol
CREATE TABLE #Topol(ID INT)

DELETE [dbo].[ReCommites] 
WHERE 
	( [RecommiteID]	 = @RecommiteID)

GO
/****** Object:  StoredProcedure [dbo].[Delete_Table]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Delete_Table](@tableID int)
as

declare @Tablename varchar(50)

select @tablename=Tablename
 from tables
where tableid=@tableid


  delete from tables
  where tableid=@tableid
  
  delete from Fields
  where tableid=@tableid

  exec('drop table '+@tablename)




 

GO
/****** Object:  StoredProcedure [dbo].[delete_user]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[delete_user]
 @userid int 
as
exec sp_SetForeinKey 0



delete ArchiveFolder where UserID=@UserID
delete Emails where UsersID=@UserID
delete FieldAccess where UserID=@UserID
delete FollowUp where UserID=@UserID
delete LetterArchiveFolder where UserID=@UserID
delete NewsGroupUsers where UsersID=@UserID
delete NewsUsers where UsersID=@UserID
delete ParaphTemplate where UserID=@UserID
delete PhoneGroup where UsersID=@UserID
delete Settings where UserID=@UserID
delete UserAccArchive where UserID=@UserID
delete UserExtention where UserId=@UserID
delete UserLog where UserID=@UserID
delete UserLoginLogout where UserID=@UserID  
delete UserNote where UserID=@UserID
delete UserSecretariats where UserId=@UserID
delete UserShortCut where UserID=@UserID
delete UserSign where UserID=@UserID
delete UserTemplateGroup where UserID=@UserID
delete users where id=@UserID

GO
/****** Object:  StoredProcedure [dbo].[delete_UserTable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
CREATE Procedure [dbo].[delete_UserTable]
 @TableID int
as
UPDATE    Letter
SET      UserTableID = NULL
from letter
inner join  LetterFieldValue on LetterFieldValue.letterid=letter.LetterID
inner join  Fields on Fields.id=LetterFieldValue.FieldID
WHERE TableID = @tableid

delete    LetterFieldValue
from LetterFieldValue
inner join  Fields on Fields.id=LetterFieldValue.FieldID
WHERE TableID = @tableid

DELETE FROM Fields
WHERE     (TableID = @tableid)

delete UserTable
WHERE     (TableID = @tableid)

delete [tables]
WHERE     (TableID = @tableid)
GO
/****** Object:  StoredProcedure [dbo].[Deleted_to_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[Deleted_to_Letter]
@LetterID int,@newInd int,@today char(10)
AS
   UPDATE   Letter
   SET        registrationdate=@today,      IndicatorID = @newInd,  LetterFormat = 1
 WHERE     (LetterID = @LetterID)



GO
/****** Object:  StoredProcedure [dbo].[DeletePhoneByPhoneID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePhoneByPhoneID](@PhoneID INT)
AS
	DELETE FROM Phone WHERE PhoneID = @PhoneID
GO
/****** Object:  StoredProcedure [dbo].[Draft_to_SentLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Draft_to_SentLetter]
@LetterID int,@newInd int,@today char(10),@IsCopy BIT ,@Proceed BIT ,@IsCopy_In_Dabir BIT
AS

declare @Letter_Type int
select @Letter_Type=Letter_type
from letter
WHERE     (LetterID = @LetterID)

CREATE TABLE #TPT(ID INT)

  UPDATE   Letter
  SET        registrationdate=@today,      IndicatorID = @newInd,  LetterFormat = 1
  WHERE     (LetterID = @LetterID)


IF @Letter_Type<>1 
BEGIN
	if @Proceed=1   
		UPDATE recommites
		SET proceeded=1 WHERE letterid=@LetterID  and finallized=1

	if @IsCopy=1   
		UPDATE recommites
		SET IsCopy=1 WHERE letterid=@LetterID  and finallized=1
END

declare @receivedLetter int

select top 1 @receivedLetter=Letterid
from letter where sentletterid=@LetterID

if @receivedLetter is not null
 begin
  update recommites
  set proceeded=1,ActionTypeid=5 where letterid=@receivedLetter
  update  letter set LatestActionTypeID=5 where letterid=@receivedLetter
 end


if not exists (select * from recommites where letterid=@LetterID)
 INSERT INTO dbo.ReCommites ( LetterID, ID, Type, ParentId, OrgID, Paraph, RecommiteDate, UserID, IsCopy, Proceeded,OrgStaff) 
select LetterID,1,3,0,fromorgid,'',registrationdate,userid,0,0 ,''
from letter
where letterid=@LetterID
declare @maxID int,@parent int

select @maxID=MAX(id)
from ReCommites
where LetterID=@LetterID and Type=3

if @maxID is null 
begin 
  set @maxID=1
  set @Parent=0
end
else
begin 
  set @Parent=@maxID
  set @maxID=@maxID+1
end
  if @Letter_Type<>1    
 INSERT INTO dbo.ReCommites ( LetterID, ID, Type, ParentId, OrgID, Paraph, RecommiteDate, UserID, IsCopy, Proceeded,OrgStaff) 
select LetterID,@maxID,3,@Parent,toorgid,'',registrationdate,userid,0,0 ,''
from letter
where letterid=@LetterID


update ReCommites
set Finallized=1
where letterid=@LetterID

IF @Letter_Type<>1 
BEGIN
	if @Proceed=1   
		UPDATE recommites
		SET proceeded=1 WHERE letterid=@LetterID  

	if @IsCopy=1   
		update recommites
		set IsCopy=1 where letterid=@LetterID 
				
	if @IsCopy_In_Dabir=1   
		update recommites
		SET IsCopy_In_Dabir = 1	where letterid=@LetterID
END

GO
/****** Object:  StoredProcedure [dbo].[dropDefault]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[dropDefault]
@tablename varchar(100),
@colname varchar(100)
as

declare @dfName varchar(100),@sql nvarchar(4000)

select top 1 @dfname=o.name
from sysconstraints sc,sysobjects o,syscolumns c
where sc.id=object_id(@tablename) and o.id=sc.constid and c.id=sc.id and c.colid=sc.colid
and o.type='d'
and c.name=@colname

set @sql='ALTER TABLE '+@tablename+' DROP CONSTRAINT '+@dfname
 if @sql is not null
exec(@sql)
GO
/****** Object:  StoredProcedure [dbo].[Duplicate_UserShortCut]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Duplicate_UserShortCut]
@UserID int,
@altKey char(1),
@result bit output
as
if exists (SELECT *   FROM UserShortCut where UserID=@UserID and altKey=@altKey)
set @result=1
else
set @result=0


GO
/****** Object:  StoredProcedure [dbo].[Export_LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
insert INTO yeganeh_tmp_db.DBO.LetterData (LetterDataID,LetterID,PageNumber,Image,extention)
SELECT     LetterDataID,LetterID,PageNumber,Image,extention
FROM         LetterData
WHERE     (LetterdataID = @LetterdataID)




 

GO
/****** Object:  StoredProcedure [dbo].[Folder_hasChild]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[Folder_hasLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[Folder_hasLetter](@Folderid int,@hasLetter bit output)
as
if exists (SELECT     *
FROM         LetterArchiveFolder
inner join letter on letter.letterid= LetterArchiveFolder.letterid
WHERE     letterformat<=2 and (ArchiveFolderID = @Folderid)) set @hasLetter=1
else
set @hasLetter=0







GO
/****** Object:  StoredProcedure [dbo].[Folder_hasRecommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  procedure [dbo].[Folder_hasRecommite](@Folderid int,@hasLetter bit output)
as
if exists (SELECT     *
FROM         LetterArchiveFolder
where  ArchiveFolderID = @Folderid) set @hasLetter=1
else
set @hasLetter=0

GO
/****** Object:  StoredProcedure [dbo].[ForceToExit]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ForceToExit] 
	@UserLoginLoGOutID Int, 
	@res Bit Output 
AS
Begin
	Set @res = 0

	Select @res = IsNull(forceToExit, 0) 
		From UserLoginLoGOut
		Where UserLoginLoGOutID = @UserLoginLoGOutID
End
GO
/****** Object:  StoredProcedure [dbo].[Get_ActiveUser]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------------------------------------------------------
CREATE  procedure [dbo].[Get_ActiveUser]
as
SELECT     UserID,MAX(UserLoginLogoutID) ID, isCartable into #LastLogout

FROM         UserLoginLogout 
where  dbo.Shamsi(LoginTime)=dbo.Shamsi(getdate())
group by Userid,isCartable
 
SELECT     Users.UserName,case when datepart(hh, LoginTime)<10 then '0'+cast(datepart(hh, LoginTime) as char(1)) else cast(datepart(hh, LoginTime) as 
char(2)) end +':'+
case when datepart(mi, LoginTime)<10 then '0'+cast(datepart(mi, LoginTime) as char(1)) else cast(datepart(mi, LoginTime) as char(2)) end  as logintime,
#LastLogout.isCartable
FROM    #LastLogout
inner join  UserLoginLogout  on UserLoginLogout.UserLoginLogoutID=#LastLogout.ID
INNER JOIN   Users ON #LastLogout.UserID = Users.Id
where  datediff(ss,LogoutTime,getdate())<90  and (isSafeLogout=0)

GO
/****** Object:  StoredProcedure [dbo].[Get_All_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_All_Letter]  
    @SecretariatID int,                  
    @Myear int,                  
    @Letter_Type int,                  
    @LetterFormat int,                  
    @Where nvarchar(4000),                  
    @Top int,                  
    @ArchiveFolderID int,                  
    @ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)               
    @UserID int 
	
    As 
    
	 
    IF ISNULL(LTRIM(RTRIM(@where)),'')=''
    BEGIN
		DECLARE @DO_ CHAR(10) SET @DO_ = dbo.ATF_PEY_SETTING ('ATF-PEY')
    END

    DECLARE @SqlCommand nvarchar(max),@InnerNo NVARCHAR(500)
                                     
    IF OBJECT_ID('tempdb..#s') IS NOT NULL 
		DROP TABLE #s   
                
    Set @InnerNo=dbo.InnerNoFormat('Sender','Deliver',@SecretariatID)     

    IF OBJECT_ID('tempdb..#s') IS NOT NULL 
		DROP TABLE #s
    
	CREATE TABLE #s
    (
    PEY2 NVARCHAR(200),
    ATF2 NVARCHAR(200),
    PEY NVARCHAR(100),
    ATF NVARCHAR(100),
    LetterID INT,   
    CenterNo NVARCHAR(50),                                          
    IndicatorID INT,
    MYear INT,
    SecretariatID INT,
    Letter_Type INT,
    letterformat INT,
    IncommingNO NVARCHAR(50),                                       
    FromOrgID INT,  
    IncommingDate NVARCHAR(10),
    ToOrgID INT,    
    UrgencyID INT,  
    Memo NVARCHAR(4000),                                                                                                                                                                                                                                                           
    RetroactionNo NVARCHAR(1000),                                     
    RegistrationDate CHAR(10),
    FollowLetterNo NVARCHAR(1000),                                    
    ToStaffer NVARCHAR(50),                                         
    SentLetterID INT,
    TemplateID  INT,
    UserMemo  NVARCHAR(1000),                                                                                                                                                                                                                                                      
    DeadLineDate CHAR(10),
    SenderTitle NVARCHAR(100),                                                                                         
    DeliverTitle NVARCHAR(100),                                                                                        
    has_Page BIT,
    has_WordPage BIT,
    has_file BIT,
    SubjectID INT,  
    LetterTypeTitle NVARCHAR(50),                                    
    LetterRecommites NVARCHAR(4000),                                                                                                                                                                                                                                                
    sendstatusTitle  NVARCHAR(100),                                                                                    
    InnerNo VARCHAR(500),
    InnerNoForWord VARCHAR(500),
    Archived BIT,
    ActionTypeTitle NVARCHAR(50),                                   
    SignerID NVARCHAR(200),                                           
    SignerTitle NVARCHAR(100),                                                                                         
    ReceiveTypeID INT,
    ClassificationID INT,
    ArchivePlace NVARCHAR(500),
    SubjectDescription NVARCHAR(4000),
    has_sign BIT ,   
    HasLetterForms BIT,
    FolderID INT,
    ArchivecenterID INT,
	SecretariatTitle  NVARCHAR(100),
	EmailFromDateTime Nvarchar(20),
	EmailFrom nvarchar(1000),
	EmailSubject nvarchar(2000),
	IsNetWork bit
			  
    )

	IF @ArchiveStatus = 0
	BEGIN
		IF isnull(ltrim(rtrim(@where)),'')=''
		BEGIN
			INSERT INTO #s
			(
				PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,
				ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,
				DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,
				ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			)
			SELECT DISTINCT top (@Top)
					PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,              
					Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,'-' AS RetroactionNo,Letter.RegistrationDate,'-' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                  
					Deliver.Title AS DeliverTitle,
					case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page, 
					dbo.has_WordPage(letter.LetterID) AS has_WordPage, 
					dbo.has_file(letter.LetterID) AS has_File,
																																	
					 Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,
					 at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,
					(SELECT top (1)  a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,
					Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,dbo.HasLetterForms(Letter.Letterid) HasLetterForms,
					(SELECT top (1)  a.FolderID 
					FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b 
					ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS FolderID,
					Secretariats.SecTitle as SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			FROM Letter
			INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID
			INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID
			LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID
			LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID
			LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type
			LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID
			WHERE Letter.Finalized=1 AND Letter.Archived=0 AND
				  ((Letter_Type=@Letter_Type) OR (@Letter_Type=0)) AND
				  ((Secretariatid=@SecretariatID) OR (@SecretariatID<=0)) AND
				  ((myear=@Myear) OR (@Myear<=0)) AND
				  ((Letter.LetterFormat=@LetterFormat) OR (@LetterFormat<=0))AND
				  (letter.LetterID>=(SELECT ISNULL(MAX(letterID)-10000,0) FROM Letter))	
			order by myear desc,letter.IndicatorID DESC,letter.letterid desc
					
		END
		ELSE
		BEGIN
			Set @sqlCommand='DECLARE @DO_ CHAR(10) SET @DO_ = dbo.ATF_PEY_SETTING (''ATF-PEY'')'+
			' INSERT INTO #s'+
			'('+
				'PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,'+
				'ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,'+
				'DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,'+
				'ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			 ' )'+
			' SELECT DISTINCT top ('+CAST(@Top as varchar)+')' + 
					' PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,'+              
					'Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,''-'' AS RetroactionNo,Letter.RegistrationDate,''-'' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,'+                  
					'Deliver.Title AS DeliverTitle,'+
					' case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page,'+
					' dbo.has_WordPage(letter.LetterID) AS has_WordPage, '+
					' dbo.has_file(letter.LetterID) AS has_File,'+
																																		
					 'Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,'+
					 'at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,'+
					' (SELECT top (1)  a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,'+
					'Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,
					dbo.HasLetterForms(Letter.Letterid) HasLetterForms,'+
					' (SELECT top (1)  a.FolderID FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b 
					ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS FolderID,Secretariats.SecTitle SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			' FROM Letter 
			INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID 
			INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID'+
			' LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID'+
			' LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type'+
			' LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID'+
			' WHERE Letter.Finalized=1 AND Letter.Archived=0 AND '+
				  '((Letter_Type='+CAST(@Letter_Type AS VARCHAR(5))+') OR ('+CAST(@Letter_Type AS VARCHAR(5))+'=0)) AND '+
				  '((Secretariatid='+CAST(@SecretariatID AS VARCHAR(5))+') OR ('+CAST(@SecretariatID AS VARCHAR(5))+'<=0)) AND '+
				  '((myear='+CAST(@Myear AS VARCHAR(5))+') OR ('+CAST(@Myear AS VARCHAR(5))+'<=0)) AND '+
				  '((Letter.LetterFormat='+CAST(@LetterFormat AS VARCHAR(5))+') OR ('+CAST(@LetterFormat AS VARCHAR(55))+'<=0))'+
				  ' And ' + @where + ' order by myear desc,letter.IndicatorID DESC,letter.letterid desc'
			
			Exec Sp_ExecuteSql   @sqlCommand
		END
		
		IF @ArchiveFolderID>0
		BEGIN
			DELETE FROM #s WHERE ISNULL(FolderID,0)!=@ArchiveFolderID
		END

	END
	ELSE
	IF @ArchiveStatus=1
	BEGIN
		IF isnull(ltrim(rtrim(@where)),'')=''
		BEGIN
			INSERT INTO #s
			(
				PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,
				ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,
				DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,
				ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			)
			SELECT DISTINCT top (@Top)
					PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,              
					Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,'-' AS RetroactionNo,Letter.RegistrationDate,'-' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                  
					Deliver.Title AS DeliverTitle,
					case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page, 
					dbo.has_WordPage(letter.LetterID) AS has_WordPage, 
					dbo.has_file(letter.LetterID) AS has_File,
																																	
					 Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,
					 at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,
					(SELECT top (1)  a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,
					Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,dbo.HasLetterForms(Letter.Letterid) HasLetterForms,
					(SELECT top (1)  a.FolderID FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID 
					AND b.LetterID=Letter.LetterID) AS FolderID,Secretariats.SecTitle as SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			FROM Letter
			INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID
			INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID
			LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID
			LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID
			LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type
			LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID
			WHERE Letter.Finalized=1 AND Letter.Archived=1 AND
				  ((Letter_Type=@Letter_Type) OR (@Letter_Type=0)) AND
				  ((Secretariatid=@SecretariatID) OR (@SecretariatID<=0)) AND
				  ((myear=@Myear) OR (@Myear<=0)) AND
				  ((Letter.LetterFormat=@LetterFormat) OR (@LetterFormat<=0))AND
				  (letter.LetterID>=(SELECT ISNULL(MAX(letterID)-10000,0) FROM Letter))
			order by myear desc,letter.IndicatorID DESC,letter.letterid desc
		END
		ELSE
		BEGIN
			Set @sqlCommand='DECLARE @DO_ CHAR(10) SET @DO_ = dbo.ATF_PEY_SETTING (''ATF-PEY'')'+
			' INSERT INTO #s'+
			'('+
				'PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,'+
				'ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,'+
				'DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,'+
				'ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			')'+
			' SELECT DISTINCT top ('+CAST(@Top as varchar)+')' + 
					' PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,'+
					' Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,''-'' AS RetroactionNo,Letter.RegistrationDate,''-'' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,'+
					'Deliver.Title AS DeliverTitle,'+
					' case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page,'+
					' dbo.has_WordPage(letter.LetterID) AS has_WordPage, '+
					' dbo.has_file(letter.LetterID) AS has_File,'+
																																		
					 'Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,'+
					 'at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,'+
					'(SELECT top (1)  a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,'+
					'Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,dbo.HasLetterForms(Letter.Letterid) HasLetterForms,
					'+
					'(SELECT top (1)  a.FolderID FROM ArchiveFolder AS a 
					INNER JOIN LetterArchiveFolder AS b 
					ON a.FolderID=b.ArchiveFolderID 
					AND b.LetterID=Letter.LetterID) AS FolderID,Secretariats.SecTitle SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			' 
			 FROM Letter 
			  INNER JOIN sendstatus AS ss
			   on ss.sendstatusID=Letter.sendstatusID 
			   INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID
			  LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID'+
			' LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID'+
			' LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type'+
			' LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID'+
			' WHERE Letter.Finalized=1 AND Letter.Archived=1 AND '+
				  ' ((Letter_Type='+CAST(@Letter_Type AS VARCHAR(5))+') OR ('+CAST(@Letter_Type AS VARCHAR(5))+'=0)) AND '+
				  ' ((Secretariatid='+CAST(@SecretariatID AS VARCHAR(5))+') OR ('+CAST(@SecretariatID AS VARCHAR(5))+'<=0)) AND '+
				  ' ((myear='+CAST(@Myear AS VARCHAR(5))+') OR ('+CAST(@Myear AS VARCHAR(5))+'<=0)) AND '+
				  ' ((Letter.LetterFormat='+CAST(@LetterFormat AS VARCHAR(5))+') OR ('+CAST(@LetterFormat AS VARCHAR(5))+'<=0))'+
				  ' And ' + @where + ' order by myear desc,letter.IndicatorID DESC,letter.letterid desc'

			Exec Sp_ExecuteSql   @sqlCommand
		END	 
		 
		IF @ArchiveFolderID>0
		BEGIN
			DELETE FROM #s WHERE ISNULL(FolderID,0)!=@ArchiveFolderID
		END
		
		DELETE FROM #s WHERE LetterID NOT IN 
		(
			SELECT s.LetterID FROM #s AS s
			INNER JOIN Letter L ON s.LetterID=L.LetterID
			INNER JOIN LetterArchiveFolder laf ON laf.Letterid = L.letterid And L.LetterID = s.LetterID
			INNER JOIN Archivefolder af  on laf.ArchiveFolderID = af.FolderID              
			INNER JOIN UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID
			WHERE ISNULL(uac.UserID, CAST(@userid as varchar(10)))= CAST(@userid as varchar(10)) And ISNULL(uac.ISAccess,1)=1 		
		)
			  
	END
	ELSE
	IF @ArchiveStatus=2
	BEGIN
		IF isnull(ltrim(rtrim(@where)),'')=''
		BEGIN
			INSERT INTO #s
			(
				PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,
				ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,
				DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,
				ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,ArchivecenterID,
				SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			)
			SELECT DISTINCT top (@Top) 
					PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,              
					Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,'-' AS RetroactionNo,Letter.RegistrationDate,'-' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                  
					Deliver.Title AS DeliverTitle,
					case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page, 
					dbo.has_WordPage(letter.LetterID) AS has_WordPage, 
					dbo.has_file(letter.LetterID) AS has_File,                  
																																					  
					 Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,
					 at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,
					(SELECT top (1) a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,
					Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,dbo.HasLetterForms(Letter.Letterid) HasLetterForms,
					(SELECT top (1)  a.FolderID FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS FolderID,
					(SELECT top (1)  a.ArchiveCenterID FROM ArchiveFolder AS a 
					INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID 
					AND b.LetterID=Letter.LetterID) AS ArchiveCenterID,Secretariats.SecTitle as SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			FROM Letter
			INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID                  
			INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID                  
			LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID 
			LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                  
			LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type
			LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID                  
			WHERE Letter.Finalized=1 AND Letter.Archived=1 AND
				  ((Letter_Type=@Letter_Type) OR (@Letter_Type=0)) AND
				  ((Secretariatid=@SecretariatID) OR (@SecretariatID<=0)) AND
				  ((myear=@Myear) OR (@Myear<=0)) AND
				  ((Letter.LetterFormat=@LetterFormat) OR (@LetterFormat<=0))AND
				  (letter.LetterID>=(SELECT ISNULL(MAX(letterID)-10000,0) FROM Letter))
			order by myear desc,letter.IndicatorID DESC,letter.letterid desc
		END
		ELSE
		BEGIN
			Set @sqlCommand='DECLARE @DO_ VarCHAR(10) SET @DO_=dbo.ATF_PEY_SETTING(''ATF-PEY'')'+
			' INSERT INTO #s'+
			'('+
				'PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,'+
				'ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,'+
				'DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,'+
				'ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,ArchivecenterID
				,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			')'+
			' SELECT DISTINCT top ('+CAST(@Top as varchar)+')' + 
					' PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,'+
					'Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,''-'' AS RetroactionNo,Letter.RegistrationDate,''-'' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,'+
					'Deliver.Title AS DeliverTitle,'+
					' case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page,'+
					' dbo.has_WordPage(letter.LetterID) AS has_WordPage,'+ 
					' dbo.has_file(letter.LetterID) AS has_File,'+
																																	 
					 'Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,'+
					 'at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,'+
					'(SELECT top (1)  a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,'+
					'Letter.SubjectDescription,
					dbo.has_sign(Letter.letterID) as has_sign ,
					dbo.HasLetterForms(Letter.Letterid) HasLetterForms,'+
					'(SELECT top (1)  a.FolderID FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS FolderID,'+
					'(SELECT a.ArchiveCenterID FROM ArchiveFolder AS a 
					INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID 
					AND b.LetterID=Letter.LetterID) AS ArchiveCenterID,Secretariats.SecTitle SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			' FROM Letter'+
			' INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID'+
			' INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID'+
			' LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID'+
			' LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID'+
			' LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type'+
			' LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID'+
			' WHERE Letter.Finalized=1 AND Letter.Archived=1 AND '+
				  '((Letter_Type='+CAST(@Letter_Type AS VARCHAR(5))+') OR ('+CAST(@Letter_Type AS VARCHAR(5))+'=0)) AND '+
				  '((Secretariatid='+CAST(@SecretariatID AS VARCHAR(5))+') OR ('+CAST(@SecretariatID AS VARCHAR(5))+'<=0)) AND '+
				  '((myear='+CAST(@Myear AS VARCHAR(5))+') OR ('+CAST(@Myear AS VARCHAR(5))+'<=0)) AND '+
				  '((Letter.LetterFormat='+CAST(@LetterFormat AS VARCHAR(5))+') OR ('+CAST(@LetterFormat AS VARCHAR(5))+'<=0))'+
				  ' And ' + @where + ' order by myear desc,letter.IndicatorID DESC,letter.letterid desc'
 
			Exec Sp_ExecuteSql   @sqlCommand
		END

		DELETE FROM #s WHERE ISNULL(FolderID,0)>0

		IF @ArchiveFolderID>0
		BEGIN
			DELETE FROM #s WHERE ISNULL(FolderID,0)!=@ArchiveFolderID
		END
	END
	ELSE
	BEGIN
		IF isnull(ltrim(rtrim(@where)),'')=''
		BEGIN
			INSERT INTO #s
			(
				PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,
				ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,
				DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,
				ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			)
			SELECT DISTINCT top (@Top)
					PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,              
					Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,'-' AS RetroactionNo,Letter.RegistrationDate,'-' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                  
					Deliver.Title AS DeliverTitle,
					case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page, 
					dbo.has_WordPage(letter.LetterID) AS has_WordPage, 
					dbo.has_file(letter.LetterID) AS has_File,
																																	
					 Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,
					 at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,
					(SELECT top (1) a.Title FROM ArchiveFolder AS a INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,
					Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,dbo.HasLetterForms(Letter.Letterid) HasLetterForms,
					(SELECT top (1) a.FolderID FROM ArchiveFolder AS a 
					INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID
					 AND b.LetterID=Letter.LetterID) AS FolderID,Secretariats.SecTitle as SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
			FROM Letter
			INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID
			INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID
			LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID
			LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID
			LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type
			LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID
			WHERE Letter.Finalized=1 AND
				  ((Letter_Type=@Letter_Type) OR (@Letter_Type=0)) AND
				  ((Secretariatid=@SecretariatID) OR (@SecretariatID<=0)) AND
				  ((myear=@Myear) OR (@Myear<=0)) AND
				  ((Letter.LetterFormat=@LetterFormat) OR (@LetterFormat<=0)) AND
				  (letter.LetterID>=(SELECT ISNULL(MAX(letterID)-10000,0) FROM Letter)) 
			order by myear desc,letter.IndicatorID DESC,letter.letterid desc
		END
		ELSE
		BEGIN
			Set @sqlCommand='DECLARE @DO_ CHAR(10) SET @DO_ = dbo.ATF_PEY_SETTING (''ATF-PEY'')'+
			' INSERT INTO #s'+
			' ( '+
				'PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,'+
				'ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,'+
				'DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,'+
				'ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			')'+
			' SELECT DISTINCT top ('+CAST(@Top as varchar)+')' + 
					' PEY2,ATF2,PEY,ATF,Letter.LetterID,Letter.CenterNo, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO , Letter.FromOrgID,Letter.IncommingDate,'+
					'Letter.ToOrgID, Letter.UrgencyID, Letter.Memo,''-'' AS RetroactionNo,Letter.RegistrationDate,''-'' AS FollowLetterNo,Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,'+
					'Deliver.Title AS DeliverTitle,'+
					' case when exists(SELECT PageNumber FROM LetterData ld WHERE ld.LetterID=Letter.LetterID and extention in (1,2)) THEN 1 ELSE 0 END AS has_Page,'+
					' dbo.has_WordPage(letter.LetterID) AS has_WordPage, '+
					' dbo.has_file(letter.LetterID) AS has_File,'+
																																	   
					 'Letter.SubjectID, LetterTypes.Title LetterTypeTitle,Letter.LetterRecommites,ss.sendstatusTitle,dbo.InnerNo(Letter.LetterID,letter.letter_type),dbo.InnerNoForWord(Letter.LetterID),Letter.Archived,'+
					' at.ActionTypeTitle,Letter.SignerID, (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle,Letter.ReceiveTypeID ,Letter.ClassificationID,'+
					'(SELECT top (1)  a.Title FROM ArchiveFolder AS a 
					INNER JOIN LetterArchiveFolder AS b ON a.FolderID=b.ArchiveFolderID AND b.LetterID=Letter.LetterID) AS ArchivePlace,'+
					'Letter.SubjectDescription,dbo.has_sign(Letter.letterID) as has_sign ,
					dbo.HasLetterForms(Letter.Letterid) HasLetterForms,'+
					'(SELECT top (1)  a.FolderID FROM ArchiveFolder AS a 
					INNER JOIN LetterArchiveFolder AS b 
					ON a.FolderID=b.ArchiveFolderID 
					AND b.LetterID=Letter.LetterID) AS FolderID,Secretariats.SecTitle as SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork'+
			' FROM Letter 
			INNER JOIN sendstatus AS ss on ss.sendstatusID=Letter.sendstatusID INNER JOIN Secretariats on Secretariats.Secid=Letter.SecretariatID LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID'+
			' LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID'+
			' LEFT JOIN LetterTypes on LetterTypes.ID=Letter.Letter_type'+
			' LEFT JOIN ActionType AS at  ON at.ActionTypeID = Letter.LatestActionTypeID'+
			' WHERE Letter.Finalized=1 AND '+
				  '((Letter_Type='+CAST(@Letter_Type AS VARCHAR(5))+') OR ('+CAST(@Letter_Type AS VARCHAR(5))+'=0)) AND '+
				  '((Secretariatid='+CAST(@SecretariatID AS VARCHAR(5))+') OR ('+CAST(@SecretariatID AS VARCHAR(5))+'<=0)) AND '+
				 ' ((myear='+CAST(@Myear AS VARCHAR(5))+') OR ('+CAST(@Myear AS VARCHAR(5))+'<=0)) AND '+
				  '((Letter.LetterFormat='+CAST(@LetterFormat AS VARCHAR(5))+') OR ('+CAST(@LetterFormat AS VARCHAR(5))+'<=0))'+
				  ' And ' + @where + ' order by myear desc,letter.IndicatorID DESC,letter.letterid desc'


				  
			Exec Sp_ExecuteSql   @sqlCommand				  
		END
		IF @ArchiveFolderID>0
		BEGIN
			DELETE FROM #s WHERE ISNULL(FolderID,0)!=@ArchiveFolderID
		END
		
	END

    DECLARE @LID INT ,@ArchPlace VARCHAR(100),@AllArchPlace VARCHAR(400)
    DECLARE cr CURSOR FOR
    SELECT DISTINCT letterid FROM #s
    GROUP BY letterid
    HAVING COUNT(*)>1

    OPEN cr 

    FETCH NEXT FROM cr INTO @LID

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @AllArchPlace=''    
            DECLARE crin CURSOR FOR         
            SELECT ArchivePlace FROM #s WHERE letterid=@LID    
            OPEN crin 
            FETCH NEXT FROM crin INTO @ArchPlace    
            WHILE @@FETCH_STATUS = 0
            BEGIN
                SET @AllArchPlace=@AllArchPlace+' , '+@ArchPlace
                FETCH NEXT FROM crin INTO @ArchPlace
            END
            CLOSE crin
            DEALLOCATE crin        
        UPDATE #s
        SET ArchivePlace=@AllArchPlace
        WHERE letterid=@LID AND ArchivePlace=@ArchPlace
        
        DELETE FROM #s WHERE letterid=@LID AND ArchivePlace<>@AllArchPlace 
        
        FETCH NEXT FROM cr INTO @LID
    END
    CLOSE cr
    DEALLOCATE cr

	SELECT 
			PEY2,ATF2,PEY,ATF,LetterID,CenterNo,IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,FromOrgID,IncommingDate,
		   ToOrgID,UrgencyID,Memo,RetroactionNo,RegistrationDate,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,UserMemo,DeadLineDate,SenderTitle,
		   DeliverTitle,has_Page,has_WordPage,has_file,SubjectID,LetterTypeTitle,LetterRecommites,sendstatusTitle,InnerNo,InnerNoForWord,Archived,
		   ActionTypeTitle,SignerID,SignerTitle,ReceiveTypeID,ClassificationID,ArchivePlace,SubjectDescription,has_sign,HasLetterForms,FolderID,SecretariatTitle,EmailFromDateTime, EmailFrom, EmailSubject,IsNetWork
	FROM #s
    ORDER BY RegistrationDate DESC,letterid desc
GO
/****** Object:  StoredProcedure [dbo].[Get_All_LetterData_by_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_All_LetterData_by_LetterID](@LetterID int)
AS
	SELECT   letterid,LetterDataID, Ex.Extention, DESCRIPTION,IMAGE,IsTemplate
	FROM dbo.LetterData LD 
        inner join Extention Ex on LD.extention = Ex.ExtentionID
	WHERE  (LetterID = @LetterID)
GO
/****** Object:  StoredProcedure [dbo].[Get_ArchiveFolder_ByAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess] @userID int , @SecID INT ,@Order BIT=0
	AS
	SET @Order=ISNULL(@Order,0)
	declare  @ArchiveCenterID int

	SELECT @ArchiveCenterID=[ArchiveCenterID]
	  FROM  Secretariats
	where  SecID=@SecID

	IF @Order=0
		SELECT AF.*
		FROM ArchiveFolder AF
		Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID
		Where(UAA.SecID = @SecID)
		And(UAA.UserID = @userID)
		And(AF.ArchiveCenterID = @ArchiveCenterID)
		And(UAA.IsAccess = 1)

	ELSE
		SELECT AF.*
		FROM ArchiveFolder AF
		Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID
		Where(UAA.SecID = @SecID)
		And(UAA.UserID = @userID)
		 And(AF.ArchiveCenterID = @ArchiveCenterID)
		And(UAA.IsAccess = 1)
		ORDER BY Title	
GO
/****** Object:  StoredProcedure [dbo].[Get_ArchiveFolder_ByAccessAndTitle]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


Create PROCEDURE [dbo].[Get_ArchiveFolder_ByAccessAndTitle] @userID int , @SecID int ,@ArchiveCenterID int
,  @like nvarchar(100)
AS

if @ArchiveCenterID<0

SELECT AF.*
FROM ArchiveFolder AF
Where UserID = @userID
And(  Title like '%'+@like+'%' or AF.place like  '%'+@like+'%' )

else

SELECT AF.*
FROM ArchiveFolder AF
Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID
Where(UAA.SecID = @SecID)
And(UAA.UserID = @userID)
And(AF.ArchiveCenterID = @ArchiveCenterID)
And(UAA.IsAccess = 1)
And( AF.Title like '%'+@like+'%' or AF.place like  '%'+@like+'%' )

GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_ArchiveFolder_byUserID]
@userID int,@SecID int =0,@ArchiveCenterID int = -1, @DabirOrKartable int=0
AS
/*
* @DabirOrKartable=0 دبيرخانه
* @DabirOrKartable=1 کارتايل
* ArchiveCenterID=-1 براي کارتابل است چون براي کارتابل مرکز بايگاني معني ندارد
* ArchiveCenterID<>-1 براي دبيرخانه است و در حقيقت مخزن يا ظرفي است که زونکن ها داخل آن قرار ميگيرند
* */
 
	declare  @RSL table
	(FolderID int,ParentFolderID int,Title nvarchar(100),UserID int,Notes nvarchar(500),Place nvarchar(100),ArchiveCenterID int)

	IF (@DabirOrKartable=1)
	BEGIN
		-- کارتابل
			INSERT INTO @RSL
			SELECT      *
				FROM         ArchiveFolder
				WHERE     (UserID = @userID) AND (ArchiveCenterID=-1)			

			update @RSL 
				set Title='بايگاني'
				where Title='بايگاني'		
	END
	ELSE
	BEGIN
	   -- دبيرخانه	
			INSERT INTO @RSL
			SELECT AF.*	
				FROM ArchiveFolder AF
					Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID
				Where(UAA.SecID = @SecID)
					And(UAA.UserID = @userID)
					And(AF.ArchiveCenterID = @ArchiveCenterID)
					And(UAA.IsAccess = 1)   
	END	

	SELECT * FROM @RSL
GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID_and_Letterid]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




Create PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Letterid]
@Letterid int,@userid int,@ArchiveCenterID int
AS

if @ArchiveCenterID<0
SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFolder.Place,users.Title usertitle
FROM         LetterArchiveFolder
INNER JOIN   ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
left join users on users.id=LetterArchiveFolder.userID
WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archivefolder.userid=@userid

else
SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFolder.Place,users.Title usertitle
FROM         LetterArchiveFolder
INNER JOIN   ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
left join users on users.id=LetterArchiveFolder.userID
WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archivefolder.ArchiveCenterID=@ArchiveCenterID





GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID_and_Place]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




Create  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Place]
@userID int,@Place nvarchar(100),@FolderID int output,@ArchiveCenterID int
AS
if @ArchiveCenterID<0
SELECT      top 1 @FolderID=FolderID
FROM         ArchiveFolder
WHERE     (UserID = @userID)  and (Place=@Place)
else
SELECT      top 1 @FolderID=FolderID
FROM         ArchiveFolder
WHERE     (ArchiveCenterID=@ArchiveCenterID)  and (Place=@Place)



GO
/****** Object:  StoredProcedure [dbo].[get_ArchiveFolder_byUserID_and_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Title]
@userID int,@like nvarchar(100),@ArchiveCenterID int
AS
if @ArchiveCenterID<0
SELECT      *
FROM         ArchiveFolder
WHERE     (UserID = @userID)  and ( title like '%'+@like+'%' or place like  '%'+@like+'%' )
			AND (ArchiveCenterID = @ArchiveCenterID)

else

SELECT      *
FROM         ArchiveFolder
WHERE     (ArchiveCenterID = @ArchiveCenterID)  and ( title like '%'+@like+'%' or place like  '%'+@like+'%' )


GO
/****** Object:  StoredProcedure [dbo].[Get_DatabaseName_By_Year]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_DatabaseName_By_Year]
@myear int,@dbName varchar(50) output
as
	set @dbName='Nothing'
	if @myear>=86   
		set @dbName='ydabir' 
	else  
		set @dbName='ahwaz'
GO
/****** Object:  StoredProcedure [dbo].[get_DayID_InWeek]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[get_DayID_InWeek]
	(@DayID tinyint output)
AS 
SET DATEFIRST 6
select @DayID=datepart(dw,getdate())-1


GO
/****** Object:  StoredProcedure [dbo].[get_DestinationOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[get_DestinationOrgID](@DestinationServerIP varchar(30),@DestinationServerDB varchar(50),@DestinationSecID 
int,@DestinationOrgID int output)
as

SELECT     @DestinationOrgID=DestinationOrgID_inSource
FROM         RelatedSecretariats
WHERE     (DestinationServerIP = @DestinationServerIP) AND (DestinationServerDB = @DestinationServerDB) and DestinationSecID=@DestinationSecID



GO
/****** Object:  StoredProcedure [dbo].[Get_DraftLetter_‍Count]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_DraftLetter_‍Count] @Myear int,@SecretariatID int,@UserID int ,@Count int output    
AS  

	Declare @HasSecureLetterAccess Tinyint
	Select @HasSecureLetterAccess = HasSecureLetterAccess From Users Where ID = @UserID   --1=كاربر دبيرخانه

	Select @Count = Count(*)  
		from Letter  
		where Myear=@Myear 
			And letterformat=2 /*پيشنويس*/
			And SecretariatID=@SecretariatID
			And Finalized=1
	--Ranjbar اگر كاربر دبيرخانه بود همه پيش نويس ها را مشاهده كند در غير اينصورت فقط پيش نويس هاي ثبت شده توسط كاربر  
			And (@HasSecureLetterAccess = 1 or UserID=@UserID)

	Set @Count=IsNull(@Count,0)
GO
/****** Object:  StoredProcedure [dbo].[Get_DraftReceivedLetter_count]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_DraftReceivedLetter_count]
@Myear int,@secretariatid int ,@count int output

AS
	select @count=count(*)
		from letter
		where Myear=@Myear 
			and letter_type=1 
			and letterformat=2 
			and secretariatid=@secretariatid

	set @count=isnull(@Count,0)
GO
/****** Object:  StoredProcedure [dbo].[Get_FieldValue_by_LetterID_FieldID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  procedure [dbo].[Get_FieldValue_by_LetterID_FieldID]
@LetterID int,@FieldID int ,@fieldValue nvarchar(2000) output
as
SELECT  @fieldValue=LetterFieldValue.FieldValue
FROM         LetterFieldValue
WHERE letterid=@LetterID
 and FieldID=@FieldID

set @fieldValue=isnull(@fieldValue,'')

 
GO
/****** Object:  StoredProcedure [dbo].[Get_FieldValues_by_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[Get_FieldValues_by_LetterID]
@LetterID int,@UserID int,@FormOrder tinyint
as
SELECT  LetterFieldValue.*,Fields.[order],
Fields.[Description],Fields.FieldTypeID,Fields.ReferenceTableID,
isnull(FieldAccess.AccessTypeID,1) AccessTypeID
FROM         LetterFieldValue
left join  Fields on Fields.ID = LetterFieldValue.FieldID
left join   FieldAccess on FieldAccess.FieldID=Fields.ID
WHERE    FormOrder = @FormOrder and LetterFieldValue.letterid=@LetterID
 and FieldAccess.UserID=@userID
ORDER BY Fields.[order]











GO
/****** Object:  StoredProcedure [dbo].[Get_FollowUP_Count]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Get_FollowUP_Count](@UserID int ,@BDate char(10), @Edate char(10),
@DonStatusID int,@Count int output)
as

SELECT     @Count=Count(*)
FROM  FollowUp
WHERE
    (@UserID = 0 or FollowUp.UserID = @UserID) AND
    (FollowUp.ToDoDate between  @BDate and @Edate)
and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)

set @Count=isnull(@Count,0)

GO
/****** Object:  StoredProcedure [dbo].[get_FormFields]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create procedure [dbo].[get_FormFields] @FormID int
	AS
	begin
		select *
		From  Fields F inner join FieldType FT on F.FieldTypeID = FT.FieldTypeID
		where TableId=@FormID
		order by [order]
	end
GO
/****** Object:  StoredProcedure [dbo].[get_Forms]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create procedure [dbo].[get_Forms]
	AS
	begin
		select T.TableId,T.Description,COUNT(F.ID) as FieldsCount
		From Tables T inner join Fields F on T.TableId = F.TableID
		where TableType=3 group by T.TableId,t.Description	
	end

GO
/****** Object:  StoredProcedure [dbo].[Get_FromOrganizations_ByCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_FromOrganizations_ByCode] @Code nvarchar(10),@ID int output , @ResponsibleStaffer nvarchar(50) output
AS

select top 1 @ID= ID,@ResponsibleStaffer=ResponsibleStaffer
from dbo.FromOrganizations
WHERE 	Code	 = @Code and isactive=1

set @id=isnull(@id,0)
set @ResponsibleStaffer=isnull(@ResponsibleStaffer,'')


GO
/****** Object:  StoredProcedure [dbo].[Get_FromOrganizationsID_ByCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_FromOrganizationsID_ByCode] @Code nvarchar(10),@ID int output
AS

select top 1 @ID= ID
from dbo.FromOrganizations
WHERE 	Code	 = @Code and isactive=1

set @id=isnull(@id,0)

GO
/****** Object:  StoredProcedure [dbo].[Get_FromOrganizationsTitle_ByID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
 
if @ResponsibleStaffer is null
   Set @ResponsibleStaffer = '' --'بدون مسئول'  
----

GO
/****** Object:  StoredProcedure [dbo].[get_indicatorID_BySentLetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_innerLetterMemo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_innerLetterMemo]
@Letterid int,@memo nvarchar(500) output ,@is_Inner bit output
as
SELECT     @is_Inner= case when Letter_Type=3 then 1 else 0 end, @Memo=Memo
FROM         Letter
WHERE     (LetterID = @Letterid)
set @Memo =isnull(@Memo,'')
set @is_Inner=isnull(@is_Inner,0)
GO
/****** Object:  StoredProcedure [dbo].[get_InnerOrganizations]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_InnerOrganizations]
 @FromOrgID int = NULL
as

	DECLARE @AccessID int

	SELECT @AccessID = AccessID 
		FROM users
		WHERE (ISNULL(FromOrgID,0) in (SELECT ID 
							FROM dbo.FromOrganizations
							WHERE id = @FromOrgID
						 )
			   OR 
				ISNULL(SecondOrgID,0) in (SELECT ID 
									FROM dbo.FromOrganizations
									WHERE id = @FromOrgID
								 )
			   OR 
				ISNULL(TreeOrgID,0) in (SELECT ID 
									FROM dbo.FromOrganizations
									WHERE id = @FromOrgID
								 )
			   OR 
				ISNULL(FourOrgID,0) in (SELECT ID 
									FROM dbo.FromOrganizations
									WHERE id = @FromOrgID
								 )
			   OR 
				ISNULL(FiveOrgID,0) in (SELECT ID 
									FROM dbo.FromOrganizations
									WHERE id = @FromOrgID
								 )
			  )
		AND Active = 1


	IF @AccessID = 1 
	  SET @FromOrgID = NULL

	IF @FromOrgID IS NULL
		SELECT *,Title+'-'+ResponsibleStaffer AS Name_Semat 
			FROM dbo.FromOrganizations
			where IsInnerOrg=1 and isactive=1
			order by isactive desc
	ELSE
		SELECT *,Title+'-'+ResponsibleStaffer AS Name_Semat 
			FROM dbo.FromOrganizations_fn(@FromOrgID)
			where IsInnerOrg=1 and isactive=1
			order by isactive desc
GO
/****** Object:  StoredProcedure [dbo].[Get_LastIndicatorID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[Get_LastIndicatorID]
(
	@letter_type Tinyint,
	@SecretariatID int,
	@Myear int,
	@LetterFormat Tinyint,
	@newIndicatorid int Output
)      
As  
  
	Declare @RecivedInd int, @SentInd  int, @InnerInd int, @DocInd int      
	Declare @UniqueIndSec int, @UniqueIndSecID int
	Declare @TempIndicatorID int
	Declare @BeginIndicator int
	Declare @UniqeIndicator int
	
	If (OBJECT_ID('tempdb..#Ind') Is Not Null)
	Begin
		Drop Table #Ind
	End

	/*منحصر بفرد بون شماره انديكاتور براي تمامي دبيرخانه ها*/
	Set @UniqueIndSec = dbo.GetSystemValue('UniqueIndSec')

		Select IsNull(Max(indicatorID), 0) + 1 Ind, letter_type Into #Ind
				From Letter with (NOLOCK)
				Where myear = @myear 
					And LetterFormat = @LetterFormat
					And (SecretariatID = @SecretariatID Or @UniqueIndSec <> 0)
				Group By letter_type

		Set @RecivedInd = IsNull((Select Ind From #Ind Where letter_type = 1), 1)
		Set @SentInd = IsNull((Select Ind From #Ind Where letter_type = 2), 1)
		Set @innerind = IsNull((Select Ind From #Ind Where letter_type = 3), 1)
		Set @DocInd = IsNull((Select Ind From #Ind Where letter_type = 4), 1)

/*
	if @UniqueIndSec = 0  /* -1= Active , 0= InActive */   
	begin
	   /*آخرين مقدار نامه هاي داخلي*/ 
	   Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
			  And SecretariatID=@SecretariatID and letter_type=1       

	   /*آخرين مقدار نامه هاي صادره*/
	   Select @SentInd=isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
			  And SecretariatID=@SecretariatID and letter_type=2

	   /*آخرين مقدار نامه هاي داخلي*/
	   Select @innerind=isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
			  And SecretariatID=@SecretariatID and letter_type=3

	   /*آخرين مقدار نامه هاي مدارك*/  
	   Select @DocInd=isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
			  And SecretariatID=@SecretariatID and letter_type=4
	end
	else
	begin    
		  /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
		  Select @RecivedInd = isnull(Max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
					And letter_type=1       

		  /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
		  Select @SentInd = isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear And LetterFormat=@LetterFormat      
					And letter_type=2

		  /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
		  Select @innerind = isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
				 and letter_type=3       

		  /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
		  Select @DocInd = isnull(max(indicatorID),0)+1 from Letter with (NOLOCK) where myear=@myear and LetterFormat=@LetterFormat      
				and letter_type=4       
	end  
	*/	
	
	
	Set @BeginIndicator = dbo.GetSystemValue('BeginIndicator')
	/*تنظيمات - شروع ش انديكاتور براي نامه هاي وارده*/      
	if @RecivedInd < @BeginIndicator
	   set  @RecivedInd = @BeginIndicator
		  
	/*تنظيمات - شروع ش انديكاتور براي نامه هاي صادره*/          
	if @SentInd < @BeginIndicator
	   set  @SentInd = @BeginIndicator
		 
	/*تنظيمات - شروع ش انديكاتور براي نامه هاي داخلي*/              
	if @innerind < @BeginIndicator
	   set @innerind = @BeginIndicator
	
	/*نامه داخلي*/      
	if @letter_type=3       
	begin      
	  set @newIndicatorid=@innerind      
	  return 
	end      
	  
	/*نامه مدارك*/    
	if @letter_type=4       
	begin      
	  set @newIndicatorid=@DocInd      
	  return      
	end      
	
	Set @UniqeIndicator = dbo.GetSystemValue('UniqeIndicator')
	/*شماره نامه وارده و صادره پيوسته باشد*/      
	if @UniqeIndicator = 0
	begin      
	   if @SentInd > @RecivedInd      
		  set @newIndicatorid = @SentInd      
	   else      
		  set @newIndicatorid = @RecivedInd  
	   
	   /*if (@InnerInd > @newIndicatorid )
		 set @newIndicatorid = @InnerInd
	   if (@InnerInd < @newIndicatorid ) 
		 set @newIndicatorid = @newIndicatorid */
	end      
	  
	/*شماره نامه وارده و صادره مجزا و سريال باشد*/      
	if @UniqeIndicator = 1
	begin      
	   if @letter_type=1      
		  set @newIndicatorid=@RecivedInd      
	   if @letter_type=2      
		  set @newIndicatorid=@SentInd      
	end      
	  
	/*شماره نامه هاي صادره زوج  و وارده فرد باشد*/      
	if  @UniqeIndicator = 2
	begin      
	   if @letter_type=2      
		  set @newIndicatorid = 2 * (1 + (@SentInd-1)/2)      
		  
	   if @letter_type=1      
		  set @newIndicatorid = 2  * (1 + (@RecivedInd-1)/2)+1      
	end      
	  
	/*شماره نامه هاي صادره فرد  و وارده زوج باشد*/      
	if @UniqeIndicator = 3
	begin      
	   if @letter_type = 1      
		  set @newIndicatorid = 2 * (1 + (@RecivedInd-1)/2)      
		  
	   if @letter_type=2      
		  set @newIndicatorid = 2 * ( 1 + (@SentInd -1)/2)+1      
	end

GO
/****** Object:  StoredProcedure [dbo].[Get_LastUserId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_LastUserId](@id int output)
as
SELECT     @id=MAX(Id)
FROM         Users




GO
/****** Object:  StoredProcedure [dbo].[Get_Letter_By_UserMemo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_Letter_By_UserMemo]
@UserMemo nvarchar(255),@Letter_Type tinyint
as
SELECT   Letter.LetterID,letter.Letter_Type, Letter.IndicatorID, Letter.MYear, Secretariats.SecTitle, LetterTypes.Title AS LetterType, Letter.IncommingNO,
                      Letter.Incommingdate, Letter.Memo, Letter.AttachTitle, Letter.RetroactionNo, Letter.UserMemo, Letter.RegistrationDate, 
Letter.FollowLetterNo, 
                      Letter.SubjectDescription, Subject.SubjectTitle, Classifications.Title AS ClassificationTitle, FromOrganizations_1.Title AS FromTitle, 
                      FromOrganizations.Title AS ToTitle
FROM         Letter INNER JOIN
                      Secretariats ON Letter.SecretariatID = Secretariats.SecID INNER JOIN
                      LetterTypes ON Letter.Letter_Type = LetterTypes.ID INNER JOIN
                      FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID INNER JOIN
                      FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID INNER JOIN
                      Classifications ON Letter.ClassificationID = Classifications.ID LEFT OUTER JOIN
                      Subject ON Letter.SubjectID = Subject.SubjectID
WHERE     (Letter_Type=@Letter_Type or @Letter_Type=0) and (Letter.UserMemo like '%'+@UserMemo+'%')  
/*union
SELECT   Letter.LetterID,letter.Letter_Type, Letter.IndicatorID, Letter.MYear, Secretariats.SecTitle, LetterTypes.Title AS LetterType, Letter.IncommingNO,
                      Letter.Incommingdate, Letter.Memo, Letter.AttachTitle, Letter.RetroactionNo, Letter.UserMemo, Letter.RegistrationDate, 
Letter.FollowLetterNo, 
                      Letter.SubjectDescription, Subject.SubjectTitle, Classifications.Title AS ClassificationTitle, FromOrganizations_1.Title AS FromTitle, 
                      FromOrganizations.Title AS ToTitle
FROM         Letter INNER JOIN
                      Secretariats ON Letter.SecretariatID = Secretariats.SecID INNER JOIN
                      LetterTypes ON Letter.Letter_Type = LetterTypes.ID INNER JOIN
                      FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID INNER JOIN
                      FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID INNER JOIN
                      Classifications ON Letter.ClassificationID = Classifications.ID LEFT OUTER JOIN
                      Subject ON Letter.SubjectID = Subject.SubjectID
WHERE     usermemo like '%-%' and 
@usermemo between ltrim(rtrim(substring(UserMemo,1,charindex('-',usermemo)-1))) and  ltrim(rtrim(substring(UserMemo,charindex('-',usermemo)+1,100)))
and (Letter_Type=@Letter_Type or @Letter_Type=0) 
*/

GO
/****** Object:  StoredProcedure [dbo].[get_Letter_ByIndicator]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_Letter_ByIndicator]
	(@IndicatorID 	int,
	 @MYear 		int,
	 @SecretariatID 	tinyint,
	 @Letter_Type 	tinyint,
	 @letterformat 	tinyint)

AS 
	SELECT     	FromOrganizations.Title AS FromorgTitle, 
				FromOrganizations_1.Title AS ToorgTitle,
				Letter.LetterID, 
				Letter.IncommingNO, 
				Letter.Incommingdate,
				Letter.Memo, 
				Letter.RegistrationDate
		FROM	Letter 
			INNER JOIN  FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID 
			INNER JOIN  FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID
		WHERE ([IndicatorID] = @IndicatorID 
			AND [MYear] = @MYear 
			AND [SecretariatID] = @SecretariatID 
			AND [Letter_Type] = @Letter_Type 
			AND [letterformat] = @letterformat)
GO
/****** Object:  StoredProcedure [dbo].[Get_Letter_PDF]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







create procedure [dbo].[Get_Letter_PDF](@LetterID int)
as
select top 1 *
from  letterdata
where LetterID=@LetterID  
and Extention=5




 

GO
/****** Object:  StoredProcedure [dbo].[get_letter_To_Transfer]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[get_letter_To_Transfer]
@fromSecID int,
@ToSecID int,
@FromDate char(10),
--@SentLetters bit,
--@all_letters bit,
@maxSize int
as

/*
if @all_letters=1 and @SentLetters=1 

SELECT   l.*,1 SentType 
FROM ReCommites RC 
INNER JOIN Letter l ON RC.LetterID = L.LetterID
where l.SecretariatID=@FromSecID  and Registrationdate >=@FromDate AND (Rc.Proceeded = 0) and 
Rc.OrgID in (
select orgid 
from UserSecretariats 
INNER JOIN  Users ON UserSecretariats.UserId = Users.Id
WHERE     (UserSecretariats.SecId = @ToSecID) AND (Users.DefualtSecretariatID = @fromSecID))

union

select  l.*,2 SentType 
from Letter l
where SecretariatID=@ToSecID and letterFormat=2 and letter_type=1 and  sendstatus=3
and Registrationdate >=@FromDate  

else

if @all_letters=1  AND @SentLetters=0


SELECT   l.*,1 SentType 
FROM ReCommites RC 
INNER JOIN Letter l ON RC.LetterID = L.LetterID
where l.SecretariatID=@FromSecID  and Registrationdate >=@FromDate AND (Rc.Proceeded = 0) and 
Rc.OrgID in (
select orgid 
from UserSecretariats 
INNER JOIN  Users ON UserSecretariats.UserId = Users.Id
WHERE     (UserSecretariats.SecId = @ToSecID) AND (Users.DefualtSecretariatID = @fromSecID))



if  @SentLetters=1 AND @all_letters=0*/

select  l.*,2 SentType 
from Letter l
where SecretariatID=@ToSecID and letterFormat=2 and letter_type=1 and  sendstatusid=2
and Registrationdate >=@FromDate  













GO
/****** Object:  StoredProcedure [dbo].[Get_LetterAbstract]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Get_LetterAbstract]
	@LetterID int

AS
SELECT     IndicatorID, IncommingNO, Incommingdate, RegistrationDate, Memo
FROM         Letter
WHERE 
	LetterID=@LetterID






GO
/****** Object:  StoredProcedure [dbo].[Get_LetterAction_By_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_LetterAction_By_LetterID]
	@LetterID int
AS
BEGIN
	SET NOCOUNT ON;
SELECT     LetterID, LatestActionTypeID, LatestActionReason
FROM         Letter
WHERE     (LetterID = @LetterID)
END


GO
/****** Object:  StoredProcedure [dbo].[Get_LetterAttachment]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_LetterAttachment]
@letterID int 
as

	SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
		FROM       LetterData 
			INNER JOIN  Extention ON LetterData.extention = Extention.ExtentionID
		WHERE LetterID=@LetterID
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterData_by_LetterDataID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_LetterData_by_LetterDataID](@LetterDataID int )
as
SELECT   LetterDataID, Image, LetterData.VersionNo, LetterData.VersionDate,IsTemplate
FROM   dbo.LetterData
WHERE   (LetterDataID = @LetterDataID)
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterData_by_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_LetterData_by_LetterID](@LetterID int)
as
SELECT   letterid,LetterDataID, LetterData.Extention, DESCRIPTION, LetterData.VersionNo, LetterData.VersionDate,          LetterData.archiveID, isDocument,IsTemplate
FROM  dbo.LetterData 
left JOIN  dbo.Extention ON LetterData.extention = Extention.ExtentionID
WHERE     (Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID)
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterData_by_LetterID_ECE]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Get_LetterData_by_LetterID_ECE](@LetterID int)
AS
SELECT      letterid,LetterDataID, Extention, DESCRIPTION
FROM LetterData 
WHERE  (LetterID = @LetterID) AND (extention<>3)
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterdataExtention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Get_LetterdataExtention](@LetterID int,@result tinyint output)
as 
set @result=0
SELECT     top 1 @result=extention
FROM         LetterData
WHERE     LetterID=@LetterID and extention in (1,2)

GO
/****** Object:  StoredProcedure [dbo].[Get_LetterDataIDs]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_LetterDataIDs](@SecretariatID int, @myear int)
as
	SELECT     LetterData.LetterDataID  
	FROM         LetterData 
		INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID
	WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MYear = @myear)
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterFormSigners]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_LetterFormSigners]
	@FormID INT=0
AS
	SELECT LetterFormSigners.*,Users.Title + ISNULL(' - '+FromOrganizations.Title,'')AS title
	FROM 
		LetterFormSigners 
		INNER JOIN Users ON Users.Id = LetterFormSigners.signerUserID
		LEFT JOIN FromOrganizations ON FromOrganizations.ID = Users.FromOrgID
	WHERE letterFormID = @FormID
GO
/****** Object:  StoredProcedure [dbo].[Get_letterHistory_by_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Get_letterHistory_by_LetterID](@LetterID int )
as 
declare @MainLetterID int

select @MainLetterID=MainLetterID
from letterRelation
where SubLetterid=@letterid

select 
     Letter.LetterID, Secretariats.secTitle,Letter.IndicatorID,  Letter.IncommingNO,Letter.IncommingDate,  Letter.Memo, sender.Title AS SenderTitle, 
                      Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites,registrationdate,CenterNo,CenterDate
from letterRelation
 inner join letter on letter.letterid=letterRelation.subletterid
 left  JOIN           FromOrganizations sender ON Letter.ToOrgID = sender.ID
left JOIN     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
inner join Secretariats on Secretariats.Secid=Letter.SecretariatID
where MainLetterID=@MainLetterID



GO
/****** Object:  StoredProcedure [dbo].[get_LetterID_ByInCommingNo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_LetterID_ByInCommingNo]
	(@InCommingNo nvarchar(50),@Myear int,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
	set @letterid=0

	SELECT     top 1 @LetterID=LetterID
		FROM         Letter
		WHERE     InCommingNo =@InCommingNo 
			and LetterFormat=@LetterFormat  and Myear = @Myear 
			and (SecretariatID=@SecretariatID or @SecretariatID=0)
		Order by Myear DESC
GO
/****** Object:  StoredProcedure [dbo].[get_LetterID_ByIndicatorid]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_LetterID_ByIndicatorid]
	(@indicatrid int,@Myear int,@LetterFormat tinyint,@letter_type tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
	Set @letterID=0
	SELECT    top 1 @LetterID=LetterID
	FROM letter
	WHERE (indicatorid=@indicatrid  or @indicatrid=0) 
		and (LetterFormat=@LetterFormat or @letterFormat=0)  
		and (letter_type=@letter_type  or @letter_type=0) 
		and (SecretariatID=@SecretariatID or @secretariatid=0)
		and (Myear=@Myear or @myear=0)
	ORDER BY Myear DESC
GO
/****** Object:  StoredProcedure [dbo].[get_LetterID_ByRetroActionNo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_LetterID_ByRetroActionNo]
	(@RetroActionNo nvarchar(50),@Myear int,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
	Set @letterid=0
	Select     top 1 @LetterID=LetterID
		From         Letter
		Where (RetroActionNo =@RetroActionNo)
			and myear=@Myear  
			and LetterFormat=@LetterFormat  
			and (SecretariatID=@SecretariatID or @SecretariatID=0)
GO
/****** Object:  StoredProcedure [dbo].[Get_LetterJpgFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------
-----------------------------------------------------------------
CREATE procedure [dbo].[Get_LetterJpgFile](@LetterID int)
as  
Select *
from letterdata  
where LetterID = @LetterID  /* and PageNumber= @pagenumber  */
And Extention IN (1,2) 
GO
/****** Object:  StoredProcedure [dbo].[get_LetterMemo_ByID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_LetterTifFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_LetterWordFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create  PROCEDURE [dbo].[Get_LetterWordFile]
(
	@Ext		int,
	@LetterID	int
) AS
BEGIN
SELECT     *
FROM         LetterData
WHERE     (extention = @Ext) AND (LetterID = @LetterID)
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LifeTip_byUserid]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_LifeTip_byUserid](@Userid int,@lifeTip nvarchar(255) output)

as
declare @DayofYear int,@dw int, @n int,@u int,@j int,@k int,@lifeTipID int


exec get_DayID_InWeek @dw output
if @dw=6
 begin
  set @lifeTip=''
  return
 end


set @DayofYear=6*(datepart(dy,getdate())/7)+@dw

select @n=count(*) from LifeTips
select @u=10--count(*) from users
select @j=count(*) from users where id<=@userid

set @k=@n/@u
set @lifeTipID= (((@DayofYear+@j)%(@k+1))*@u+@DayofYear%@u+1)%@n+1

select  @lifeTip=Title from Lifetips where id=@lifeTipID

GO
/****** Object:  StoredProcedure [dbo].[get_MaxPage_ByLetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[get_MaxReferenceDataID_By_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[get_NewOrgCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_NewOrgCode]
	(@ParentID [int] ,@newCode nvarchar(50) output)
AS 
	declare @ParentCode nvarchar(50),@maxCode Nvarchar(50)

	select @ParentCode=Code from Fromorganizations where id=@Parentid
	select @maxCode=max(code) from  Fromorganizations where Parentid=@Parentid

	DECLARE @Found BIT
	SET @Found = 0
	WHILE @Found = 0
	BEGIN
		if @maxCode is not null and isnumeric(@maxcode)=1
			set @newCode=cast(cast(@maxcode as int)+1 as nvarchar(50))
		ELSE
			set @newCode=@parentCode+'01'
			
		IF not EXISTS(SELECT ID FROM FromOrganizations WHERE CODE = @newCode)
			SET @Found = 1
		ELSE
			SET @maxCode = cast((cast(IsNull(@maxCode, '0') AS INT) + 1) AS VARCHAR(50))
	END

	set @newcode=Replace(ltrim(rtrim(@newCode)),' ','0')
GO
/****** Object:  StoredProcedure [dbo].[get_NewOrgID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[get_NewOrgID]
	(@isInner bit, @NewID [int] output)
AS
 if @isInner =1
 select @NewID=isnull(max(CAST(CODE AS float)),0)+1  from  FromOrganizations
WHERE ISNUMERIC(CODE)=1
 and replace(code,' ','') not in ('.','-')
else set @newID=99999


GO
/****** Object:  StoredProcedure [dbo].[get_Nowdate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE procedure [dbo].[get_Nowdate](@date datetime output )
as
select @date=getdate()
GO
/****** Object:  StoredProcedure [dbo].[get_NowTime]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[get_NowTime] (@time char(5)output)
as
select @time=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))






 

GO
/****** Object:  StoredProcedure [dbo].[get_OrgPreCodeByID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[get_OrgPreCodeByID]
	(@ID 	[int],@PreCode nvarchar(50) output)

AS 
select @PreCode=PreCode
 from FromOrganizations
 WHERE ( [ID]	 = @ID)



 

GO
/****** Object:  StoredProcedure [dbo].[get_OrgTitleByID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_OrgTitleByID]
(
	@ID		Int,
	@title	Nvarchar(250) output
)

As
	Select @title=title
		From FromOrganizations
		Where [ID]=@ID
GO
/****** Object:  StoredProcedure [dbo].[Get_RecommiteJpgFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_RecommitePayvast_by_RecommiteID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_RecommitePayvast_by_RecommiteID](@RecommiteID INT)
AS
BEGIN
	SELECT      RecommiteID,LetterID,ID, RecommitePayvast.Extention, description, RecommitePayvast.VersionNo, RecommitePayvast.VersionDate
	FROM RecommitePayvast
	LEFT JOIN Extention ON RecommitePayvast.extention = Extention.ExtentionID
	WHERE     (Extention.IsSystem = 0) AND (RecommitePayvast.RecommiteID = @RecommiteID)
	END
GO
/****** Object:  StoredProcedure [dbo].[Get_RecommitePayvast_by_RecommitePayvastID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_RecommitePayvast_by_RecommitePayvastID] 
	@RecommitePayvastID int
AS
BEGIN
	SELECT     ID, Image, RecommitePayvast.VersionNo, RecommitePayvast.VersionDate
	FROM       RecommitePayvast
	WHERE     (ID = @RecommitePayvastID)
END
GO
/****** Object:  StoredProcedure [dbo].[get_ReferenceTable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[get_ReferenceTableData_by_tableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_Related_Letters]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[get_Subject]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






create procedure [dbo].[get_Subject]
@like  nvarchar(100)
as
SELECT     *
FROM         Subject
WHERE    subjectTitle like '%'+@like+'%'


GO
/****** Object:  StoredProcedure [dbo].[Get_sys_AppMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






create PROCEDURE [dbo].[Get_sys_AppMessage]
	(@ID 	[int])

AS select * from  [dbo].[sys_AppMessage]

WHERE 
	( [ID]	 = @ID)



 

GO
/****** Object:  StoredProcedure [dbo].[Get_tmp_LetterDataIDs]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE proc [dbo].[Get_tmp_LetterDataIDs]
as
SELECT     LetterDataID  
FROM         yeganeh_tmp_db.dbo.LetterData



GO
/****** Object:  StoredProcedure [dbo].[get_UserExtention_by_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[get_UserExtention_by_UserID] (@userID int )
as

SELECT UserExtention.*
FROM   UserExtention
WHERE (UserId = @UserId)
      and extentionid in (SELECT ExtentionID FROM Extention WHERE IsSystem = 0)








GO
/****** Object:  StoredProcedure [dbo].[get_userfields_by_tableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_UserMessageCount]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------
----------------------------------
CREATE  procedure [dbo].[Get_UserMessageCount](@to int,@count int output)
as
SELECT   @count=  COUNT(*) 
FROM         UserMessage
WHERE     (To_ = @to) and status=1 AND IsForSender = 0
GO
/****** Object:  StoredProcedure [dbo].[Get_UserSecretariat_Tree]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE proc [dbo].[Get_UserSecretariat_Tree] @userid int
as
Declare @aCount int
CREATE TABLE dbo.#M
	(ID int NOT NULL IDENTITY (0, 1),
	SecID int NULL,
	Title nVarchar(100) NULL,
	ParentID int NULL,
	Proceed bit NULL ,
        Tag int NULL )  ON [PRIMARY]
insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select 0 as SecID , 'کارتابل' as Title ,-1 as ParentID ,0 as Proceed , 1 as Tag

insert into #m(SecID , Title , ParentID , Proceed,Tag)
Select SecID , SecTitle as Title ,0 as ParentID,0 as Proceed ,  10 as Tag
From Secretariats
where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId = @userid)

Select @aCount = Count(SecID)+1
From Secretariats
where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId = @userid)

insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select 0 as SecID , 'ارسالهاي بايگاني نشده' as Title ,-1 as ParentID ,1 as Proceed , 2 as Tag

Set @aCount = @aCount+1
insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select 0 as SecID , 'تمامي ارسال شده ها' as Title ,-1 as ParentID ,1 as Proceed , 3 as Tag

insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select SecID , SecTitle as Title ,@aCount as ParentID , 1 as Proceed , 30 as Tag
From Secretariats  
where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId = @userid)

Select ID , SecID , LTrim(RTrim(Title))as Title , ParentID , Proceed , Tag 
from #M
Order by ID



GO
/****** Object:  StoredProcedure [dbo].[get_userTable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



create procedure [dbo].[get_userTable]
@like  nvarchar(100)
as
SELECT     Tables.*
FROM         Tables
WHERE     (TableType = 3) and description like '%'+@like+'%'

 

GO
/****** Object:  StoredProcedure [dbo].[get_userTable_by_UserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[get_userTable_by_UserID]
	@userID INT=0,
	@like  nvarchar(100)=''
AS
	SELECT Tables.*,UserTable.hasAccess,UserTable.HasDelete
		FROM Tables 
			LEFT JOIN UserTable ON Tables.TableId = UserTable.tableID
		WHERE (TableType = 3) AND (hasAccess=1) AND (UserTable.userID=@userID) and description like '%'+@like+'%'
GO
/****** Object:  StoredProcedure [dbo].[GetCheckCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE Procedure [dbo].[GetCheckCode]
@L int,@CheckCode char(3) out
 
as

declare @s varchar(8),@a1 int,@a2 int,@a3 int,@a4 int,@a5 int,@a6 int,@a7 int,@a8 int

set @s=cast(@l as varchar(8))

 while len(@s)<8
   set @s='0'+@s

set @a1=cast(substring(@s,1,1) as int)
set @a2=cast(substring(@s,2,1) as int)
set @a3=cast(substring(@s,3,1) as int)
set @a4=cast(substring(@s,4,1) as int)
set @a5=cast(substring(@s,5,1) as int)
set @a6=cast(substring(@s,6,1) as int)
set @a7=cast(substring(@s,7,1) as int)
set @a8=cast(substring(@s,8,1) as int)

set @CheckCode=cast(100+@a8+(@a4+@a5+8)*(@a3+@a6+3)*(@a2+@a7+5)*(@a1+@a8+7)%900 as char(3))
GO
/****** Object:  StoredProcedure [dbo].[GetChildsArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create procedure [dbo].[GetChildsArchiveFolder](@FolderId INT )
	AS
	BEGIN
	DECLARE 
		
		@StrOut VARCHAR(max)='',	
		@StrOut1 VARCHAR(max);

	with tbsons as
	(
	  select * from ArchiveFolder where FolderID=@FolderId
	  union all
	  select ArchiveFolder.*  from ArchiveFolder  join tbsons  on ArchiveFolder.ParentFolderID=tbsons.FolderID
	)SELECT @StrOut =@StrOut+convert(varchar(MAX),FolderID)+','  FROM tbsons
	SELECT SUBSTRING(@StrOut ,1 ,LEN(@StrOut)-1) ChildArchiveFolder
	END;
GO
/****** Object:  StoredProcedure [dbo].[GetExtentionIDByName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create procedure [dbo].[GetExtentionIDByName]
@Extention varchar(10),@ExtentionID int output
as
IF NOT EXISTS(SELECT * FROM Extention where Extention=@Extention)
INSERT INTO Extention ([ExtentionTitle] ,[Extention] ,[IsSystem]) 
VALUES ( @Extention,@Extention,0)


SELECT  @ExtentionID=ExtentionID
 FROM Extention
where Extention=@Extention


GO
/****** Object:  StoredProcedure [dbo].[GetfieldValueByLetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE  procedure [dbo].[GetfieldValueByLetterID]
	@letterId int,@FormOrder int
	as
	SELECT Description,
	case when ReferenceTableID is null or FieldValue is null then FieldValue
	else
	(select DataTitle From ReferenceTableData where tableid=ReferenceTableID and DataID=FieldValue)
	end  FieldValue
	  FROM  LetterFieldValue
	  inner join Fields f on f.ID=LetterFieldValue.FieldID
	  where letterid=@letterid and [FormOrder]=@FormOrder
	  
GO
/****** Object:  StoredProcedure [dbo].[GetFollowCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[GetFollowCode]
@letterID int,@Code varchar(100) output
as
declare @SecretariatID varchar(4),@IndicatorID varchar(5),@Check char(3), @LetterType char(1)

select @SecretariatID=Cast(SecretariatID AS VARCHAR(3)),@IndicatorID=Cast(IndicatorID as varchar(5)), @LetterType=Cast(Letter_Type as char(1))
from Letter
where LetterID=@LetterID

exec GetCheckCode @letterID,@Check output

while len(@SecretariatID)<3 
  set @SecretariatID='0'+@SecretariatID

while len(@IndicatorID)<5
  set @IndicatorID='0'+@IndicatorID

set @Code=@Check+@SecretariatID+@LetterType +'/'+@IndicatorID 
GO
/****** Object:  StoredProcedure [dbo].[GetLastFormOrderByLetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create Procedure [dbo].[GetLastFormOrderByLetterID]
@LetterID int,@formOrder tinyint out
as
select @formOrder=max(FormOrder)
from dbo.LetterFieldValue
where letterid=@letterid

set @formOrder=isnull(@formOrder,0)


GO
/****** Object:  StoredProcedure [dbo].[GetLetterIDByFollowID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE Proc [dbo].[GetLetterIDByFollowID]
@followID char(13),@LetterID int out
as
begin

declare @Secid int,@IndicatorID int ,@CorrectCheckCode char(3),@CheckCode char(3),@Letter_type int

if (substring(@followid,8,1)<>'/') or 
isnumeric(substring(@followid,1,7))=0 or
isnumeric(substring(@followid,9,5))=0
begin
  set @letterid=0
  return
end
 
set @secid=cast(substring(@followID,4,3) as int)
set @CheckCode=substring(@followID,1,3) 


set @Letter_type=cast(substring(@followID,7,1) as int)
set @IndicatorID=cast(substring(@followID,9,5) as int)

if exists (select * from letter where IndicatorID=@IndicatorID and SecretariatID=@secid and 
@Letter_type=Letter_type)
select @LetterID=max(LetterID) 
from letter 
where IndicatorID=@IndicatorID and SecretariatID=@secid and 
Letter_type=@Letter_type
else
select @LetterID=0 

execute GetCheckCode @LetterID, @CorrectCheckCode output

if @CorrectCheckCode<>@CheckCode
select @LetterID=0 


end



GO
/****** Object:  StoredProcedure [dbo].[GetLetterTemplate_HeaderID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[GetLetterTemplateGroupType]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[GetLetterTemplateGroupType]
(
	@ID		Int,
	@type	Char(1) output
)

As

Select @type = TemplateGroupType
	From TemplateGroup As TG
	Where TG.TemplateGroupID = @ID

Set @type = IsNULL(@type, 'w')

GO
/****** Object:  StoredProcedure [dbo].[GetList]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[GetList]
(
	@ListID int
)
AS
	SELECT *,KeyValue, Title, Notes
		FROM ListItems
		where ListID=@ListID
GO
/****** Object:  StoredProcedure [dbo].[GetMessages]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMessages](@UserID INT, @FolderID INT = 2, @OrderBy VARCHAR(100) = ' um.Status, um.MsgDate desc, um.MsgTime desc ')
AS
BEGIN
	DECLARE @script VARCHAR(3000)
	SET @script =	'SELECT um.UserMessageID, um.To_, u1.Title AS ReceiverTitle, um.From_, u2.Title AS SenderTitle,
	um.Code, um.MsgDate, um.MsgTime, um.[Subject], 
	um.[Message], um.[Status]
	 FROM UserMessage um INNER JOIN
	 Users u1 ON u1.Id = um.To_ INNER JOIN
	 Users u2 ON u2.Id = um.From_
	WHERE '
	
	IF @FolderID IN (1, 2)
		SET @script = @script + ' isnull(um.IsForSender, 0) = 0 and um.To_ = ' + cast(@UserID AS VARCHAR(10))
	ELSE IF @FolderID = 3
		SET @script = @script + ' isnull(um.IsForSender, 0) = 0 and um.[Status] = 1 and um.To_ = ' + cast(@UserID AS VARCHAR(10)) 
	ELSE IF @FolderID = 4
		SET @script = @script + ' isnull(um.IsForSender, 0) = 1 and um.From_ = ' + cast(@UserID AS VARCHAR(10))
		
	SET @script= @script + ' Order by ' + @OrderBy	
	PRINT @script
	EXEC (@script)	
END
GO
/****** Object:  StoredProcedure [dbo].[GetNumberOfLetterAttach]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create Procedure [dbo].[GetNumberOfLetterAttach](@LetterID int,@number int out)
 AS  
 
SELECT    @number=count( LetterDataID)
FROM         LetterData
WHERE     LetterID=@LetterID and extention>3


set @number=isnull(@number,0)

GO
/****** Object:  StoredProcedure [dbo].[GetPermittedWorkGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[GetPermittedWorkGroup]
	@UserId int
AS
Begin
	select t1.GroupID from ChartWorkGroupDetails t1
	inner join Users t2 on (t1.OrgID=t2.FromOrgID or t1.OrgID=t2.FiveOrgID or t1.OrgID=t2.FourOrgID or t1.OrgID=t2.TreeOrgID or t1.OrgID=t2.SecondOrgID) and t1.AccessForErja=1 and t2.id=@UserId
	inner join ChartWorkGroup t3 on t1.GroupID=t3.GroupID
End
GO
/****** Object:  StoredProcedure [dbo].[GetRecommiteById]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[GetRecommiteById]
( @recommiteId int)
AS

select R.*,isnull(FO.Title,Lfo.title) RecommiterTitle
 from Recommites R 
inner join letter L on R.LetterID = L.LetterID 
left join Recommites PR on R.LetterId=PR.LetterId and R.ParentId=PR.ID 
left join dbo.FromOrganizations FO on PR.OrgID=FO.ID --where recommiteId=
left join dbo.FromOrganizations LFO on L.ToOrgID=LFO.ID 
where R.recommiteId=@recommiteId


GO
/****** Object:  StoredProcedure [dbo].[GetRecommiter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


create procedure [dbo].[GetRecommiter]
@Recommiteid int ,@orgid int out
as
select @orgid=prc.orgid
from recommites rc,recommites prc
where rc.letterid=prc.letterid and prc.id=rc.parentid and rc.recommiteid=@Recommiteid
set @orgid=isnull(@orgid,0)
GO
/****** Object:  StoredProcedure [dbo].[GetSystemSetting]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSystemSetting]              
@VariableName varchar(50),@Value nvarchar(255)  output 
AS                                                     
exec GetUserSetting -1,@VariableName,@value output     
GO
/****** Object:  StoredProcedure [dbo].[GetUserLogout_status]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[GetUserSetting]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetUserSetting]
            @UserID  int,
            @VariableName varchar(50),
            @Value nvarchar(255) output
AS
            Select @Value = [Value]
                        From Settings with (NOLOCK)
                        Where (UserID = @UserID) And (VariableName = @VariableName)

            Set @Value=isnull(@Value,'Not Found')

GO
/****** Object:  StoredProcedure [dbo].[getWorkSheets]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getWorkSheets](@isForWeb BIT = NULL)
AS
BEGIN
	SELECT     dbo.WorkSheet_Base.ID AS WorkSheetID, dbo.WorkSheet_Base.Type, dbo.WorkSheetBaseType.Mean AS TypeMean, 
                      dbo.WorkSheet_Base.RegUserID, RegUser.Title AS RegUserTitle, dbo.WorkSheet_Base.RegDate_Shamsi, dbo.WorkSheet_Base.RegDate_Miladi, 
                      dbo.WorkSheet_Base.Year_Shamsi, dbo.WorkSheet_Base.Year_Miladi, dbo.WorkSheet_Base.Month_Shamsi, dbo.WorkSheet_Base.Month_Miladi, 
                      dbo.WorkSheet_Base.Day_Shamsi, dbo.WorkSheet_Base.Day_Miladi, dbo.WorkSheet_Base.BeginTimeToMinute, 
                      dbo.WorkSheet_Base.EndTimeToMinute, dbo.WorkSheet_Base.Place, dbo.WorkSheet_Base.Subject, dbo.WorkSheet_Base.ImportantLevel, 
                      dbo.WorkSheetBaseImportantLevel.Mean AS ImportantLevelMean, dbo.WorkSheet_Base.Description, dbo.WorkSheet_Base.ManagerUserID, 
                      ManagerUser.Title AS ManagerUserTitle, dbo.WorkSheet_Base.Status, dbo.WorkSheetBaseStatus.Mean AS StatusMean, 
                      dbo.WorkSheet_Base.Date_Shamsi, dbo.WorkSheet_Base.Date_Miladi, dbo.WorkSheet_Base.SendNews, dbo.WorkSheet_Base.Monshi, 
                      MonshiUser.Title AS MonshiUserTitle, dbo.WorkSheet_Base.BeginTimeHour, dbo.WorkSheet_Base.BeginTimeMinute, 
                      dbo.WorkSheet_Base.EndTimeHour, dbo.WorkSheet_Base.EndTimeMinute, dbo.WorkSheet_Base.SendLetter, 
                      dbo.WorkSheet_Base.SendLetterToOtherPerson, dbo.WorkSheet_Base.isForWeb
FROM         dbo.WorkSheet_Base INNER JOIN
                      dbo.WorkSheetBaseType ON dbo.WorkSheet_Base.Type = dbo.WorkSheetBaseType.ID INNER JOIN
                      dbo.WorkSheetBaseStatus ON dbo.WorkSheet_Base.Status = dbo.WorkSheetBaseStatus.ID INNER JOIN
                      dbo.WorkSheetBaseImportantLevel ON dbo.WorkSheet_Base.ImportantLevel = dbo.WorkSheetBaseImportantLevel.ID INNER JOIN
                      dbo.Users AS ManagerUser ON dbo.WorkSheet_Base.ManagerUserID = ManagerUser.Id LEFT JOIN
                      dbo.Users AS MonshiUser ON dbo.WorkSheet_Base.Monshi = MonshiUser.Id inner JOIN
                      dbo.Users AS RegUser ON dbo.WorkSheet_Base.RegUserID = RegUser.Id
	WHERE
		((@isForWeb IS NULL) OR (@isForWeb = 1 AND WorkSheet_Base.isForWeb = 1) OR (@isForWeb = 0 AND ISNULL(WorkSheet_Base.isForWeb, 0) = 0))
END
GO
/****** Object:  StoredProcedure [dbo].[GetWorkSheetSessionUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetWorkSheetSessionUsers](@WorkSheetID INT) AS
BEGIN
SELECT WT.ID
      ,WT.WorkSheetBaseID
      ,WT.Description
      ,WT.MustCome AS [Status]
      ,WTS.Mean AS StatusTitle
      ,WT.WithAlarm
      ,WT.RegUserID
      ,U1.Title AS RegUserTitle
      ,WT.RegDate_Shamsi
      ,WT.RegDate_Miladi
      ,WT.UserID
      ,U2.Title AS UserTitle
      ,WT.UserResponse
      ,WT.UserDescription
FROM WorkSheet_Sessions WT INNER JOIN
Users U1 ON U1.Id = WT.RegUserID INNER JOIN
Users U2 ON U2.Id = WT.UserID INNER JOIN
WorkSheetSessionsMustCome WTS ON WTS.ID = WT.MustCome
WHERE WT.WorkSheetBaseID = @WorkSheetID	
END
GO
/****** Object:  StoredProcedure [dbo].[getWorkSheetsForDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getWorkSheetsForDate](@UserID INT, @Year INT, @Month VARCHAR(15), @Day INT)
AS
BEGIN
	SELECT     dbo.WorkSheet_Base.ID AS WorkSheetID, dbo.WorkSheet_Base.Type, dbo.WorkSheetBaseType.Mean AS TypeMean, 
                      dbo.WorkSheet_Base.RegUserID, RegUser.Title AS RegUserTitle, dbo.WorkSheet_Base.RegDate_Shamsi, dbo.WorkSheet_Base.RegDate_Miladi, 
                      dbo.WorkSheet_Base.Year_Shamsi, dbo.WorkSheet_Base.Year_Miladi, dbo.WorkSheet_Base.Month_Shamsi, dbo.WorkSheet_Base.Month_Miladi, 
                      dbo.WorkSheet_Base.Day_Shamsi, dbo.WorkSheet_Base.Day_Miladi, dbo.WorkSheet_Base.BeginTimeToMinute, 
                      dbo.WorkSheet_Base.EndTimeToMinute, dbo.WorkSheet_Base.Place, dbo.WorkSheet_Base.Subject, dbo.WorkSheet_Base.ImportantLevel, 
                      dbo.WorkSheetBaseImportantLevel.Mean AS ImportantLevelMean, dbo.WorkSheet_Base.Description, dbo.WorkSheet_Base.ManagerUserID, 
                      ManagerUser.Title AS ManagerUserTitle, dbo.WorkSheet_Base.Status, dbo.WorkSheetBaseStatus.Mean AS StatusMean, 
                      dbo.WorkSheet_Base.Date_Shamsi, dbo.WorkSheet_Base.Date_Miladi, dbo.WorkSheet_Base.SendNews, dbo.WorkSheet_Base.Monshi, 
                      MonshiUser.Title AS MonshiUserTitle, dbo.WorkSheet_Base.BeginTimeHour, dbo.WorkSheet_Base.BeginTimeMinute, 
                      dbo.WorkSheet_Base.EndTimeHour, dbo.WorkSheet_Base.EndTimeMinute, dbo.WorkSheet_Base.SendLetter, 
                      dbo.WorkSheet_Base.SendLetterToOtherPerson, dbo.WorkSheet_Base.isForWeb
FROM         dbo.WorkSheet_Base INNER JOIN
                      dbo.WorkSheetBaseType ON dbo.WorkSheet_Base.Type = dbo.WorkSheetBaseType.ID INNER JOIN
                      dbo.WorkSheetBaseStatus ON dbo.WorkSheet_Base.Status = dbo.WorkSheetBaseStatus.ID INNER JOIN
                      dbo.WorkSheetBaseImportantLevel ON dbo.WorkSheet_Base.ImportantLevel = dbo.WorkSheetBaseImportantLevel.ID INNER JOIN
                      dbo.Users AS ManagerUser ON dbo.WorkSheet_Base.ManagerUserID = ManagerUser.Id LEFT JOIN
                      dbo.Users AS MonshiUser ON dbo.WorkSheet_Base.Monshi = MonshiUser.Id inner JOIN
                      dbo.Users AS RegUser ON dbo.WorkSheet_Base.RegUserID = RegUser.Id
	WHERE (dbo.worksheet_base.Monshi = @UserID or dbo.WorkSheet_Base.ManagerUserID = @UserID) AND 
	(Dbo.WorkSheet_Base.Year_Shamsi = @Year AND dbo.WorkSheet_Base.Month_Shamsi = @Month AND dbo.WorkSheet_Base.Day_Shamsi = @Day)
END
GO
/****** Object:  StoredProcedure [dbo].[GetWorkSheetTaskUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetWorkSheetTaskUsers](@WorkSheetID INT) AS
SELECT WT.ID
      ,WT.WorkSheetBaseID
      ,WT.Description
      ,WT.Status
      ,WTS.Mean AS StatusTitle
      ,WT.WithAlarm
      ,WT.RegUserID
      ,U1.Title AS RegUserTitle
      ,WT.RegDate_Shamsi
      ,WT.RegDate_Miladi
      ,WT.UserID
      ,U2.Title AS UserTitle
      ,WT.UserResponse
      ,WT.UserDescription
FROM WorkSheet_Tasks WT INNER JOIN
Users U1 ON U1.Id = WT.RegUserID INNER JOIN
Users U2 ON U2.Id = WT.UserID INNER JOIN
WorkSheetTasksStatus WTS ON WTS.ID = WT.[Status]
WHERE WT.WorkSheetBaseID = @WorkSheetID
GO
/****** Object:  StoredProcedure [dbo].[GetWorkSheetVisitUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetWorkSheetVisitUsers](@WorkSheetID INT) AS
SELECT WT.ID
      ,WT.WorkSheetBaseID
      ,WT.Description
      ,0 as [Status]
      ,'' AS StatusTitle
      ,WT.WithAlarm
      ,WT.RegUserID
      ,U1.Title AS RegUserTitle
      ,WT.RegDate_Shamsi
      ,WT.RegDate_Miladi
      ,WT.UserID
      ,U2.Title AS UserTitle
      ,WT.UserResponse
      ,WT.UserDescription
FROM WorkSheet_Visits WT INNER JOIN
Users U1 ON U1.Id = WT.RegUserID INNER JOIN
Users U2 ON U2.Id = WT.UserID
WHERE WT.WorkSheetBaseID = @WorkSheetID
GO
/****** Object:  StoredProcedure [dbo].[HAS_ACCESS]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[HAS_ACCESS](@userID INT, @frmID INT, @ActionID NVARCHAR(50), @res BIT OUTPUT) 
AS 
	--By Hadi Mohamed 92/04/18
	--For check if USER @userID hase access to ACTION @actionID in FORM @frmID or not 
	SELECT @res=HasAccess FROM ActionsAccess 
	WHERE ActionID=@ActionID AND FormTag=@frmID AND 
		AccessID IN ( SELECT AccessID FROM users WHERE ID= @userID)
	SET @res=ISNULL(@res,0)
GO
/****** Object:  StoredProcedure [dbo].[has_PDF]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[has_PDF]
@LetterID int,@result bit output
AS

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention=5)
set @result=1
else
set @result=0



 


GO
/****** Object:  StoredProcedure [dbo].[hassame_orgtitle]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE procedure [dbo].[hassame_orgtitle](@title nvarchar(255),@id int output)
as
set @id=-1
select top 1  @id=id
from fromorganizations
where replace(title,' ','')=replace(@title,' ','')
or   replace(email,' ','')=replace(@title,' ','')

GO
/****** Object:  StoredProcedure [dbo].[Import_LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[insert_Actions]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[insert_Actions]	(	 @FormTag 	[tinyint],	 @ID 	[nvarchar](50),	 @Title 	[nvarchar](50),	 @ComponentTag int)
	AS 
	INSERT INTO [dbo].[Actions]	 ( [FormTag],	 [ID],	 [Title],	 [ComponentTag])
	VALUES	( @FormTag,	 @ID,	 @Title,	 @ComponentTag	 )
	 
GO
/****** Object:  StoredProcedure [dbo].[insert_All_ReCommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[insert_ArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create PROCEDURE [dbo].[insert_ArchiveFolder]
	(@FolderID 	[int] output,
	 @ParentFolderID 	[int],
	 @Title 	[nvarchar](100),
	 @ArchiveCenterID int=-1,
	 @UserID 	[int],
	 @Notes 	[nvarchar](500),
              @Place nvarchar(100))

AS INSERT INTO [dbo].[ArchiveFolder]
	 (
	 [ParentFolderID],
	 [Title],
	 [UserID],
	 [Notes],
	 ArchiveCenterID ,
                Place)

VALUES
	(
	 @ParentFolderID,
	 @Title,
	 @UserID,
	 @Notes,
	 @ArchiveCenterID
	 ,
@Place )

select @folderid= @@identity




GO
/****** Object:  StoredProcedure [dbo].[insert_Extention]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[insert_FieldAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create procedure [dbo].[insert_FieldAccess]
	as
	begin
		INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])
		--	Very Slow in Real Data

		--SELECT fields.id,users.id,3
		--FROM Fields,Users
		--where tableid in (SELECT TableID FROM Tables WHERE TableType = 3)
		--and str(fields.id)+'m'+str(users.id) not in (select str(fieldid)+'m'+str(userid) from FieldAccess)
		select s.FieldId,s.UserId,s.TableId
		 from (
		SELECT fields.id FieldId,users.id UserId,3 [AccessTypeID],tableid TableId
		FROM Fields,Users)s
		where s.TableId in (SELECT TableID FROM Tables WHERE TableType = 3)
		and not exists (select fieldid,userid from FieldAccess f where f.FieldID=s.FieldId and f.UserID=s.UserId  )
	end
GO
/****** Object:  StoredProcedure [dbo].[insert_FieldAccess_by_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE procedure [dbo].[insert_FieldAccess_by_TableID]
@TableID int
as

INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])
SELECT fields.id,users.id,3
FROM Fields,Users
where tableid=@TableID
and str(fields.id)+'m'+str(users.id) not in (select str(fieldid)+'m'+str(userid) from FieldAccess)

GO
/****** Object:  StoredProcedure [dbo].[insert_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[insert_Letter]
	(@IndicatorID 	[int],
	 @MYear 	[int],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @ToOrgID 	[int],
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @SentLetterID 	[int],
	 @TemplateID 	[int],
	 @HeaderID 	[int],
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @SendStatusID 	[tinyint],
	@Exists bit output)

AS 
	If exists (Select 1
				From letter 
				Where	[IndicatorID] = @IndicatorID 
					AND [MYear] = @MYear 
					AND [SecretariatID] = @SecretariatID 
					AND [Letter_Type] = @Letter_Type 
					AND [letterformat] = @letterformat)
		Set @Exists=1
	Else
		Set @Exists=0

	If @Exists=0 
		Insert Into [dbo].[Letter] 
			([IndicatorID], [MYear], [SecretariatID],[Letter_Type], [letterformat],
 			 [IncommingNO], [Incommingdate], [CenterNo], [CenterDate], [FromOrgID], [ToOrgID],
			 [Signerid], [ClassificationID], [UrgencyID], [Memo], [AttachTitle], [NumberOfAttachPages],
			 [NumberOfPage], [ReceiveTypeID], [UserID], [RetroactionNo], [UserMemo],
			 [RegistrationDate], [RegistrationTime], [FollowLetterNo], [ToStaffer], [SentLetterID],
			 [TemplateID], [HeaderID], [LetterRecommites], [FromStaffer], [Finalized], [SendStatusID]) 
 
		Values
			(@IndicatorID,	 @MYear,	         @SecretariatID, @Letter_Type,	 @letterformat,
			 @IncommingNO,	 @Incommingdate,	 @CenterNo,	 @CenterDate,	 @FromOrgID,	 @ToOrgID,
			 @Signerid,	 @ClassificationID,	 @UrgencyID,	 @Memo,	 @AttachTitle,	 @NumberOfAttachPages,
			 @NumberOfPage,	 @ReceiveTypeID,	 @UserID,	 @RetroactionNo,	 @UserMemo,
			 @RegistrationDate,	 @RegistrationTime,	 @FollowLetterNo,	 @ToStaffer,	 @SentLetterID,
			 @TemplateID,	 @HeaderID,	 @LetterRecommites,	 @FromStaffer,	 @Finalized,	 @SendStatusID)
GO
/****** Object:  StoredProcedure [dbo].[insert_Letter_all]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[insert_Letter_all]
	(@IndicatorID 	[int],	 @MYear 	[int],	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],	 @letterformat 	[tinyint],	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),	 @CenterNo 	[nvarchar](50),	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],	 @ToOrgID 	[int],	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],	 @UrgencyID 	[smallint],	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),	 @NumberOfAttachPages 	[smallint],	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],	 @UserID 	[int],	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),	 @RegistrationDate 	[char](10), @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),	 @ToStaffer 	[nvarchar](50),	 @SentLetterID 	[int],
	 @TemplateID 	[int],	 @HeaderID 	[int],	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),	 @Finalized 	[bit],	 @SendStatusID 	[tinyint],
@Exists bit output,
@LetterID int output)


AS 
	If Exists (Select 1
				From letter 
				Where [IndicatorID] = @IndicatorID 
					AND [MYear] = @MYear 
					AND [SecretariatID] = @SecretariatID 
					AND [Letter_Type] = @Letter_Type 
					AND [letterformat] = @letterformat)
		Set @Exists=1
	Else
		Set @Exists=0


	If @Exists=0 
		INSERT INTO .[dbo].[Letter] 
			([IndicatorID],	 [MYear],	         [SecretariatID],[Letter_Type],	 [letterformat],
 			 [IncommingNO],	 [Incommingdate],	 [CenterNo],	 [CenterDate],	 [FromOrgID],	 [ToOrgID],
			 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [AttachTitle],	 [NumberOfAttachPages],
			 [NumberOfPage], [ReceiveTypeID],	 [UserID],	 [RetroactionNo],[UserMemo],
			 [RegistrationDate],[RegistrationTime],	 [FollowLetterNo],[ToStaffer],	 [SentLetterID],
			 [TemplateID],	 [HeaderID],	 [LetterRecommites],	 [FromStaffer],	 [Finalized],	 [SendStatusID])
 
		VALUES 
			(@IndicatorID,	 @MYear,	         @SecretariatID, @Letter_Type,	 @letterformat,
			 @IncommingNO,	 @Incommingdate,	 @CenterNo,	 @CenterDate,	 @FromOrgID,	 @ToOrgID,
			 @Signerid,	 @ClassificationID,	 @UrgencyID,	 @Memo,	 @AttachTitle,	 @NumberOfAttachPages,
			 @NumberOfPage,	 @ReceiveTypeID,	 @UserID,	 @RetroactionNo,	 @UserMemo,
			 @RegistrationDate,	 @RegistrationTime,	 @FollowLetterNo,	 @ToStaffer,	 @SentLetterID,
			 @TemplateID,	 @HeaderID,	 @LetterRecommites,	 @FromStaffer,	 @Finalized,	 @SendStatusID)

	select @LetterID=Letterid 
	from letter WHERE 
		[IndicatorID]	 = @IndicatorID AND
		 [MYear]	 = @MYear AND
		 [SecretariatID] = @SecretariatID AND
		 [Letter_Type]	 = @Letter_Type AND
		 [letterformat]	 = @letterformat
GO
/****** Object:  StoredProcedure [dbo].[insert_LetterArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[insert_LetterArchiveFolder]
(@LetterArchiveID 	[int] output,
	 @ArchiveFolderID 	[int],
	 @LetterID 	[int],
	 @ArchiveDate 	[char](10),
	 @Page 	[int],
	 @ArchiveNotes 	[nvarchar](50),@UserID int)

AS INSERT INTO [dbo].[LetterArchiveFolder]
	 ( 
	 [ArchiveFolderID],
	 [LetterID],
	 [ArchiveDate],
	 [Page],
	 [ArchiveNotes],UserID) 
 
VALUES 
	(
	 @ArchiveFolderID,
	 @LetterID,
	 @ArchiveDate,
	 @Page,
	 @ArchiveNotes,@UserID)

set @LetterArchiveID=@@identity



GO
/****** Object:  StoredProcedure [dbo].[insert_LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_LetterData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint])

AS INSERT INTO [dbo].[LetterData] 
	 (  [LetterID],
	 [PageNumber],
	 [extention],
         IsTemplate ) 
 
VALUES 
	( @LetterID,
	 @PageNumber,
	 @extention,
         1)

set  @LetterDataID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[insert_LetterDataText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[insert_LetterDataText]
	(@LetterDataID int,
	 @TextPart   	NVARCHAR(450))
AS 
	INSERT INTO [dbo].[LetterDataText]( [LetterDataID], [textPart])
		VALUES 	( @LetterDataID, @textPart  )
GO
/****** Object:  StoredProcedure [dbo].[Insert_LetterFormSigners]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_LetterFormSigners]
	@letterFormID INT = 0,
	@signerUserID INT = 0,
	@date NVARCHAR(10) = '',
	@time NVARCHAR(10) = '',
	@paraph NVARCHAR (255)=''
AS
	INSERT INTO LetterFormSigners(letterFormID,signerUserID,[date],[time],paraph)
	VALUES(@letterFormID,@signerUserID,@date,@time,@paraph)
GO
/****** Object:  StoredProcedure [dbo].[insert_LetterText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_NewActionsAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[Insert_NewActionsAccess]
AS  
  
--Delete from ActionsAccess 
--where Str(Formtag) not in (Select Str(FormTag) from Actions)      
--And RTrim(ActionID) not in (Select RTrim(ID) from Actions) 

/*دادن دسترسي*/      
--INSERT INTO [dbo].[ActionsAccess]( [AccessID],[ActionID],[FormTag],[HasAccess])           
--SELECT Acc.ID,A.ID,A.FormTag,1          
--FROM Accesses Acc,Actions A         
--where (Str(A.formtag)+LTrim(RTrim(A.ID))+ Str(Acc.ID) not in   
--      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionID))+ Str(AAC.AccessID) From ActionsAccess AAC) )

	SELECT 
		Acc.ID AS AccID,
		A.ID,
		A.FormTag,
		1 as flag ,
		Str(A.formtag)+LTrim(RTrim(A.ID))+ LTrim(RTrim(Str(Acc.ID))) as fild1        
	INTO #temp1
	FROM Accesses Acc,Actions A         

	SELECT 
	   Str(AAC.formtag)+LTrim(RTrim(AAC.ActionID))+ LTrim(RTrim(Str(AAC.AccessID)))  Fild2
	INTO #temp2
	FROM ActionsAccess AAC

	DELETE FROM ActionsAccess
	WHERE GUID  IN (
					SELECT 
					   GUID
					FROM #temp2
					WHERE FormTag NOT IN (SELECT FormTag FROM #temp1 ) 
					AND ActionID NOT IN (sELECT ID FROM #temp1)
				   )

	INSERT INTO [dbo].[ActionsAccess]
			   ( [AccessID],
				 [ActionID],
				 [FormTag],
				 [HasAccess])           
	SELECT Distinct
		AccID,
		A.ID,
		A.FormTag,
		flag 
	FROM #temp1 a
	WHERE fild1 NOT IN (
						 SELECT 
							fild2 
						 FROM #temp2)

	DROP TABLE #temp1
	DROP TABLE #temp2

GO
/****** Object:  StoredProcedure [dbo].[Insert_OtherRecievers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Insert_OtherRecievers]
	(@LetterID 	[int],
	 @ID 	[smallint],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
@RecommiteID int output)

AS

declare @OrgStaff nvarchar(50)
select top 1 @OrgStaff=ResponsibleStaffer	
from dbo.FromOrganizations 
WHERE 	id	 = @OrgID

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
	 [RecommiteTime],
	OrgStaff,
	finallized) 
 
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
	 convert(varchar(5), GETDATE(), 108),
	 @OrgStaff,
	 0 )

set @RecommiteID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[Insert_ParaphTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Insert_ParaphTemplate]
	@UserID int,@Title nvarchar(50),@Paraph nvarchar(500),@type TINYINT
as
	declare @OrderID tinyint
	select @OrderID=max(OrderID)+1 from ParaphTemplate where UserID=@Userid
	if @OrderID is null set @OrderID=1
	INSERT INTO ParaphTemplate (UserID ,OrderID ,Title,Paraph,type)
	VALUES (@UserID,@OrderID,@Title,@Paraph,@type)
GO
/****** Object:  StoredProcedure [dbo].[insert_ReciveLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[insert_ReciveLetter]  
 (@letterID integer output,  
  @IndicatorID  int,  
  @MYear  int,  
  @SecretariatID  tinyint,  
  @Letter_Type  tinyint,  
  @letterformat  tinyint,  
  @Memo  nvarchar(500),  
  @UserID  int,  
  @RegistrationDate  char(10),  
  @RegistrationTime  varchar(5),  
  @OrgID int)  
AS  
  
	declare @OrgStaff nvarchar(50)  

	Select @OrgStaff=ResponsibleStaffer  
		From dbo.FromOrganizations  
		Where id=@orgid  

	INSERT INTO dbo.Letter   
		(IndicatorID,  MYear,  SecretariatID,  Letter_Type,  letterformat,  Memo,  UserID,  RegistrationDate,  RegistrationTime,  FromOrgID,ReceiveTypeID )   
	VALUES   
		(@IndicatorID,  @MYear,  @SecretariatID,  @Letter_Type,  @letterformat,  @Memo,  @UserID,  @RegistrationDate,  @RegistrationTime,  @OrgID,2)  
  
	SET @LetterID=IDENT_CURRENT('Letter')--@@Identity  
  
	INSERT INTO dbo.ReCommites   (LetterID, ID, Type,  ParentId,  OrgID,  Paraph,  RecommiteDate,  UserID,  IsCopy,  Proceeded,OrgStaff)   
		values(@letterid,1,3,0,@orgid,'',@registrationdate,@userid,0,0,@OrgStaff)
GO
/****** Object:  StoredProcedure [dbo].[insert_ReCommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------
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
	 @Proceeded 	[bit],
@RecommiteID int output)

AS

CREATE TABLE #Topol(ID INT)

declare @OrgStaff nvarchar(50)
select top 1 @OrgStaff=ResponsibleStaffer	
from dbo.FromOrganizations 
WHERE 	id	 = @OrgID

 INSERT INTO [dbo].[ReCommites]
	 (
	 [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [RecommiteTime],
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
	 CONVERT(nvarchar(5), GETDATE(), 108),
	 @UserID,
	 @IsCopy,
	 @Proceeded,
@OrgStaff )

set @RecommiteID=@@identity

IF OBJECT_ID('tempdb..#Topol') IS NOT NULL DROP TABLE #Topol 
GO
/****** Object:  StoredProcedure [dbo].[Insert_TableAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Insert_TableAccess]
AS
	INSERT INTO UserTable(userID,tableID,hasAccess,HasDelete)
	SELECT users.Id,tables.TableId,1,1
		FROM Users,Tables 
		WHERE tableid IN(SELECT TableID FROM Tables WHERE TableType = 3)
			AND STR(Users.Id)+'m'+STR(Tables.TableId) NOT IN(SELECT STR(userID)+'m'+STR(tableID) FROM UserTable)
GO
/****** Object:  StoredProcedure [dbo].[insert_ToOrganizations]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create PROCEDURE [dbo].[insert_ToOrganizations]
	(@Title [nvarchar](100),@id int output)

AS 
declare @code varchar(50)
select @code =max(id)+1
from FromOrganizations

INSERT INTO [FromOrganizations] 
	 ( [Title],	 [ParentID],	 [IsActive],	 [IsInnerOrg],	 [Code]) 
VALUES 	( @Title,	 4,	 1,	 0,	 @code)

set @id=@@identity



GO
/****** Object:  StoredProcedure [dbo].[Insert_Update_PhoneBook]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Insert_Update_PhoneBook](@IsEditing BIT=0, @PhoneID INT=0
      ,@Title NVARCHAR(50)
      ,@PersonName NVARCHAR(50)
      ,@Tel1 NVARCHAR(20)
      ,@Tel2 NVARCHAR(20)
      ,@Mobile NVARCHAR(20)
      ,@Fax NVARCHAR(20)
      ,@Email NVARCHAR(50)
      ,@Internet NVARCHAR(500)
      ,@Address NVARCHAR(500)
      ,@ZipCode NVARCHAR(30)
      ,@Descript NVARCHAR(500)
      ,@UsersID INT
      ,@IsPublic BIT
      ,@IsForWeb BIT=FALSE)
AS
BEGIN
	IF @IsEditing = 0
	BEGIN
		DECLARE @Code INT
		SELECT @Code= (isnull(MAX(p.CODE), 0)+ 1) FROM Phone p
		
		INSERT INTO Phone
		(
			Code,
			Title,
			PersonName,
			Tel1,
			Tel2,
			Mobile,
			Fax,
			Email,
			Internet,
			[Address],
			ZipCode,
			Descript,
			UsersID,
			IsPublic,
			IsForWeb
		)
		VALUES
		(
			@Code,
			@Title,
			@PersonName	,
			@Tel1	,
			@Tel2	,
			@Mobile	,
			@Fax	,
			@Email	,
			@Internet	,
			@Address	,
			@ZipCode	,
			@Descript	,
			@UsersID	,
			@IsPublic	,
			@IsForWeb	
		)		
	END
	ELSE
	BEGIN
		UPDATE Phone
		SET
			Title = @Title,
			PersonName = @PersonName,
			Tel1 = @Tel1,
			Tel2 = @Tel2,
			Mobile = @Mobile,
			Fax = @Fax,
			Email = @Email,
			Internet = @Internet,
			[Address] = @Address,
			ZipCode = @ZipCode,
			Descript = @Descript,
			IsPublic = @IsPublic,
			IsForWeb = @IsForWeb
		WHERE
			PhoneID = @PhoneID	
	END
END 
GO
/****** Object:  StoredProcedure [dbo].[insert_UserLog]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROCEDURE [dbo].[insert_UserLog]
	(@UserID 	[tinyint],
	 @FormTag [int],
	 @ActionID 	[nvarchar](50),
	 @LetterID	[int])

AS INSERT INTO [dbo].[UserLog]
	 ( [UserID],
	 [FormID],
	 [ActionID],
	 [LetterID])

VALUES
	( @UserID,
	 @FormTag,
	 @ActionID,
	 @LetterID)






GO
/****** Object:  StoredProcedure [dbo].[insert_UserLoginLogout]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[insert_UserLoginLogout]
	( @UserID 	[int],
	 @IPAddress 	[char](15),
	 @isCartable [bit],
@UserLoginLogoutID int output)

AS 

INSERT INTO [dbo].[UserLoginLogout] 
	 ( [UserID],
	 [IPAddress],isCartable) 
 
VALUES 
	(
	 @UserID,
	 @IPAddress,@isCartable)
set @UserLoginLogoutID=@@identity

GO
/****** Object:  StoredProcedure [dbo].[insertReCommites_autoID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[insertReCommites_autoID]
    (
      @LetterID INT ,
      @Type TINYINT ,
      @ParentId SMALLINT ,
      @OrgID INT ,
      @Paraph NVARCHAR(500) ,
      @RecommiteDate VARCHAR(10) ,
      @UserID INT ,
      @IsCopy BIT ,
      @GroupFlag INT = 0 ,
      @ISSecure BIT ,
	  @DeadLineDate varchar(10) ,
      @DeadLineToInt  int,
	  @ReCommiteTime varchar(10)
    )
AS
    BEGIN
        DECLARE @ID INT ,
            @orgstaff NVARCHAR(50) 
		/*Hamed_Ansari_990230,
            @DeadLineDate VARCHAR(10) ,
            @DeadLineToInt INT ,
            @IsFollowUp BIT ,
            @ReCommiteTime NVARCHAR(5)
        */

        SELECT  @id = MAX(id) + 1
        FROM    recommites
        WHERE   Letterid = @LetterID

        SELECT  @orgstaff = ResponsibleStaffer
        FROM    fromorganizations
        WHERE   id = @OrgID
		/*Hamed_Ansari_990230
        IF @GroupFlag > 0
            SELECT  @DeadLineDate = DeadLineDate ,
                    @DeadLineToInt = DeadLineToInt ,
                    @IsFollowUp = ISFollowup ,
                    @ReCommiteTime = RecommiteTime
            FROM    dbo.ReCommites
            WHERE   RecommiteID = @GroupFlag
        */
        INSERT  INTO [ReCommites]
                ( LetterID ,
                  ID ,
                  Type ,
                  ParentId ,
                  OrgID ,
                  Paraph ,
                  RecommiteDate ,
                  UserID ,
                  IsCopy ,
                  orgstaff ,
                  DeadLineDate ,
                  DeadLineToint ,
                  GroupFlag ,
                  IsSecure,
				  RecommiteTime 
                )
        VALUES  ( @LetterID ,
                  @ID ,
                  @Type ,
                  @ParentId ,
                  @OrgID ,
                  @Paraph ,
                  @RecommiteDate ,
                  @UserID ,
                  @IsCopy ,
                  @orgstaff ,
                  @DeadLineDate ,
                  @DeadLineToInt ,
                  @GroupFlag ,
                  @ISSecure, 
				  @ReCommiteTime
                )
END
GO
/****** Object:  StoredProcedure [dbo].[insertText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[letterContainText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[letterContainText]
 @secID tinyint,@where nvarchar(500)
AS

declare @sqlCommand nvarchar(4000)
DECLARE @Where2 NVARCHAR(500)
DECLARE @Where3 NVARCHAR(500)

set @where=ltrim(rtrim(isnull(@where,'')))
SET @where2=REPLACE(@where,nchar(1610),nchar(1740))
SET @where3=REPLACE(@where,nchar(1740),nchar(1610))
 set  @sqlcommand='SELECT    distinct Letter.LetterID,Letter_type, indicatorid, RegistrationDate, 
Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Title AS ToTitle
FROM         LetterText 
INNER JOIN   Letter on letter.letterid=LetterText.letterid
INNER JOIN     FromOrganizations ON FromOrgID = FromOrganizations.ID
INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrganizations.ID  where (Letter.SecretariatID='+cast(@secId as varchar(3)) +' or '+cast
(@SeCID as varchar(3))+' = 0)'

if @where<>'' set @sqlcommand=@sqlcommand+' and ('+@where+' or '+@Where2+' or '+@Where3+')'
exec sp_executesql @sqlcommand
GO
/****** Object:  StoredProcedure [dbo].[letterContainTextCartable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[letterContainTextCartable]
 @secID tinyint,@where nvarchar(500), @OrgID INT
AS

 declare @sqlCommand nvarchar(4000)
 DECLARE @Where2 NVARCHAR(500)
DECLARE @Where3 NVARCHAR(500)


set @where=ltrim(rtrim(isnull(@where,'')))

SET @where2=REPLACE(@where,nchar(1610),nchar(1740))
SET @where3=REPLACE(@where,nchar(1740),nchar(1610))

SET @sqlCommand = 'SELECT L.LetterID, L.IndicatorID, L.RegistrationDate, L.Memo, L.Letter_Type, Receiver.Title AS FromTitle, TTo.Title AS ToTitle
FROM ReCommites RC        
INNER JOIN Letter L ON RC.LetterID = L.LetterID
inner join LetterText on L.LetterID = LetterText.LetterID        
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
LEFT JOIN LetterTypes ON L.Letter_Type=LetterTypes.ID        
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type        
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID        
left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID         
left JOIN FromOrganizations Receiver ON Receiver.ID = L.FromOrgID    
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID         
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type =   
RC.type         
left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID  
WHERE   (RC.Finallized=1) and(Rc.OrgID = '+CONVERT(VARCHAR(10), @OrgID)+') and (l.LetterFormat in (1,2)) 
AND (SecretariatID = '+CONVERT(VARCHAR(10), @SecID)+' or '+CONVERT(VARCHAR(10), @SecID)+'=0)'
IF(@where<>'')
	SET @sqlCommand= @sqlCommand +' and ('+@where+' or '+@Where2+' or '+@Where3+')'
SET @sqlCommand= @sqlCommand+ ' order by  rc.recommitedate desc,l.indicatorid desc'

PRINT @sqlCommand
exec sp_executesql @sqlcommand
GO
/****** Object:  StoredProcedure [dbo].[letterDataTextSearch]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Title AS ToTitle
FROM         LetterDataText 
inner join   LetterData on LetterDataText.LetterdataID = LetterData.LetterDataID
INNER JOIN   Letter on letter.letterid=LetterData.letterid
INNER JOIN     FromOrganizations ON FromOrgID = FromOrganizations.ID
INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrganizations.ID  where (Letter.SecretariatID='+cast(@secId as varchar(3)) +' or '+cast
(@SeCID as varchar(3))+' = 0)'

if @where<>'' set @sqlcommand=@sqlcommand+' and ('+@where+')'
exec sp_executesql @sqlcommand
GO
/****** Object:  StoredProcedure [dbo].[LetterHasViewDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[LetterHasViewDate] 
	@LetterId Int, 
	@res TinyInt Output
AS
BEGIN
	Set @res = 0
	If Exists(Select 1 From ReCommites Where LetterID = @LetterId	And ISNULL(viewdate, '') <> '')
	  Set @res = 1
END
GO
/****** Object:  StoredProcedure [dbo].[LetterImport]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[LetterImport] 
	@canInsert bit,
	@canEdit bit,
	@year int,
	@secID tinyint,
	@LetterNo nvarchar(50),
	@IndicatorID int ,
	@LetterDate nvarchar(10),
	@LetterType nvarchar(10),
	@userID INT,
	@Subject nvarchar(100),
	@Summery nvarchar(2000),
	@classification nvarchar(50),
	@priority nvarchar(50),
	@sender nvarchar(255),
	@receiver nvarchar(255),
	@userMemo nvarchar(255),
	--@LetterRecommites int,
	@FormID int,
	@FormField1 nvarchar(255)=NULL,
	@FormField2 nvarchar(255)=NULL,
	@FormField3 nvarchar(255)=NULL,
	@FormField4 nvarchar(255)=NULL,
	@FormField5 nvarchar(255)=NULL,
	@FormField6 nvarchar(255)=Null,
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
	begin
		declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
		declare @LetterID int
		declare @claID TINYINT, @TypeID INT, @priorID INT, @senderID INT, @receiverID int 
		declare @subjID int
		set @LetterID = -1
		
			if object_id('#tmpFields') is not null
		drop table #tmpFields

		--------------------------------------------------------------------------------------------------------------	
		select @LetterID= LetterID From  Letter where IndicatorID = @IndicatorID and MYear = @year and SecretariatID = @secID
			--------------------------------------------------------------------------------------------------------------
		
		if @LetterID>0 
		begin
			if @canEdit=1 
			begin
				------------------------------------Edit Letter-----------------------------------------------------
				set @claID =1 --عادي
				set @subjID = -1
				SET @TypeID = 1 -- varedeh
				SET @priorID = 1 -- addiiii
				SET @receiverID = -1
				SET @senderID = -1
				
				
				
				SELECT @TypeID = [ID]  FROM [LetterTypes] WHERE [Title] = @LetterType
				SELECT @priorID = [ID]  FROM Urgenceis WHERE [Title] = @priority
				select @claID=ID from Classifications where Title = @classification
				
				select @subjID=[SubjectID] from [SUBJECT] where [SubjectTitle] = @Subject
				if @subjID<0
				begin 
					insert into [SUBJECT]([SubjectTitle] ,[IsActive]) 
					values(@Subject,1)
					SELECT @subjID=SCOPE_IDENTITY()
				end
				
				
				select @senderID=id from FromOrganizations where (Title = @sender and @TypeID <>1) or (Title = @receiver and @TypeID =1)
				select @receiverID=id from FromOrganizations where (Title = @sender and @TypeID =1) or (Title = @receiver and @TypeID <>1)
				if @senderID<0
				begin 
					insert into FromOrganizations([Title],[ParentID],[ResponsibleStaffer],[IsActive],[IsInnerOrg],[Code]) 
					values((case when @TypeID = 1 then @receiver else @sender end),-1,'',1,(case when @TypeID = 1 then 0 else 1 end),(select MAX(CONVERT(int,code))+1 from FromOrganizations))
					SELECT @senderID=SCOPE_IDENTITY()
				end
				if @receiverID<0
				begin 
					insert into FromOrganizations([Title],[ParentID],[ResponsibleStaffer],[IsActive],[IsInnerOrg],[Code]) 
					values((case when @TypeID = 1 then @sender else @receiver end),-1,'',1,(case when @TypeID = 1 then 1 else 0 end),(select MAX(CONVERT(int,code))+1 from FromOrganizations))
					SELECT @receiverID=SCOPE_IDENTITY()
				end
				update Letter set 
					Incommingdate = @letterDate , 
					IncommingNO	=	@LetterNo,
					indicatorid=@IndicatorID,
					Letter_Type = @TypeID,
					SubjectID = @subjID, 
					ClassificationID = @claID,
					UrgencyID = @priorID,
					Memo = @Summery,
					FromOrgID = case when @TypeID = 1 then @receiverID else @senderID end,
					ToOrgID = case when @TypeID = 1 then @senderID else @receiverID end,
					UserMemo = @userMemo
				where LetterID = @letterID
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
				-------------------------------------Insert Letter--------------------------------------------------
				set @claID =1 --عادي
				set @subjID = -1
				SET @TypeID = 1 -- varedeh
				SET @priorID = 1 -- addiiii
				SET @receiverID = -1
				SET @senderID = -1
				
				
				
				SELECT @TypeID = [ID]  FROM [LetterTypes] WHERE [Title] = @LetterType
				SELECT @priorID = [ID]  FROM Urgenceis WHERE [Title] = @priority
				select @claID=ID from Classifications where Title = @classification
				
				select @subjID=[SubjectID] from [SUBJECT] where [SubjectTitle] = @Subject
				if @subjID<0
				begin 
					insert into [SUBJECT]([SubjectTitle] ,[IsActive]) 
					values(@Subject,1)
					SELECT @subjID=SCOPE_IDENTITY()
				end
				
				
				select @senderID=id from FromOrganizations where (Title = @sender and @TypeID <>1) or (Title = @receiver and @TypeID =1)
				select @receiverID=id from FromOrganizations where (Title = @sender and @TypeID =1) or (Title = @receiver and @TypeID <>1)
				

				if @senderID<0
				begin 
					insert into FromOrganizations([Title],[ParentID],[ResponsibleStaffer],[IsActive],[IsInnerOrg],[Code]) 
					select (case when @TypeID = 1 then @receiver else @sender end),-1,'',1,(case when @TypeID = 1 then 0 else 1 end),
					(select MAX(CONVERT(int,code))+1 from FromOrganizations where isnumeric(code)=1)
					SELECT @senderID=SCOPE_IDENTITY()
				end
				
				if @receiverID<0
				begin 
					insert into FromOrganizations([Title],[ParentID],[ResponsibleStaffer],[IsActive],[IsInnerOrg],[Code]) 
					values((case when @TypeID = 1 then @sender else @receiver end),-1,'',1,(case when @TypeID = 1 then 1 else 0 end),(select MAX(CONVERT(int,code))+1 from FromOrganizations where isnumeric(code)=1))
					SELECT @receiverID=SCOPE_IDENTITY()
				end
				
--				select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @Year and SecretariatID = @SecID
				
				
	      
	      
				insert into Letter(IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate
									,FromOrgID,ToOrgID,UserID,ClassificationID,UrgencyID,Memo,NumberOfAttachPages
									
									,NumberOfPage,ReceiveTypeID,RegistrationDate,RegistrationTime,LastUpdate
									,SendStatusID,Finalized,UserMemo,/*[LetterRecommites],[ToStaffer],[fromstaffer]
									,*/[Archived],[SubjectID],/*[LatestActionTypeID],*/[ActionTypeID])/*[RetroactionYear],[FollowLetterYear])*/

					 values(@indicatorID,@year,@secID,@TypeID,1,@LetterNo,@LetterDate,
							@senderID,@receiverID,@userID,@claID,@priorID,@Summery,1,
							
							
							1,@TypeID, dbo.Shamsi(getdate()),LEFT(RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7),5),GETDATE(),
							1,1,@userMemo,0,   @subjID,1)
							
	/*						dbo.shamsi(getdate()),LEFT(RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7),5),getdate(),1,1,
							@customField1,@customField2,@customField3)*/
				SELECT @LetterID=SCOPE_IDENTITY()
				------------------------------------------------------------------------------------------------------
				set @result = 2
			end
			else
				set @result = -2
		end
		
		if @result>0
			if @LetterID>0
				if @FormID>0
				begin
					----------------------------------------------------------
					update Letter set UserTableID = @FormID	where LetterID = @LetterID
					
					insert into  LetterFieldValue(letterid,FieldID)
						select @LetterId,ID
						from Fields
						where tableid=@FormID and id not in (select FieldID from LetterFieldValue where Letterid=@Letterid)

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
						select @LFVID = LetterFieldValueID from LetterFieldValue where FieldID = @FieldID and LetterID=@LetterID
						if @FTypeID = 5  -- bit true/false 
							update LetterFieldValue set FieldValue = (case when val IN('T','1','بله','true','yes') then 1 else 0 end) from #tmpFields
							where ord=@ord  and LetterFieldValueID=@LFVID
						if @FTypeID = 6 -- combo box  value ID 
						begin
							declare @intval int, @refTblID int
							declare @strVal nvarchar(255)
							select @refTblID=ReferenceTableID from Fields where ID = @FieldID
							
							select @strVal = val from #tmpFields where ord = @ord 
							
							set @intval = 0
							
							select @intval = dataID from ReferenceTableData 
							where TableID = @refTblID and  DataTitle = @strVal
							
							if @intval = 0 
								insert into	ReferenceTableData	(TableID,DataID,DataTitle)
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
	end
GO
/****** Object:  StoredProcedure [dbo].[Make_FieldValues_By_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE procedure [dbo].[Make_FieldValues_By_LetterID]
@LetterID int,@FormOrder tinyint
as

declare @tableID int, @tableID2 int,@TableID0 int,@userid int   

select @TableID=UserTableID,@tableID2=UsertableID2,@userid=userid  
from letter
where letterid=@LetterID
 
if @tableID is not null or @tableID2 is not null
begin

delete LetterFieldValue
from LetterFieldValue
inner join  Fields on Fields.id=LetterFieldValue.fieldid
where Letterid =@letterid and  
(
(tableid<>@TableID and formorder=1) or 
(tableid<>@TableID2 and formorder=2)
)

if @FormOrder=1 
set @TableID0=@tableID
else
set @TableID0=@tableID2 

insert into  LetterFieldValue(letterid,FieldID,formOrder,insertuserid )
 select @letterID,ID, @FormOrder,@userid 
 from Fields
 where tableid=@TableID0 and
 id not in (select FieldID from LetterFieldValue where Letterid=@LetterID and formOrder=@formOrder)

INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])
SELECT fields.id,users.id,3
FROM Fields,Users
where tableid=@TableID0
and str(fields.id)+'m'+str(users.id) not in 
(select str(fieldid)+'m'+str(userid) from FieldAccess)

end



GO
/****** Object:  StoredProcedure [dbo].[min_page]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Move_ParaphTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE Procedure [dbo].[Move_ParaphTemplate]
@ParaphTemplateID int,@Step smallint
as
declare @swapParaphTemplateID int,@OrderId tinyint,@Userid int


select @OrderID=Orderid,@Userid=Userid from ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID


SELECT @swapParaphTemplateID=ParaphTemplateID
FROM ParaphTemplate
Where UserID=@UserID and OrderID=@OrderID+@Step

if @swapParaphTemplateID is not null
  begin
   update ParaphTemplate set OrderId=@OrderID+@Step where ParaphTemplateID=@ParaphTemplateID
   update ParaphTemplate set OrderId=@OrderID      where  ParaphTemplateID=@SwapParaphTemplateID
  end

GO
/****** Object:  StoredProcedure [dbo].[NewRecommiteID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[NewRecommiteID](@letterID int,@type int,@NewID int output)
AS

SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE LetterID=@letterID and type=@type


GO
/****** Object:  StoredProcedure [dbo].[Next_page]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create procedure [dbo].[Next_page](@LetterID int,@CurrentPage tinyint,@Next bit ,@newPage tinyint output)
as
if @next=1
 begin

SELECT     @newPage=MIN(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 and PageNumber>@CurrentPage)

if @newPage is null
SELECT     @newPage=MIN(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 )

end
else
 begin

SELECT     @newPage=max(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 and PageNumber<@CurrentPage)

if @newPage is null
SELECT     @newPage=max(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 )

end


GO
/****** Object:  StoredProcedure [dbo].[NextTag]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
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
/****** Object:  StoredProcedure [dbo].[NumberOfLetter_By_SecID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[NumberOfLetter_By_SecID]
@secID int,@Number_OF_Letter int output
 AS
select @Number_OF_Letter =count(*) from letter where secretariatid=@secid





 

GO
/****** Object:  StoredProcedure [dbo].[NumberOfTemplate_By_TemplateGroupID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[NumberOfTemplate_By_TemplateGroupID]
@TemplateGroupID int,@Number_OF_Template int output
 AS
select @Number_OF_Template =count(*) from LetterTemplate where TemplateGroupid=@TemplateGroupid



 

GO
/****** Object:  StoredProcedure [dbo].[Org_hasChild]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[org_hasLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Org_is_Secretariat]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[Org_is_Secretariat]
@orgid int ,@IsSecretariat bit output
as
set @IsSecretariat=0


Select  @IsSecretariat=cast(case when r.DestinationOrgID_inSource is null then 0 else 1 end as bit)  
 from fromorganizations LEFT JOIN RelatedSecretariats R ON FromOrganizations.ID = R.DestinationOrgID_inSource
where id=@orgid


 

GO
/****** Object:  StoredProcedure [dbo].[PRC_ChartWorkGroup_GroupName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRC_ChartWorkGroup_GroupName]
			(
			   @UserID INT = 1
			)
AS
	SELECT *
	INTO #temp 
	FROM dbo.FromOrganizations WITH (NOLOCK)

	SELECT * 
	INTO #temp2
	FROM ChartWorkGroup

	SELECT 
		a.Id,
		a.FromOrgID,
		c.GroupName AS GroupName1 ,
		a.SecondOrgID,
		f.GroupName AS GroupName2 ,
		a.TreeOrgID,
		h.GroupName AS GroupName3 ,
		a.FourOrgID,
		j.GroupName AS GroupName4 ,
		a.FiveOrgID,
		l.GroupName AS GroupName5 

	FROM dbo.Users a WITH (NOLOCK)
	LEFT JOIN #temp b WITH(NOLOCK)
	  ON ISNULL(a.FromOrgID,0) = b.ID
	LEFT JOIN #temp2 c WITH(NOLOCK)
	  ON ISNULL(b.Groupid,0) = c.GroupID

	LEFT JOIN #temp e WITH(NOLOCK)
	  ON a.SecondOrgID = e.ID
	LEFT JOIN #temp2 f WITH(NOLOCK)
	  ON e.Groupid = f.GroupID


	LEFT JOIN #temp g WITH(NOLOCK)
	  ON a.TreeOrgID = g.ID
	LEFT JOIN #temp2 h WITH(NOLOCK)
	  ON g.Groupid = h.GroupID

	LEFT JOIN #temp i WITH(NOLOCK)
	  ON a.FourOrgID = i.ID
	LEFT JOIN #temp2 j WITH(NOLOCK)
	  ON i.Groupid = j.GroupID

	LEFT JOIN #temp k WITH(NOLOCK)
	  ON a.FiveOrgID = k.ID
	LEFT JOIN #temp2 l WITH(NOLOCK)
	  ON k.Groupid = l.GroupID
	WHERE a.id = @UserID
	DROP TABLE #temp
	DROP TABLE #temp2
GO
/****** Object:  StoredProcedure [dbo].[Prc_CreateTbDbName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Prc_CreateTbDbName]
	(
		 @DbName_New nvarchar(max) = 'ydabir1117'
		,@DbName_Old nvarchar(max) = 'ydabir9803'
	)
AS
DECLARE @SqlSelect  nvarchar(Max)
DECLARE @SqlInsert  nvarchar(Max)
SET @SqlSelect = '
					IF NOT EXISTS(
									SELECT * 
									FROM  ' + @DbName_New +'.sys.tables
									WHERE name = ''tbDbName''
								 )
					BEGIN
					CREATE TABLE '+  @DbName_New +'. [dbo].[tbDbName](
								[ID] [int] IDENTITY(1,1) NOT NULL,
								[Name] [nvarchar](100) NOT NULL,
								[ServerName] [nvarchar](100) NULL,
								[DBName] [nvarchar](100) NOT NULL,
							 CONSTRAINT [PK_tbDbName] PRIMARY KEY CLUSTERED 
							(
								[ID] ASC
							)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
							) ON [PRIMARY]

    
					END'
EXEC sp_executesql @SqlSelect

SET @SqlInsert = ' DELETE FROM '+  @DbName_New +'.[dbo].[tbDbName]
INSERT INTO '+  @DbName_New +'.[dbo].[tbDbName]
							   ([Name]
							   ,[ServerName]
							   ,[DBName])
					SELECT [Name]
							,[ServerName]
							,[DBName]
					FROM '+  @DbName_Old +'.[dbo].[tbDbName]
'
EXEC sp_executesql @SqlInsert
GO
/****** Object:  StoredProcedure [dbo].[PRC_FollowLetterNoLetterUpdate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRC_FollowLetterNoLetterUpdate]
	(
	   @Letterid INT = 91870
	)
AS
DECLARE @IndicatorID NVARCHAR(100)
DECLARE @FollowLetterNo NVARCHAR(100)
DECLARE @RetroactionNo NVARCHAR(100)
DECLARE @IncommingNO NVARCHAR(100)

SELECT 
   @IndicatorID = IndicatorID,
   @IncommingNO = IncommingNO
FROM Letter
WHERE letterid IN( 
					SELECT 
					   FR_LetterID
					FROM Follow_Retroaction_Letter
					Where Letterid = @Letterid
					AND FR_ID = (
									SELECT 
										MAX(FR_ID)--ROW_NUMBER()OVER(ORDER BY FR_ID DESC) AS Radif
									FROM Follow_Retroaction_Letter
									Where Letterid = @Letterid
                                )
				 )
SELECT 
    @FollowLetterNo = FollowLetterNo ,
	@RetroactionNo = RetroactionNo
FROM Letter
WHERE letterid  = @Letterid

IF  (
		SELECT 
		    COUNT(FR_LetterID) 
		FROM Follow_Retroaction_Letter
		WHERE Letterid = @Letterid
    ) > 1
BEGIN
  UPDATE Letter
  Set FollowLetterNo = ISNULL(@FollowLetterNo,'') + ','+ @IndicatorID
  ,   RetroactionNo  = ISNULL(@RetroactionNo,'') + ','+ @IncommingNO
  WHERE Letterid = @Letterid
END
IF  (
		SELECT 
		    COUNT(FR_LetterID) 
		FROM Follow_Retroaction_Letter
		WHERE Letterid = @Letterid
    ) = 1
BEGIN
  UPDATE Letter
  Set FollowLetterNo = @IndicatorID
  ,   RetroactionNo  = @IncommingNO
  WHERE Letterid = @Letterid
END

IF  (
		SELECT 
		    COUNT(FR_LetterID) 
		FROM Follow_Retroaction_Letter
		WHERE Letterid = @Letterid
    ) = 0
BEGIN
  UPDATE Letter
  Set FollowLetterNo = ''
  ,   RetroactionNo  = ''
  WHERE Letterid = @Letterid
END
GO
/****** Object:  StoredProcedure [dbo].[Prc_InserttoUser]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Prc_InserttoUser]
( @DbName_Old nvarchar(50) = 'ydabir9803'
 ,@DbName_New nvarchar(50) = 'ydabir1117'
 ,@UserID nvarchar(50) = '174'
 )
AS
DECLARE @sql nvarchar(max)
SET @sql = 
'IF NOT EXISTS 
(
	SELECT 
	    * 
	FROM ' + @DbName_New + '.[dbo].[Users]
	WHERE UserName = (
						SELECT 
						   UserName
						FROM ' + @DbName_Old + '.[dbo].[Users]
						WHERE ID = '+ @UserID + '
	                 )
)
BEGIN
INSERT INTO ' + @DbName_New + '.dbo.Users
           (Title,UserName,
		    PassWord,
		    AccessID,
			FromOrgID,
			DefualtSecretariatID,
			IsSecretariantStaffer,
			KartableGridInfo,
			DabirGridInfo,
			EndActiveDate,
			BeginActiveDate,
			AlternativeUserID,
			AlternativeEndDate,
			AlternativebeginDate,
			HasSecureLetterAccess,
			SecondOrgID,
			eCartableGridInfo,
			eCartableTheme,
			Email,Active,
			CanViewSecureRecommite,
			GroupID,
			CanRecommiteWithOtherOrg,
			canViewClassifiedArchiveDocs,
			archiveUserID,
			iscartableuser,
			TreeOrgID,
			FourOrgID,
			FiveOrgID)
SELECT 
     Title ,
	 UserName,
	 PassWord,
	 AccessID,
	 FromOrgID,
	 DefualtSecretariatID,
	 IsSecretariantStaffer,
	 KartableGridInfo,
	 DabirGridInfo,
	 EndActiveDate,
	 BeginActiveDate,
	 AlternativeUserID,
	 AlternativeEndDate,
	 AlternativebeginDate,
	 HasSecureLetterAccess,
	 SecondOrgID,
	 eCartableGridInfo,
	 eCartableTheme,
	 Email,
	 Active,
	 CanViewSecureRecommite,
	 GroupID,
	 CanRecommiteWithOtherOrg,
	 canViewClassifiedArchiveDocs,
	 archiveUserID,
	 iscartableuser,
	 TreeOrgID,
	 FourOrgID,
	 FiveOrgID
FROM ' + @DbName_Old+ '.[dbo].[Users]'+
'Where ID = ' + @UserID +
' END' 
EXEC sp_executesql @sql
GO
/****** Object:  StoredProcedure [dbo].[PRC_LetterFormula_Insert]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRC_LetterFormula_Insert]
	(
		@SecID int,
		@LetterFormulaPart1 varchar(50),
		@LetterFormulaPart2 varchar(50),
		@LetterFormulaPart3 varchar(50),
		@LetterFormulaPart4 varchar(50),
		@LetterFormulaPart5 varchar(50),
		@LetterFormulaPart6 varchar(50),
		@LetterFormulaSeperator varchar(50),
		@UseForWord bit,
		@letterTypeID int
	)
AS 

INSERT INTO [dbo].[LetterFormula]
           ([SecID]
           ,[LetterFormulaPart1]
           ,[LetterFormulaPart2]
           ,[LetterFormulaPart3]
           ,[LetterFormulaPart4]
           ,[LetterFormulaPart5]
           ,[LetterFormulaPart6]
           ,[LetterFormulaSeperator]
           ,[UseForWord]
           ,[letterTypeID])
     VALUES
           (@SecID,
            @LetterFormulaPart1,
            @LetterFormulaPart2,
            @LetterFormulaPart3,
            @LetterFormulaPart4,
            @LetterFormulaPart5,
            @LetterFormulaPart6,
            @LetterFormulaSeperator,
            @UseForWord,
            @letterTypeID)
GO
/****** Object:  StoredProcedure [dbo].[Prc_NumberOFUnReadMessages]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Prc_NumberOFUnReadMessages]
				(
				  @SecretariatID int = 0,
				  @OrgID         int = 3441
				)
AS
--DECLARE @SecretariatID int = 0
--DECLARE @OrgID int  = 3441
SELECT 
	 LetterID, 
	 OrgID, 
	 MAX(ID) MaxRcID 
	 INTO #tmpRC 
FROM dbo.ReCommites                          
WHERE OrgID = @OrgID
GROUP BY LetterID, OrgID     


SELECT 
   @OrgID,
   COUNT(*) CNT
FROM (
		SELECT TOP 100 PERCENT
			   RC.viewdate,
			   L.LetterID,
			   L.SignerID, 
			   L.IndicatorID, 
			   L.MYear,
			   L.subjectid, 
			   L.SecretariatID, 
			   L.Letter_Type,                                                    
			   L.letterformat, 
			   L.IncommingNO, 
			   L.Incommingdate, 
			   L.ClassificationID, 
			   L.UrgencyID,  
			   dbo.fn_trunc(L.memo,30) AS MemoLetter , 
			   L.Tostaffer,
			   L.SentLetterID,
			   L.AttachTitle, 
			   L.NumberOfAttachPages, 
			   L.NumberOfPage, 
			   L.ReceiveTypeID, 
			   L.UserID, 
			   dbo.RetroactionNo_LIST  (L.LetterID) AS RetroactionNo /*L.RetroactionNo*/,                             
			   L.UserMemo, 
			   L.RegistrationDate, 
			   L.toorgid,
			   L.fromorgid,
			   dbo.FollowLetterNo_LIST (L.LetterID) AS FollowLetterNo/*L.FollowLetterNo*/,  
			   --dbo.fn_trunc(L.LetterRecommites,30) ,
			   L.finalized,L.CenterNo,
			   L.CenterDate,
			   L.templateID,
			   L.headerID,
			   L.registrationTime,
			   L.fromstaffer,
			   L.sendStatusID,
			   L.LastUpdate,
			   L.UserTableID,             
			   CAST(indicatorid AS nvarchar(500)) InnerNo, 
			   PRC.OrgID,  
			   RC.ParentId, 
			   dbo.fn_trunc(RC.Paraph,30)  Paraph, 
			   RC.RecommiteDate, 
			   RC.RecommiteTime,  
			   RC.Proceeded, 
			   RC.ProceedDate, 
			   RecommiteTypes.id ReType,
			   RecommiteTypes.Title RecommitTypeTitle,                         
			   CASE WHEN fo.title IS NULL THEN 0 ELSE 1 END IsInner, 
			   ISNULL(ISNULL(FO.Title,foo.title),TTO.title) RecommiterTitle,
			   tto.title sendertitle,RC.recommiteid,                          
			   RC.id,  
			   RC.IsSecure, 
			   RC.StaffMemo, 
			   ISNULL(incommingno,indicatorid)  Yincommingno,
			   Secretariats.PreCode,
			   RC.IsCopy,
			   RC.IsCopy_In_Dabir,
			   RC.SentToDabir                        ,
			   dbo.has_Page(L.letterid) has_Page,        
			   dbo.has_WordPage(L.letterid) has_WordPage,                          
			   dbo.has_file(L.letterid) has_file, 
			   ISNULL(RC.DeadLineToint-35689,0) DeadLineDays,
			   --RTRIM(LTRIM(RC.ViewDate)),
			   RC.Deadlinedate   DeadLineDate ,
			   ' ' ChildParaph , 
			   ISNULL(ISNULL(FO.Title,foo.title),TTO.title)  ChildOrg ,  
			   RC.ActionTypeID ActionTypeID         , 
			   (dbo.FN_GetUserRecomCount(@OrgID, L.LetterID)) as UserRecomCount   , 
			   RC.IsAnswer , 
			   RC.ISFollowup , 
			   RC.Erja_Or_Answer_Date, 
			   'White' ColorFlag , 
			   (CASE WHEN dbo.FN_GetUserRecomCount(@OrgID, L.LetterID) > 1 THEN L.Memo +' ('+ CAST(dbo.FN_GetUserRecomCount(@OrgID, L.LetterID) AS varchar)+')' 
			   ELSE L.Memo END) AS MemoAndRecomUserCount , 
			   dbo.Has_Sign(L.letterid) AS Has_Sign, 
			   dbo.InnerNo(L.LetterID,l.Letter_Type) InnerNo2,
			   dbo.HasLetterForms(L.LetterID) HasLetterForms       ,
			   (
				SELECT 
					anjam_shod 
				FROM letter 
				WHERE letter.LetterID = RC.LetterID
			   ) AS anjam_shod_status       
		FROM ReCommites RC       
		INNER JOIN #tmpRC 
		   ON RC.LetterID = #tmpRC.LetterID 
		   AND RC.OrgID = #tmpRC.OrgID 
		   AND RC.ID = #tmpRC.MaxRcID      
		INNER JOIN Letter L 
		   ON RC.LetterID = L.LetterID              
		INNER JOIN Secretariats  
		   ON Secretariats.Secid = L.SecretariatID      
		LEFT JOIN LetterTypes 
		   ON L.Letter_Type=LetterTypes.ID              
		LEFT JOIN ReCommites PRC 
		   ON RC.LetterID = PRC.LetterID 
		   AND PRC.ID = RC.ParentId  
		   AND PRC.type = RC.type      
		LEFT JOIN ReCommites rRC 
		   ON RrC.LetterID = L.LetterID 
		   AND rRC.Id=1 
		   AND rrc.type<>1      
		LEFT JOIN FromOrganizations FoO 
		   ON FoO.ID = rRC.OrgID 
		   AND rrc.orgid <> @OrgID            
		LEFT JOIN FromOrganizations FO 
		   ON FO.ID = PRC.OrgID              
		LEFT JOIN FromOrganizations TTO 
		   ON TTO.ID = L.ToOrgID               
		LEFT JOIN FromOrganizations Receiver 
		   ON Receiver.ID = L.FromOrgID               
		INNER JOIN RecommiteTypes 
		   ON RC.Type = RecommiteTypes.ID 
		WHERE   1=1--(RC.Finallized=1) 
			AND (RC.OrgID = @OrgID)  
			AND (RC.Proceeded = 0)  
			--AND  L.myear>= 97 
			AND (L.LetterFormat =1) 
			--AND (RC.RecommiteDate between '1397/01/01' AND '1397/09/14') 
			AND (SecretariatID = @SecretariatID OR @SecretariatID = 0) 
			--AND (ISNULL(RC.DeadLineToint ,35689)  -35689 )<= 0 
			AND ISNULL(rc.viewdate,'0') = '0'
		--ORDER BY  
		--    RC.recommitedate DESC,
		--	L.indicatorid    DESC

     )SUB1
DROP TABLE #tmpRC
GO
/****** Object:  StoredProcedure [dbo].[Prc_NumberOFUnReadMessagesForOrgId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Prc_NumberOFUnReadMessagesForOrgId] 
		(
		   @Userid int = 34
		)
AS
BEGIN
		DECLARE @VALUE nvarchar(MAX)
        DECLARE @SematNAme nvarchar(MAX) 

		DECLARE @Date nvarchar(20) 
		SET @Date = (  SELECT  dbo.Shamsi( CAST(GETDATE() AS date) )  )

		CREATE TABLE #tableOrgID( id int ,SematName nvarchar(200))
		INSERT INTO #tableOrgID
		EXEC Select_UserOrgid @Userid,@date 

		CREATE TABLE #CountUnReadLetter( OrgID int,CNT nvarchar(200))

		DECLARE @ID int
		DECLARE @name nvarchar(200)
		DECLARE CURS1 CURSOR FOR
			SELECT 
			   id,
			   SematName 
			FROM #tableOrgID
		OPEN CURS1
		  FETCH NEXT FROM CURS1
		  INTO @ID, @name
		WHILE @@FETCH_STATUS = 0  
		BEGIN 
			 INSERT INTO #CountUnReadLetter
			 EXEC Prc_NumberOFUnReadMessages 0,@id
		  FETCH NEXT FROM CURS1
		  INTO @ID, @name
		END
		CLOSE CURS1;  
		DEALLOCATE CURS1;

		DECLARE CURS2 CURSOR FOR
		SELECT 
		     CAST(b.SematName AS nvarchar(200) ) + '-' + CAST( a.CNT AS nvarchar(200) ) --AS Cnt 
		FROM #CountUnReadLetter a
		INNER JOIN #tableOrgID b
		  ON a.OrgID = b.id
		OPEN CURS2
		  FETCH NEXT FROM CURS2
		  INTO @VALUE
		WHILE @@FETCH_STATUS = 0  
		BEGIN 
		  IF ISNULL(@SematNAme,'') = ''
		   SET @SematNAme = @VALUE + Char(10)+CHar(13)
          ELSE
		  SET @SematNAme  = @SematNAme + @VALUE + Char(10)+CHar(13) 
		  FETCH NEXT FROM CURS2
		  INTO @VALUE
		END
		CLOSE CURS2;  
		DEALLOCATE CURS2;	
        
		SELECT @SematNAme AS Cnt
					 
		DROP TABLE #tableOrgID
		DROP TABLE #CountUnReadLetter
END
/*BEGIN
		DECLARE @Date nvarchar(20) 
		SET @Date = (  SELECT  dbo.Shamsi( CAST(GETDATE() AS date) )  )

		CREATE TABLE #tableOrgID( id int ,SematName nvarchar(200))
		INSERT INTO #tableOrgID
		EXEC Select_UserOrgid @Userid,@date 

		CREATE TABLE #CountUnReadLetter( OrgID int,CNT nvarchar(200))

		DECLARE @ID int
		DECLARE @name nvarchar(200)
		DECLARE CURS1 CURSOR FOR
			SELECT 
			   id,
			   SematName 
			FROM #tableOrgID
		OPEN CURS1
		  FETCH NEXT FROM CURS1
		  INTO @ID, @name
		WHILE @@FETCH_STATUS = 0  
		BEGIN 
			 INSERT INTO #CountUnReadLetter
			 EXEC Prc_NumberOFUnReadMessages 0,@id
		  FETCH NEXT FROM CURS1
		  INTO @ID, @name
		END
		CLOSE CURS1;  
		DEALLOCATE CURS1;
		SELECT 
		     CAST(b.SematName AS nvarchar(200) ) + '-' + CAST( a.CNT AS nvarchar(200) )
		FROM #CountUnReadLetter a
		INNER JOIN #tableOrgID b
		  ON a.OrgID = b.id

		DROP TABLE #tableOrgID
		DROP TABLE #CountUnReadLetter
END
*/
GO
/****** Object:  StoredProcedure [dbo].[Prc_Settings_Insert_Update]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Prc_Settings_Insert_Update]
     (
            @Value nvarchar(255)
           ,@VariableName varchar(50)
           ,@VariableName_New varchar(50)
		   ,@DbName_New nvarchar(50)

     )
AS
	DECLARE @sql nvarchar(max)
	SET @sql = '
	IF EXISTS (
				SELECT 
				   * 
				FROM ' + @DbName_New + '.dbo. Settings
				WHERE VariableName = ' + ''''+ @VariableName + ''''+ '
			  )
	BEGIN
	   UPDATE ' + @DbName_New + '.dbo.Settings
	   SET VariableName = ' + ''''+@VariableName_New + '''' +'
	   WHERE VariableName = ' + ''''+ @VariableName + '''' +'
	END
	ELSE
	BEGIN
		INSERT INTO ' + @DbName_New + '.[dbo].[Settings]
				   ([UserID]
				   ,[VariableId]
				   ,[Value]
				   ,[VariableName])
			 VALUES
				   (-1
				   ,''''
				   ,' + ''''+ @Value +''''+'
				   ,'+''''+ @VariableName_New + ''''+')
	END '
	EXEC sp_executesql @sql
GO
/****** Object:  StoredProcedure [dbo].[PrcCheckAccessForShow]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PrcCheckAccessForShow]
(
	  @letterID INT = 76469
	 ,@UserID INT =   34
)
AS
	DECLARE @Letter_Type INT  
	DECLARE @AccessID INT 


	SELECT 
	   @AccessID = AccessID 
	FROm Users
	Where ID = @userID 

	SELECT 
	  @Letter_Type = Letter_Type 
	FROM Letter
	WHERE LetterID = @letterID



	IF @Letter_Type = 1 --وارده
	BEGIN
	  SELECT ISNULL(IsIncom,0)AS IsShow FROM Accesses
	  WHERE ID = @AccessID
	END
	IF @Letter_Type = 2 --صادره
	BEGIN
	  SELECT ISNULL(IsExp,0) AS IsShow FROM Accesses
	  WHERE ID = @AccessID
	END
	IF @Letter_Type = 3 --داخلي
	BEGIN
	  SELECT ISNULL(IsInter,0) AS IsShow FROM Accesses
	  WHERE ID = @AccessID
	END
	IF @Letter_Type = 4 --مدرک
	BEGIN
	  SELECT ISNULL(IsDoc,0) AS IsShow FROM Accesses
	  WHERE ID = @AccessID
	END
GO
/****** Object:  StoredProcedure [dbo].[PRCDbName_Delete]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRCDbName_Delete]
(
  @ID INT
)
As
DELETE FROM [dbo].[tbDbName]
      WHERE ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[PRCDbName_Select]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRCDbName_Select]
AS
	SELECT [ID]
			,[Name]
			,[ServerName]
			,[DBName]
	FROM [dbo].[tbDbName]
GO
/****** Object:  StoredProcedure [dbo].[PRCDbName_Select_Check]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[PRCDbName_Select_Check]
	(
		 @DbName_New nvarchar(max) = 'ydabirtakhsistest'
	)
AS
	DECLARE @sqlSelect nvarchar(MAX)
	DECLARE @sqlDrop   nvarchar(MAX)

	SET @sqlDrop = '
	USE  '+ @DbName_New +'
	IF EXISTS
	(
	SELECT * 
	FROM sys.objects
	WHERE name =  ''PRCDbName_Select''
	)
	BEGIN
	  DROP PROC PRCDbName_Select
	END'
	SET @sqlSelect = '
						CREATE PROC [PRCDbName_Select]
						AS
						SELECT [ID]
							  ,[Name]
							  ,[ServerName]
							  ,[DBName]
						  FROM [dbo].[tbDbName]
	'
	EXEC sp_executesql @sqlDrop
	EXEC sp_executesql @sqlSelect
GO
/****** Object:  StoredProcedure [dbo].[Recommite_has_JpgFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE  procedure [dbo].[Recommite_has_JpgFile](@RecommiteID  int,@hasJpg bit output)
as
if exists(select  *
from Recommitedata
where RecommiteID=@RecommiteID
and Extention=1  and image is not null)  set @hasJpg=1 else set @hasJpg=0





GO
/****** Object:  StoredProcedure [dbo].[Recommite_Report]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[RemoveUnWantedWorkSheetApproved]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RemoveUnWantedWorkSheetApproved](@WorkSheetID INT, @ApprovedIDs VARCHAR(3000))
AS
BEGIN
	declare @Query varchar(3000)
	set @Query  = 'DELETE FROM WorkSheet_Results 
	WHERE WorkSheetBaseID = '+Cast(@WorkSheetID AS VARCHAR(5)) +
		'	AND ID NOT IN ' + @ApprovedIDs
			
	EXEC (@Query)
END
GO
/****** Object:  StoredProcedure [dbo].[RemoveUnWantedWorkSheetAppUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RemoveUnWantedWorkSheetAppUsers](@WorkSheetID INT, @UsersIDs VARCHAR(3000))
AS
BEGIN
	declare @Query varchar(3000)
	set @Query  = 'DELETE FROM WorkSheet_ResultUsers 
	WHERE WorkSheet_ResultsID = '+Cast(@WorkSheetID AS VARCHAR(5)) +
		'	AND UserID NOT IN ' + @UsersIDs
			
	EXEC (@Query)
END
GO
/****** Object:  StoredProcedure [dbo].[RemoveUnWantedWorkSheetUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RemoveUnWantedWorkSheetUsers](@WorkSheetID INT, @Type INT, @UsersIDs VARCHAR(3000))
AS
BEGIN
	DECLARE @query VARCHAR(5000)
	SET @query = ' DELETE FROM '
	
	IF @Type = 1
		SET @query = @query + 'WorkSheet_Sessions'
	ELSE IF @Type = 2
		SET @query = @query + 'WorkSheet_Visits'
	ELSE
		SET @query = @query + 'WorkSheet_Tasks'
		
	SET @query = @query + ' WHERE WorkSheetBaseID = '+ CAST(@WorkSheetID AS VARCHAR(5))
	SET @query = @query + ' AND UserID NOT IN '+ @UsersIDs
	
	--PRINT @query;
	EXEC (@query)
END	
GO
/****** Object:  StoredProcedure [dbo].[Repo_Deadlne]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Repo_Deadlne] 
						@SecretariatID  int = 0
					   ,@myear          int = 97
					   ,@RecommitFlag   int = 0
					   ,@UserID         int = 5
					   ,@IndicatorID    int = 469
					   ,@UserMemo       nvarchar(500) = ''
					   ,@FromRegistrationDate nvarchar(10) = '1397/01/03'
					   ,@toRegistrationDate   nvarchar(10) = '1397/06/29'
					   ,@SenderTitle nvarchar(500) = ''--'جناب آقاي مهندس مقدمي '
					   ,@Memo        nvarchar(max) = ''
					   ,@Paraph      nvarchar(max) = ''
					   ,@OrgId       nvarchar(100) = '0'
					   ,@FromRecommiteDate nvarchar(10) = '1397/01/01'
					   ,@ToRecommiteDate   nvarchar(10)   = '1397/06/29'
					   ,@FromProceedDate   nvarchar(10)    = ''
					   ,@ToProceedDate     nvarchar(10)    = ''
					   ,@FromDeadLineDate  nvarchar(10) = ''
					   ,@ToDeadLineDate    nvarchar(10) = ''
					   ,@Proceeded         int  = -1
					   ,@Letter_Type   nvarchar(50) = '0'
					   ,@User_New      int = -1
					   
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @FOrgID int,
        @SecretariatID_New nvarchar(max),
		@Today  char(10)

	SELECT @today = dbo.shamsi(getdate())

	SELECT @FOrgID=FromOrgID 
		FROM Users 
		WHERE Id=@UserID

	UPDATE ReCommites
		SET DeadLineDate = null
		WHERE DeadLineDate =''
 
	CREATE TABLE #TEMP ([ID] NVARCHAR(100))
	
	IF @SecretariatID > 0 
	BEGIN
		INSERT INTO #temp (ID) VALUES (@SecretariatID)
	END
	
	IF @SecretariatID =  0 
	BEGIN
		DECLARE @SecId nvarchar(500)  
   
		DECLARE SecId_cursor CURSOR FOR
			SELECT SecId 
				FROM UserSecretariats 
				WHERE userid = @UserID
		OPEN SecId_cursor
		FETCH NEXT FROM SecId_cursor   INTO @SecId
		WHILE @@FETCH_STATUS = 0  
		BEGIN 
			INSERT INTO #temp (ID) VALUES (@SecId)
			FETCH NEXT FROM SecId_cursor   INTO @SecId
		END   
		CLOSE SecId_cursor  
		DEALLOCATE SecId_cursor  
	END
	


	SELECT @today = dbo.shamsi(getdate())
	SELECT  
		L.LetterID, 
		L.IndicatorID,
		L.IncommingDate,
		L.IncommingNo, 
		L.Memo, 
		L.RetroactionNo,
		L.RegistrationDate, 
		L.FollowLetterNo, 
		L.ToStaffer,
		sender.Title AS SenderTitle,
		Deliver.Title AS DeliverTitle,
		LetterTypes.Title LetterTypeTitle,
		LetterRecommites, 
		RC.Paraph,
		RC.RecommiteDate,  
		RC.Proceeded, 
		RC.ProceedDate, 
		RecommiteTypes.Title RecommitTypeTitle,
		ISNULL(PFO.Title,SENDER.title) RecommiterTitle,
		Fo.Title Recommited, 
		RC.ViewDate, 
		RC.StaffMemo,
	/*  CASE WHEN (prc.DeadLineDate IS NOT NULL AND prc.DeadLineDate <> '') AND  Rc.Proceeddate <> '' THEN 
        dbo.shamsidatediff(prc.DeadLineDate,ISNULL(Rc.Proceeddate,@today)) ELSE 0 END DeadlineDays,
		dbo.shamsidatediff(rc.DeadLineDate,ISNULL(Rc.Proceeddate,@today))  DeadlineDays, */
		dbo.shamsidatediff(rc.DeadLineDate,ISNULL(Rc.Proceeddate,@today))  DeadlineDays,
		RC.DeadLineDate,
		dbo.shamsidatediff(rc.Recommitedate,ISNULL(Rc.Proceeddate,@today)) ProgressDays,
		ActionTypeTitle,
		Secretariats.SecTitle  
	From ReCommites RC 
		LEFT JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
		INNER JOIN Letter L ON RC.LetterID = L.LetterID
		INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
		LEFT JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
		LEFT JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
		LEFT JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
		LEFT JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
		LEFT JOIN LetterTypes ON LetterTypes.ID=l.Letter_type 
		LEFT JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID 
		LEFT JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionTypeID
	Where (l.letter_type =  @letter_type  OR @letter_type = '0' )
		/* AND ( RC.OrgID = @FOrgID ) */
		AND ( RC.OrgID = @FOrgID OR @user_new = -1 ) 
		AND ( l.LetterFormat <3 ) 
		AND  L.myear = @myear
		AND SecretariatID in ( SELECT 
	                            ID 
							FROM #temp)
		AND ( IndicatorID = @IndicatorID OR @IndicatorID = 0 )
		AND ( l.UserMemo = @UserMemo OR @UserMemo = 'NULL' )
		AND ( l.RegistrationDate >= @fromRegistrationDate OR @fromRegistrationDate = 'NULL' )
		AND ( l.RegistrationDate<= @toRegistrationDate OR  @toRegistrationDate = 'NULL')
		AND ( Deliver.Title LIKE ''+ '%' + @SenderTitle + '%'+ '' OR @SenderTitle = 'NULL' )
		AND ( L.Memo LIKE ''+ '%' + @Memo + '%'+ '' OR @Memo = 'NULL' )
		AND ( RC.Paraph LIKE '' + '%' + @Paraph + '%' + '' OR @Paraph = 'NULL' )
		AND ( RC.OrgId = @OrgId or @OrgId = '0') 
		/* AND RC.RecommiteDate>= @FromRecommiteDate
		AND RC.RecommiteDate<= @ToRecommiteDate */
		AND (RC.ProceedDate>= @FromProceedDate OR @FromProceedDate = 'NULL')
		AND (RC.ProceedDate<= @ToProceedDate OR @ToProceedDate = 'NULL' )
		AND (@Today > rc.DeadLineDate )
		AND (RC.DeadLineDate between  @FromRecommiteDate and @ToRecommiteDate )
	ORDER BY 
	       rc.recommitedate DESC,
		   l.indicatorid    DESC
	DROP TABLE #temp	
END
GO
/****** Object:  StoredProcedure [dbo].[Report_Scan]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create  Procedure [dbo].[Report_Scan]
@where nvarchar(1000),@Extention tinyint
as
set @extention=2
declare @sqlCommand nvarchar(4000)
set @sqlCommand='select
  LetterFormats.Title AS FormatTitle, LetterTypes.Title LetterTypeTitle, Count(*) All_cnt ,sum(case when ld.letterid is null then 1 else 0 end  ) Scanned
from Letter as L
  left join (Select distinct letterid from letterdata where extention in (1,2)) ld on ld.letterid=l.letterid
  Left JOIN LetterFormats ON L.letterformat = LetterFormats.Code
 left JOIN LetterTypes ON l.Letter_type = LetterTypes.ID'
set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>''
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand+' group by LetterFormats.Title, LetterTypes.Title '

exec sp_executesql @sqlCommand

GO
/****** Object:  StoredProcedure [dbo].[Report_UserLog]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Report_UserLog]
@Secretariatid Int,
@myear Int,
@where Nvarchar(2000),
@Count Nvarchar(5)
AS
 
	DECLARE @sqlCommand NVARCHAR(4000)

	SET @sqlCommand='SELECT top '+@Count+' ApplicationForms.Title AS FormTitle, Users.Title AS UserTitle,Users.UserName, Actions.Title AS ActionTitle,
	(CASE  WHEN letterformat=3 THEN (isnull((SELECT IndicatorID FROM deletedletters WHERE LetterID=letter.letterid),letter.indicatorid)) ELSE letter.IndicatorID END)AS indicatorid ,
	 LetterTypes.Title AS LetterType, Letter.IncommingNO, Letter.Incommingdate, Letter.RegistrationDate, Letter.Memo, dbo.Shamsi(UserLog.Time1) AS Date, right(cast(UserLog.Time1 as varchar(50)),7) as Time
	FROM       UserLog
	INNER JOIN Users            ON Users.Id = UserLog.UserID
	INNER JOIN Actions          ON UserLog.ActionID = Actions.ID AND UserLog.FormID=Actions.FormTag
	INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.FormTag
	LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterID
	LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.ID '

	SET @where=ISNULL(LTRIM(RTRIM(@where)),'')
	IF @where <> '' 
		SET @where =' and '+@where

	IF @Secretariatid<>0
	  SET @where=@where+' and (Secretariatid = '+CAST(@Secretariatid AS VARCHAR(5))+')'

	IF @Myear <> 0
	  SET @where=@where+' and (myear = '+CAST(@myear AS VARCHAR(5))+')'

	IF SUBSTRING(@where,1,4)=' and' 
		SET @where=' where '+SUBSTRING(@where,5,4000)

	SET @sqlCommand=@sqlCommand+@where + ' order by time1  '
	EXEC(@sqlCommand)
GO
/****** Object:  StoredProcedure [dbo].[Report_UserTable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Report_UserTable]
@tableID int,@LetterWhere nvarchar(2000),@UserTableWhere nvarchar(2000)
as

	Declare @sql Nvarchar(4000)

	IF OBJECT_ID('tempdb..##Uletters') IS NOT NULL 
		DROP TABLE ##Uletters
	
	Set @sql= 'Select LetterID Into ##Uletters From Letter '

	If @UserTableWhere<>'' 
		set @sql=@sql+' where  '+@UserTableWhere

	Exec(@SQL)

	If OBJECT_ID('tempdb..##r') IS NOT NULL 
		DROP TABLE ##r
	
	set @sql='Select lf.LetterID LetterID,lf.ID formorder into ##r from LetterForms lf inner join ##Uletters on ##Uletters.LetterID=lf.LetterID'

	exec(@Sql)

	IF OBJECT_ID('tempdb..##m') IS NOT NULL 
		DROP TABLE ##m
	 
	set @sql= 'create  table ##m (LetterID int '

	SELECT     top 60 identity(int,1,1) id , Fields.Description,cast (fields.id as int ) fieldid,ReferenceTableID into #Fields
	FROM      Fields
	WHERE     (tableid = @tableID)
	order by [order]

	SELECT     @sql=@sql+' ,['+isnull(Description,'')+'] nvarchar(2000)'
	FROM      #Fields 
	set @sql= @sql+')'

	exec(@sql)
	declare @insert  varchar(max)

	set @insert= 'insert into ##m select LetterID'

	SELECT    @insert=@insert+
	case when ReferenceTableID is null then 
	',(select FieldValue from LetterFieldValue where FieldId='+cast(fieldid as varchar(10))+' and letterid=r.LetterID and LetterFieldValue.formorder=r.formorder) 
	'
	else
	',(select DataTitle From ReferenceTableData where tableid='+cast(ReferenceTableID as varchar(8))+'
	 and DataID=(select FieldValue from LetterFieldValue where FieldId='+cast(fieldid as varchar(10))+' and letterid=r.LetterID and 
	LetterFieldValue.formorder=r.formorder)) '
	end
	FROM      #Fields

	set @insert= @insert+' from ##r r '
	exec(@insert)

	declare @slct  varchar(max)

	set @slct='SELECT DISTINCT ##m.*,IndicatorID,IncommingNO,IncommingDate,CenterNo,CenterDate '+
			  ',Memo,RetroactionNo,UserMemo,RegistrationDate,FollowLetterNo,LetterRecommites   '+
			  ',sender.Title AS SenderTitle ,Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,ActionTypeTitle '+
			  'FROM  ##m                                                                                                     '+
			  'inner join Letter on ##m.Letterid=Letter.Letterid                                                             '+
			  'left  JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID                                             '+ 
			  'left JOIN  FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                                         '+
			  'Left join LetterTypes on LetterTypes.ID=Letter.Letter_type                                                    '+
			  'left join Secretariats on Secretariats.Secid=Letter.SecretariatID                                             '+
			  'left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID                                  '
			  IF RTRIM(LTRIM(@LetterWhere))  <> '' SET @slct=@slct+ ' where ' + @LetterWhere

	exec(@slct)


	drop table ##m  
	drop table ##Uletters
	drop table ##r

GO
/****** Object:  StoredProcedure [dbo].[SaveAs_Accesses]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SaveAs_Accesses]
(
	@Title nvarchar(50),
	@oldaccessID int,
	@newID int output
)

AS

Delete From ActionsAccess Where AccessID Not In (Select ID From accesses)

Insert Into [dbo].[Accesses] ([Title]) Values(@Title)

Select @newID = max(ID) From accesses

Insert Into ActionsAccess(accessid, ActionID, FormTag, HasAccess)
	Select Distinct @newid, ActionID, FormTag, HasAccess
		From ActionsAccess
		Where accessid=@oldaccessID

Insert Into ActionsAccess(accessid, ActionID, FormTag, HasAccess)
	Select Distinct Accesses.ID AS accessid, Actions.ID AS actionid, Actions.FormTag, 0 AS hasaccess
	From Actions , Accesses
	Where (str(Accesses.ID) + Actions.ID + str(Actions.FormTag)) Not In (select str(accessid) + ActionID + str(FormTag) from ActionsAccess)
GO
/****** Object:  StoredProcedure [dbo].[SaveWorkSheetApproved]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCedure [dbo].[SaveWorkSheetApproved](@WorkSheetID INT, @ApprovedID INT, @Description VARCHAR(4000), @RegDate_Shamsi VARCHAR(10), @RegUserID INT)
AS
BEGIN
	DECLARE @exists BIT
	IF EXISTS(SELECT * FROM WorkSheet_Results WHERE WorkSheetBaseID = @WorkSheetID AND ID = @ApprovedID)
		SET @exists = 1
	ELSE
		SET @exists = 0
		
	IF(@exists = 1)
		UPDATE WorkSheet_Results SET DESCRIPTION = @Description, RegUserID = @RegUserID 
		WHERE WorkSheetBaseID = @WorkSheetID AND ID = @ApprovedID
	ELSE
		INSERT INTO WorkSheet_Results(WorkSheetBaseID,	[Description],	RegDate_Shamsi,	RegUserID)
		VALUES(	@WorkSheetID,	@Description,	@RegDate_Shamsi,	@RegUserID)
END
GO
/****** Object:  StoredProcedure [dbo].[SaveWorkSheetApprovedUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCedure [dbo].[SaveWorkSheetApprovedUsers](@WorkSheetID INT, @UserID INT, @DateToDo VARCHAR(10))
AS
BEGIN
	DECLARE @exists BIT
	IF EXISTS(SELECT * FROM WorkSheet_ResultUsers WHERE WorkSheet_ResultsID = @WorkSheetID AND UserID = @UserID)
		SET @exists = 1
	ELSE
		SET @exists = 0
		
	IF(@exists = 1)
		UPDATE WorkSheet_ResultUsers SET DoAtDate = @DateToDo WHERE WorkSheet_ResultsID = @WorkSheetID AND UserID = @UserID
	ELSE
		INSERT INTO WorkSheet_ResultUsers(WorkSheet_ResultsID,	UserID,	DoAtDate)
		VALUES	(@WorkSheetID,	@UserID,@DateToDo)
END
GO
/****** Object:  StoredProcedure [dbo].[SaveWorkSheetDetails]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveWorkSheetDetails](@WorkSheetID INT
                , @Type Int
                , @RegUserID Int
                , @RegDate_Shamsi NVARCHAR(10)
                , @Year_Shamsi NVARCHAR(4)
                , @Month_Shamsi NVARCHAR(10)
                , @Day_Shamsi NVARCHAR(2)
                , @Place NVARCHAR(2000)
                , @Subject NVARCHAR(2000)
                , @ImportantLevel Int
                , @Description NVARCHAR(2000)
                , @ManagerUserID Int
                , @Status Int
                , @SendNews Bit
                , @Monshi Int
                , @BeginTimeHour NVARCHAR(2)
                , @BeginTimeMinute NVARCHAR(2)
                , @EndTimeHour NVARCHAR(2)
                , @EndTimeMinute NVARCHAR(2)
                , @IsForWeb BIT = 0
                , @OutWorkSheetID INT=NULL OUTPUT)
AS
BEGIN
	IF @WorkSheetID = 0
	BEGIN
		INSERT INTO WorkSheet_Base([Type], RegUserID, RegDate_Shamsi, Year_Shamsi, Month_Shamsi, Day_Shamsi, Place
                , [Subject], ImportantLevel, [Description], ManagerUserID, [Status], SendNews, Monshi, BeginTimeHour
                , BeginTimeMinute, EndTimeHour, EndTimeMinute, isForWeb)
			VALUES(@Type, @RegUserID, @RegDate_Shamsi, @Year_Shamsi, @Month_Shamsi, @Day_Shamsi, @Place
				, @Subject, @ImportantLevel, @Description, @ManagerUserID, @Status, @SendNews, @Monshi, @BeginTimeHour
				, @BeginTimeMinute, @EndTimeHour, @EndTimeMinute, @IsForWeb)
				
		SELECT @OutWorkSheetID = MAX(ID) FROM WorkSheet_Base
	END
	ELSE
	BEGIN
		UPDATE WorkSheet_Base
		SET
			[Type] = @Type,
			RegUserID = @RegUserID,
			RegDate_Shamsi = @RegDate_Shamsi,
			Year_Shamsi = @Year_Shamsi,
			Month_Shamsi = @Month_Shamsi,
			Day_Shamsi = @Day_Shamsi,
			Place = @Place,
			[Subject] = @Subject,
			ImportantLevel = @ImportantLevel,
			[Description] = @Description,
			ManagerUserID = @ManagerUserID,
			[Status] = @Status,
			SendNews = @SendNews,
			Monshi = @Monshi,
			BeginTimeHour = @BeginTimeHour,
			BeginTimeMinute = @BeginTimeMinute,
			EndTimeHour = @EndTimeHour,
			EndTimeMinute = @EndTimeMinute
		WHERE id = @WorkSheetID
		
		SET @OutWorkSheetID = @WorkSheetID
	END
END            
GO
/****** Object:  StoredProcedure [dbo].[SaveWorkSheetSessionUser]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveWorkSheetSessionUser](@WorkSheetID INT, 
										@Description NVARCHAR(3000) = NULL,
										@MustCome INT = 2,
										@WithAlarm BIT = NULL,
										@RegUserID INT,
										@RegDate_Shamsi VARCHAR(10),
										@RegDate_Miladi VARCHAR(50) = NULL,
										@UserID INT,
										@UserResponse INT,
										@UserDescription NVARCHAR(3000) = NULL,
										@AddedSubject VARCHAR(3000) = NULL)
AS
BEGIN
	DECLARE @IsForEdit BIT
	SET @IsForEdit = 0
	
	IF EXISTS(SELECT * FROM WorkSheet_Sessions wst WHERE wst.WorkSheetBaseID = @WorkSheetID AND wst.UserID = @UserID)
		SET @IsForEdit = 1;
		
	IF @IsForEdit = 0
		INSERT INTO WorkSheet_Sessions(WorkSheetBaseID,[Description],	WithAlarm,RegUserID,RegDate_Shamsi,
			RegDate_Miladi,UserID,UserResponse,	UserDescription, MustCome, AddedSubject)
		VALUES
		(
			@WorkSheetID,@Description,	@WithAlarm,	@RegUserID,	@RegDate_Shamsi,
			@RegDate_Miladi,	@UserID,	@UserResponse,	@UserDescription, @MustCome, @AddedSubject
		)
	ELSE
	BEGIN
		UPDATE WorkSheet_Sessions
		SET
			[Description] = @Description,
			MustCome = @MustCome,
			WithAlarm = @WithAlarm,
			UserResponse = @UserResponse,
			UserDescription = @UserDescription,
			AddedSubject = @AddedSubject
		WHERE WorkSheetBaseID = @WorkSheetID AND UserID = @UserID-- AND
			--USERID NOT IN (SELECT ManagerUserID FROM WorkSheet_Base wsb WHERE wsb.ID = @WorkSheetID) AND
			--USERID NOT IN (SELECT wsb.Monshi
			--                 FROM WorkSheet_Base wsb WHERE wsb.ID = @WorkSheetID)
	END
END	
GO
/****** Object:  StoredProcedure [dbo].[SaveWorkSheetTaskUser]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveWorkSheetTaskUser](@WorkSheetID INT, 
										@Description NVARCHAR(3000) = NULL,
										@Status INT,
										@WithAlarm BIT = NULL,
										@RegUserID INT,
										@RegDate_Shamsi VARCHAR(10),
										@RegDate_Miladi VARCHAR(50) = NULL,
										@UserID INT,
										@UserResponse INT,
										@UserDescription NVARCHAR(3000) = NULL)
AS
BEGIN
	DECLARE @IsForEdit BIT
	SET @IsForEdit = 0
	
	IF EXISTS(SELECT * FROM WorkSheet_Tasks wst WHERE wst.WorkSheetBaseID = @WorkSheetID AND wst.UserID = @UserID)
		SET @IsForEdit = 1;
		
	IF @IsForEdit = 0
		INSERT INTO WorkSheet_Tasks(WorkSheetBaseID,[Description],[Status],	WithAlarm,RegUserID,RegDate_Shamsi,
			RegDate_Miladi,UserID,UserResponse,	UserDescription	)
		VALUES
		(
			@WorkSheetID,@Description,	@Status,	@WithAlarm,	@RegUserID,	@RegDate_Shamsi,
			@RegDate_Miladi,	@UserID,	@UserResponse,	@UserDescription
		)
	ELSE
	BEGIN
		UPDATE WorkSheet_Tasks
		SET
			[Description] = @Description,
			[Status] = @Status,
			WithAlarm = @WithAlarm,
			UserResponse = @UserResponse,
			UserDescription = @UserDescription
		WHERE WorkSheetBaseID = @WorkSheetID AND UserID = @UserID --AND
			--USERID NOT IN (SELECT ManagerUserID FROM WorkSheet_Base wsb WHERE wsb.ID = @WorkSheetID) AND
			--USERID NOT IN (SELECT wsb.Monshi
			--                 FROM WorkSheet_Base wsb WHERE wsb.ID = @WorkSheetID)
	END
END		
GO
/****** Object:  StoredProcedure [dbo].[SaveWorkSheetVisitUser]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveWorkSheetVisitUser](@WorkSheetID INT, 
										@Description NVARCHAR(3000) = NULL,
										@WithAlarm BIT = NULL,
										@RegUserID INT,
										@RegDate_Shamsi VARCHAR(10),
										@RegDate_Miladi VARCHAR(50) = NULL,
										@UserID INT,
										@UserResponse INT,
										@UserDescription NVARCHAR(3000) = NULL)
AS
BEGIN
	DECLARE @IsForEdit BIT
	SET @IsForEdit = 0
	
	IF EXISTS(SELECT * FROM WorkSheet_Visits wst WHERE wst.WorkSheetBaseID = @WorkSheetID AND wst.UserID = @UserID)
		SET @IsForEdit = 1;
		
	IF @IsForEdit = 0
		INSERT INTO WorkSheet_Visits(WorkSheetBaseID,[Description],	WithAlarm,RegUserID,RegDate_Shamsi,
			RegDate_Miladi,UserID,UserResponse,	UserDescription)
		VALUES
		(
			@WorkSheetID,@Description,	@WithAlarm,	@RegUserID,	@RegDate_Shamsi,
			@RegDate_Miladi,	@UserID,	@UserResponse,	@UserDescription
		)
	ELSE
	BEGIN
		UPDATE WorkSheet_Visits
		SET
			[Description] = @Description,
			WithAlarm = @WithAlarm,
			UserResponse = @UserResponse,
			UserDescription = @UserDescription
		WHERE WorkSheetBaseID = @WorkSheetID AND UserID = @UserID-- AND
			--USERID NOT IN (SELECT ManagerUserID FROM WorkSheet_Base wsb WHERE wsb.ID = @WorkSheetID) AND
			--USERID NOT IN (SELECT wsb.Monshi
			--                 FROM WorkSheet_Base wsb WHERE wsb.ID = @WorkSheetID)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Select_AlternativeInfo_ByUserID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create Procedure [dbo].[Select_AlternativeInfo_ByUserID]
@UserID int
as
SELECT [Id]
      ,[AlternativeUserID]
      ,[AlternativebeginDate]
      ,[AlternativeEndDate]
  FROM  Users 
where id=@userID

GO
/****** Object:  StoredProcedure [dbo].[select_CiticalLetterFields]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[select_CiticalLetterFields]
	@LetterID int

AS
select   LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, letterformat
from Letter
WHERE LetterID=@LetterID





GO
/****** Object:  StoredProcedure [dbo].[Select_ExactCopy]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[Select_ExactCopy](@LetterID int) AS

Select recommites.*,org.title,org.IsInnerOrg
From recommites inner join fromorganizations org on org.id=orgid
where LetterID=@LetterID
 and type=1

GO
/****** Object:  StoredProcedure [dbo].[Select_FieldAccess_by_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


Create Procedure [dbo].[Select_FieldAccess_by_TableID]
@UserID int ,@TableID int
as

SELECT     *
FROM         FieldAccess
WHERE     (UserID = @UserID) AND (FieldID in ( SELECT  ID FROM   Fields WHERE TableID =@TableID))



GO
/****** Object:  StoredProcedure [dbo].[Select_Fields_by_TableID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Fields_by_TableID]
@LetterID int
as

	SELECT     *
		FROM      Fields
		WHERE TableID in ( SELECT UserTableID2  FROM   Letter WHERE LetterID =1220)
			OR TableID in ( SELECT UserTableID   FROM   Letter WHERE LetterID =1220)
GO
/****** Object:  StoredProcedure [dbo].[Select_FolllowUp_ByLetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE Procedure [dbo].[Select_FolllowUp_ByLetterID](@LetterID int, @userID int ,@StartFollowUpID int output)
as

  select top 1 @StartFollowUpID=StartFollowUpID
  from followup
  where letterid=@letterid and userid=@userID
set  @StartFollowUpID=isnull( @StartFollowUpID ,0)




GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_By_Date]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[Select_FollowUP_By_Date](@UserID int ,@BDate char(10), @Edate char(10),
@DonStatusID int)
as
declare @today char(10)
set @today=dbo.shamsi(getdate())

SELECT     FollowUPID,Letter.Letterid, FollowUp.StartFollowUpID, FollowUp.FollowUPTypeID, FollowUp.DoneStatusID,
 substring(ToDoDate,6,5) ToDoDate, HasAlarm,isnull(cast(Indicatorid as varchar(5))+' - '+Memo,Comment) Comment,
 FollowUPTypeTitle, DoneStatustitle, case when ToDoDate=@today then 0  when ToDoDate>@today then 1 else -1 end DelayStatus
FROM  FollowUp
left JOIN   Letter ON FollowUp.LetterID = Letter.LetterID
left JOIN   FollowUPType ON FollowUp.FollowUPTypeID = FollowUPType.FollowUPTypeID
left JOIN   DoneStatus ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID
WHERE     (@UserID = 0 or FollowUp.UserID = @UserID) AND (FollowUp.ToDoDate between  @BDate and @Edate)
and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)
order by  ToDoDate

GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUp_ByStart]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_FollowUp_ByStart]
(
	@StartFollowUpID int
)
AS
select *
from followup

GO
/****** Object:  StoredProcedure [dbo].[select_fromorganization]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
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
/****** Object:  StoredProcedure [dbo].[Select_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Letter] @LetterID INT 
AS
    BEGIN
        SELECT  Letter.* ,
                title senderTitle ,
                dbo.InnerNo(Letter.LetterID,letter.Letter_Type) AS IndicatorInnerNo ,
                --dbo.InnerNo(91912,4) AS IndicatorInnerNo ,

                0 AS ParentFollowLetter --dbo.GetParentOfFollowLetter(@LetterID) ParentFollowLetter
        FROM    Letter
                LEFT JOIN FromOrganizations ON Letter.ToOrgID = FromOrganizations.ID
        WHERE   LetterID =  @LetterID
    END
GO
/****** Object:  StoredProcedure [dbo].[Select_letter_details]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[Select_letter_details]
@letterid int ,
@IndicatorID varchar(10) output ,
@RegistrationDate char(10) output,
@Memo nvarchar(500) output,
@LetterRecommites nvarchar(500) output,
@latestParaph nvarchar(500) output

as
Select
@IndicatorID=cast (IndicatorID as varchar(10)),
@RegistrationDate=RegistrationDate,
@Memo=memo,
@LetterRecommites=LetterRecommites
from Letter
where letterid=@letterid

Select top 1 @latestParaph=isnull(Paraph,'')
from Recommites
where letterid=@letterid order by id desc

GO
/****** Object:  StoredProcedure [dbo].[Select_LetterReCommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------
----------------------------------
CREATE PROCEDURE [dbo].[Select_LetterReCommite]	
@letterID 	[int],@type TINYINT
AS 
SELECT	R.RecommiteID, R.LetterID, R.ID, R.[Type], R.ParentId, R.Paraph, R.OrgID,
      	R.RecommiteDate, R.RecommiteTime, R.UserID, R.IsCopy, R.Proceeded, R.ProceedDate,
      	R.staffmemo, R.viewdate, R.OrgStaff, R.DeadLineDate, R.LastUpdate,
      	R.UniqueID, R.ActionTypeID, R.DeadLineToint, R.IsAnswer, R.ISFollowup,
      	R.Finallized, R.IsCopy_In_Dabir, R.SentToDabir, R.Erja_Or_Answer_Date,
      	R.IsSecure,R.HasPayvast,
		CASE ISNULL(R.HasPayvast,0)
			WHEN 0 THEN f.title+' - '+r.OrgStaff
			WHEN 1 THEN f.title+' _ '+r.OrgStaff
		END AS orgtitle,
		CAST(R.GroupFlag AS INT) GroupFlag, 
		IsInnerOrg 
FROM ReCommites R  
inner join FromOrganizations f on f.ID=r.OrgID 
where (Letterid=@letterID) and ((type=@type) or (@type=0))
--Changed By Hadi Mohamed 92/02/18
GO
/****** Object:  StoredProcedure [dbo].[select_LetterSubject]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[select_LetterSubject]
	@LetterID int

AS
SELECT    registrationdate,registrationtime,indicatorid, LetterID, SubjectID, SubjectDescription, UserMemo,lastupdate
FROM         Letter
WHERE     LetterID=@LetterID


 


GO
/****** Object:  StoredProcedure [dbo].[SELECT_ParaphTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[SELECT_ParaphTemplate]
	@UserID INT,@type TINYINT
AS
	SELECT *
	FROM ParaphTemplate
	Where Userid=@UserID AND (TYPE= @type OR @type=0)
	order by OrderID
GO
/****** Object:  StoredProcedure [dbo].[select_ReceivedLetters]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Select_recommites_byLetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_recommites_byLetterID]
	(
	   @letterId int
	)
AS
begin
SELECT
		l.IndicatorID AS [انديکاتور],
		l.Memo[مضمون نامه],

		FromOrganizations.Title AS [ارجاع شونده],
		FromOrganizations_1.Title AS [ارجاع دهنده], 
		ReCommites.Paraph AS [مضمون ارجاع], 
		ReCommites.RecommiteDate AS [تاريخ ارجاع], 
		ReCommites.viewdate AS [تاريخ مشاهده], 
		ReCommites.DeadLineDate AS [مهلت اقدام],
		RecommiteTypes.Title AS [نوع ارجاع],
		FromOrganizations_1.ResponsibleStaffer AS[نام ارجاع دهنده], 
		FromOrganizations.ResponsibleStaffer AS [نام ارجاع گيرنده],
		Users.Title AS [کاربر ثبت کننده], 
		ReCommites.IsCopy AS [کپي؟],
		ReCommites.Proceeded AS [اقدام شده؟], 
		ReCommites.ProceedDate AS [تاريخ اقدام يا ارجاع],
		ReCommites.staffmemo AS [ملاحظات بايگاني], 
		ReCommites.OrgStaff AS [نام ارجاع شونده ]
		 
FROM       ReCommites
LEFT JOIN  RecommiteTypes
   ON RecommiteTypes.ID = ReCommites.Type
LEFT JOIN  Users 
   ON ReCommites.UserID = Users.Id 
LEFT JOIN  FromOrganizations 
   ON ReCommites.OrgID = FromOrganizations.ID 
LEFT JOIN  ReCommites ReCommites_1 
   ON ReCommites.LetterID = ReCommites_1.LetterID
   AND   ReCommites.ParentId = ReCommites_1.ID 
   AND ReCommites.Type = ReCommites_1.Type  
LEFT JOIN  FromOrganizations FromOrganizations_1
   ON  FromOrganizations_1.ID = ReCommites_1.OrgID 
INNER JOIN Letter AS l 
	ON l.LetterID = ReCommites.LetterID
WHERE    recommites.type=3
  AND ReCommites.LetterID = @letterId
      	
END
GO
/****** Object:  StoredProcedure [dbo].[select_sentLetters]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
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
/****** Object:  StoredProcedure [dbo].[select_userLoginLogout]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE procedure [dbo].[select_userLoginLogout](@bdate char(10), @edate char(10), @userid int)
as
SELECT     Users.UserName, IPAddress, 
dbo.Shamsi(LoginTime) LoginDate,cast(datepart(hh, LoginTime) as varchar(2))+':'+cast (datepart(mi, LoginTime) as varchar(2)) LoginTime,
 dbo.Shamsi(LogoutTime) LogoutDate,cast(datepart(hh, LogoutTime) as varchar(2))+':'+cast (datepart(mi, LogoutTime) as varchar(2)) LogoutTime,
                      isSafeLogout
FROM         UserLoginLogout INNER JOIN
                      Users ON UserID = Users.Id
where dbo.Shamsi(LoginTime)  between @bdate and @edate







 

GO
/****** Object:  StoredProcedure [dbo].[Select_UserOrgid]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_UserOrgid]
@UserID int,@today char(10)
as
create  table #Org (Orgid int,Comment nvarchar(255))
insert into #Org
SELECT  	[FromOrgID],case when id=@userid then 'سمت اصلي' else 'جانشين'  end
FROM [Users]
where @userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate )


insert into #Org
SELECT [SecondOrgID],case when id=@userid then 'سمت دوم' else 'جانشين'  end
FROM [Users]
where [SecondOrgID] is not null and  (@userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate ))

--***************************شروع درج سمت سوم به بعد************************************
insert into #Org
SELECT [TreeOrgID],case when id=@userid then 'سمت سوم' else 'جانشين'  end
FROM [Users]
where [TreeOrgID] is not null and  (@userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate ))

insert into #Org
SELECT [FourOrgID],case when id=@userid then 'سمت چهارم' else 'جانشين'  end
FROM [Users]
where [FourOrgID] is not null and  (@userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate ))

insert into #Org
SELECT [FiveOrgID],case when id=@userid then 'سمت پنجم' else 'جانشين'  end
FROM [Users]
where [FiveOrgID] is not null and  (@userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate ))
--***************************پايان درج سمت سوم به بعد************************************

update #Org
set comment=comment+':'+title
from #Org
inner join fromorganizations on fromorganizations.id=#Org.orgid


select *
from #Org
GO
/****** Object:  StoredProcedure [dbo].[Select_UserSign]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Proc [dbo].[Select_UserSign]
@UserID int
as

SELECT [UserID]
      ,UserSign
  FROM userSign
where UserID=@UserID

GO
/****** Object:  StoredProcedure [dbo].[selectAddedInfo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[selectAddedInfo]
@where nvarchar(2000) 
as
declare @sqlCommand nvarchar(4000)
set @sqlcommand='SELECT *  FROM vw_AddedInfo AI '

if @where<>'' set @sqlCommand=@sqlCommand+'  where  '+@where
exec sp_executesql @sqlCommand






GO
/****** Object:  StoredProcedure [dbo].[SelectInfo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SelectInfo]
	@where nvarchar(1900)
as 
declare @mainTable varchar(50), @PrimaryCode varchar(50)

	select @mainTable=value
	from settings
	where userid=-1 and variableid=24
	SET @mainTable=ISNULL(@mainTable,'Added')

	select @PrimaryCode=value
	from settings
	where userid=-1 and variableid=26
	SET @PrimaryCode=ISNULL(@PrimaryCode,'number')

	declare @sqlCommand nvarchar(4000)
	set @sqlcommand='select l.*,dbo.innerno(l.LetterID,l.Letter_Type) inerno,dbo.innernoForWord(l.LetterID) innernoForWord1,
	ReceiveTypes.Title AS ReciveTitle,Classifications.Title AS ClassificatioTitle,Urgenceis.Title AS UrgencyTitle,Users.Title AS UserTitle,
	LetterFormats.Title AS FormatTitle,ToOrganizations.Title AS ToOrgTitle,LetterTemplate.Title AS TemplateTitle, 
	FromOrganizations.Title AS FromTitle,f.title SignerTitle,dbo.ArchivePlaces(l.letterID,0) ArchivePlaces,FromOrganizations.PreCode, isnull
	(FromOrganizations.PreCode,FromOrganizations.Code) Org_PreCode,  
	cast(Year(dbo.ShamsiToMiladi(l.incommingdate)) as varchar)+''/''+cast(month(dbo.ShamsiToMiladi(l.incommingdate)) as varchar)+''/''+cast(Day(dbo.ShamsiToMiladi(l.incommingdate)) as varchar) as ChristIncomDate, 
	ai.*
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
/****** Object:  StoredProcedure [dbo].[SelectLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SelectLetter]
@where nvarchar(2000) 
as 
declare @sqlCommand nvarchar(4000)
set @sqlCommand='select  
 dbo.FollowLetterNo_LIST (L.LetterID) AS ATF,
 dbo.RetroactionNo_LIST  (L.LetterID) AS PEY,
 dbo.has_Page(L.letterid) has_Page, dbo.has_WordPage(L.letterid) has_WordPage,dbo.has_file(l.letterID) has_file,
 l.*,
 ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS ClassificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS UserTitle, 
 LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, LetterTemplate.Title AS TemplateTitle,  
 FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTypeTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.IndicatorID  AnswerIndicatorID
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
 LEFT JOIN Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID ' 
set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>'' 
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '

exec sp_executesql @sqlCommand
GO
/****** Object:  StoredProcedure [dbo].[SendLetter_To_Other_sec]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SendLetter_To_Other_sec]
 @NewSecID int ,@letterid int, @withoutChange int
as

declare @newLetterId int

ALTER TABLE Letter DISABLE TRIGGER ALL

insert into letter(
				   IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,FromOrgID,ToOrgID,
				   Signerid,ClassificationID,UrgencyID,Memo,AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,
				   RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,
				   LetterRecommites,FromStaffer,Finalized,SendStatusid,OldSecretariatID,LetterIDUP,CenterNo,CenterDate,InnerNO
				  )
select Case When @withoutChange = 1 then dbo.newIndicatorid(Letter_Type,letterformat,myear,@NewSecID) Else dbo.newIndicatorid(1,2,myear,@NewSecID) End As IndicatorID, 
			MYear,
			@NewSecID SecretariatID,
			Case When @withoutChange = 1 then Letter_Type Else 1 End As Letter_Type,
			Case When @withoutChange = 1 then letterformat Else 2 End As letterformat,
	   --cast(indicatorid as varchar(5))+isnull('/'+Secretariats.PreCode,'') IncommingNO,Commented By Saeedi on 1390/05/11
	   IncommingNO,
	   registrationdate Incommingdate,FromOrgID,
	   ToOrgID,Signerid,ClassificationID,UrgencyID,Memo,AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,RetroactionNo,
	   UserMemo,RegistrationDate,RegistrationTime,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,LetterRecommites,FromStaffer,
	   Finalized,2,letter.SecretariatID,@letterid,CenterNo,CenterDate,InnerNO
from letter
inner join Secretariats on Secretariats.secid=letter.SecretariatID
where letterid =@letterid --and sendstatusid=1

set @newLetterId=@@identity

ALTER TABLE Letter ENABLE TRIGGER ALL

insert into letterdata(LetterID,PageNumber,Image,extention,Description )
select @newLetterId,PageNumber,Image,extention,Description
from letterdata
where letterid=@letterid

insert into recommites(LetterID,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,ProceedDate,
staffmemo,viewdate,OrgStaff,DeadLineDate)
select @newLetterId,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,ProceedDate,staffmemo,viewdate,OrgStaff,DeadLineDate
from recommites
where letterid=@letterid

                       
insert into LetterText(LetterID, TypeText, LetterFormat)
SELECT   @newLetterId  , TypeText, LetterFormat
FROM         LetterText
where LetterID=@LetterID



declare @mainLetterid int,@newOrd tinyint
if exists (select * from LetterRelation where subletterid =@letterid)
  begin
    select @newOrd=max(ord)+1 from  LetterRelation where subletterid =@letterid
    select @mainLetterid=mainLetterid from LetterRelation where subletterid =@letterid
    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) values (@mainLetterid,@newLetterId,@newOrd)
  end
else
  begin
    select @mainLetterid=@letterid
    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) values (@mainLetterid,@letterid,1)
    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) values (@mainLetterid,@newLetterId,2)
  end
GO
/****** Object:  StoredProcedure [dbo].[SendMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SendMessage](@SenderID int, @ReceiverID int, @Subject varchar(4000), @Message TEXT)
AS
BEGIN
	DECLARE @Time VARCHAR(5)
	SELECT @Time = CASE when DATEPART(HH, GETDATE())<10 THEN '0'+CAST(DATEPART(HH, GETDATE()) AS VARCHAR(2)) ELSE cast(DATEPART(HH, GETDATE()) AS VARCHAR(2)) END + ':' +
		CASE when DATEPART(mi, GETDATE())<10 THEN '0'+CAST(DATEPART(mi, GETDATE()) AS VARCHAR(2)) ELSE cast(DATEPART(mi, GETDATE()) AS varchar(2)) end
		
	INSERT INTO UserMessage
	(
		To_,
		From_,
		MsgDate,
		MsgTime,
		[Subject],
		[Message],
		[Status],
		IsForSender
	)
	VALUES
	(
		@ReceiverID,
		@SenderID,
		dbo.Shamsi(GETDATE()),
		@Time,
		@Subject,
		@Message,
		1,
		1
	)
	
	INSERT INTO UserMessage
	(
		To_,
		From_,
		MsgDate,
		MsgTime,
		[Subject],
		[Message],
		[Status],
		IsForSender
	)
	VALUES
	(
		@ReceiverID,
		@SenderID,
		dbo.Shamsi(GETDATE()),
		@Time,
		@Subject,
		@Message,
		1,
		0
	)
END
GO
/****** Object:  StoredProcedure [dbo].[SendMessageReply]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SendMessageReply](@Message TEXT, @MainMessageID int)
AS
BEGIN
	DECLARE @ReceiverID INT
	DECLARE @SenderID INT
	DECLARE @Subject VARCHAR(4000)
	DECLARE @Time VARCHAR(5)
	SELECT @Time = CASE when DATEPART(HH, GETDATE())<10 THEN '0'+CAST(DATEPART(HH, GETDATE()) AS VARCHAR(2)) ELSE cast(DATEPART(HH, GETDATE()) AS VARCHAR(2)) END + ':' +
		CASE when DATEPART(mi, GETDATE())<10 THEN '0'+CAST(DATEPART(mi, GETDATE()) AS VARCHAR(2)) ELSE cast(DATEPART(mi, GETDATE()) AS varchar(2)) end
		
	SELECT @ReceiverID = To_, @SenderID = From_, @Subject = SUBJECT FROM UserMessage um WHERE um.UserMessageID = @MainMessageID
	INSERT INTO UserMessage
	(
		To_,
		From_,
		MsgDate,
		MsgTime,
		[Subject],
		[Message],
		[Status],
		IsForSender
	)
	VALUES
	(
		@SenderID,
		@ReceiverID,
		dbo.Shamsi(GETDATE()),
		@Time,
		@Subject,
		@Message,
		1,
		1
	)
	
	INSERT INTO UserMessage
	(
		To_,
		From_,
		MsgDate,
		MsgTime,
		[Subject],
		[Message],
		[Status],
		IsForSender
	)
	VALUES
	(
		@SenderID,
		@ReceiverID,
		dbo.Shamsi(GETDATE()),
		@Time,
		@Subject,
		@Message,
		1,
		0
	)
	
	UPDATE userMessage SET STATUS = 2 WHERE userMessageID = @MainMessageID
END
GO
/****** Object:  StoredProcedure [dbo].[Set_Word_Closed]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Set_Word_Closed] 
@LetterID INT, @UserID INT
AS
BEGIN
	DELETE FROM OpenWords 
	WHERE LetterID = @LetterID OR UserID = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[Set_Word_Open]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Set_Word_Open] 
@LetterID INT, @UserID INT 
AS
BEGIN
	IF NOT EXISTS(SELECT * FROM OpenWords WHERE LetterID = @LetterID) 
		INSERT INTO OpenWords(LetterID,UserID) VALUES (@LetterID,@UserID)
	ELSE
		UPDATE OpenWords SET UserID = @UserID WHERE LetterID = @LetterID	
END
GO
/****** Object:  StoredProcedure [dbo].[SetSystemSetting]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetSystemSetting]
@VariableName varchar(50),@Value nvarchar(255)
AS
exec SetUserSetting -1 ,@VariableName ,@Value
GO
/****** Object:  StoredProcedure [dbo].[SetUserSetting]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[SetUserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(255)
AS
    DELETE FROM Settings WHERE  (UserID = @UserID) AND (VariableName = LTRIM(RTRIM(@VariableName)))
    insert into Settings(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)
    Update Settings 
    set Value=@Value
    WHERE     (UserID = @UserID) AND (VariableName = @VariableName)
GO
/****** Object:  StoredProcedure [dbo].[ShowRounevesht]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------
CREATE PROCEDURE [dbo].[ShowRounevesht]	
@letterID INT
AS 

IF OBJECT_ID('tempdb..#TMP') IS NOT NULL DROP TABLE #TMP
CREATE TABLE #TMP
(
TMP_ID INT IDENTITY(1,1),	
RecommiteID INT,
LetterID INT,
ID INT,
TYPE INT,
ParentId INT,
OrgID INT,
Paraph NVARCHAR(2000),
RecommiteDate NVARCHAR(10),
RecommiteTime NVARCHAR(5),
UserID INT,
IsCopy BIT,
Proceeded BIT,
ProceedDate NVARCHAR(100),
staffmemo NVARCHAR(1000),
viewdate NVARCHAR(100),
OrgStaff NVARCHAR(1000),
DeadLineDate NVARCHAR(100),
LastUpdate DATETIME,
UniqueID BIGINT,
ActionTypeID INT,
DeadLineToint INT,
IsAnswer BIT,
ISFollowup BIT,
Finallized BIT,
orgtitle NVARCHAR(2000),
IsInnerOrg BIT,
UserName NVARCHAR(200)
)

INSERT INTO #TMP
SELECT 
RecommiteID ,
LetterID ,
R.ID ,
TYPE ,
R.ParentId ,
OrgID ,
Paraph ,
RecommiteDate ,
RecommiteTime ,
UserID ,
IsCopy ,
Proceeded ,
ProceedDate ,
staffmemo ,
viewdate ,
OrgStaff ,
DeadLineDate ,
LastUpdate ,
R.UniqueID ,
ActionTypeID ,
DeadLineToint ,
IsAnswer ,
ISFollowup ,
Finallized ,
f.title+' - '+r.OrgStaff ,
IsInnerOrg,
' ' AS UserName   
FROM ReCommites R  inner join FromOrganizations f on f.ID=r.OrgID 
where (Letterid=@letterID) and (type=1)
ORDER BY R.ParentId

UPDATE #TMP
SET UserName= u.Title
FROM #TMP T
LEFT JOIN Users u ON T.UserID=U.Id


SELECT * FROM #TMP
GO
/****** Object:  StoredProcedure [dbo].[shrink_Files]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[sp_add_datato_dabir]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE procedure [dbo].[sp_add_datato_dabir]
as
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ADDED]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ADDED]

create TABLE [dbo].[ADDED] (
	[STNO] [varchar] (10)  NOT NULL ,
	[OLDSTNO] [varchar] (10)  NULL ,
	[NAME] [nvarchar] (50)  NOT NULL ,
	[Family] [nvarchar] (50)  NULL ,
	[SEX] [int] NOT NULL ,
	[searchname] [nvarchar] (50)  NOT NULL ,
	[STATUS] [int] NULL ,
	[TERMCODE] [varchar] (3)  NOT NULL ,
	[COURSTYPE] [int] NOT NULL ,
	[MAGHTA] [int] NOT NULL ,
	[RESHTE] [int] NOT NULL ,
	[DANESHKADEH] [int] NOT NULL ,
	[Startdate] [varchar] (10)  NULL ,
	[Stopdate] [varchar] (10)  NULL ,
	[TotalAvg] [decimal](10, 2) NULL ,
	[SAHMN] [int] NOT NULL ,
	[LastUpTime] [varchar] (5)  NULL ,
	[LastUpDate] [varchar] (10)  NULL ,
	[IsActive] [int] NOT NULL ,
	[AdvisorDonCode] [int] NULL ,
	[FuserCode] [int] NULL ,
	[CourseStat] [int] NULL ,
	[PayeAvg] [numeric](18, 2) NULL ,
	[PatoAvg] [numeric](18, 2) NULL ,
	[BaliniAvg] [decimal](18, 2) NULL ,
	[InternAvg] [decimal](18, 2) NULL ,
	[PUnitCount] [float] NULL ,
	[BTVL] [int] NULL ,
	[STVL] [int] NULL ,
	[OTVL] [int] NULL ,
	[ZAB] [int] NULL ,
	[DAV] [varchar] (8)  NULL ,
	[NDIP] [int] NULL ,
	[Boomi] [int] NULL ,
	[HomeTell] [varchar] (9)  NULL ,
	[Married] [int] NULL ,
	[SahmS] [int] NULL ,
	[TDip] [varchar] (10)  NULL ,
	[NEZAM] [int] NULL ,
	[Grade] [int] NULL ,
	[Tahodkhedmat] [int] NOT NULL ,
	[GRH] [int] NULL ,
	[Moadel] [float] NULL ,
	[BirthDate] [varchar] (10)  NULL ,
	[Namep] [nvarchar] (50)  NULL ,
	[IDNO] [varchar] (12)  NULL ,
	[DIN] [int] NULL ,
	[ADDRESS] [varchar] (100)  NULL ,
	[Comment] [varchar] (100)  NULL ,
	[MadrakStat] [int] NULL ,
	[PrioAvg] [float] NULL ,
	[nationality] [int] NULL ,
	[sunitcount] [float] NULL ,
	[runitcount] [float] NULL ,
	[totalpoint] [float] NULL ,
	[moafiatnumber] [int] NULL ,
	[moafiat] [varchar] (30)  NULL ,
	[MS] [varchar] (40)  NULL ,
	[NationalCode] [varchar] (15)  NULL ,
	[TermAvg] [decimal](10, 2) NULL ,
	[TermPUnit] [float] NULL ,
	[TermSUnit] [float] NULL ,
	[TermRuint] [float] NULL ,
	[Mashroot] [int] NOT NULL ,
	[SexTitle] [varchar] (40)  NULL ,
	[CourseTitle] [varchar] (40)  NULL ,
	[SahmnTitle] [varchar] (40)  NULL ,
	[ReshteTitle] [varchar] (60)  NULL ,
	[BoomiTitle] [varchar] (10)  NULL ,
	[MaghtaTitle] [varchar] (30)  NULL ,
	[StatusTitle] [varchar] (40)  NULL ,
	[DanTitle] [varchar] (40)  NULL ,
	[CityTitle] [varchar] (40)  NULL ,
	[DinTitle] [varchar] (40)  NULL ,
	[DONTitle] [varchar] (40)  NULL ,
	[MarridTitle] [varchar] (40)  NULL ,
	[NezamTitle] [varchar] (40)  NULL ,
	[ActiveTitle] [varchar] (10)  NULL ,
	[DipTitle] [varchar] (10)  NULL ,
	[TermStatusTitle] [varchar] (30)  NULL ,
	[Dear] [varchar] (4)  NOT NULL ,
	[SWarningNumber] [tinyint] NULL ,
	[WarningNumber] [tinyint] NULL ,
	[cterm] [varchar] (3)  NULL 
) ON [PRIMARY]



declare @today char(10),@Termcode char(3)
set @today = dbo.shamsi(getdate())
set @termcode=isnull((select top 1 Code from behdasht..lt53 where @today between bdate and edate order by 1 desc ),
(select top 1 Code from  behdasht..lt53 order by 1 desc))

insert into ydabir..added
select 
mi.STNO,
	mi.OLDSTNO   ,
	mi.NAME    ,
	mi.Family   ,
	mi.SEX  ,
	mi.NAME  searchname  ,
	mi.STATUS ,
	mi.TERMCODE    ,
	mi.COURSTYPE  ,
	mi.MAGHTA  ,
	mi.RESHTE  ,
	mi.DANESHKADEH  ,
	mi.Startdate   ,
	mi.Stopdate   ,
	mi.TotalAvg,
	mi.SAHMN  ,
	mi.LastUpTime   ,
	mi.LastUpDate   ,
	mi.IsActive  ,
	mi.AdvisorDonCode ,
	mi.FuserCode ,
	mi.CourseStat ,
	mi.PayeAvg ,
	mi.PatoAvg,
	mi.BaliniAvg ,
	mi.InternAvg ,
	mi.PUnitCount,
	mi.BTVL ,
	mi.STVL ,
	mi.OTVL ,
	mi.ZAB ,
	mi.DAV   ,
	mi.NDIP ,
	mi.Boomi ,
	mi.HomeTell   ,
	mi.Married ,
	mi.SahmS ,
	mi.TDip   ,
	mi.NEZAM ,
	mi.Grade ,
	mi.Tahodkhedmat  ,
	mi.GRH ,
	mi.Moadel ,
	mi.BirthDate   ,
	mi.Namep   ,
	mi.IDNO   ,
	mi.DIN ,
	mi.ADDRESS   ,
	mi.Comment   ,
	mi.MadrakStat ,
	mi.PrioAvg ,
	mi.nationality ,
	mi.sunitcount ,
	mi.runitcount ,
	mi.totalpoint ,
	mi.moafiatnumber ,
	mi.moafiat   ,
	mi.MS   ,
	mi.NationalCode   ,
TermAvg,  TermPUnit,TermSUnit,
behdasht.dbo.TRU_InTerm(mi.stno,mg.termcode) TermRuint ,0 Mashroot,
LT6.Title AS SexTitle,LT22.Title AS CourseTitle,LT45.Title AS SahmnTitle,
LT66.Title AS ReshteTitle,LT20.Title AS BoomiTitle,LT10.Title AS MaghtaTitle,
LT26.Title AS StatusTitle,LT38.Title AS DanTitle,LT1.Title AS CityTitle,
LT14.Title AS DinTitle,DONBIN.Title AS DONTitle,LT8.Title AS MarridTitle,
LT16.Title AS NezamTitle,LT27.Title AS ActiveTitle,LT20.Title AS DipTitle,
LT24.Title AS TermStatusTitle,
case when sex=1 then 'خانم' else 'آقاي' end as Dear,
behdasht.dbo.SWarningNumber (mi.Stno)  SWarningNumber,behdasht.dbo.WarningNumber (mi.Stno) WarningNumber,mg.termcode cterm
from  behdasht..MAININFO MI 
LEFT JOIN  behdasht..MOSHGEL  MG ON isnull(mg.termcode,@termcode)=@termcode and MI.STNO = MG.Stno
LEFT JOIN  behdasht..LT6  lt6 ON MI.SEX = LT6.Code 
LEFT JOIN  behdasht..LT22 lt22 ON MI.COURSTYPE = LT22.Code 
LEFT JOIN  behdasht..LT66 lt66 ON MI.RESHTE = LT66.Code 
LEFT JOIN  behdasht..LT20 lt20 ON MI.BOOMI = LT20.Code 
LEFT JOIN  behdasht..LT45 lt45 ON MI.SAHMN = LT45.Code 
LEFT JOIN  behdasht..LT10 lt10 ON MI.MAGHTA = LT10.Code 
LEFT JOIN  behdasht..LT38 lt38 ON MI.DANESHKADEH = LT38.Code 
LEFT JOIN  behdasht..LT26 lt26 ON MI.STATUS = LT26.Code 
LEFT JOIN  behdasht..DONBIN donbin ON MI.ADVISORDONCODE = DONBIN.Code
LEFT JOIN  behdasht..lt14 lt14 ON MI.DIN=lt14.Code
LEFT JOIN  behdasht..lt1 lt1 ON MI.STVL=lt1.detail and MI.oTVL=lt1.master
LEFT JOIN  behdasht..lt20 lt21 ON MI.NDIP=lt20.Code
LEFT JOIN  behdasht..lt8 lt8 ON MI.MARRIED=lt8.Code
LEFT JOIN  behdasht..lt16  lt16 ON MI.NEZAM=lt16.Code
LEFT JOIN  behdasht..lt27 lt27 ON MI.IsActive=lt27.Code
LEFT JOIN  behdasht..LT24 lt24 ON MG.StTermStatus = LT24.Code


update ydabir..added
set name=substring(name,charindex('-',name)+1,100)+' '+
substring(name,1,charindex('-',name)-1)
where name like '%-%'





GO
/****** Object:  StoredProcedure [dbo].[sp_add_datato_dabir1]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE procedure [dbo].[sp_add_datato_dabir1](@Termcode char(3))
as
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ADDED]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ADDED]

CREATE TABLE [dbo].[ADDED] (
	[STNO] [varchar] (10)  NOT NULL ,
	[OLDSTNO] [varchar] (10)  NULL ,
	[NAME] [varchar] (42)  NOT NULL ,
	[Family] [varchar] (25)  NULL ,
	[SEX] [int] NOT NULL ,
	[STATUS] [int] NULL ,
	[TERMCODE] [varchar] (3)  NOT NULL ,
	[COURSTYPE] [int] NOT NULL ,
	[MAGHTA] [int] NOT NULL ,
	[RESHTE] [int] NOT NULL ,
	[DANESHKADEH] [int] NOT NULL ,
	[Startdate] [varchar] (10)  NULL ,
	[Stopdate] [varchar] (10)  NULL ,
	[TotalAvg] [decimal](10, 2) NULL ,
	[SAHMN] [int] NOT NULL ,
	[LastUpTime] [varchar] (5)  NULL ,
	[LastUpDate] [varchar] (10)  NULL ,
	[IsActive] [int] NOT NULL ,
	[AdvisorDonCode] [int] NULL ,
	[FuserCode] [int] NULL ,
	[CourseStat] [int] NULL ,
	[PayeAvg] [decimal](18, 0) NULL ,
	[PatoAvg] [decimal](18, 0) NULL ,
	[BaliniAvg] [decimal](18, 2) NULL ,
	[InternAvg] [decimal](18, 2) NULL ,
	[PUnitCount] [float] NULL ,
	[BTVL] [int] NULL ,
	[STVL] [int] NULL ,
	[OTVL] [int] NULL ,
	[ZAB] [int] NULL ,
	[DAV] [varchar] (8)  NULL ,
	[NDIP] [int] NULL ,
	[Boomi] [int] NULL ,
	[HomeTell] [varchar] (9)  NULL ,
	[Married] [int] NULL ,
	[SahmS] [int] NULL ,
	[TDip] [varchar] (10)  NULL ,
	[NEZAM] [int] NULL ,
	[Grade] [int] NULL ,
	[Tahodkhedmat] [int] NOT NULL ,
	[GRH] [int] NULL ,
	[Moadel] [float] NULL ,
	[BirthDate] [varchar] (10)  NULL ,
	[Namep] [varchar] (12)  NULL ,
	[IDNO] [varchar] (12)  NULL ,
	[DIN] [int] NULL ,
	[ADDRESS] [varchar] (100)  NULL ,
	[Comment] [varchar] (50)  NULL ,
	[MadrakStat] [int] NULL ,
	[PrioAvg] [float] NULL ,
	[nationality] [int] NULL ,
	[sunitcount] [float] NULL ,
	[runitcount] [float] NULL ,
	[totalpoint] [float] NULL ,
	[moafiatnumber] [int] NULL ,
	[moafiat] [varchar] (30)  NULL ,
	[MS] [varchar] (40)  NULL ,
	[NationalCode] [varchar] (15)  NULL ,
	[TermAvg] [decimal](10, 2) NULL ,
	[TermPUnit] [float] NULL ,
	[TermSUnit] [float] NULL ,
	[TermRuint] [float] NULL ,
	[Mashroot] [int] NOT NULL ,
	[SexTitle] [varchar] (40)  NULL ,
	[CourseTitle] [varchar] (40)  NULL ,
	[SahmnTitle] [varchar] (40)  NULL ,
	[ReshteTitle] [varchar] (60)  NULL ,
	[BoomiTitle] [varchar] (10)  NULL ,
	[MaghtaTitle] [varchar] (30)  NULL ,
	[StatusTitle] [varchar] (40)  NULL ,
	[DanTitle] [varchar] (40)  NULL ,
	[CityTitle] [varchar] (40)  NULL ,
	[DinTitle] [varchar] (40)  NULL ,
	[DONTitle] [varchar] (40)  NULL ,
	[MarridTitle] [varchar] (40)  NULL ,
	[NezamTitle] [varchar] (40)  NULL ,
	[ActiveTitle] [varchar] (10)  NULL ,
	[DipTitle] [varchar] (40)  NULL ,
	[TermStatusTitle] [varchar] (30)  NULL ,
	[Dear] [varchar] (4)  NOT NULL ,
	[SWarningNumber] [tinyint] NULL ,
	[WarningNumber] [tinyint] NULL ,Cterm char(3) null

) ON [PRIMARY]



insert into ydabir..added
select MI.*,TermAvg,  TermPUnit,TermSUnit,
behdasht.dbo.TRU_InTerm(mi.stno,mg.termcode) TermRuint ,0 Mashroot,
LT6.Title AS SexTitle,LT22.Title AS CourseTitle,LT45.Title AS SahmnTitle,
LT66.Title AS ReshteTitle,LT20.Title AS BoomiTitle,LT10.Title AS MaghtaTitle,
LT26.Title AS StatusTitle,LT38.Title AS DanTitle,LT1.Title AS CityTitle,
LT14.Title AS DinTitle,DONBIN.Title AS DONTitle,LT8.Title AS MarridTitle,
LT16.Title AS NezamTitle,LT27.Title AS ActiveTitle,LT30.Title AS DipTitle,
LT24.Title AS TermStatusTitle,
case when sex=1 then 'خانم' else 'آقای' end as Dear,
behdasht.dbo.SWarningNumber (mi.Stno)  SWarningNumber,behdasht.dbo.WarningNumber (mi.Stno) WarningNumber,mg.termcode
from  behdasht..MAININFO MI 
LEFT JOIN (select * from behdasht..MOSHGEL where termcode=@termcode) MG ON MI.STNO = MG.Stno
LEFT JOIN  behdasht..LT6  lt6 ON MI.SEX = LT6.Code 

LEFT JOIN  behdasht..LT22 lt22 ON MI.COURSTYPE = LT22.Code 
LEFT JOIN  behdasht..LT66 lt66 ON MI.RESHTE = LT66.Code 
LEFT JOIN  behdasht..LT20 lt20 ON MI.BOOMI = LT20.Code 
LEFT JOIN  behdasht..LT45 lt45 ON MI.SAHMN = LT45.Code 
LEFT JOIN  behdasht..LT10 lt10 ON MI.MAGHTA = LT10.Code 
LEFT JOIN  behdasht..LT38 lt38 ON MI.DANESHKADEH = LT38.Code 
LEFT JOIN  behdasht..LT26 lt26 ON MI.STATUS = LT26.Code 
LEFT JOIN  behdasht..DONBIN donbin ON MI.ADVISORDONCODE = DONBIN.Code
LEFT JOIN  behdasht..lt14 lt14 ON MI.DIN=lt14.Code
LEFT JOIN  behdasht..lt1 lt1 ON MI.STVL=lt1.detail and MI.oTVL=lt1.master
LEFT JOIN  behdasht..lt30 lt30 ON MI.NDIP=lt30.Code
LEFT JOIN  behdasht..lt8 lt8 ON MI.MARRIED=lt8.Code
LEFT JOIN  behdasht..lt16  lt16 ON MI.NEZAM=lt16.Code
LEFT JOIN  behdasht..lt27 lt27 ON MI.IsActive=lt27.Code
LEFT JOIN  behdasht..LT24 lt24 ON MG.StTermStatus = LT24.Code
where isnull(mg.termcode,@termcode)=@termcode




GO
/****** Object:  StoredProcedure [dbo].[sp_Add_GroupRecommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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



 

GO
/****** Object:  StoredProcedure [dbo].[Sp_AddFileToDB]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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

   

if @FileSizeInMB > 3800 --MB
begin
   if @MaxFileID = 1  --mdf قرار دادن ماكزيمم حجم براي فايل
   begin
      Set @MDFSqlText = 'Use Master ALTER DATABASE ['+ @DBName +'] MODIFY FILE (NAME = N'''+ RTrim(@FileName) +''', MAXSIZE = '+ Cast
(@FileSizeInMB+30 as nvarchar(10)) +') '
      Exec(@MDFSqlText)
      Print @MDFSqlText
   end 

   Set @SqlText = 'use Master '+
   'ALTER DATABASE [' + RTrim(@DBName) + '] 
    ADD FILE( NAME = '''+@NewFileName+''' , FILENAME = ''' + @NewFilePath + @NewFileName + '.NDF'' , 
             SIZE = 10 , MAXSIZE = 4000 , FILEGROWTH = 10% ) '
   Exec(@SqlText)
   Print @SqlText
end



GO
/****** Object:  StoredProcedure [dbo].[Sp_AddFollowUp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_AddFollowUp]
  ( 
  	@FollowUpId [int]OUTPUT,@TypeID INT,@UserID INT,
  	@Comment NVARCHAR(255),@ToDoDate CHAR(10),@ToDoTime CHAR(5),
  	@DoneComment NVARCHAR(255),@LetterID INT
  )
AS

INSERT INTO FollowUp
(
	-- FollowUPID -- this column value is auto-generated
	StartFollowUpID,
	FollowUPTypeID,
	DoneStatusID,
	UserID,
	Comment,
	ToDoDate,
	ToDoTime,
	DoneComment,
	HasAlarm,
	Letterid
)
VALUES
    (0,@TypeID,0,@UserID,@Comment,@ToDoDate,@ToDoTime,@DoneComment,1,@LetterID)
    
SET @FollowUpId=@@identity 
GO
/****** Object:  StoredProcedure [dbo].[Sp_AddLetterForm]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_AddLetterForm](@LetterID INT,@FormID INT,@UserID INT)
AS

INSERT INTO LetterForms
(	
	LetterID,
	FormID,
	UserID
)
VALUES
(
	@LetterID,@FormID,@UserID
)
GO
/****** Object:  StoredProcedure [dbo].[Sp_AddSubject]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_AddSubject](@subjecttitle NVARCHAR)
AS

INSERT INTO [Subject]
(
	-- SubjectID -- this column value is auto-generated
	SubjectTitle
)
VALUES
(
	@subjecttitle	
)

GO
/****** Object:  StoredProcedure [dbo].[Sp_AddUserNote]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_AddUserNote](@UserID INT,@Note NTEXT,@Date CHAR(10))
AS

INSERT INTO UserNote
(
	-- UserNoteID -- this column value is auto-generated
	UserID,
	Note,
	CreateDate
)
VALUES
(
	@UserID,@Note,@Date
)
GO
/****** Object:  StoredProcedure [dbo].[sp_ArchivePlaces]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_ArchivePlaces]  
@LetterID int,@ArchiveCenterID  int, @result  nvarchar(1000) output
AS

DECLARE @IID INT
DECLARE @result1   nvarchar(1000)
DECLARE @result2   nvarchar(1000)
DECLARE @resultT   nvarchar(1000)
DECLARE @DAT       nvarchar(1000)

set @DAT = ''

DECLARE @INDX INT

DECLARE @Title NVARCHAR(1000)

DECLARE @LetterArchiveID INT
SET @IID       = 0
set @result    = ''
set @result1   = ''
set @result2   = ''
set @resultT   = ''

SET @INDX = 1

DECLARE 
@CNT AS int

DECLARE EXM_CURSOR CURSOR FOR
SELECT ParentFolderID,Title,LetterArchiveID FROM LetterArchiveFolder 
INNER JOIN ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.ArchiveCenterID=@ArchiveCenterID AND
LetterID = @LetterID
OPEN EXM_CURSOR
FETCH NEXT FROM EXM_CURSOR
INTO @CNT,@Title,@LetterArchiveID

WHILE (@@FETCH_STATUS = 0)
BEGIN

IF @INDX > 1
BEGIN
SET @result = @result + ' ### '
END

SET @result1 = @Title

IF EXISTS (SELECT  ParentFolderID
FROM LetterArchiveFolder 
INNER JOIN ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE LetterID = @LetterID AND LetterArchiveID = @LetterArchiveID)
BEGIN
SET @IID = (SELECT  ISNULL(ParentFolderID,0)
FROM LetterArchiveFolder 
INNER JOIN ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE LetterID = @LetterID AND LetterArchiveID = @LetterArchiveID)
END

WHILE (@IID > 0)
BEGIN

IF EXISTS (SELECT ISNULL(Title,'-') FROM ArchiveFolder WHERE FolderID = @IID)
BEGIN
SET @resultT = ( SELECT Title FROM ArchiveFolder WHERE FolderID = @IID )
SET @resultT = REPLACE(@resultT, NCHAR(1740), NCHAR(1610))
SET @resultT = REPLACE(@resultT, NCHAR(1705), NCHAR(1603))
SET @result2 = @resultT + ' --> ' + @result2
END

IF EXISTS ( SELECT ParentFolderID FROM ArchiveFolder WHERE FolderID = @IID)
BEGIN
SET @IID = ( SELECT ParentFolderID FROM ArchiveFolder WHERE FolderID = @IID)
END

END


SET @DAT = @DAT + @result2 + @result1

SET @result = @result + ' زونکن ' + CONVERT(VARCHAR(50) , @INDX) + ' : ' + @DAT 
SET @INDX = @INDX + 1

SET @DAT = ''
SET @result2 = ''
SET @result1 = ''
    
FETCH NEXT FROM EXM_CURSOR
INTO @CNT,@Title,@LetterArchiveID
END

CLOSE EXM_CURSOR
DEALLOCATE EXM_CURSOR
GO
/****** Object:  StoredProcedure [dbo].[sp_board]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[sp_checkusernotes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO








CREATE proc [dbo].[sp_checkusernotes]
@USERID INT ,@DateID int ,@where nvarchar(1000)
AS
 declare @sql nvarchar (4000)

set @sql=' SELECT top 10000 *,substring(note,1,100)+'' ...'' as Abstract  from UserNote where userid='+cast(@USERID as varchar(5))
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
/****** Object:  StoredProcedure [dbo].[sp_CompleteFieldBook]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
SELECT  @tableid,syscolumns_f.name,isnull((select cast(value as varchar(50)) from sysproperties where id = syscolumns_f.id AND smallid = 
syscolumns_f.colid and
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
/****** Object:  StoredProcedure [dbo].[sp_dailyRep]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_dailyRep] 
@myear int,@bdate char(10),@edate char(10),@where nvarchar(1000)
as
 declare @sql nvarchar (4000)

declare @rw nvarchar(255)

set @RW='WHERE l.myear=l.myear'--+cast(@myear as varchar(10))


set @rw=@rw+' AND (L.RegistrationDaTE between '''+@bdate+''' and '''+@edate+''')'

set @sql='select distinct l.LetterID, IndicatorID, Memo, AttachTitle,RegistrationDate,  ToStaffer, FollowLetterNo, 
UserMemo, RetroactionNo, NumberOfPage, NumberOfAttachPages, CenterDate, CenterNo,IncommingDate,
lettertypes.title ReceiveMode ,SentLetterID, Incommingno,
lETTERrecommites RECOMMITES,TTO.title toorgtitle,
Classifications.Title AS Classificationtitle, Urgenceis.Title AS UrgencyTitle, LetterFormats.Title AS FormatTitle,
 LetterTemplate.Title AS TemplateTitle, FromOrganizations.Title AS SignerTitle,Users.Title UserTitle
FROM ReCommites RC 
INNER JOIN Letter L ON RC.LetterID = l.LetterID 
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId 
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID 
left JOIN fromOrganizations TTO ON TTO.ID = l.ToOrgID 
LEFT JOIN LETTERTYPES on lettertypes.id=l.letter_type
left JOIN RecommiteTypes    ON RC.Type = RecommiteTypes.ID 
Left JOIN Urgenceis         ON L.UrgencyID = Urgenceis.ID 
LEFT JOIN FromOrganizations ON L.Signerid=FromOrganizations.ID
LEFT JOIN LetterFormats     ON L.letterformat = LetterFormats.Code 
LEFT JOIN Classifications   ON L.ClassificationID = Classifications.ID 
LEFT JOIN LetterTemplate    ON L.TemplateID = LetterTemplate.ID 
LEFT JOIN Users    ON L.UserID = Users.ID '+@rW



set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>''
select @sql=@sql+' and  '+@where

set @sql=@sql+' order by 1 desc'
exec(@sql)
			  
GO
/****** Object:  StoredProcedure [dbo].[Sp_Del_NewsGroupUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[Sp_Del_NewsGroupUsers] @NewsGroupID int 
As  
  Delete From NewsGroupUsers  
  Where(NewsGroupID = @NewsGroupID)


GO
/****** Object:  StoredProcedure [dbo].[Sp_Del_WorkGroupOrg]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[Sp_Del_WorkGroupOrg] @WorkGroupID int 
As
  Delete From WorkGroupOrg
  Where WorkGroupID = @WorkGroupID


GO
/****** Object:  StoredProcedure [dbo].[Sp_DelayedLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DelayedLetter]
@SecretariatID int,@myear int,@DeadLine int, @userID int , @Tag Tinyint
as  
  
declare  
@sql nvarchar (4000),  
@rw nvarchar(500),  
@Today char(10),  
@deadlineDate char(10),  
@OrgID int,  
@todayToint varchar(10)  
  
select @today=dbo.shamsi(getdate())  
set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))  
  
SELECT     @OrgID=FromOrgID  
FROM         Users  
WHERE     Id = @userID  
  
set @RW='WHERE ((Rc.deadlinedate is not null or ChildRecommite.Deadlinedate is not null) and (L.sentLetterID is null)) and ( L.myear='+cast(@myear as varchar(10))+
') AND (Rc.OrgID = '+ cast(@OrgID as varchar(10))+') '  
    
if @SecretariatID>0  
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'  
else  
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'  
  

if @Tag = 1
   set @rw=@rw+' AND (case when Rc.Proceeded=0  then RC.DeadLineToint else  '''+@todayToint+''' end )< '+cast(@DeadLine as 
varchar(5)) 
if @Tag = 2
   set @rw=@rw+' AND (case when Rc.Proceeded=1 and ChildRecommite.Proceeded=0 then ChildRecommite.DeadLineToint  
       else  '''+@todayToint+''' end )< '+cast(@DeadLine as varchar(5))  
  
set @sql=' SELECT count( *)  
FROM ReCommites RC  
INNER JOIN Letter L ON RC.LetterID = L.LetterID  
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND  
RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type = RC.type '  
  
set @sql=@sql+@rW  

exec sp_executesql  @sql
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteAllMessages]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DeleteAllMessages](@UserID INT,@FolderID INT)
AS

	IF(@FolderID=1 OR @FolderID=2)
		DELETE FROM UserMessage WHERE isnull(IsForSender, 0) = 0 and To_ =@UserID
	ELSE IF(@FolderID=3)
		DELETE FROM UserMessage WHERE isnull(IsForSender, 0) = 0 and To_ =@UserID AND [Status]=1
	ELSE IF(@FolderID=4)
		DELETE FROM UserMessage WHERE isnull(IsForSender, 0) = 1 and From_ =@UserID
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteFollowUp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DeleteFollowUp](@FollowUpId INT)
AS

	DELETE FROM FollowUp WHERE FollowUPID=@FollowUpId
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteLetterForm]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DeleteLetterForm](@LetterFormID INT)
AS

Delete from LetterForms where ID =@LetterFormID
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteMessage]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DeleteMessage](@MessageID INT)
AS

DELETE FROM UserMessage WHERE UserMessageID=@MessageID
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteUserNote]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DeleteUserNote](@UserNoteID INT)
AS

	DELETE FROM UserNote WHERE UserNoteID=@UserNoteID
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteWorkSheet]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_DeleteWorkSheet](@Id INT)
AS

DELETE FROM WorkSheet_Base WHERE ID=@Id
GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_Proc]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE  procedure  [dbo].[sp_delphi_Proc] (@spN varchar(50) )
as

declare @line1 varchar(1000),@line2 varchar(8000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname varchar(100),
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
/****** Object:  StoredProcedure [dbo].[sp_delphi_proceByName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE  procedure  [dbo].[sp_delphi_proceByName](@spN varchar(50) )
as

declare @ALL VARCHAR(4000),@line1 varchar(1000),@line2 varchar(4000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname 
varchar(100)

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
/****** Object:  StoredProcedure [dbo].[Sp_Details_Follow]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[Sp_Details_Follow]
@letterid int
as
SELECT L.IndicatorID, L.IncommingNO, L.RegistrationDate, FO.Title as fot FROM Letter AS L
 INNER JOIN FromOrganizations AS FO ON L.ToOrgID = FO.ID WHERE (L.LetterID = @letterid)



GO
/****** Object:  StoredProcedure [dbo].[Sp_DistinctDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[Sp_DistinctDate] @MyFarsiToday nvarchar(10)     
As    
  declare @today char(10) , @dw tinyint    
   Set @today = @MyFarsiToday
    Select * from HistoryDateList(@Today ,7)
  Order by ID 


GO
/****** Object:  StoredProcedure [dbo].[sp_duplicateOrg]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE procedure [dbo].[sp_duplicateOrg](@code nvarchar(50),@title nvarchar(100),@exsits bit output)
as

if exists (
SELECT   *
FROM         FromOrganizations
WHERE     (replace(Code,' ','') = replace(@code,' ',''))   )
set @exsits=1
else
set @exsits=0







GO
/****** Object:  StoredProcedure [dbo].[sp_FieldByTableCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create PROCEDURE [dbo].[sp_FieldByTableCode]
 @tableid int
as
select *
from fields
where tableid=@tableid





GO
/****** Object:  StoredProcedure [dbo].[Sp_FillBlob]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[Sp_FillBlob] 
As
CREATE TABLE #TempTable(ID int IDENTITY (1, 1) NOT NULL , MyBlobField image NULL)
Select *  from #TempTable


GO
/****** Object:  StoredProcedure [dbo].[Sp_FromOrganizationsTitles]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_FromOrganizationsTitles](@isInnerOrg TINYINT,@title NVARCHAR(100))
AS

	IF(@isInnerOrg=0)
	  SELECT * FROM FromOrganizations fo
	  WHERE fo.IsInnerOrg=0 AND fo.ResponsibleStaffer LIKE '%'+@title+'%'
	ELSE IF(@isInnerOrg=1)
	  SELECT * FROM FromOrganizations fo
	  WHERE fo.IsInnerOrg=1 AND fo.ResponsibleStaffer LIKE '%'+@title+'%'
	ELSE
	  SELECT * FROM FromOrganizations fo
	  WHERE  fo.ResponsibleStaffer LIKE '%'+@title+'%'
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllActiveUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetAllActiveUsers]
    
AS
    SELECT * FROM dbo.Users WHERE ISNULL(Active,0) = 1
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllFromOrganizations]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[Sp_GetAllFromOrganizations](@isInnerOrg BIT,@groupId INT)
AS

--IF(@groupId=0)
--   SELECT distinct  fo.ID, ISNULL(fo.Title,'') Title, fo.ParentID, fo.Phone, fo.Fax, fo.Email, 
--                    fo.ResponsibleStaffer,fo.IsActive, fo.PreCode, fo.IsInnerOrg, fo.Code, fo.UniqueID 
--   FROM FromOrganizations fo INNER JOIN ChartWorkGroupDetails cwgd
--   ON fo.ID=cwgd.OrgID
--   WHERE fo.IsInnerOrg=@isInnerOrg AND cwgd.AccessForErja=1

---- small RESULT
	--SELECT  distinct  fo.ID, ISNULL(fo.Title,'') Title, fo.ParentID, fo.Phone, fo.Fax, fo.Email, 
 --                   fo.ResponsibleStaffer,fo.IsActive, fo.PreCode, fo.IsInnerOrg, fo.Code, fo.UniqueID 
	--FROM FromOrganizations fo INNER JOIN ChartWorkGroupDetails t1
 --   ON fo.ID=t1.OrgID
 --    inner join users t2 on t2.id=@groupId and (t1.OrgID=t2.FromOrgID or t1.OrgID=t2.FiveOrgID or t1.OrgID=t2.FourOrgID or t1.OrgID=t2.TreeOrgID or t1.OrgID=t2.SecondOrgID)
	--WHERE fo.IsInnerOrg=1 AND t1.AccessForErja=1
SELECT  distinct  
	fo.ID, 
	ISNULL(fo.Title,'')+'-'+ResponsibleStaffer Title, 
	fo.ParentID, 
	fo.Phone, 
	fo.Fax, 
	fo.Email, 
    fo.ResponsibleStaffer,
	fo.IsActive, 
	fo.PreCode, 
	fo.IsInnerOrg, 
	fo.Code, 
	fo.UniqueID 
from FromOrganizations fo 
inner join ChartWorkGroupDetails t1 
on t1.OrgID=fo.id 
and AccessForErja=1 
/*
and t1.GroupID in (
					SELECT  distinct  t1.GroupID
					FROM FromOrganizations fo 
					INNER JOIN ChartWorkGroupDetails t1
					ON fo.GroupID=t1.GroupID
					 inner join users t2 
					 on t2.id=@groupId  
					 and (   fo.id=t2.FromOrgID 
					      or fo.id=t2.FiveOrgID 
						  or fo.id=t2.FourOrgID 
						  or fo.id=t2.TreeOrgID 
						  or fo.id=t2.SecondOrgID
						 )	 
                   )
*/
WHERE fo.IsInnerOrg=1 
AND t1.AccessForErja=1
union 
SELECT  distinct  
	fo.ID, 
	ISNULL(fo.Title,'')+'-'+ResponsibleStaffer Title, 
	fo.ParentID, 
	fo.Phone, 
	fo.Fax, 
	fo.Email, 
	fo.ResponsibleStaffer,
	fo.IsActive, 
	fo.PreCode, 
	fo.IsInnerOrg, 
	fo.Code, 
	fo.UniqueID 
from FromOrganizations fo 
where fo.ID IN( 
 select distinct ParentID from [dbo].[FromOrganizations]
where IsInnerOrg = 0 )
or  fo.IsInnerOrg= 0

/*
where fo.Title IN( N'دبيرخانه هاي ديگر',N'دبيرخانه  هاي ديگر',N'دبيرخانه  هاي ديگر')
or fo.ParentID  = (select top 1 id 
                   from FromOrganizations 
                     where Title IN( N'دبيرخانه هاي ديگر',N'دبيرخانه  هاي ديگر',N'دبيرخانه  هاي ديگر')
			       )
				   */
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllFromOrganizations2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetAllFromOrganizations2](@isInnerOrg BIT,@groupId INT)
AS

--IF(@groupId=0)
--   SELECT distinct  fo.ID, ISNULL(fo.Title,'') AS Title,ISNULL(fo.ResponsibleStaffer,'') staffer, fo.ParentID, fo.Phone, fo.Fax, fo.Email, 
--                    fo.ResponsibleStaffer,fo.IsActive, fo.PreCode, fo.IsInnerOrg, fo.Code, fo.UniqueID 
--   FROM FromOrganizations fo INNER JOIN ChartWorkGroupDetails cwgd
--   ON fo.ID=cwgd.OrgID
--   WHERE fo.IsInnerOrg=@isInnerOrg AND cwgd.AccessForErja=1 
--ELSE
	SELECT  fo.ID, ISNULL(fo.Title,'')+'-'+ResponsibleStaffer AS Title,ISNULL(fo.ResponsibleStaffer,'') staffer, fo.ParentID, fo.Phone, fo.Fax, fo.Email,  
	        fo.ResponsibleStaffer,fo.IsActive, fo.PreCode, fo.IsInnerOrg, fo.Code, fo.UniqueID 
	FROM FromOrganizations fo INNER JOIN ChartWorkGroupDetails cwgd
    ON fo.ID=cwgd.OrgID
    WHERE fo.IsInnerOrg=@isInnerOrg AND cwgd.GroupID in 
	(select t1.GroupID from ChartWorkGroupDetails t1
inner join Users t2 on (t1.OrgID=t2.FromOrgID or t1.OrgID=t2.FiveOrgID or t1.OrgID=t2.FourOrgID or t1.OrgID=t2.TreeOrgID or t1.OrgID=t2.SecondOrgID) and t1.AccessForErja=1 and t2.id=@groupId
inner join ChartWorkGroup t3 on t1.GroupID=t3.GroupID
)
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllSubjects]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetAllSubjects]
AS
SELECT   *
FROM [Subject] s
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetApprovedUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetApprovedUsers](@WorkSheetId INT)
AS

SELECT r.*, u.Title as UserTitle 
FROM WorkSheet_ResultUsers r inner join Users u on r.UserID=u.ID 
WHERE r.WorkSheet_ResultsID=@WorkSheetId
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetArchiveFolderByFolderId]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetArchiveFolderByFolderId](@folderid INT)
AS

SELECT   * FROM ArchiveFolder af WHERE af.FolderID=@folderid
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetClassifications]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetClassifications]
AS
	SELECT   *
	FROM Classifications c
	ORDER BY c.ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFieldValue]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFieldValue](@LetterID INT,@FieldID INT,@FormOrder INT)
AS

SELECT FieldValue FROM LetterFieldValue 
where LetterID =@LetterID AND FieldID =@FieldID AND FormOrder=@FormOrder
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFolderChilds]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFolderChilds](@parentfolderid INT)
AS

SELECT   * FROM ArchiveFolder af WHERE af.ParentFolderID=@parentfolderid
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFollowUps]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFollowUps](@letterId INT,@All BIT)
AS

IF(@All=1)
BEGIN
	SELECT FollowUPID, fu.FollowUPTypeID,fut.FollowUpTypeTitle AS FollowUPType,
      (CASE WHEN DoneStatusID=0 THEN 'درحال بررسي' WHEN DoneStatusID=1 THEN 'انجام شده' ELSE 'انجام نشده' END) DoneStatus, 
       Comment, ToDoDate, ToDoTime, DoneComment
 
    FROM FollowUp fu INNER JOIN FollowUpType fut
    ON fu.FollowUPTypeID=fut.FollowUpTypeID
    WHERE fu.Letterid=@letterId
    ORDER BY FollowUPID DESC
END
ELSE
	BEGIN
		SELECT FollowUPID, fu.FollowUPTypeID,fut.FollowUpTypeTitle AS FollowUPType,
      (CASE WHEN DoneStatusID=0 THEN 'درحال بررسي'  END) DoneStatus, 
       Comment, ToDoDate, ToDoTime, DoneComment
 
       FROM FollowUp fu INNER JOIN FollowUpType fut
       ON fu.FollowUPTypeID=fut.FollowUpTypeID
       WHERE fu.Letterid=@letterId AND fu.DoneStatusID=0
       ORDER BY FollowUPID DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFollowUpTypes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFollowUpTypes]
AS

	SELECT * FROM FollowUpType fut
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFormFields]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFormFields](@FormID INT)
AS

select * from Fields where TableID = @FormID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFormFieldsByLetterFormID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFormFieldsByLetterFormID](@FormID INT)
AS

select * from Fields where TableID = (Select FormID from LetterForms where ID =@FormID)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFromHelp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROCEDURE [dbo].[sp_GetFromHelp]
@Formtag int
as
select htmlHelp
from FormsHelp
where formTag=@formtag








GO
/****** Object:  StoredProcedure [dbo].[Sp_GetFromOrganizationsById]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetFromOrganizationsById](@id INT)
AS

SELECT   *
FROM    FromOrganizations  
WHERE ID=@id
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetter_ByIndNum_LetNum]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetter_ByIndNum_LetNum](@srchno INT,@letter_type INT)
AS

 IF(@letter_type=1)

     SELECT      Letter.LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, Letter.letterformat,
            lf.Title AS formattitle,
            IncommingNO, Incommingdate, CenterNo, CenterDate, FromOrgID,
            (SELECT Title FROM FromOrganizations fo WHERE fo.ID=FromOrgID) AS FromorgTitle,
            ToOrgID,(SELECT Title FROM FromOrganizations fo WHERE fo.ID=ToOrgID) AS ToorgTitle, Signerid,
            (SELECT Title FROM FromOrganizations fo WHERE fo.ID=Signerid) AS SignerTitle,
            ClassificationID,c.Title AS ClassificationTitle,
            UrgencyID,u.Title AS UrgencyTitle, Memo, AttachTitle, NumberOfAttachPages, NumberOfPage,
            ReceiveTypeID,rt.Title AS ReceiveTitle, UserID,
            RetroactionNo, UserMemo, RegistrationDate, 
            RegistrationTime, FollowLetterNo, ToStaffer, SentLetterID, TemplateID, HeaderID, LetterRecommites, PreCode, fromstaffer, Finalized, SendStatusID, LastUpdate, 
            UserTableID, UniqueID, Archived, SubjectDescription, SubjectID, LatestActionTypeID, LatestActionReason, DeadLineDate, ActionTypeID, UserTableID2, 
            EmailNuFromDate, OldSecretariatID, CustomerID, InnerNO, ECEAnswer, RetroactionYear, FollowLetterYear,Html
     FROM        Letter INNER JOIN LetterFormats lf
     ON Letter.letterformat=lf.Code 
     INNER JOIN Classifications c
     ON Letter.ClassificationID=c.ID INNER JOIN Urgenceis u
     ON Letter.UrgencyID=u.ID INNER JOIN ReceiveTypes rt
     ON Letter.ReceiveTypeID=rt.ID left JOIN  lettertext ON lettertext.LetterID = Letter.LetterID
     WHERE Letter.Letter_Type=@letter_type AND Letter.IncommingNO=@srchno
 ELSE
 	     SELECT      Letter.LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, Letter.letterformat,
            lf.Title AS formattitle,
            IncommingNO, Incommingdate, CenterNo, CenterDate, FromOrgID,
            (SELECT Title FROM FromOrganizations fo WHERE fo.ID=FromOrgID) AS FromorgTitle,
            ToOrgID,(SELECT Title FROM FromOrganizations fo WHERE fo.ID=ToOrgID) AS ToorgTitle, Signerid,
            (SELECT Title FROM FromOrganizations fo WHERE fo.ID=Signerid) AS SignerTitle,
            ClassificationID,c.Title AS ClassificationTitle,
            UrgencyID,u.Title AS UrgencyTitle, Memo, AttachTitle, NumberOfAttachPages, NumberOfPage,
            ReceiveTypeID,rt.Title AS ReceiveTitle, UserID,
            RetroactionNo, UserMemo, RegistrationDate, 
            RegistrationTime, FollowLetterNo, ToStaffer, SentLetterID, TemplateID, HeaderID, LetterRecommites, PreCode, fromstaffer, Finalized, SendStatusID, LastUpdate, 
            UserTableID, UniqueID, Archived, SubjectDescription, SubjectID, LatestActionTypeID, LatestActionReason, DeadLineDate, ActionTypeID, UserTableID2, 
            EmailNuFromDate, OldSecretariatID, CustomerID, InnerNO, ECEAnswer, RetroactionYear, FollowLetterYear,Html
     FROM        Letter INNER JOIN LetterFormats lf
     ON Letter.letterformat=lf.Code 
     INNER JOIN Classifications c
     ON Letter.ClassificationID=c.ID INNER JOIN Urgenceis u
     ON Letter.UrgencyID=u.ID INNER JOIN ReceiveTypes rt
     ON Letter.ReceiveTypeID=rt.ID left JOIN  lettertext ON lettertext.LetterID = Letter.LetterID
     WHERE Letter.Letter_Type=@letter_type AND Letter.IndicatorID=@srchno
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetterDeadLines]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetterDeadLines](@OrgID INT,@Operand INT,@Date NVARCHAR)
AS
	IF(@Operand=0)
	SELECT L.LetterID,L.IndicatorID, L.MYear, l.Letter_Type,L.IncommingNO,
		   L.Incommingdate, L.FromOrgID,L.ToOrgID, L.LetterRecommites,rc.Paraph,
		   rc.DeadLineDate,rc.viewdate,L.Memo,s.SecTitle 
		   FROM Letter L INNER JOIN ReCommites rc ON rc.LetterID = L.LetterID 
		   LEFT JOIN Secretariats s ON s.SecID = L.SecretariatID 
		   WHERE ((rc.DeadLineDate IS NOT NULL) AND (l.sentletterid IS NULL)) 
			and (L.FromOrgID= @OrgID) AND((rc.DeadLineDate <=@Date ))
	ELSE IF(@Operand=1)
	SELECT L.LetterID,L.IndicatorID, L.MYear, l.Letter_Type,L.IncommingNO,
		   L.Incommingdate, L.FromOrgID,L.ToOrgID, L.LetterRecommites,rc.Paraph,
		   rc.DeadLineDate,rc.viewdate,L.Memo,s.SecTitle 
		   FROM Letter L INNER JOIN ReCommites rc ON rc.LetterID = L.LetterID 
		   LEFT JOIN Secretariats s ON s.SecID = L.SecretariatID 
		   WHERE ((rc.DeadLineDate IS NOT NULL) AND (l.sentletterid IS NULL)) 
			and (L.FromOrgID= @OrgID) AND((rc.DeadLineDate =@Date ))  
	ELSE IF(@Operand=2)
	SELECT L.LetterID,L.IndicatorID, L.MYear, l.Letter_Type,L.IncommingNO,
		   L.Incommingdate, L.FromOrgID,L.ToOrgID, L.LetterRecommites,rc.Paraph,
		   rc.DeadLineDate,rc.viewdate,L.Memo,s.SecTitle 
		   FROM Letter L INNER JOIN ReCommites rc ON rc.LetterID = L.LetterID 
		   LEFT JOIN Secretariats s ON s.SecID = L.SecretariatID 
		   WHERE ((rc.DeadLineDate IS NOT NULL) AND (l.sentletterid IS NULL)) 
			and (L.FromOrgID= @OrgID) AND((rc.DeadLineDate >=@Date ))
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetterFormats]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetterFormats]
AS
	SELECT* FROM LetterFormats lf
	ORDER BY lf.Code
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetterFormMaker]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetterFormMaker](@ID INT)
AS
	SELECT LF.UserID 
	FROM LetterForms LF 
	WHERE  LF.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetterForms]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetterForms](@UserId INT,@LetterID INT)
AS
	SELECT LF.ID, T.DESCRIPTION AS FormDsc 
	FROM LetterForms LF INNER JOIN Tables t ON LF.FormID = t.TableId 
	WHERE  LF.LetterID =@LetterID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetterTemplates]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetterTemplates](@groupId INT)
AS
	IF(@groupId<>0)
	  SELECT   *
	  FROM LetterTemplate lt WHERE lt.TemplateGroupID=@groupId
	ELSE
	  SELECT   *
	  FROM LetterTemplate lt
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetLetterTypes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetLetterTypes]
AS
	SELECT * FROM LetterTypes lt
	ORDER BY lt.ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetNews]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetNews](@userid INT,@unRead BIT,@messagePart NVARCHAR(300))
AS
IF (@unRead=1)

	Select N.* , NU.UsersID as ReciverUserID , NU.ISRead,(Select Title from Users Where ID = N.UserID) as UsersTitle
      ,(Select Title From Urgenceis Where ID = N.UrgenceisID) as Urgenceis
      ,(Select ImDa.FileName from ImageData ImDa
    Where ImDa.TableName = 'News'
      And ImDa.TableID = N.NewsID )as AttachFileName
    From News N
    Inner Join NewsUsers NU On NU.NewsID = N.NewsID
    Where(NU.UsersID =@userid) AND (N.Title like @messagePart) AND ISNULL(IsRead,0)=0

ELSE

	Select N.* , NU.UsersID as ReciverUserID , NU.ISRead,(Select Title from Users Where ID = N.UserID) as UsersTitle
      ,(Select Title From Urgenceis Where ID = N.UrgenceisID) as Urgenceis
      ,(Select ImDa.FileName from ImageData ImDa
    Where ImDa.TableName = 'News'
      And ImDa.TableID = N.NewsID )as AttachFileName
    From News N
    Inner Join NewsUsers NU On NU.NewsID = N.NewsID
    Where(NU.UsersID =@userid) AND (N.Title like @messagePart) AND ISNULL(NU.NotShow,0)=0
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetPageNumber]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetPageNumber](@Extention INT,@LetterID INT,@count INT OUTPUT)
AS

SET @count=(Select count(*) from LetterData where LetterId=@LetterID AND extention=@Extention)
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetReceiveTypes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetReceiveTypes]
AS
	SELECT   *
	FROM ReceiveTypes rt
	ORDER BY rt.ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRecommiteDataByID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetRecommiteDataByID](@ID INT)
AS

Select rv.*, e.ExtentionTitle, e.Extention
       from RecommitePayvast rv, Extention e WHERE rv.extention = e.ExtentionID and rv.ID =@ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetReferenceTableData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetReferenceTableData](@FieldID INT)
AS

SELECT * FROM ReferenceTableData WHERE TableID = (SELECT ReferenceTableID FROM Fields WHERE ID =@FieldID)
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetSubjectById]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetSubjectById](@Id INT)
AS
	SELECT   *
	FROM [Subject] s  
	WHERE s.SubjectID=@Id
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTemplateGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetTemplateGroup]
AS
	SELECT   *
		FROM TemplateGroup
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTermCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_GetTermCode](@today char(10))
AS
declare @Code char(3)
select top 1 @code=code
from behdasht..lt53 
where  @today between bdate and edate
order by 1 desc


if @code is null
select top 1 @code=code
from behdasht..lt53 
order by 1 desc

 

GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUrgenceis]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetUrgenceis]
AS
	SELECT   *
		FROM Urgenceis u
		ORDER BY u.ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserById]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetUserById](@id INT)
AS

	SELECT   *
		FROM Users u
		WHERE id=@id
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserByUserName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetUserByUserName](@username NVARCHAR(50))
AS

	SET @username=REPLACE(@username,NCHAR(1610),NCHAR(1740));
	SELECT   *
		FROM     Users
		WHERE Active = 1 AND REPLACE(UserName,NCHAR(1610),NCHAR(1740))=@username
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserPass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetUserPass](@username NVARCHAR(50))
AS
	SET @username=REPLACE(@username,NCHAR(1740),NCHAR(1610));
	SELECT   PassWord
		FROM      Users
		WHERE UserName=@username
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetUserSecondSign]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetUserSecondSign]
	@UserId int
as
begin
	--	last modifier xax 1398/03/03
	select
		top 1
		UserSign
	from UserSign
	where UserID = @UserId
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetWordTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetWordTemplate](@templateId INT)
AS
	SELECT lt.[Document] 
		FROM LetterTemplate lt
		WHERE lt.ID=@templateId
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetWorkgroupOrg]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetWorkgroupOrg](@WorkgroupID INT)
AS

	Select * 
		From WorkGroupOrg 
		Where WorkGroupID =@WorkgroupID
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetWorkSheet_Results]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetWorkSheet_Results](@WorkSheetId INT)
AS

	SELECT wsr.ID,wsr.[Description] AS Mean
		FROM WorkSheet_Results wsr 
		WHERE wsr.WorkSheetBaseID=@WorkSheetId
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetWorkSheetMustCome]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetWorkSheetMustCome]
AS
	SELECT * 
		FROM WorkSheetSessionsMustCome wssmc
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetWorkSheetTaskStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_GetWorkSheetTaskStatus]
AS
	SELECT * 
		FROM WorkSheetTasksStatus wsts
GO
/****** Object:  StoredProcedure [dbo].[Sp_HasLetter_WordFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_HasLetter_WordFile](@LetterID int) AS
DECLARE @HasFile INT
	SET @HasFile=(SELECT    COUNT(LetterDataID)
					FROM         LetterData
					WHERE     (extention = 3) AND (LetterID = @LetterID))

	SELECT @HasFile
GO
/****** Object:  StoredProcedure [dbo].[Sp_Inbox]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_Inbox]  
    @SecretariatID INT ,
    @LetterFormat TINYINT ,
    @OrgID INT ,
    @Proceeded BIT ,
    @Type TINYINT ,
    @myear INT ,
    @date TINYINT ,
    @ArchiveFolderID INT ,
    @where VARCHAR(4000) ,
    @userID INT ,
    @Letter_Type INT ,
    @DeadLine INT ,
    @orderClause VARCHAR(50) = ' RC.recommitedate desc,L.indicatorid desc' ,
    @top INT = 100 ,
    @DayOfNow CHAR(10) ,
    @WebOrWin VARCHAR(50) = NULL ,
    @NOTREAD INT 
AS
    BEGIN
          
        DECLARE @sql VARCHAR(Max),

            @rw VARCHAR(Max),
            @Today CHAR(10),
            @Proceed BIT, 
            @todayToint VARCHAR(10),
            @Mytoday NVARCHAR(10) 
               
        SET @WebOrWin = UPPER(LTRIM(RTRIM(ISNULL(@WebOrWin, 'Web'))))
        
        IF @Mytoday = 'WEB'
            SELECT  @Mytoday = dbo.Shamsi(GETDATE())

        IF OBJECT_ID('tempdb..#MyTmp') IS NOT NULL
            DROP TABLE #MyTmp
        
        CREATE TABLE #MyTmp
            (
              MyTmp_ID INT IDENTITY(1, 1) NOT NULL ,
              LetterID INT ,
              SignerID NVARCHAR(1000) ,
              IndicatorID INT ,
              MYear INT ,
              subjectid INT ,
              SecretariatID INT ,
              Letter_Type INT ,
              letterformat INT ,
              IncommingNO NVARCHAR(1000) ,
              Incommingdate NVARCHAR(100) ,
              ClassificationID INT ,
              UrgencyID INT ,
              Memo NVARCHAR(4000) ,
              Tostaffer NVARCHAR(4000) ,
              SentLetterID INT ,
              AttachTitle NVARCHAR(1000) ,
              NumberOfAttachPages INT ,
              NumberOfPage INT ,
              ReceiveTypeID INT ,
              UserID INT ,
              RetroactionNo NVARCHAR(100) ,
              UserMemo NVARCHAR(1000) ,
              RegistrationDate CHAR(100) ,
              toorgid INT ,
              fromorgid INT ,
              FollowLetterNo NVARCHAR(100) ,
              LetterRecommites NVARCHAR(1000) ,
              finalized BIT ,
              CenterNo NVARCHAR(100) ,
              CenterDate CHAR(100) ,
              templateID INT ,
              headerID INT ,
              registrationTime VARCHAR(100) ,
              fromstaffer NVARCHAR(4000) ,
              sendStatusID INT ,
              LastUpdate DATETIME ,
              UserTableID INT ,
              InnerNo NVARCHAR(1000) ,
              OrgID INT ,
              ParentId SMALLINT ,
              Paraph NVARCHAR(4000) ,
              RecommiteDate VARCHAR(10) ,
              RecommiteTime VARCHAR(5) ,
              Proceeded BIT ,
              ProceedDate VARCHAR(100) ,
              ReType SMALLINT ,
              RecommitTypeTitle NVARCHAR(1000) ,
              IsInner INT ,
              RecommiterTitle NVARCHAR(1000) ,
              sendertitle NVARCHAR(1000) ,
              recommiteid INT ,
              id SMALLINT ,
              isSecure BIT ,
              StaffMemo NVARCHAR(4000) ,
              Yincommingno NVARCHAR(1000) ,
              PreCode NVARCHAR(100) ,
              IsCopy BIT ,
              IsCopy_In_Dabir BIT ,
              SentToDabir BIT ,
              has_Page BIT ,
              has_WordPage BIT ,
              has_file BIT ,
              DeadLineDays INT ,
              ViewDate CHAR(100) ,
              DeadLineDate CHAR(100) ,
              ChildParaph NVARCHAR(3000) ,
              ChildOrg NVARCHAR(1000) ,
              ActionTypeID INT ,
              UserRecomCount INT ,
              IsAnswer BIT ,
              ISFollowup BIT ,
              Erja_Or_Answer_Date CHAR(10) ,
              ColorFlag VARCHAR(50) ,
              MemoAndRecomUserCount NVARCHAR(4000) ,
              has_Sign BIT ,
              InnerNo2 NVARCHAR(500) ,
              HasLetterForms BIT,
              anjam_shod_status int
            )
    
        SELECT  @today = dbo.shamsi(GETDATE())        
            
        SET @Proceed = @Proceeded  
        
        DECLARE @InnerNo NVARCHAR(500)
        
        DECLARE @innerNo2 NVARCHAR(500)

        IF @WebOrWin = UPPER('WIN')
            SET @InnerNo = dbo.InnerNoFormat('TTO', 'Receiver', @SecretariatID)
        ELSE
            SET @InnerNo = dbo.InnerNoFormat('TTO', 'Receiver', -1)

        SET @InnerNo2 = dbo.InnerNoFormat('Sender', 'Deliver', @SecretariatID)
        
        SET @RW = ' Where (RC.Finallized=1) And (RC.OrgID = ' + CAST(@OrgID AS VARCHAR(10)) + ') '

        SET @InnerNo = REPLACE(@InnerNo, 'Letter.SubjectID', 'L.SubjectID')

        IF @ArchiveFolderID = 0
            SET @rw = @RW + ' AND (RC.Proceeded = ' + CAST(@Proceeded AS VARCHAR(2)) + ')'

        IF @myear > 0
            SET @rw = @rw + '  AND  L.myear=' + CAST(@myear AS VARCHAR(10))        
      
        IF @LetterFormat > 0
            SET @rw = @rw + ' AND (L.LetterFormat ='
                + CAST(@LetterFormat AS VARCHAR(2)) + ')'        
        ELSE
            SET @rw = @rw + ' AND (L.LetterFormat in (1,2))'        
            
        IF @letter_Type > 0
            SET @rw = @rw + ' AND (L.letter_Type = '
                + CAST(@Letter_Type AS VARCHAR(2)) + ')'        
            
        IF @type > 0
            SET @rw = @rw + ' AND (RC.Type = ' + CAST(@Type AS VARCHAR(2)) + ')'        
          
        IF @ArchiveFolderID > 0
            SET @rw = @rw + ' AND (ArchiveFolderID = ' + CAST(@ArchiveFolderID AS VARCHAR(10)) + ')'        
            
        IF @date <> 0
            BEGIN        
                DECLARE @dw TINYINT ,
                    @bdate CHAR(10) ,
                    @edate CHAR(10)        
                
                SET @dw = DATEPART(dw, GETDATE())    
                
				SET @Mytoday = CAST(@myear AS NVARCHAR) + SUBSTRING(@Today, 5, 6)    
                
                SELECT  @bdate = begindate ,
                        @edate = Enddate
                FROM    HistoryDateList(@Mytoday, @dw)
                WHERE   id = @date     
            
                SET @rw = @rw + ' AND (RC.RecommiteDate between ''' + @bdate + ''' AND ''' + @edate + ''')'        
            END        
            
        IF @SecretariatID > 0
            SET @rw = @rw + ' AND (SecretariatID = ' + CAST(@SecretariatID AS VARCHAR(10)) + ')'        
        ELSE
            SET @rw = @rw + ' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = ' + CAST(@userid AS VARCHAR(5)) + '))'        
            
        SET @todayToint = CAST(dbo.ShamsiToInt(@today) AS VARCHAR(10))        

        IF @DeadLine BETWEEN -1 AND 30
            SET @rw = @rw + ' AND ('
                + CASE WHEN @Proceed = 1
                       THEN 'case when ChildRecommite.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'
                            + @todayToint + ') else  ''' + @todayToint
                            + ''' end '
                       ELSE 'ISNULL(RC.DeadLineToint ,' + @todayToint + ') '
                  END + ' -' + @todayToint + ' )<= '
                + CAST(@DeadLine AS VARCHAR(5))        
            
        SET @sql = '    SELECT LetterID, OrgID, max(ID) MaxRcID INTO #tmpRC FROM dbo.ReCommites
                        WHERE OrgID = ' + CAST(@OrgID AS VARCHAR)
            + ' GROUP BY LetterID, OrgID '
            + '    INSERT INTO #MyTmp SELECT top ' + CAST(@top AS VARCHAR(5))
            + ' L.LetterID,L.SignerID, L.IndicatorID, L.MYear,L.subjectid, L.SecretariatID, L.Letter_Type,   
                                                L.letterformat, L.IncommingNO, L.Incommingdate, L.ClassificationID, L.UrgencyID, '
            + CASE WHEN UPPER(@WebOrWin) = UPPER('WIN') THEN ' L.memo '
                   ELSE ' dbo.fn_trunc(L.memo,30) '
              END
            + ' , L.Tostaffer,L.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, '+ 
			' dbo.RetroactionNo_LIST  (L.LetterID) AS RetroactionNo /*L.RetroactionNo*/,   
                        L.UserMemo, L.RegistrationDate, L.toorgid,L.fromorgid,dbo.FollowLetterNo_LIST (L.LetterID) as FollowLetterNo/*L.FollowLetterNo*/, '
            + CASE WHEN UPPER(@WebOrWin) = UPPER('WIN')
                   THEN ' L.LetterRecommites '
                   ELSE ' dbo.fn_trunc(L.LetterRecommites,30) '
              END
            + ',L.finalized,L.CenterNo,L.CenterDate,L.templateID,L.headerID, L.registrationTime,L.fromstaffer,L.sendStatusID,L.LastUpdate,L.UserTableID,        
    ' + @InnerNo + ' InnerNo, PRC.OrgID,  RC.ParentId, '
            + CASE WHEN UPPER(@WebOrWin) = UPPER('WIN') THEN ' RC.Paraph '
                   ELSE ' dbo.fn_trunc(RC.Paraph,30) '
              END
            + ' , RC.RecommiteDate, RC.RecommiteTime,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,' +
                ' case when fo.title is null then 0 else 1 end IsInner, isnull(isnull(FO.Title,foo.title),TTO.title) RecommiterTitle,tto.title sendertitle,RC.recommiteid, ' +
                ' RC.id,  RC.IsSecure, RC.StaffMemo, isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy,RC.IsCopy_In_Dabir,RC.SentToDabir' +
                ' ,dbo.has_Page(L.letterid) has_Page, dbo.has_WordPage(L.letterid) has_WordPage, dbo.has_file(L.letterid) has_file, Isnull('
            + CASE WHEN @Proceed = 1 THEN 'ChildRecommite.DeadLineToint'
                   ELSE 'RC.DeadLineToint'
              END + '-' + @todayToint + ',0) DeadLineDays,'
            + CASE WHEN @Proceed = 1 THEN 'RTRIM(LTRIM(ChildRecommite.ViewDate))'
                   ELSE 'RTRIM(LTRIM(RC.ViewDate))'
              END + ','
            + CASE WHEN @Proceed = 1 THEN 'ChildRecommite.DeadLineDate '
                   ELSE 'RC.Deadlinedate  '
              END + ' DeadLineDate ,'
            + CASE WHEN @Proceed = 1
                   THEN 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '
                   ELSE ''' '''
              END + ' ChildParaph ,'
            + CASE WHEN @Proceed = 1
                   THEN 'isnull(RecommitedOrg.Title,isnull(isnull(FO.Title,foo.title),TTO.title)) '
                   ELSE ' isnull(isnull(FO.Title,foo.title),TTO.title) '
              END + ' ChildOrg , '
            + CASE WHEN @Proceed = 1
                   THEN ' case when RC.ActionTypeID=5 then 5 else ChildRecommite.ActionTypeID end '
                   ELSE ' RC.ActionTypeID'
              END + ' ActionTypeID   
    ' + ', (dbo.FN_GetUserRecomCount(' + CAST(@OrgID AS VARCHAR)
            + ', L.LetterID)) as UserRecomCount  '
            + ' , RC.IsAnswer , RC.ISFollowup , RC.Erja_Or_Answer_Date, ''White'' ColorFlag '
            + ', (Case when dbo.FN_GetUserRecomCount('
            + CAST(@OrgID AS VARCHAR)
            + ', L.LetterID) > 1 then L.Memo +'' (''+ cast(dbo.FN_GetUserRecomCount('
            + CAST(@OrgID AS VARCHAR)
            + ', L.LetterID) as varchar)+'')'' else L.Memo end) as MemoAndRecomUserCount , dbo.Has_Sign(L.letterid) AS Has_Sign'
            + ', /*Case When dbo.InnerNo(L.LetterID,l.Letter_Type) InnerNo2*/ Case When L.letterformat = 2 then dbo.innernoForWord(l.LetterID) else dbo.InnerNo(L.LetterID,l.Letter_Type) end InnerNo2,
			dbo.HasLetterForms(L.LetterID) HasLetterForms ' +
     ' ,(SELECT anjam_shod FROM letter WHERE letter.LetterID = RC.LetterID) AS anjam_shod_status ' +
     ' FROM ReCommites RC ' +
    ' INNER JOIN #tmpRC ON RC.LetterID = #tmpRC.LetterID AND RC.OrgID = #tmpRC.OrgID AND RC.ID = #tmpRC.MaxRcID ' +
    ' INNER JOIN Letter L ON RC.LetterID = L.LetterID ' +
    ' INNER JOIN Secretariats ON Secretariats.Secid = L.SecretariatID ' +
    ' LEFT JOIN LetterTypes ON L.Letter_Type=LetterTypes.ID ' +
    ' LEFT JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type ' +
    ' LEFT JOIN ReCommites rRC ON RrC.LetterID = L.LetterID AND rRC.Id=1 AND rrc.type<>1 ' +
    ' LEFT JOIN FromOrganizations FoO ON FoO.ID = rRC.OrgID AND rrc.orgid <> ' + CAST(@OrgID AS VARCHAR) + 
	' LEFT JOIN FromOrganizations FO ON FO.ID = PRC.OrgID ' +       
    ' LEFT JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID ' +
    ' LEFT JOIN FromOrganizations Receiver ON Receiver.ID = L.FromOrgID ' +
    ' INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '
            + CASE WHEN @Proceed = 1 THEN 
			' LEFT JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type = RC.type ' +
    ' LEFT JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID ' +
    ' LEFT JOIN FollowUp ON FollowUp.LetterID = RC.LetterID '
                   ELSE ''
              END        
            
        IF @archiveFolderID <> 0
            SET @sql = @sql
                + ' LEFT JOIN LetterArchiveFolder on LetterArchiveFolder.Letterid=RC.RecommiteID '        
            
        SET @sql = @sql + @rW        
            
        SET @where = ISNULL(LTRIM(RTRIM(@where)), '')        
        IF ( @where <> '' )
            SELECT  @sql = @sql + ' AND ' + @where        
            
        IF ( @NOTREAD = 1 ) 
            SET  @sql = @sql + ' AND ' + ' ISNULL(LTRIM(RTRIM(RC.ViewDate)), ''-'') = ''-'' '            

        SET @sql = @sql + ' order by RC.recommitedate desc,RC.recommiteTime desc '
		--print (@SQL)
        EXEC(@sql)

        UPDATE  #MyTmp
        SET     ColorFlag = 'ORANGE'
        WHERE   ( LEN(LTRIM(RTRIM(DeadLineDate))) > 0 )
                AND ( (( Erja_Or_Answer_Date IS NOT NULL )
                      AND ( Erja_Or_Answer_Date > DeadLineDate ))
                    )     

        UPDATE  #MyTmp
        SET     ColorFlag = 'RED'
        WHERE   ( LEN(LTRIM(RTRIM(DeadLineDate))) > 0 )
                AND ( @DayOfNow > DeadLineDate )
                    
        UPDATE  #MyTmp
        SET     ColorFlag = 'GREEN'
        WHERE   ( LEN(LTRIM(RTRIM(DeadLineDate))) > 0 )
                AND 
                (     ( ( Erja_Or_Answer_Date IS NOT NULL )
                        AND ( Erja_Or_Answer_Date <= DeadLineDate )
                      )
                      OR 
                      ( ( Erja_Or_Answer_Date IS NULL )
                        AND ( @DayOfNow <= DeadLineDate )
                      )
                      OR (anjam_shod_status = 1)
                    )
                 
        IF @ArchiveFolderID > 0
            BEGIN
                DELETE  FROM #MyTmp
                WHERE   MyTmp_ID NOT IN ( SELECT    MIN(MyTmp_ID)
                                          FROM      #MyTmp
                                          GROUP BY  LetterID ,
                                                    IndicatorID ,
                                                    MYear )
            END     

        SELECT  *
        FROM    #MyTmp
    END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Inbox2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_Inbox2]
    @SecretariatID INT ,
    @LetterFormat TINYINT ,
    @OrgID INT ,
    @Proceeded BIT ,
    @Type TINYINT ,
    @myear INT ,
    @date TINYINT ,
    @ArchiveFolderID INT ,
    @where NVARCHAR(1000) ,
    @userID INT ,
    @Letter_Type INT ,
    @DeadLine INT ,
    @orderClause VARCHAR(50) = ' SUB1.recommitedate desc,SUb1.indicatorid desc' ,--' SUB1.recommitedate desc,SUb1.indicatorid desc' ,
    @top INT = 100 ,
    @DayOfNow CHAR(10) ,
    @WebOrWin VARCHAR(50) = NULL
AS
    BEGIN
        
        DECLARE @sql NVARCHAR(max) ,
            @rw NVARCHAR(2000) ,
            @Today CHAR(10) ,
            @Proceed BIT , 
            @todayToint VARCHAR(10) ,
            @Mytoday NVARCHAR(10) , 
            @WHERENEW  NVARCHAR(2000)
        SET @WebOrWin = UPPER(LTRIM(RTRIM(ISNULL(@WebOrWin, 'Web'))))
        
        IF @Mytoday = 'WEB'
            SELECT  @Mytoday = dbo.Shamsi(GETDATE())

        IF OBJECT_ID('tempdb..#MyTmp') IS NOT NULL
            DROP TABLE #MyTmp
        
        CREATE TABLE #MyTmp
            (
              MyTmp_ID INT IDENTITY(1, 1)
                           NOT NULL ,
              ArchiveFolderID int,  
              LetterID INT ,
              SignerID NVARCHAR(1000) ,
              IndicatorID INT ,
              MYear INT ,
              subjectid INT ,
              SecretariatID INT ,
              Letter_Type INT ,
              letterformat INT ,
              IncommingNO NVARCHAR(1000) ,
              Incommingdate NVARCHAR(100) ,
              ClassificationID INT ,
              UrgencyID INT ,
              Memo NVARCHAR(4000) ,
              Tostaffer NVARCHAR(4000) ,
              SentLetterID INT ,
              AttachTitle NVARCHAR(1000) ,
              NumberOfAttachPages INT ,
              NumberOfPage INT ,
              ReceiveTypeID INT ,
              UserID INT ,
              RetroactionNo NVARCHAR(100) ,
              UserMemo NVARCHAR(1000) ,
              RegistrationDate CHAR(100) ,
              toorgid INT ,
              fromorgid INT ,
              FollowLetterNo NVARCHAR(1000) ,
              LetterRecommites NVARCHAR(1000) ,
              finalized BIT ,
              CenterNo NVARCHAR(100) ,
              CenterDate CHAR(100) ,
              templateID INT ,
              headerID INT ,
              registrationTime VARCHAR(100) ,
              fromstaffer NVARCHAR(4000) ,
              sendStatusID INT ,
              LastUpdate DATETIME ,
              UserTableID INT ,
              InnerNo NVARCHAR(1000) ,
              OrgID INT ,
              ParentId SMALLINT ,
              Paraph NVARCHAR(4000) ,
              RecommiteDate VARCHAR(10) ,
              RecommiteTime VARCHAR(5) ,
              Proceeded BIT ,
              ProceedDate VARCHAR(100) ,
              ReType SMALLINT ,
              RecommitTypeTitle NVARCHAR(1000) ,
              IsInner INT ,
              RecommiterTitle NVARCHAR(1000) ,
              sendertitle NVARCHAR(1000) ,
              recommiteid INT ,
              id SMALLINT ,
              isSecure BIT ,
              StaffMemo NVARCHAR(4000) ,
              Yincommingno NVARCHAR(1000) ,
              PreCode NVARCHAR(100) ,
              IsCopy BIT ,
              IsCopy_In_Dabir BIT ,
              SentToDabir BIT ,
              has_Page BIT ,
              has_WordPage BIT ,
              has_file BIT ,
              DeadLineDays INT ,
              ViewDate CHAR(100) ,
              DeadLineDate CHAR(100) ,
              ChildParaph NVARCHAR(3000) ,
              ChildOrg NVARCHAR(1000) ,
              ActionTypeID INT ,
              UserRecomCount INT ,
              IsAnswer BIT ,
              ISFollowup BIT ,
              Erja_Or_Answer_Date CHAR(10) ,
              ColorFlag VARCHAR(50) ,
              MemoAndRecomUserCount NVARCHAR(4000) ,
              has_Sign BIT ,
              InnerNo2 NVARCHAR(500) ,
              HasLetterForms BIT
            )
    
        SELECT  @today = dbo.shamsi(GETDATE())        
            
        SET @Proceed = @Proceeded  
        
        DECLARE @InnerNo NVARCHAR(500)
        
        DECLARE @innerNo2 NVARCHAR(500)

        IF @WebOrWin = UPPER('WIN')
            SET @InnerNo = dbo.InnerNoFormat('TTO', 'Receiver', @SecretariatID)
        ELSE
            SET @InnerNo = dbo.InnerNoFormat('TTO', 'Receiver', -1)

        SET @InnerNo2 = dbo.InnerNoFormat('Sender', 'Deliver', @SecretariatID)
        
        SET @RW = ' WHERE (RC.Finallized=1) AND (RC.OrgID = ' + CAST(@OrgID AS VARCHAR(10)) + ') '

        SET @InnerNo = REPLACE(@InnerNo, 'Letter.SubjectID', 'L.SubjectID')

        /* ATAIE IF @ArchiveFolderID = 0 */
            SET @rw = @RW + ' AND (RC.Proceeded = ' + CAST(@Proceeded AS VARCHAR(2)) + ')'  
				
        IF @myear > 0
            SET @rw = @rw + '  AND  L.myear=' + CAST(@myear AS VARCHAR(10))        
      
        IF @LetterFormat > 0
            SET @rw = @rw + ' AND (L.LetterFormat =' + CAST(@LetterFormat AS VARCHAR(2)) + ')'        
        ELSE
            SET @rw = @rw + ' AND (L.LetterFormat in (1,2))'        
            
        IF @letter_Type > 0
            SET @rw = @rw + ' AND (L.letter_Type = ' + CAST(@Letter_Type AS VARCHAR(2)) + ')'        
            
        IF @type > 0
            SET @rw = @rw + ' AND (RC.Type = ' + CAST(@Type AS VARCHAR(2)) + ')'        
          
       /* IF @ArchiveFolderID > 0
            SET @rw = @rw + ' AND (ArchiveFolderID = '
                + CAST(@ArchiveFolderID AS VARCHAR(10)) + ')'        
				*/
            
        IF @date <> 0
            BEGIN        
                DECLARE @dw TINYINT ,
                    @bdate CHAR(10) ,
                    @edate CHAR(10)        
                
                SET @dw = DATEPART(dw, GETDATE())    
                
				SET @Mytoday = CAST(@myear AS NVARCHAR) + SUBSTRING(@Today, 5, 6)    
                
                SELECT  @bdate = begindate ,
                        @edate = Enddate
                FROM    HistoryDateList(@Mytoday, @dw)
                WHERE   id = @date     
            
                SET @rw = @rw + ' AND (RC.RecommiteDate between ''' + @bdate + ''' AND ''' + @edate + ''')'        
            END        
            
        IF @SecretariatID > 0
            SET @rw = @rw + ' AND (SecretariatID = ' + CAST(@SecretariatID AS VARCHAR(10)) + ')'        
        ELSE
            SET @rw = @rw + ' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = ' + CAST(@userid AS VARCHAR(5)) + '))'        
            
        SET @todayToint = CAST(dbo.ShamsiToInt(@today) AS VARCHAR(10))        

        IF @DeadLine BETWEEN -1 AND 30
            SET @rw = @rw + ' AND ('
                + CASE WHEN @Proceed = 1
                       THEN 'case when ChildRecommite.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'
                            + @todayToint + ') else  ''' + @todayToint
                            + ''' end '
                       ELSE 'ISNULL(RC.DeadLineToint ,' + @todayToint + ') '
                  END + ' -' + @todayToint + ' )<= '
                + CAST(@DeadLine AS VARCHAR(5))        

        SET @sql = '    SELECT LetterID, OrgID, MAX(ID) MaxRcID INTO #tmpRC FROM dbo.ReCommites
                        WHERE OrgID = ' + CAST(@OrgID AS VARCHAR)
            + ' GROUP BY LetterID, OrgID '
		   + '    INSERT INTO #MyTmp  Select distinct top  ' + CAST(@top AS VARCHAR(5)) + ' *  from ( SELECT distinct ' 
            + ' LetterArchiveFolder.ArchiveFolderID,'
            + ' L.LetterID,L.SignerID, L.IndicatorID, L.MYear,L.subjectid, L.SecretariatID, L.Letter_Type, ' 
             + ' L.letterformat, L.IncommingNO, L.Incommingdate, L.ClassificationID, L.UrgencyID, '
            + CASE WHEN UPPER(@WebOrWin) = UPPER('WIN') THEN ' L.memo '
                   ELSE ' dbo.fn_trunc(L.memo,30) '
              END
            + ' , L.Tostaffer,L.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, L.RetroactionNo, '
             + 'L.UserMemo, L.RegistrationDate, L.toorgid,L.fromorgid,L.FollowLetterNo, '
            + CASE WHEN UPPER(@WebOrWin) = UPPER('WIN') THEN ' L.LetterRecommites '
                   ELSE ' dbo.fn_trunc(L.LetterRecommites,30) '
              END
            + ',L.finalized,L.CenterNo,L.CenterDate,L.templateID,L.headerID, L.registrationTime,L.fromstaffer,L.sendStatusID,L.LastUpdate,L.UserTableID,        
    ' + @InnerNo + ' InnerNo, PRC.OrgID,  RC.ParentId, '
            + CASE WHEN UPPER(@WebOrWin) = UPPER('WIN') THEN ' RC.Paraph '
                   ELSE ' dbo.fn_trunc(RC.Paraph,30) '
              END
            + ' , RC.RecommiteDate, RC.RecommiteTime,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle, '
                + ' case when fo.title is null then 0 else 1 end IsInner, isnull(isnull(FO.Title,foo.title),TTO.title) RecommiterTitle,tto.title sendertitle,RC.recommiteid,'
                + ' RC.id,  RC.IsSecure, RC.StaffMemo, isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy,RC.IsCopy_In_Dabir,RC.SentToDabir' 
                + ',dbo.has_Page(L.letterid) has_Page, dbo.has_WordPage(L.letterid) has_WordPage,'
                + ' dbo.has_file(L.letterid) has_file, Isnull(' + CASE WHEN @Proceed = 1 THEN 'ChildRecommite.DeadLineToint'
                   ELSE 'RC.DeadLineToint'
              END + '-' + @todayToint + ',0) DeadLineDays,' + CASE WHEN @Proceed = 1 THEN 'ChildRecommite.ViewDate'
                   ELSE 'RC.ViewDate'
              END + ','
            + CASE WHEN @Proceed = 1 THEN 'ChildRecommite.DeadLineDate '
                   ELSE 'RC.Deadlinedate  '
              END + ' DeadLineDate ,'
            + CASE WHEN @Proceed = 1
                   THEN 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '
                   ELSE ''' '''
              END + ' ChildParaph ,'
            + CASE WHEN @Proceed = 1
                   THEN 'isnull(RecommitedOrg.Title,isnull(isnull(FO.Title,foo.title),TTO.title)) '
                   ELSE ' isnull(isnull(FO.Title,foo.title),TTO.title) '
              END + ' ChildOrg , '
            + CASE WHEN @Proceed = 1
                   THEN ' case when RC.ActionTypeID=5 then 5 else ChildRecommite.ActionTypeID end '
                   ELSE ' RC.ActionTypeID'
              END + ' ActionTypeID   
    ' + ', (dbo.FN_GetUserRecomCount(' + CAST(@OrgID AS VARCHAR)
            + ', L.LetterID)) as UserRecomCount  '
            + ' , RC.IsAnswer , RC.ISFollowup , RC.Erja_Or_Answer_Date, ''White'' ColorFlag '
            + ', (Case when dbo.FN_GetUserRecomCount('
            + CAST(@OrgID AS VARCHAR)
            + ', L.LetterID) > 1 then L.Memo +'' (''+ cast(dbo.FN_GetUserRecomCount('
            + CAST(@OrgID AS VARCHAR)
            + ', L.LetterID) as varchar)+'')'' else L.Memo end) as MemoAndRecomUserCount , dbo.Has_Sign(L.letterid) AS Has_Sign'
            + ', dbo.InnerNo(L.LetterID,l.Letter_Type) InnerNo2,dbo.HasLetterForms(L.LetterID) HasLetterForms '
     + ' FROM ReCommites RC '
    + ' left JOIN #tmpRC ON RC.LetterID = #tmpRC.LetterID AND RC.OrgID = #tmpRC.OrgID AND RC.ID = #tmpRC.MaxRcID '
    + ' INNER JOIN Letter L ON RC.LetterID = L.LetterID '
    + ' INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID '
    + ' LEFT JOIN LetterTypes ON L.Letter_Type=LetterTypes.ID '
    + ' left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type '
    + ' left join ReCommites rRC ON RrC.LetterID = L.LetterID AND rRC.Id=1 AND rrc.type<>1 '
    + ' left JOIN FromOrganizations FoO ON FoO.ID = rRC.OrgID AND rrc.orgid <> ' + CAST(@OrgID AS VARCHAR) 
    + ' left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID '
    + ' left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID '
    + ' left JOIN FromOrganizations Receiver ON Receiver.ID = L.FromOrgID '
    + ' INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '+ CASE WHEN @Proceed = 1
                   THEN ' left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type = RC.type '
    + ' left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID '
                   ELSE ''
              END        
            
        IF @archiveFolderID <> 0
            SET @sql = @sql + ' left join LetterArchiveFolder on LetterArchiveFolder.Letterid=RC.RecommiteID '
            
        SET @sql = @sql + @rW  + ')SUB1 '      
            
        SET @where = ISNULL(LTRIM(RTRIM(@where)), '')        
        IF ( @where <> '' )
            SELECT  @sql = @sql + ' AND ' + @where  + ')SUB1 '       
      
		  IF @ArchiveFolderID > 0
          SET @WHERENEW  =  ' WHERE (ArchiveFolderID = '
                            + CAST(@ArchiveFolderID AS VARCHAR(10)) + ') '
		        
        IF ISNULL(LTRIM(@orderClause), '') = ''
		   SET @orderClause = ' SUB1.recommitedate desc,SUB1.indicatorid desc'        
				
        SET @sql = @sql + @WHERENEW + ' order by ' + @orderClause
      
        EXEC(@sql)

        UPDATE  #MyTmp
        SET     ColorFlag = 'GREEN'
        WHERE   ( LEN(LTRIM(RTRIM(DeadLineDate))) > 0 )
                AND ( ( ( Erja_Or_Answer_Date IS NOT NULL )
                        AND ( Erja_Or_Answer_Date <= DeadLineDate )
                      )
                      OR ( ( Erja_Or_Answer_Date IS NULL )
                           AND ( @DayOfNow <= DeadLineDate )
                         )
                    )           

        UPDATE  #MyTmp
        SET     ColorFlag = 'ORANGE'
        WHERE   ( LEN(LTRIM(RTRIM(DeadLineDate))) > 0 )
                AND ( (( Erja_Or_Answer_Date IS NOT NULL )
                      AND ( Erja_Or_Answer_Date > DeadLineDate ))
                    )     

        UPDATE  #MyTmp
        SET     ColorFlag = 'RED'
        WHERE   ( LEN(LTRIM(RTRIM(DeadLineDate))) > 0 )
                AND ( @DayOfNow > DeadLineDate )
                    

        IF @ArchiveFolderID > 0
            BEGIN
                DELETE  FROM #MyTmp
                WHERE   MyTmp_ID NOT IN ( SELECT    MIN(MyTmp_ID)
                                          FROM      #MyTmp
                                          GROUP BY  LetterID ,
                                                    IndicatorID ,
                                                    MYear )
            END     

        SELECT MyTmp_ID,
            LetterID,SignerID,IndicatorID,MYear,subjectid,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,ClassificationID,	
			UrgencyID,memo,Tostaffer,SentLetterID,AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,RetroactionNo,UserMemo,	
			RegistrationDate,toorgid,fromorgid,FollowLetterNo,LetterRecommites,finalized,CenterNo,CenterDate,templateID,headerID,registrationTime,	
			fromstaffer,sendStatusID,LastUpdate,UserTableID,InnerNo,OrgID,ParentId,Paraph,RecommiteDate,RecommiteTime,Proceeded,ProceedDate,	
			ReType,RecommitTypeTitle,IsInner,RecommiterTitle,sendertitle,recommiteid,id,IsSecure,StaffMemo,Yincommingno,PreCode,IsCopy,	
			IsCopy_In_Dabir,SentToDabir,has_Page,has_WordPage,has_file,DeadLineDays,ViewDate,DeadLineDate,ChildParaph,ChildOrg,ActionTypeID,	
			UserRecomCount,IsAnswer,ISFollowup,Erja_Or_Answer_Date,ColorFlag,MemoAndRecomUserCount,Has_Sign,InnerNo2,HasLetterForms,0 as anjam_shod_status 		 
        FROM    #MyTmp
    END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Ins_Emails]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_Ins_Emails] 
	@Code Int, 
	@Subject Nvarchar(200), 
	@SendAddress Nvarchar(100), 
	@ReciveAddress Nvarchar(100), 
	@Memo Image, 
	@AttachFile Image, 
	@AttachFileName Nvarchar(50), 
	@Status SmallInt, 
	@DateEmail Nvarchar(10), 
	@TimeEmail Nvarchar(10), 
	@IsAnswer bit, 
	@IsReciveEmail bit, 
	@UsersID Int, 
	@IsRead bit, 
	@IsPersonal bit, 
	@IsImportant bit, 
	@IsSecret bit, 
	@EmailNuFromDate Nvarchar(20)
As  
Begin
	Insert Into Emails (Code, [Subject], SendAddress, ReciveAddress, Memo, AttachFile, AttachFileName, [Status], DateEmail, TimeEmail, IsAnswer, IsReciveEmail, UsersID, IsRead, IsPersonal, IsImportant, IsSecret, EmailNuFromDate)
		Values(@Code, @Subject, @SendAddress, @ReciveAddress, @Memo, @AttachFile, @AttachFileName, @Status, @DateEmail, @TimeEmail, @IsAnswer, @IsReciveEmail, @UsersID, @IsRead, @IsPersonal, @IsImportant, @IsSecret, @EmailNuFromDate)
End 

GO
/****** Object:  StoredProcedure [dbo].[sp_INSERT_LetterData_Extended]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sp_INSERT_LetterData_Extended]
		@LetterID int,@PageNumber int,@extentionType nvarchar(10),@extentionDesc nvarchar(500),
		@Description nvarchar(500),@archiveID int,@isDocument INT, @isFromArchive BIT
AS
DECLARE @DescriptionAppend NVARCHAR (25)
set @DescriptionAppend =''
IF @isFromArchive = 0 
	SET @DescriptionAppend = '(به نرم  افزار بايگاني)'
ELSE
	SET @DescriptionAppend = '(از نرم  افزار بايگاني)'
	
IF NOT EXISTS(SELECT * FROM Extention WHERE Extention.Extention = @extentionType )
	INSERT INTO Extention(ExtentionTitle,Extention,IsSystem) VALUES (@extentionDesc,@extentionType,0)
DECLARE @extention int, @LastUpdate datetime
SELECT @extention = Extention.ExtentionID FROM Extention WHERE Extention.Extention = @extentionType  ORDER BY ExtentionID ASC
SET @LastUpdate = GETDATE()
INSERT INTO LetterData(LetterID,PageNumber,extention,Description,LastUpdate,archiveID,isDocument)
VALUES(@LetterID,@PageNumber,@extention,@Description+' '+ @DescriptionAppend ,@LastUpdate,@archiveID,@isDocument)
GO
/****** Object:  StoredProcedure [dbo].[SP_IsDuplicateSubjectCode]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_IsDuplicateSubjectCode](@Code VARCHAR(1000), @SubjectID INT, @Result BIT OUTPUT)
AS
BEGIN
	DECLARE @c INT
	SELECT @c = count(SubjectCode) FROM Subject 
	WHERE SubjectCode = @Code AND (@SubjectID = 0 OR SubjectID <> @SubjectID)
	
	SET @c = ISNULL(@c, 0)
	IF @C > 0 SET @Result = 1 ELSE SET @Result = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Letter_Numbers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Letter_Numbers]
@bdate char(10),@edate Char(10),
@receivedNum int output,
@SentNum int output,
@recommitesNum int output,
@SecID int
as
set @receivedNum=0
set @SentNum=0
set @recommitesNum=0

select @receivedNum = count(1) 
	from Letter WITH (NOLOCK)
	where registrationdate between @bdate and @edate 
		and (secretariatid=@SecID or @SecID=0) 
		and Letter_type=1


select @SentNum = count(1)
	from Letter WITH (NOLOCK)
	where registrationdate between @bdate and @edate 
		and (secretariatid=@SecID or @SecID=0) 
		and Letter_type=2

select @recommitesNum = count(1) - @SentNum - @receivedNum 
	from ReCommites WITH (NOLOCK)
		inner join letter WITH (NOLOCK) on letter.letterid=ReCommites.LetterId 
	where ReCommitedate between @bdate and @edate 
		and (secretariatid=@SecID or @SecID=0)
GO
/****** Object:  StoredProcedure [dbo].[sp_makeRecommited]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create PROCEDURE [dbo].[sp_makeRecommited]

	(
		@recommiteId int,
        @ProceedDate char(10),
        @staffmemo  nvarchar(255)

	)

AS
UPDATE ReCommites
   SET  Proceeded = 1
      ,ProceedDate = @ProceedDate
      ,staffmemo = @staffmemo
 WHERE  recommiteId=@recommiteId

GO
/****** Object:  StoredProcedure [dbo].[Sp_Memo_Follow]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE proc [dbo].[Sp_Memo_Follow]
@letterid int
as
SELECT [Memo] FROM [Letter] where letterid=@letterid

 
GO
/****** Object:  StoredProcedure [dbo].[Sp_NewLetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_NewLetterData](@id [int]OUTPUT,@letterId INT,@extention TINYINT,@image IMAGE)
AS
	INSERT INTO LetterData
	(
		-- LetterDataID -- this column value is auto-generated
		LetterID,	
		PageNumber,
		[Image],
		extention
		
	)
	VALUES
	(
		@letterId,1,@image,@extention
	)
	SELECT @id=@@identity
GO
/****** Object:  StoredProcedure [dbo].[Sp_NewLetterSign]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_NewLetterSign](@id [int]OUTPUT,@letterId INT,@userId INT,@paraph NVARCHAR(255))
AS
	DECLARE @Time VARCHAR(5)

	SELECT @Time = CASE when DATEPART(HH, GETDATE())<10 THEN '0'+CAST(DATEPART(HH, GETDATE()) AS VARCHAR(2)) ELSE cast(DATEPART(HH, GETDATE()) AS VARCHAR(2)) END + ':' +
			CASE when DATEPART(mi, GETDATE())<10 THEN '0'+CAST(DATEPART(mi, GETDATE()) AS VARCHAR(2)) ELSE cast(DATEPART(mi, GETDATE()) AS varchar(2)) END
			
	INSERT INTO LetterSign
	(
		LetterID,
		UserID,
		Date,
		[Time],	
		paraph
	)
	VALUES
	(
		@letterId,@userId,dbo.Shamsi(GETDATE()),@Time,@paraph
		
	)
	SELECT @id = IDENT_CURRENT ('dbo.LetterSign')
GO
/****** Object:  StoredProcedure [dbo].[Sp_NewLetterText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_NewLetterText](@LetterID INT,@LetterFormat INT,@TypeText NTEXT,@Html NTEXT)
AS
	INSERT INTO LetterText
	(
		LetterID,
		LetterFormat,
		TypeText,
		Html
	)
	VALUES
	(
		@LetterID,@LetterFormat,@TypeText,@Html
	)

GO
/****** Object:  StoredProcedure [dbo].[sp_PhoneUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_PhoneUsers](@PhoneID INT, @HasAccess BIT = 1)
AS
BEGIN
	SELECT upa.UserID , u.Title AS UserTitle, p.Title AS ContactTitle
	FROM UsersPhoneAccess upa
	INNER join Users u ON u.Id = upa.UserID
	INNER JOIN Phone p ON p.PhoneID = upa.PhoneID
	WHERE upa.PhoneID = @PhoneID AND 
		(upa.HasAccess = @HasAccess OR p.UsersID = u.Id)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Proceed_Follow]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE proc [dbo].[Sp_Proceed_Follow]
@letterID int
as

SELECT AT.actiontypetitle as att FROM Letter L inner join ActionType AT on
L.latestActionTypeID=AT.actiontypeid where L.letterid=@letterid

 
GO
/****** Object:  StoredProcedure [dbo].[sp_recommite_report]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_recommite_report]
                    (
						@SecretariatID			int = 0
					   ,@myear					int = 0
					   ,@RecommitFlag			int = 0
					   ,@UserID					int = 5
					   ,@IndicatorID			int = 469
					   ,@UserMemo				nvarchar(500) = ''
					   ,@FromRegistrationDate	nvarchar(10) = '1397/01/03'
					   ,@toRegistrationDate		nvarchar(10) = '1397/06/29'
					   ,@SenderTitle			nvarchar(500) = '' /* 'جناب آقاي مهندس مقدمي '*/
					   ,@Memo					nvarchar(max) = ''
					   ,@Paraph					nvarchar(max) = ''
					   ,@OrgId					nvarchar(100) = '0'
					   ,@FromRecommiteDate		nvarchar(10) = '1397/01/01'
					   ,@ToRecommiteDate		nvarchar(10)   = '1397/06/29'
					   ,@FromProceedDate		nvarchar(10)    = ''
					   ,@ToProceedDate			nvarchar(10)    = ''
					   ,@FromDeadLineDate		nvarchar(10) = ''
					   ,@ToDeadLineDate			nvarchar(10) = ''
					   ,@Proceeded				int  = -1
					   ,@Letter_Type			nvarchar(50) = '0'
					   ,@User_New				int = -1
					)
AS

Declare @Query	Nvarchar(Max)
Set @Query = 'Insert Into #OrgId_temp Select ID From FromOrganizations Where ID In (' + @OrgId + ')'
If OBJECT_ID('tempdb.dbo.#OrgId_temp', 'U') IS NOT NULL 
	Drop Table dbo.#OrgId_temp
Create Table #OrgId_temp(ID int)

Declare @FOrgID int,
        @SecretariatID_New nvarchar(max),
		@Today  char(10)

Select @today = dbo.shamsi(getdate())

Select	@FOrgID=FromOrgID 
	From Users 
	Where Id=@UserID

Set @SenderTitle = LTrim(RTrim(REPLACE(REPLACE(@SenderTitle , NCHAR(1740), NCHAR(1610)),NCHAR(1705),NCHAR(1603))))

/************************************* شروع ارجاع به کاربر*************************************** */
If @RecommitFlag=0  
Begin
	Create Table #TEMP ([ID] Nvarchar(100))
	If @SecretariatID > 0 
	Begin
      Insert Into #temp (ID) Values (@SecretariatID)
	End

	If @SecretariatID =  0 
	Begin
	   Declare @SecId Nvarchar(500)  
   
	   Declare SecId_cursor Cursor For
			Select SecId 
				From UserSecretariats 
				Where userid = @UserID
	   Open SecId_cursor
	   Fetch Next From SecId_cursor	Into @SecId
	   While @@FETCH_STATUS = 0  
       Begin 
			Insert Into #temp (ID) Values (@SecId)
			Fetch Next From SecId_cursor	Into @SecId
       End   
	   Close SecId_cursor  
	   Deallocate SecId_cursor  
	End
	
	Exec sp_executesql @Query;
	
	Select  
		L.LetterID, 
		L.IndicatorID,
		L.IncommingDate,
		L.IncommingNo, 
		L.Memo, 
		L.RetroactionNo,
		L.RegistrationDate, 
		L.FollowLetterNo, 
		L.ToStaffer,
		sender.Title AS SenderTitle,
		Deliver.Title AS DeliverTitle,
		LetterTypes.Title LetterTypeTitle,
		LetterRecommites, 
		RC.Paraph,
		RC.RecommiteDate,  
		RC.Proceeded, 
		RC.ProceedDate, 
		RecommiteTypes.Title RecommitTypeTitle,
		ISNULL(PFO.Title,SENDER.title) RecommiterTitle,
		Fo.Title Recommited, 
		RC.ViewDate, 
		RC.StaffMemo,
		dbo.shamsidatediff(prc.DeadLineDate,ISNULL(Rc.Proceeddate,@today)) DeadlineDays,
		dbo.shamsidatediff(rc.Recommitedate,ISNULL(Rc.Proceeddate,@today)) ProgressDays,
		RC.DeadLineDate,
		ActionTypeTitle,
		Secretariats.SecTitle 
	FROM ReCommites RC 
		LEFT  JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId AND PRC.[type] = RC.[type] 
		INNER JOIN Letter L ON RC.LetterID = L.LetterID
		INNER JOIN Secretariats ON Secretariats.Secid = L.SecretariatID
		LEFT  JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
		LEFT  JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
		LEFT  JOIN FromOrganizations sender ON l.ToOrgID = sender.ID
		LEFT  JOIN FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
		LEFT  JOIN LetterTypes ON LetterTypes.ID=l.Letter_type 
		LEFT  JOIN RecommiteTypes ON RC.[Type] = RecommiteTypes.ID 
		LEFT JOIN ActionType ON ActionType.ActionTypeID = RC.ActionTypeID
	WHERE (l.letter_type =  @letter_type  OR @letter_type = '0' )
		AND l.letterformat = 1
		AND (RC.OrgID = @FOrgID OR @user_new = -1 ) 
		AND (l.LetterFormat <3 ) 
		AND (L.myear = @myear Or @myear = 0)
		AND SecretariatID in (SELECT ID FROM #temp)
		AND (IndicatorID = @IndicatorID OR @IndicatorID = 0)
		AND (l.UserMemo = @UserMemo OR @UserMemo IS Null)
		AND (l.RegistrationDate >= @fromRegistrationDate OR @fromRegistrationDate IS NULL)
		AND (l.RegistrationDate<= @toRegistrationDate OR  @toRegistrationDate IS NULL)
		/* AND ( Deliver.Title LIKE ''+ '%' + @SenderTitle + '%'+ '' OR @SenderTitle IS NULL) */
		And ((LTrim(RTrim(REPLACE(REPLACE(Deliver.Title , NCHAR(1740), NCHAR(1610)),NCHAR(1705),NCHAR(1603)))) = @SenderTitle) OR @SenderTitle IS NULL)
		AND (L.Memo LIKE ''+ '%' + @Memo + '%'+ '' OR @Memo IS NULL)
		AND (RC.Paraph LIKE '' + '%' + @Paraph + '%' + '' OR @Paraph IS NULL)
		AND ((RC.OrgId In (Select ID From #OrgId_temp)) OR @OrgId = '0') 
		AND RC.RecommiteDate>= @FromRecommiteDate
		AND RC.RecommiteDate<= @ToRecommiteDate
		AND (RC.ProceedDate>= @FromProceedDate OR @FromProceedDate IS NULL)
		AND (RC.ProceedDate<= @ToProceedDate OR @ToProceedDate IS NULL)
		AND (RC.DeadLineDate<= @FromDeadLineDate OR @FromDeadLineDate IS NULL)
		AND (RC.DeadLineDate>= @ToDeadLineDate OR @ToDeadLineDate IS NULL)
		AND (RC.Proceeded = @Proceeded OR @Proceeded  = -1) 
	ORDER BY 
	       rc.recommitedate DESC,
		   l.indicatorid    DESC
	
	DROP TABLE #temp	
END
/* ************************************ پايان ارجاع به کاربر*************************************** */

/* ************************************ شروع ارجاع از کاربر*************************************** */
IF @RecommitFlag=1  
BEGIN
   CREATE TABLE #TEMP1 ([ID] [int])
   IF @SecretariatID > 0 
   BEGIN
      INSERT INTO #temp1 (ID) VALUES (@SecretariatID)
   END
   IF @SecretariatID =  0 
   BEGIN
	   DECLARE @SecId1 nvarchar(500)  
   
	   DECLARE SecId_cursor CURSOR FOR
		   SELECT 
			  SecId 
		   FROM UserSecretariats 
		   WHERE userid = @UserID
	   OPEN SecId_cursor
	   FETCH NEXT FROM SecId_cursor   
	   INTO @SecId1
	   WHILE @@FETCH_STATUS = 0  
       BEGIN 
	      INSERT INTO #temp1 (ID) VALUES (@SecId1)
	   FETCH NEXT FROM SecId_cursor   
	   INTO @SecId1
       END   
	   CLOSE SecId_cursor  
	   DEALLOCATE SecId_cursor  
   END
	
	Exec sp_executesql @Query;
	
	SELECT  
		L.LetterID, 
		L.IndicatorID,
		L.IncommingDate,
		L.IncommingNo, 
		L.Memo, 
		L.RetroactionNo,
		L.RegistrationDate, 
		L.FollowLetterNo, 
		L.ToStaffer,
		sender.Title AS SenderTitle,
		Deliver.Title AS DeliverTitle,
		LetterTypes.Title LetterTypeTitle,
		LetterRecommites, 
		RC.Paraph,
		RC.RecommiteDate,  
		RC.Proceeded, 
		RC.ProceedDate, 
		RecommiteTypes.Title RecommitTypeTitle,
		ISNULL(PFO.Title,SENDER.title) RecommiterTitle,
		Fo.Title Recommited, 
		RC.ViewDate, 
		RC.StaffMemo,
		dbo.shamsidatediff(prc.DeadLineDate,ISNULL(Rc.Proceeddate,@today)) DeadlineDays,
		dbo.shamsidatediff(rc.Recommitedate,ISNULL(Rc.Proceeddate,@today)) ProgressDays,
		RC.DeadLineDate,
		ActionTypeTitle,
		Secretariats.SecTitle 
	FROM ReCommites RC 
		LEFT  JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId AND PRC.[type] = RC.[type] 
		INNER JOIN Letter L ON RC.LetterID = L.LetterID	
		INNER JOIN Secretariats ON Secretariats.Secid = L.SecretariatID
		LEFT  JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
		LEFT  JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
		LEFT  JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
		LEFT  JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
		LEFT  JOIN LetterTypes ON LetterTypes.ID=l.Letter_type 
		LEFT  JOIN RecommiteTypes ON RC.[Type] = RecommiteTypes.ID 
		LEFT  JOIN ActionType ON ActionType.ActionTypeID = RC.ActionTypeID
	WHERE (RC.UserID = @UserID )
		AND (L.myear = @myear Or @myear = 0)
		AND (RC.[Type] = 3 AND l.letterformat = 1)
		AND SecretariatID in ( SELECT ID FROM #temp1)
		AND ( IndicatorID = @IndicatorID OR @IndicatorID = 0 )
		AND ( l.UserMemo = @UserMemo OR @UserMemo IS NULL)
		AND ( l.RegistrationDate >= @fromRegistrationDate OR @fromRegistrationDate IS NULL)
		AND ( l.RegistrationDate<= @toRegistrationDate OR  @toRegistrationDate IS NULL)
		And ((LTrim(RTrim(REPLACE(REPLACE(ISNULL(PFO.Title,SENDER.title) , NCHAR(1740), NCHAR(1610)),NCHAR(1705),NCHAR(1603)))) = @SenderTitle) OR @SenderTitle IS NULL)
		AND ( L.Memo LIKE ''+ '%' + @Memo + '%'+ '' OR @Memo IS NULL)
		AND ( RC.Paraph LIKE '' + '%' + @Paraph + '%' + '' OR @Paraph IS NULL)
		/* AND ( RC.OrgId = @OrgId or @OrgId = '0') */
		AND ((RC.OrgId In (Select ID From #OrgId_temp)) or @OrgId = '0') 
		AND RC.RecommiteDate>= @FromRecommiteDate
		AND RC.RecommiteDate<= @ToRecommiteDate
		AND (RC.ProceedDate>= @FromProceedDate OR @FromProceedDate IS NULL)
		AND (RC.ProceedDate<= @ToProceedDate OR @ToProceedDate IS NULL)
		AND (RC.DeadLineDate<= @FromDeadLineDate OR @FromDeadLineDate IS NULL)
		AND (RC.DeadLineDate>= @ToDeadLineDate OR @ToDeadLineDate IS NULL)
		AND ( RC.Proceeded = @Proceeded OR @Proceeded  = -1 ) 
		AND (l.letter_type =  @letter_type  OR @letter_type = '0' )
	ORDER BY 
	       rc.recommitedate DESC,
		   l.indicatorid    DESC
	
	DROP TABLE #temp1	
END
/* ************************************ پايان ارجاع از کاربر*************************************** */

/* --************************************ شروع آخرين ارجاع******************************************** */
IF @RecommitFlag=2  
BEGIN
   /*CREATE TABLE #TEMP (	[ID] [int] )
   IF @SecretariatID > 0 
   BEGIN
      INSERT INTO #temp (ID) VALUES (@SecretariatID)
   END
   IF @SecretariatID =  0 
   BEGIN
	   DECLARE @SecId nvarchar(500)  
   
	   DECLARE SecId_cursor CURSOR FOR
		   SELECT 
			  SecId 
		   FROM UserSecretariats 
		   WHERE userid = @UserID
	   OPEN SecId_cursor
	   FETCH NEXT FROM SecId_cursor   
	   INTO @SecId
	   WHILE @@FETCH_STATUS = 0  
       BEGIN 
	      INSERT INTO #temp (ID) VALUES (@SecId)
	   FETCH NEXT FROM SecId_cursor   
	   INTO @SecId
       END   
	   CLOSE SecId_cursor  
	   DEALLOCATE SecId_cursor  
   END*/
   	IF OBJECT_ID('tempdb.dbo.#TT', 'U') IS NOT NULL 
	  DROP TABLE dbo.#TT; 

	SELECT 
	   MAX(RC.RecommiteDate) AS MAXDATE,
	   MAX(RC.RecommiteID) AS MAXID,
	   L.IndicatorID 
	INTO #TT
	FROM ReCommites RC 
		INNER JOIN Letter L ON RC.LetterID = L.LetterID
	GROUP BY L.IndicatorID
	ORDER BY L.IndicatorID

	
	Exec sp_executesql @Query;
	

	SELECT  
		L.LetterID, 
		L.IndicatorID,
		L.IncommingDate,
		L.IncommingNo, 
		L.Memo, 
		L.RetroactionNo,
		L.RegistrationDate, 
		L.FollowLetterNo, 
		L.ToStaffer,
		sender.Title AS SenderTitle,
		Deliver.Title AS DeliverTitle,
		LetterTypes.Title LetterTypeTitle,
		LetterRecommites, 
		RC.Paraph,
		RC.RecommiteDate,  
		RC.Proceeded, 
		RC.ProceedDate, 
		RecommiteTypes.Title RecommitTypeTitle,
		ISNULL(PFO.Title,SENDER.title) RecommiterTitle,
		Fo.Title Recommited, 
		RC.ViewDate, 
		RC.StaffMemo,
		dbo.shamsidatediff(prc.DeadLineDate,ISNULL(Rc.Proceeddate,@today)) DeadlineDays,
		dbo.shamsidatediff(rc.Recommitedate,ISNULL(Rc.Proceeddate,@today)) ProgressDays,
		RC.DeadLineDate,
		ActionTypeTitle,
		Secretariats.SecTitle 
	FROM ReCommites RC 
		LEFT  JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.[Type] = RC.[Type] 
		INNER JOIN Letter L ON RC.LetterID = L.LetterID
		INNER JOIN Secretariats ON Secretariats.Secid = L.SecretariatID
		LEFT  JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
		LEFT  JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
		LEFT  JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
		LEFT  JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
		LEFT  JOIN LetterTypes ON LetterTypes.ID=l.Letter_type 
		LEFT  JOIN RecommiteTypes ON RC.[Type] = RecommiteTypes.ID 
		LEFT  JOIN ActionType ON ActionType.ActionTypeID = RC.ActionTypeID
    WHERE (RC.OrgID = @UserID 
		AND (L.myear = @myear Or @myear = 0)
		AND RC.RecommiteID = (SELECT MAXID FROM #TT WHERE #TT.IndicatorID = L.IndicatorID))

	/* AND SecretariatID in ( SELECT 
	                            ID 
							FROM #temp) */
		AND (IndicatorID = @IndicatorID OR @IndicatorID = 0 )
		AND (l.UserMemo = @UserMemo OR @UserMemo IS NULL)
		AND	(l.RegistrationDate >= @fromRegistrationDate OR @fromRegistrationDate IS NULL)
		AND (l.RegistrationDate<= @toRegistrationDate OR  @toRegistrationDate IS NULL)
		/* AND ( Deliver.Title LIKE ''+ '%' + @SenderTitle + '%'+ '' OR @SenderTitle IS NULL) */
		And ((LTrim(RTrim(REPLACE(REPLACE(Deliver.Title , NCHAR(1740), NCHAR(1610)),NCHAR(1705),NCHAR(1603)))) = @SenderTitle) OR @SenderTitle IS NULL)
		AND (L.Memo LIKE ''+ '%' + @Memo + '%'+ '' OR @Memo IS NULL)
		AND (RC.Paraph LIKE '' + '%' + @Paraph + '%' + '' OR @Paraph IS NULL)
		/* AND (RC.OrgId = @OrgId or @OrgId = '0') */
		AND ((RC.OrgId In (Select ID From #OrgId_temp)) or @OrgId = '0') 
		AND RC.RecommiteDate>= @FromRecommiteDate
		AND RC.RecommiteDate<= @ToRecommiteDate
		AND (RC.ProceedDate>= @FromProceedDate OR @FromProceedDate IS NULL)
		AND (RC.ProceedDate<= @ToProceedDate OR @ToProceedDate IS NULL)
		AND (RC.DeadLineDate<= @FromDeadLineDate OR @FromDeadLineDate IS NULL)
		AND (RC.DeadLineDate>= @ToDeadLineDate OR @ToDeadLineDate IS NULL)
		AND ( RC.Proceeded = @Proceeded OR @Proceeded  = -1 ) 
		AND (l.letter_type =  @letter_type  OR @letter_type = '0' )
	ORDER BY 
	       rc.recommitedate DESC,
		   l.indicatorid    DESC
END
/* ************************************ پايان آخرين ارجاع******************************************** */


/*
                    (
					  @SecretariatID int,
					  @myear         tinyint,
					  @where         nvarchar(1000),
					  @RecommitFlag  int = 0,
					  @UserID        int = 0,
					  @Letter_Type   nvarchar(50)
				    )
SET @where = ''

DECLARE @sql    nvarchar(4000),
        @rw     nvarchar(2000),
		@Today  char(10),
		@FOrgID int

IF @Letter_Type = 'NULL'
BEGIN
   SET @Letter_Type = '1,2,3,4'
END

SELECT 
   @FOrgID=FromOrgID 
FROM Users 
WHERE Id=@UserID

SELECT @today = dbo.shamsi(getdate())

IF @RecommitFlag=0
BEGIN
    SET @rw=' WHERE not(l.letter_type=2 and l.letterformat=1 ) and (RC.OrgID='''+cast(@FOrgID AS varchar(100))+''') and (l.LetterFormat <3) AND  L.myear='+cast(@myear AS varchar(10))
	--SET @rw=' WHERE l.letter_type IN (' + @Letter_Type + ')' + ' and (l.letterformat=1 ) and (RC.OrgID='''+cast(@FOrgID AS varchar(100))+''') and (l.LetterFormat <3) AND  L.myear='+cast(@myear AS varchar(10))
    IF  @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID AS varchar(10))+')'
    IF  @SecretariatID=0 SET @rw=@rw+' AND (SecretariatID in (select SecId from UserSecretariats where userid='+cast(@UserID AS varchar(5))+'))'
END
IF @RecommitFlag=1
BEGIN
    SET @rw=' WHERE (RC.UserID='+CAST(@UserID AS varchar)+') AND L.myear='+cast(@myear AS varchar(10))+' and (RC.Type=3 AND l.letterformat=1)'
    IF @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID AS varchar(10))+')'
    IF @SecretariatID=0 SET @rw=@rw+' AND (SecretariatID in (select SecId from UserSecretariats where userid='+cast(@UserID AS varchar(5))+'))'
END
IF @RecommitFlag=2
BEGIN
	IF OBJECT_ID('tempdb.dbo.#TT', 'U') IS NOT NULL 
	  DROP TABLE dbo.#TT; 

	SELECT 
	   MAX(RC.RecommiteDate) AS MAXDATE,
	   MAX(RC.RecommiteID) AS MAXID,
	   L.IndicatorID 
	INTO #TT
	FROM ReCommites RC 
	INNER JOIN Letter L 
	  ON RC.LetterID = L.LetterID
	GROUP BY L.IndicatorID
	ORDER BY L.IndicatorID

	SET @rw=' WHERE (RC.OrgID='''+cast(@UserID AS varchar(100))+''' AND L.myear='+cast(@myear AS varchar(10))+' and RC.RecommiteID = (SELECT MAXID FROM #TT WHERE #TT.IndicatorID = L.IndicatorID) )'
END


SET @sql=' SELECT  L.LetterID, L.IndicatorID,L.IncommingDate,L.IncommingNo, L.Memo, L.RetroactionNo,
L.RegistrationDate, L.FollowLetterNo, L.ToStaffer,sender.Title AS SenderTitle,
Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites, RC.Paraph,
RC.RecommiteDate,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.Title RecommitTypeTitle,
isnull(PFO.Title,SENDER.title) RecommiterTitle,Fo.Title Recommited, RC.ViewDate, RC.StaffMemo,
dbo.shamsidatediff(prc.DeadLineDate,isnull(Rc.Proceeddate,'''+@today+''')) DeadlineDays,
dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+''')) ProgressDays,
RC.DeadLineDate,ActionTypeTitle,Secretariats.SecTitle 
FROM ReCommites RC 
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
left JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
left JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
left JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=l.Letter_type 
left JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID 
left JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionTypeID'

SET @sql=@sql+@rW

SET @where=isnull(ltrim(rtrim(@where)),'')
IF (@where<>'') SELECT @sql=@sql+' and '+@where

SET @sql=@sql+' order by rc.recommitedate desc,l.indicatorid desc'

--PRINT @sql 

EXEC sp_executesql  @sql
*/
/*
ALTER  PROCEDURE [dbo].[sp_recommite_report]
                    (
					  @SecretariatID int,
					  @myear tinyint,
					  @where nvarchar(1000),
					  @RecommitFlag INT = 0,
					  @UserID INT = 0,@
				    )
/*
* @RecommitFlag=0 that means namehaee ke be in shakhs erja shodeh ast yani by default feli
* @RecommitFlag=1 that means namehaee ke in shakhs be digaran erja dadeh ast this is added By saeedi
* */
as
declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10),@FOrgID INT

SELECT @FOrgID=FromOrgID FROM Users WHERE Id=@UserID
select @today=dbo.shamsi(getdate())

IF @RecommitFlag=0
BEGIN
    SET @rw=' WHERE not(l.letter_type=2 and l.letterformat=1 ) and (RC.OrgID='''+cast(@FOrgID as varchar(100))+''') and (l.LetterFormat <3) AND  L.myear='+cast(@myear as varchar(10))
    if @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'
    if @SecretariatID=0 SET @rw=@rw+' AND (SecretariatID in (select SecId from UserSecretariats where userid='+cast(@UserID as varchar(5))+'))'
END
IF @RecommitFlag=1
BEGIN
    SET @rw=' WHERE (RC.UserID='+CAST(@UserID AS VARCHAR)+') AND L.myear='+cast(@myear as varchar(10))+' and (RC.Type=3 AND l.letterformat=1)'
    if @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'
    if @SecretariatID=0 SET @rw=@rw+' AND (SecretariatID in (select SecId from UserSecretariats where userid='+cast(@UserID as varchar(5))+'))'
END
IF @RecommitFlag=2
BEGIN
	IF OBJECT_ID('tempdb.dbo.#TT', 'U') IS NOT NULL 
	  DROP TABLE dbo.#TT; 

	SELECT MAX(RC.RecommiteDate) AS MAXDATE,MAX(RC.RecommiteID) AS MAXID,L.IndicatorID INTO #TT
	FROM ReCommites RC 
	INNER JOIN Letter L ON RC.LetterID = L.LetterID
	GROUP BY L.IndicatorID
	ORDER BY L.IndicatorID

	SET @rw=' WHERE (RC.OrgID='''+cast(@UserID as varchar(100))+''' AND L.myear='+cast(@myear as varchar(10))+' and RC.RecommiteID = (SELECT MAXID FROM #TT WHERE #TT.IndicatorID = L.IndicatorID) )'
END


set @sql=' SELECT  L.LetterID, L.IndicatorID,L.IncommingDate,L.IncommingNo, L.Memo, L.RetroactionNo,
L.RegistrationDate, L.FollowLetterNo, L.ToStaffer,sender.Title AS SenderTitle,
Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites, RC.Paraph,
RC.RecommiteDate,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.Title RecommitTypeTitle,
isnull(PFO.Title,SENDER.title) RecommiterTitle,Fo.Title Recommited, RC.ViewDate, RC.StaffMemo,
dbo.shamsidatediff(prc.DeadLineDate,isnull(Rc.Proceeddate,'''+@today+''')) DeadlineDays,
dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+''')) ProgressDays,
RC.DeadLineDate,ActionTypeTitle,Secretariats.SecTitle 
FROM ReCommites RC 
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
left JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
left JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
left JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=l.Letter_type 
left JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID 
left JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionTypeID'

SET @sql=@sql+@rW

SET @where=isnull(ltrim(rtrim(@where)),'')
IF (@where<>'') SELECT @sql=@sql+' and '+@where

SET @sql=@sql+' order by rc.recommitedate desc,l.indicatorid desc'

--PRINT @sql 

EXEC sp_executesql  @sql

*/
GO
/****** Object:  StoredProcedure [dbo].[sp_recommite_report_Box]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_recommite_report_Box]
	@SecretariatID int,
	@myear int,
	@where nvarchar(1000),
	@RecommitFlag INT = 0,
	@UserID INT = 0,
	@LettrTypeID INT = 0,
	@falg INT

as
	declare @sql nvarchar (4000),
			@rw nvarchar(2000),
			@Today char(10),
			@FOrgID INT

	SELECT @FOrgID=FromOrgID FROM Users WHERE Id=@UserID
	select @today=dbo.shamsi(getdate())

	IF @RecommitFlag=0
	BEGIN
		SET @rw=' WHERE not(l.letter_type=2 and l.letterformat=1 ) and (RC.OrgID='''+cast(@FOrgID as varchar(100))+''') and (l.LetterFormat <3) AND  L.myear='+cast(@myear as varchar(10))
		if @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'    
	END

	IF @RecommitFlag=1
	BEGIN
		SET @rw=' WHERE (RC.UserID='+CAST(@UserID AS VARCHAR)+') AND L.myear='+cast(@myear as varchar(10))+' and (RC.Type=3 AND l.letterformat=1)'
		if @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'    
	END

	IF @RecommitFlag=2
	BEGIN

		IF OBJECT_ID('tempdb.dbo.#TT', 'U') IS NOT NULL 
			DROP TABLE dbo.#TT; 

		SELECT MAX(RC.RecommiteDate) AS MAXDATE,MAX(RC.RecommiteID) AS MAXID,L.IndicatorID INTO #TT
			FROM ReCommites RC 
				INNER JOIN Letter L ON RC.LetterID = L.LetterID
			GROUP BY L.IndicatorID
			ORDER BY L.IndicatorID

		SET @rw=' WHERE (RC.OrgID='''+cast(@UserID as varchar(100))+''' AND L.myear='+cast(@myear as varchar(10))+' and RC.RecommiteID = (SELECT MAXID FROM #TT WHERE #TT.IndicatorID = L.IndicatorID) )'
	END

	DECLARE @DeadLine  NVARCHAR(200)
	IF @falg = 1
		SET @DeadLine = 'and RC.DeadLineDate is not nuLL and RC.DeadLineDate < isnull(RC.viewdate,''3150/01/01'')'--' AND DATEDIFF(DAY,RC.DeadLineDate , ISNULL(rc.viewdate,''3150/01/21''))> 0'--'AND RC.DeadLineDate IS NOT NULL AND RC.DeadLineDate < rc.viewdate'
	ELSE
		SET @DeadLine = ''

	DECLARE @Where_New NVARCHAR(200)
	IF @LettrTypeID <> 0
		SET @Where_New = 'AND LetterTypes.ID = '+ CAST(@LettrTypeID As NVARCHAR(500))
	ELSE 
		SET @Where_New = ''

	set @sql=' SELECT  L.LetterID, L.IndicatorID,L.IncommingDate,L.IncommingNo, L.Memo, L.RetroactionNo,
	L.RegistrationDate, L.FollowLetterNo, L.ToStaffer,sender.Title AS SenderTitle,
	Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites, RC.Paraph,
	RC.RecommiteDate,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.Title RecommitTypeTitle,
	isnull(PFO.Title,SENDER.title) RecommiterTitle,Fo.Title Recommited, RC.ViewDate, RC.StaffMemo,
	dbo.shamsidatediff(prc.DeadLineDate,isnull(Rc.Proceeddate,'''+@today+''')) DeadlineDays,
	dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+''')) ProgressDays,
	RC.DeadLineDate,ActionTypeTitle,Secretariats.SecTitle 
	FROM ReCommites RC 
	left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
	INNER JOIN Letter L ON RC.LetterID = L.LetterID
	INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
	left JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
	left JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
	left JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
	left JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
	Left join LetterTypes on LetterTypes.ID=l.Letter_type 
	left JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID 
	left JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionTypeID'

	SET @sql=@sql+@rW

	SET @where=isnull(ltrim(rtrim(@where)),'')

	IF (@where<>'') 
		SELECT @sql=@sql+' and '+@where + @Where_New + @DeadLine

	SET @sql=@sql+' order by rc.recommitedate desc,l.indicatorid desc'
	EXEC sp_executesql  @sql

GO
/****** Object:  StoredProcedure [dbo].[sp_recommite_statistic]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_recommite_statistic] 
@SecretariatID int,@myear int,@where nvarchar(1000)

as
declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10)

select @today=dbo.shamsi(getdate())

set @RW=' 
 WHERE  not (l.letter_type=2 and l.letterformat=1 ) and  (l.LetterFormat <3) AND  L.myear='+cast(@myear as varchar(10))
if @SecretariatID>0 
set @rw=@rw+'
 AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'


set @sql=' SELECT top 1000   Fo.Title Recommited, 
min(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,'''+@today+'''))) MinDeadlineDays,
max(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,'''+@today+'''))) MaxDeadlineDays,
avg(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,'''+@today+'''))) AvgDeadlineDays,
min(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+'''))) MinProgressDays,
max(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+'''))) MaxProgressDays,
avg(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+'''))) AvgProgressDays

FROM ReCommites RC 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN FromOrganizations FO ON FO.ID = RC.OrgID '

set @sql=@sql+@rW

set @where=isnull(ltrim(rtrim(@where)),'')
 if (@where<>'') 
   select @sql=@sql+' and '+@where

set @sql=@sql+'
 group by  Fo.Title
 order by Fo.Title '
exec sp_executesql  @sql
GO
/****** Object:  StoredProcedure [dbo].[Sp_Recommites_follow]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE proc [dbo].[Sp_Recommites_follow]
@letterID int
as
SELECT FO.title+'('+FO.responsiblestaffer+')' as fot, RC.Paraph FROM ReCommites RC 
inner join fromorganizations FO on
RC.orgid=FO.id where letterid=@letterid

 
GO
/****** Object:  StoredProcedure [dbo].[sp_Recommites_Number]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
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
/****** Object:  StoredProcedure [dbo].[sp_ReindexTables]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[Sp_SaveFormField]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_SaveFormField](@LetterID INT,@FieldID INT,@FieldValue NVARCHAR(2000),@FormOrder INT)
AS

	update LetterFieldValue set FieldValue =@FieldValue
	WHERE LetterID=@LetterID AND FieldID=@FieldID AND FormOrder=@FormOrder

GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_Emails]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE Procedure [dbo].[Sp_Sel_Emails] @Status SmallInt , @UsersID int     
As  
begin  
   Select EmailsID,Code,Subject,SendAddress,ReciveAddress,  
          Status,DateEmail,TimeEmail,IsRead,IsAnswer,  
          UsersID,AttachFileName,IsReciveEmail    
   from Emails  
   Where(Status = @Status)
   And(UsersID = @UsersID)
end 


GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_ImageData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create Procedure [dbo].[Sp_Sel_ImageData] @TableName Nvarchar(50) , @TableID int 
As
Select * 
from ImageData
Where(TableName = @TableName)
  And(TableID = @TableID)


GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_News]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create Procedure [dbo].[Sp_Sel_News] @Like Nvarchar(50)    
As  
if @Like = ''  
   Select Top 500 * From News Order BY NewsID Desc  
else  
begin  
   Set @Like = '%'+@Like+'%'  
   Select Top 500 * From News Where(Title like @Like) Order BY NewsID Desc  
end  



GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_NewsGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[Sp_Sel_NewsGroup] @UsersID Int  
As  
Select * from NewsGroup   
Where(UsersID = @UsersID)


GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_Phone]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--////////////////////////////////////////////////////////////////////////////
--////////////////////////////////////////////////////////////////////////////

CREATE Procedure [dbo].[Sp_Sel_Phone] (@UserSID INT, @IsForWeb BIT = NULL)
As
Select *
from Phone
Where (1=1)
And((IsPublic=1)or(UsersID = @UserSID))
AND((ISNULL(@IsForWeb, 0)= 0 and IsNull(IsForWeb, 0) = 0) 
	OR @IsForWeb = 1 AND IsForWeb = 1)
Order By Code 
GO
/****** Object:  StoredProcedure [dbo].[Sp_Sel_UserAccArchive]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Sp_Sel_UserAccArchive] @SecID int , @userID int  
As  
  
Select UAA.*  
From UserAccArchive UAA ,Secretariats Sec ,Users U   
Where(UAA.SecID = @SecID)  
 And(UAA.UserID = @userID)  
And(UAA.SecID = Sec.SecID)
And(UAA.UserID = U.ID)

GO
/****** Object:  StoredProcedure [dbo].[Sp_Select_Receipt]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[Sp_Select_Receipt] @ReceiptID int = 0  
as  
if @ReceiptID = 0
   Select * from Receipt
else 
   Select * from Receipt Where(ReceiptID = @ReceiptID )  

GO
/****** Object:  StoredProcedure [dbo].[Sp_Select_WorkGroup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create Procedure [dbo].[Sp_Select_WorkGroup] @UserID int 
As
  Select * From WorkGroup Where UserID = @UserID


GO
/****** Object:  StoredProcedure [dbo].[Sp_SentMail_Follow]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE proc [dbo].[Sp_SentMail_Follow]
@letterID int
as



declare @i int
set @i=(select sentletterid from letter where letterid=@letterid )
select indicatorid from letter where letterid=@i


GO
/****** Object:  StoredProcedure [dbo].[sp_SetForeinKey]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE  Procedure [dbo].[sp_SetForeinKey]
@inp bit
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
       if @inp=0  set @sql='alter table ['+@name+'] nocheck constraint all'
        else set @sql='alter table ['+@name+'] check constraint all'
        exec sp_executesql @SQL        
       fetch next from Main_Cursor into @Name
      end
    
     close Main_Cursor
     deallocate Main_Cursor

GO
/****** Object:  StoredProcedure [dbo].[Sp_SetNewsNotShowStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_SetNewsNotShowStatus](@UserID INT,@NewsID INT)
AS
	UPDATE NewsUsers
	SET NotShow = 1 WHERE NewsID=@NewsID AND UsersID=@UserID
GO
/****** Object:  StoredProcedure [dbo].[Sp_SetNewsReadStatus]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_SetNewsReadStatus](@UserID INT,@NewsID INT)
AS
	UPDATE NewsUsers
	SET	IsRead = 1 WHERE NewsID=@NewsID AND UsersID=@UserID
GO
/****** Object:  StoredProcedure [dbo].[Sp_SetUserAlternative]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_SetUserAlternative](@UserID INT,@AlternateUserID INT,@StartDate CHAR(10),@EndDate CHAR(10))
AS
	UPDATE Users
	SET
		AlternativeUserID=@AlternateUserID,AlternativebeginDate = @StartDate,
		AlternativeEndDate = @EndDate
	WHERE Id=@UserID
GO
/****** Object:  StoredProcedure [dbo].[sp_SetUserContactAccess]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SetUserContactAccess](@PhoneID INT, @UserID int, @HasAccess BIT = 1)
AS
BEGIN
	IF EXISTS(SELECT * FROM UsersPhoneAccess upa WHERE upa.PhoneID = @PhoneID AND upa.UserID = @UserID)
		UPDATE UsersPhoneAccess SET HasAccess = @HasAccess WHERE PhoneID = @PhoneID AND UserID = @UserID
	ELSE
		INSERT INTO UsersPhoneAccess
		(
			UserID,
			PhoneID,
			HasAccess
		)
		VALUES
		(
			@UserID,
			@PhoneID,
			@HasAccess
		)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SetUserGridInfo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_SetUserGridInfo](@ID INT,@gridInfo VARCHAR(500))
AS
	UPDATE Users
	SET
		eCartableGridInfo=@gridInfo
	WHERE Id=@ID
GO
/****** Object:  StoredProcedure [dbo].[Sp_SetUserTheme]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_SetUserTheme](@Id INT,@theme NVARCHAR)
AS
	Update Users Set eCartableTheme=@theme
	WHERE Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[sp_Statistic]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[sp_Statistic]
@Secretariatid int,@myear int,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@archiveFolderID int,@GroupBy int
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



declare @sql nvarchar(4000),@select  varchar(500),@joins varchar(500)



set @joins =case when @groupby<8         then ' '
                             when @groupby=8 then ' left JOIN Classifications ON Letter.ClassificationID = Classifications.ID '                     
                             when @groupby=9 then ' left JOIN Urgenceis ON Letter.UrgencyID = Urgenceis.ID '                     
                             when @groupby=10 then ' left JOIN  Fromorganizations  ToOrganizations ON Letter.ToOrgID = ToOrganizations.ID '
                             when @groupby=11 then ' left JOIN  Fromorganizations   ON Letter.FromOrgID = Fromorganizations.ID '   
                             when @groupby=12 then ' left JOIN  users   ON Letter.userid = users.ID '   end

           


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
/****** Object:  StoredProcedure [dbo].[sp_stop_mytrace]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROC [dbo].[sp_stop_mytrace]
  @queue_handle int
AS

PRINT 'Stopping the following trace:'

SELECT * FROM master.dbo.activetraces
WHERE queue_handle = @queue_handle

-- destroy the queue
EXEC master..xp_trace_destroyqueue @queue_handle

DELETE FROM master.dbo.activetraces
WHERE queue_handle = @queue_handle

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateFollowUp]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_UpdateFollowUp]
 ( 
  	@FollowUpId INT,@TypeID INT ,@Comment NVARCHAR(255),
  	@ToDoDate CHAR(10),@ToDoTime CHAR(5),
  	@DoneComment NVARCHAR(255),@DoneStatus TINYINT
  )
AS
	UPDATE FollowUp
	SET		
		FollowUPTypeID = @TypeID,
		DoneStatusID = @DoneStatus,	
		Comment = @Comment,
		ToDoDate = @ToDoDate,
		ToDoTime = @ToDoTime,
		DoneComment = @DoneComment
		
	WHERE FollowUPID=@FollowUpId	
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateLetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_UpdateLetterData](@letterdataId INT,@image IMAGE)
AS
	UPDATE LetterData
	SET	[Image] = @image
	WHERE LetterDataID=@letterdataId
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateSubject]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_UpdateSubject](@subjecttitle NVARCHAR,@IsActive BIT,@SubjectID INT)
AS

	UPDATE [Subject]
	SET
		SubjectTitle = @subjecttitle,
		IsActive = @IsActive
	WHERE SubjectID=@SubjectID
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateUserNote]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_UpdateUserNote](@UserNoteID INT,@Note NTEXT,@Date CHAR(10))
AS
	UPDATE UserNote
	SET
		Note = @Note,
		CreateDate = @Date
	WHERE UserNoteID=@UserNoteID
GO
/****** Object:  StoredProcedure [dbo].[Sp_web_Get_Letter_by_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_web_Get_Letter_by_LetterID]
(@LetterID int )
as

	SELECT      Letter.LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, Letter.letterformat,
				lf.Title AS formattitle,
				IncommingNO, Incommingdate, CenterNo, CenterDate, FromOrgID,
				(SELECT Title FROM FromOrganizations fo WHERE fo.ID=FromOrgID) AS FromorgTitle,
				ToOrgID,(SELECT Title FROM FromOrganizations fo WHERE fo.ID=ToOrgID) AS ToorgTitle, Signerid,
				(SELECT Title FROM FromOrganizations fo WHERE fo.ID=Signerid) AS SignerTitle,
				ClassificationID,c.Title AS ClassificationTitle,
				UrgencyID,u.Title AS UrgencyTitle, Memo, AttachTitle, NumberOfAttachPages, NumberOfPage,
				ReceiveTypeID,rt.Title AS ReceiveTitle, UserID,
				RetroactionNo, UserMemo, RegistrationDate, 
				RegistrationTime, FollowLetterNo, ToStaffer, SentLetterID, TemplateID, HeaderID, LetterRecommites, PreCode, fromstaffer, Finalized, SendStatusID, LastUpdate, 
				UserTableID, UniqueID, Archived, SubjectDescription, SubjectID, LatestActionTypeID, LatestActionReason, DeadLineDate, ActionTypeID, UserTableID2, 
				EmailNuFromDate, OldSecretariatID, CustomerID, InnerNO, ECEAnswer, RetroactionYear, FollowLetterYear,Html
	FROM        Letter INNER JOIN LetterFormats lf
	ON Letter.letterformat=lf.Code 
	INNER JOIN Classifications c
	ON Letter.ClassificationID=c.ID INNER JOIN Urgenceis u
	ON Letter.UrgencyID=u.ID INNER JOIN ReceiveTypes rt
	ON Letter.ReceiveTypeID=rt.ID left JOIN  lettertext ON lettertext.LetterID = Letter.LetterID
	WHERE     (Letter.LetterID = @LetterID)
GO
/****** Object:  StoredProcedure [dbo].[Sp_Webcheckusernotes]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_Webcheckusernotes]
@USERID INT ,@DateID int ,@where nvarchar(1000)
AS

	if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TempSelect4]') )
	drop table [dbo].[TempSelect4]

	create TABLE [dbo].[TempSelect4] (
		UserNoteID INT,
		UserID INT,
		Note NTEXT,
		CreateDate CHAR(10),
		Abstract NTEXT
		)

	declare @sql nvarchar (4000)

	set @sql=' SELECT top 10000 *,substring(note,1,100)+'' ...'' as Abstract  from UserNote where userid='+cast(@USERID as varchar(5))
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

	INSERT INTO [dbo].[TempSelect4]
	exec sp_executesql @sql

	SELECT * FROM [dbo].[TempSelect4]
GO
/****** Object:  StoredProcedure [dbo].[Sp_WebGetMessages]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_WebGetMessages](@UserID INT, @FolderID INT = 2)
AS

		
	IF @FolderID IN (1, 2)
		SELECT um.UserMessageID, um.To_, u1.Title AS ReceiverTitle, um.From_, u2.Title AS SenderTitle,
	           um.Code, um.MsgDate, um.MsgTime, um.[Subject], 
	           um.[Message], um.[Status]
	    FROM UserMessage um INNER JOIN
	         Users u1 ON u1.Id = um.To_ INNER JOIN
	         Users u2 ON u2.Id = um.From_
	    WHERE  isnull(um.IsForSender, 0) = 0 and um.To_ = cast(@UserID AS VARCHAR(10)) 
		ORDER BY um.Status, um.MsgDate desc, um.MsgTime desc
	    
   ELSE IF @FolderID = 3	   
	    SELECT um.UserMessageID, um.To_, u1.Title AS ReceiverTitle, um.From_, u2.Title AS SenderTitle,
	           um.Code, um.MsgDate, um.MsgTime, um.[Subject], 
	           um.[Message], um.[Status]
	    FROM UserMessage um INNER JOIN
	         Users u1 ON u1.Id = um.To_ INNER JOIN
	         Users u2 ON u2.Id = um.From_
	    WHERE isnull(um.IsForSender, 0) = 0 and um.[Status] = 1 and um.To_ = cast(@UserID AS VARCHAR(10)) 
	    ORDER BY um.Status, um.MsgDate desc, um.MsgTime desc    
  ELSE IF @FolderID = 4  
	    SELECT um.UserMessageID, um.To_, u1.Title AS ReceiverTitle, um.From_, u2.Title AS SenderTitle,
	           um.Code, um.MsgDate, um.MsgTime, um.[Subject], 
	           um.[Message], um.[Status]
	    FROM UserMessage um INNER JOIN
	         Users u1 ON u1.Id = um.To_ INNER JOIN
	         Users u2 ON u2.Id = um.From_
	    WHERE isnull(um.IsForSender, 0) = 1 and um.From_ = cast(@UserID AS VARCHAR(10))     	
	    ORDER BY um.Status, um.MsgDate desc, um.MsgTime desc
GO
/****** Object:  StoredProcedure [dbo].[Sp_WebInbox]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[Sp_WebInbox]
	@SecretariatID int,  
	@LetterFormat tinyint,  
	@OrgID int,  
	@Proceeded bit,  
	@Type tinyint,
	@myear int,
	@date tinyint,
	@ArchiveFolderID int ,
	@where nvarchar(1000),  
	@userID int,
	@Letter_Type int,
	@DeadLine int,
	@orderClause varchar(50)=' rc.lastupdate desc,l.indicatorid desc',  
	@top int=100,
	@DayOfNow CHAR(10),
	@WebOrWin VARCHAR(50)=null  
AS  
BEGIN
	--	last modifier xax 1398/03/09

	declare        
		@sql nvarchar (4000),        
		@rw nvarchar(2000),        
		@Today char(10),        
		@Proceed bit, -- @Proceed  
		@todayToint varchar(10),    
		@Mytoday Nvarchar(10)  

SET @WebOrWin=UPPER(LTRIM(RTRIM(ISNULL(@WebOrWin,'Web'))))
	IF @Mytoday='WEB' SELECT @Mytoday=dbo.Shamsi(getdate())

	if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TempInbox]') )
	drop table [dbo].[TempInbox]

	CREATE TABLE [dbo].[TempInbox]
	( 
	MyTmp_ID INT IDENTITY(1,1) NOT NULL,	
	LetterID INT,
	SignerID NVARCHAR(1000), 
	IndicatorID INT, 
	MYear int,
	subjectid INT, 
	SecretariatID INT, 
	Letter_Type INT,   
	letterformat INT, 
	IncommingNO NVARCHAR(1000), 
	Incommingdate NVARCHAR(100),   
	ClassificationID INT,        
	UrgencyID INT, 
	Memo NVARCHAR(4000), 
	Tostaffer NVARCHAR(4000),
	SentLetterID INT,
	AttachTitle NVARCHAR(1000), 
	NumberOfAttachPages INT, 
	NumberOfPage INT, 
	ReceiveTypeID INT, 
	UserID INT, 
	RetroactionNo NVARCHAR(100),   
	UserMemo NVARCHAR(1000), 
	RegistrationDate CHAR(100),        
	toorgid INT,
	fromorgid INT,
	FollowLetterNo NVARCHAR(1000), 
	LetterRecommites NVARCHAR(1000),
	finalized BIT,
	CenterNo NVARCHAR(100),
	CenterDate CHAR(100),
	templateID INT,
	headerID INT,        
	registrationTime VARCHAR(100),
	fromstaffer NVARCHAR(4000),
	sendStatusID INT,
	LastUpdate DATETIME,
	UserTableID INT,        
	InnerNo NVARCHAR(1000), 
	OrgID INT,  
	ParentId smallINT,
	Paraph NVARCHAR(4000), 
	RecommiteDate VARCHAR(100),  
	Proceeded BIT,        
	ProceedDate VARCHAR(100), 
	ReType smallINT,
	RecommitTypeTitle NVARCHAR(1000),        
	IsInner INT,
	RecommiterTitle NVARCHAR(1000),
	sendertitle NVARCHAR(1000),
	recommiteid INT,        
	id smallINT, 
	isSecure BIT,   
	StaffMemo NVARCHAR(4000), 
	Yincommingno NVARCHAR(1000),
	PreCode NVARCHAR(100),
	IsCopy BIT,
	IsCopy_In_Dabir BIT,
	SentToDabir BIT,
	has_Page BIT,        
	has_WordPage BIT,
	has_UncheckedFollowUp BIT,
	has_ExpiredFollowUp BIT,
	LetterDataId INT,
	has_file BIT,
	DeadLineDays INT,
	ViewDate CHAR(100),
	DeadLineDate CHAR(100),
	ChildParaph VARCHAR(3000),
	ChildOrg VARCHAR(1000),  
	ActionTypeID INT, 
	UserRecomCount INT, 
	IsAnswer BIT, 
	ISFollowup BIT,
	Erja_Or_Answer_Date CHAR(10),
	ColorFlag VARCHAR(50),
	MemoAndRecomUserCount VARCHAR(4000),
	has_Sign BIT,
	row_num int
	)
	-------------------++++++++++++++++++++++++++++-------------------------------------
	-------------------+++++++++++++++++++++++++-------------------------------------      
	select @today=dbo.shamsi(getdate())        
        
	set @Proceed=@Proceeded  
	DECLARE @InnerNo NVARCHAR(500);  
	IF @WebOrWin=UPPER('WIN')  
		set @InnerNo=dbo.InnerNoFormat('TTO','Receiver',@SecretariatID)
	ELSE	   
		set @InnerNo=dbo.InnerNoFormat('TTO','Receiver',-1)
	/*
	xax.98.03.06
	set @RW='WHERE   (RC.Finallized=1) and (Rc.OrgID = '+cast(@OrgID as varchar(10))+')'
	xax.98.03.06
	*/
	set @RW='WHERE   (RC.Finallized=1) '

	SET @InnerNo = REPLACE(@InnerNo, 'Letter.SubjectID', 'l.SubjectID')

	IF  @ArchiveFolderID = 0
		SET @rw = @RW + ' AND (Rc.Proceeded = '+cast(@Proceeded as varchar(2))+')'  

	if @myear>0  set @rw=@rw+'  and  L.myear='+cast(@myear as varchar(10))        
  
	if @LetterFormat>0 set @rw=@rw+' and (l.LetterFormat ='+cast( @LetterFormat as varchar(2))+')'        
	--else set @rw=@rw+' and (l.LetterFormat in (0,1,2))'        
        
	if @letter_Type>0        
	set @rw=@rw+' AND (l.letter_Type = '+cast(@Letter_Type as varchar(3))+')'        
        
	if @type>0        
		  set @rw=@rw+' AND (Rc.Type = '+cast(@Type as varchar(2))+')'        
      
	if @ArchiveFolderID>0
	begin
		if exists (select * from ArchiveFolder where UserID=@userID and FolderID=@ArchiveFolderID and ParentFolderID =0)
			begin
			set @rw=@rw+' AND (ParentFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'        
			end
		else
			begin
			set @rw=@rw+' AND (ArchiveFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'        
			end
	end

	if @date<>0        
	begin        
	 declare @dw tinyint,@bdate char(10),@edate char(10)        
	  set @dw=datepart(dw,Getdate())    
	--Ranjbar    
	  ---select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@date     
	  Set @Mytoday = Cast(1300+@myear as nvarchar)+ Substring(@Today,5,6)    
	  select @bdate=begindate,@edate=Enddate from HistoryDateList(@Mytoday ,@dw) where id=@date     
	--//    
        
	 set @rw=@rw+' AND (RC.RecommiteDate between '''+@bdate+''' and '''+@edate+''')'        
	end        
        
	if @SecretariatID>0        
	set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'        
	else        
	set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'        
        
	set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))        
        
	--if @DeadLine between -1 and 30        
	-- set @rw=@rw+' AND ('+        
	--case when @Proceed=1 then 'case when RC.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'+@todayToint+') else    
	--'''+@todayToint+''' end '        
	--else  'ISNULL(RC.DeadLineToint ,'+@todayToint+') ' end+' -'+@todayToint+' )<= '+cast(@DeadLine as varchar(5))        
        
	set @sql='SELECT top '+cast(@top as varchar(5))+' L.LetterID,L.SignerID, L.IndicatorID, L.MYear,l.subjectid, L.SecretariatID, L.Letter_Type,   
	L.letterformat, L.IncommingNO, L.Incommingdate,   
	L.ClassificationID,        
	L.UrgencyID, L.Memo, 
	(case when  l.Letter_Type=1 then l.fromstaffer else L.Tostaffer end ) as Tostaffer,
	l.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, L.RetroactionNo,   
	L.UserMemo, L.RegistrationDate,        
	l.toorgid,l.fromorgid,L.FollowLetterNo, L.LetterRecommites,l.finalized,l.CenterNo,l.CenterDate,l.templateID,l.headerID,        
	l.registrationTime,
	(case when  l.Letter_Type=1 then l.Tostaffer else l.fromstaffer end ) as fromstaffer,
	l.sendStatusID,L.LastUpdate,L.UserTableID,        
	'+@InnerNo+' InnerNo, PRC.OrgID,  RC.ParentId,  RC.Paraph, RC.RecommiteDate,  RC.Proceeded,        
	 RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,        
	case when fo.title is null then 0 else 1 end IsInner, 
	(case when  l.Letter_Type=1 then tto.title else isnull(isnull(FO.Title,foo.title),TTO.title) end ) as RecommiterTitle,
	(case when  l.Letter_Type=1 then isnull(isnull(FO.Title,foo.title),TTO.title) else tto.title end ) as sendertitle,
	rc.recommiteid,        
	 rc.id,  rc.IsSecure,  
	RC.StaffMemo,  
	isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy,RC.IsCopy_In_Dabir,RC.SentToDabir      
	,dbo.has_Page(l.letterid) has_Page,        
	dbo.has_WordPage(l.letterid) has_WordPage,
	dbo.has_UncheckedFollowUp(l.letterid)  has_UncheckedFollowUp,
	dbo.has_ExpiredFollowUp(l.letterid) has_ExpiredFollowUp,
	(select LetterDataID from LetterData where LetterData.LetterID=l.letterid and LetterData.extention IN(3, 9) and IsTemplate = 1) as LetterDataId,       
	dbo.has_file(l.letterid) has_file, '+        
	'isnull('+        
	case when @Proceed=1 then 'RC.DeadLineToint' else 'RC.DeadLineToint' end+'-'+@todayToint+',0) DeadLineDays,'+  
	case when @Proceed=1 then 'ChildRecommite.ViewDate' else 'RC.ViewDate' end+','+    
	case when @Proceed=1 then 'RC.DeadLineDate ' else  'RC.Deadlinedate  ' end+' DeadLineDate ,'+  
	case when @Proceed=1 then 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '   else ''' ''' end +' ChildParaph ,'+  
	case when @Proceed=1 then 'isnull(RecommitedOrg.Title,isnull(isnull(FO.Title,foo.title),TTO.title)) '   else ' isnull(isnull(FO.Title,foo.title),TTO.title) ' end +' ChildOrg , '+        
	case when @Proceed=1 then ' case when rc.ActionTypeID=5 then 5 else ChildRecommite.ActionTypeID end '  else  ' RC.ActionTypeID'   end +' ActionTypeID   
	'+       
      
	', (dbo.FN_GetUserRecomCount('+CAST(@OrgID as varchar)+', l.LetterID)) as UserRecomCount  ' +      
	' , RC.IsAnswer , RC.ISFollowup , RC.Erja_Or_Answer_Date, ''White'' ColorFlag ' + 
	', (Case when dbo.FN_GetUserRecomCount('+CAST(@OrgID as varchar)+', l.LetterID) > 1 then L.Memo + cast(dbo.FN_GetUserRecomCount('+CAST(@OrgID as varchar)+', l.LetterID) as varchar) else L.Memo end) as MemoAndRecomUserCount 
	, dbo.Has_Sign(l.letterid) AS Has_Sign
	, ROW_NUMBER() OVER (
      PARTITION BY l.LetterID, l.Letter_Type 
      ORDER BY l.LetterID, l.Letter_Type, PRC.OrgID Desc 
   ) row_num '  + 
	' FROM ReCommites RC        
	INNER JOIN Letter L ON RC.LetterID = L.LetterID        
	left JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
	LEFT JOIN LetterTypes ON L.Letter_Type=LetterTypes.ID        
	left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type
	left join ReCommites rRC ON RrC.LetterID = l.LetterID AND rRC.Id=1 AND rrc.type<>1
	left JOIN FromOrganizations FoO ON FoO.ID = rRC.OrgID and rrc.orgid <> '+CAST(@OrgID as varchar)+'      
	left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID        
	left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID         
	left JOIN FromOrganizations Receiver ON Receiver.ID = L.FromOrgID         
	INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '+        
	case when @Proceed=1 then '        
	left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type =   
	RC.type         
	left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID '        
	else '' end        
        
	if @archiveFolderID<>0          
	set @sql=@sql+'         
	Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Rc.RecommiteID 
	Left join ArchiveFolder a on a.FolderID=ArchiveFolderID '        
    
	if @DeadLine=1--تا فردا          
	set @rw=@rw+'  AND RC.DeadLineDate is not null AND dbo.ShamsiToInt(RC.DeadLineDate)-'+str(@todayToint) +'=1'
	if @DeadLine=0--تا امروز
	set @rw=@rw+' AND RC.DeadLineDate is not null AND dbo.ShamsiToInt(RC.DeadLineDate)-'+str(@todayToint) +'=0'
	if @DeadLine=-1
	set @rw=@rw+' AND RC.DeadLineDate is not null AND dbo.ShamsiToInt(RC.DeadLineDate)-'+str(@todayToint)+'<0 '      
	 if @DeadLine>1--تا آخر هفته
	 set @rw=@rw+' AND RC.DeadLineDate is not null AND dbo.ShamsiToInt(RC.DeadLineDate)-'+str(@todayToint) +' >1'

	set @sql=@sql+@rW        
        
	set @where=isnull(ltrim(rtrim(@where)),'')        
	if (@where<>'')         
	select @sql=@sql+' and '+@where ;       
        
	if isnull(ltrim(@orderClause),'')=''         
	 set @orderClause=' rc.lastupdate desc,l.indicatorid desc'        

	set @sql=@sql+' order by  '+@orderClause
	
	--SELECT LEN(@sql)
	PRINT @sql
	truncate table [dbo].[TempInbox]
	INSERT INTO [dbo].[TempInbox]
	EXEC(@sql)

	UPDATE [dbo].[TempInbox] 
	SET ColorFlag = 'GREEN'
	WHERE (LEN(LTRIM(RTRIM(DeadLineDate)))>0) AND
		  (
	  		((Erja_Or_Answer_Date IS NOT NULL) AND (Erja_Or_Answer_Date<=DeadLineDate)) 
	  			OR
	  		((Erja_Or_Answer_Date IS NULL ) AND (@DayOfNow<=DeadLineDate)) 
		  ) 		  

	UPDATE [dbo].[TempInbox]
	SET ColorFlag = 'RED'
	WHERE (LEN(LTRIM(RTRIM(DeadLineDate)))>0) AND
		  ( 	 
			((Erja_Or_Answer_Date IS NOT NULL) AND (Erja_Or_Answer_Date>DeadLineDate))
		  ) 	

	UPDATE [dbo].[TempInbox]
	SET ColorFlag = 'RED'
	WHERE (LEN(LTRIM(RTRIM(DeadLineDate)))>0) AND
		  (
			((Erja_Or_Answer_Date IS NULL) AND (@DayOfNow>DeadLineDate))
		  )	

	IF @ArchiveFolderID>0
	BEGIN
	delete from [TempInbox] where MyTmp_ID not in 
					   ( select min(MyTmp_ID) 
						 from [TempInbox] group by LetterID,IndicatorID,MYear)
	END	

	Delete [dbo].[TempInbox] Where row_num > 1

	SELECT * FROM [dbo].[TempInbox]

end
GO
/****** Object:  StoredProcedure [dbo].[Sp_WebletterContainText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_WebletterContainText]
 @secID tinyint,@where nvarchar(500),@OrgID INT
AS 

	declare @sqlCommand nvarchar(4000)
	set @where=ltrim(rtrim(isnull(@where,'')))

	SELECT distinct Letter.LetterID,ReCommites.RecommiteID,Letter_type, indicatorid, RegistrationDate, 
			Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Title AS ToTitle 
		FROM LetterText 
			INNER JOIN   Letter on letter.letterid=LetterText.letterid
			INNER JOIN  ReCommites ON ReCommites.LetterID = Letter.LetterID  
			INNER JOIN  FromOrganizations ON FromOrgID = FromOrganizations.ID
			INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrganizations.ID  
		WHERE   (ReCommites.Finallized=1)
			and ((ReCommites.OrgID  in (SELECT distinct fo.ID 
										from FromOrganizations fo 
										inner join ChartWorkGroupDetails t1 on t1.OrgID=fo.id and AccessForErja=1 and 
										t1.GroupID in (SELECT  distinct  t1.GroupID
														FROM FromOrganizations fo INNER JOIN ChartWorkGroupDetails t1 ON fo.GroupID=t1.GroupID
														inner join users t2 on t2.id=@OrgID 
														and (fo.id=t2.FromOrgID or fo.id=t2.FiveOrgID or fo.id=t2.FourOrgID or fo.id=t2.TreeOrgID or fo.id=t2.SecondOrgID))
										WHERE fo.IsInnerOrg=1 AND t1.AccessForErja=1))  or (@OrgID is null or @OrgID=0)) 
			and (letter.LetterFormat in (1,2)) 
			AND ( (@secID= 0 or @secID is null) or SecretariatID = @secID)
			And (@where is null or LetterText.TypeText LIKE N'%'+@where+'%')
GO
/****** Object:  StoredProcedure [dbo].[Sp_WebletterDataText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_WebletterDataText]
 @secID tinyint,@where nvarchar(500),@OrgID INT
AS
	declare @sqlCommand nvarchar(4000)
	set @where=ltrim(rtrim(isnull(@where,'')))

	SELECT    distinct Letter.LetterID,ReCommites.RecommiteID,Letter_type, indicatorid, RegistrationDate, 
	Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Title AS ToTitle
	FROM         LetterDataText 
	inner join   LetterData on LetterDataText.LetterdataID = LetterData.LetterDataID 
	INNER JOIN   Letter on letter.letterid=LetterData.letterid
	INNER JOIN  ReCommites ON ReCommites.LetterID = Letter.LetterID  
	INNER JOIN  FromOrganizations ON FromOrgID = FromOrganizations.ID
	INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrganizations.ID  
	WHERE   
	(ReCommites.Finallized=1) 
	and((ReCommites.OrgID  in (SELECT  distinct  fo.ID
						from FromOrganizations fo 
	inner join ChartWorkGroupDetails t1 on t1.OrgID=fo.id and AccessForErja=1 and t1.GroupID in (
		SELECT  distinct  t1.GroupID
		FROM FromOrganizations fo INNER JOIN ChartWorkGroupDetails t1
		ON fo.GroupID=t1.GroupID
		 inner join users t2 on t2.id=OrgID and (fo.id=t2.FromOrgID or fo.id=t2.FiveOrgID or fo.id=t2.FourOrgID or fo.id=t2.TreeOrgID or fo.id=t2.SecondOrgID)	 
	)
		WHERE fo.IsInnerOrg=1 AND t1.AccessForErja=1))  or (@OrgID is null or @OrgID=0))
	and (letter.LetterFormat in (1,2)) 
	AND (SecretariatID = @secID or (@secID is null or @secID=0))

	 and  (@where is null or textPart LIKE N'%'+@where+'%')
GO
/****** Object:  StoredProcedure [dbo].[Sp_Webrecommite_report]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_Webrecommite_report]
@SecretariatID int,@myear int,@where nvarchar(1000),@RecommitFlag INT = 0,@UserID INT = 0
AS

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TempSelect3]') )
drop table [dbo].[TempSelect3]

create TABLE [dbo].[TempSelect3] (
	LetterID INT,
	IndicatorID INT,
	IncommingDate NVARCHAR(10),
	IncommingNo NVARCHAR(50),
	Memo nvarchar(2000),
	RetroactionNo NVARCHAR(50),
	RegistrationDate CHAR(10),
	FollowLetterNo NVARCHAR(50),
	ToStaffer NVARCHAR(50),
	SenderTitle NVARCHAR(100),
	DeliverTitle NVARCHAR(100),
	LetterTypeTitle NVARCHAR(50),
	LetterRecommites NVARCHAR(500),
	Paraph NVARCHAR(3000),
	RecommiteDate VARCHAR(10),
	Proceeded BIT,
	ProceedDate VARCHAR(10),
	RecommitTypeTitle NVARCHAR(50),
	RecommiterTitle NVARCHAR(100),
	Recommited NVARCHAR(100),
	ViewDate CHAR(10),
	StaffMemo NVARCHAR(255),
	DeadlineDays INT,
	ProgressDays INT,
	DeadLineDate CHAR(10),
	ActionTypeTitle NVARCHAR(50),
	SecTitle NVARCHAR(50)
)

declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10),@FOrgID INT

SELECT @FOrgID=FromOrgID FROM Users WHERE Id=@UserID
select @today=dbo.shamsi(getdate())

IF @RecommitFlag=0
BEGIN
	SET @rw=' WHERE not(l.letter_type=2 and l.letterformat=1 ) and (RC.OrgID='''+cast(@FOrgID as varchar(100))+''') and (l.LetterFormat <3) AND  L.myear='+cast(@myear as varchar(10))
	if @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'	
END
IF @RecommitFlag=1
BEGIN
	SET @rw=' WHERE (RC.UserID='+CAST(@UserID AS VARCHAR)+') AND L.myear='+cast(@myear as varchar(10))+' and (RC.Type=3 AND l.letterformat=1)'
	if @SecretariatID>0 SET @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'	
END

set @sql=' SELECT  L.LetterID, L.IndicatorID,L.IncommingDate,L.IncommingNo, L.Memo, L.RetroactionNo,
L.RegistrationDate, L.FollowLetterNo, L.ToStaffer,sender.Title AS SenderTitle,
Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites, RC.Paraph,
RC.RecommiteDate,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.Title RecommitTypeTitle,
isnull(PFO.Title,SENDER.title) RecommiterTitle,Fo.Title Recommited, RC.ViewDate, RC.StaffMemo,
dbo.shamsidatediff(prc.DeadLineDate,isnull(Rc.Proceeddate,'''+@today+''')) DeadlineDays,
dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+''')) ProgressDays,
RC.DeadLineDate,ActionTypeTitle,Secretariats.SecTitle 
FROM ReCommites RC 
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
left JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
left JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
left JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=l.Letter_type 
left JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID 
left JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionTypeID'

SET @sql=@sql+@rW

SET @where=isnull(ltrim(rtrim(@where)),'')
IF (@where<>'') SELECT @sql=@sql+' and '+@where

SET @sql=@sql+' order by rc.recommitedate desc,l.indicatorid desc'

INSERT INTO [dbo].[TempSelect3]
EXEC sp_executesql  @sql

SELECT * FROM [dbo].[TempSelect3]
GO
/****** Object:  StoredProcedure [dbo].[Sp_WebSelectLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Sp_WebSelectLetter](@where nvarchar(2000)) 
as 

	if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TempSelectWeb]') )
	drop table [dbo].[TempSelectWeb]

	declare @sqlCommand nvarchar(4000)
	set @sqlCommand='select l.*, 
	 ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS ClassificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS UserTitle, 
	 LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, LetterTemplate.Title AS TemplateTitle,  
	 FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTypeTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.IndicatorID  AnswerIndicatorID,
	 dbo.has_Page(L.letterid) has_Page, dbo.has_WordPage(L.letterid) has_WordPage,dbo.has_file(l.letterID) has_file
	into TempSelectWeb 
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
	 LEFT JOIN Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID ' 
	set @where=isnull(ltrim(rtrim(@where)),'')
	if @where<>'' 
	 set @sqlCommand=@sqlCommand+' where '+@where
	 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '
	 
	exec sp_executesql @sqlCommand


	SELECT * FROM TempSelectWeb
GO
/****** Object:  StoredProcedure [dbo].[spCreateInnerLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCreateInnerLetter] 
	@WorkSheetBaseID int, 
	@MYear INT,
	@SecretariatID INT,
	@RegistrationDate VARCHAR(10),
	@RegistrationTime VARCHAR(5)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @NewIndicatorID INT,@FromOrgID INT,@ToOrgID INT,@Signerid VARCHAR(50),
			@Description VARCHAR(8000),@Memo VARCHAR(8000),@type INT,@UserID INT,
			@ToStaffer VARCHAR(50),@fromstaffer VARCHAR(50),@UserMustReciveErja INT,@LetterID INT,@ID INT,@FromOrgIDGirandeh INT,
			@OrgStaffGirandeh VARCHAR(50),@ManagerUserID INT,@Monshi INT,@ParentID INT
	
	BEGIN TRAN
			
	SELECT @type=TYPE,@ManagerUserID=ManagerUserID,@Monshi=Monshi,@UserID=Monshi FROM WorkSheet_Base WHERE ID=@WorkSheetBaseID
	IF ISNULL(@type,0)=1
	BEGIN
		SELECT TOP 1 @FromOrgID=FromOrgID FROM Users WHERE id=@Monshi		
		SELECT TOP 1 @ToOrgID=FromOrgID   FROM Users WHERE id=@ManagerUserID
		SET @Signerid=CAST(@FromOrgID AS VARCHAR(50))
	END
	ELSE IF ISNULL(@type,0)=2
	BEGIN
		SELECT TOP 1 @FromOrgID=FromOrgID,@ToOrgID=FromOrgID FROM Users WHERE id=@ManagerUserID
		SET @Signerid=CAST(@FromOrgID AS VARCHAR(50))		
	END 
	
	SELECT @fromstaffer=Title FROM FromOrganizations WHERE ID=@FromOrgID
	SELECT @ToStaffer=Title   FROM FromOrganizations WHERE ID=@ToOrgID
	------- تعيين مضمون نامه داخلي
	IF ISNULL(@type,0)=1 SET @Memo=' مصوبات جلسه با کد شناسايي '
	ELSE IF ISNULL(@type,0)=2 SET @Memo=' مصوبات قرار ملاقات با کد شناسايي '
	SET @Memo=@Memo+CAST(@WorkSheetBaseID AS VARCHAR(50)) + ' به قرار زير مي باشد: '
	DECLARE cr CURSOR FOR 
	SELECT Description FROM WorkSheet_Results 
	WHERE WorkSheetBaseID=@WorkSheetBaseID
	OPEN cr
	FETCH NEXT FROM cr INTO @Description 
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @Memo=@Memo+@Description
		FETCH NEXT FROM cr INTO @Description	
	END
	CLOSE cr
	DEALLOCATE cr	
	--------- تعيين مضمون نامه داخلي پايان
	SELECT @NewIndicatorID=MAX(IndicatorID)+1 FROM Letter
	SET @NewIndicatorID=isnull(@NewIndicatorID,1)

	--------- ثبت نامه
	INSERT INTO Letter (IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,FromOrgID,ToOrgID,Signerid,ClassificationID,
						UrgencyID,Memo,NumberOfPage,ReceiveTypeID,UserID,RegistrationDate,RegistrationTime,ToStaffer,fromstaffer,
						Finalized,LastUpdate)
	VALUES (@NewIndicatorID,@MYear,@SecretariatID,3,1,@FromOrgID,@ToOrgID,@Signerid,1,
			1,@Memo,1,1,@UserID,@RegistrationDate,@RegistrationTime,@ToStaffer,@fromstaffer,
			0,GETDATE())
	SELECT @LetterID=SCOPE_IDENTITY()		
	-------- ثبت ارجاعات به شرکت کنندگان در جلسه يا ملاقات		
	IF ISNULL(@type,0)=1 
	BEGIN	
		SET @ID=0		
		DECLARE cr CURSOR FOR 
		SELECT DISTINCT UserID FROM WorkSheet_Sessions 
		WHERE (WorkSheetBaseID=@WorkSheetBaseID) AND (UserID<>@ToOrgID)
		OPEN cr
		FETCH NEXT FROM cr INTO @UserMustReciveErja
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @ID=@ID+1
			IF @ID=1 SET @ParentID=0 ELSE SET @ParentID=1 
			SELECT TOP 1 @FromOrgIDGirandeh=FromOrgID,@OrgStaffGirandeh=Title FROM Users u WHERE id=@UserMustReciveErja
			INSERT INTO ReCommites(LetterID,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,OrgStaff) 
			VALUES (@LetterID,@ID,3,@ParentID,@FromOrgIDGirandeh,@Memo,@RegistrationDate,@UserID,1,0,@OrgStaffGirandeh)			
			FETCH NEXT FROM cr INTO @UserMustReciveErja	
		END
		CLOSE cr
		DEALLOCATE cr	
	END
	ELSE IF ISNULL(@type,0)=2
	BEGIN	
		SET @ID=0		
		DECLARE cr CURSOR FOR 
		SELECT DISTINCT UserID FROM WorkSheet_Visits 
		WHERE (WorkSheetBaseID=@WorkSheetBaseID) AND (UserID<>@ToOrgID)
		OPEN cr
		FETCH NEXT FROM cr INTO @UserMustReciveErja
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @ID=@ID+1
			IF @ID=1 SET @ParentID=0 ELSE SET @ParentID=1
			SELECT TOP 1 @FromOrgIDGirandeh=FromOrgID,@OrgStaffGirandeh=Title FROM Users u WHERE id=@UserMustReciveErja
			INSERT INTO ReCommites(LetterID,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,OrgStaff) 
			VALUES (@LetterID,@ID,3,@ParentID,@FromOrgIDGirandeh,@Memo,@RegistrationDate,@UserID,1,0,@OrgStaffGirandeh)			
			FETCH NEXT FROM cr INTO @UserMustReciveErja	
		END
		CLOSE cr
		DEALLOCATE cr		
	END				
	-------- پايان ثبت ارجاعات به شرکت کنندگان در جلسه يا ملاقات		
	UPDATE WorkSheet_Base
	SET sendLetter=1
	WHERE ID=@WorkSheetBaseID

	UPDATE ReCommites
	SET	Proceeded =1
	WHERE LetterID=@LetterID AND ParentId=0
	
	UPDATE letter
	SET Finalized=1
	WHERE LetterID=@LetterID	
	
	COMMIT TRAN
	
END
GO
/****** Object:  StoredProcedure [dbo].[spCreateInnerLetterForOtherUsers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCreateInnerLetterForOtherUsers] 
	@WorkSheetBaseID int, 
	@MYear INT,
	@SecretariatID INT,
	@RegistrationDate VARCHAR(10),
	@RegistrationTime VARCHAR(5)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Signerid VARCHAR(50),@LetterID INT,			
			@UserID INT,@DoAtDate VARCHAR(50),@Description VARCHAR(3000),@ManagerUserID INT,@Monshi INT,@type INT,@FromOrgID INT,@ToOrgID INT,
			@UserID0 INT,@Memo VARCHAR(8000),@ToStaffer VARCHAR(50),@fromstaffer VARCHAR(50),@NewIndicatorID INT,@InnerLetterRegUserID INT,
			@ParentID INT,@FromOrgIDGirandeh INT,@OrgStaffGirandeh VARCHAR(50)
	
	BEGIN TRAN

	SELECT @type=TYPE,@ManagerUserID=ManagerUserID,@Monshi=Monshi FROM WorkSheet_Base WHERE ID=@WorkSheetBaseID			
	IF ISNULL(@type,0)=1 SET @InnerLetterRegUserID=@Monshi 
	ELSE IF ISNULL(@type,0)=2 SET @InnerLetterRegUserID=@ManagerUserID 
		 	
	IF OBJECT_ID('tempdb..#OtherUsers') IS NOT NULL DROP TABLE #OtherUsers			
	SELECT wsru.UserID, wsru.DoAtDate,wsr.Description 
	INTO #OtherUsers 
	FROM WorkSheet_ResultUsers wsru 
	INNER JOIN WorkSheet_Results wsr ON wsru.WorkSheet_ResultsID=wsr.ID
	INNER JOIN WorkSheet_Base wsb ON wsr.WorkSheetBaseID=wsb.ID 
	WHERE (wsb.ID=@WorkSheetBaseID) AND (wsru.UserID NOT IN (
												SELECT DISTINCT list1.UserID FROM (
																					SELECT UserID FROM WorkSheet_Sessions WHERE WorkSheetBaseID=@WorkSheetBaseID
																						UNION ALL
																					SELECT UserID FROM WorkSheet_Visits   WHERE WorkSheetBaseID=@WorkSheetBaseID	
																				  ) AS list1
															 )
										 )			
	ORDER BY wsru.UserID


	SELECT * FROM #OtherUsers

	DECLARE cr0 CURSOR FOR 
	SELECT DISTINCT UserID FROM #OtherUsers 
	OPEN cr0
	FETCH NEXT FROM cr0 INTO @UserID0
	WHILE @@FETCH_STATUS = 0
	BEGIN
		---------------------------------
			IF ISNULL(@type,0)=1
			BEGIN
				SELECT TOP 1 @FromOrgID=FromOrgID FROM Users WHERE id=@Monshi		
				SELECT TOP 1 @ToOrgID=FromOrgID   FROM Users WHERE id=@UserID0
				SET @Signerid=CAST(@FromOrgID AS VARCHAR(50))
			END
			ELSE IF ISNULL(@type,0)=2
			BEGIN
				SELECT TOP 1 @FromOrgID=FromOrgID FROM Users WHERE id=@ManagerUserID		
				SELECT TOP 1 @ToOrgID=FromOrgID   FROM Users WHERE id=@UserID0			
				SET @Signerid=CAST(@FromOrgID AS VARCHAR(50))		
			END 		
			SELECT @fromstaffer=Title FROM FromOrganizations WHERE ID=@FromOrgID
			SELECT @ToStaffer=Title   FROM FromOrganizations WHERE ID=@ToOrgID

			IF ISNULL(@type,0)=1 SET @Memo=' مصوبات جلسه با کد شناسايي '
			ELSE IF ISNULL(@type,0)=2 SET @Memo=' مصوبات قرار ملاقات با کد شناسايي '
			SET @Memo=@Memo+CAST(@WorkSheetBaseID AS VARCHAR(50)) + ' به قرار زير مي باشد: '
			
			DECLARE cr CURSOR FOR 
			SELECT UserID,DoAtDate,Description FROM #OtherUsers WHERE UserID=@UserID0
			OPEN cr
			FETCH NEXT FROM cr INTO @UserID,@DoAtDate,@Description 
			WHILE @@FETCH_STATUS = 0
			BEGIN
				------- تعيين مضمون نامه داخلي
				SET @Memo=@Memo+' '+@Description
				IF LEN(LTRIM(RTRIM(@DoAtDate)))>0 SET @Memo=@Memo+' و مهلت انجام آن تا تاريخ '+@DoAtDate
				--------- تعيين مضمون نامه داخلي پايان				
				FETCH NEXT FROM cr INTO @UserID,@DoAtDate,@Description	
			END
			CLOSE cr
			DEALLOCATE cr 

			SELECT @NewIndicatorID=MAX(IndicatorID)+1 FROM Letter
			SET @NewIndicatorID=isnull(@NewIndicatorID,1)
			--------- ثبت نامه
			INSERT INTO Letter (IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,FromOrgID,ToOrgID,Signerid,ClassificationID,
								UrgencyID,Memo,NumberOfPage,ReceiveTypeID,UserID,RegistrationDate,RegistrationTime,ToStaffer,fromstaffer,
								Finalized,LastUpdate)
			VALUES (@NewIndicatorID,@MYear,@SecretariatID,3,1,@FromOrgID,@ToOrgID,@Signerid,1,
					1,@Memo,1,1,@InnerLetterRegUserID,@RegistrationDate,@RegistrationTime,@ToStaffer,@fromstaffer,
					0,GETDATE())
			SELECT @LetterID=SCOPE_IDENTITY()	
		-------- ثبت ارجاعات به شرکت کنندگان در جلسه يا ملاقات		
			SELECT TOP 1 @FromOrgIDGirandeh=FromOrgID,@OrgStaffGirandeh=Title FROM Users WHERE id=@UserID0
			INSERT INTO ReCommites(LetterID,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,OrgStaff) 
			VALUES (@LetterID,1,3,0,@FromOrgIDGirandeh,@Memo,@RegistrationDate,@InnerLetterRegUserID,1,0,@OrgStaffGirandeh)							
		-------- پايان ثبت ارجاعات به شرکت کنندگان در جلسه يا ملاقات		
		---------------------------------
			UPDATE letter
			SET Finalized=1
			WHERE LetterID=@LetterID	

		FETCH NEXT FROM cr0 INTO @UserID0
	END
	CLOSE cr0
	DEALLOCATE cr0	
	
	UPDATE WorkSheet_Base
	SET SendLetterToOtherPerson=1
	WHERE ID=@WorkSheetBaseID
	
	COMMIT TRAN
	
END
GO
/****** Object:  StoredProcedure [dbo].[spCreateNewsFromWorkSheet]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCreateNewsFromWorkSheet]
	@DateAnnonce VARCHAR(10),
	@TimeAnnonce VARCHAR(10),
	@UserID INT,
	@WorkSheetID INT,
	@SendFlag INT=0	
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @NewCode INT,
		@WorkSheetType INT , 
		@WorkSheetUserID INT, 
		@LastInsertedID INT,
		@Title VARCHAR(300) , 
		@Memo VARCHAR(3000),
		@Description Varchar(3000)
	
	BEGIN TRAN
	
	SELECT @WorkSheetType=TYPE,@Title=SUBJECT, @Description = Description FROM WorkSheet_Base WHERE ID=@WorkSheetID
	IF @WorkSheetType=1	SET @Memo='دعوت به جلسه با کد:'+CAST(@WorkSheetID AS VARCHAR) + ' ' + @Description
	IF @WorkSheetType=2	SET @Memo='دعوت به ملاقات با کد:'+CAST(@WorkSheetID AS VARCHAR) + ' ' + @Description
	IF @WorkSheetType=3	SET @Memo='دعوت به انجام کار با کد:'+CAST(@WorkSheetID AS VARCHAR) + ' ' + @Description
			
	SELECT @NewCode=MAX(Code) FROM News
	SET @NewCode=isnull(@NewCode,0)+1

	IF @SendFlag=1
	BEGIN
		IF NOT EXISTS(
					  SELECT userid FROM WorkSheet_Sessions WHERE WorkSheetBaseID=@WorkSheetID AND UserResponse=3
						UNION ALL
					  SELECT userid FROM WorkSheet_Visits   WHERE WorkSheetBaseID=@WorkSheetID AND UserResponse=3
						UNION ALL
					  SELECT userid FROM WorkSheet_Tasks    WHERE WorkSheetBaseID=@WorkSheetID AND UserResponse=3
					 )
			RETURN
	END

	INSERT INTO News(Code,Title,Memo,UrgenceisID,DateAnnounce,TimeAnnounce,DateExpire,UserID)
	VALUES(@NewCode,@Title,@Memo,1,@DateAnnonce,@TimeAnnonce,NULL,@UserID)
	SELECT @LastInsertedID=SCOPE_IDENTITY() FROM News
	
	IF @WorkSheetType=1 -- جلسه
	BEGIN
		IF @SendFlag=0
		BEGIN
			DECLARE cr CURSOR FOR 		
			SELECT UserID FROM WorkSheet_Sessions 
			WHERE WorkSheetBaseID=@WorkSheetID		
			OPEN cr
			FETCH NEXT FROM cr INTO @WorkSheetUserID
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO NewsUsers(NewsID,UsersID,IsRead,NotShow)
				VALUES(@LastInsertedID,@WorkSheetUserID,0,0)
				FETCH NEXT FROM cr INTO @WorkSheetUserID
			END
			CLOSE cr
			DEALLOCATE cr
		END
		ELSE
		BEGIN
			DECLARE cr CURSOR FOR 		
			SELECT UserID FROM WorkSheet_Sessions 
			WHERE WorkSheetBaseID=@WorkSheetID AND UserResponse=3	
			OPEN cr
			FETCH NEXT FROM cr INTO @WorkSheetUserID
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO NewsUsers(NewsID,UsersID,IsRead,NotShow)
				VALUES(@LastInsertedID,@WorkSheetUserID,0,0)
				FETCH NEXT FROM cr INTO @WorkSheetUserID
			END
			CLOSE cr
			DEALLOCATE cr			
		END	
	END
	IF @WorkSheetType=2 -- قرارملاقات
	BEGIN
		IF @SendFlag=0
		BEGIN
			DECLARE cr CURSOR FOR 		
			SELECT UserID FROM WorkSheet_Visits 
			WHERE WorkSheetBaseID=@WorkSheetID		
			OPEN cr
			FETCH NEXT FROM cr INTO @WorkSheetUserID
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO NewsUsers(NewsID,UsersID,IsRead,NotShow)
				VALUES(@LastInsertedID,@WorkSheetUserID,0,0)
				FETCH NEXT FROM cr INTO @WorkSheetUserID
			END
			CLOSE cr
			DEALLOCATE cr
		END
		ELSE
		BEGIN
			DECLARE cr CURSOR FOR 		
			SELECT UserID FROM WorkSheet_Visits 
			WHERE WorkSheetBaseID=@WorkSheetID AND UserResponse=3		
			OPEN cr
			FETCH NEXT FROM cr INTO @WorkSheetUserID
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO NewsUsers(NewsID,UsersID,IsRead,NotShow)
				VALUES(@LastInsertedID,@WorkSheetUserID,0,0)
				FETCH NEXT FROM cr INTO @WorkSheetUserID
			END
			CLOSE cr
			DEALLOCATE cr			
		END						
	END
	IF @WorkSheetType=3 -- Task
	BEGIN
		IF @SendFlag=0
		BEGIN
			DECLARE cr CURSOR FOR 		
			SELECT UserID FROM WorkSheet_Tasks 
			WHERE WorkSheetBaseID=@WorkSheetID		
			OPEN cr
			FETCH NEXT FROM cr INTO @WorkSheetUserID
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO NewsUsers(NewsID,UsersID,IsRead,NotShow)
				VALUES(@LastInsertedID,@WorkSheetUserID,0,0)
				FETCH NEXT FROM cr INTO @WorkSheetUserID
			END
			CLOSE cr
			DEALLOCATE cr
		END
		ELSE
		BEGIN
			DECLARE cr CURSOR FOR 		
			SELECT UserID FROM WorkSheet_Tasks 
			WHERE WorkSheetBaseID=@WorkSheetID AND UserResponse=3	
			OPEN cr
			FETCH NEXT FROM cr INTO @WorkSheetUserID
			WHILE @@FETCH_STATUS = 0
			BEGIN
				INSERT INTO NewsUsers(NewsID,UsersID,IsRead,NotShow)
				VALUES(@LastInsertedID,@WorkSheetUserID,0,0)
				FETCH NEXT FROM cr INTO @WorkSheetUserID
			END
			CLOSE cr
			DEALLOCATE cr			
		END						
	END	
	
	UPDATE WorkSheet_Base
	SET SendNews=1
	WHERE ID=@WorkSheetID
	
	COMMIT TRAN
		
END

GO
/****** Object:  StoredProcedure [dbo].[spGetInnerNo]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetInnerNo] 	
	@LetterID INT, @SecID INT
AS
BEGIN
	SET NOCOUNT ON
	Declare @InnerNo nvarchar(500) , @Mysql VARCHAR(4000)                           
	Set @InnerNo=dbo.InnerNoFormat('Sender','Deliver',@SecID)

	SET @Mysql='select Letter.LetterID,'+@InnerNo+'  InnerNo
	FROM Letter left  JOIN                  
	FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN                  
	FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                  
	Left join LetterTypes on LetterTypes.ID=Letter.Letter_type                  
	Inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID                  
	Inner join Secretariats on Secretariats.Secid=Letter.SecretariatID                  
	left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID 
	WHERE Letter.LetterID='
	
	SET @Mysql=@Mysql+CAST(@LetterID AS VARCHAR(50))
	
	EXEC(@Mysql) 
END
GO
/****** Object:  StoredProcedure [dbo].[spGroupUser]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGroupUser] 	
	@GroupID int, 
	@OrgID int
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO ChartWorkGroupDetails(GroupID,OrgID,AccessForErja)
	VALUES(@GroupID,@OrgID,1) 

END

GO
/****** Object:  StoredProcedure [dbo].[spUpdChartWorkGroupDetail]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[spUpdChartWorkGroupDetail]
	@Type int, 
	@GroupID int,
	@ID	INT,
	@SubTree INT
AS
BEGIN
	SET NOCOUNT ON

	IF @Type=1 -- عضويت
	BEGIN
		IF ISNULL(@SubTree,0)=0		
		BEGIN
			UPDATE ChartWorkGroupDetails
			SET	AccessForErja = 1
			WHERE GroupID=@GroupID AND OrgID IN (SELECT TOP 1 ID FROM dbo.fn_GetNode_TOLeaf(@ID))
--*************************************  شروع بروزرساني انتصاب  گروه هاي به سمت ****************************************
		   UPDATE FromOrganizations
		   SET GROUPID = @GroupID
		   WHERE ID IN (SELECT TOP 1 ID FROM dbo.fn_GetNode_TOLeaf(@ID))
--*************************************  پايان بروزرساني انتصاب  گروه هاي به سمت ****************************************
        END
		ELSE 
		IF ISNULL(@SubTree,0)=1 
		BEGIN
			UPDATE ChartWorkGroupDetails
			SET	AccessForErja = 1
			WHERE GroupID=@GroupID AND OrgID IN (SELECT ID FROM dbo.fn_GetNode_TOLeaf(@ID))						
--*************************************  شروع بروزرساني انتصاب  گروه هاي به سمت با زير شاخه ها ****************************************
			DECLARE @ID_NEW int 

					DECLARE cur1 CURSOR FOR

					SELECT id FROM FromOrganizations
					WHERE ID IN
										(
											SELECT 
												ID 
											FROM FromOrganizations
											WHERE  ID IN  (SELECT ID FROM dbo.fn_GetNode_TOLeaf(@ID))						

										)

					OPEN cur1
					FETCH NEXT FROM cur1   
					INTO @ID_NEW
					WHILE @@FETCH_STATUS = 0  
					BEGIN 
  
					  UPDATE FromOrganizations
					   SET GROUPID = @GroupID
					  WHERE ID = @ID_NEW


					 FETCH NEXT FROM cur1   
					 INTO @ID_NEW  
					END   
					CLOSE cur1  
					DEALLOCATE cur1
--*************************************  پايان بروزرساني انتصاب  گروه هاي به سمت با زير شاخه ها ****************************************
      END  

	END
	IF @Type=0  -- عدم عضويت
	BEGIN
		IF ISNULL(@SubTree,0)=0	
		BEGIN	
			UPDATE ChartWorkGroupDetails
			SET	AccessForErja = 0
			WHERE GroupID=@GroupID AND OrgID IN (SELECT TOP 1 ID FROM dbo.fn_GetNode_TOLeaf(@ID))

--*************************************  شروع بروزرساني عدم انتصاب  گروه هاي به سمت ****************************************
		   UPDATE FromOrganizations
		   SET GROUPID = 0
		   WHERE ID IN (SELECT TOP 1 ID FROM dbo.fn_GetNode_TOLeaf(@ID))
--*************************************  پايان بروزرساني عدم انتصاب  گروه هاي به سمت ***********
        END 
		ELSE 
		IF ISNULL(@SubTree,0)=1
		BEGIN
			UPDATE ChartWorkGroupDetails
			SET	AccessForErja = 0
			WHERE GroupID=@GroupID AND OrgID IN (SELECT ID FROM dbo.fn_GetNode_TOLeaf(@ID))			
--*************************************  شروع بروزرساني عدم انتصاب  گروه هاي به سمت با زير شاخه ها ****************************************
			DECLARE @ID_NEW2 int 

					DECLARE cur2 CURSOR FOR

					SELECT id FROM FromOrganizations
					WHERE ID IN
										(
											SELECT 
												ID 
											FROM FromOrganizations
											WHERE  ID IN  (SELECT ID FROM dbo.fn_GetNode_TOLeaf(@ID))						

										)

					OPEN cur2
					FETCH NEXT FROM cur2   
					INTO @ID_NEW2
					WHILE @@FETCH_STATUS = 0  
					BEGIN 
  
					  UPDATE FromOrganizations
					   SET GROUPID = 0
					  WHERE ID = @ID_NEW2


					 FETCH NEXT FROM cur2   
					 INTO @ID_NEW2  
					END   
					CLOSE cur2  
					DEALLOCATE cur2
--*************************************  پايان بروزرساني  عدم انتصاب  گروه هاي به سمت با زير شاخه ها ****************************************

        END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Transfer_Get_Letter_By_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[Transfer_Get_Letter_By_LetterID](@Letterid int output)
as

SELECT     Letter.*, org.Title AS OrgTitle
FROM         Letter INNER JOIN
                      FromOrganizations org ON Letter.ToOrgID = org.ID
WHERE     (Letter.LetterID =@Letterid)



GO
/****** Object:  StoredProcedure [dbo].[Transfer_Get_Letterdata_By_LetterDataID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[Transfer_Get_Letterdata_By_LetterDataID]
@LetterDataID int
AS
select *
from LetterData
where LetterDataID=@LetterDataID




GO
/****** Object:  StoredProcedure [dbo].[Transfer_Get_LetterData_By_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE Procedure [dbo].[Transfer_Get_LetterData_By_LetterID](@LetterID int,@maxSize int )

as
select LetterDataID,LastUpdate,Extention
from letterdata
where letterid=@LetterID
and pagenumber<=dbo.NumberOfPage_ByMaxSize(@letterID,@maxSize)

 

GO
/****** Object:  StoredProcedure [dbo].[Transfer_Get_LetterFieldValue_By_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE procedure [dbo].[Transfer_Get_LetterFieldValue_By_LetterID](@LetterID int )
as
select * 
from LetterFieldValue 
where letterid=@LetterID



GO
/****** Object:  StoredProcedure [dbo].[Transfer_Get_Recommites_By_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE procedure [dbo].[Transfer_Get_Recommites_By_LetterID](@LetterID int )
as
select Recommites.*,org.Title AS OrgTitle
from Recommites
 INNER JOIN   FromOrganizations org ON Recommites.OrgID = org.ID
where letterid=@LetterID


GO
/****** Object:  StoredProcedure [dbo].[Transfer_Get_SentLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE procedure [dbo].[Transfer_Get_SentLetter]
@RelatedSecretariatID int,
@FromDate char(10)
as


declare @ToSecID int,@DestinationOrgID_inSource int


select @ToSecID=DestinationSecID,@DestinationOrgID_inSource=DestinationOrgID_inSource
from RelatedSecretariats
where  RelatedSecretariatID=@RelatedSecretariatID



SELECT     top 100 l.*
FROM       Letter l
WHERE     letterformat=1 
      and letter_type                               = 2
      and sendstatusid                              = 2
      and Registrationdate                          >= @FromDate  
      and l.ToOrgID                                  = @DestinationOrgID_inSource
and exists(select * from letterdata where letterid=l.letterid)


GO
/****** Object:  StoredProcedure [dbo].[Transfer_insert_LetterFieldValue]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[Transfer_insert_LetterFieldValue]
	(@LetterID 	[int],
	 @FieldID 	[int],
	 @FieldValue 	[nvarchar](2000),
	 @LastUpdate	[datetime],
         @LetterFieldValueID 	[int] output)

AS INSERT INTO[LetterFieldValue] 
	 ( 
	 [LetterID],
	 [FieldID],
	 [FieldValue],
	 LastUpdate)

VALUES
	(
	 @LetterID,
	 @FieldID,
	 @FieldValue,
	 @LastUpdate) 
set @LetterFieldValueID=@@identity





GO
/****** Object:  StoredProcedure [dbo].[Transfer_insert_ReCommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[Transfer_insert_ReCommites]
	(
	 @LetterID 	[int],
	 @ID 	[smallint],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @ProceedDate 	[varchar](10),
	 @staffmemo 	[nvarchar](255),
	 @viewdate 	[char](10),
	 @OrgStaff 	[nvarchar](50),
	 @DeadLineDate 	[char](10),
	 @LastUpdate 	[datetime],
         @RecommiteID 	 int output )

AS INSERT INTO  [ReCommites] 
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
	 [ProceedDate],
	 [staffmemo],
	 [viewdate],
	 [OrgStaff],
	 [DeadLineDate],
	 [LastUpdate])

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
	 @ProceedDate,
	 @staffmemo,
	 @viewdate,
	 @OrgStaff,
	 @DeadLineDate,
	 @LastUpdate)

set @RecommiteID=@@identity

exec Transfer_Get_LetterData_By_LetterID 5242, 1000



GO
/****** Object:  StoredProcedure [dbo].[Transfer_Insert_SentLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Transfer_Insert_SentLetter]
	(@IndicatorID 	[int],
	 @MYear			[int],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @ToOrgID 	[int],
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @SentLetterID 	[int],
	 @TemplateID 	[int],
	 @HeaderID 	[int],
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @SendStatusID 	[tinyint],
@LetterID int output)

AS INSERT INTO  [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],
	 [letterformat],	 [IncommingNO],	 [Incommingdate],	 [CenterNo],
	 [CenterDate],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [AttachTitle],
	 [NumberOfAttachPages],
	 [NumberOfPage],
	 [ReceiveTypeID],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [SentLetterID],
	 [TemplateID],
	 [HeaderID],
	 [LetterRecommites],
	 [FromStaffer],
	 [Finalized],
	 [SendStatusID]) 

VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @IncommingNO,
	 @Incommingdate,
	 @CenterNo,
	 @CenterDate,
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @AttachTitle,
	 @NumberOfAttachPages,
	 @NumberOfPage,
	 @ReceiveTypeID,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @SentLetterID,
	 @TemplateID,
	 @HeaderID,
	 @LetterRecommites,
	 @FromStaffer,
	 @Finalized,
	 @SendStatusID)
select @letterID=@@identity



INSERT INTO  ReCommites( LetterID, [ID], Type, ParentId, OrgID, Paraph, RecommiteDate, UserID, IsCopy, Proceeded, ProceedDate, staffmemo, 
viewdate, OrgStaff, DeadLineDate, LastUpdate, UniqueID,
ActionTypeID, DeadLineToint, IsAnswer, ISFollowup)
VALUES(@letterID,1, 3, 0, 1, 'رسيده از رپليکيت',@RegistrationDate , @UserID,0, 0, NULL,'', NULL,
 '',NULL, GETDATE(), 0, 1, 0, 0, 0)
GO
/****** Object:  StoredProcedure [dbo].[Transfer_Insert_SharedLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Transfer_Insert_SharedLetter]

	(@IndicatorID 	[int],
	 @MYear 	[int],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @ToOrgID 	[int],
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @SentLetterID 	[int],
	 @TemplateID 	[int],
	 @HeaderID 	[int],
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @SendStatusID 	[tinyint],
	 @LastUpdate 	datetime,
	 @UserTableID 	[int],
	 @UniqueID  bigint,
@LetterID int output)

AS INSERT INTO  [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],
	 [letterformat],	 [IncommingNO],	 [Incommingdate],	 [CenterNo],
	 [CenterDate],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [AttachTitle],
	 [NumberOfAttachPages],
	 [NumberOfPage],
	 [ReceiveTypeID],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [SentLetterID],
	 [TemplateID],
	 [HeaderID],
	 [LetterRecommites],
	 [FromStaffer],
	 [Finalized],
	 [SendStatusID],
	 LastUpdate 	,
	 UserTableID 	,
	 UniqueID ) 
VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @IncommingNO,
	 @Incommingdate,
	 @CenterNo,
	 @CenterDate,
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @AttachTitle,
	 @NumberOfAttachPages,
	 @NumberOfPage,
	 @ReceiveTypeID,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @SentLetterID,
	 @TemplateID,
	 @HeaderID,
	 @LetterRecommites,
	 @FromStaffer,
	 @Finalized,
	 @SendStatusID,
	 @LastUpdate 	,
	 @UserTableID 	,
	 @UniqueID )
select @letterID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[Transfer_Sent_RelatedSecs]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create  procedure [dbo].[Transfer_Sent_RelatedSecs]
as


SELECT     *,dbo.get_Number_Of_Letter_RelatedSecretariatID(RelatedSecretariatID) Number_of_letters
FROM         RelatedSecretariats 




GO
/****** Object:  StoredProcedure [dbo].[Transfer_shared_RelatedSecs]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE  procedure [dbo].[Transfer_shared_RelatedSecs]
as

SELECT     RelatedSecretariatID, RelatedSecretariatTitle, DestinationOrgID_inSource, RelationType, SourceSecID, 
                      ServerIP, DbName, DestinationSecID
FROM         RelatedSecretariats INNER JOIN
                      Server ON RelatedSecretariats.DestinationServerID = Server.ServerID
WHERE     RelationType in ( 2, 3)




GO
/****** Object:  StoredProcedure [dbo].[Trunsfer_update_Letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE  PROCEDURE [dbo].[Trunsfer_update_Letter]
	(@LetterID 	[int],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @UserTableID 	[int],
	 @LastUpdate	[datetime])

AS UPDATE  [Letter] 

SET      [IncommingNO]	 = @IncommingNO,
	 [Incommingdate]	 = @Incommingdate,
	 [CenterNo]	 = @CenterNo,
	 [CenterDate]	 = @CenterDate,
	 [ClassificationID]	 = @ClassificationID,
	 [UrgencyID]	 = @UrgencyID,
	 [Memo]	 = @Memo,
	 [AttachTitle]	 = @AttachTitle,
	 [NumberOfAttachPages]	 = @NumberOfAttachPages,
	 [NumberOfPage]	 = @NumberOfPage,
	 [ReceiveTypeID]	 = @ReceiveTypeID,
	 [RetroactionNo]	 = @RetroactionNo,
	 [UserMemo]	 = @UserMemo,
	 [FollowLetterNo]	 = @FollowLetterNo,
	 [ToStaffer]	 = @ToStaffer,
	 [LetterRecommites]	 = @LetterRecommites,
	 [FromStaffer]	 = @FromStaffer,
	 [Finalized]	 = @Finalized,
	 [LastUpdate]	 = @LastUpdate,
	 [UserTableID]	 = @UserTableID


WHERE 
	( [LetterID]	 = @LetterID)




GO
/****** Object:  StoredProcedure [dbo].[Trunsfer_update_LetterFieldValue]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE  PROCEDURE [dbo].[Trunsfer_update_LetterFieldValue]
	(@LetterFieldValueID 	[int],
	 @FieldValue 	[nvarchar](2000),
	 @LastUpdate	[datetime])

AS UPDATE  [LetterFieldValue] 

SET  [FieldValue]	 = @FieldValue,
	 [LastUpdate]	 = @LastUpdate

WHERE 
	( [LetterFieldValueID]	 = @LetterFieldValueID)




GO
/****** Object:  StoredProcedure [dbo].[Trunsfer_update_ReCommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE  PROCEDURE [dbo].[Trunsfer_update_ReCommites]
	(@RecommiteID 	[int],
	 @Paraph 	[nvarchar](500),
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @ProceedDate 	[varchar](10),
	 @DeadLineDate 	[char](10),
	 @LastUpdate	[datetime])

AS UPDATE  [ReCommites] 

SET 	 [Paraph]	 = @Paraph,
	 [IsCopy]	 = @IsCopy,
	 [Proceeded]	 = @Proceeded,
	 [ProceedDate]	 = @ProceedDate,
	 [DeadLineDate]	 = @DeadLineDate ,
	 [LastUpdate]	 = @LastUpdate
WHERE 
	( [RecommiteID]	 = @RecommiteID)




GO
/****** Object:  StoredProcedure [dbo].[UPDATE_Acction_Access]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[UPDATE_Acction_Access]
	@NewAccess bit,
	@AccessID int,
	@ActionID nvarchar(50),
	@FormTag int
as
begin
	--	last modifier xax 1398/03/03

	if not exists (select top 1 1 from ActionsAccess where AccessID = @AccessID and ActionID = @ActionID and FormTag = @FormTag)
	begin
		insert into ActionsAccess 
		(
			AccessID,
			ActionID,
			FormTag,
			HasAccess
		)
		values
		(
			@AccessID,
			@ActionID,
			@FormTag,
			@NewAccess 
		)
	end
	else
	begin
		update ActionsAccess
		set 
			HasAccess = @NewAccess 
		where
			AccessID = @AccessID and
			ActionID = @ActionID and
			FormTag = @FormTag
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Update_all_recommites]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[Update_Archived_letter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Procedure [dbo].[Update_Archived_letter]
@Letterid int,@archived bit
as

UPDATE    Letter
SET        archived = @archived  
WHERE     (LetterID = @LetterID)




GO
/****** Object:  StoredProcedure [dbo].[update_ArchiveFolder]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[update_FromOrganizations_Title]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE procedure [dbo].[update_FromOrganizations_Title](@ID INT, @Newtitle nVARCHAR(200),@NewResponsibleStaffer nvarchar(100),@newID int 
output)
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
/****** Object:  StoredProcedure [dbo].[update_Letter_Finalized]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[update_Letter_Finalized]
	(@LetterID 	INT,
	 @Finalized BIT,
	 @ISCopy_InDabir BIT=1
	)

AS 

CREATE TABLE #TPT(ID INT)

UPDATE dbo.Letter  
SET  Finalized	 = @Finalized  
WHERE  ( LetterID	 = @LetterID)

IF @ISCopy_InDabir=1
 	UPDATE ReCommites
	SET	IsCopy_In_Dabir = 1, IsCopy = 1
	WHERE LetterID=@LetterID

	UPDATE ReCommites
	SET SentToDabir=1
	WHERE LetterID=@LetterID
GO
/****** Object:  StoredProcedure [dbo].[update_Letter_Indicator]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
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
WHERE     (IndicatorID = @NewIndicatorID) AND (MYear = @myear) AND (SecretariatID = @NewSecretariatID) AND (Letter_Type = @NewLetter_Type) 
AND (letterformat = @Newletterformat))
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
/****** Object:  StoredProcedure [dbo].[update_letter_sendstatusID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


create proc [dbo].[update_letter_sendstatusID]( @LetterID int ,@SendStatusID tinyint)
as
UPDATE    Letter
SET              SendStatusID = @SendStatusID
WHERE     (LetterID = @LetterID)



GO
/****** Object:  StoredProcedure [dbo].[update_LetterText]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO








create PROCEDURE [dbo].[update_LetterText]
	(@LetterID  	int,
	 @TypeText   	[nvarchar](4000))

AS UPDATE [dbo].[LetterText] 

SET 	 [TypeText]	 = @TypeText 

WHERE 
	( LetterID = @LetterID  )


GO
/****** Object:  StoredProcedure [dbo].[Update_ParaphTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create Procedure [dbo].[Update_ParaphTemplate]
@ParaphTemplateID int,@Title nvarchar(50) ,@Paraph nvarchar(500)
as

UPDATE  ParaphTemplate
   SET [Title] = @Title
      ,[Paraph] = @Paraph
 WHERE ParaphTemplateID=@ParaphTemplateID

GO
/****** Object:  StoredProcedure [dbo].[update_ReCommites_proceed]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[update_ReCommites_proceed]
	(@RecommiteID int,
	 @Proceeded 	[bit],
	 @ProceedDate 	[nvarchar](10),
 @actionTypeID tinyint)

AS UPDATE [dbo].[ReCommites] 


SET  [Proceeded]	 = @Proceeded,
	 [ProceedDate]	 = @ProceedDate ,
      actionTypeID=@actionTypeID

WHERE 
	( RecommiteID	 = @RecommiteID)




GO
/****** Object:  StoredProcedure [dbo].[update_ReCommites_viewDate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[update_ReCommites_viewDate]
	(@RecommiteID int,
	 @ViewDate 	[char](10))
AS 

IF OBJECT_ID('tempdb..#Topol') IS NOT NULL DROP TABLE #Topol
CREATE TABLE #Topol(ID INT)

IF @ViewDate <> ''
BEGIN
	UPDATE [dbo].[ReCommites] 
	SET  	 ViewDate=@ViewDate
	WHERE 
		( RecommiteID	 = @RecommiteID)
			AND (ViewDate IS  NULL OR ViewDate = '')
END
ELSE
BEGIN
	UPDATE [dbo].[ReCommites] 
	SET  	 ViewDate=@ViewDate
	WHERE 
		( RecommiteID	 = @RecommiteID)

END
GO
/****** Object:  StoredProcedure [dbo].[update_UserLoginLogout]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[update_UserLoginLogout]
	( @UserLoginLogoutID	[int],
	 @isSafeLogout 	[bit],
	@isCartable [bit])

AS
 UPDATE [dbo].[UserLoginLogout] 

SET          [LogoutTime]	 = getdate(),
	 [isSafeLogout]	 = @isSafeLogout,
	 [isCartable] = @isCartable

WHERE 	( [UserLoginLogoutID]	 = @UserLoginLogoutID)

GO
/****** Object:  StoredProcedure [dbo].[UserChange_pass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROCEDURE [dbo].[UserChange_pass] (@userID int,@newPass nvarchar(100) )
AS

 
update users
set password=@newPass
where id=@userid 



GO
/****** Object:  StoredProcedure [dbo].[UserLog_Report]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
/****** Object:  StoredProcedure [dbo].[usp_getLetterNotifications]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_getLetterNotifications]
@userId int,@secondDiff int
As
begin
	select distinct ToOrgID,l.LetterID,l.LastUpdate from letter l
	inner join Users u
	on u.id=@userId and ( u.FromOrgID =l.ToOrgID or u.SecondOrgID=l.ToOrgID or u.TreeOrgID=l.ToOrgID or u.FourOrgID=l.ToOrgID or u.FiveOrgID=l.ToOrgID)

	where l.LastUpdate> DATEADd(SECOND,-1*@secondDiff,getdate())
end;
GO
/****** Object:  StoredProcedure [dbo].[usp_recommiteUnread]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[usp_recommiteUnread]
@userId int=1
As
	select count(*) from ReCommites t1
	inner join Users u
	on u.id=@userId and ( u.FromOrgID =t1.OrgID or u.SecondOrgID=t1.OrgID or u.TreeOrgID=t1.OrgID or u.FourOrgID=t1.OrgID or u.FiveOrgID=t1.OrgID)
where viewdate is null
GO
/****** Object:  StoredProcedure [dbo].[Web_Access]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Web_Access](@userid int,
                                   @Result varchar(4000) output)
as
set @result=''
SELECT    @result=@result+case when hasaccess=1 then
case ActionID
when 'ReceiveInsert' then 'Incomming'
when 'SendInsert'  then 'OutGOing'
when 'ADarftIns' then 'Draft'
when 'AinnerLetter' then 'Inner'
when 'adeleteScan' then 'Drop_Attach'
WHEN 'AArchiveFolders' THEN 'Archive'
WHEN 'ActPhone' THEN 'PhoneBook'
WHEN 'acShowWorkSheetBase' THEN 'WorkSheet'
WHEN 'acWorkSheetAllRep' THEN 'WorkSheetReport'
WHEN 'aSENDMessage' THEN 'OfflineMessage'
WHEN 'AddNews' THEN 'News'
WHEN 'ALetterReport' THEN 'LetterReport'
WHEN 'AFulltext' THEN 'FullTextReport'
WHEN 'ARecommiteReport' THEN 'RecommiteReport'
WHEN 'acRepMohlateEghdam' THEN 'MohlateEghdamReport'
WHEN 'AARCHIVE' THEN 'ArchiveLetter'
WHEN 'AnewRecommite' THEN 'NewRecommite'
WHEN 'AaddLetterData' THEN 'NewLetterData'
WHEN 'AActivate' THEN 'AllowActivate'
WHEN 'AAnswer' THEN 'AllowAnswer'
WHEN 'AAnswerletter' THEN 'AllowAnswerLetter'
WHEN 'ADraftToLetter' THEN 'AllowSendDraft'
WHEN 'adeleteWord' THEN 'AllowDeleteWord'
WHEN 'AExpotToWord' THEN 'AllowAtachWord'
WHEN 'Arecommite' THEN 'RecommiteHistory'
WHEN 'ADoCommite' THEN 'ADoCommite'
WHEN 'ACustomizeGrid' THEN 'ACustomizeGrid'
WHEN 'AAddAlternativeUser' THEN 'AAddAlternativeUser'
WHEN 'DataSetDelete1' THEN 'Recommite_Drop'
WHEN 'SendToSecretariat' THEN 'AllowSendDraft'
end+';'
else '' end
FROM         ActionsAccess INNER JOIN
           Users 
		   ON ActionsAccess.AccessID = Users.AccessID
           WHERE     (Users.Id = @userid) 
AND ActionsAccess.ActionID IN 
           ('ReceiveInsert','SendInsert' , 'AinnerLetter','adeleteScan','ADarftIns', 'AArchiveFolders', 
            'ActPhone', 'acShowWorkSheetBase', 'acWorkSheetAllRep', 'aSENDMessage', 'AddNews', 'ALetterReport',
            'AFulltext', 'ARecommiteReport', 'acRepMohlateEghdam','AARCHIVE','AnewRecommite','AaddLetterData',
            'AActivate','AAnswer','AAnswerletter','ADraftToLetter','adeleteWord','AExpotToWord','Arecommite','ADoCommite',
            'ACustomizeGrid','AAddAlternativeUser','DataSetDelete1','SendToSecretariat')

--select * from ActionsAccess
-- where ActionID='AAnswer'
-- and AccessID=1
-- select 8 from 
GO
/****** Object:  StoredProcedure [dbo].[web_ArchiveRecommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_ArchiveRecommite]
	(@RecommiteID 	[int],
	 @ArchiveFolderID 	[int],
	 @ArchiveDate 	[char](10),
	 @Page 	[int],
	 @ArchiveNotes 	[nvarchar](50),
	 @StaffMemo 	[nvarchar](255),
	 @LetterArchiveID 	[int] output)

AS

INSERT INTO [dbo].[LetterArchiveFolder]
	 (
	 [ArchiveFolderID],
	 [LetterID],
	 [ArchiveDate],
	 [Page],
	 [ArchiveNotes])

VALUES
	(
	 @ArchiveFolderID,
	 @RecommiteId,
	 @ArchiveDate,
	 @Page,
	 @ArchiveNotes)

Update Recommites Set Proceeded=1, staffMemo=@StaffMemo where LetterID=@RecommiteId

set @LetterArchiveID=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[web_Get_Letter_by_LetterID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE proc [dbo].[web_Get_Letter_by_LetterID]
(@LetterID int )
as
SELECT     Letter.*,Html
FROM       Letter
left JOIN  lettertext ON lettertext.LetterID = Letter.LetterID
WHERE     (Letter.LetterID = @LetterID)










GO
/****** Object:  StoredProcedure [dbo].[web_Get_LetterData_by_LetterDataID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




Create proc [dbo].[web_Get_LetterData_by_LetterDataID]
(@LetterDataID int )
as
SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
FROM       LetterData 
left JOIN  Extention ON LetterData.extention = Extention.ExtentionID
WHERE     (LetterDataID = @LetterDataID)








GO
/****** Object:  StoredProcedure [dbo].[web_GetExcelTemplate]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[web_GetExcelTemplate](@templateId INT)
AS
	SELECT lt.[Document] 
		FROM LetterTemplate lt
		WHERE lt.ID=@templateId


GO
/****** Object:  StoredProcedure [dbo].[web_GetLetterArchiveHistory]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_GetLetterArchiveHistory]
(
	@letterId int,
	@userId int
)
AS

SELECT     dbo.LetterArchiveFolder.ArchiveDate, dbo.ArchiveFolder.*
FROM         dbo.ArchiveFolder INNER JOIN
                      dbo.LetterArchiveFolder ON dbo.ArchiveFolder.FolderID = dbo.LetterArchiveFolder.ArchiveFolderID
					  left join ReCommites r on r.RecommiteID=LetterArchiveFolder.LetterID
					  inner join letter l on r.letterid = l.LetterID

Where l.LetterID = @letterId and ArchiveFolder.UserId=@userId
GO
/****** Object:  StoredProcedure [dbo].[web_GetLetterAttachment]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_GetLetterAttachment](@letterID INT,@OnlyWord BIT) 
as

IF(@OnlyWord=1)
   SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
   FROM       LetterData 
   left JOIN  Extention ON LetterData.extention = Extention.ExtentionID
   WHERE LetterID=@LetterID AND LetterData.extention=3
ELSE
	
  SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
  FROM       LetterData 
  left JOIN  Extention ON LetterData.extention = Extention.ExtentionID
  WHERE LetterID=@LetterID
GO
/****** Object:  StoredProcedure [dbo].[web_GetRecommiteAttachment]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[web_GetRecommiteAttachment]
@RecommiteID int 
as
SELECT     r.*, Extention.ExtentionTitle, Extention.Extention
FROM       RecommitePayvast R
left JOIN  Extention ON r.extention = Extention.ExtentionID
WHERE RecommiteID=@RecommiteID
GO
/****** Object:  StoredProcedure [dbo].[web_GetRecommiteById]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[web_GetRecommiteById]
(@recommiteId int )
AS

SELECT R.*,f.title+' - '+r.OrgStaff RecommiterTitle,IsInnerOrg

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID

Where r.RecommiteId=@recommiteId


GO
/****** Object:  StoredProcedure [dbo].[web_HasLetter_ExcelFile]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[web_HasLetter_ExcelFile](@LetterID int) AS
DECLARE @HasFile INT
	SET @HasFile=(SELECT    COUNT(LetterDataID)
					FROM         LetterData
					WHERE     (extention in (select ExtentionID from Extention where Extention = 'xlsx' and IsSystem = 1 )) AND (LetterID = @LetterID))
	SELECT @HasFile


delete from Extention where Extention = 'xlsx'
SET IDENTITY_INSERT Extention ON
insert into Extention (ExtentionID, ExtentionTitle, Extention, IsSystem) values (40, 'xlsx', 'xlsx', 0)
SET IDENTITY_INSERT Extention OFF

---------------------------------------

GO
/****** Object:  StoredProcedure [dbo].[web_insert_AnswerLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_AnswerLetter]
	(
     @LetterID 	[int] output,
     @Indicator 	[int] output,
     @RecommiteId [int] output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @LetterFromOrgID int,
     @receivedLetterID int )

AS 
declare @ToOrgID int,@IndicatorID int ,@FromOrgID 	int,  @MYear int,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)

select  @ToOrgID=convert(int,@toorgtitle)
SET @title=@toorgtitle
set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','') 


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
BEGIN
	SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
    IF(@toorgtitle=@responsible)
        set @responsible=''
	insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
END

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,1,4) as int)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [fromstaffer],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 2,--Letter_Type
	 2,--letterformat
	 @LetterFromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0 --Finalized
       )

select @letterid=SCOPE_IDENTITY()
select @Indicator = @IndicatorId

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت پيش نويس جواب نامه',@registrationdate,@UserID,0,0,0,@RecommiteId output
update letter
set SentLetterID=@letterid
where letterid=@receivedLetterID
GO
/****** Object:  StoredProcedure [dbo].[web_insert_AnswerLetter2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_AnswerLetter2]
	(
     @LetterID 	[int] output,
     @Indicator 	[int] output,
     @RecommiteId [int] output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @LetterFromOrgID int,
     @receivedLetterID int 
	 ,@SecretariatID int)

AS 
	declare @ToOrgID int,@IndicatorID int ,@FromOrgID 	int,  @MYear int,
			@RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)

	select  @ToOrgID=convert(int,@toorgtitle)
	SET @title=@toorgtitle
	set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','') 


	if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
	BEGIN
		SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
		IF(@toorgtitle=@responsible)
			set @responsible=''
		insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
	END

	 
	select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
	   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

	set @RegistrationDate=dbo.shamsi(getdate())

	set @myear=cast (substring(@RegistrationDate,1,4) as int)

	SELECT      @FromOrgID=FromOrgID
	FROM         Users
	where id=@userid
		if(@SecretariatID=0)
		begin
		SELECT     @SecretariatID=DefualtSecretariatID 
		FROM         Users
		where id=@userid
		end
	set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

	INSERT INTO [Letter] 
		 ( [IndicatorID],
		 [MYear],
		 [SecretariatID],
		 [Letter_Type],
		 [letterformat],
		 [FromOrgID],
		 [ToOrgID],
		 [Signerid],
		 [ClassificationID],
		 [UrgencyID],
		 [Memo],
		 [UserID],
		 [RetroactionNo],
		 [UserMemo],
		 [RegistrationDate],
		 [RegistrationTime],
		 [FollowLetterNo],
		 [ToStaffer],
		 [fromstaffer],
		 [Finalized]) 
	 
	VALUES 
		( 
		 @IndicatorID,
		 @MYear,
		 @SecretariatID,
		 2,--Letter_Type
		 2,--letterformat
		 @LetterFromOrgID,
		 @ToOrgID,
		 @Signerid,
		 @ClassificationID,
		 @UrgencyID,
		 @Memo,
		 @UserID,
		 @RetroactionNo,
		 @UserMemo,
		 @RegistrationDate,
		 @RegistrationTime,
		 @FollowLetterNo,
		 @ToStaffer,
		 @fromstaffer,
		 0 --Finalized
		   )

	select @letterid=SCOPE_IDENTITY()
	select @Indicator = @IndicatorId

	exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت پيش نويس جواب نامه',@registrationdate,@UserID,0,0,0,@RecommiteId output
	update letter
	set SentLetterID=@letterid
	where letterid=@receivedLetterID
GO
/****** Object:  StoredProcedure [dbo].[web_insert_DraftLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_DraftLetter]
	(@Indicator 	[int] output,
	 @LetterId int output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],@FromOrgID 	int,
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50))

AS 
declare @ToOrgID int,@IndicatorID int ,  @MYear Int,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)

select  @ToOrgID=convert(int,@toorgtitle)
SET @fromstaffer=REPLACE(LEFT(@fromstaffer,CHARINDEX('-',@fromstaffer)),'-','')
SET @ToStaffer=REPLACE(LEFT(@ToStaffer,CHARINDEX('-',@ToStaffer)),'-','')
SET @title=@toorgtitle
set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','')

if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
BEGIN
	SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
    IF(@toorgtitle=@responsible)
        set @responsible=''
	insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
END



select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,1,4) as int)

if @FromOrgID='' 
begin
	SELECT     @FromOrgID=FromOrgID
	FROM         Users
	where id=@userid
end

SELECT     @SecretariatID=DefualtSecretariatID 
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [fromstaffer],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 2,--Letter_Type
	 2,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0 --Finalized
       )

select @letterid=SCOPE_IDENTITY()  
select @Indicator = @IndicatorID

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه پيش نويس',@registrationdate,@UserID,0,0,0,@RecommiteId output
							 
select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_insert_DraftLetter2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_DraftLetter2]
	(@Indicator 	[int] output,
	 @LetterId int output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @FromOrgID 	int,
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @SecretariatID int)

AS 
	declare @ToOrgID int,@IndicatorID int ,  @MYear int,
			@RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)
	select  @ToOrgID=convert(int,@toorgtitle)
	SET @fromstaffer=REPLACE(LEFT(@fromstaffer,CHARINDEX('-',@fromstaffer)),'-','')
	SET @ToStaffer=REPLACE(LEFT(@ToStaffer,CHARINDEX('-',@ToStaffer)),'-','')
	SET @title=@toorgtitle
	set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','')

	if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
	BEGIN
		SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
		IF(@toorgtitle=@responsible)
			set @responsible=''
		insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
	END

	select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
	   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

	set @RegistrationDate=dbo.shamsi(getdate())

	set @myear=cast (substring(@RegistrationDate,1,4) as int)

	if @FromOrgID='' 
	begin
		SELECT     @FromOrgID=FromOrgID
		FROM         Users
		where id=@userid
	end

	if(@SecretariatID=0)
	begin
		SELECT     @SecretariatID=DefualtSecretariatID 
		FROM         Users
		where id=@userid
	end

	set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

	INSERT INTO [Letter] 
		 ( [IndicatorID],
		 [MYear],
		 [SecretariatID],
		 [Letter_Type],
		 [letterformat],
		 [FromOrgID],
		 [ToOrgID],
		 [Signerid],
		 [ClassificationID],
		 [UrgencyID],
		 [Memo],
		 [UserID],
		 [RetroactionNo],
		 [UserMemo],
		 [RegistrationDate],
		 [RegistrationTime],
		 [FollowLetterNo],
		 [ToStaffer],
		 [fromstaffer],
		 [Finalized]) 
	 
	VALUES 
		( 
		 @IndicatorID,
		 @MYear,
		 @SecretariatID,
		 2,
		 2,
		 @FromOrgID,
		 @ToOrgID,
		 @Signerid,
		 @ClassificationID,
		 @UrgencyID,
		 @Memo,
		 @UserID,
		 @RetroactionNo,
		 @UserMemo,
		 @RegistrationDate,
		 @RegistrationTime,
		 @FollowLetterNo,
		 @ToStaffer,
		 @fromstaffer,
		 0)

	select @letterid=SCOPE_IDENTITY()
	select @Indicator = @IndicatorID

	exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه پيش نويس',@registrationdate,@UserID,0,0,0,@RecommiteId output
								 
	select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_insert_innerLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_innerLetter]	(@LetterID 	[int] output,@Memo 	ntext, @UserID 	[int],@FromOrgID 	int,@UserMemo [nvarchar](255),
	@html NTEXT,@RetroActionNo NVARCHAR(50),@FollowActionNo NVARCHAR(50),@SubjectID INT=NULL,@ToOrgTitle 	nvarchar(100),@ToStaffer [nvarchar](50))
AS
BEGIN 
	declare @ToOrgID int,@IndicatorID int ,  @MYear int,@SecretariatID tinyint,@RegistrationDate [char](10),	@RegistrationTime 	[varchar](5)
	select  @ToOrgID=convert(int,@toorgtitle)
	
	select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
	   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))
	set @RegistrationDate=dbo.shamsi(getdate())
	set @myear=cast (substring(@RegistrationDate,1,4) as int)
	if(@FromOrgID='')
	begin
		SELECT      @FromOrgID=FromOrgID
		FROM         Users
		where id=@userid
	end

	SELECT     @SecretariatID=DefualtSecretariatID 
	FROM         Users
	where id=@userid

	set @IndicatorID=dbo.newIndicatorid(3,1,@myear,@SecretariatID)

	INSERT INTO [Letter] ( [IndicatorID], [MYear], [SecretariatID], [Letter_Type], [letterformat], [FromOrgID], [Memo], [UserID],
		 [UserMemo], [RegistrationDate], [RegistrationTime], [Finalized], RetroactionNo, FollowLetterNo, SubjectID, ToOrgID, ToStaffer, Signerid) 
	VALUES	( @IndicatorID,@MYear,@SecretariatID,3, 1, @FromOrgID, @Memo, @UserID, @UserMemo, @RegistrationDate,
		 @RegistrationTime, 0, @RetroActionNo, @FollowActionNo, @SubjectID ,@ToOrgID, @ToStaffer, @FromOrgID)
	select @LetterID= SCOPE_IDENTITY()--max(letterid) from letter
	print @LetterID
	declare @recommiteId INT

	DECLARE @proced BIT
	IF(ISNULL(@ToOrgID,0)<>0)
	  set @proced=1;
	ELSE
	  set @proced=0  ;
 
	exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ايجاد نامه داخلي',@registrationdate,@UserID,0,@proced,0,@recommiteId OUTPUT
	IF(@ToOrgID<>0)
	  exec web_insert_NewReCommite @LetterID,3,1,@ToOrgID,'نامه داخلي',@registrationdate,@UserID,0,0,0,@recommiteId OUTPUT
  
	insert into Lettertext values(@letterid,1,'',@html);

 
	RETURN @IndicatorID
END
GO
/****** Object:  StoredProcedure [dbo].[web_insert_innerLetter2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_innerLetter2]	
	(
	@LetterID 	[int] output,
	@Memo 	ntext, 
	@UserID 	[int],
	@FromOrgID 	int,
	@UserMemo [nvarchar](255),
	@html NTEXT,
	@RetroActionNo NVARCHAR(50),
	@FollowActionNo NVARCHAR(50),
	@SubjectID INT=NULL,
	@ToOrgTitle 	nvarchar(100),
	@ToStaffer [nvarchar](50),
	@SecretariatID int)
AS
BEGIN 
	declare @ToOrgID int,@IndicatorID int ,  @MYear int,@RegistrationDate [char](10),	@RegistrationTime 	[varchar](5)
	
	select  @ToOrgID=convert(int,@toorgtitle)
	
	select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
	   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))
	set @RegistrationDate=dbo.shamsi(getdate())
	set @myear=cast (substring(@RegistrationDate,1,4) as int)
	if(@FromOrgID='')
	begin
		SELECT      @FromOrgID=FromOrgID
		FROM         Users
		where id=@userid
	end

	if(@SecretariatID=0)
	begin
	SELECT     @SecretariatID=DefualtSecretariatID 
	FROM         Users
	where id=@userid
	end
	set @IndicatorID=dbo.newIndicatorid(3,1,@myear,@SecretariatID)

	INSERT INTO [Letter] ( [IndicatorID], [MYear], [SecretariatID], [Letter_Type], [letterformat], [FromOrgID], [Memo], [UserID],
		 [UserMemo], [RegistrationDate], [RegistrationTime], [Finalized], RetroactionNo, FollowLetterNo, SubjectID, ToOrgID, ToStaffer, Signerid) 
	VALUES	( @IndicatorID,@MYear,@SecretariatID,3, 1, @FromOrgID, @Memo, @UserID, @UserMemo, @RegistrationDate,
		 @RegistrationTime, 0, @RetroActionNo, @FollowActionNo, @SubjectID ,@ToOrgID, @ToStaffer, @FromOrgID)
	select @LetterID= SCOPE_IDENTITY()--max(letterid) from letter
	print @LetterID
	declare @recommiteId INT

	DECLARE @proced BIT
	IF(ISNULL(@ToOrgID,0)<>0)
	  set @proced=1;
	ELSE
	  set @proced=0  ;
 
	exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ايجاد نامه داخلي',@registrationdate,@UserID,0,@proced,0,@recommiteId OUTPUT
	IF(@ToOrgID<>0)
	  exec web_insert_NewReCommite @LetterID,3,1,@ToOrgID,'نامه داخلي',@registrationdate,@UserID,0,0,0,@recommiteId OUTPUT
  
	insert into Lettertext values(@letterid,1,'',@html)
	RETURN @IndicatorID
END
GO
/****** Object:  StoredProcedure [dbo].[web_Insert_LetterData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[web_Insert_LetterData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint],
	 @description [nvarchar](200)='',
	 @image [image] = null,
	 @FileName [nvarchar](100),
	 @IsTemplate [bit])

AS INSERT INTO [dbo].[LetterData] 
	 (  [LetterID],
	 [PageNumber],
	 [extention],
	 [image],
	 [description],
	 [FileName],
	 [IsTemplate]) 
 
VALUES 
	( @LetterID,
	 @PageNumber,
	 @extention,
	 @image,
	 @description,
	 @FileName,
	 @IsTemplate)

set  @LetterDataID=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[web_insert_NewReCommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_NewReCommite]
	(@LetterID 	[int],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @isSecure [bit],
	 @RecommiteId [int] output)
AS
declare @OrgStaff nvarchar(50),@NewID int

select top 1 @OrgStaff=ResponsibleStaffer       

from dbo.FromOrganizations 

WHERE             id         = @OrgID
SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE LetterID=@letterID and type=@type
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
             @NewID,
             @Type,
             @ParentId,
             @OrgID,
             @Paraph,
             @RecommiteDate,
             @UserID,
             @IsCopy,
             @Proceeded,
			 @OrgStaff )


SET @RecommiteId =SCOPE_IDENTITY()

IF(@isSecure=1)
  UPDATE ReCommites
  SET 	IsSecure = 1 WHERE RecommiteID=@RecommiteId
  
select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_insert_ReceivedLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[web_insert_ReceivedLetter]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	@SubjectID INT,
	@SecretariatID int)
AS 
declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear int, 
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)
select  @ToOrgID=convert(int,@toorgtitle)
SET @fromstaffer = REPLACE(LEFT(@fromstaffer,CHARINDEX('-',@fromstaffer)),'-','')
SET @ToStaffer   = REPLACE(LEFT(@ToStaffer,CHARINDEX('-',@ToStaffer)),'-','')
       --parsa
       SET @ToOrgID   = @FromOrgID 
       SET @FromOrgID = convert(int,@toorgtitle)
      
	  SET @ToStaffer = ISNULL(( SELECT ResponsibleStaffer FROM [dbo].[FromOrganizations] WHERE ID = @ToOrgID),'')
	  SET @fromstaffer = ISNULL(( SELECT ResponsibleStaffer FROM [dbo].[FromOrganizations] WHERE ID = @FromOrgID),'')
	  --parsa
SET @title=@toorgtitle
set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','') 

if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
BEGIN
	SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
    IF(@toorgtitle=@responsible)
        set @responsible=''
	insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
END

 

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,1,4) as int)

if(@SecretariatID=0)
begin
SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=FromOrgID
FROM         Users
where id=@userid
end

set @IndicatorID=dbo.newIndicatorid(1,1,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
	 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],IncommingNO ,
     Incommingdate,CenterNo,CenterDate,NumberOfPage ,ReceiveTypeID, SubjectID) 
 
VALUES 
	( 
	 @IndicatorID,	 @MYear,	 @SecretariatID,
	 1,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 1, --Finalized
      @IncommingNO , @Incommingdate,@CenterNo,@CenterDate ,@NumberOfPage ,@ReceiveTypeID, @SubjectID)

select @letterid=SCOPE_IDENTITY()

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,0,@RecommiteId output

select @Indicator = @IndicatorID

select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_Insert_RecommiteData]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_Insert_RecommiteData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @RecommiteID INT,
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint],
	 @description [nvarchar](200)='',
	 @image [image] = null,
	 @fileName [nvarchar](100))
AS
	INSERT INTO RecommitePayvast
	(
		LetterID,
		RecommiteID,
		[Image],
		extention,
		[Description],
		PageNumber,
		FileName
	)
	VALUES
	(
		@LetterID,
		@RecommiteID,
		@image,
		@extention,
		@description,
		@PageNumber,
		@fileName
	)
	
SET @LetterDataID =SCOPE_IDENTITY()

GO
/****** Object:  StoredProcedure [dbo].[web_insert_sentLetter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_sentLetter]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	@SubjectID INT)
AS 
declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear int,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)
select  @ToOrgID=convert(int,@toorgtitle)
SET @fromstaffer=REPLACE(LEFT(@fromstaffer,CHARINDEX('-',@fromstaffer)),'-','')
SET @title=@toorgtitle
set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','')

if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
BEGIN
	SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
    IF(@toorgtitle=@responsible)
        set @responsible=''
	insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
END




select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,1,4) as int)

SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,1,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
	 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],
	 NumberOfPage ,ReceiveTypeID, SubjectID)
 
VALUES 
	( 
	 @IndicatorID,	 @MYear,	 @SecretariatID,
	 2,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 1, --Finalized
     @NumberOfPage ,@ReceiveTypeID, @SubjectID)

select @letterid=SCOPE_IDENTITY()

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,0,@RecommiteId output

select @Indicator = @IndicatorID

select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_insert_sentLetter2]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[web_insert_sentLetter2]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	@SubjectID INT,
	@SecretariatID int)
AS 
	declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear int ,
			@RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5),@responsible NVARCHAR(50),@title NVARCHAR(100)
			select  @ToOrgID=convert(int,@toorgtitle)
	SET @fromstaffer=REPLACE(LEFT(@fromstaffer,CHARINDEX('-',@fromstaffer)),'-','')
	SET @title=@toorgtitle
	set @toorgtitle=REPLACE(LEFT(@title,CHARINDEX('-',@title)),'-','')

	if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
	BEGIN
		SET @responsible=REPLACE(RIGHT(@title,LEN(@title)-CHARINDEX('-',@title)),'-','')
		IF(@toorgtitle=@responsible)
			set @responsible=''
		insert into Fromorganizations(Title,ResponsibleStaffer,parentid,isinnerorg) values(@toorgtitle,@responsible,3,0)
	END
	 

	select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
	   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

	set @RegistrationDate=dbo.shamsi(getdate())

	set @myear=cast (substring(@RegistrationDate,1,4) as int)

	SELECT     @UserFromOrgID=FromOrgID
	FROM         Users
	where id=@userid

	if(@SecretariatID=0)
	begin
		SELECT     @SecretariatID=DefualtSecretariatID 
		FROM         Users
		where id=@userid
	end

	set @IndicatorID=dbo.newIndicatorid(2,1,@myear,@SecretariatID)

	INSERT INTO [Letter] 
		 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
		 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
		 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],
		 NumberOfPage ,ReceiveTypeID, SubjectID)
	 
	VALUES 
		( 
		 @IndicatorID,	 @MYear,	 @SecretariatID,
		 2,
		 1,
		 @FromOrgID,
		 @ToOrgID,
		 @Signerid,
		 @ClassificationID,
		 @UrgencyID,
		 @Memo,
		 @UserID,
		 @RetroactionNo,
		 @UserMemo,
		 @RegistrationDate,
		 @RegistrationTime,
		 @FollowLetterNo,
		 @ToStaffer,
		 @fromstaffer,
		 1,
		 @NumberOfPage,
		 @ReceiveTypeID, 
		 @SubjectID)

	select @letterid=SCOPE_IDENTITY()
	exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,0,@RecommiteId output

	select @Indicator = @IndicatorID

	select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_ProceedRecommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[web_ProceedRecommite]
	
	(
		@recommiteId int
	)

AS
	Update Recommites Set Proceeded=1 where recommiteId=@recommiteId 
	/* SET NOCOUNT ON */



GO
/****** Object:  StoredProcedure [dbo].[web_Select_LetterReCommite]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[web_Select_LetterReCommite]


(@letterID 	[int],@type tinyint)  AS 

SELECT R.*,f.title+' - '+isnull(r.OrgStaff,'') Recommitertitle,IsInnerOrg 

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID 

where Letterid=@letterID and type=@type







GO
/****** Object:  StoredProcedure [dbo].[YDabir_Select_Contract_By_CustomerID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[YDabir_Select_Contract_By_CustomerID]
	(
@StartDate		nvarchar(10)=NULL
,@EndDate		nvarchar(10)=NULL
,@ContractTypeID	INT =0
,@MarketerID	INT=0
,@ProductId		INT=0
,@TaxPercentage FLOAT=0
,@GoodJobPercentage FLOAT=0
,@customerid	INT=0
,@UserTypeID	INT=0
, @DBName VARCHAR(100) ='CRM'

	)
	AS



DECLARE @Sql VARCHAR(4000)

SET @Sql = '
DECLARE  @TaxDate CHAR(10)
	set @TaxDate =(SELECT [VALUE] from Settings WHERE VariableName = ''TaxDate'')
	
SELECT 
Contract.*,ContractTypeTitle,ContractSubTypeTitle,ProductTitle,MarketerTitle
,(CASE WHEN (@TaxDate <> '''')AND (BeginDate >=@TaxDate) THEN 				
					Round(Amount+(
					(isnull((select TaxPercentage from '+CAST(@DBName AS VARCHAR(100))+'..TaxPerYear where [Year] = substring(BeginDate,1,4)),0)/100)*Amount
									) ,0)  
				ELSE 	Amount	END
				)AS 							
									TotalAmount
 FROM '+CAST(@DBName AS VARCHAR(100))+'..CONTRACT CONTRACT
		left join '+CAST(@DBName AS VARCHAR(100))+'..ContractType ContractType on (Contract.ContractTypeId = ContractType.ContractTypeID)
		left join '+CAST(@DBName AS VARCHAR(100))+'..ContractSubType ContractSubType on (Contract.ContractSubTypeId = ContractSubType.ContractSubTypeID)
		left join '+CAST(@DBName AS VARCHAR(100))+'..Product Product on   (Contract.ProductId = Product.ProductId)
		left join '+CAST(@DBName AS VARCHAR(100))+'..Marketer Marketer on (Contract.MarketerID = Marketer.MarketerID)

WHERE customerid='+CAST(@customerid AS VARCHAR(50))
----
----and (Contract.ContractTypeId in (select ContractTypeId from UserTypeContractType where UserTypeID ='+ CAST(@UserTypeID AS VARCHAR(50))+') or '+CAST(@UserTypeID AS VARCHAR(50))+' = 0)
----	and (
----			( BeginDate >= '''+@StartDate+''' or '''+@StartDate+''' = '''') and ( (EndDate <= '+@EndDate+') or '+@EndDate+' = '''') 
----			)'
----	
----
----	and (Contract.ContractTypeID = '+@ContractTypeID+'  or '+@ContractTypeID+'	= 0)
----	and (Contract.MarketerID				 = '+@MarketerID+'	or '+@MarketerID+'= 0)
----	and (Contract.ProductId		 = '+@ProductId+'		or '+@ProductId+'		= 0) 
----	and (isnull(TaxPercentage,0) = '+@TaxPercentage+' or '+@TaxPercentage+' = -1)
----	and (isnull(GoodJobPercentage,0) = '+@GoodJobPercentage+' or '+@GoodJobPercentage+' = -1)'



--PRINT @Sql	
EXEC (@Sql)

-----------------------

GO
/****** Object:  StoredProcedure [dbo].[YDabir_Select_customer_By_CustomerID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE PROCEDURE [dbo].[YDabir_Select_customer_By_CustomerID]
@CustomerID INT , @DBName VARCHAR(100)
AS

DECLARE @Sql VARCHAR(4000)

SET @Sql ='SELECT *, '+CAST(@DBName AS VARCHAR(100))+'.dbo.fn_ProductByCustomerID(customerid)  Products FROM '+CAST(@DBName AS VARCHAR(100))+'..Customer WHERE CustomerID='+CAST(@CustomerID AS VARCHAR(50))

EXEC (@Sql) 

GO
/****** Object:  StoredProcedure [dbo].[YDabir_Select_FollowUP_By_CustomerID]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[YDabir_Select_FollowUP_By_CustomerID]
@DoneDate	CHAR(10)=NULL
,@TodODate	CHAR(10)=NULL
,@MarketerID	INT=0
,@DoneStatusID	TINYINT=0
,@customerid INT--=21369 
,@DBName VARCHAR(100)--='CRM' 
AS

DECLARE @Sql VARCHAR(4000)

SET @Sql ='SELECT f.*,M.MarketerTitle,AT.ActionTypeTitle,DoneStatusTitle FROM '+CAST(@DBName AS VARCHAR(100))+'..Followup F'+' INNER JOIN '+CAST(@DBName AS VARCHAR(100))+'..marketer M ON M.marketerid=F.marketerid Left join '+CAST(@DBName AS VARCHAR(100))+'..DoneStatus DS on F.DoneStatusID=DS.DoneStatusID Left Join '++CAST(@DBName AS VARCHAR(100))+'..ActionType AT on F.ActionTypeID=AT.ActionTypeID '
			+'WHERE customerid='+CAST(@customerid AS VARCHAR(50))
----			+'	AND (ToDoDate = '+@TodODate+' OR '+@TodODate+' = '')
----				AND (Donedate = '+@DoneDate+' OR '+@DoneDate+' = '')
----				AND (followup.MarketerID = '+@MarketerID+' OR '+@MarketerID+' = 0)
----				AND (DoneStatusID = '+@DoneStatusID+' or '+@DoneStatusID+' = 0)
				--ORDER BY ToDoDate
				--'  

EXEC (@Sql)

GO
/****** Object:  StoredProcedure [dbo].[YDabir_Select_List_Customers]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[YDabir_Select_List_Customers]
 @DBName VARCHAR(100)
AS

DECLARE @Sql VARCHAR(4000) 

SET @Sql ='SELECT CAST(CustomerID AS VARCHAR(50)) CustomerID,replace(ISNULL(PersonTitle,''نامشخص'')+''-''+ISNULL(CompanyName,''نامشخص''),char(223),char(152)) PersonTitle ,replace(CustomerNO,char(223),char(152)) CustomerNO FROM '+CAST(@DBName AS VARCHAR(100))+'..Customer'


EXEC (@Sql)

GO
/****** Object:  StoredProcedure [dbo].[ysp_Backup]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


create procedure [dbo].[ysp_Backup](@dbname nvarchar(50),@path nvarchar(255))
 as
Exec('backup database '+@dbname+' to disk='''+@path+'''')









GO
/****** Object:  StoredProcedure [dbo].[Ysp_create_Temp_Database]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


create proc [dbo].[Ysp_create_Temp_Database](@Path nvarchar(255))
as
declare @sql nvarchar(1000)
set @sql=
'CREATE DATABASE [yeganeh_tmp_db]  ON PRIMARY (NAME = N''yeganeh_tmp_db_Data'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Data.MDF'' ,
 SIZE = 10, FILEGROWTH = 10%)
 LOG ON (NAME = N''yeganeh_tmp_db_Log'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Log.LDF'' , SIZE = 10, FILEGROWTH = 10%)'

exec master..sp_executesql  @sql




GO
/****** Object:  StoredProcedure [dbo].[ysp_DELETE_Temp_Database]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[ysp_DELETE_Temp_Database]
AS
if exists (SELECT name
FROM master.dbo.sysdatabases
WHERE name = 'yeganeh_tmp_db')
drop database [yeganeh_tmp_db]




GO
/****** Object:  StoredProcedure [dbo].[ysp_exists_Temp_Database]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[ysp_exists_Temp_Database](@exists bit output)
AS
if exists (SELECT name
FROM master.dbo.sysdatabases
WHERE name = 'yeganeh_tmp_db')
  set @exists=1  else set @exists=0


GO
/****** Object:  StoredProcedure [dbo].[ysp_shrink]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [tSQLt].[AssertEquals]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [tSQLt].[AssertEquals]
    @Expected SQL_VARIANT,
    @Actual SQL_VARIANT,
    @Message NVARCHAR(MAX) = ''
AS
BEGIN
    IF ((@Expected = @Actual) OR (@Actual IS NULL AND @Expected IS NULL))
      RETURN 0;

    DECLARE @Msg NVARCHAR(MAX);
    SELECT @Msg = 'Expected: <' + ISNULL(CAST(@Expected AS NVARCHAR(MAX)), 'NULL') + 
                  '> but was: <' + ISNULL(CAST(@Actual AS NVARCHAR(MAX)), 'NULL') + '>';
    IF((COALESCE(@Message,'') <> '') AND (@Message NOT LIKE '% ')) SET @Message = @Message + ' ';
    EXEC tSQLt.Fail @Message, @Msg;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[AssertEqualsString]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[AssertEqualsString]
    @Expected NVARCHAR(MAX),
    @Actual NVARCHAR(MAX),
    @Message NVARCHAR(MAX) = ''
AS
BEGIN
    IF ((@Expected = @Actual) OR (@Actual IS NULL AND @Expected IS NULL))
      RETURN 0;

    DECLARE @Msg NVARCHAR(MAX);
    SELECT @Msg = 'Expected: <' + ISNULL(@Expected, 'NULL') + 
                  '> but was: <' + ISNULL(@Actual, 'NULL') + '>';
    EXEC tSQLt.Fail @Message, @Msg;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[AssertEqualsTable]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*******************************************************************************************/
/*******************************************************************************************/
/*******************************************************************************************/
CREATE PROCEDURE [tSQLt].[AssertEqualsTable]
    @Expected NVARCHAR(MAX),
    @Actual NVARCHAR(MAX),
    @FailMsg NVARCHAR(MAX) = 'unexpected/missing resultset rows!'
AS
BEGIN
    DECLARE @TblMsg NVARCHAR(MAX);
    DECLARE @R INT;
    DECLARE @ErrorMessage NVARCHAR(MAX);
    DECLARE @FailureOccurred BIT;
    SET @FailureOccurred = 0;

    EXEC @FailureOccurred = tSQLt.AssertObjectExists @Actual;
    IF @FailureOccurred = 1 RETURN 1;
    EXEC @FailureOccurred = tSQLt.AssertObjectExists @Expected;
    IF @FailureOccurred = 1 RETURN 1;
        
    EXEC @R = tSQLt.TableCompare @Expected, @Actual, @TblMsg OUT;

    IF (@R <> 0)
    BEGIN
        IF ISNULL(@FailMsg,'')<>'' SET @FailMsg = @FailMsg + CHAR(13) + CHAR(10);
        EXEC tSQLt.Fail @FailMsg, @TblMsg;
    END;
    
END;
GO
/****** Object:  StoredProcedure [tSQLt].[AssertObjectExists]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[AssertObjectExists]
    @ObjectName NVARCHAR(MAX),
    @Message NVARCHAR(MAX) = ''
AS
BEGIN
    DECLARE @Msg NVARCHAR(MAX);
    IF(@ObjectName LIKE '#%')
    BEGIN
     IF OBJECT_ID('tempdb..'+@ObjectName) IS NULL
     BEGIN
         SELECT @Msg = '''' + COALESCE(@ObjectName, 'NULL') + ''' does not exist';
         EXEC tSQLt.Fail @Message, @Msg;
         RETURN 1;
     END;
    END
    ELSE
    BEGIN
     IF OBJECT_ID(@ObjectName) IS NULL
     BEGIN
         SELECT @Msg = '''' + COALESCE(@ObjectName, 'NULL') + ''' does not exist';
         EXEC tSQLt.Fail @Message, @Msg;
         RETURN 1;
     END;
    END;
    RETURN 0;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[DefaultResultFormatter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[DefaultResultFormatter]
AS
BEGIN
    DECLARE @Msg1 NVARCHAR(MAX);
    DECLARE @Msg2 NVARCHAR(MAX);
    DECLARE @Msg3 NVARCHAR(MAX);
    DECLARE @Msg4 NVARCHAR(MAX);
    DECLARE @IsSuccess INT;
    DECLARE @SuccessCnt INT;
    DECLARE @Severity INT;
    
    SELECT ROW_NUMBER() OVER(ORDER BY Result DESC, Name ASC) No,Name [Test Case Name], Result
      INTO #Tmp
      FROM tSQLt.TestResult;
    
    EXEC tSQLt.TableToText @Msg1 OUTPUT, '#Tmp', 'No';

    SELECT @Msg3 = Msg, 
           @IsSuccess = 1 - SIGN(FailCnt + ErrorCnt),
           @SuccessCnt = SuccessCnt
      FROM tSQLt.TestCaseSummary();
      
    SELECT @Severity = 16*(1-@IsSuccess);
    
    SELECT @Msg2 = REPLICATE('-',LEN(@Msg3)),
           @Msg4 = CHAR(13)+CHAR(10);
    
    
    EXEC tSQLt.Private_Print @Msg4,0;
    EXEC tSQLt.Private_Print '+----------------------+',0;
    EXEC tSQLt.Private_Print '|Test Execution Summary|',0;
    EXEC tSQLt.Private_Print '+----------------------+',0;
    EXEC tSQLt.Private_Print @Msg4,0;
    EXEC tSQLt.Private_Print @Msg1,0;
    EXEC tSQLt.Private_Print @Msg2,0;
    EXEC tSQLt.Private_Print @Msg3, @Severity;
    EXEC tSQLt.Private_Print @Msg2,0;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[DropClass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Build+
CREATE PROCEDURE [tSQLt].[DropClass]
    @ClassName NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Cmd NVARCHAR(MAX);

    WITH A(name, type) AS
           (SELECT QUOTENAME(SCHEMA_NAME(schema_id))+'.'+QUOTENAME(name) , type
              FROM sys.objects
             WHERE schema_id = SCHEMA_ID(@ClassName)
          ),
         B(no,cmd) AS
           (SELECT 0,'DROP ' +
                    CASE type WHEN 'P' THEN 'PROCEDURE'
                              WHEN 'PC' THEN 'PROCEDURE'
                              WHEN 'U' THEN 'TABLE'
                              WHEN 'IF' THEN 'FUNCTION'
                              WHEN 'TF' THEN 'FUNCTION'
                              WHEN 'FN' THEN 'FUNCTION'
                              WHEN 'V' THEN 'VIEW'
                     END +
                   ' ' + name + ';'
              FROM A
             UNION ALL
            SELECT -1,'DROP SCHEMA ' + QUOTENAME(name) +';'
              FROM sys.schemas
             WHERE schema_id = SCHEMA_ID(@ClassName)
           ),
         C(xml)AS
           (SELECT cmd [text()]
              FROM B
             ORDER BY no DESC
               FOR XML PATH(''), TYPE
           )
    SELECT @Cmd = xml.value('/', 'NVARCHAR(MAX)') 
      FROM C;

    EXEC(@Cmd);
END;
---Build-
GO
/****** Object:  StoredProcedure [tSQLt].[Fail]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Fail]
    @Message0 NVARCHAR(MAX) = '',
    @Message1 NVARCHAR(MAX) = '',
    @Message2 NVARCHAR(MAX) = '',
    @Message3 NVARCHAR(MAX) = '',
    @Message4 NVARCHAR(MAX) = '',
    @Message5 NVARCHAR(MAX) = '',
    @Message6 NVARCHAR(MAX) = '',
    @Message7 NVARCHAR(MAX) = '',
    @Message8 NVARCHAR(MAX) = '',
    @Message9 NVARCHAR(MAX) = ''
AS
BEGIN
   INSERT INTO tSQLt.TestMessage(Msg)
   SELECT COALESCE(@Message0, '!NULL!')
        + COALESCE(@Message1, '!NULL!')
        + COALESCE(@Message2, '!NULL!')
        + COALESCE(@Message3, '!NULL!')
        + COALESCE(@Message4, '!NULL!')
        + COALESCE(@Message5, '!NULL!')
        + COALESCE(@Message6, '!NULL!')
        + COALESCE(@Message7, '!NULL!')
        + COALESCE(@Message8, '!NULL!')
        + COALESCE(@Message9, '!NULL!');
        
   RAISERROR('tSQLt.Failure',16,10);
END;
GO
/****** Object:  StoredProcedure [tSQLt].[GetNewTranName]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [tSQLt].[GetNewTranName]
  @TranName CHAR(32) OUTPUT
AS
BEGIN
  SELECT @TranName = LEFT('tSQLtTran'+REPLACE(CAST(NEWID() AS NVARCHAR(60)),'-',''),32);
END;
GO
/****** Object:  StoredProcedure [tSQLt].[NewTestClass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Build+
CREATE PROCEDURE [tSQLt].[NewTestClass]
    @ClassName NVARCHAR(MAX)
AS
BEGIN
  BEGIN TRY
    EXEC tSQLt.Private_DisallowOverwritingNonTestSchema @ClassName;

    EXEC tSQLt.DropClass @ClassName = @ClassName;

    DECLARE @QuotedClassName NVARCHAR(MAX);
    SELECT @QuotedClassName = tSQLt.Private_QuoteClassNameForNewTestClass(@ClassName);

    EXEC ('CREATE SCHEMA ' + @QuotedClassName);  
    EXEC tSQLt.Private_MarkSchemaAsTestClass @QuotedClassName;
  END TRY
  BEGIN CATCH
    DECLARE @ErrMsg NVARCHAR(MAX);SET @ErrMsg = ERROR_MESSAGE() + ' (Error originated in ' + ERROR_PROCEDURE() + ')';
    DECLARE @ErrSvr INT;SET @ErrSvr = ERROR_SEVERITY();
    
    RAISERROR(@ErrMsg, @ErrSvr, 10);
  END CATCH;
END;
---Build-
GO
/****** Object:  StoredProcedure [tSQLt].[NullTestResultFormatter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[NullTestResultFormatter]
AS
BEGIN
  RETURN 0;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_CleanTestResult]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_CleanTestResult]
AS
BEGIN
   DELETE FROM tSQLt.TestResult;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_DisallowOverwritingNonTestSchema]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Build+
CREATE PROCEDURE [tSQLt].[Private_DisallowOverwritingNonTestSchema]
  @ClassName NVARCHAR(MAX)
AS
BEGIN
  IF SCHEMA_ID(@ClassName) IS NOT NULL AND tSQLt.Private_IsTestClass(@ClassName) = 0
  BEGIN
    RAISERROR('Attempted to execute tSQLt.NewTestClass on ''%s'' which is an existing schema but not a test class', 16, 10, @ClassName);
  END
END;
---Build-
GO
/****** Object:  StoredProcedure [tSQLt].[Private_MarkSchemaAsTestClass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Build+
CREATE PROCEDURE [tSQLt].[Private_MarkSchemaAsTestClass]
  @QuotedClassName NVARCHAR(MAX)
AS
BEGIN
  DECLARE @UnquotedClassName NVARCHAR(MAX);

  SELECT @UnquotedClassName = name
    FROM sys.schemas
   WHERE QUOTENAME(name) = @QuotedClassName;

  EXEC sp_addextendedproperty @name = N'tSQLt.TestClass', 
                              @value = 1,
                              @level0type = 'SCHEMA',
                              @level0name = @UnquotedClassName;
END;
---Build-
GO
/****** Object:  StoredProcedure [tSQLt].[Private_OutputTestResults]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_OutputTestResults]
  @TestResultFormatter NVARCHAR(MAX) = NULL
AS
BEGIN
    DECLARE @Formatter NVARCHAR(MAX);
    SELECT @Formatter = COALESCE(@TestResultFormatter, tSQLt.GetTestResultFormatter());
    EXEC (@Formatter);
END
GO
/****** Object:  StoredProcedure [tSQLt].[Private_Print]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_Print] 
    @Message NVARCHAR(MAX),
    @Severity INT = 0
AS 
BEGIN
    DECLARE @SPos INT;SET @SPos = 1;
    DECLARE @EPos INT;
    DECLARE @Len INT; SET @Len = LEN(@Message);
    DECLARE @SubMsg NVARCHAR(MAX);
    DECLARE @Cmd NVARCHAR(MAX);
    
    DECLARE @CleanedMessage NVARCHAR(MAX);
    SET @CleanedMessage = REPLACE(@Message,'%','%%');
    
    WHILE (@SPos <= @Len)
    BEGIN
      SET @EPos = CHARINDEX(CHAR(13)+CHAR(10),@CleanedMessage+CHAR(13)+CHAR(10),@SPos);
      SET @SubMsg = SUBSTRING(@CleanedMessage, @SPos, @EPos - @SPos);
      SET @Cmd = N'RAISERROR(@Msg,@Severity,10) WITH NOWAIT;';
      EXEC sp_executesql @Cmd, 
                         N'@Msg NVARCHAR(MAX),@Severity INT',
                         @SubMsg,
                         @Severity;
      SELECT @SPos = @EPos + 2,
             @Severity = 0; --Print only first line with high severity
    END

    RETURN 0;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_PrintXML]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_PrintXML]
    @Message XML
AS 
BEGIN
    SELECT @Message FOR XML PATH('');--Required together with ":XML ON" sqlcmd statement to allow more than 1mb to be returned
    RETURN 0;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_Run]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_Run]
   @TestName NVARCHAR(MAX),
   @TestResultFormatter NVARCHAR(MAX)
AS
BEGIN
SET NOCOUNT ON;
    DECLARE @FullName NVARCHAR(MAX);
    DECLARE @SchemaId INT;
    DECLARE @IsTestClass BIT;
    DECLARE @IsTestCase BIT;
    DECLARE @IsSchema BIT;
    DECLARE @SetUp NVARCHAR(MAX);SET @SetUp = NULL;
    
    SELECT @TestName = tSQLt.Private_GetLastTestNameIfNotProvided(@TestName);
    EXEC tSQLt.Private_SaveTestNameForSession @TestName;
    
    SELECT @SchemaId = schemaId,
           @FullName = quotedFullName,
           @IsTestClass = isTestClass,
           @IsSchema = isSchema,
           @IsTestCase = isTestCase
      FROM tSQLt.Private_ResolveName(@TestName);
     
    EXEC tSQLt.Private_CleanTestResult;

    IF @IsSchema = 1
    BEGIN
        EXEC tSQLt.Private_RunTestClass @FullName;
    END
    
    IF @IsTestCase = 1
    BEGIN
      SELECT @SetUp = tSQLt.Private_GetQuotedFullName(object_id)
        FROM sys.procedures
       WHERE schema_id = @SchemaId
         AND name = 'SetUp';

      EXEC tSQLt.Private_RunTest @FullName, @SetUp;
    END;

    EXEC tSQLt.Private_OutputTestResults @TestResultFormatter;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_RunAll]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_RunAll]
  @TestResultFormatter NVARCHAR(MAX)
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @TestClassName NVARCHAR(MAX);
  DECLARE @TestProcName NVARCHAR(MAX);

  EXEC tSQLt.Private_CleanTestResult;

  DECLARE tests CURSOR LOCAL FAST_FORWARD FOR
   SELECT Name
     FROM tSQLt.TestClasses;

  OPEN tests;
  
  FETCH NEXT FROM tests INTO @TestClassName;
  WHILE @@FETCH_STATUS = 0
  BEGIN
    EXEC tSQLt.Private_RunTestClass @TestClassName;
    
    FETCH NEXT FROM tests INTO @TestClassName;
  END;
  
  CLOSE tests;
  DEALLOCATE tests;
  
  EXEC tSQLt.Private_OutputTestResults @TestResultFormatter;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_RunTest]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_RunTest]
   @TestName NVARCHAR(MAX),
   @SetUp NVARCHAR(MAX) = NULL
AS
BEGIN
    DECLARE @Msg NVARCHAR(MAX); SET @Msg = '';
    DECLARE @Msg2 NVARCHAR(MAX); SET @Msg2 = '';
    DECLARE @Cmd NVARCHAR(MAX); SET @Cmd = '';
    DECLARE @TestClassName NVARCHAR(MAX); SET @TestClassName = '';
    DECLARE @TestProcName NVARCHAR(MAX); SET @TestProcName = '';
    DECLARE @Result NVARCHAR(MAX); SET @Result = 'Success';
    DECLARE @TranName CHAR(32); EXEC tSQLt.GetNewTranName @TranName OUT;
    DECLARE @TestResultId INT;
    DECLARE @PreExecTrancount INT;
    
    TRUNCATE TABLE tSQLt.CaptureOutputLog;

    IF EXISTS (SELECT 1 FROM sys.extended_properties WHERE name = N'SetFakeViewOnTrigger')
    BEGIN
      RAISERROR('Test system is in an invalid state. SetFakeViewOff must be called if SetFakeViewOn was called. Call SetFakeViewOff after creating all test case procedures.', 16, 10) WITH NOWAIT;
      RETURN -1;
    END;

    SELECT @Cmd = 'EXEC ' + @TestName;
    
    SELECT @TestClassName = OBJECT_SCHEMA_NAME(OBJECT_ID(@TestName)), --tSQLt.Private_GetCleanSchemaName('', @TestName),
           @TestProcName = tSQLt.Private_GetCleanObjectName(@TestName);
           
    INSERT INTO tSQLt.TestResult(Class, TestCase, TranName, Result) 
        SELECT @TestClassName, @TestProcName, @TranName, 'A severe error happened during test execution. Test did not finish.'
        OPTION(MAXDOP 1);
    SELECT @TestResultId = SCOPE_IDENTITY();

    BEGIN TRAN;
    SAVE TRAN @TranName;

    SET @PreExecTrancount = @@TRANCOUNT;
    
    TRUNCATE TABLE tSQLt.TestMessage;

    BEGIN TRY
        IF (@SetUp IS NOT NULL) EXEC @SetUp;
        EXEC (@Cmd);
    END TRY
    BEGIN CATCH
        IF ERROR_MESSAGE() LIKE '%tSQLt.Failure%'
        BEGIN
            SELECT @Msg = Msg FROM tSQLt.TestMessage;
            SET @Result = 'Failure';
        END
        ELSE
        BEGIN
            SELECT @Msg = COALESCE(ERROR_MESSAGE(), '<ERROR_MESSAGE() is NULL>') + '{' + COALESCE(ERROR_PROCEDURE(), '<ERROR_PROCEDURE() is NULL>') + ',' + COALESCE(CAST(ERROR_LINE() AS NVARCHAR), '<ERROR_LINE() is NULL>') + '}';
            SET @Result = 'Error';
        END;
    END CATCH

    BEGIN TRY
        ROLLBACK TRAN @TranName;
    END TRY
    BEGIN CATCH
        SET @PreExecTrancount = @PreExecTrancount - @@TRANCOUNT;
        IF (@@TRANCOUNT > 0) ROLLBACK;
        BEGIN TRAN;
        IF(   @Result <> 'Success'
           OR @PreExecTrancount <> 0
          )
        BEGIN
          SELECT @Msg = COALESCE(@Msg, '<NULL>') + ' (There was also a ROLLBACK ERROR --> ' + COALESCE(ERROR_MESSAGE(), '<ERROR_MESSAGE() is NULL>') + '{' + COALESCE(ERROR_PROCEDURE(), '<ERROR_PROCEDURE() is NULL>') + ',' + COALESCE(CAST(ERROR_LINE() AS NVARCHAR), '<ERROR_LINE() is NULL>') + '})';
          SET @Result = 'Error';
        END
    END CATCH    

    If(@Result <> 'Success') 
    BEGIN
      SET @Msg2 = @TestName + ' failed: ' + @Msg;
      EXEC tSQLt.Private_Print @Message = @Msg2, @Severity = 0;
    END

    IF EXISTS(SELECT 1 FROM tSQLt.TestResult WHERE Id = @TestResultId)
    BEGIN
        UPDATE tSQLt.TestResult SET
            Result = @Result,
            Msg = @Msg
         WHERE Id = @TestResultId;
    END
    ELSE
    BEGIN
        INSERT tSQLt.TestResult(Class, TestCase, TranName, Result, Msg)
        SELECT @TestClassName, 
               @TestProcName,  
               '?', 
               'Error', 
               'TestResult entry is missing; Original outcome: ' + @Result + ', ' + @Msg;
    END    
      

    COMMIT;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_RunTestClass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_RunTestClass]
  @TestClassName NVARCHAR(MAX)
AS
BEGIN
    DECLARE @TestCaseName NVARCHAR(MAX);
    DECLARE @SetUp NVARCHAR(MAX);SET @SetUp = NULL;

    SELECT @SetUp = tSQLt.Private_GetQuotedFullName(object_id)
      FROM sys.procedures
     WHERE schema_id = tSQLt.Private_GetSchemaId(@TestClassName)
       AND LOWER(name) = 'setup';

    DECLARE testCases CURSOR LOCAL FAST_FORWARD 
        FOR
     SELECT tSQLt.Private_GetQuotedFullName(object_id)
       FROM sys.procedures
      WHERE schema_id = tSQLt.Private_GetSchemaId(@TestClassName)
        AND LOWER(name) LIKE 'test%';

    OPEN testCases;
    
    FETCH NEXT FROM testCases INTO @TestCaseName;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        EXEC tSQLt.Private_RunTest @TestCaseName, @SetUp;

        FETCH NEXT FROM testCases INTO @TestCaseName;
    END;

    CLOSE testCases;
    DEALLOCATE testCases;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Private_SaveTestNameForSession]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_SaveTestNameForSession] 
  @TestName NVARCHAR(MAX)
AS
BEGIN
  DELETE FROM tSQLt.Run_LastExecution
   WHERE SessionId = @@SPID;  

  INSERT INTO tSQLt.Run_LastExecution(TestName, SessionId, LoginTime)
  SELECT TestName = @TestName,
         session_id,
         login_time
    FROM sys.dm_exec_sessions
   WHERE session_id = @@SPID;
END
GO
/****** Object:  StoredProcedure [tSQLt].[Private_ValidateProcedureCanBeUsedWithSpyProcedure]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Private_ValidateProcedureCanBeUsedWithSpyProcedure]
    @ProcedureName NVARCHAR(MAX)
AS
BEGIN
    IF NOT EXISTS(SELECT 1 FROM sys.procedures WHERE object_id = OBJECT_ID(@ProcedureName))
    BEGIN
      RAISERROR('Cannot use SpyProcedure on %s because the procedure does not exist', 16, 10, @ProcedureName) WITH NOWAIT;
    END;
    
    IF (1020 < (SELECT COUNT(*) FROM sys.parameters WHERE object_id = OBJECT_ID(@ProcedureName)))
    BEGIN
      RAISERROR('Cannot use SpyProcedure on procedure %s because it contains more than 1020 parameters', 16, 10, @ProcedureName) WITH NOWAIT;
    END;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[Run]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[Run]
   @TestName NVARCHAR(MAX) = NULL
AS
BEGIN
  DECLARE @TestResultFormatter NVARCHAR(MAX);
  SELECT @TestResultFormatter = tSQLt.GetTestResultFormatter();
  
  EXEC tSQLt.Private_Run @TestName, @TestResultFormatter;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[RunAll]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[RunAll]
AS
BEGIN
  DECLARE @TestResultFormatter NVARCHAR(MAX);
  SELECT @TestResultFormatter = tSQLt.GetTestResultFormatter();
  
  EXEC tSQLt.Private_RunAll @TestResultFormatter;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[RunTest]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[RunTest]
   @TestName NVARCHAR(MAX)
AS
BEGIN
  RAISERROR('tSQLt.RunTest has been retired. Please use tSQLt.Run instead.', 16, 10);
END;
GO
/****** Object:  StoredProcedure [tSQLt].[RunTestClass]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[RunTestClass]
   @TestClassName NVARCHAR(MAX)
AS
BEGIN
    EXEC tSQLt.Run @TestClassName;
END
GO
/****** Object:  StoredProcedure [tSQLt].[RunWithNullResults]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[RunWithNullResults]
    @TestName NVARCHAR(MAX) = NULL
AS
BEGIN
  EXEC tSQLt.Private_Run @TestName, 'tSQLt.NullTestResultFormatter';
END;
GO
/****** Object:  StoredProcedure [tSQLt].[RunWithXmlResults]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[RunWithXmlResults]
   @TestName NVARCHAR(MAX) = NULL
AS
BEGIN
  EXEC tSQLt.Private_Run @TestName, 'tSQLt.XmlResultFormatter';
END;
GO
/****** Object:  StoredProcedure [tSQLt].[SetTestResultFormatter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[SetTestResultFormatter]
    @Formatter NVARCHAR(4000)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM sys.extended_properties WHERE [name] = N'tSQLt.ResultsFormatter')
    BEGIN
        EXEC sp_dropextendedproperty @name = N'tSQLt.ResultsFormatter',
                                    @level0type = 'SCHEMA',
                                    @level0name = 'tSQLt',
                                    @level1type = 'PROCEDURE',
                                    @level1name = 'Private_OutputTestResults';
    END;

    EXEC sp_addextendedproperty @name = N'tSQLt.ResultsFormatter', 
                                @value = @Formatter,
                                @level0type = 'SCHEMA',
                                @level0name = 'tSQLt',
                                @level1type = 'PROCEDURE',
                                @level1name = 'Private_OutputTestResults';
END;
GO
/****** Object:  StoredProcedure [tSQLt].[StubRecord]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [tSQLt].[StubRecord](@SnTableName AS NVARCHAR(MAX), @BintObjId AS BIGINT)  
AS   
BEGIN  
    DECLARE @VcInsertStmt NVARCHAR(MAX),  
            @VcInsertValues NVARCHAR(MAX);  
    DECLARE @SnColumnName NVARCHAR(MAX); 
    DECLARE @SintDataType SMALLINT; 
    DECLARE @NvcFKCmd NVARCHAR(MAX);  
    DECLARE @VcFKVal NVARCHAR(MAX); 
  
    SET @VcInsertStmt = 'INSERT INTO ' + @SnTableName + ' ('  
      
    DECLARE curColumns CURSOR  
        LOCAL FAST_FORWARD  
    FOR  
    SELECT syscolumns.name,  
           syscolumns.xtype,  
           cmd.cmd  
    FROM syscolumns  
        LEFT OUTER JOIN dbo.sysconstraints ON syscolumns.id = sysconstraints.id  
                                      AND syscolumns.colid = sysconstraints.colid  
                                      AND sysconstraints.status = 1    -- Primary key constraints only  
        LEFT OUTER JOIN (select fkeyid id,fkey colid,N'select @V=cast(min('+syscolumns.name+') as NVARCHAR) from '+sysobjects.name cmd  
                        from sysforeignkeys   
                        join sysobjects on sysobjects.id=sysforeignkeys.rkeyid  
                        join syscolumns on sysobjects.id=syscolumns.id and syscolumns.colid=rkey) cmd  
            on cmd.id=syscolumns.id and cmd.colid=syscolumns.colid  
    WHERE syscolumns.id = OBJECT_ID(@SnTableName)  
      AND (syscolumns.isnullable = 0 )  
    ORDER BY ISNULL(sysconstraints.status, 9999), -- Order Primary Key constraints first  
             syscolumns.colorder  
  
    OPEN curColumns  
  
    FETCH NEXT FROM curColumns  
    INTO @SnColumnName, @SintDataType, @NvcFKCmd  
  
    -- Treat the first column retrieved differently, no commas need to be added  
    -- and it is the ObjId column  
    IF @@FETCH_STATUS = 0  
    BEGIN  
        SET @VcInsertStmt = @VcInsertStmt + @SnColumnName  
        SELECT @VcInsertValues = ')VALUES(' + ISNULL(CAST(@BintObjId AS nvarchar), 'NULL')  
  
        FETCH NEXT FROM curColumns  
        INTO @SnColumnName, @SintDataType, @NvcFKCmd  
    END  
    ELSE  
    BEGIN  
        -- No columns retrieved, we need to insert into any first column  
        SELECT @VcInsertStmt = @VcInsertStmt + syscolumns.name  
        FROM syscolumns  
        WHERE syscolumns.id = OBJECT_ID(@SnTableName)  
          AND syscolumns.colorder = 1  
  
        SELECT @VcInsertValues = ')VALUES(' + ISNULL(CAST(@BintObjId AS nvarchar), 'NULL')  
  
    END  
  
    WHILE @@FETCH_STATUS = 0  
    BEGIN  
        SET @VcInsertStmt = @VcInsertStmt + ',' + @SnColumnName  
        SET @VcFKVal=',0'  
        if @NvcFKCmd is not null  
        BEGIN  
            set @VcFKVal=null  
            exec sp_executesql @NvcFKCmd,N'@V NVARCHAR(MAX) output',@VcFKVal output  
            set @VcFKVal=isnull(','''+@VcFKVal+'''',',NULL')  
        END  
        SET @VcInsertValues = @VcInsertValues + @VcFKVal  
  
        FETCH NEXT FROM curColumns  
        INTO @SnColumnName, @SintDataType, @NvcFKCmd  
    END  
      
    CLOSE curColumns  
    DEALLOCATE curColumns  
  
    SET @VcInsertStmt = @VcInsertStmt + @VcInsertValues + ')'  
  
    IF EXISTS (SELECT 1   
               FROM syscolumns  
               WHERE status = 128   
                 AND id = OBJECT_ID(@SnTableName))  
    BEGIN  
        SET @VcInsertStmt = 'SET IDENTITY_INSERT ' + @SnTableName + ' ON ' + CHAR(10) +   
                             @VcInsertStmt + CHAR(10) +   
                             'SET IDENTITY_INSERT ' + @SnTableName + ' OFF '  
    END  
  
    EXEC (@VcInsertStmt)    -- Execute the actual INSERT statement  
  
END  

GO
/****** Object:  StoredProcedure [tSQLt].[TableCompare]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[TableCompare]
       @Expected NVARCHAR(MAX),
       @Actual NVARCHAR(MAX),
       @Txt NVARCHAR(MAX) = NULL OUTPUT
AS
BEGIN
    DECLARE @Cmd NVARCHAR(MAX);
    DECLARE @R INT;
    DECLARE @En NVARCHAR(MAX);
    DECLARE @An NVARCHAR(MAX);
    DECLARE @Rn NVARCHAR(MAX);
    SELECT @En = QUOTENAME('#TSQLt_TempTable'+CAST(NEWID() AS NVARCHAR(100))),
           @An = QUOTENAME('#TSQLt_TempTable'+CAST(NEWID() AS NVARCHAR(100))),
           @Rn = QUOTENAME('#TSQLt_TempTable'+CAST(NEWID() AS NVARCHAR(100)));

    WITH TA AS (SELECT column_id,name,is_identity
                  FROM sys.columns 
                 WHERE object_id = OBJECT_ID(@Actual)
                 UNION ALL
                SELECT column_id,name,is_identity
                  FROM tempdb.sys.columns 
                 WHERE object_id = OBJECT_ID('tempdb..'+@Actual)
               ),
         TB AS (SELECT column_id,name,is_identity
                  FROM sys.columns 
                 WHERE object_id = OBJECT_ID(@Expected)
                 UNION ALL
                SELECT column_id,name,is_identity
                  FROM tempdb.sys.columns 
                 WHERE object_id = OBJECT_ID('tempdb..'+@Expected)
               ),
         T AS (SELECT TA.column_id,TA.name,
                      CASE WHEN TA.is_identity = 1 THEN 1
                           WHEN TB.is_identity = 1 THEN 1
                           ELSE 0
                      END is_identity
                 FROM TA
                 LEFT JOIN TB
                   ON TA.column_id = TB.column_id
              ),
         A AS (SELECT column_id,
                      P0 = ', '+QUOTENAME(name)+
                           CASE WHEN is_identity = 1
                                THEN '*1'
                                ELSE ''
                           END+
                         ' AS C'+CAST(column_id AS NVARCHAR),
                      P1 = CASE WHEN column_id = 1 THEN '' ELSE ' AND ' END+
                           '((A.C'+
                           CAST(column_id AS NVARCHAR)+
                           '=E.C'+
                           CAST(column_id AS NVARCHAR)+
                           ') OR (COALESCE(A.C'+ 
                           CAST(column_id AS NVARCHAR)+
                           ',E.C'+
                           CAST(column_id AS NVARCHAR)+
                           ') IS NULL))',
                      P2 = ', COALESCE(E.C'+
                           CAST(column_id AS NVARCHAR)+
                           ',A.C'+
                           CAST(column_id AS NVARCHAR)+
                           ') AS '+
                           QUOTENAME(name)
                 FROM T),
         B(m,p) AS (SELECT 0,0 UNION ALL 
                    SELECT 1,0 UNION ALL 
                    SELECT 2,1 UNION ALL 
                    SELECT 3,2),
         C(n,cmd) AS (SELECT 100+2000*B.m+column_id,
                             CASE B.p WHEN 0 THEN P0
                                      WHEN 1 THEN P1
                                      WHEN 2 THEN P2
                             END
                        FROM A
                       CROSS JOIN B),
         D(n,cmd) AS (SELECT * FROM C
                      UNION ALL
                      SELECT 1,'SELECT IDENTITY(int,1,1) no'
                      UNION ALL
                      SELECT 2001,' INTO '+@An+' FROM '+@Actual+';SELECT IDENTITY(int,1,1) no'
                      UNION ALL
                      SELECT 4001,' INTO '+@En+' FROM '+
                                  @Expected+';'+
                                  'WITH Match AS (SELECT A.no Ano, E.no Eno FROM '+@An+' A FULL OUTER JOIN '+@En+' E ON '
                      UNION ALL
                      SELECT 6001,'),MatchWithRowNo AS (SELECT Ano, Eno, r1=ROW_NUMBER() OVER(PARTITION BY Ano ORDER BY Eno), r2=ROW_NUMBER() OVER(PARTITION BY Eno ORDER BY Ano) FROM Match)'+
                                  ',CleanMatch AS (SELECT Ano,Eno FROM MatchWithRowNo WHERE r1 = r2)'+
                                  'SELECT CASE WHEN A.no IS NULL THEN ''<'' WHEN E.no IS NULL THEN ''>'' ELSE ''='' END AS _m_'
                      UNION ALL
                      SELECT 8001,' INTO '+@Rn+' FROM CleanMatch FULL JOIN '+@En+' E ON E.no = CleanMatch.Eno FULL JOIN '+@An+' A ON A.no = CleanMatch.Ano;'+
                                  ' SELECT @R = CASE WHEN EXISTS(SELECT 1 FROM '+@Rn+' WHERE _m_<>''='') THEN -1 ELSE 0 END;'+
--' SELECT * FROM '+@Rn+';'+
                                  ' EXEC tSQLt.TableToText @Txt OUTPUT,'''+@Rn+''',''_m_'';'+
--' PRINT @Txt;'+
                                  ' DROP TABLE '+@An+'; DROP TABLE '+@En+'; DROP TABLE '+@Rn+';'
                     ),
         E(xml) AS (SELECT cmd AS [data()]  FROM D ORDER BY n FOR XML PATH(''), TYPE)
    select @Cmd = xml.value( '/', 'NVARCHAR(max)' ) from E;

--    PRINT @Cmd;
    EXEC sp_executesql @Cmd, N'@R INT OUTPUT, @Txt NVARCHAR(MAX) OUTPUT', @R OUTPUT, @Txt OUTPUT;;

--    PRINT 'Outcome:'+CAST(@R AS NVARCHAR);
--    PRINT @Txt; 
    RETURN @R;
END;
GO
/****** Object:  StoredProcedure [tSQLt].[XmlResultFormatter]    Script Date: 18/07/1403 05:28:04 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [tSQLt].[XmlResultFormatter]
AS
BEGIN
    DECLARE @XmlOutput XML;

    SELECT @XmlOutput = (
      SELECT Tag, Parent, [testsuites!1!hide!hide], [testsuite!2!name], [testsuite!2!tests], [testsuite!2!errors], [testsuite!2!failures], [testcase!3!classname], [testcase!3!name], [failure!4!message]  FROM (
        SELECT 1 AS Tag,
               NULL AS Parent,
               'root' AS [testsuites!1!hide!hide],
               NULL AS [testsuite!2!name],
               NULL AS [testsuite!2!tests],
               NULL AS [testsuite!2!errors],
               NULL AS [testsuite!2!failures],
               NULL AS [testcase!3!classname],
               NULL AS [testcase!3!name],
               NULL AS [failure!4!message]
        UNION ALL
        SELECT 2 AS Tag, 
               1 AS Parent,
               'root',
               Class AS [testsuite!2!name],
               COUNT(1) AS [testsuite!2!tests],
               SUM(CASE Result WHEN 'Error' THEN 1 ELSE 0 END) AS [testsuite!2!errors],
               SUM(CASE Result WHEN 'Failure' THEN 1 ELSE 0 END) AS [testsuite!2!failures],
               NULL AS [testcase!3!classname],
               NULL AS [testcase!3!name],
               NULL AS [failure!4!message]
          FROM tSQLt.TestResult
        GROUP BY Class
        UNION ALL
        SELECT 3 AS Tag,
               2 AS Parent,
               'root',
               Class,
               NULL,
               NULL,
               NULL,
               Class,
               TestCase,
               NULL
          FROM tSQLt.TestResult
        UNION ALL
        SELECT 4 AS Tag,
               3 AS Parent,
               'root',
               Class,
               NULL,
               NULL,
               NULL,
               Class,
               TestCase,
               Msg
          FROM tSQLt.TestResult
         WHERE Result IN ('Failure', 'Error')) AS X
       ORDER BY [testsuite!2!name], [testcase!3!name], Tag
       FOR XML EXPLICIT
       );

    EXEC tSQLt.Private_PrintXML @XmlOutput;
END;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FromOrganizations', @level2type=N'COLUMN',@level2name=N'ResponsibleStaffer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'SecretariatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'Letter_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'letterformat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'ClassificationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'UrgencyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'ReceiveTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'SendStatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'LatestActionTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'ActionTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'EmailNuFromDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'پیرو' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'PEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'عطف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'ATF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'شماره نامه پیرو' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'PEY2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'شماره نامه عطف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Letter', @level2type=N'COLUMN',@level2name=N'ATF2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'??? ?????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReCommites', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نام اختصاصی' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbDbName', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نام سرور' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbDbName', @level2type=N'COLUMN',@level2name=N'ServerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نام دیتابیس' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbDbName', @level2type=N'COLUMN',@level2name=N'DBName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'??O ?C??C??' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'FromOrgID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IE??IC?? ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'DefualtSecretariatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A?C ?? ?C???I IE??IC?? C?E ?C ?C?ECE? ICOE? ECOI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IsSecretariantStaffer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مجوز حذف فرم
-0 عدم مجوز
- 1 مجوز' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTable', @level2type=N'COLUMN',@level2name=N'HasDelete'
GO
USE [master]
GO
ALTER DATABASE [ydabir] SET  READ_WRITE 
GO
