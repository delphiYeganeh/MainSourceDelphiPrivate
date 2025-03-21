USE [master]
GO
/****** Object:  Database [YLoanCash_null]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE DATABASE [YLoanCash_null]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LoanCash_Data', FILENAME = N'F:\Backups\DataBase\Cash\DataFile\YLoancash.mdf' , SIZE = 7424KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'LoanCash_Log', FILENAME = N'F:\Backups\DataBase\Cash\DataFile\YLoanCash_null_log.ldf' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [YLoanCash_null] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YLoanCash_null].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [YLoanCash_null] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YLoanCash_null] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YLoanCash_null] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YLoanCash_null] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YLoanCash_null] SET ARITHABORT OFF 
GO
ALTER DATABASE [YLoanCash_null] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YLoanCash_null] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [YLoanCash_null] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YLoanCash_null] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YLoanCash_null] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YLoanCash_null] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YLoanCash_null] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YLoanCash_null] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YLoanCash_null] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YLoanCash_null] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YLoanCash_null] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YLoanCash_null] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YLoanCash_null] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YLoanCash_null] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YLoanCash_null] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YLoanCash_null] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YLoanCash_null] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YLoanCash_null] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YLoanCash_null] SET  MULTI_USER 
GO
ALTER DATABASE [YLoanCash_null] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [YLoanCash_null] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YLoanCash_null] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YLoanCash_null] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [YLoanCash_null] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'YLoanCash_null', N'ON'
GO
ALTER DATABASE [YLoanCash_null] SET QUERY_STORE = OFF
GO
USE [YLoanCash_null]
GO
/****** Object:  User [YeganehCorporate_Cash2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE USER [YeganehCorporate_Cash2] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCorporate_Cash2]
GO
/****** Object:  User [YeganehCompany_Cash2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE USER [YeganehCompany_Cash2] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCompany_Cash2]
GO
/****** Object:  User [YeganehCompany_Cash]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE USER [YeganehCompany_Cash] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[YeganehCompany_Cash]
GO
/****** Object:  User [Y_Cash_App]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE USER [Y_Cash_App] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Y_Cash_App]
GO
/****** Object:  User [WebLogin]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE USER [WebLogin] FOR LOGIN [WebLogin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCorporate_Cash2]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCompany_Cash2]
GO
ALTER ROLE [db_owner] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [YeganehCompany_Cash]
GO
ALTER ROLE [db_owner] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Y_Cash_App]
GO
ALTER ROLE [db_owner] ADD MEMBER [WebLogin]
GO
/****** Object:  Schema [Y_Cash_App]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE SCHEMA [Y_Cash_App]
GO
/****** Object:  Schema [YeganehCompany_Cash]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE SCHEMA [YeganehCompany_Cash]
GO
/****** Object:  Schema [YeganehCompany_Cash2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE SCHEMA [YeganehCompany_Cash2]
GO
/****** Object:  Schema [YeganehCorporate_Cash2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE SCHEMA [YeganehCorporate_Cash2]
GO
/****** Object:  UserDefinedFunction [dbo].[AddShamsi]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE Function [dbo].[AddShamsi](@Count INT)
	RETURNS VARCHAR(10)
	AS
	BEGIN
		DECLARE   @Date CHAR(10)='',
		@x date
		SELECT @x = DATEADD(DAY,@Count,GETDATE())
		SELECT @Date = dbo.Shamsi(@x)
		RETURN @Date 
	END
GO
/****** Object:  UserDefinedFunction [dbo].[AvgBalance]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[AvgBalance](@AccountID int,@dateFrom char(10),@dateTo char(10))
RETURNS bigint AS
BEGIN
declare @allAmount bigint,@allDays int ,@res bigint

set @AllDays=dbo.shamsidatediff(@dateFrom,@dateto)

if @AllDays=0 return(0)
declare @p table(id int identity(1,1),Days int,Amount BIGINT)

insert into @p(Days,Amount) values (0,dbo.exist(@accountid,@dateFrom))

insert into @p(Days,Amount)
SELECT   distinct  dbo.shamsidatediff(@datefrom,date) ,dbo.Exist(@AccountID,P.Date)
FROM         Payment p
WHERE     @AccountID in (DebtorAccountID,CreditorAccountID)  and
           paytypeid  in (1,2) and
                date  > @dateFrom  and date<@dateTo

insert into @p(Days,Amount) values (@allDays,dbo.exist(@AccountID,@dateTo))

select @res=sum((p2.days-p1.days)*p1.amount)
from @p p1
inner join @p p2 on p2.id=p1.id+1


return(@res/@AllDays)
end


GO
/****** Object:  UserDefinedFunction [dbo].[Balance]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Balance] ( @AccountID INT ,
                                  @dateTo CHAR(10) )
RETURNS BIGINT
AS
BEGIN    
    DECLARE @SumAmount BIGINT       
    IF @AccountID = 4
       BEGIN
             SET @SumAmount = DBO.F_Soodvam('1300/01/01' , @dateTo)
       END
    ELSE
       BEGIN
             SELECT @SumAmount = SUM(CASE WHEN @AccountID = DebtorAccountID THEN -Amount
                                          ELSE +Amount
                                     END)
             FROM   Payment
             WHERE  Date <= @dateTo AND ( @AccountID IN ( DebtorAccountID , CreditorAccountID ) )--And PayTypeId IN (1,2,3,4,8)    
       END
       
    SET @SumAmount = ISNULL(@SumAmount , 0)    
         
    RETURN @SumAmount    
END
GO
/****** Object:  UserDefinedFunction [dbo].[Balance_ByPayTypeID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Balance_ByPayTypeID]
(
@AccountID int,@payTypeid tinyint,@dateTo char(10)
)
RETURNS bigint
AS
BEGIN
	Declare @SumAmount bigint

 	Select @SumAmount=sum(Case When @AccountID=DebtorAccountID   Then -Amount Else +Amount End)
	From Payment
	Where   Date <= @DateTo  AND 
              (@AccountID in (DebtorAccountID,CreditorAccountID,relatedid)) AND   
                PaytyPeid=@payTypeid   


RETURN @SumAmount

END











GO
/****** Object:  UserDefinedFunction [dbo].[Balance_ByPayTypeID2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create FUNCTION [dbo].[Balance_ByPayTypeID2]
(
@AccountID int,@payTypeid tinyint,@dateTo char(10),@dateFrom char(10)
)
RETURNS bigint
AS
BEGIN  --By Hadi Mohamed --92/03/25
	Declare @SumAmount bigint

 	Select @SumAmount=sum(Case When @AccountID=DebtorAccountID   Then -Amount Else +Amount End)
	From Payment
	Where   Date <= @DateTo  AND Date >= @DateFrom  AND
              (@AccountID in (DebtorAccountID,CreditorAccountID,relatedid)) AND   
                PaytyPeid=@payTypeid   


RETURN @SumAmount

END

GO
/****** Object:  UserDefinedFunction [dbo].[Calc_MonthlyAmerce]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


Create function [dbo].[Calc_MonthlyAmerce](@Maturedate Char(10) , @Amount int , @Today char(10))  
Returns int  
Begin  
  
--declare @Maturedate Char(10) , @Amount int , @Today char(10)
declare @MonthlyTolerance int , @MonthlyFromFirst bit , @MonthlyAmerce float(8) , @IsMonthlyAmercePercent Bit , @MonthlyAmercePercent float(8)  

/*set  @Maturedate='1391/12/07' 
set  @Amount=50000
set  @Today='1390/10/07' */
Select @MonthlyTolerance = Value from Setting where userid=-1 and variablename='MonthlyTolerance'    /*تعداد روز*/  
Select @IsMonthlyAmercePercent = value from Setting where userid=-1 and variablename='IsMonthlyAmercePercent'   /*جريمه به درصد يا مبلغ*/  
Select @MonthlyAmerce = Value from Setting where userid=-1 and variablename='MonthlyAmerce'  /*مبلغ جريمه*/  
Select @MonthlyAmercePercent = Value from Setting where userid=-1 and variablename='MonthlyAmercePercent'  /*درصد جريمه*/  
Select @MonthlyFromFirst = Case value when 0 then 0 else 1 end  from Setting where userid=-1 and variablename='MonthlyFromFirst'   /*محاسبه جريمه از ابتدا*/  
  
if @IsMonthlyAmercePercent = 1 /*محاسبه جريمه براساس درصد*/  
   Set @MonthlyAmerce = (@MonthlyAmercePercent / 100.0) * @Amount   
  
return @MonthlyAmerce * (Case when dbo.shamsidatediff(@Maturedate,@Today) > @MonthlyTolerance then    
                         Case when @MonthlyFromFirst=1 then dbo.shamsidatediff(@Maturedate,@today)    
                         else dbo.shamsidatediff(@Maturedate,@today) - @MonthlyTolerance end else 0 end)     
   
  
End 
GO
/****** Object:  UserDefinedFunction [dbo].[Calc_PartAmerce]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
-----------------------------------------------------------------
CREATE function [dbo].[Calc_PartAmerce](@Maturedate Char(10) , @Amount FLOAT(8) , @Today char(10))  
Returns int  
Begin  
  
declare @PartTolerance int , @PartFromFirst bit , @PartAmerce int , @IsPartAmercePercent Bit , @PartAmercePercent FLOAT(8)  
  
Select @PartTolerance = Value from Setting where userid=-1 and variablename='PartTolerance'    /*تعداد روز*/  
Select @IsPartAmercePercent = value from Setting where userid=-1 and variablename='IsPartAmercePercent'   /*جريمه به درصد يا مبلغ*/  
Select @PartAmerce = Value from Setting where userid=-1 and variablename='PartAmerce'  /*مبلغ جريمه*/  
Select @PartAmercePercent = Value from Setting where userid=-1 and variablename='PartAmercePercent'  /*درصد جريمه*/  
Select @PartFromFirst = Case value when 0 then 0 else 1 end  from Setting where userid=-1 and variablename='PartFromFirst'   /*محاسبه جريمه از ابتدا*/  
  
if @IsPartAmercePercent = 1 /*محاسبه جريمه براساس درصد*/  
   Set @PartAmerce = (@PartAmercePercent / 100.0) * @Amount   
  
Return @PartAmerce * (Case when dbo.shamsidatediff(@Maturedate,@Today) > @PartTolerance then    
                      Case when @PartFromFirst=1 then dbo.shamsidatediff(@Maturedate,@today)    
                      else dbo.shamsidatediff(@Maturedate,@today)-@PartTolerance   
                      end else 0 end)     
end  
  
GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Benefit]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Benefit](@AccountID INT, @Year CHAR(4))
RETURNS BIGINT
AS
BEGIN
	DECLARE @BenefitCalcType BIT
	select @BenefitCalcType = VALUE FROM Setting s WHERE s.VariableName = 'BenefitCalcType'
	SET @BenefitCalcType = ISNULL(@BenefitCalcType, 0)
	
	DECLARE mycur CURSOR FOR
	Select * From
		(SELECT @Year+'/01/01' AS [Date], case when @BenefitCalcType=1 then dbo.TotalExist(@AccountID, CAST(CAST(@Year AS CHAR(4))-1 as CHAR(4))+'/12/29', 0)
												ELSE dbo.Exist(@AccountID, CAST(CAST(@Year AS CHAR(4))-1 as CHAR(4))+'/12/29') end AS Amount
		UNION 
		SELECT p.[Date], p.amount*(CASE WHEN p.CreditorAccountID= @AccountID THEN 1 ELSE -1 END) AS Amount
		FROM Payment p 
		WHERE p.CreditorAccountID= @AccountID OR p.DebtorAccountID= @AccountID
		GROUP BY p.[Date], p.Amount, p.CreditorAccountID, p.DebtorAccountID
		HAVING 
		dbo.ShamsiToInt(p.Date) >= dbo.ShamsiToInt(@Year+'/01/01') AND 
		dbo.ShamsiToInt(p.Date) <= dbo.ShamsiToInt(@Year+'/12/29')) A
		--ORDER BY p.[Date]
		Order By A.[Date]
		
	DECLARE @Date VARCHAR(10), @Amount FLOAT
	OPEN mycur

	DECLARE @FinalResult real
	SET @FinalResult= 0

	FETCH NEXT FROM mycur INTO @DATE, @Amount
	WHILE @@FETCH_STATUS=0
	BEGIN	
		DECLARE @tmpDate VARCHAR(10), @tmpAmount FLOAT
		FETCH NEXT FROM mycur INTO @tmpDate, @tmpAmount
		IF @@FETCH_STATUS=0
		BEGIN
			SET @FinalResult= @FinalResult+ ((case when @BenefitCalcType = 1 THEN dbo.TotalExist(@AccountID, @Date, 0)ELSE dbo.Exist(@AccountID, @Date) END)* dbo.ShamsiDateDiff(@DATE, @tmpDate)/365)
			SET @Amount= @tmpAmount;
			SET @DATE= @tmpDate;
		END
		ELSE
		BEGIN
			SET @FinalResult= @FinalResult+((case when @BenefitCalcType = 1 THEN dbo.TotalExist(@AccountID, @Date, 0) ELSE dbo.Exist(@AccountID, @Date) end)*dbo.ShamsiDateDiff(@DATE, @Year+'/12/29')/365)
		END
		
		
		IF @FinalResult<0
		   set @FinalResult= 0;
	END
	CLOSE mycur
	DEALLOCATE mycur
	
	RETURN @FinalResult;	
END
GO
/****** Object:  UserDefinedFunction [dbo].[d]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create function [dbo].[d](@d varchar(10))
returns varchar(10)
as
begin

return('13'+substring(@d,7,2)+substring(@d,3,4)+substring(@d,1,2))
end

GO
/****** Object:  UserDefinedFunction [dbo].[delphiType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[delphiType] (@typeName varchar(100))
RETURNS varchar(20) AS
BEGIN
Return
(case
when  @typeName in ('int','bigint','smallint') then 'integer;'
when  @typeName in ('tinyint') then 'byte;'
when  @typeName in ('bit') then 'boolean;'
when  @typeName in ('varchar','char','sysname','text','shamsiDate','tel','path','time') then 'string;'
when  @typeName in ('nvarchar','ntext') then 'widestring;'
when  @typeName in ('sql_variant') then 'variant;'
when  @typeName in ('float') then 'real;'  end)
END



GO
/****** Object:  UserDefinedFunction [dbo].[Exist]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--===============================================================================================
--===============================================================================================
CREATE FUNCTION [dbo].[Exist](@AccountID int,@dateTo char(10))      
RETURNS bigint      
AS      
BEGIN   
Declare @SumAmount bigint      
  
IF @AccountID=4    
BEGIN  
 select @SumAmount=DBO.F_SOODVAM('1300/01/01',@dateTo)--sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)      
 --from Payment      
 --where Date <=@dateTo  AND (4 in (DebtorAccountID,CreditorAccountID) OR PAYTYPEID=7)      
 --and paytypeid in (1,2,8)      
 set @SumAmount=isnull(@SumAmount,0)      
END  
ELSE  
BEGIN  
 select @SumAmount=sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)      
 from Payment      
 where Date <=@dateTo  AND (@AccountID in (DebtorAccountID,CreditorAccountID))      
 and paytypeid in (1,2,8)      
 set @SumAmount=isnull(@SumAmount,0)
 
 /*DECLARE @Credit bigint
select @Credit =sum(Amount)      
 from Payment 
 WHERE CreditorAccountID= @AccountID AND 
		Date<=@DateTo and paytypeid in (1,2,8)
		
DECLARE @Debt bigint
select @Debt =sum(Amount)      
 from Payment 
 WHERE debtorAccountID= @AccountID AND 
		Date<=@DateTo and paytypeid in (1,2,8)
		
SET @SumAmount= isnull(@Credit, 0)- isnull(@Debt, 0) */    
END     
      
RETURN @SumAmount      
      
END      
GO
/****** Object:  UserDefinedFunction [dbo].[F_Soodvam]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
  
CREATE  function  [dbo].[F_Soodvam] (@DateFrom char(10) , @DateTo char(10))    
Returns Bigint    
begin    
    
DECLARE @sumAmount Bigint        
      
--declare  @DateFrom char(10) , @DateTo char(10) ,@sumAmount Bigint        
--set @DateFrom='1380/01/01'       
--set @DateTo ='1399/01/01'      
     
declare @p table(AccountId INT ,Amount BIGINT,status SMALLINT ,Date NVARCHAR(10),PAYTYPEID INT)       
      
INSERT INTO @p      
Select           
         CreditorAccountId   AccountId,              
        Amount,              
        Cast(-1 as smallint) status,              
        Date,    
        PAYTYPEID                
From Payment  Inner Join               
     Account ac1 on creditorAccountId=ac1.AccountId                

WheRE CreditorAccountId=4   and  Date BETWEEN  @DateFrom and @DateTo --AND PAYTYPEID=7    --and CreditorAccountId<>4       
    
--Where AccountTypeId>1   and  Date BETWEEN  @DateFrom and @DateTo --AND PAYTYPEID=7    --and CreditorAccountId<>4           
INSERT INTO @p      
Select           
         CreditorAccountId   AccountId,              
        Amount,              
        Cast(-1 as smallint) status,              
        Date,    
        PAYTYPEID                
From Payment  Inner Join               
     Account ac1 on creditorAccountId=ac1.AccountId                

WheRE AccountTypeId=1   and  Date BETWEEN  @DateFrom and @DateTo AND PAYTYPEID=7    --and CreditorAccountId<>4     
             
             
------------DB              
Insert InTo @p                
Select  DebtorAccountId,              
        Amount,              
        1 status,              
        Date  ,    
        PAYTYPEID              
From Payment  Inner Join             
     Account AC2 on DebtorAccountId=ac2.AccountId                
WheRE DebtorAccountId=4   and  Date BETWEEN  @DateFrom and @DateTo --AND PAYTYPEID=7 --and CreditorAccountId<>4    

Insert InTo @p                
Select  DebtorAccountId,              
        Amount,              
        1 status,              
        Date  ,    
        PAYTYPEID              
From Payment  Inner Join             
     Account AC2 on DebtorAccountId=ac2.AccountId                
Where AccountTypeId=1  and  Date BETWEEN  @DateFrom and @DateTo AND PAYTYPEID=7        
      
                
----------------------------------------------------------------------------------------    
--Insert InTo @p      
--Select CreditorAccountId   AccountId,              
--        Amount,              
--        Cast(1 as smallint) status,              
--        Date,    
--        PAYTYPEID         
--From Payment  Inner Join               
--     Account ac1 on creditorAccountId=ac1.AccountId                
--Where AccountTypeId=1  and  PAYTYPEID=7        and  Date BETWEEN  @DateFrom and @DateTo --and CreditorAccountId<>4           
                
             
--------------DB              
--Insert InTo @p                
--Select  DebtorAccountId,              
--        Amount,              
--        -1 status,              
--        Date  ,    
--        PAYTYPEID         
--From Payment  Inner Join             
--     Account AC2 on DebtorAccountId=ac2.AccountId                
--Where AccountTypeId=1  and  PAYTYPEID=7   and  Date BETWEEN  @DateFrom and @DateTo   
      
       
------------ ايجاد ستون وسطي تراز و ريختن در جدول             
--FROM P TO P1       
declare @p1 table(ACCOUNTID INT ,PAYTYPEID INT ,C3 BIGINT,C4 BIGINT)       
INSERT INTO @p1               
Select AccountId,              
       PAYTYPEID,    
       Sum(Case When status=-1 Then amount Else 0      End)C3,              
       Sum(Case When status=-1 Then 0      Else Amount End)C4             
From @p          
Where Date BETWEEN  @DateFrom and @DateTo  AND (AccountId=4  OR PAYTYPEID=7 )
Group by AccountId ,PAYTYPEID              
      
      
SELECT @sumAmount=isnull((select SUM(C3)-SUM(C4) FROM @p1 ),0)       
      
    
      
Return @SumAmount      
end

GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetLoanInterest]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[FN_GetLoanInterest](@PaymentID INT) RETURNS FLOAT
AS
BEGIN
DECLARE @LoanID INT
DECLARE @Result FLOAT

SELECT @LoanID = LoanID FROM Loan l WHERE l.PaymentID = @PaymentID

SELECT @Result = SUM(InterestAmount) 
FROM ForcePayment fp 
WHERE fp.Paid = 0 and fp.ParentID = @LoanID AND InterestAmount<>0

RETURN (ISNULL(@Result , 0))	
END

GO
/****** Object:  UserDefinedFunction [dbo].[FnYSrtToInt]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FnYSrtToInt]  ( @AccountNo NVARCHAR(100)  )    
RETURNS BIGINT    
AS    
BEGIN    
 DECLARE @ResultString NVARCHAR(100)
 SET @ResultString = '' 
 WHILE (LEN(@AccountNo) <> 0)  
 BEGIN
     IF SUBSTRING(@AccountNo,1,1)IN ('0','1','2','3','4','5','6','7','8','9')
         SET @ResultString = @ResultString + SUBSTRING(@AccountNo,1,1)
     SET @AccountNo = SUBSTRING(@AccountNo,2,LEN(@AccountNo)-1) 
 END
 RETURN CONVERT(BIGINT,@ResultString)
END
GO
/****** Object:  UserDefinedFunction [dbo].[Get_AccountFullName]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[Get_AccountFullName](@AccountID int)
returns char(100)
begin


declare @FullName char(100)

SELECT  @FullName= IsNull(Lastname,Account.AccountTitle)+isnull(' - '+FirstName,'')  
FROM     Account LEFT OUTER JOIN
         Contact ON Account.ContactID = Contact.ContactID
Where  Account.AccountID=@AccountID
 


return @FullName
end



GO
/****** Object:  UserDefinedFunction [dbo].[Get_LastBeforLastLoanAmount_F]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Get_LastBeforLastLoanAmount_F] (@AccountID int)
returns BIGINT  
begin  

DECLARE @BeforLastLoanNotPaiedAmount BIGINT  ,@BeforLastLoanNotPaiedLoanNo INT  
DECLARE @LatestLoan TABLE(LoanID INT,LoanNO VARCHAR(10),AMOUNT BIGINT)  

INSERT INTO @LatestLoan   
	SELECT DISTINCT TOP 2 Loan.LoanID, Loan.LoanNO,Loan.Amount  
		FROM       Loan         INNER JOIN  
			    ForcePayment ON Loan.LoanID = ForcePayment.ParentID  
		WHERE     (Loan.AccountID = @AccountID ) AND   
				(ForcePayment.ForceTypeID = 1) AND   
				(ForcePayment.Paid = 0)  
		ORDER BY   Loan.LoanID    

DECLARE @BeforLastLoanID INT  
SET @BeforLastLoanID = (SELECT TOP 1 LoanID FROM @LatestLoan ORDER BY LoanID)                                        
  
DECLARE @LastLoanID INT  
SET @LastLoanID = (SELECT TOP 1 LoanID FROM @LatestLoan ORDER BY LoanID DESC)    
          
IF @LastLoanID <> @BeforLastLoanID  
BEGIN  
	SET @BeforLastLoanNotPaiedAmount = (SELECT Sum(Amount) FROM  @LatestLoan Where LoanId=@BeforLastLoanID GROUP BY LoanID)  
	SET @BeforLastLoanNotPaiedLoanNo = (SELECT LOANNO FROM LOAN WHERE LOANID=@BeforLastLoanID)                                        
END  
ELSE  
BEGIN  
	SET @BeforLastLoanNotPaiedAmount=0   
	SET @BeforLastLoanNotPaiedLoanNo=0                          
END  

Return @BeforLastLoanNotPaiedAmount  
END  
  
GO
/****** Object:  UserDefinedFunction [dbo].[Get_LastBeforLastLoanNo_F]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Get_LastBeforLastLoanNo_F] (@AccountID int)  
Returns INT    
BEGIN    
        DECLARE @BeforLastLoanNotPaiedAmount BIGINT  ,@BeforLastLoanNotPaiedLoanNo INT    
        DECLARE @LatestLoan TABLE(LoanID INT,LoanNO VARCHAR(10),AMOUNT BIGINT)    
         
        INSERT INTO @LatestLoan     
        SELECT DISTINCT TOP 2 Loan.LoanID, Loan.LoanNO,Loan.Amount    
        FROM   Loan         INNER JOIN    
               ForcePayment ON Loan.LoanID = ForcePayment.ParentID    
        WHERE (Loan.AccountID = @AccountID ) AND     
              (ForcePayment.ForceTypeID = 1) AND     
              (ForcePayment.Paid = 0)    
        ORDER BY   Loan.LoanID      

 DECLARE  @BeforLastLoanID INT    
 SET @BeforLastLoanID =( SELECT  TOP 1    LoanID      
                         FROM     @LatestLoan    
                         ORDER BY LoanID)                                          
    
 DECLARE  @LastLoanID INT    
 SET @LastLoanID=      ( SELECT TOP 1  LoanID      
                         FROM     @LatestLoan    
                  --       WHERE    AccountID=@AccountID    
                         ORDER BY LoanID DESC)      
    
            
 IF @LastLoanID<> @BeforLastLoanID    
 BEGIN    

   SET @BeforLastLoanNotPaiedLoanNo=(SELECT LOANNO FROM LOAN WHERE LOANID=@BeforLastLoanID)                                          
 END    
 ELSE    
 BEGIN    
 --          SET      @BeforLastLoanNotPaiedAmount=0     
           SET      @BeforLastLoanNotPaiedLoanNo=0                            
 END    
    
--SELECT @BeforLastLoanNotPaiedAmount    
Return  @BeforLastLoanNotPaiedLoanNo    
    
END    
    
GO
/****** Object:  UserDefinedFunction [dbo].[Get_LastLoanAmount]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Get_LastLoanAmount] (@AccountID int)
RETURNS  BIGINT
  
BEGIN 

DECLARE  @LoanAmount BIGINT 

Set @LoanAmount= ( SELECT  TOP 1    Loan.Amount
                                   FROM         Loan  
                                   WHERE  /*   ((SELECT     SUM(amount)
                                                        FROM          ForcePayment
                                                        WHERE       ForceTypeID = 1 AND 
                                                                             ParentID = Loan.LoanID AND 
                                                                             paid = 0) <> 0)
    AND*/  AccountID=@AccountID

ORDER BY Loan.LoanID DESC)


Return @LoanAmount

END




GO
/****** Object:  UserDefinedFunction [dbo].[Get_LastLoanNo]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[Get_LastLoanNo] (@AccountID int)  
RETURNS  INT  
BEGIN   
  
	DECLARE  @LoanAmount int   
	Set @LoanAmount= ( SELECT  TOP 1    Loan.LoanNo  
	                   FROM   Loan    
	                   WHERE  AccountID=@AccountID  
	                   ORDER BY Loan.LoanID DESC)  
	  
	  
	Return @LoanAmount  
  
END  
GO
/****** Object:  UserDefinedFunction [dbo].[Get_RemainOfLoan_byLoanID_F]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[Get_RemainOfLoan_byLoanID_F] (@loanId int)  
RETURNS INT  AS  
BEGIN 

DECLARE @RemainOfLoan INT
/*create Procedure  [dbo].[get_RemainOfLoan_byLoanID]
@loanId int , @RemainOfLoan int output
as*/

SELECT    @RemainOfLoan= sum(amount)
from ForcePayment 
where  ParentID=@LoanID and  ForceTypeID=1 and paid=1




RETURN @RemainOfLoan



END
GO
/****** Object:  UserDefinedFunction [dbo].[GetListOrderNo]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetListOrderNo] (@ParentId int,@ForceType INT,@str VARCHAR(max))
    RETURNs Varchar(max)
    as             
    BEGIN
        
        DECLARE @t TABLE (i int)
        WHILE LEN (@str)<>0
        BEGIN
            INSERT INTO @t (i)
            SELECT CONVERT(INT,    SUBSTRING(@str,1,CHARINDEX(',',@str)-1))            
            select @str=STUFF(@str,1,CHARINDEX(',',@str),'') 
        end


        DECLARE @SumOrderNo VARCHAR(max)=''
        DECLARE @OrderNo int
        DECLARE i CURSOR FOR 
                            SELECT OrderNo 
                            FROM ForcePayment fp 
                            WHERE parentid=@ParentId AND ForceTypeID=@Forcetype AND ForcePaymentID IN(SELECT i FROM @t)
                            order BY OrderNo
        OPEN I
        FETCH NEXT FROM i INTO     @OrderNo
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            SET @SumOrderNo=@SumOrderNo+','+CONVERT (VARCHAR(10),@OrderNo)
            FETCH NEXT FROM i INTO     @OrderNo
        END
        CLOSE i 
        DEALLOCATE i 
        RETURN SUBSTRING(@SumOrderNo,2,LEN(@SumOrderNo))
        
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetPhoneNumber]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetPhoneNumber] (@ContactID int)
RETURNS nvarchar(50)
AS 
BEGIN
    DECLARE @PhoneNumber NVARCHAR(50)
    SELECT @PhoneNumber=Phones FROM dbo.Contact WHERE ContactID=@ContactID
    RETURN ISNULL(@PhoneNumber,'-1')

END
GO
/****** Object:  UserDefinedFunction [dbo].[GroupPaymentPoint]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create FUNCTION [dbo].[GroupPaymentPoint](@LastLoanID INT, @FromDate CHAR(10), @ToDate CHAR(10))
RETURNS INT
AS
BEGIN
	DECLARE @res INT
	SELECT @res=COUNT(1) FROM ForcePayment fp INNER JOIN Payment p ON fp.PaymentID=p.PaymentID
		WHERE fp.Paid=1 AND fp.ParentID=@LastLoanID AND (fp.MatureDate BETWEEN @FromDate AND @ToDate) AND
				fp.GroupPayed = 1 AND p.Date< fp.MatureDate
	RETURN ISNULL(@res, 0)
END
GO
/****** Object:  UserDefinedFunction [dbo].[Is_ParentId]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   FUNCTION [dbo].[Is_ParentId] (@ChildID int,@ParentID int)
RETURNS bit AS
BEGIN

 declare @PI int,@CurID int,@stoper int
if @childid=@parentid return(1)


 set @CurID=@ChildID
set @stoper=1
 while @CurID<>0 and @stoper<5
   begin
    select @PI=ParentID from AccountType where AccountTypeID=@CurID
    if @PI=@ParentID return(1)  else set @CurID=@PI
   set @stoper=@stoper+1
   end
return(0)
END

GO
/****** Object:  UserDefinedFunction [dbo].[Is_ValidShamsiDate]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE function  [dbo].[Is_ValidShamsiDate](@ShamsiDate varchar(10))
returns bit
 as
begin
 declare @result bit,@y int,@m tinyint,@d tinyint
  if @ShamsiDate not like '1[0-4][0-9][0-9]/[0-1][0-9]/[0-3][0-9]' return (0)

set @y =cast(substring(@shamsidate,1,4) as int)
set @m =cast(substring(@shamsidate,6,2) as tinyint)
set @d =cast(substring(@shamsidate,9,2) as tinyint)

 if @m> 12 return(0)
 if @d>dbo.ShamsiDayPerMonth(@y,@m) return(0)
return(1)
end


GO
/****** Object:  UserDefinedFunction [dbo].[IsValidAccountId]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

---
----------
CREATE  FUNCTION [dbo].[IsValidAccountId](@AccountID INT,@Price INT)      
RETURNS bit AS      
BEGIN      
     
Declare @IsValidAccountId Bit    
DECLARE @BlockedPrice FLOAT  
SET @BlockedPrice =(SELECT TOP 1 BlockedPrice FROM   Account    Where  AccountID=@AccountID)  
    
IF isnull(@BlockedPrice,0)=0        
      Set @IsValidAccountId=1    
ELSE  
BEGIN  
   
   IF EXISTS( SELECT AccountID      
              FROM   Account      
              Where  AccountID=@AccountID                                       And        
--                     dbo.TotalExist(Accountid,9)>(ISNULL(blockedprice,0)+@Price)And    
                     dbo.Exist(Accountid,9)>(ISNULL(blockedprice,0)+@Price)And    
                     ISNULL(BlockedPrice,0)<>0                                                          ) -- نبايد بدهکار هم باشد     
      
      Set @IsValidAccountId=1      
    Else      
      Set @IsValidAccountId=0      
END  
--     IF EXISTS( SELECT AccountID      
--                FROM   Account      
--                Where  AccountID=@AccountID   And        
--                       ISNULL(BlockedPrice,0)=0                                                          )  -- نبايد بدهکار هم باشد      
--        
--        Set @IsValidAccountId=1      
--      Else      
--        Set @IsValidAccountId=0      
      
Return(@IsValidAccountId)      
End      
GO
/****** Object:  UserDefinedFunction [dbo].[IsValidAccountIdForGauruntor]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
----------------------------------------------------------------
----------------------------------------------------------------
CREATE FUNCTION [dbo].[IsValidAccountIdForGauruntor](@AccountID INT, @GuarantorID INT, @Price INT)    
RETURNS bit AS    
BEGIN   
--DECLARE @AccountID INT, @GuarantorID INT, @Price INT
--SET @AccountID = 15
--SET @GuarantorID = 3
--SET @Price = 7500000

Declare @IsValidAccountId BIT
DECLARE @ContactType INT
DECLARE @MaxTimesGuaranteed INT
DECLARE @MaxLimitForGuarantee INT
SELECT @ContactType = c.ContactTypeID FROM Contact c where ContactID = @GuarantorID
--IF @ContactType = 3
--BEGIN
	SELECT @MaxTimesGuaranteed = COUNT(DISTINCT loanID) FROM LoanGaurantor lg 
	WHERE EXISTS(SELECT * FROM ForcePayment fp WHERE fp.ParentID = lg.LoanID AND fp.ForceTypeID = 1 AND fp.Paid = 0)
		and lg.GaurantorContactID = @GuarantorID
	

	SELECT @MaxLimitForGuarantee = VALUE FROM Setting s 
		WHERE s.UserID = -1 AND s.VariableName = 'LoanGrtCount'
--END

   IF (EXISTS( SELECT AccountID    
              FROM   Account    
              Where  AccountID=@AccountID And      
                     dbo.TotalExist(Accountid,9, 0)>(ISNULL(blockedprice,0)+@Price)))   OR
       (@MaxTimesGuaranteed < @MaxLimitForGuarantee)
    
      Set @IsValidAccountId=1    
    Else    
      Set @IsValidAccountId=0    
RETURN(@IsValidAccountId)    
End 
GO
/****** Object:  UserDefinedFunction [dbo].[IsValidAccountIdForLoan]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create  FUNCTION [dbo].[IsValidAccountIdForLoan](@AccountID INT,@Price INT)        
RETURNS bit AS        
BEGIN        
       
Declare @IsValidAccountId Bit      
DECLARE @BlockedPrice FLOAT    
SET @BlockedPrice =(SELECT TOP 1 BlockedPrice FROM   Account    Where  AccountID=@AccountID)    
      
IF isnull(@BlockedPrice,0)=0          
      Set @IsValidAccountId=1      
ELSE    
BEGIN    
     
   IF EXISTS( SELECT AccountID        
              FROM   Account        
              Where  AccountID=@AccountID                                       And          
                     dbo.Exist(Accountid,9)>(ISNULL(blockedprice,0)+@Price)/*And      
                     ISNULL(BlockedPrice,0)<>0                               */                           ) -- نبايد بدهکار هم باشد       
        
      Set @IsValidAccountId=1        
    Else        
      Set @IsValidAccountId=0        
END    
     
        
Return(@IsValidAccountId)        
End             
GO
/****** Object:  UserDefinedFunction [dbo].[IsValidGaurantor]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[IsValidGaurantor](@GaurantorContactID int,@LoanId INT)  
RETURNS bit AS  
BEGIN  
Declare @IsValidGaurantor Bit  
  
  
   IF EXISTS( SELECT LoanGaurantorID, LoanID, GaurantorContactID, FinancialNoteID, PercentofGauranty
              FROM   LoanGaurantor
              where GaurantorContactID=@GaurantorContactID and LoanId=@LoanId)
  
      Set @IsValidGaurantor=0  
    Else  
      Set @IsValidGaurantor=1  
  
  
return(@IsValidGaurantor)  
end  
  
  
  
  


GO
/****** Object:  UserDefinedFunction [dbo].[IsValidPresenter]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create FUNCTION [dbo].[IsValidPresenter](@AccountId INT ,@ContactID int,@AccountPresenterId INT)    
RETURNS bit AS    
BEGIN    
Declare @IsValidPresenter Bit    
   IF EXISTS( SELECT AccountPresenterId, AccountId, ContactId
              FROM   AccountPresenter  
              where  AccountId=@AccountId AND 
                     ContactId=@ContactID AND 
                     AccountPresenterId <> @AccountPresenterId )  
    
      Set @IsValidPresenter=0    
    Else    
      Set @IsValidPresenter=1    
    
    
Return(@IsValidPresenter)    
end    
GO
/****** Object:  UserDefinedFunction [dbo].[LoanDelay]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE function [dbo].[LoanDelay](@LoanID int,@today char(10))
returns int
begin
declare @Delay int
SELECT  @Delay=sum(dbo.shamsidatediff(Maturedate,isnull(Payment.date,@today)))
FROM  ForcePayment
left join Payment on ForcePayment.Paymentid=Payment.Paymentid
where ForceTypeID=1 and (ParentID=@LoanID)

set @Delay =isnull(@Delay,0)
return @Delay
end


GO
/****** Object:  UserDefinedFunction [dbo].[LoanDelay_ByAccountId]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE function [dbo].[LoanDelay_ByAccountId] (@AccountID int,@today char(10))  
returns int  
begin  
declare @Delay int  
SELECT  @Delay=sum(dbo.shamsidatediff(Maturedate,isnull(Payment.date,@today)))  
FROM  ForcePayment  
left join Payment on ForcePayment.Paymentid=Payment.Paymentid  
where ForceTypeID=1 --and (ParentID=@LoanID) 
 and (ParentID IN (SELECT LoanID FROM DBO.Loan WHERE AccountID=@AccountID))   
  
set @Delay =isnull(@Delay,0)  
return @Delay  
end  
  
GO
/****** Object:  UserDefinedFunction [dbo].[LoanPoint]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Function [dbo].[LoanPoint]( @AccountID int,@today char(10))
returns int
begin

set @today='1386/12/19'
set @accountId=12

declare @LastLoanDate char(10),@AccountDate char(10),@RequestDate char(10),@point int
declare @PartDelayPoint int , @MonthlyDelayPoint int, @LastLoanPoint int,@LoanRequestPoint int,@BalancePoint int


select @BalancePoint=value
from setting
where  VariableName='BalancePoint' and userid=-1

select @PartDelayPoint=value
from setting 
where  VariableName='PartDelayPoint' and userid=-1

select @MonthlyDelayPoint=value
from setting 
where  VariableName='MonthlyDelayPoint' and userid=-1

select @LastLoanPoint=value
from setting
where  VariableName='LastLoanPoint' and userid=-1

select @LoanRequestPoint=value
from setting 
where  VariableName='LoanRequestPoint' and userid=-1

select @AccountDate=AccountDate from Account where  accountid=@accountId
select @LastLoanDate=max(loandate) from loan where accountid=@accountId
set @LastLoanDate =isnull(@LastLoanDate,@AccountDate)
select @RequestDate=max(RequestDate) from dbo.LoanRequest where accountid=@accountId and Expired=0

set @point=@LastLoanPoint*isnull(dbo.shamsidatediff(@LastLoanDate,@today),0)
set @point=@point+@LoanRequestPoint*isnull(dbo.shamsidatediff(@RequestDate,@today),0)
set @point=@point+@BalancePoint*dbo.AvgBalance(@accountID,@LastLoanDate,@today)

set @point=@point -isnull((select @PartDelayPoint*sum(dbo.shamsidatediff(maturedate,isnull(date,@today))   )
from ForcePayment
left join Payment on ForcePayment.Paymentid=Payment.Paymentid
where ParentId=@accountID  and Maturedate between @LastLoanDate and @today and  ForceTypeid=1),0)

set @point=@point -isnull((select @monthlyDelayPoint*sum(dbo.shamsidatediff(maturedate,isnull(date,@today))   )
from ForcePayment
inner join Loan on loan.loanid=ForcePayment.ParentId
left join Payment on ForcePayment.Paymentid=Payment.Paymentid
where AccountID=@accountID  and Maturedate between @LastLoanDate and @today and  ForceTypeid=2),0)


return(@point)
end


GO
/****** Object:  UserDefinedFunction [dbo].[MDayPerMonth]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MDayPerMonth](@MYear INT,@MMonth INT)
RETURNS TINYINT
AS
BEGIN
	DECLARE @res INT
	IF @MMonth IN (1,3,5,7,8,10,12)
		SET @res = 31
	ELSE IF @MMonth =2 
		SET @res = 28+dbo.MiladiLeapyear(@MYear)
	ELSE
		SET @res = 30	
	RETURN @res
END
GO
/****** Object:  UserDefinedFunction [dbo].[MiladiLeapyear]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[MiladiToShamsi]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MiladiToShamsi]
(@MiladiSTR VARCHAR(10))
RETURNS VARCHAR(10)
AS
BEGIN
	DECLARE @MY INT, @MM INT, @MD INT, @MI INT, @SY INT, @SM INT, @SD INT, @SI INT, @DIF INT, @RES NVARCHAR(10) 
	SET @MI = 0;
	SET @MY = CAST(SUBSTRING(@MiladiSTR,1,4) AS INT)
	SET @MM = CAST(SUBSTRING(@MiladiSTR,6,2) AS INT)
	SET @MD = CAST(SUBSTRING(@MiladiSTR,9,2) AS INT)
	
	SET @MM = @MM-1
	WHILE(@MM>0)
	BEGIN
		SET @MI = @MI + dbo.MDayPerMonth(@MY,@MM)
		SET @MM = @MM -1
	END 
	SET @MI = @MI+@MD
	
	SET @SY = @MY - 622
	SET @DIF = 79 - dbo.ShamsiLeapYear(@SY)
	IF (@MI>@DIF) 
    BEGIN 
		SET @SI = @MI - @DIF - dbo.ShamsiLeapYear(@SY)
		SET @SY = @SY+1
    END 
    ELSE 
		SET @SI = @MI - @DIF+365

    IF (@SI<187)
    BEGIN
		SET @SM = ((@SI - 1) / 31)+1
		SET @SD = ((@SI - 1) % 31)+1
    END 
    ELSE 
    BEGIN 
		SET @SM = 7+((@SI-187) / 30)
		SET @SD = ((@SI-187) % 30)+1
	END 
	SET @RES = CAST(@SY AS NVARCHAR)
	SET @RES = @RES +'/'+ RIGHT('00' + CAST(@SM AS NVARCHAR), 2)
	SET @RES = @RES +'/'+ RIGHT('00' + CAST(@SD AS NVARCHAR), 2)
   RETURN @RES	
END
GO
/****** Object:  UserDefinedFunction [dbo].[MonthlyDelay]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[MonthlyDelay](@AccountID int,@FromDate char(10),@today char(10))
returns int
begin
declare @Delay int
SELECT  @Delay=sum(dbo.shamsidatediff(Maturedate,isnull(Payment.date,@today)))
FROM  ForcePayment
left join Payment on ForcePayment.Paymentid=Payment.Paymentid
where ForceTypeID=2 and (ParentID=@AccountID) and Maturedate between @FromDate and @today 

set @Delay =isnull(@Delay,0)
return @Delay
end


GO
/****** Object:  UserDefinedFunction [dbo].[PureBalance]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
  
CREATE  FUNCTION [dbo].[PureBalance]  
(  
@AccountID int,@dateTo char(10)  
)  
RETURNS bigint  
AS  
BEGIN  
declare @SumAmount bigint  
IF @ACCOUNTID=4 
BEGIN
		 SET @SumAmount= DBO.F_Soodvam ('1300/01/01',@dateTo)
END
ELSE
BEGIN

		select @SumAmount=sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)  
		from Payment  
		where Date <=@dateTo  AND (@AccountID in (DebtorAccountID,CreditorAccountID))  
END
  
set @SumAmount=isnull(@SumAmount,0)  
  
RETURN @SumAmount  
  
END  




 
  
  
GO
/****** Object:  UserDefinedFunction [dbo].[Shamsi]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------
CREATE  Function [dbo].[Shamsi](@DATE datetime)
RETURNS Varchar(10)
AS
BEGIN
	DECLARE @MDate VARCHAR(10)
	SET @MDate = CONVERT(VARCHAR, DATEPART(yyyy, @DATE)) 
		   + '/' + RIGHT('00' +CONVERT(VARCHAR, DATEPART(mm, @DATE)),2) 
		   + '/' + RIGHT('00' +CONVERT(VARCHAR, DATEPART(dd, @DATE)),2)
	RETURN dbo.MiladiToShamsi(@MDate)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDateDiff]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ShamsiDateDiff](@dateFrom char(10),@dateTo char(10))
RETURNS int
AS
BEGIN

  RETURN(case when @dateTo>@dateFrom then dbo.ShamsiToInt(@dateTo)-dbo.ShamsiToInt(@dateFrom) else 0 end)
END


GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOf]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create function [dbo].[ShamsiDayOf](@date char(10))
returns int
as begin
Return(cast(right(@date,2) as int))
end



GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayPerMonth]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ShamsiDayPerMonth](@y int,@m int) RETURNS int
AS BEGIN
 return(case when @m<=6 then 31 when @m>6 and @m<>12 then 30 else 29+dbo.ShamsiLeapYear(@y) end)
END


GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiDecDate]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*select dbo.ShamsiDecDate('1389/01/01',1,0,0)
select dbo.ShamsiIncDate('1389/01/02',1,1,1)*/
CREATE function [dbo].[ShamsiDecDate](@date char(10) ,@y int ,@m int ,@d int)  
Returns char(10)  
as  
begin
DECLARE @ny int,@nm int ,@nd int 
/*DECLARE @date char(10) ,@y int ,@m int ,@d int
SET @date='1389/01/01'
SET @y=1 
SET @m=1
SET @d=1*/

set @ny=dbo.shamsiYearof(@date)  
set @nm=dbo.shamsimonthof(@date)  
set @nd=dbo.shamsidayof(@date)  
set @ny=@ny-@y  
  
set @nm=@nm-@m  
set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end  
set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end  
set @nd=@nd-@d  

/*Ranjbar 88.07.18*/  
--if @nd > dbo.shamsidayPermonth(@ny,@nm)  
While @nd > dbo.shamsidayPermonth(@ny,@nm)  
begin  
   set @nd=@nd - dbo.shamsidayPermonth(@ny,@nm)  
   set @nm=@nm-1  
   set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end  
   set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end  
end  
/**/
  
if @nd < 1  
begin  
   set @nm=@nm-1  
   set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end  
   set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end  
   set  @nd=@nd+dbo.shamsidayPermonth(@ny,@nm)  
end  
  
--SELECT dbo.ShamsiEnCodeDate(@ny,@nm,@nd)
Return(dbo.ShamsiEnCodeDate(@ny,@nm,@nd))  
end  
 

GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiEnCodeDate]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiIncDate]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[ShamsiIncDate](@date char(10) ,@y int ,@m int ,@d int)  
Returns char(10)  
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

/*Ranjbar 88.07.18*/  
--if @nd > dbo.shamsidayPermonth(@ny,@nm)  
While @nd > dbo.shamsidayPermonth(@ny,@nm)  
begin  
   set @nd=@nd - dbo.shamsidayPermonth(@ny,@nm)  
   set @nm=@nm+1  
   set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end  
   set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end  
end  
/**/
  
if @nd < 1  
begin  
   set @nm=@nm-1  
   set @ny=case when @nm<1 then @ny-1 when @nm>12 then @ny+1   else @ny end  
   set @nm=case when @nm<1 then @nm+12 when @nm>12 then @nm-12 else @nm end  
   set  @nd=@nd+dbo.shamsidayPermonth(@ny,@nm)  
end  
  
Return(dbo.ShamsiEnCodeDate(@ny,@nm,@nd))  
end  
  


GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiInvertForWord]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ShamsiInvertForWord](@date  varchar(10))
RETURNS varchar(10) AS
BEGIN
return(substring(@date,9,2)+substring(@date,5,4)+substring(@date,1,4))
END


GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiLeapYear]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiMonthOf]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create function [dbo].[ShamsiMonthOf](@date char(10))
returns int
as begin
Return(cast(substring(@date,6,2) as int) )
end








GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiToInt]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
--======================================================================================================
--======================================================================================================
CREATE FUNCTION [dbo].[ShamsiToInt](@date char(10)) RETURNS int
AS BEGIN
  declare @d1 int ,@d2 int ,@Y int ,@m int ,@d int ,@dif int ,@i int
set @y=dbo.shamsiYearof(@date)
  set @m=dbo.shamsimonthof(@date)
  set @d=dbo.shamsidayof(@date)
  set @dif=case when @m<7 then  (@m-1)*31+@d else 186+(@m-7)*30+@d end;
	
  /*set @i=1300
  while @i<@y
    begin
     set @dif=@dif+dbo.ShamsiLeapYear(@i)+365
     set @i=@i+1
    end*/
    
  -- New parts
  SET @dif= @dif+ (FLOOR((((@y- 1301)/4)*366)+ (((@y- 1300)- ((@y- 1301)/4))*365)))
  --   
  RETURN(@dif)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiYearOf]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[ShamsiYearOf](@date char(10))
returns int
as begin
return(cast(left(@date,4) as int))
end



GO
/****** Object:  UserDefinedFunction [dbo].[SumBalance]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[SumBalance](@AccountID int,@dateFrom char(10),@dateTo char(10))
RETURNS bigint AS
BEGIN
declare @allAmount bigint,@allDays int ,@res bigint

set @AllDays=dbo.shamsidatediff(@dateFrom,@dateto)

if @AllDays=0 return(0)
declare @p table(id int identity(1,1),Days int,Amount BIGINT)

insert into @p(Days,Amount) values (0,dbo.exist(@accountid,@dateFrom))

insert into @p(Days,Amount)
SELECT   distinct  dbo.shamsidatediff(@datefrom,date) ,dbo.Exist(@AccountID,P.Date)
FROM         Payment p
WHERE     @AccountID in (DebtorAccountID,CreditorAccountID)  and
           paytypeid  in (1,2) and
                date  > @dateFrom  and date<@dateTo

insert into @p(Days,Amount) values (@allDays,dbo.exist(@AccountID,@dateTo))

select @res=sum((p2.days-p1.days)*p1.amount)
from @p p1
inner join @p p2 on p2.id=p1.id+1


return(@res)
end


GO
/****** Object:  UserDefinedFunction [dbo].[Today]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE function [dbo].[Today]()
returns char(10)
as begin
return(select value from fixvalues where valueid=4)
end













GO
/****** Object:  UserDefinedFunction [dbo].[TotalExist]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[TotalExist]( @AccountID int,@dateTo char(10), @AccountTypeID INT=0 )            
RETURNS bigint            
AS            
BEGIN         
    Declare @SumAmount BigInt            


	IF @AccountTypeID=0
		SELECT  @AccountTypeID=ACCOUNTTYPEID  FROM ACCOUNT WHERE ACCOUNTID=@AccountID
 
	IF @AccountID=4        
	BEGIN      
		SELECT @SumAmount=DBO.F_SOODVAM('1300/01/01',@DateTo)--sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)          
		Set @SumAmount=isnull(@SumAmount,0)          
	END      
	ELSE IF @AccountID=1             
	BEGIN      
		Select @SumAmount=sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)            
			From Payment            
			Where Date <=@dateTo  AND (@AccountID in (DebtorAccountID,CreditorAccountID))            
		set @SumAmount=isnull(@SumAmount,0)            
	END      
	ELSE   IF @ACCOUNTTYPEID<>1           
	BEGIN      
		Select @SumAmount=sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)            
			From Payment            
			Where Date <=@dateTo  AND (@AccountID in (DebtorAccountID,CreditorAccountID))            
		set @SumAmount=isnull(@SumAmount,0)            
	END     
	ELSE   IF @ACCOUNTTYPEID=1           
	BEGIN      
		Select @SumAmount=sum((Case when @AccountID=DebtorAccountID   then -Amount else +Amount END)/* - dbo.FN_GetLoanInterest(PaymentID)*/)
			From Payment            
			Where Date <=@dateTo  AND (@AccountID in (DebtorAccountID,CreditorAccountID))            
			and PayTypeid <>7  
		DECLARE @loaninterest BIGINT
		SELECT @loaninterest=SUM(InterestAmount) 
			From Payment  INNER JOIN Loan ON Loan.PaymentID = Payment.PaymentID  INNER JOIN ForcePayment fp ON fp.ParentID=Loan.LoanID      
			Where Date <='1400/01/01'  AND (59 in (DebtorAccountID,CreditorAccountID))            
			--Where Date <='1399/01/01'  AND (59 in (DebtorAccountID,CreditorAccountID))            
			and PayTypeid <>7 AND fp.InterestAmount<>0  AND fp.Paid=0
		SET @loaninterest=isnull(@loaninterest,0) 	      
		SET @SumAmount=isnull(@SumAmount-@loaninterest,0)            
	END      

RETURN @SumAmount            
            
END
GO
/****** Object:  Table [dbo].[Access]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Access](
	[AccessID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AccessTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessObject]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessObject](
	[AccessObjectId] [int] IDENTITY(1,1) NOT NULL,
	[AccessId] [tinyint] NOT NULL,
	[ObjectName] [varchar](50) NOT NULL,
	[Access] [bit] NOT NULL,
 CONSTRAINT [PK_Access_object] PRIMARY KEY CLUSTERED 
(
	[AccessObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountTitle] [nvarchar](100) NULL,
	[AccountNo] [varchar](20) NOT NULL,
	[ContactID] [int] NOT NULL,
	[AccountDate] [char](10) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[MonthlyTypeID] [int] NULL,
	[MonthlyBeginDate] [char](10) NULL,
	[Familyid] [int] NULL,
	[AccountTypeID] [tinyint] NULL,
	[BankID] [tinyint] NULL,
	[AlarmBeginDate] [char](10) NULL,
	[AlarmEndDate] [char](10) NULL,
	[AlarmText] [nvarchar](100) NULL,
	[BlockedPrice] [float] NULL,
	[IsBlocked] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountPresenter]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountPresenter](
	[AccountPresenterId] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[ContactId] [int] NOT NULL,
 CONSTRAINT [PK_AccountPresentation] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[AccountTypeID] [tinyint] NOT NULL,
	[AccountTypeTitle] [nvarchar](50) NOT NULL,
	[PreAccountNo] [varchar](2) NOT NULL,
	[CreditCuase] [nvarchar](50) NULL,
	[ParentID] [tinyint] NULL,
	[DebitCuase] [nvarchar](50) NULL,
	[DebitStatusID] [tinyint] NOT NULL,
 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED 
(
	[AccountTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[AttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentID] [int] NOT NULL,
	[PageNumber] [tinyint] NULL,
	[DataDescription] [nvarchar](50) NULL,
	[Data] [image] NOT NULL,
	[DocumentTypeID] [tinyint] NULL,
 CONSTRAINT [PK_AccountData] PRIMARY KEY CLUSTERED 
(
	[AttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[BankID] [tinyint] IDENTITY(1,1) NOT NULL,
	[BankTitle] [nvarchar](50) NOT NULL,
	[BRANCH] [nvarchar](50) NULL,
	[BRANCHCODE] [nvarchar](10) NULL,
	[BANKACCOUNTNO] [varchar](50) NULL,
	[FINANCIALNOTEPRINTFORMATID] [tinyint] NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benefit]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefit](
	[ACCOUNTID] [int] NOT NULL,
	[YEAR] [int] NOT NULL,
	[DocumentNo] [varchar](10) NOT NULL,
	[InsertedBenefitPrice] [float] NULL,
	[AnnualAvragePrice] [float] NULL,
	[InsertedDate] [varchar](10) NULL,
	[InsertedUserId] [int] NULL,
	[BenefitPercent] [float] NULL,
	[Month] [tinyint] NULL,
	[PaymentID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashInfo]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashInfo](
	[CashInfoId] [smallint] NOT NULL,
	[SerialNumber] [varchar](500) NULL,
	[CashLogo] [image] NULL,
 CONSTRAINT [PK_CashInfo] PRIMARY KEY CLUSTERED 
(
	[CashInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[PersonalNo] [nvarchar](50) NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[FatherName] [nvarchar](30) NOT NULL,
	[Idno] [nvarchar](10) NULL,
	[BirthPlace] [nvarchar](30) NULL,
	[BirthDate] [varchar](10) NULL,
	[Address] [nvarchar](100) NULL,
	[Phones] [nvarchar](50) NULL,
	[Job] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[Sign] [image] NULL,
	[Memo] [nvarchar](500) NULL,
	[UserField1] [nvarchar](100) NULL,
	[UserField2] [nvarchar](100) NULL,
	[picture] [image] NULL,
	[CalField] [int] NULL,
	[ContactTypeID] [tinyint] NULL,
	[HAVEINTEREST] [bit] NULL,
	[ContactTitle] [varchar](100) NULL,
	[SexId] [int] NOT NULL,
	[SendSms] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[ContactTypeID] [tinyint] NOT NULL,
	[ContactTypeTitle] [nvarchar](50) NOT NULL,
	[UserField1Title] [nvarchar](50) NULL,
	[UserField2Title] [nvarchar](50) NULL,
	[HasMonthly] [bit] NULL,
	[HasAccount] [bit] NULL,
	[AccountTypeID] [tinyint] NULL,
	[CalFieldTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED 
(
	[ContactTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBUpdate]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
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
/****** Object:  Table [dbo].[DebitStatus]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebitStatus](
	[DebitStatusID] [tinyint] NOT NULL,
	[DebitStatusTitle] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEL_Attachment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEL_Attachment](
	[AttachmentID] [int] NOT NULL,
	[DocumentID] [int] NOT NULL,
	[PageNumber] [tinyint] NULL,
	[DataDescription] [nvarchar](50) NULL,
	[DocumentTypeID] [tinyint] NULL,
	[DATA] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEL_ForcePayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEL_ForcePayment](
	[ForcePaymentID] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[ForceTypeID] [tinyint] NOT NULL,
	[Amount] [bigint] NULL,
	[MatureDate] [char](10) NOT NULL,
	[PaymentID] [int] NULL,
	[Comment] [nvarchar](100) NULL,
	[Paid] [bit] NOT NULL,
	[OrderNo] [tinyint] NOT NULL,
	[InterestAmount] [int] NOT NULL,
	[DeletedDate] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEL_Loan]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEL_Loan](
	[LoanID] [int] NOT NULL,
	[LoanNO] [varchar](10) NULL,
	[AccountID] [int] NOT NULL,
	[SponsorContactID] [int] NULL,
	[LoanTypeID] [smallint] NOT NULL,
	[LoanDate] [char](10) NOT NULL,
	[PartsBeginDate] [char](10) NOT NULL,
	[Amount] [bigint] NULL,
	[Isactive] [bit] NOT NULL,
	[WagePaymentID] [int] NULL,
	[PaymentID] [int] NULL,
	[LoanComment] [varchar](100) NULL,
	[PartNumber] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEL_LoanGaurantor]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEL_LoanGaurantor](
	[LoanGaurantorID] [int] NOT NULL,
	[LoanID] [int] NOT NULL,
	[GaurantorContactID] [int] NOT NULL,
	[FinancialNoteID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEL_Payment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEL_Payment](
	[PaymentID] [int] NOT NULL,
	[CreditorAccountID] [int] NOT NULL,
	[DebtorAccountID] [int] NOT NULL,
	[Date] [nvarchar](10) NOT NULL,
	[Time] [nvarchar](5) NULL,
	[Amount] [bigint] NOT NULL,
	[Comment] [varchar](100) NULL,
	[FinancialNoteID] [int] NULL,
	[InsertUserID] [int] NULL,
	[InsertDate] [char](10) NULL,
	[LastUpDate] [char](10) NULL,
	[LastUserID] [int] NULL,
	[PayTypeID] [tinyint] NOT NULL,
	[RelatedID] [int] NULL,
	[documentno] [varchar](10) NULL,
	[FinancialNote_DetailID] [int] NULL,
	[Crtr_DetAccountID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentType](
	[DocumentTypeID] [tinyint] NULL,
	[DocumentTypeTitle] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorMessage]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorMessage](
	[Errorid] [int] IDENTITY(1,1) NOT NULL,
	[ErrorMessage] [nvarchar](255) NULL,
	[ErrorDate] [nvarchar](10) NULL,
	[UserID] [int] NULL,
	[FarsiMessage] [nvarchar](255) NULL,
	[ShowMessage] [bit] NOT NULL,
 CONSTRAINT [PK_ErrorMessage] PRIMARY KEY CLUSTERED 
(
	[Errorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Family]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Family](
	[FamilyID] [smallint] IDENTITY(1,1) NOT NULL,
	[FamilyTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Family] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Field]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Field](
	[FieldID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](20) NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Field] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNote]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNote](
	[FinancialNoteID] [int] IDENTITY(1,1) NOT NULL,
	[NoteNo] [varchar](50) NOT NULL,
	[MatureDate] [char](10) NULL,
	[Amount] [bigint] NOT NULL,
	[OwnerAccountID] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[BranchCode] [varchar](10) NULL,
	[BankID] [tinyint] NULL,
	[NoteStatusID] [tinyint] NOT NULL,
	[FinancialNoteTypeID] [tinyint] NOT NULL,
	[BankAccountNo] [varchar](50) NULL,
 CONSTRAINT [PK_Cheque] PRIMARY KEY CLUSTERED 
(
	[FinancialNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNote_Detail]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNote_Detail](
	[FinancialNote_DetailID] [int] IDENTITY(1,1) NOT NULL,
	[FinancialNote_MasterID] [int] NULL,
	[NoteNo] [varchar](50) NOT NULL,
	[Amount] [bigint] NOT NULL,
	[ForceTypeID] [tinyint] NULL,
	[BankID] [tinyint] NULL,
	[NoteDate] [char](10) NOT NULL,
	[NoteDescription] [varchar](50) NULL,
	[ForcePaymentID] [int] NULL,
	[NoteStatusID] [tinyint] NULL,
	[BRANCH] [nvarchar](50) NULL,
	[BRANCHCODE] [varchar](10) NULL,
	[BANKACCOUNTNO] [varchar](50) NULL,
	[FND_LoanId] [int] NULL,
	[FND_LoanNo] [varchar](10) NULL,
 CONSTRAINT [PK_FinancialNote_Detail] PRIMARY KEY CLUSTERED 
(
	[FinancialNote_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNote_Master]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNote_Master](
	[FinancialNote_MasterID] [int] IDENTITY(1,1) NOT NULL,
	[MatureDate] [char](10) NULL,
	[Amount] [bigint] NOT NULL,
	[OwnerAccountID] [nvarchar](50) NULL,
	[FinancialNoteTypeID] [tinyint] NOT NULL,
	[NoteSubject] [nvarchar](50) NULL,
	[Reciver] [nvarchar](50) NULL,
	[UserConfirmer] [nvarchar](50) NULL,
	[NoteCount] [int] NOT NULL,
 CONSTRAINT [PK_FinancialNote_Master] PRIMARY KEY CLUSTERED 
(
	[FinancialNote_MasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNoteBook]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNoteBook](
	[FinancialNoteBookID] [int] IDENTITY(1,1) NOT NULL,
	[BankID] [tinyint] NOT NULL,
	[NoteNoFrom] [int] NOT NULL,
	[NoteNoTo] [int] NOT NULL,
	[Used] [tinyint] NOT NULL,
 CONSTRAINT [PK_FinancialNoteBook] PRIMARY KEY CLUSTERED 
(
	[FinancialNoteBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNotePrintFormat]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNotePrintFormat](
	[FinancialNotePrintFormatID] [tinyint] NOT NULL,
	[BankID] [tinyint] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Top] [int] NULL,
	[Left] [int] NULL,
	[Length] [int] NULL,
	[Sign] [char](10) NULL,
 CONSTRAINT [PK_FinancialNotePrintFormat] PRIMARY KEY CLUSTERED 
(
	[FinancialNotePrintFormatID] ASC,
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNoteStatus]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNoteStatus](
	[FinancialNoteStatusID] [tinyint] NOT NULL,
	[FinancialNoteStatusDesc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FinancialNoteStatus] PRIMARY KEY CLUSTERED 
(
	[FinancialNoteStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialNoteType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialNoteType](
	[FinancialNoteTypeID] [tinyint] NOT NULL,
	[FinancialNoteTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FinancialNoteType] PRIMARY KEY CLUSTERED 
(
	[FinancialNoteTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForcePayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForcePayment](
	[ForcePaymentID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[ForceTypeID] [tinyint] NOT NULL,
	[Amount] [bigint] NULL,
	[MatureDate] [char](10) NOT NULL,
	[PaymentID] [int] NULL,
	[Comment] [nvarchar](100) NULL,
	[Paid] [bit] NOT NULL,
	[OrderNo] [tinyint] NOT NULL,
	[InterestAmount] [int] NOT NULL,
	[GroupPayed] [bit] NULL,
 CONSTRAINT [PK_ForcePayment] PRIMARY KEY CLUSTERED 
(
	[ForcePaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForceType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForceType](
	[FoceTypeID] [tinyint] NOT NULL,
	[FoceTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FoceType] PRIMARY KEY CLUSTERED 
(
	[FoceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[LoanID] [int] IDENTITY(1,1) NOT NULL,
	[LoanNO] [varchar](10) NULL,
	[AccountID] [int] NOT NULL,
	[SponsorContactID] [int] NULL,
	[LoanTypeID] [smallint] NOT NULL,
	[LoanDate] [char](10) NOT NULL,
	[PartsBeginDate] [char](10) NOT NULL,
	[Amount] [bigint] NULL,
	[Isactive] [bit] NOT NULL,
	[WagePaymentID] [int] NULL,
	[PaymentID] [int] NULL,
	[LOANCOMMENT] [varchar](100) NULL,
	[PARTNUMBER] [int] NOT NULL,
 CONSTRAINT [PK_Loans] PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanAmount]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanAmount](
	[LoanAmountID] [tinyint] IDENTITY(1,1) NOT NULL,
	[LoanAmount] [bigint] NULL,
	[LOANAMOUNGROUP] [int] NOT NULL,
 CONSTRAINT [PK_LoanAmount] PRIMARY KEY CLUSTERED 
(
	[LoanAmountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanGaurantor]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanGaurantor](
	[LoanGaurantorID] [int] IDENTITY(1,1) NOT NULL,
	[LoanID] [int] NOT NULL,
	[GaurantorContactID] [int] NOT NULL,
	[FinancialNoteID] [int] NULL,
	[PercentofGauranty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanPriority]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanPriority](
	[LoanPriorityID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Priority] [smallint] NOT NULL,
	[Point] [int] NOT NULL,
	[IsUrgency] [bit] NULL,
 CONSTRAINT [PK_LoanPriority] PRIMARY KEY CLUSTERED 
(
	[LoanPriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanRequest]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanRequest](
	[LoanRequestID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[RequestDate] [char](10) NOT NULL,
	[Comment] [nvarchar](50) NULL,
	[DocumentNo] [nvarchar](50) NULL,
	[Expired] [bit] NOT NULL,
	[IsUrgency] [bit] NOT NULL,
 CONSTRAINT [PK_LoanRequest] PRIMARY KEY CLUSTERED 
(
	[LoanRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanType](
	[LoanTypeID] [smallint] IDENTITY(1,1) NOT NULL,
	[LoanTypeTitle] [nvarchar](50) NOT NULL,
	[PartMonths] [float] NOT NULL,
	[FixWage] [int] NOT NULL,
	[MinAcountExist] [int] NOT NULL,
	[MinLastPartPercent] [tinyint] NOT NULL,
	[MaxLoanAmount] [real] NULL,
	[InterestPercent] [real] NULL,
	[PartNumber] [int] NOT NULL,
	[WagePercent] [real] NOT NULL,
	[IsUrgency] [bit] NULL,
	[PERIOD] [nvarchar](10) NULL,
	[LOANAMOUNGROUP] [int] NOT NULL,
	[ForGivenLoan] [bit] NULL,
 CONSTRAINT [PK_LoanType] PRIMARY KEY CLUSTERED 
(
	[LoanTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minutes]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minutes](
	[MinuteID] [smallint] IDENTITY(1,1) NOT NULL,
	[MinuteNo] [varchar](20) NOT NULL,
	[MinuteDate] [char](10) NOT NULL,
	[MinuteSubject] [nvarchar](100) NULL,
	[DocumnetID] [int] NULL,
	[MinuteText] [nvarchar](500) NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[MinuteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyType](
	[MonthlyTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MonthlyTypeTitle] [nvarchar](50) NOT NULL,
	[Months] [tinyint] NOT NULL,
	[LoanAmountRoof] [int] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_MonthlyType] PRIMARY KEY CLUSTERED 
(
	[MonthlyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyType_Detail]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyType_Detail](
	[MonthlyTypeID] [int] NOT NULL,
	[MonthlyTypeYear] [char](4) NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_MonthlyType_Detail] PRIMARY KEY CLUSTERED 
(
	[MonthlyTypeID] ASC,
	[MonthlyTypeYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[NoteID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[AlarmDate] [char](10) NULL,
	[UserID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoteStatus]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteStatus](
	[NoteStatusID] [tinyint] NOT NULL,
	[NoteStatusTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChequeStatus] PRIMARY KEY CLUSTERED 
(
	[NoteStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[ObjectName] [varchar](50) NOT NULL,
	[ObjectCaption] [nvarchar](50) NOT NULL,
	[GroupTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[ObjectName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutBox]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutBox](
	[OutBoxId] [int] IDENTITY(1,1) NOT NULL,
	[SmsNumber] [varchar](11) NULL,
	[SmsText] [varchar](max) NULL,
	[SendDate] [datetime] NULL,
	[Inprocess] [bit] NULL,
	[IsSend] [bit] NULL,
	[ErrorMessage] [int] NULL,
	[SmsStatus] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[CreditorAccountID] [int] NOT NULL,
	[DebtorAccountID] [int] NOT NULL,
	[Date] [nvarchar](10) NOT NULL,
	[Time] [nvarchar](5) NULL,
	[Amount] [bigint] NOT NULL,
	[Comment] [varchar](100) NULL,
	[FinancialNoteID] [int] NULL,
	[InsertUserID] [int] NULL,
	[InsertDate] [char](10) NULL,
	[LastUpDate] [char](10) NULL,
	[LastUserID] [int] NULL,
	[PayTypeID] [tinyint] NOT NULL,
	[RelatedID] [int] NULL,
	[documentno] [varchar](10) NULL,
	[CRTR_DETACCOUNTID] [int] NULL,
	[FINANCIALNOTE_DETAILID] [int] NULL,
	[WasPrinted] [smallint] NULL,
	[PayTypeSecondId] [int] NULL,
	[RefrencePaymentId] [int] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayType]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayType](
	[PayTypeID] [tinyint] NOT NULL,
	[PayTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PayType] PRIMARY KEY CLUSTERED 
(
	[PayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportsName]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsName](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ReportCode] [int] NOT NULL,
	[ObjectName] [varchar](50) NOT NULL,
	[ReportName] [char](100) NULL,
	[ReportDescription] [nvarchar](400) NULL,
 CONSTRAINT [PK_ReportsName] PRIMARY KEY CLUSTERED 
(
	[ReportCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[SettingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[VariableName] [varchar](50) NULL,
	[Value] [nvarchar](100) NULL,
 CONSTRAINT [PK_FixValues] PRIMARY KEY CLUSTERED 
(
	[SettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexes]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexes](
	[Sexid] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[SimilarWord] [varchar](100) NULL,
 CONSTRAINT [PK_Sexes] PRIMARY KEY CLUSTERED 
(
	[Sexid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmsLogs]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsLogs](
	[SmsLogId] [int] IDENTITY(1,1) NOT NULL,
	[SmsDate] [datetime] NULL,
	[SmsText] [varchar](max) NULL,
	[SmsType] [int] NULL,
 CONSTRAINT [PK_SmsLogs] PRIMARY KEY CLUSTERED 
(
	[SmsLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[SupplyID] [int] IDENTITY(1,1) NOT NULL,
	[SupplyTitle] [nvarchar](100) NULL,
	[PaymentID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbExcel]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbExcel](
	[Radif] [int] NULL,
	[PersonCode] [nvarchar](50) NULL,
	[MelliCode] [char](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Family] [nvarchar](100) NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbExcelLog]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbExcelLog](
	[FilePath] [nvarchar](100) NOT NULL,
	[InsertDate] [char](10) NULL,
	[FileDate] [char](10) NOT NULL,
	[RowNo] [int] NULL,
	[UserId] [int] NULL,
	[Comment] [varchar](100) NULL,
 CONSTRAINT [PK_TbExcelLog] PRIMARY KEY CLUSTERED 
(
	[FilePath] ASC,
	[FileDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginLogout]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
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
 CONSTRAINT [PK_UserLoginLogout] PRIMARY KEY CLUSTERED 
(
	[UserLoginLogoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](40) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[AccessID] [tinyint] NOT NULL,
	[BeginDate] [char](10) NOT NULL,
	[EndDate] [char](10) NOT NULL,
	[AccMngtAccess] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VERSION_INFO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VERSION_INFO](
	[IDX] [int] NULL,
	[INFO_] [varchar](500) NULL,
	[DATE_] [nchar](10) NULL,
	[VERSION_] [varchar](50) NULL,
	[CUSTOMER] [varchar](100) NULL,
	[SQL_SP] [varchar](100) NULL,
	[DELPHI_FORM] [varchar](500) NULL,
	[SOFTWARE_NAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WordTemplate]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordTemplate](
	[WordTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[WordTemplate] [image] NULL,
	[TemplateTitle] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Account_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [Account_idx] ON [dbo].[Account]
(
	[AccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ForcePayment_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [ForcePayment_idx] ON [dbo].[ForcePayment]
(
	[ParentID] ASC,
	[ForceTypeID] ASC,
	[MatureDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Payment_all_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Payment_all_idx] ON [dbo].[Payment]
(
	[CreditorAccountID] ASC,
	[DebtorAccountID] ASC,
	[Date] ASC,
	[PayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [payment_creditor_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE NONCLUSTERED INDEX [payment_creditor_idx] ON [dbo].[Payment]
(
	[CreditorAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Payment_date_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Payment_date_idx] ON [dbo].[Payment]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Payment_Debtor_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Payment_Debtor_idx] ON [dbo].[Payment]
(
	[DebtorAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Payment_Paytype_idx]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE NONCLUSTERED INDEX [Payment_Paytype_idx] ON [dbo].[Payment]
(
	[PayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReportsName]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ReportsName] ON [dbo].[ReportsName]
(
	[ReportCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Accounts_IsActive]  DEFAULT (1) FOR [IsActive]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Acounts_PriodPayID]  DEFAULT (1) FOR [MonthlyTypeID]
GO
ALTER TABLE [dbo].[AccountType] ADD  CONSTRAINT [DF_AccountType_PreAccountNo]  DEFAULT (1) FOR [PreAccountNo]
GO
ALTER TABLE [dbo].[AccountType] ADD  DEFAULT (3) FOR [DebitStatusID]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF__Contact__IsActiv__2DF1BF10]  DEFAULT (1) FOR [IsActive]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT ((0)) FOR [SexId]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT ((1)) FOR [SendSms]
GO
ALTER TABLE [dbo].[ErrorMessage] ADD  CONSTRAINT [DF_ErrorMessage_ShowMessage]  DEFAULT (1) FOR [ShowMessage]
GO
ALTER TABLE [dbo].[FinancialNote] ADD  CONSTRAINT [DF_FinancialNote_NoteStatusID]  DEFAULT (1) FOR [NoteStatusID]
GO
ALTER TABLE [dbo].[FinancialNote_Detail] ADD  CONSTRAINT [DF_FinancialNote_Detail_NoteStatusID]  DEFAULT (1) FOR [NoteStatusID]
GO
ALTER TABLE [dbo].[FinancialNoteBook] ADD  CONSTRAINT [DF_FinancialNoteBook_Used]  DEFAULT (0) FOR [Used]
GO
ALTER TABLE [dbo].[ForcePayment] ADD  CONSTRAINT [DF_ForcePayment_Paid]  DEFAULT (0) FOR [Paid]
GO
ALTER TABLE [dbo].[ForcePayment] ADD  CONSTRAINT [DF_ForcePayment_OrderNo]  DEFAULT (1) FOR [OrderNo]
GO
ALTER TABLE [dbo].[ForcePayment] ADD  CONSTRAINT [DF_ForcePayment_InterestAmount]  DEFAULT (0) FOR [InterestAmount]
GO
ALTER TABLE [dbo].[Loan] ADD  CONSTRAINT [DF_Loan_Isactive]  DEFAULT (1) FOR [Isactive]
GO
ALTER TABLE [dbo].[LoanPriority] ADD  CONSTRAINT [DF_LoanPriority_Point]  DEFAULT (0) FOR [Point]
GO
ALTER TABLE [dbo].[LoanRequest] ADD  CONSTRAINT [DF_LoanRequest_Expired]  DEFAULT (0) FOR [Expired]
GO
ALTER TABLE [dbo].[LoanRequest] ADD  CONSTRAINT [DF_LoanRequest_IsUrgency]  DEFAULT (0) FOR [IsUrgency]
GO
ALTER TABLE [dbo].[LoanType] ADD  CONSTRAINT [DF__LoanType__PartMo__097F5470]  DEFAULT (1) FOR [PartMonths]
GO
ALTER TABLE [dbo].[LoanType] ADD  CONSTRAINT [DF__LoanType__FixWag__0A7378A9]  DEFAULT (0) FOR [FixWage]
GO
ALTER TABLE [dbo].[LoanType] ADD  CONSTRAINT [DF__LoanType__MinAco__0B679CE2]  DEFAULT (0) FOR [MinAcountExist]
GO
ALTER TABLE [dbo].[LoanType] ADD  CONSTRAINT [DF__LoanType__MinPar__0C5BC11B]  DEFAULT (0) FOR [MinLastPartPercent]
GO
ALTER TABLE [dbo].[LoanType] ADD  CONSTRAINT [DF__LoanType__PartNu__0D4FE554]  DEFAULT (12) FOR [PartNumber]
GO
ALTER TABLE [dbo].[LoanType] ADD  CONSTRAINT [DF__LoanType__WagePe__0E44098D]  DEFAULT (0) FOR [WagePercent]
GO
ALTER TABLE [dbo].[MonthlyType] ADD  CONSTRAINT [DF_MonthlyType_Months]  DEFAULT (1) FOR [Months]
GO
ALTER TABLE [dbo].[OutBox] ADD  DEFAULT (getdate()) FOR [SendDate]
GO
ALTER TABLE [dbo].[OutBox] ADD  DEFAULT ((0)) FOR [Inprocess]
GO
ALTER TABLE [dbo].[OutBox] ADD  DEFAULT ((0)) FOR [IsSend]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_PayTypeID]  DEFAULT (1) FOR [PayTypeID]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_LoginTime]  DEFAULT (getdate()) FOR [LoginTime]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_LogoutTime]  DEFAULT (getdate()) FOR [LogoutTime]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_isSafeLogout]  DEFAULT (0) FOR [isSafeLogout]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AccMngtAccess]  DEFAULT (1) FOR [AccMngtAccess]
GO
ALTER TABLE [dbo].[FinancialNote_Detail]  WITH CHECK ADD  CONSTRAINT [FK_FinancialNote_Detail_Bank] FOREIGN KEY([BankID])
REFERENCES [dbo].[Bank] ([BankID])
GO
ALTER TABLE [dbo].[FinancialNote_Detail] CHECK CONSTRAINT [FK_FinancialNote_Detail_Bank]
GO
ALTER TABLE [dbo].[FinancialNote_Detail]  WITH CHECK ADD  CONSTRAINT [FK_FinancialNote_Detail_FinancialNote_Master] FOREIGN KEY([FinancialNote_MasterID])
REFERENCES [dbo].[FinancialNote_Master] ([FinancialNote_MasterID])
GO
ALTER TABLE [dbo].[FinancialNote_Detail] CHECK CONSTRAINT [FK_FinancialNote_Detail_FinancialNote_Master]
GO
ALTER TABLE [dbo].[FinancialNote_Detail]  WITH CHECK ADD  CONSTRAINT [FK_FinancialNote_Detail_FinancialNoteStatus] FOREIGN KEY([NoteStatusID])
REFERENCES [dbo].[FinancialNoteStatus] ([FinancialNoteStatusID])
GO
ALTER TABLE [dbo].[FinancialNote_Detail] CHECK CONSTRAINT [FK_FinancialNote_Detail_FinancialNoteStatus]
GO
ALTER TABLE [dbo].[FinancialNoteBook]  WITH CHECK ADD  CONSTRAINT [FK_FinancialNoteBook_Bank] FOREIGN KEY([BankID])
REFERENCES [dbo].[Bank] ([BankID])
GO
ALTER TABLE [dbo].[FinancialNoteBook] CHECK CONSTRAINT [FK_FinancialNoteBook_Bank]
GO
ALTER TABLE [dbo].[MonthlyType_Detail]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyType_Detail_MonthlyType] FOREIGN KEY([MonthlyTypeID])
REFERENCES [dbo].[MonthlyType] ([MonthlyTypeID])
GO
ALTER TABLE [dbo].[MonthlyType_Detail] CHECK CONSTRAINT [FK_MonthlyType_Detail_MonthlyType]
GO
ALTER TABLE [dbo].[ReportsName]  WITH CHECK ADD  CONSTRAINT [FK_ReportsName_Objects1] FOREIGN KEY([ObjectName])
REFERENCES [dbo].[Objects] ([ObjectName])
GO
ALTER TABLE [dbo].[ReportsName] CHECK CONSTRAINT [FK_ReportsName_Objects1]
GO
/****** Object:  StoredProcedure [dbo].[AccDailyReport]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[AccDailyReport] @_Date AS NvarChar(10)
AS

	SELECT     Payment.documentno          , 
	           Payment.Comment             , 
	           Account.AccountTitle        , 
	           Account.AccountNo           , 
	           PayType.PayTypeTitle        , 
	           Payment.AMOUNT As Amount_Crt, 
	           0              As Amount_Dbt,
	           Payment.[Date]              , 
	           Payment.[Time]
	FROM       Payment                                                  INNER JOIN
	           Account ON Payment.CreditorAccountID = Account.AccountID INNER JOIN
	           PayType ON Payment.PayTypeID = PayType.PayTypeID
	WHERE      Payment.[Date]=@_Date

UNION ALL

	SELECT     Payment.DocumentNo          , 
	           Payment.Comment             , 
	           Account.AccountTitle        , 
	           Account.AccountNo           , 
	           PayType.PayTypeTitle        , 
	           0              AS Amount_Crt,
	           Payment.AMOUNT AS Amount_Dbt,
	           Payment.[Date]              , 
	           Payment.[Time]
	FROM       Payment                                                INNER JOIN
	           Account ON Payment.DebtorAccountID = Account.AccountID INNER JOIN
	           PayType ON Payment.PayTypeID = PayType.PayTypeID
	WHERE      Payment.[Date]=@_Date
	ORDER BY   Payment.DocumentNo,Payment.[Time], Payment.[Date]


GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_HAS_BALANCE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ACCOUNT_HAS_BALANCE]  
@CREDITORACCOUNTID INT,@DEBTORACCOUNTID INT,@AMOUNT BIGINT,@PAYTYPEID TINYINT,@HAS_BALANCE BIT OUTPUT  
AS  
SET @HAS_BALANCE=1  
  
DECLARE  @CREDITORBALANCE BIGINT,@DEBTORBALANCE BIGINT,  
@CREDITORACCOUNTTYPEID TINYINT,@DEBTORACCOUNTTYPEID TINYINT,  
@CREDITOR_DEBITSTATUSID INT, @DEBTOR_DEBITSTATUSID INT  
  
  
SELECT @CREDITORACCOUNTTYPEID=ACCOUNT.ACCOUNTTYPEID,  
       @CREDITOR_DEBITSTATUSID =DEBITSTATUSID  
FROM ACCOUNT,ACCOUNTTYPE  
WHERE ACCOUNT.ACCOUNTTYPEID=ACCOUNTTYPE.ACCOUNTTYPEID AND  ACCOUNTID=@CREDITORACCOUNTID  
  
SELECT @DEBTORACCOUNTTYPEID=ACCOUNT.ACCOUNTTYPEID,  
       @DEBTOR_DEBITSTATUSID =DEBITSTATUSID  
FROM ACCOUNT,ACCOUNTTYPE  
WHERE ACCOUNT.ACCOUNTTYPEID=ACCOUNTTYPE.ACCOUNTTYPEID AND ACCOUNTID=@DEBTORACCOUNTID  
  
  
IF @CREDITORACCOUNTTYPEID=1 RETURN  
  
  
/*IF @DEBTORACCOUNTTYPEID=1 AND (@PAYTYPEID=1) AND DBO.BALANCE_BYPAYTYPEID(@DEBTORACCOUNTID,1,'9')  - @AMOUNT<0  */
IF @DEBTORACCOUNTTYPEID=1 AND (@PAYTYPEID=1) AND DBO.Exist(@DEBTORACCOUNTID,'9')  - @AMOUNT<0  
 BEGIN  
  SET  @HAS_BALANCE=0  
  RETURN  
 END  
  
IF @CREDITOR_DEBITSTATUSID=1 AND DBO.PUREBALANCE(@CREDITORACCOUNTID,'9')+@AMOUNT>0  
 BEGIN  
  SET  @HAS_BALANCE=0  
  RETURN  
 END  
  
IF @DEBTOR_DEBITSTATUSID=2 AND DBO.PUREBALANCE(@DEBTORACCOUNTID,'9')-@AMOUNT<0  
 BEGIN  
  SET  @HAS_BALANCE=0  
  RETURN  
 END
GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_IS_BALANCE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ACCOUNT_IS_BALANCE]
@ACCOUNTID INT,@IS_BALANCE BIT OUTPUT
AS

 IF DBO.BALANCE(@ACCOUNTID,'9')<>0  SET @IS_BALANCE=0 ELSE SET @IS_BALANCE=1


GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_IS_DOUBLICATE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ACCOUNT_IS_DOUBLICATE]
                 @AccountNo VARCHAR(20),@IS_DOUBLICATE BIT OUTPUT
AS
 
SET @IS_DOUBLICATE=1

IF EXISTS(SELECT    AccountNo
          FROM      Account
          WHERE     (SUBSTRING(AccountNo, 4, LEN(AccountNo)) = @AccountNo) AND 
          (SUBSTRING(AccountNo, 1, 3             ) = 'DEL' ) AND 
          (IsActive = 0))
SET @IS_DOUBLICATE=1
ELSE
SET @IS_DOUBLICATE=0





GO
/****** Object:  StoredProcedure [dbo].[ACCOUNTTYPE_HAS_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ACCOUNTTYPE_HAS_ACCOUNT]
@ACCOUNTTYPEID TINYINT ,@RESULT BIT OUTPUT
AS
IF EXISTS(
SELECT *
  FROM ACCOUNT
WHERE ACCOUNTTYPEID=@ACCOUNTTYPEID)
SET @RESULT=1
ELSE
SET @RESULT=0

GO
/****** Object:  StoredProcedure [dbo].[ACTIVATE_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ACTIVATE_ACCOUNT]
@ACCOUNTID INT
AS
UPDATE ACCOUNT
   SET [ISACTIVE] = 1,ACCOUNTNO=REPLACE(ACCOUNTNO,'DEL','')
 WHERE ACCOUNTID=@ACCOUNTID





GO
/****** Object:  StoredProcedure [dbo].[BALANCE_SHEET]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------
----------------------------------------------

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE  Procedure [dbo].[BALANCE_SHEET]                
    @DateFrom char(10) , @DateTo char(10),@ParentID int,@sumAmount Bigint output                 
AS               
 --By Hadi Mohamed --92/03/25
             
--Declare  @dateFrom Char(10) , @dateTo Char(10),@ParentID Int,@sumAmount BigInt,
Declare  @C_Between bigint ,@C_After bigint 
--SET  @dateFrom='1380/01/01'              
--SET  @dateTo='1391/12/29'              
--SET  @ParentID =0   
             
             
             
------------CR                
Select             
        CreditorAccountId   AccountId,                
        Amount,                
        Cast(1 as smallint) status,                
        Date ,      
        PayTypeID MainPayType,      
        AccountTypeId MainAccountType                 
Into #P                  
From Payment  Inner Join                 
     Account ac1 on creditorAccountId=ac1.AccountId                  
Where AccountTypeId>1  -- AND DATE>=@DateFrom AND DATE<=@DateTo   
                  
                
                
------------DB                
Insert InTo #P                  
Select  DebtorAccountId,                
        Amount,                
        -1 status,                
        Date ,      
        PayTypeID   ,      
        AccountTypeId      
                
From Payment  Inner Join               
     Account AC2 on DebtorAccountId=ac2.AccountId                  
Where AccountTypeId>1  --AND DATE>=@DateFrom AND DATE<=@DateTo          
          
              
------------ اعضا بستانکار              
Insert Into #P                  
Select  -PayTypeID ,                
        Amount,                
        Cast(1 AS SmallInt) Status,                
        Date              ,      
        PayTypeID,      
        AC1.AccountTypeId        
From Payment  Inner Join                 
     Account AC1 ON CreditorAccountId=AC1.AccountId                  
Where AC1.AccountTypeId=1 -- AND DATE>=@DateFrom AND DATE<=@DateTo                 
                  
              
-------------- اعضا بدهکار              
Insert Into #P                  
Select  -PayTypeID ,                
         Amount,                
         -1 status,                
         Date ,      
        PayTypeID,      
        Ac2.AccountTypeId                   
From Payment  Inner Join                 
     Account ac2 ON DebtorAccountId=Ac2.AccountId                  
Where Ac2.AccountTypeId=1 --AND DATE>=@DateFrom AND DATE<=@DateTo                  

       
------------ ايجاد ستون وسطي تراز و ريختن در جدول               
--FROM P TO P1                  
Select AccountId,      
       MainPayType,      
       MainAccountType,                
       Sum(Case When status=-1 Then amount Else 0      End)C3,                
       Sum(Case When status=-1 Then 0      Else Amount End)C4                 
Into #P1                  
From #P            
Where Date<@DateTo OR  Date=@DateTo           
Group by AccountId,MainPayType ,MainAccountType                 
     
     
-------------- ايجاد ستون اول با در نظر گرفتن بازه زماني               
----FROM P TO P2              
Select AccountId,      
       MainPayType,      
       MainAccountType,      
       Sum(Case When Status=-1 Then amount Else 0      End) C1,                
       Sum(Case When Status=-1 Then 0      Else Amount End) C2                  
Into #P2                  
From #P                  
Where Date Between @DateFrom and @DateTo                  
Group by AccountId,MainPayType,MainAccountType                  
Drop Table #P       
      
                 
--تجميع جداول P1+P2 ->@PpT              
DECLARE  @PpT table(AccountId   int,MainPayType int ,MainAccountType int,C1 BIGINT,C2 BIGINT,C3 BIGINT,C4 BIGINT)       
INSERT INTO @PpT--(AccountId,MainPayType,MainAccountType,C1 ,C2  ,C3  ,C4  )          
SELECT     AccountId, MainPayType, MainAccountType, 0,0,C3, C4      
FROM         #P1      
union       
SELECT     AccountId, MainPayType, MainAccountType, c1,c2,0, 0      
FROM         #P2      
      
      
--ايجاد ستونهاي مورد نياز و ريختن آن در جدول 31          
select PpT.AccountId,      
       PpT.MainPayType,      
       PpT.MainAccountType,      
      Case when   PpT.AccountId<0 Then (Select PayTypeTitle From PayType Where PayTypeID=-PpT.AccountId)   Else Accounttitle End AccountTitle,      
      sum(C1)C1 ,sum(C2)C2  ,sum(C3) C3 ,sum(C4)C4      
INTO #PP_31              
from @PpT PpT left outer join Account ON PpT.AccountID=AccounT.AccountID      
group by PpT.AccountId,PpT.MainPayType,PpT.MainAccountType,ACCOUNT.AccountTitle       
      
       
--ايجاد ستونهاي مورد نياز و ريختن آن در جدول3           
Select Identity(int,1,1) ID ,                
       Isnull(MainAccountType,1) MainAccountType,          
       AccountId ,      
       MainPayType,                 
       AccountTitle  ,                
       Isnull(c1,0) C1,                
       Isnull(c2,0) C2,                
       C3,                
       C4,                  
       Case When C4>C3 Then 0     Else C3-C4 End C5,                  
       Case When C4>C3 Then C4-C3 Else 0     End C6       
Into #P3                  
From #PP_31                  
Order by AccountId      
    
--If @parentId<>0                 
--Delete #P_Final1 Where  dbo.Is_ParentId(MainAccountType,@parentId)=0       
     
    
    
     
SELECT               
       MainAccountType,          
       AccountId ,      
       MainPayType,                 
       AccountTitle  ,           
       sum(c1)c1,    
       sum(c2)c2,    
       sum(c3)c3,    
       sum(c4)c4,    
       --sum(c5)c5,    
       --sum(c6)c6      
       SUM(Case When C4>C3 Then 0     Else C3-C4 End) C5,                  
       SUM(Case When C4>C3 Then C4-C3 Else 0     End) C6       
    
into #P_Final1      
FROM #P3        
GROUP BY accountid ,AccountTitle  ,MainAccountType,MainPayType,AccountTitle        
ORDER BY accountid     
    
SELECT *    
INTO  #P_Final_Reserve    
FROM #P_Final1    
    
    
     
If @parentId<>0                 
Delete #P_Final1  Where  dbo.Is_ParentId(MainAccountType,@parentId)=0      
     
    
    
 SELECT       
       Accountid               
      ,[AccountTitle]    
      ,SUM([c1]) C1    
      ,SUM([c2]) C2    
      ,SUM([c3]) C3    
      ,SUM([c4]) C4    
      ,SUM(Case When C4>C3 Then 0     Else C3-C4 End) C5,                  
       SUM(Case When C4>C3 Then C4-C3 Else 0     End) C6    
  INTO #P_Final2    
  FROM #P_Final1    
  group by Accountid,[AccountTitle]    
 order by accountid    
     
     
 SELECT        Accountid      
     
      ,[AccountTitle]    
      ,C1    
      ,C2    
      ,C3    
      ,C4    
      ,Case When C4>C3 Then 0     Else C3-C4 End  C5,                  
       Case When C4>C3 Then C4-C3 Else 0     End  C6    
  INTO #P_Final3    
  FROM #P_Final2    
  order by accountid    
    
-----------------------------------------------------    
    
      
                 
IF EXISTS(SELECT  ACCOUNTID  FROM #P_Final3  Where  ACCOUNTID=4  )             
BEGIN        
 Update     #P_Final3        
  Set       
   c1=ISNULL((select SUM(c1) from  #P_Final_Reserve WHERE /*MainAccountType>1 and*/ (MainPayType IN(7,-7)OR 4 =AccountId )),0),        
   c2=ISNULL((select SUM(c2) from  #P_Final_Reserve WHERE /*MainAccountType>1 and*/ (MainPayType IN(7,-7)OR 4 =AccountId )),0),        
   c3=ISNULL((select SUM(c3) from  #P_Final_Reserve WHERE /*MainAccountType>1 and*/ (MainPayType IN(7,-7)OR 4 =AccountId )),0),        
   c4=ISNULL((select SUM(c4) from  #P_Final_Reserve WHERE /*MainAccountType>1 and*/ (MainPayType IN(7,-7)OR 4 =AccountId )),0),        
   c5=ISNULL((select SUM(c5) from  #P_Final_Reserve WHERE /*MainAccountType>1 and*/ (MainPayType IN(7,-7)OR 4 =AccountId )),0),        
   c6=ISNULL((select SUM(c6) from  #P_Final_Reserve WHERE /*MainAccountType>1 and*/ (MainPayType IN(7,-7)OR 4 =AccountId )),0)         
  Where  ACCOUNTID=4        
END          
ELSE        
BEGIN     
  IF @parentId<>8        
  BEGIN    
   INSERT INTO  #P_Final3(AccountId ,AccountTitle,C1,C2,C3,C4,C5,C6)                  
   Select --ISNULL((SELECT MAX(ID) FROM #P3),0)+1 ,                
               
       4,      
                        
       'سود وام'  ,                
       ISNULL((select SUM(c1) from  #P_Final_Reserve WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),             
       ISNULL((select SUM(c2) from  #P_Final_Reserve WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),      
       ISNULL((select SUM(c3) from  #P_Final_Reserve WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),      
       ISNULL((select SUM(c4) from  #P_Final_Reserve WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),             
       ISNULL((select SUM(c5) from  #P_Final_Reserve WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),      
       ISNULL((select SUM(c6) from  #P_Final_Reserve WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0)       
  END       
END        
   
   
-----------------------------------------------

set @C_Between=(
select isnull((select sum(amount) from payment where /*paytypeid=7 and*/ creditoraccountid=4 and date between @DATEFROM and @DATETO),0)
     + isnull((Select SUM(AMOUNT) From Payment  Inner Join Account ac1 on creditoraccountid=ac1.AccountId Where AccountTypeId=1   AND PAYTYPEID=7 and date between @DATEFROM and @DATETO),0)
-(
isnull( (select sum(amount) from payment where paytypeid=7 and debtoraccountid=4 and date between @DATEFROM and @DATETO ),0)+
isnull( (Select SUM(AMOUNT) From Payment  Inner Join Account ac1 on debtoraccountid=ac1.AccountId Where AccountTypeId=1   AND PAYTYPEID=7 and date between @DATEFROM and @DATETO),0)+
isnull((select sum(amount) from payment where paytypeid<>7 and debtoraccountid=4 and date between @DATEFROM and @DATETO ),0)))

set @C_after=(
select isnull((select sum(amount) from payment where /*paytypeid=7 and*/ creditoraccountid=4 and date<= @DATETO),0)
     + isnull((Select SUM(AMOUNT) From Payment  Inner Join Account ac1 on creditoraccountid=ac1.AccountId Where AccountTypeId=1   AND PAYTYPEID=7 and date<= @DATETO),0)
-(
isnull( (select sum(amount) from payment where paytypeid=7 and debtoraccountid=4 and date<= @DATETO ),0)+
isnull( (Select SUM(AMOUNT) From Payment  Inner Join Account ac1 on debtoraccountid=ac1.AccountId Where AccountTypeId=1   AND PAYTYPEID=7 and date<= @DATETO),0)+
isnull((select sum(amount) from payment where paytypeid<>7 and debtoraccountid=4 and date<= @DATETO),0)))



IF @C_Between>0 
BEGIN
  UPDATE  #P_Final3
  SET C2=ABS(@C_Between),C1=0
  WHERE ACCOUNTID=4

END
IF @C_Between<0 
BEGIN
  UPDATE  #P_Final3
  SET C1=ABS(@C_Between),C2=0
  WHERE ACCOUNTID=4

END
IF @C_after>0 
BEGIN
  UPDATE  #P_Final3
  SET C4=ABS(@C_after),C3=0
  WHERE ACCOUNTID=4

END
IF @C_after<0 
BEGIN
  UPDATE  #P_Final3
  SET C3=ABS(@C_after),C4=0
  WHERE ACCOUNTID=4

END
----------------------------------------------      
--select DBO.F_Soodvam (@dateFrom,@dateTo)    
--select DBO.F_Soodvam ('1391/01/01',@dateTo)   
--select * from  #P_Final3

--IF DBO.F_Soodvam (@dateFrom,@dateTo)>0  
--BEGIN
--  UPDATE  #P_Final3
--  SET C1=0
--  WHERE ACCOUNTID=4
--END
--IF DBO.F_Soodvam (@dateFrom,@dateTo)<0  
--BEGIN
--  UPDATE  #P_Final3
--  SET C2=0
--  WHERE ACCOUNTID=4
--END
--IF DBO.F_Soodvam ('1300/01/01',@dateTo)>0  
--BEGIN
--  UPDATE  #P_Final3
--  SET C3=0
--  WHERE ACCOUNTID=4
--END
--IF DBO.F_Soodvam ('1300/01/01',@dateTo)<0  
--BEGIN
--  UPDATE  #P_Final3
--  SET C4=0
--  WHERE ACCOUNTID=4
--END
     
Select AccountId ,      
       AccountTitle  ,           
       c1,    
       c2,    
       c3,    
       c4,    
       Case When C4>C3 Then 0     Else C3-C4 End C5,                  
       Case When C4>C3 Then C4-C3 Else 0     End C6                     
INTO #P_Final4    
From #P_Final3      
    
DELETE FROM #P_Final4   WHERE ACCOUNTID=-7    
DELETE FROM #P_Final4   WHERE ACCOUNTID=-6    
       
----------------- ليست نهايي                  
Select 1 ID,*    
From #P_Final4      
          
Union                  
              
Select 9999 id ,0,'جمع',ISNULL(sum(c1),0),ISNULL(sum(c2),0),ISNULL(sum(c3),0),ISNULL(sum(c4),0),ISNULL(sum(c5),0),ISNULL(sum(c6),0)                  
From #P_Final4                  
              
Union                  
              
Select 0 id ,0,'اعضا',null,null,null,null,null,null                  
From #P_Final4                  
Order by ID                  
                  
                  
Select @sumAmount=ISNULL(Sum(Cast(c6 as bigint))-sum(cast(c5 as bigint))     ,0 )            
From #P_Final4                  
                  
    
                
--Drop table #P    
Drop table #P1      
Drop table #P2      
Drop table #P3      
    
Drop table #P_Final1    
Drop table #P_Final_reserve    
Drop table #P_Final2    
Drop table #P_Final3    
Drop table #P_Final4    
Drop table #PP_31      
   
GO
/****** Object:  StoredProcedure [dbo].[BALANCE_SHEET_ALL]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BALANCE_SHEET_ALL]    
 @DATEFROM CHAR(10) , @DATETO CHAR(10),@PARENTID INT,@SUMAMOUNT BIGINT OUTPUT    
AS    

SELECT   CREDITORACCOUNTID as AccountId,    
         AMOUNT,  
         CAST(1 AS SMALLINT) STATUS,  
         [DATE],
        PayTypeID     MainPayType,
        AccountTypeId MainAccountType     
INTO #P    
FROM PAYMENT  
INNER JOIN ACCOUNT AC1 ON CREDITORACCOUNTID=AC1.ACCOUNTID    
Where [Date]<=@DateTo

    
INSERT INTO #P    
SELECT  DEBTORACCOUNTID as AccountId,  
        AMOUNT,  
        -1 STATUS,  
        [DATE],
        PayTypeID     MainPayType,
        AccountTypeId MainAccountType     
FROM PAYMENT    
INNER JOIN ACCOUNT AC2 ON DEBTORACCOUNTID=AC2.ACCOUNTID    
Where [Date]<=@DateTo


------------ ايجاد ستون وسطي تراز و ريختن در جدول         
--FROM P TO P1      
----SELECT ACCOUNTID,  
----       SUM(CASE WHEN STATUS=-1 THEN AMOUNT ELSE 0 END) C3,  
----       SUM(CASE WHEN STATUS=-1 THEN 0 ELSE AMOUNT END)C4   
----INTO #P1    
----FROM #P    
------DIDARIANS  
----WHERE DATE <=@DATETO    
----GROUP BY ACCOUNTID    
    
          
Select AccountId,
       MainPayType,
       MainAccountType,          
       Sum(Case When status=-1 Then amount Else 0      End)C3,          
       Sum(Case When status=-1 Then 0      Else Amount End)C4           
Into #P1            
From #P      
Where Date<=@DateTo   
Group by AccountId,MainPayType ,MainAccountType           


-------------- ايجاد ستون اول با در نظر گرفتن بازه زماني         
----FROM P TO P2        
Select AccountId,
       MainPayType,
       MainAccountType,
       Sum(Case When Status=-1 Then amount Else 0      End) C1,          
       Sum(Case When Status=-1 Then 0      Else Amount End) C2            
Into #P2            
From #P            
Where Date Between @DateFrom and @DateTo            
Group by AccountId,MainPayType,MainAccountType            
Drop Table #P 


--SELECT ACCOUNTID,  
--       SUM(CASE WHEN STATUS=-1 THEN AMOUNT ELSE 0 END) C1,  
--       SUM(CASE WHEN STATUS=-1 THEN 0 ELSE AMOUNT END) C2    
--INTO #P2    
--FROM #P    
--WHERE DATE BETWEEN @DATEFROM AND @DATETO    
--GROUP BY ACCOUNTID    
    
 
--تجميع جداول P1+P2 ->@PpT        
DECLARE  @PpT table(AccountId   int,MainPayType int ,MainAccountType int,C1 BIGINT,C2 BIGINT,C3 BIGINT,C4 BIGINT) 
INSERT INTO @PpT--(AccountId,MainPayType,MainAccountType,C1 ,C2  ,C3  ,C4  )    
SELECT     AccountId, MainPayType, MainAccountType, 0,0,C3, C4
FROM         #P1
union 
SELECT     AccountId, MainPayType, MainAccountType, c1,c2,0, 0
FROM         #P2


--ايجاد ستونهاي مورد نياز و ريختن آن در جدول 31    
select PpT.AccountId,
       PpT.MainPayType,
       PpT.MainAccountType,
      Case when   PpT.AccountId<0 Then (Select PayTypeTitle From PayType Where PayTypeID=-PpT.AccountId)   Else Accounttitle End AccountTitle,
      sum(C1)C1 ,sum(C2)C2  ,sum(C3) C3 ,sum(C4)C4
INTO #PP_31        
from @PpT PpT left outer join Account ON PpT.AccountID=AccounT.AccountID
group by PpT.AccountId,PpT.MainPayType,PpT.MainAccountType,ACCOUNT.AccountTitle 

--ايجاد ستونهاي مورد نياز و ريختن آن در جدول3     
Select Identity(int,1,1) ID ,          
       Isnull(MainAccountType,1) MainAccountType,    
       AccountId ,
       MainPayType,           
       AccountTitle  ,          
       Isnull(c1,0) C1,          
       Isnull(c2,0) C2,          
       C3,          
       C4,            
       Case When C4>C3 Then 0     Else C3-C4 End C5,            
       Case When C4>C3 Then C4-C3 Else 0     End C6 
Into #P3            
From #PP_31            
Order by AccountId 

           
IF EXISTS(SELECT  MainAccountType  FROM #P3  Where MainAccountType=9 And ACCOUNTID=4  )       
BEGIN  
 Update     #P3  
 Set 
  c1=ISNULL((select SUM(c1) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId )),0),  
  c2=ISNULL((select SUM(c2) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId )),0),  
  c3=ISNULL((select SUM(c3) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId )),0),  
  c4=ISNULL((select SUM(c4) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId )),0),  
  c5=ISNULL((select SUM(c5) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId )),0),  
  c6=ISNULL((select SUM(c6) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId )),0)   
 Where MainAccountType=9 and ACCOUNTID=4  
END    
ELSE  
BEGIN  
--SELECT MainAccountType,AccountId ,MainPayType,AccountTitle,C1,C2,C3,C4,C5,C6 FROM #P3
INSERT INTO  #P3(MainAccountType,AccountId ,MainPayType,AccountTitle,C1,C2,C3,C4,C5,C6)            
Select --ISNULL((SELECT MAX(ID) FROM #P3),0)+1 ,          
       9,    
       4,
       1,           
       'سود وام'  ,          
       ISNULL((select SUM(c1) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),          
       ISNULL((select SUM(c2) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),
       ISNULL((select SUM(c3) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),
       ISNULL((select SUM(c4) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),       
       ISNULL((select SUM(c5) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0),
       ISNULL((select SUM(c6) from  #P3 WHERE MainAccountType>1 and (MainPayType IN(7,-7)OR 4 =AccountId)  ),0) 
END  


If @parentId<>0           
Delete #P3 Where  dbo.Is_ParentId(MainAccountType,@parentId)=0  
                 
                 
SELECT         
       --MainAccountType,    
       AccountId ,
       --MainPayType,           
       AccountTitle  ,     
       sum(c1)c1,sum(c2)c2,sum(c3)c3,sum(c4)c4,sum(c5)c5,sum(c6)c6
into #P_Final
FROM #P3  
GROUP BY accountid/*,MainAccountType,MainPayType*/,AccountTitle  
    
----------------- ليست نهايي            
Select 1 ID,*            
From #P_Final
    
           
        
Union            
        
Select 9999 id ,0,'جمع',ISNULL(sum(c1),0),ISNULL(sum(c2),0),ISNULL(sum(c3),0),ISNULL(sum(c4),0),ISNULL(sum(c5),0),ISNULL(sum(c6),0)            
From #P_Final            
        
--Union            
        
--Select 0 id ,0,0,0,'اعضا',null,null,null,null,null,null            
--From #P_Final            
Order by ID            
            
            
Select @sumAmount=ISNULL(Sum(Cast(c6 as bigint))-sum(cast(c5 as bigint))     ,0 )      
From #P_Final            
            
----
--Drop table #P            
Drop table #P1
Drop table #P2
Drop table #P3
Drop table #P_Final
Drop table #PP_31
 

    
--SELECT IDENTITY(INT,1,1) ID ,  
--       ISNULL(ACCOUNTTYPEID,1) ACCOUNTTYPEID,    
--       ACCOUNTTITLE,  
--       ISNULL(C1,0) C1,  
--       ISNULL(C2,0) C2,  
--       C3,  
--       C4,    
--       CASE WHEN C4>C3 THEN 0 ELSE C3-C4 END C5,    
--       CASE WHEN C4>C3 THEN C4-C3 ELSE 0 END C6   
--INTO #P3    
--FROM #P1    
--LEFT JOIN #P2 ON #P1.ACCOUNTID=#P2.ACCOUNTID    
--LEFT JOIN ACCOUNT  ON #P1.ACCOUNTID=ACCOUNT.ACCOUNTID    
    
    
    
--DROP TABLE #P1    
--DROP TABLE #P2    
    
--IF @PARENTID<>0 DELETE #P3 WHERE  DBO.IS_PARENTID(ACCOUNTTYPEID,@PARENTID)=0    
    
--SELECT *    
--FROM #P3    
--UNION    
--SELECT 9999 ID ,0,'جمع',SUM(C1),SUM(C2),SUM(C3),SUM(C4),SUM(C5),SUM(C6)    
--FROM #P3    
--ORDER BY ID    
    
    
--SELECT @SUMAMOUNT=SUM(CAST(C6 AS BIGINT))-SUM(CAST(C5 AS BIGINT))    
--FROM #P3    
    
    
--DROP TABLE #P3  

GO
/****** Object:  StoredProcedure [dbo].[BALANCE_SHEET_BACKUP]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BALANCE_SHEET_BACKUP]
 @DATEFROM CHAR(10) , @DATETO CHAR(10),@PARENTID INT,@SUMAMOUNT BIGINT OUTPUT
AS

SELECT CASE AC1.ACCOUNTTYPEID WHEN 1 THEN -1 ELSE CREDITORACCOUNTID END ACCOUNTID,
AMOUNT,CAST(1 AS SMALLINT) STATUS,DATE  INTO #P
FROM PAYMENT
INNER JOIN ACCOUNT AC1 ON CREDITORACCOUNTID=AC1.ACCOUNTID

INSERT INTO #P
SELECT CASE AC2.ACCOUNTTYPEID WHEN 1 THEN -1 ELSE DEBTORACCOUNTID END,AMOUNT,-1 STATUS,DATE
FROM PAYMENT
INNER JOIN ACCOUNT AC2 ON DEBTORACCOUNTID=AC2.ACCOUNTID

SELECT ACCOUNTID,SUM(CASE WHEN STATUS=-1 THEN AMOUNT ELSE 0 END) C3,SUM(CASE WHEN STATUS=-1 THEN 0 ELSE AMOUNT END)C4 INTO #P1
FROM #P
GROUP BY ACCOUNTID


SELECT ACCOUNTID,SUM(CASE WHEN STATUS=-1 THEN AMOUNT ELSE 0 END) C1,SUM(CASE WHEN STATUS=-1 THEN 0 ELSE AMOUNT END) C2  INTO #P2
FROM #P
WHERE DATE BETWEEN @DATEFROM AND @DATETO
GROUP BY ACCOUNTID

DROP TABLE #P

SELECT IDENTITY(INT,1,1) ID ,ISNULL(ACCOUNTTYPEID,1) ACCOUNTTYPEID,
CASE WHEN #P1.ACCOUNTID=-1 THEN '  اعضا' ELSE ACCOUNTTITLE END ACCOUNTTITLE
,ISNULL(C1,0) C1,ISNULL(C2,0) C2,C3,C4,
CASE WHEN C4>C3 THEN 0 ELSE C3-C4 END C5,
CASE WHEN C4>C3 THEN C4-C3 ELSE 0 END C6 INTO #P3
FROM #P1
LEFT JOIN #P2 ON #P1.ACCOUNTID=#P2.ACCOUNTID
LEFT JOIN ACCOUNT  ON #P1.ACCOUNTID=ACCOUNT.ACCOUNTID



DROP TABLE #P1
DROP TABLE #P2

IF @PARENTID<>0 DELETE #P3 WHERE  DBO.IS_PARENTID(ACCOUNTTYPEID,@PARENTID)=0

SELECT *
FROM #P3
UNION
SELECT 9999 ID ,0,'جمع',SUM(C1),SUM(C2),SUM(C3),SUM(C4),SUM(C5),SUM(C6)
FROM #P3
ORDER BY ID


SELECT @SUMAMOUNT=SUM(CAST(C6 AS BIGINT))-SUM(CAST(C5 AS BIGINT))
FROM #P3


DROP TABLE #P3



GO
/****** Object:  StoredProcedure [dbo].[Calc_benefits]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Calc_benefits]
@AccountID	INT,--
@FamilyID	INT,--
@Year		INT,
@Month		TINYINT,
@WithLoan	BIT,
@doForSetteld BIT,--
@percent float
AS
BEGIN
	
	select a.AccountID,'' as documentno,'' as insertedDate, @percent as BenefitPercent,a.AccountNo,@Year as Year,@Month as Month,a.AccountTitle, CONVERT(float,0) AnnualAvragePrice  ,CONVERT(float,0) as InsertedBenefitPrice 
	into #tblTemp
	from Account a  
	WHERE 
	(@AccountID = 0 OR @AccountID = a.accountid)
	AND ((@FamilyID = 0) OR (@FamilyID is null) OR (@FamilyID = a.Familyid))
	AND (@doForSetteld = 1 OR a.IsActive = 1)
	and a.AccountTypeID = 1
	and
	a.AccountID not in
	(SELECT b.ACCOUNTID
	FROM  Benefit b 
	WHERE (b.YEAR = @Year and (@Month = 0 or (b.Month = @Month  or b.Month = 0 ))))
	
	declare @AccID int
	DECLARE @Score BIGINT
	DECLARE @StartDate varchar(10)
	DECLARE @EndDate varchar(10)
	
	if @Month = 0
		set @StartDate = CONVERT(varchar(4),@Year)+'/01/01'
	else if @Month <10
		set @StartDate = CONVERT(varchar(4),@Year)+'/0'+CONVERT(varchar(1),@Month)+'/01'
	else
		set @StartDate = CONVERT(varchar(4),@Year)+'/'+CONVERT(varchar(2),@Month)+'/01'
	
	if @Month = 0
		set @EndDate = CONVERT(varchar(4),@Year)+'/12/30'
	else if @Month <10
		set @EndDate = CONVERT(varchar(4),@Year)+'/0'+CONVERT(varchar(1),@Month)+'/31'
	else
		set @EndDate = CONVERT(varchar(4),@Year)+'/'+CONVERT(varchar(2),@Month)+'/31'	
	
	DECLARE MAIN_CURSOR CURSOR FOR    
           SELECT AccountID FROM #tblTemp    
	OPEN  MAIN_CURSOR    
	FETCH NEXT FROM MAIN_CURSOR INTO @AccID    
    
	WHILE @@FETCH_STATUS=0    
	BEGIN    
		EXEC Calculate_Account_Score
			@AccID, @StartDate, @EndDate, @WithLoan, @Score OUTPUT
    
		IF @Score IS NULL
			SET @Score = 0
		    
		update #tblTemp 
		set AnnualAvragePrice = @Score, InsertedBenefitPrice = convert(bigint,@Score *@percent/100)
		where AccountID=@AccID
		    
		FETCH NEXT FROM MAIN_CURSOR INTO @score    
	END    
    
	CLOSE MAIN_CURSOR    
	DEALLOCATE MAIN_CURSOR  
	
	select * from #tblTemp WHERE AnnualAvragePrice>0
END
GO
/****** Object:  StoredProcedure [dbo].[CALCULATE_WAGE_INTEREST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CALCULATE_WAGE_INTEREST]
@LOANAMOUNT BIGINT ,@LOANTYPEID SMALLINT,@WAGEAMOUNT BIGINT OUTPUT,@INTERESTAMOUNT BIGINT OUTPUT
AS
SELECT  @WAGEAMOUNT=FIXWAGE+(CAST(WAGEPERCENT AS BIGINT)*@LOANAMOUNT)/100,@INTERESTAMOUNT=(INTERESTPERCENT*@LOANAMOUNT)/100
FROM    LOANTYPE
WHERE   LOANTYPEID = @LOANTYPEID

SET @WAGEAMOUNT=ISNULL(@WAGEAMOUNT,0)
SET @INTERESTAMOUNT=ISNULL(@INTERESTAMOUNT,0)


GO
/****** Object:  StoredProcedure [dbo].[CALCULATE_WAGE_INTEREST_2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CALCULATE_WAGE_INTEREST_2]
@LOANAMOUNT BIGINT, @partNumber INT,@LOANTYPEID SMALLINT,@WAGEAMOUNT BIGINT OUTPUT,@INTERESTAMOUNT BIGINT OUTPUT
AS
SELECT  @WAGEAMOUNT=FIXWAGE+(CAST(WAGEPERCENT AS BIGINT)*@LOANAMOUNT)/100,@INTERESTAMOUNT=(INTERESTPERCENT*(@partNumber+1)*@LOANAMOUNT)/2400
FROM    LOANTYPE
WHERE   LOANTYPEID = @LOANTYPEID

SET @WAGEAMOUNT=ISNULL(@WAGEAMOUNT,0)
SET @INTERESTAMOUNT=ISNULL(@INTERESTAMOUNT,0)
GO
/****** Object:  StoredProcedure [dbo].[CANDELETE_MONTHLYPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CANDELETE_MONTHLYPAYMENT] @ACCOUNTID INT ,@CANDELETE BIT OUT
AS    
IF (SELECT DBO.BALANCE(@ACCOUNTID,'9'))=0
  SET  @CANDELETE=0
ELSE  
  SET @CANDELETE=1
 
 


GO
/****** Object:  StoredProcedure [dbo].[CANDELETE_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
 
CREATE  PROCEDURE [dbo].[CANDELETE_PAYMENT]    @PaymentId int ,@CANDELETE BIT OUT    
AS          
   
Declare @DOCNO CHAR(10), @DATE CHAR(10),@PAYTYPEID int ,@REFRENCEPaymentId INT    
    
SELECT  @DOCNO= DOCumentNO ,  @PayTypeId=PayTypeId ,@Date=[Date],@REFRENCEPaymentId=REFRENCEPaymentId     
From payment     
where paymentid=@PaymentId  


IF  EXISTS(SELECT DOCUMENTNO           
              FROM PAYMENT           
              WHERE PayTypeSecondId=8 and
                    REFRENCEPaymentId=@PaymentId      
)
      SET @CANDELETE=0 
ELSE          IF  EXISTS(SELECT DOCUMENTNO           
              FROM PAYMENT           
              WHERE PayTypeSecondId=8 and     
                    PAYTYPEID=@PAYTYPEID AND     
                    DOCUMENTNO=@DOCNO   AND           
                    [DATE]=@DATE  AND   
                    REFRENCEPaymentId=@REFRENCEPaymentId      
)           
      
      SET @CANDELETE=0      
ELSE      
      SET @CANDELETE=1   

GO
/****** Object:  StoredProcedure [dbo].[CANDELETEMONTHLYTYPE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CANDELETEMONTHLYTYPE]  
   @MONTHLYTYPEID INT,  
   @CANDELETE  BIT OUT  
AS  

 IF   (SELECT     COUNT(1)  
                     FROM         FORCEPAYMENT  
                     WHERE     (FORCETYPEID = 2) AND PARENTID IN( SELECT  ACCOUNTID  
                                                                  FROM         ACCOUNT  
                                                                  WHERE MONTHLYTYPEID=@MONTHLYTYPEID))>0  
 SET @CANDELETE=0-- CAN NOT DELETE  
ELSE  
 SET @CANDELETE=1-- CAN DELETE






GO
/****** Object:  StoredProcedure [dbo].[CHANGE_USERPASSWORD]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[CHANGE_USERPASSWORD]
@USERID INT ,@PASSWORD VARCHAR(20)
AS

UPDATE  [USERS]
   SET [PASSWORD] = @PASSWORD
 WHERE USERID=@USERID




GO
/****** Object:  StoredProcedure [dbo].[Count_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE  PROCEDURE [dbo].[Count_PAYMENT]    @PaymentId INT ,@DelDATE  char(10) ,@CountOfPayment INT OUT      
AS            

 
--DECLARE  @PaymentId Int,@DelDATE  char(10),@USERID INT          
DECLARE  @Count  INT
 SET   @Count =0
--SET   @PaymentId=335 
--SET   @DelDATE  ='1387/04/01'
--SET   @USERID=5
 
DECLARE @_PaymentID INT
        DECLARE Payment_Cursor CURSOR FOR    
		Select PaymentID 
		From   Payment
		Where  DOCumentNO =( Select  DocumentNO 
							 From    dbo.Payment  
							 Where   PaymentID=@PaymentId ) AND  
									 DATE   BETWEEN  SUBSTRING(@DelDATE,1,4) +'/01/01' AND 
									 SUBSTRING(@DelDATE,1,4)+'/12/30' 
        OPEN Payment_Cursor     

 
DECLARE @CANDELETE BIT     
 FETCH NEXT FROM Payment_Cursor INTO @_PaymentID--,@PayTypeId ,@Date,@REFRENCEPaymentId
 WHILE @@FETCH_STATUS = 0    
 BEGIN 
    EXEC CANDELETE_PAYMENT     @_PaymentID ,@CANDELETE   OUT
     
    IF (@CANDELETE=1)
    SET   @Count=@Count+1
    FETCH NEXT FROM Payment_Cursor INTO @_PaymentID   
 END    
 CLOSE Payment_Cursor    
 DEALLOCATE Payment_Cursor   
 SET   @CountOfPayment =@Count
 
GO
/****** Object:  StoredProcedure [dbo].[CountOfLoanForEachGaurantor]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

 


CREATE PROCEDURE [dbo].[CountOfLoanForEachGaurantor] @GaurantorContactID as int,  @Result int OUTPUT
AS
SET @Result=ISNULL((SELECT  COUNT( LoanID) FROM LoanGaurantor WHERE GaurantorContactID=@GaurantorContactID),0)

GO
/****** Object:  StoredProcedure [dbo].[CreateSmsTextForSumPayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[CreateSmsTextForSumPayment] ( @ForcePaymentIds VARCHAR(MAX) )
AS
BEGIN
      DECLARE @sql VARCHAR(MAX)
      SET @sql = '  SELECT  s.* , ac.accountTitle , c.Phones , DBO.EXIST(ac.ACCOUNTID , ''9'') exist
                    FROM    ( SELECT    ParentID , ForceTypeID , MIN(MatureDate) _date , SUM(Amount + InterestAmount) _sum , dbo.GetListOrderNo(Parentid , ForceTypeID , ''' + @ForcePaymentIds + ''') OrderNos , ( SELECT ISNULL(SUM(Amount + InterestAmount) , 0)
                                                                                                                                                                                     FROM   dbo.ForcePayment fp
                                                                                                                                                                                     WHERE  fp.ParentID = ff.ParentID AND fp.paid = 0 ) BM
                              FROM      dbo.ForcePayment ff
                              WHERE     ForcePaymentID IN (' + SUBSTRING(@ForcePaymentIds , 1 , LEN(@ForcePaymentIds) - 1) + ')
                              GROUP BY  ParentID , ForceTypeID ) s
                            INNER JOIN Loan l ON l.LoanId = s.parentid AND s.ForceTypeID = 1
                            INNER JOIN account ac ON ac.accountid = l.AccountId
                            INNER JOIN dbo.Contact c ON c.ContactID = ac.ContactID
                            
                    UNION ALL

                    SELECT  s.* , ac.accountTitle , c.Phones , DBO.EXIST(ac.ACCOUNTID , ''9'') EXIST
                    FROM    ( SELECT    ParentID , ForceTypeID , MIN(MatureDate) _date , SUM(Amount + InterestAmount) _sum , dbo.GetListOrderNo(Parentid , ForceTypeID , ''' + @ForcePaymentIds + ''') OrderNos , ( SELECT ISNULL(SUM(Amount + InterestAmount) , 0)
                                                                                                                                                                                     FROM   dbo.ForcePayment fp
                                                                                                                                                                                     WHERE  fp.ParentID = ff.ParentID AND fp.paid = 0 ) BM
                              FROM      dbo.ForcePayment ff
                              WHERE     ForcePaymentID IN (' + SUBSTRING(@ForcePaymentIds , 1 , LEN(@ForcePaymentIds) - 1) + ')
                              GROUP BY  ParentID , ForceTypeID ) s
                            INNER JOIN account ac ON ac.accountid = s.ParentID AND s.ForceTypeID = 2
                            INNER JOIN dbo.Contact c ON c.ContactID = ac.ContactID
                '      
      EXEC(@sql)    
END

GO
/****** Object:  StoredProcedure [dbo].[DailyAverage]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DailyAverage]
       @Year CHAR(4) ,
       @ReportKind SMALLINT ,
       @AccountID INT = 0
AS
BEGIN
      IF EXISTS ( SELECT    *
                  FROM      dbo.sysobjects
                  WHERE     id = OBJECT_ID(N'[dbo].[#P]') AND OBJECTPROPERTY(id , N'IsUserTable') = 1 )
         DROP TABLE #P    
    
      IF EXISTS ( SELECT    *
                  FROM      dbo.sysobjects
                  WHERE     id = OBJECT_ID(N'[dbo].[#_FirstPrice]') AND OBJECTPROPERTY(id , N'IsUserTable') = 1 )
         DROP TABLE #_FirstPrice    
    
      IF EXISTS ( SELECT    *
                  FROM      dbo.sysobjects
                  WHERE     id = OBJECT_ID(N'[dbo].[#P2]') AND OBJECTPROPERTY(id , N'IsUserTable') = 1 )
         DROP TABLE #P2    
    
    
      DECLARE @ToDate VARCHAR(10) ,
              @FromDate VARCHAR(10)    
    
      SET @FromDate = @Year + '/01/01'    
      SET @ToDate = ( SELECT    DBO.ShamsiIncDate(@Year + '/01/01' , 1 , 0 , 0) )    
    
    
      SELECT    CreditorAccountId AccountId , Amount , CAST(1 AS SMALLINT) status , Date , CAST(0 AS FLOAT) TotalPrice
      INTO      #P
      FROM      Payment
                INNER JOIN Account ac1 ON creditorAccountId = ac1.AccountId
      WHERE     ACCOUNTTypeId = 1 AND ( @AccountID = 0 OR ac1.AccountID = @AccountID )    
           
      INSERT    INTO #P
                SELECT  DebtorAccountId , Amount , -1 status , Date , 0
                FROM    Payment
                        INNER JOIN Account AC2 ON DebtorAccountId = ac2.AccountId
                WHERE   ACCOUNTTypeId = 1 AND ( @AccountID = 0 OR AC2.AccountID = @AccountID )    
      SELECT    CAST(0 AS INTEGER) AccountId , CAST(0 AS FLOAT) /*BeforPrice_TMP */ AS MojoodiEbtedayeDore , CAST(0 AS FLOAT) /*@Price*/ mojoodiRooz , CAST(0 AS FLOAT) /*@BeforPrice*/ MojRoozJamShodehBaRozGhabl , CAST(0 AS INT) /*@BeforPrice*/ TedadRooz , CAST('0000/00/00' AS VARCHAR(10)) _DATE , CAST(0 AS FLOAT) /*TotalPrice*/ TotalPrice
      INTO      #p2    
    
      SELECT DISTINCT
                AccountId , SUM(AMOUNT * STATUS) FirstPrice
      INTO      #_FirstPrice
      FROM      #P
      WHERE     date < @FromDate AND ( @AccountID = 0 OR AccountID = @AccountID )
      GROUP BY  AccountId     
             
      DECLARE @_AccountId INT ,
              @Price FLOAT ,
              @BeforPrice FLOAT ,
              @DATE VARCHAR(10) ,
              @BeforAccountId INT ,
              @BeforPrice_TMP FLOAT    
      SET @BeforPrice = 0    
      SET @BeforAccountId = 0    
    
      DECLARE Payment_Cursor CURSOR
      FOR
      SELECT    AccountId , SUM(AMOUNT * STATUS) PRICE , DATE
      FROM      #P
      WHERE     DATE BETWEEN @FromDate AND @ToDate AND ( @AccountID = 0 OR AccountID = @AccountID )
      GROUP BY  AccountId , DATE
      ORDER BY  AccountId , DATE    
      OPEN Payment_Cursor     
    
      FETCH NEXT FROM Payment_Cursor INTO @_AccountId , @Price , @DATE    
      WHILE @@FETCH_STATUS = 0
            BEGIN    
                  SET @BeforPrice_TMP = 0    
                  IF ( @BeforAccountId <> @AccountId )
                     BEGIN    
                           SET @BeforPrice = ISNULL(( SELECT    FirstPrice
                                                      FROM      #_FirstPrice
                                                      WHERE     ACCOUNTID = @_Accountid ) , 0)     
                           SET @BeforPrice_TMP = @BeforPrice    
                     END    
    
                  SET @BeforPrice = @BeforPrice + @Price    
    
               
--           select @BeforPrice_TMP 'موجودي ابتداي دوره',@Price as 'موجودي روز',@BeforPrice as 'موجودي روز که با روزهاي قبل جمع شده', dbo.ShamsiDateDiff(@DATE,'1390/01/01') as  'تعداد روز'    
             
               
                  INSERT    INTO #p2
                            SELECT  @_AccountId , @BeforPrice_TMP , @Price , @BeforPrice , dbo.ShamsiDateDiff(@DATE , @ToDate) AS Total_Price , @DATE AS _date ,    
--                  @BeforPrice*dbo.ShamsiDateDiff(@DATE,@ToDate) as TotalPrice     
                                    @Price * dbo.ShamsiDateDiff(@DATE , @ToDate) AS TotalPrice                 
                  SET @BeforAccountId = @_AccountId     
                  FETCH NEXT FROM Payment_Cursor INTO @_AccountId , @price , @DATE    
            END    
      CLOSE Payment_Cursor    
      DEALLOCATE Payment_Cursor      
    
      IF @ReportKind = 1
         SELECT #P2.ACCOUNTID , Account.AccountNo , AccountTitle , ( ISNULL(( SELECT TOP 1
                                                                                        MojoodiEbtedayeDore
                                                                              FROM      #P2 PP2
                                                                              WHERE     #P2.ACCOUNTID = PP2.AccountId AND MojoodiEbtedayeDore <> 0 ) , 0) / 365 ) + SUM(TotalPrice / 365) AS DailyAvrage
         FROM   #p2
                INNER JOIN Account ON Account.AccountId = #P2.AccountId
         GROUP BY #P2.ACCOUNTID , Account.AccountTitle , Account.AccountNo
         ORDER BY #P2.ACCOUNTID      
    
      IF @ReportKind = 2
         SELECT #P2.* , Account.AccountTitle , Account.AccountNo , ROUND(( TotalPrice / 365 ) , 0) AS DailyAvr
         FROM   #p2
                INNER JOIN Account ON Account.AccountId = #P2.AccountId
         ORDER BY #P2.ACCOUNTID , #P2._Date    
     
     
      DROP TABLE #_FirstPrice    
      DROP TABLE #p    
      DROP TABLE #p2    
END
GO
/****** Object:  StoredProcedure [dbo].[DEACTIVATE_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DEACTIVATE_ACCOUNT]
@ACCOUNTID INT
AS


IF DBO.BALANCE(@ACCOUNTID,'9')=0
UPDATE ACCOUNT
   SET [ISACTIVE] = 0,ACCOUNTNO='DEL'+ACCOUNTNO
 WHERE ACCOUNTID=@ACCOUNTID



GO
/****** Object:  StoredProcedure [dbo].[DELETE_ACCESS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DELETE_ACCESS]
@ACCESSID  TINYINT
AS

DELETE ACCESSOBJECT
WHERE ACCESSID=@ACCESSID


DELETE ACCESS
WHERE ACCESSID=@ACCESSID





GO
/****** Object:  StoredProcedure [dbo].[DELETE_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DELETE_ACCOUNT]
@ACCOUNTID INT
AS

DELETE LOANGAURANTOR WHERE  LOANID IN (SELECT LOANID FROM LOAN WHERE ACCOUNTID=@ACCOUNTID)
DELETE LOANPRIORITY WHERE ACCOUNTID=@ACCOUNTID
DELETE FORCEPAYMENT WHERE  PARENTID IN (SELECT LOANID FROM LOAN WHERE ACCOUNTID=@ACCOUNTID) AND FORCETYPEID=1
DELETE FORCEPAYMENT WHERE  PARENTID=@ACCOUNTID AND FORCETYPEID=1
DELETE LOANREQUEST WHERE ACCOUNTID=@ACCOUNTID
DELETE LOAN WHERE ACCOUNTID=@ACCOUNTID
DELETE PAYMENT WHERE CREDITORACCOUNTID=@ACCOUNTID
DELETE PAYMENT WHERE DEBTORACCOUNTID=@ACCOUNTID
DELETE CONTACT WHERE CONTACTID=(SELECT CONTACTID FROM ACCOUNT WHERE ACCOUNTID=@ACCOUNTID)
DELETE ACCOUNT WHERE ACCOUNTID=@ACCOUNTID


GO
/****** Object:  StoredProcedure [dbo].[DELETE_ALLDATA]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DELETE_ALLDATA]
AS
DELETE WORDTEMPLATE
DELETE ACCOUNT WHERE ACCOUNTID>6
DELETE PAYMENT
DELETE FINANCIALNOTE
DELETE NOTE
DELETE ATTACHMENT
DELETE LOANREQUEST
DELETE LOANPRIORITY
DELETE LOANTYPE
DELETE LOANGAURANTOR
DELETE FORCEPAYMENT
DELETE LOAN
DELETE LOANAMOUNT
DELETE MONTHLYTYPE
DELETE FAMILY
DELETE CONTACT
DELETE ERRORMESSAGE
DELETE USERLOGINLOGOUT


DBCC CHECKIDENT ('ACCOUNT', RESEED,6)
DBCC CHECKIDENT ('USERLOGINLOGOUT', RESEED,1)
DBCC CHECKIDENT ('WORDTEMPLATE', RESEED,1)
DBCC CHECKIDENT ('PAYMENT', RESEED,1)
DBCC CHECKIDENT ('FINANCIALNOTE', RESEED,1)
DBCC CHECKIDENT ('NOTE', RESEED,1)
DBCC CHECKIDENT ('ATTACHMENT', RESEED,1)
DBCC CHECKIDENT ('LOANREQUEST', RESEED,1)
DBCC CHECKIDENT ('LOANPRIORITY', RESEED,1)
DBCC CHECKIDENT ('LOANTYPE', RESEED,1)
DBCC CHECKIDENT ('LOANGAURANTOR', RESEED,1)
DBCC CHECKIDENT ('FORCEPAYMENT', RESEED,1)
DBCC CHECKIDENT ('LOAN', RESEED,1)
DBCC CHECKIDENT ('LOANAMOUNT', RESEED,1)
DBCC CHECKIDENT ('MONTHLYTYPE', RESEED,1)
DBCC CHECKIDENT ('FAMILY', RESEED,1)
DBCC CHECKIDENT ('CONTACT', RESEED,1)
DBCC CHECKIDENT ('ERRORMESSAGE', RESEED,1)
EXEC Y_REINDEXTABLES


GO
/****** Object:  StoredProcedure [dbo].[DELETE_ATTACHMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DELETE_ATTACHMENT]
@ATTACHMENTID INT
AS
DELETE ATTACHMENT
      WHERE ATTACHMENTID=@ATTACHMENTID




GO
/****** Object:  StoredProcedure [dbo].[Delete_benefits]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_benefits]
@AccountID	INT,--
@FamilyID	INT,--
@Year		INT,
@Month		TINYINT,
@WithLoan	BIT,
@doForSetteld BIT--

AS
BEGIN
	delete from payment where paymentid in
	(SELECT b.paymentID
	FROM Account a left join Benefit b on 
	(b.YEAR = @Year and a.AccountID = b.ACCOUNTID and (@Month = 0 or (b.Month = @Month  or b.Month = 0 )))-- INTO #Acc
	WHERE (@AccountID = 0 OR @AccountID = a.accountid)
	AND ((@FamilyID = 0) OR (@FamilyID is null) OR (@FamilyID = a.Familyid))
	AND (@doForSetteld = 1 OR a.IsActive = 1)
	and a.AccountTypeID = 1
	and b.paymentID is not null)
	
	delete from Benefit where paymentid in
	(SELECT b.paymentID
	FROM Account a left join Benefit b on 
	(b.YEAR = @Year and a.AccountID = b.ACCOUNTID and (@Month = 0 or (b.Month = @Month  or b.Month = 0 )))-- INTO #Acc
	WHERE (@AccountID = 0 OR @AccountID = a.accountid)
	AND ((@FamilyID = 0) OR (@FamilyID is null) OR (@FamilyID = a.Familyid))
	AND (@doForSetteld = 1 OR a.IsActive = 1)
	and a.AccountTypeID = 1
	and b.paymentID is not null) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CONTACT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DELETE_CONTACT]
@CONTACTID INT
AS
DELETE FROM CONTACT
WHERE     (CONTACTID = @CONTACTID)




GO
/****** Object:  StoredProcedure [dbo].[DELETE_LOAN]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

       
 
CREATE  PROCEDURE [dbo].[DELETE_LOAN]  @LOANID INT          
AS         
        
Begin TRAN
--DECLARE @LOANID INT
--SET @LOANID=90 
 
 
DECLARE  @PAYMENTID INT
DECLARE  @documentno VARCHAR(10)
DECLARE  @Date VARCHAR(10)

                
SET @PAYMENTID=(SELECT PAYMENTID   FROM LOAN  WHERE LOANID=@LOANID)
SET @documentno=(SELECT documentno FROM dbo.Payment WHERE PaymentID IN (SELECT PaymentID FROM dbo.Loan WHERE LoanID=@loanId))       
SET @Date=(SELECT TOP 1 date FROM dbo.Payment WHERE PAYMENTID IN (SELECT PAYMENTID FROM LOAN  WHERE LOANID=@LOANID) )



    
 DELETE PAYMENT WHERE PAYMENTID  IN (SELECT WAGEPAYMENTID FROM LOAN  WHERE LOANID=@LOANID)          
 DELETE PAYMENT WHERE PAYMENTID  IN (SELECT PAYMENTID FROM LOAN  WHERE LOANID=@LOANID)          
 DELETE PAYMENT WHERE PAYMENTID  IN (SELECT PAYMENTID FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=@LOANID)          
 DELETE PAYMENT WHERE RELATEDID  IN (SELECT FORCEPAYMENTID FROM FORCEPAYMENT WHERE PARENTID=@LOANID AND  FORCETYPEID=1 ) AND PayTypeID=7    
/* DELETE PAYMENT WHERE documentno IN ( SELECT documentno   
                                      FROM dbo.Payment   
                                      WHERE PaymentID IN 
                                         (SELECT PaymentID FROM dbo.Loan WHERE LoanID=@loanId)
                                     ) AND 
                                     Date =(SELECT TOP 1 date FROM dbo.Payment WHERE PAYMENTID IN (SELECT PAYMENTID FROM LOAN  WHERE LOANID=@LOANID) )   
     
 */
 DELETE dbo.Payment  WHERE PaymentID IN(SELECT PaymentID FROM dbo.ForcePayment WHERE ParentID=@loanId AND    FORCETYPEID=1 )
 DELETE  FROM PAYMENT WHERE Documentno =@documentno AND Date =@Date


 UPDATE FinancialNote_Detail       
 SET ForcePaymentID=NULL      
 WHERE ForcePaymentID IN (SELECT FORCEPAYMENTID FROM   FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=@LOANID )     
      
 
 
 DELETE FORCEPAYMENT  WHERE FORCETYPEID=1 AND PARENTID=@LOANID  
 DELETE ATTACHMENT    WHERE DOCUMENTID=@LOANID AND DOCUMENTTYPEID=2          
 DELETE LOANGAURANTOR WHERE LOANID=@LOANID          
 DELETE LOAN WHERE LOANID=@LOANID          
      
Commit Tran          
      

GO
/****** Object:  StoredProcedure [dbo].[DELETE_LOANGAURANTOR]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DELETE_LOANGAURANTOR]
@LOANGAURANTORID INT
AS

DELETE LOANGAURANTOR
      WHERE LOANGAURANTORID=@LOANGAURANTORID




GO
/****** Object:  StoredProcedure [dbo].[DELETE_LOANPRIORITY]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DELETE_LOANPRIORITY]
@LOANPRIORITYID INT
AS
DECLARE @ISURGENCY BIT ,@PRIORITY SMALLINT

SELECT @ISURGENCY=ISURGENCY,@PRIORITY=PRIORITY FROM LOANPRIORITY WHERE LOANPRIORITYID=@LOANPRIORITYID

UPDATE LOANPRIORITY   SET PRIORITY=PRIORITY-1    WHERE ISURGENCY=@ISURGENCY AND PRIORITY>@PRIORITY

DELETE FROM LOANPRIORITY      WHERE LOANPRIORITYID=@LOANPRIORITYID




GO
/****** Object:  StoredProcedure [dbo].[DELETE_LOANPRIORITY_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DELETE_LOANPRIORITY_BYACCOUNTID]
@ACCOUNTID INT ,@ISURGENCY BIT
AS
DECLARE @LOANPRIORITYID INT
SELECT @LOANPRIORITYID=LOANPRIORITYID FROM LOANPRIORITY WHERE  ISURGENCY=@ISURGENCY AND ACCOUNTID=@ACCOUNTID

EXEC DELETE_LOANPRIORITY @LOANPRIORITYID




GO
/****** Object:  StoredProcedure [dbo].[DELETE_LOANREQUEST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DELETE_LOANREQUEST]
@LOANREQUESTID INT
AS
DELETE LOANREQUEST
WHERE LOANREQUESTID=@LOANREQUESTID




GO
/****** Object:  StoredProcedure [dbo].[Delete_PayedBenefit]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------
CREATE PROCEDURE  [dbo].[Delete_PayedBenefit](@YEAR char(4),@ACCOUNTID int)
AS
 
declare @insertionDate varchar(10)
select @insertionDate = InsertedDate from Benefit where [YEAR]=@YEAR AND (ACCOUNTID=@ACCOUNTID OR @ACCOUNTID=0)

Select * into #b From  Benefit    WHERE [YEAR]=@YEAR AND (ACCOUNTID=@ACCOUNTID OR @ACCOUNTID=0)

DELETE FROM PAYMENT 
WHERE CreditorAccountId IN(SELECT ACCOUNTID  FROM #b WHERE [YEAR]=@YEAR) AND 
      DOCUMENTNO        IN(SELECT DOCUMENTNO FROM #b WHERE [YEAR]=@YEAR) AND
      date = @insertionDate


DELETE FROM Benefit  WHERE [YEAR]=@YEAR AND DOCUMENTNO IN (SELECT DOCUMENTNO  FROM #b    WHERE [YEAR]=@YEAR) AND (ACCOUNTID=@ACCOUNTID OR @ACCOUNTID=0)
GO
/****** Object:  StoredProcedure [dbo].[DELETE_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DELETE_PAYMENT]
@PAYMENTID INT
AS

DELETE PAYMENT WHERE PAYMENTID=@PAYMENTID

GO
/****** Object:  StoredProcedure [dbo].[DELETE_PAYMENT_AllFORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[DELETE_PAYMENT_AllFORCEPAYMENT]    @PaymentId Int, @DelDATE  char(10) /*تاريخ روز حذف*/,@USERID INT     
           --@DOCNO CHAR(10), @DelDATE/*تاريخ روز حذف*/ CHAR(10),@USERID INT ,@PayTypeId int ,@Date char(10) /*تاريخ کورد حذف شده*/    
AS    
--DECLARE  @PaymentId Int,@DelDATE  char(10),@USERID INT          
      
--SET   @PaymentId=335 
--SET   @DelDATE  ='1387/04/01'
--SET   @USERID=5
      
        DECLARE @_PaymentID INT
        DECLARE Payment_Cursor CURSOR FOR    
		Select PaymentID 
		From   Payment
		Where  DOCumentNO =( Select  DocumentNO 
							 From    dbo.Payment  
							 Where   Paymentid=@PaymentId ) AND  
									 DATE   BETWEEN  SUBSTRING(@DelDATE,1,4) +'/01/01' AND SUBSTRING(@DelDATE,1,4)+'/12/30' 
        OPEN Payment_Cursor     
 
     
 FETCH NEXT FROM Payment_Cursor INTO @_PaymentID 
 WHILE @@FETCH_STATUS = 0    
 BEGIN    
--//////////////////////////////////////////////////////////////////////////////////////
		DECLARE @DOCNO CHAR(10),  @PayTypeId INT , @Date char(10) /*تاريخ کورد حذف شده*/    
		SELECT  @DOCNO= DOCumentNO   ,  
		        @PayTypeId=PayTypeId ,
		        @Date=[Date]     
		From payment     
		Where paymentid=@_PaymentID    
		    
		Declare  @CANDELETE BIT             
		Exec CANDELETE_PAYMENT  @_PaymentID ,@CANDELETE   OUTPUT
		    
		IF(@CANDELETE=1)     
		BEGIN              
		  BEGIN TRAN T1              
		  SET @DOCNO=LTRIM(RTRIM(@DOCNO))          
		          
		  DECLARE @TIME CHAR(5) ,  @SameDate char(10) ,@SameInsertDate char(10),@TypeId SMALLINT           
		          
		  SET @SameDate       =@Date           
		  SET @SameInsertDate =@DelDATE           
		  SET @TypeId         =@PayTypeId     
		              
		  EXEC GET_TIME  @TIME OUTPUT               
		                 
		  INSERT INTO PAYMENT(DEBTORACCOUNTID             
							 ,CREDITORACCOUNTID          
							 ,DATE           
							 ,TIME          
							 ,InsertDate           
							 ,AMOUNT                         
							 ,COMMENT                
							 ,INSERTUSERID              
							 ,PAYTYPEID              
							 ,DOCUMENTNO      
							 ,PayTypeSecondId    
							 ,RefrencePaymentId)              
		  SELECT              CREDITORACCOUNTID ,DEBTORACCOUNTID  ,--@DATE    
							  @SameDate ,    
							  @TIME,    
							  @SameInsertDate,SUM(AMOUNT)AMOUNT              
							 , ' سند معکوس '+(SELECT PAYTYPETITLE               
											  FROM PAYTYPE               
											  WHERE PAYTYPEID=M.PAYTYPEID) +  ' شماره ' +LTRIM(RTRIM(CAST(@_PaymentId AS VARCHAR(10))))COMMENT  
							 ,@USERID              
							 ,@TypeId --  8                                           
							 ,@DOCNO      
							 ,8    
							 ,@_PaymentId              
		                
		  FROM PAYMENT  M              
		  WHERE PaymentId=@_PaymentID   AND      
				DocumentNo=@DocNo       And             
			   [DATE]=@Date    
		  GROUP BY CREDITORACCOUNTID,DEBTORACCOUNTID,PAYTYPEID              
		                
		            
		                
		                
            
		  UPDATE FORCEPAYMENT              
		  SET PAID =0 ,PAYMENTID=NULL              
		  WHERE FORCEPAYMENTID IN( SELECT   DISTINCT RELATEDID              
														   FROM              PAYMENT               
														   WHERE   DOCUMENTNO=@DOCNO AND               
																   RELATEDID IS NOT NULL AND               
																   DATE BETWEEN  SUBSTRING(@DATE,1,4) +'/01/01' AND SUBSTRING(@DATE,1,4)+'/12/30' )  OR            
		            
								  PAYMENTID IN( SELECT   DISTINCT PAYMENTID              
														   FROM    PAYMENT               
														   WHERE   DOCUMENTNO=@DOCNO AND               
																   DATE BETWEEN  SUBSTRING(@DATE,1,4) +'/01/01' AND SUBSTRING(@DATE,1,4)+'/12/30' )             
		                
		              
		COMMIT TRAN T1               
		              
		              
		END--NOT EXISTS            
		         
--//////////////////////////////////////////////////
    FETCH NEXT FROM Payment_Cursor INTO @_PaymentID  
 END    
 CLOSE Payment_Cursor    
 DEALLOCATE Payment_Cursor  

GO
/****** Object:  StoredProcedure [dbo].[DELETE_PAYMENT_FORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DELETE_PAYMENT_FORCEPAYMENT]    @PaymentId Int, @DelDATE  char(10) /*تاريخ روز حذف*/,@USERID INT    
           --@DOCNO CHAR(10), @DelDATE/*تاريخ روز حذف*/ CHAR(10),@USERID INT ,@PayTypeId int ,@Date char(10) /*تاريخ کورد حذف شده*/    
AS    
DECLARE @DOCNO CHAR(10),  @PayTypeId int ,@Date char(10) /*تاريخ کورد حذف شده*/    
    
SELECT  @DOCNO= DOCumentNO ,  @PayTypeId=PayTypeId ,@Date=[Date]     
From payment     
where paymentid=@PaymentId    
    
declare  @CANDELETE bit             
exec CANDELETE_PAYMENT  @PaymentId ,@CANDELETE   OUTput               
    
IF(@CANDELETE=1)     
BEGIN              
  BEGIN TRAN T1              
  SET @DOCNO=LTRIM(RTRIM(@DOCNO))          
          
  DECLARE @TIME CHAR(5) ,  @SameDate char(10) ,@SameInsertDate char(10),@TypeId SMALLINT           
          
  SET @SameDate       =@Date           
  SET @SameInsertDate =@DelDATE           
  SET @TypeId         =@PayTypeId     
              
  EXEC GET_TIME  @TIME OUTPUT               
                 
  INSERT INTO PAYMENT(DEBTORACCOUNTID             
                     ,CREDITORACCOUNTID          
                     ,DATE           
                     ,TIME          
                     ,InsertDate           
                     ,AMOUNT                         
                     ,COMMENT                
                     ,INSERTUSERID              
                     ,PAYTYPEID              
                     ,DOCUMENTNO      
                     ,PayTypeSecondId    
                     ,RefrencePaymentId)              
  SELECT              CREDITORACCOUNTID ,DEBTORACCOUNTID  ,--@DATE    
                      @SameDate ,    
                      @TIME,    
                      @SameInsertDate,SUM(AMOUNT)AMOUNT              
                     , ' سند معکوس '+(SELECT PAYTYPETITLE               
                                      FROM PAYTYPE               
                                      WHERE PAYTYPEID=M.PAYTYPEID) +  'شماره ' +LTRIM(RTRIM(CAST(@PaymentId AS VARCHAR(10))))COMMENT  
                     ,@USERID              
                     ,@TypeId --  8                                           
                     ,@DOCNO      
                     ,8    
                     ,@PaymentId              
                
  FROM PAYMENT  M              
  WHERE PaymentId=@PaymentId   AND      
        DocumentNo=@DocNo And             
        [DATE]=@Date    
  GROUP BY CREDITORACCOUNTID,DEBTORACCOUNTID,PAYTYPEID              
               
                
            
                
                
                
  UPDATE FORCEPAYMENT              
  SET PAID =0 ,PAYMENTID=NULL              
  WHERE PAYMENTID=@PaymentId 
  
  --FORCEPAYMENTID -- IN( SELECT   DISTINCT RELATEDID              
  --                                                 FROM              PAYMENT               
  --                                                 WHERE   DOCUMENTNO=@DOCNO AND               
  --                                                                  RELATEDID IS NOT NULL AND               
  --                                                                 DATE BETWEEN  SUBSTRING(@DATE,1,4) +'/01/01' AND SUBSTRING(@DATE,1,4)+'/12/30' )  OR            
            
                          --PAYMENTID IN( SELECT   DISTINCT PAYMENTID              
                          --                         FROM              PAYMENT               
                          --                         WHERE   DOCUMENTNO=@DOCNO AND               
                          --                                         DATE BETWEEN  SUBSTRING(@DATE,1,4) +'/01/01' AND SUBSTRING(@DATE,1,4)+'/12/30' )             
                
	------حذف ضامن -------------------------------------------------------------             
	DECLARE @LoanID INT
	SET @LoanID =0
	SELECT @LoanID=dbo.Loan.LoanID
	FROM dbo.LoanGaurantor
		 INNER JOIN dbo.Loan ON dbo.Loan.LoanID = dbo.LoanGaurantor.LoanID
		 INNER JOIN dbo.Payment ON dbo.Payment.PaymentID = dbo.Loan.PaymentID
	WHERE dbo.Payment.PaymentID = @PaymentID
	IF @LoanID <> 0 
	DELETE from dbo.LoanGaurantor WHERE LoanID = @LoanID
	---------------------------------------------------------------------------

COMMIT TRAN T1               
              
SELECT * FROM FORCEPAYMENT              
END--NOT EXISTS            
          
GO
/****** Object:  StoredProcedure [dbo].[Delete_PaymentFromReverse]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[Delete_PaymentFromReverse]   @PaymentID integer
AS

Declare @RefPaymentId INT
BEGIN TRAN T1

		SELECT @RefPaymentId=RefrencePaymentId 
		FROM PAYMENT 
		WHERE PaymentID=@PaymentID  AND 
			  PayTypeSecondId =8    AND
			  ISNULL(RefrencePaymentId,0)>0
		                         
		                           
		Delete From [dbo].[Payment]
		Where  PaymentID=@RefPaymentId 

		Delete From [dbo].[Payment]
		Where  PayTypeSecondId =8             AND
			   ISNULL(RefrencePaymentId,0)>0  AND
			   PaymentID=@PaymentID
		       



		UPDATE FORCEPAYMENT              
		SET PAID =0 ,PAYMENTID=NULL              
		WHERE FORCEPAYMENTID IN( SELECT   DISTINCT RELATEDID              
								 FROM              PAYMENT               
								 WHERE   PAYMENTID=@RefPaymentId)
COMMIT TRAN T1

GO
/****** Object:  StoredProcedure [dbo].[EXPIRE_LOANREQUEST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EXPIRE_LOANREQUEST]
@ACCOUNTID INT ,@ISURGENCY BIT
AS
UPDATE LOANREQUEST
   SET EXPIRED = 1
 WHERE ACCOUNTID = @ACCOUNTID AND ISURGENCY = @ISURGENCY




GO
/****** Object:  StoredProcedure [dbo].[GET_ACCOUNT_ALARM]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_ACCOUNT_ALARM]
@ACCOUNTID INT,@HASALARM BIT OUTPUT,@ALARMTEXT NVARCHAR(100) OUTPUT
AS

SELECT     @ALARMTEXT=ALARMTEXT
FROM         ACCOUNT
WHERE ACCOUNTID=@ACCOUNTID AND DBO.SHAMSI(GETDATE()) BETWEEN ALARMBEGINDATE AND ALARMENDDATE

IF @ALARMTEXT IS NOT NULL 
SET @HASALARM=1
ELSE SET @HASALARM=0

SET @ALARMTEXT=ISNULL(@ALARMTEXT,'-')




GO
/****** Object:  StoredProcedure [dbo].[GET_ACCOUNT_COUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_ACCOUNT_COUNT]
@COUNT INT OUTPUT
AS
SELECT     @COUNT=COUNT(*)
FROM         ACCOUNT
WHERE     (ACCOUNTTYPEID = 1)

SET @COUNT=ISNULL(@COUNT,0)




GO
/****** Object:  StoredProcedure [dbo].[GET_ACCOUNTID_BYACCOUNTNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GET_ACCOUNTID_BYACCOUNTNO]
@ACCOUNTNO VARCHAR(20),@ACCOUNTID INT OUTPUT
AS
DECLARE @ISACTIVE BIT
SELECT    @ACCOUNTID=ACCOUNTID,@ISACTIVE=ISACTIVE
FROM ACCOUNT
WHERE ACCOUNTNO=@ACCOUNTNO

SET @ACCOUNTID=ISNULL(@ACCOUNTID,0)
SET @ISACTIVE=ISNULL(@ISACTIVE,1)
IF @ISACTIVE=0 SET @ACCOUNTID=-1




GO
/****** Object:  StoredProcedure [dbo].[GET_ACCOUNTID_BYCONTACTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_ACCOUNTID_BYCONTACTID]
@CONTACTID INT,@ACCOUNTID INT OUTPUT
AS

SELECT    @ACCOUNTID=ACCOUNTID
FROM ACCOUNT
WHERE CONTACTID=@CONTACTID

SET @ACCOUNTID=ISNULL(@ACCOUNTID,0)





GO
/****** Object:  StoredProcedure [dbo].[Get_AccountID_ByPersonalNo]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_AccountID_ByPersonalNo]
         @PersonalNo NvarChar(50),@AccountID INT output
AS

DECLARE @ISACTIVE BIT

SELECT  @AccountID=Account.AccountID
FROM    Contact INNER JOIN
        Account ON Contact.ContactID = Account.ContactID
WHERE   (Contact.PersonalNo = @PersonalNo)



SET @AccountID=isnull(@AccountID,0)
SET @ISACTIVE=isnull(@ISACTIVE,1)
IF @ISACTIVE=0 set @AccountID=-1

GO
/****** Object:  StoredProcedure [dbo].[GET_ACCOUNTNO_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_ACCOUNTNO_BYACCOUNTID]  
@ACCOUNTID INT ,@ACCOUNTNO VARCHAR(20) OUTPUT  
AS  
DECLARE @ISACTIVE BIT 
 
SELECT    @ACCOUNTNO=ACCOUNTNO,@ISACTIVE=ISACTIVE  
FROM ACCOUNT  
WHERE ACCOUNTID=@ACCOUNTID  
  
SET @ACCOUNTNO=ISNULL(@ACCOUNTNO,'-1')  
SET @ISACTIVE=ISNULL(@ISACTIVE,1)  
IF @ISACTIVE=0 SET @ACCOUNTNO=-1  
  
  
  
  


GO
/****** Object:  StoredProcedure [dbo].[GET_ACCOUNTTitle_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_ACCOUNTTitle_BYACCOUNTID]  
@ACCOUNTID INT ,@AccountTitle VARCHAR(50) OUTPUT  
AS  
DECLARE @ISACTIVE BIT 
 
SELECT    @AccountTitle= AccountTitle,@ISACTIVE=ISACTIVE  
FROM ACCOUNT  
WHERE ACCOUNTID=@ACCOUNTID  
  
SET @AccountTitle=ISNULL(@AccountTitle,'')  
SET @ISACTIVE=ISNULL(@ISACTIVE,1)  
IF  @ISACTIVE=0 SET @AccountTitle=''  
  
  
  
GO
/****** Object:  StoredProcedure [dbo].[GET_ACTIVEUSER]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[GET_ACTIVEUSER]
AS

SELECT     USERS.USERNAME, 
MAX(CASE WHEN DATEPART(HH, LOGINTIME)<10 THEN '0'+CAST(DATEPART(HH, LOGINTIME) AS CHAR(1)) ELSE CAST(DATEPART(HH, LOGINTIME) AS CHAR(2)) END +':'+
CASE WHEN DATEPART(MI, LOGINTIME)<10 THEN '0'+CAST(DATEPART(MI, LOGINTIME) AS CHAR(1)) ELSE CAST(DATEPART(MI, LOGINTIME) AS CHAR(2)) END ) AS LOGINTIME
FROM         USERLOGINLOGOUT 
INNER JOIN   USERS ON USERLOGINLOGOUT.USERID = USERS.USERID
WHERE ISSAFELOGOUT=0 AND DBO.SHAMSI(LOGINTIME)=DBO.SHAMSI(GETDATE())
AND DATEDIFF(MI,LOGOUTTIME,GETDATE())<5
GROUP BY USERS.USERNAME











GO
/****** Object:  StoredProcedure [dbo].[GET_AMERCE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_AMERCE](
@FORCETYPEID TINYINT,@MATUREDATE CHAR(10),@PAYDATE CHAR(10),@AMERCE INT OUTPUT)
AS

DECLARE @MONTHLYTOLERANCE INT,@MONTHLYFROMFIRST BIT,@MONTHLYAMERCE INT,
        @PARTTOLERANCE INT   ,@PARTFROMFIRST BIT   ,@PARTAMERCE INT,@DELAY INT

SELECT @MONTHLYTOLERANCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYTOLERANCE'
SELECT @PARTTOLERANCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTTOLERANCE'
SELECT @PARTFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END  FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTFROMFIRST'
SELECT @MONTHLYFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYFROMFIRST'
SELECT @PARTAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTAMERCE'
SELECT @MONTHLYAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYAMERCE'


SET @DELAY=DBO.SHAMSIDATEDIFF(@MATUREDATE,@PAYDATE)

IF @FORCETYPEID=2
SET @AMERCE=@MONTHLYAMERCE*CASE WHEN @DELAY>@MONTHLYTOLERANCE THEN 
CASE WHEN @MONTHLYFROMFIRST=1 THEN @DELAY ELSE @DELAY-@MONTHLYTOLERANCE END  ELSE 0 END 
ELSE
SET @AMERCE=@PARTAMERCE*CASE WHEN @DELAY>@PARTTOLERANCE THEN 
CASE WHEN @PARTFROMFIRST=1 THEN @DELAY ELSE @DELAY-@PARTTOLERANCE END  ELSE 0 END 

SET @AMERCE=ISNULL(@AMERCE,0)




GO
/****** Object:  StoredProcedure [dbo].[GET_BALANCE_BYPAYTYPEID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------------------------------------------
CREATE  PROCEDURE [dbo].[GET_BALANCE_BYPAYTYPEID]      
(      
@ACCOUNTID INT,@PAYTYPEID TINYINT,@DATETO CHAR(10),@SUMAMOUNT BIGINT OUTPUT      
)      
      
AS     

SELECT @SUMAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN -AMOUNT ELSE +AMOUNT END)      
FROM PAYMENT      
WHERE DATE <=@DATETO  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))      
        AND (PAYTYPEID=@PAYTYPEID   OR (@PAYTYPEID=0 )) AND PAYTYPEID<>7
      
SET @SUMAMOUNT=ISNULL(@SUMAMOUNT,0)    
  
  
GO
/****** Object:  StoredProcedure [dbo].[GET_BENEFIT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_BENEFIT]
@BENEFIT BIGINT OUTPUT
AS
SELECT @BENEFIT=SUM(DBO.PUREBALANCE(ACCOUNTID,'9'))
FROM ACCOUNT
WHERE DBO.IS_PARENTID(ACCOUNTTYPEID,9)=1  OR  DBO.IS_PARENTID(ACCOUNTTYPEID,8)=1
SET @BENEFIT=ISNULL(@BENEFIT,0)


GO
/****** Object:  StoredProcedure [dbo].[GET_CALCFIELD_BYCONTACTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_CALCFIELD_BYCONTACTID]
@CONTACTID INT,@CALFIELD INT OUTPUT
AS

SELECT @CALFIELD=CALFIELD
FROM CONTACT
WHERE CONTACTID=@CONTACTID

SET @CALFIELD=ISNULL(@CALFIELD,0)


GO
/****** Object:  StoredProcedure [dbo].[GET_FARSI_MESSAGE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[GET_FARSI_MESSAGE]
 @ERRORMSG NVARCHAR(500),@FARSIMESSAGE NVARCHAR(500) OUTPUT,@SHOWMSG BIT OUTPUT
AS

SELECT    TOP 1  @FARSIMESSAGE=FARSIMESSAGE,@SHOWMSG=SHOWMESSAGE
FROM         ERRORMESSAGE
WHERE @ERRORMSG LIKE '%'+ERRORMESSAGE+'%'
ORDER BY LEN(ERRORMESSAGE) DESC 

SET @FARSIMESSAGE=ISNULL(@FARSIMESSAGE,'')
SET @SHOWMSG=ISNULL(@SHOWMSG,1)




GO
/****** Object:  StoredProcedure [dbo].[GET_FIELDNAME_BYDESCRIPTION]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_FIELDNAME_BYDESCRIPTION]
@DESCRIPTION NVARCHAR(50),@FIELDNAME VARCHAR(50) OUTPUT
AS

SELECT     @FIELDNAME=FIELDNAME
FROM      FIELD
WHERE REPLACE(REPLACE(DESCRIPTION,NCHAR(1740),'D'),NCHAR(1610),'D')=REPLACE(REPLACE(@DESCRIPTION,NCHAR(1740),'D'),NCHAR(1610),'D')

SET @FIELDNAME=ISNULL(@FIELDNAME,'NOTFOUND')

PRINT @DESCRIPTION




GO
/****** Object:  StoredProcedure [dbo].[GET_LOANID_BYLOANNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_LOANID_BYLOANNO]
@LOANNO VARCHAR(10),@LOANID INT OUTPUT, @ACCOUNTID INT OUTPUT
AS

SELECT      @LOANID=LOANID, @ACCOUNTID=ACCOUNTID
FROM         LOAN
WHERE LOANNO=@LOANNO

SET @LOANID=ISNULL(@LOANID,-1)
SET @ACCOUNTID=ISNULL(@ACCOUNTID,-1)




GO
/****** Object:  StoredProcedure [dbo].[GET_MAXATTACHMENTPAGE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_MAXATTACHMENTPAGE]
@DOCUMENTTYPEID TINYINT,@DOCUMENTID INT,@PAGENUMBER TINYINT OUTPUT
AS
SELECT     @PAGENUMBER=ISNULL(MAX(PAGENUMBER),0)
FROM         ATTACHMENT
WHERE     (DOCUMENTTYPEID = @DOCUMENTTYPEID) AND (DOCUMENTID = @DOCUMENTID)






GO
/****** Object:  StoredProcedure [dbo].[GET_MINATTACHMENTPAGE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_MINATTACHMENTPAGE]
@DOCUMENTTYPEID TINYINT,@DOCUMENTID INT,@PAGENUMBER TINYINT OUTPUT
AS
SELECT     @PAGENUMBER=ISNULL(MIN(PAGENUMBER),0)
FROM         ATTACHMENT
WHERE     (DOCUMENTTYPEID = @DOCUMENTTYPEID) AND (DOCUMENTID = @DOCUMENTID)






GO
/****** Object:  StoredProcedure [dbo].[GET_NEWACCOUNTNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_NEWACCOUNTNO]         
                  @ACCOUNTTYPEID TINYINT,@NEWACCOUNTNO VARCHAR(20) OUTPUT            
AS            
          
             
DECLARE @PREACCOUNTNO VARCHAR(2),@ACCOUNTLENGTH TINYINT,@LoanLength TINYINT ,@OLDCODE INT            
            
   
           
EXEC GET_SYSTEMSETTING 'ACCOUNTLENGTH',@ACCOUNTLENGTH OUTPUT 
EXEC GET_SYSTEMSETTING 'LoanLength',@LoanLength OUTPUT 
           
         
SELECT     @PREACCOUNTNO=CASE PREACCOUNTNO WHEN ''   THEN 0         
                                           WHEN NULL THEN 0         
                                           ELSE PREACCOUNTNO         
                                           END          
FROM       ACCOUNTTYPE            
WHERE     (ACCOUNTTYPEID = @ACCOUNTTYPEID)            
            
            
SET @PREACCOUNTNO=ISNULL(LTRIM(RTRIM(@PREACCOUNTNO)),'')            
IF @ACCOUNTTYPEID<>7            
   SELECT @OLDCODE=MAX(CAST(SUBSTRING(ACCOUNTNO,LEN(@PREACCOUNTNO)+1,10)AS BIGINT))            
   FROM ACCOUNT            
   WHERE ACCOUNTNO LIKE @PREACCOUNTNO+'%'            
ELSE            
   SELECT @OLDCODE=MAX(CAST(SUBSTRING(LOANNO,LEN(@PREACCOUNTNO)+1,10) AS BIGINT))            
   FROM LOAN            
   WHERE LOANNO LIKE @PREACCOUNTNO+'%'            
            
            
            
SET @OLDCODE=ISNULL(@OLDCODE,0)            
SET @NEWACCOUNTNO=CAST(@OLDCODE+1 AS VARCHAR(10))            
            
IF @ACCOUNTTYPEID<>7    
 WHILE LEN(@NEWACCOUNTNO)<@ACCOUNTLENGTH-LEN(@PREACCOUNTNO)             
       SET @NEWACCOUNTNO='0'+@NEWACCOUNTNO 

Else IF @ACCOUNTTYPEID=7    
 WHILE LEN(@NEWACCOUNTNO)<@LoanLENGTH-LEN(@PREACCOUNTNO)             
       SET @NEWACCOUNTNO='0'+@NEWACCOUNTNO 
           
    
    
SET @NEWACCOUNTNO=@PREACCOUNTNO+ISNULL(@NEWACCOUNTNO,0)  


GO
/****** Object:  StoredProcedure [dbo].[GET_NEWACCOUNTNO_New]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GET_NEWACCOUNTNO_New]           
                   @ACCOUNTTYPEID TINYINT,@NEWACCOUNTNO VARCHAR(20) OUTPUT              
AS              
 
-- DECLARE @ACCOUNTTYPEID TINYINT,@NEWACCOUNTNO VARCHAR(20) 
-- 
-- SET @ACCOUNTTYPEID=1

          
               
DECLARE @PREACCOUNTNO VARCHAR(2),@ACCOUNTLENGTH TINYINT,@LoanLength TINYINT ,@OLDCODE INT              
              
     
             
EXEC GET_SYSTEMSETTING 'ACCOUNTLENGTH',@ACCOUNTLENGTH OUTPUT   
EXEC GET_SYSTEMSETTING 'LoanLength',@LoanLength OUTPUT   
             
           
SELECT     @PREACCOUNTNO=CASE PREACCOUNTNO WHEN ''   THEN 0           
                                           WHEN NULL THEN 0           
                                           ELSE PREACCOUNTNO           
                                           END            
FROM       ACCOUNTTYPE              
WHERE     (ACCOUNTTYPEID = @ACCOUNTTYPEID)              
              

SET @PREACCOUNTNO=ISNULL(LTRIM(RTRIM(@PREACCOUNTNO)),'')              
IF @ACCOUNTTYPEID<>7              
   SELECT @OLDCODE=MAX(CAST(SUBSTRING(ACCOUNTNO,LEN(@PREACCOUNTNO)+1,10)AS BIGINT))              
   FROM ACCOUNT              
   WHERE 
   --Hamed_Ansari_990313_S
    AccountNo NOT LIKE '%/%' And
   --Hamed_Ansari_990313_E
   ACCOUNTNO LIKE @PREACCOUNTNO+'%' AND ACCOUNTTYPEID=@ACCOUNTTYPEID              
ELSE              
   SELECT @OLDCODE=MAX(CAST(SUBSTRING(LOANNO,LEN(@PREACCOUNTNO)+1,10) AS BIGINT))              
   FROM LOAN              
   WHERE LOANNO LIKE @PREACCOUNTNO+'%'
   --Hamed_Ansari_990626_S             
    And LoanNO NOT LIKE '%/%'
   --Hamed_Ansari_990626_S                         
              
SET @OLDCODE=ISNULL(@OLDCODE,0)              
SET @NEWACCOUNTNO=CAST(@OLDCODE+1 AS VARCHAR(10))              
--SELECT @NEWACCOUNTNO AS   NEWACCOUNTNO  ,@OLDCODE  AS OLDCODE,@PREACCOUNTNO AS PREACCOUNTNO

IF @ACCOUNTTYPEID<>7      
 WHILE LEN(@NEWACCOUNTNO)<@ACCOUNTLENGTH-LEN(@PREACCOUNTNO)               
       SET @NEWACCOUNTNO='0'+@NEWACCOUNTNO   
  
Else IF @ACCOUNTTYPEID=7      
 WHILE LEN(@NEWACCOUNTNO)<@LoanLENGTH-LEN(@PREACCOUNTNO)               
       SET @NEWACCOUNTNO='0'+@NEWACCOUNTNO   
             
      
      
SET @NEWACCOUNTNO=@PREACCOUNTNO+ISNULL(@NEWACCOUNTNO,0)    
--SELECT   @NEWACCOUNTNO

GO
/****** Object:  StoredProcedure [dbo].[GET_NEWACCOUNTTYPEID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_NEWACCOUNTTYPEID]
@ACCOUNTTYPEID TINYINT OUTPUT
AS
SELECT @ACCOUNTTYPEID=MAX(ACCOUNTTYPEID)+1
FROM ACCOUNTTYPE


GO
/****** Object:  StoredProcedure [dbo].[GET_NEWDOCUMNETNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_NEWDOCUMNETNO] 

@YEAR char(4),
@NEWDOCUMNETNO VARCHAR(10) OUTPUT

AS    
    
Select  @NEWDOCUMNETNO=MAX(CAST(DOCUMENTNO AS INT ))+1    
From PAYMENT    
Where SUBSTRING(DATE,1,4)=''+ltrim(rtrim(@YEAR))+''  
    
    
Set @NEWDOCUMNETNO=ISNULL(@NEWDOCUMNETNO,'1')

GO
/****** Object:  StoredProcedure [dbo].[GET_NEWMONTHLYTYPEID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_NEWMONTHLYTYPEID]
@NEWMONTHLYTYPEID SMALLINT  OUTPUT
AS
SELECT  @NEWMONTHLYTYPEID= ISNULL(MAX(MONTHLYTYPEID),0)+1
FROM MONTHLYTYPETYPE

SET @NEWMONTHLYTYPEID=ISNULL(@NEWMONTHLYTYPEID,'1')



GO
/****** Object:  StoredProcedure [dbo].[Get_NotPaidLoanPayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROCEDURE [dbo].[Get_NotPaidLoanPayment]  @accountid int, @Count int output
AS


set @Count=ISNULL((  SELECT     COUNT(ForcePayment.ForcePaymentID)   
                    FROM       ForcePayment INNER JOIN Loan         ON 
                                     ForcePayment.ParentID = Loan.LoanID
                    WHERE       (ForcePayment.ForceTypeID = 1 ) AND 
                                         (ForcePayment.Paid        = 0 ) AND
                                         (Loan.AccountID            = @AccountId )),0)

GO
/****** Object:  StoredProcedure [dbo].[Get_NotPaidMounthlyPayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[Get_NotPaidMounthlyPayment] @accountid int , @Count int output
AS
 

SET  @Count=ISNULL((SELECT     count(ForcePaymentid)  
                                       FROM         ForcePayment
			WHERE     (ForceTypeID= 2 ) AND 
   	                          (Paid       = 0 ) AND 
			          (ParentID   =@accountid )),0)

GO
/****** Object:  StoredProcedure [dbo].[GET_NOTPAIEDFORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GET_NOTPAIEDFORCEPAYMENT]
@FORCETYPEID TINYINT,@PARENTID INT ,@DATEFROM CHAR(10),@DATETO CHAR(10),@SUMAMOUNT BIGINT OUTPUT
AS
SELECT @SUMAMOUNT=SUM(CAST(AMOUNT AS BIGINT))
FROM FORCEPAYMENT
WHERE FORCETYPEID=@FORCETYPEID -- AND (MATUREDATE BETWEEN @DATEFROM AND @DATETO)
 AND PAID=0

SET @SUMAMOUNT=ISNULL(@SUMAMOUNT,0)

GO
/****** Object:  StoredProcedure [dbo].[GET_NUMBEROFPAIDPART_BYLOANID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[GET_NUMBEROFPAIDPART_BYLOANID]
@LOANID INT , @NUMBEROFPAIDPART INT OUTPUT
AS
SELECT    @NUMBEROFPAIDPART= COUNT(1) 
FROM FORCEPAYMENT 
WHERE  PARENTID=@LOANID AND  FORCETYPEID=1 AND PAID=1




GO
/****** Object:  StoredProcedure [dbo].[GET_OBJECTACCESS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GET_OBJECTACCESS]
@ACCESSID TINYINT , @OBJECTNAME VARCHAR(50),@ACCESS BIT OUTPUT
AS
SELECT     @ACCESS=ACCESS
FROM         ACCESSOBJECT
WHERE     (ACCESSID = @ACCESSID) AND (OBJECTNAME = @OBJECTNAME)

SET @ACCESS=ISNULL(@ACCESS,1)





GO
/****** Object:  StoredProcedure [dbo].[Get_PercentOfLastPaidLoan]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE Procedure [dbo].[Get_PercentOfLastPaidLoan] @Accountid INT ,@PercentOfLastPaid INT OUT   
AS
Declare @TotalPart INT ,@NumberOfPaidPart INT  
SELECT TOP 1   
       @TotalPart       =(SELECT COUNT(1)    FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND FORCETYPEID=1 ),                
       @NUMBEROFPAIDPART=(SELECT COUNT(1)    FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND FORCETYPEID=1 AND PAID=1)    
  
FROM LOAN       
WHERE accountid=@Accountid  
order by LOANID Desc  

IF @TotalPart IS NULL OR  @TotalPart=0
                   Select  @PercentOfLastPaid=100  
ELSE  
                   Select  @PercentOfLastPaid= (ISNULL(@NUMBEROFPAIDPART,0)*100)/@TotalPart  

GO
/****** Object:  StoredProcedure [dbo].[GET_REMAINOFLOAN_BYLOANID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[GET_REMAINOFLOAN_BYLOANID]
@LOANID INT , @REMAINOFLOAN BIGINT OUTPUT
AS
SELECT    @REMAINOFLOAN= SUM(AMOUNT)
FROM FORCEPAYMENT 
WHERE  PARENTID=@LOANID AND  FORCETYPEID=1 AND PAID=1

GO
/****** Object:  StoredProcedure [dbo].[GET_SUMPARTAMOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_SUMPARTAMOUNT]
@LOANID INT, @SUMAMOUNT BIGINT OUTPUT
AS
SELECT     @SUMAMOUNT=SUM(AMOUNT)
FROM         FORCEPAYMENT
WHERE      (PARENTID = @LOANID) AND (FORCETYPEID = 1)
SET @SUMAMOUNT=ISNULL(@SUMAMOUNT,0)

GO
/****** Object:  StoredProcedure [dbo].[GET_SYSTEMSETTING]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_SYSTEMSETTING]
@VARIABLENAME VARCHAR(50),@VALUE NVARCHAR(100)  OUTPUT
AS
 EXEC GET_USERSETTING -1,@VARIABLENAME,@VALUE OUTPUT


GO
/****** Object:  StoredProcedure [dbo].[GET_TIME]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GET_TIME]
@TIME VARCHAR(8) OUTPUT
AS
	DECLARE @H CHAR(2),@M CHAR(2),@S CHAR(2)
	DECLARE @HH TINYINT,@MI TINYINT,@SS TINYINT
	SET @HH=DATEPART(HH,GETDATE())
	SET @MI=DATEPART(MI,GETDATE())
	SET @SS=DATEPART(SS,GETDATE())
	SET @H=CASE WHEN @HH<10  THEN '0' ELSE '' END +CAST(@HH AS VARCHAR(2))
	SET @M=CASE WHEN @MI<10  THEN '0' ELSE '' END +CAST(@MI AS VARCHAR(2))
	SET @S=CASE WHEN @SS<10  THEN '0' ELSE '' END +CAST(@SS AS VARCHAR(2))
	PRINT @H
	PRINT @M
	PRINT @S
	SET @TIME= @H+':'+@M+':'+@S
GO
/****** Object:  StoredProcedure [dbo].[GET_USERLOGOUTSTATUS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GET_USERLOGOUTSTATUS]
	( @USERID 	[INT] , @LOGOUT BIT OUTPUT, @ISSAFELOGOUT 	BIT OUTPUT)
AS

DECLARE @LOGOUTTIME DATETIME
SET @LOGOUT=0
SET @ISSAFELOGOUT=0
SELECT TOP 1 @LOGOUTTIME=LOGOUTTIME,@ISSAFELOGOUT=ISSAFELOGOUT
FROM USERLOGINLOGOUT
WHERE USERID=@USERID
ORDER BY USERLOGINLOGOUTID DESC
IF @LOGOUTTIME IS NULL SET @LOGOUT=1
IF @ISSAFELOGOUT=1
 SET @LOGOUT=1
ELSE
 IF DATEDIFF(SECOND, @LOGOUTTIME,GETDATE())>60
 SET @LOGOUT=1


GO
/****** Object:  StoredProcedure [dbo].[GET_USERSETTING]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GET_USERSETTING]
@USERID  INT ,@VARIABLENAME VARCHAR(50),@VALUE NVARCHAR(100) OUTPUT
AS
SELECT     @VALUE=VALUE
FROM         SETTING
WHERE     (USERID = @USERID) AND (VARIABLENAME = @VARIABLENAME)

SET @VALUE=ISNULL(@VALUE,'')




GO
/****** Object:  StoredProcedure [dbo].[GetSystemSetting]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSystemSetting]
@VariableName varchar(50),@Value nvarchar(255)  output
AS
exec GetUserSetting -1,@VariableName,@value output
GO
/****** Object:  StoredProcedure [dbo].[GETUSERLOGOUT_STATUS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[GETUSERLOGOUT_STATUS]
	( @USERID 	[INT] , @LOGOUT BIT OUTPUT, @ISSAFELOGOUT 	BIT OUTPUT)
AS

DECLARE @LOGOUTTIME DATETIME
SET @LOGOUT=0
SET @ISSAFELOGOUT=0
SELECT TOP 1 @LOGOUTTIME=LOGOUTTIME,@ISSAFELOGOUT=ISSAFELOGOUT
FROM USERLOGINLOGOUT
WHERE USERID=@USERID
ORDER BY USERLOGINLOGOUTID DESC
IF @LOGOUTTIME IS NULL SET @LOGOUT=1
IF @ISSAFELOGOUT=1
 SET @LOGOUT=1
ELSE
 IF DATEDIFF(SECOND, @LOGOUTTIME,GETDATE())>60
 SET @LOGOUT=1











GO
/****** Object:  StoredProcedure [dbo].[GetUserSetting]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(255) output
AS
SELECT     @Value=Value
FROM         Setting
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)
set @Value=isnull(@Value,'Not Found')
GO
/****** Object:  StoredProcedure [dbo].[GROUP_FORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--***************************************************************************
--***************************************************************************
CREATE PROCEDURE [dbo].[GROUP_FORCEPAYMENT]        
                           @FORCEPAYMENTID INT ,  
                           @DEBTORACCOUNTID INT ,  
                           @DATE CHAR(10),  
                           @COMMENT NVARCHAR(100),  
                           @FINANCIALNOTEID INT ,  
                           @USERID INT,  
                           @DOCUMENTNO VARCHAR(10),  
                           @FINANCIALNOTE_DETAILID INT =0  ,  
                           @Crtr_DetAccountID INT=0,  
                           @_AmerceAmount INT=0      
AS        

DECLARE @PAYMENTID         INT,
        @INTERESTAMOUNT    INT,
        @PARENTID          INT,
        @CREDITORACCOUNTID INT,
        @TIME              CHAR(5),
        @AMOUNT            INT,
        @PAYTYPEID         TINYINT,
        @FORCETYPEID       TINYINT ,
        @LOANNO            VARCHAR(50),
        @MATUREDATE        CHAR(10)        
        


SELECT @PARENTID=PARENTID ,  
       @FORCETYPEID=FORCETYPEID ,  
       @AMOUNT=AMOUNT,  
       @INTERESTAMOUNT=INTERESTAMOUNT,        
       @MATUREDATE=MATUREDATE        
FROM FORCEPAYMENT        
WHERE FORCEPAYMENTID=@FORCEPAYMENTID  

IF @FORCETYPEID=1        
 BEGIN        
  SET @PAYTYPEID=3        
  SELECT @CREDITORACCOUNTID=ACCOUNTID, @LOANNO=LOANNO FROM LOAN WHERE LOANID=@PARENTID        
 END        
ELSE        
 BEGIN        
  SET @PAYTYPEID=2        
  SET @CREDITORACCOUNTID=@PARENTID        
 END        
        
EXEC GET_TIME  @TIME OUTPUT   

INSERT INTO PAYMENT        
       (CREDITORACCOUNTID  ,DEBTORACCOUNTID  ,DATE  ,TIME  ,AMOUNT  ,COMMENT  ,FINANCIALNOTEID ,INSERTUSERID ,PAYTYPEID,DOCUMENTNO,FINANCIALNOTE_DETAILID,Crtr_DetAccountID )        
VALUES(@CREDITORACCOUNTID ,@DEBTORACCOUNTID ,@DATE ,@TIME ,@AMOUNT ,@COMMENT ,@FINANCIALNOTEID ,@USERID    ,@PAYTYPEID,@DOCUMENTNO,@FINANCIALNOTE_DETAILID,@Crtr_DetAccountID ) 

SELECT @PAYMENTID=@@IDENTITY        
        
IF @FORCETYPEID=1 AND @INTERESTAMOUNT>0        
INSERT INTO PAYMENT (CREDITORACCOUNTID      , DEBTORACCOUNTID  , DATE , TIME ,         AMOUNT ,COMMENT                                           ,FINANCIALNOTEID  , INSERTUSERID,PAYTYPEID,DOCUMENTNO,RELATEDID,FINANCIALNOTE_DETAILID,Crtr_DetAccountID )        
              VALUES(/*4*/@CREDITORACCOUNTID,@DEBTORACCOUNTID  ,@DATE ,@TIME ,@INTERESTAMOUNT ,'سود قسط تاريخ '+@MATUREDATE+' وام شماره'+ @LOANNO ,@FINANCIALNOTEID ,@USERID      ,7        ,@DOCUMENTNO,@FORCEPAYMENTID,@FINANCIALNOTE_DETAILID,@Crtr_DetAccountID)        
        
  
IF @FORCETYPEID=1 AND @_AmerceAmount>0  
INSERT INTO PAYMENT(CREDITORACCOUNTID  , DEBTORACCOUNTID   , DATE, TIME ,  AMOUNT         ,COMMENT                                           , FINANCIALNOTEID  , INSERTUSERID,PAYTYPEID,DOCUMENTNO ,RELATEDID      ,FINANCIALNOTE_DETAILID ,Crtr_DetAccountID )        
             VALUES(2                  ,@DEBTORACCOUNTID  ,@DATE ,@TIME ,@_AmerceAmount   ,'جريمه قسط تاريخ '+@MATUREDATE+' وام شماره'+@LOANNO ,@FINANCIALNOTEID ,@USERID      ,5        ,@DOCUMENTNO,@FORCEPAYMENTID,@FINANCIALNOTE_DETAILID,@Crtr_DetAccountID)        
  
  
  
UPDATE  FORCEPAYMENT        
   SET  PAYMENTID     =@PAYMENTID ,
        PAID          = 1,
        GroupPayed	  = 1	     
 WHERE  FORCEPAYMENTID=@FORCEPAYMENTID
GO
/****** Object:  StoredProcedure [dbo].[INSERT_ACCESSOBJECT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[INSERT_ACCESSOBJECT]
AS
INSERT INTO  ACCESSOBJECT ([ACCESSID] ,[OBJECTNAME] ,[ACCESS])
SELECT ACCESSID,OBJECTNAME,1
FROM  ACCESS,OBJECTS
WHERE CAST(ACCESSID AS VARCHAR(3))+OBJECTNAME NOT IN (SELECT CAST(ACCESSID AS VARCHAR(3))+OBJECTNAME FROM ACCESSOBJECT)




GO
/****** Object:  StoredProcedure [dbo].[Insert_benefits]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Insert_benefits]
@AccountID	INT,--
@FamilyID	INT,--
@Year		INT,
@Month		TINYINT,
@WithLoan	BIT,
@doForSetteld BIT,--
@percent float,
@INSERTUSERID int
AS
BEGIN
	
	select a.AccountID,a.AccountNo,@Year as Year,@Month as Month,a.AccountTitle, CONVERT(bigint,0) AnnualAvragePrice  ,CONVERT(bigint,0) as InsertedBenefitPrice,CONVERT(int,0) as PaymentID 
	into #tblTemp
	from Account a  
	WHERE a.AccountID not in
	(SELECT b.ACCOUNTID
	FROM  Benefit b 
	WHERE (b.YEAR = @Year and (@Month = 0 or (b.Month = @Month  or b.Month = 0 )))
	AND ((@FamilyID = 0) OR (@FamilyID is null))
	and b.paymentID is not null)
	
	declare @AccID int
	DECLARE @Score BIGINT
	DECLARE @StartDate varchar(10)
	DECLARE @EndDate varchar(10)
	
	if @Month = 0
		set @StartDate = CONVERT(varchar(4),@Year)+'/01/01'
	else if @Month <10
		set @StartDate = CONVERT(varchar(4),@Year)+'/0'+CONVERT(varchar(1),@Month)+'/01'
	else
		set @StartDate = CONVERT(varchar(4),@Year)+'/'+CONVERT(varchar(2),@Month)+'/01'
	
	if @Month = 0
		set @EndDate = CONVERT(varchar(4),@Year)+'/12/30'
	else if @Month <10
		set @EndDate = CONVERT(varchar(4),@Year)+'/0'+CONVERT(varchar(1),@Month)+'/31'
	else
		set @EndDate = CONVERT(varchar(4),@Year)+'/'+CONVERT(varchar(2),@Month)+'/31'	
	
	DECLARE MAIN_CURSOR CURSOR FOR    
           SELECT AccountID FROM #tblTemp    
	OPEN  MAIN_CURSOR    
	FETCH NEXT FROM MAIN_CURSOR INTO @AccID    
    
	WHILE @@FETCH_STATUS=0    
	BEGIN    
		EXEC Calculate_Account_Score
			@AccID, @StartDate, @EndDate, @WithLoan, @Score OUTPUT
    
		IF @Score IS NULL
			SET @Score = 0
		    
		update #tblTemp 
		set AnnualAvragePrice = @Score, InsertedBenefitPrice = convert(bigint,@Score *@percent/100)
		where AccountID=@AccID
		    
		FETCH NEXT FROM MAIN_CURSOR INTO @score    
	END    
    
	CLOSE MAIN_CURSOR    
	DEALLOCATE MAIN_CURSOR  
	
	declare @Y_Tmp varchar(2)
	declare @NewDocumentNo int
	declare @BENEFITACCOUNTID int
	declare @TIME varchar(8)
	
	SET  @Y_Tmp=(SELECT SUBSTRING(convert(varchar(4),@Year),3,2))                
	EXEC [GET_NEWDOCUMNETNO] @Y_Tmp,@NewDocumentNo  OUTPUT
	EXEC GET_SYSTEMSETTING 'BENEFITACCOUNTID',@BENEFITACCOUNTID OUTPUT 
	EXEC [GET_TIME] @TIME  OUTPUT
	
	DELETE FROM #tblTemp WHERE InsertedBenefitPrice<=0
	
	insert into DBO.PAYMENT                    
        (CREDITORACCOUNTID,                
         DEBTORACCOUNTID  ,                
         DATE             ,                
         TIME             ,                
         AMOUNT           ,                
         COMMENT          ,                
         FINANCIALNOTEID  ,              
         FinancialNote_DetailID,                
         INSERTUSERID     ,                
         INSERTDATE       ,                 
         PAYTYPEID        ,                
         DOCUMENTNO       )
	select 
		t.AccountID,
		@BENEFITACCOUNTID,
		DBO.SHAMSI(GETDATE())as [date],                
        CAST(@TIME AS VARCHAR(5))as [time], 
        FLOOR(t.InsertedBenefitPrice) as bigint,
        'سود سپرده گذاري در تاريخ "'+DBO.SHAMSI( GETDATE()) +'"',
        0,                
        0,                
        @INSERTUSERID as INSERTUSERID,   
        DBO.SHAMSI(GETDATE()) as date,                
        1 AS PAYTYPEID,                
        @NewDocumentNo  as NewDocumentNo 
	From #tblTemp t WHERE InsertedBenefitPrice<>0
   
	update #tblTemp set PaymentID = p.paymentid from Payment p 
	where p.documentno = @NewDocumentNo and p.DebtorAccountID = @BENEFITACCOUNTID
	and p.Comment like '%سود سپرده گذاري در تاريخ%'
	and p.CreditorAccountID = #tblTemp.AccountID 
	and p.Amount = FLOOR(#tblTemp.InsertedBenefitPrice)
	   
	Insert Into Benefit
		(ACCOUNTID,
		[YEAR],
		DocumentNo,
		InsertedBenefitPrice,
		AnnualAvragePrice ,
		InsertedDate,
		InsertedUserId, 
		BenefitPercent,
		Month,
		PaymentID)                
	SELECT   
		t.AccountID,
		t.Year,
		@NewDocumentNo,
		t.InsertedBenefitPrice,
		t.AnnualAvragePrice,
		DBO.SHAMSI(GETDATE()),
		@INSERTUSERID,
		@percent,
		@Month,
		t.PaymentID
	FROM #tblTemp t WHERE InsertedBenefitPrice<>0
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_ERRORMESS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[INSERT_ERRORMESS]
 @ERRORMESSAGE  NVARCHAR(255),
 @USERID  INT

AS
IF NOT EXISTS (SELECT * FROM ERRORMESSAGE WHERE ERRORMESSAGE=@ERRORMESSAGE)
INSERT INTO ERRORMESSAGE
(ERRORMESSAGE,ERRORDATE,USERID,SHOWMESSAGE)
VALUES
(@ERRORMESSAGE  ,DBO.SHAMSI(GETDATE()),@USERID,1)




GO
/****** Object:  StoredProcedure [dbo].[INSERT_ERRORMESSAGE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[INSERT_ERRORMESSAGE]
 @ERRORMESSAGE  NVARCHAR(255),
 @USERID  INT

AS
INSERT INTO ERRORMESSAGE
(ERRORMESSAGE,ERRORDATE,USERID,SHOWMESSAGE)
VALUES
(@ERRORMESSAGE  ,DBO.SHAMSI(GETDATE()),@USERID,1)




GO
/****** Object:  StoredProcedure [dbo].[INSERT_LOANGAURANTOR]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERT_LOANGAURANTOR]   @LOANID INT ,@GAURANTORCONTACTID INT  ,@PercentofGauranty INT
AS  
INSERT INTO  LOANGAURANTOR  
           (  [LOANID]  
            , [GAURANTORCONTACTID]
            , [PercentofGauranty]  
           )  
     VALUES  
           (@LOANID,@GAURANTORCONTACTID,@PercentofGauranty)  


GO
/****** Object:  StoredProcedure [dbo].[INSERT_LOANPRIORITY]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[INSERT_LOANPRIORITY]
@ACCOUNTID INT,@ISURGENCY BIT
AS



IF NOT EXISTS(SELECT * FROM LOANPRIORITY WHERE  ACCOUNTID=@ACCOUNTID AND ISURGENCY=@ISURGENCY)
BEGIN
 DECLARE @PRIORITY SMALLINT

 SELECT @PRIORITY=MAX(PRIORITY)+1
 FROM LOANPRIORITY
 WHERE ISURGENCY=@ISURGENCY

 SET @PRIORITY=ISNULL(@PRIORITY,1)

 INSERT INTO LOANPRIORITY(ACCOUNTID,PRIORITY,ISURGENCY)
                   VALUES(@ACCOUNTID,@PRIORITY,@ISURGENCY)
END






GO
/****** Object:  StoredProcedure [dbo].[INSERT_OBJECTS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[INSERT_OBJECTS]
@OBJECTNAME  VARCHAR(50),@OBJECTCAPTION NVARCHAR(50),@GROUPTITLE NVARCHAR(50)
AS
IF NOT EXISTS (SELECT * FROM OBJECTS  WHERE OBJECTNAME=@OBJECTNAME)
INSERT INTO OBJECTS   ([OBJECTNAME] ,OBJECTCAPTION,GROUPTITLE)    
 VALUES      (@OBJECTNAME  ,@OBJECTCAPTION ,@GROUPTITLE)




GO
/****** Object:  StoredProcedure [dbo].[INSERT_USERLOGINLOGOUT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[INSERT_USERLOGINLOGOUT]
	( @USERID 	[INT],
	 @IPADDRESS 	[CHAR](15),
@USERLOGINLOGOUTID INT OUTPUT)

AS 

INSERT INTO [DBO].[USERLOGINLOGOUT] 
	 ( [USERID],
	 [IPADDRESS]) 
 
VALUES 
	(
	 @USERID,
	 @IPADDRESS)
SET @USERLOGINLOGOUTID=@@IDENTITY


GO
/****** Object:  StoredProcedure [dbo].[INSERTNEWYEARMONTHLYTYPE_DETAIL]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERTNEWYEARMONTHLYTYPE_DETAIL] @YEAR CHAR(4)

 AS

INSERT INTO MONTHLYTYPE_DETAIL(MONTHLYTYPEID,MONTHLYTYPEYEAR)
SELECT MONTHLYTYPEID,@YEAR FROM MONTHLYTYPE
GO
/****** Object:  StoredProcedure [dbo].[LOAN_HAS_NOTPAIDPARTS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[LOAN_HAS_NOTPAIDPARTS]
@LOANID INT,@RESULT BIT OUTPUT
AS
IF  EXISTS (SELECT     *
FROM         FORCEPAYMENT
WHERE    PARENTID = @LOANID AND FORCETYPEID = 1 AND PAID=0)
SET @RESULT=1
ELSE
SET @RESULT=0




GO
/****** Object:  StoredProcedure [dbo].[LOANTYPEID_HAS_LOAN]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[LOANTYPEID_HAS_LOAN]
@LOANTYPEID INT,@HASLOAN BIT OUTPUT
AS

IF  EXISTS (SELECT     * FROM         LOAN WHERE     LOANTYPEID = @LOANTYPEID)
SET @HASLOAN=1
ELSE
SET @HASLOAN=0

GO
/****** Object:  StoredProcedure [dbo].[MAKEMONTHLY]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


  
Create  PROC [dbo].[MAKEMONTHLY]    @ACCOUNTID INT,@DATEFROM CHAR(7),@DATETO CHAR(7)      
 AS      
     
      
/*SELECT  *    
FROM         ACCOUNT       
WHERE ACCOUNTNO='7102'*/    
    
--DECLARE  @ACCOUNTID INT,@DATEFROM CHAR(7),@DATETO CHAR(7)      
DECLARE  @MONTHAMOUNT INT,@MONTHBEGINDATE CHAR(10), @I INT      
      
    

/*SET @ACCOUNTID=254     
SET @DATEFROM='1390/01/01'       
SET @DATETO='1390/12/29'        
  */  
    
SELECT  @MONTHBEGINDATE=MONTHLYBEGINDATE      
FROM         ACCOUNT       
WHERE ACCOUNTID=@ACCOUNTID      
    
      
IF @MONTHAMOUNT<=0 RETURN      
      
DECLARE @MATUREDATE CHAR(10),@DAYPART CHAR(2)      
SET @DAYPART=SUBSTRING(@MONTHBEGINDATE,9,2)      
      

IF @DATEFROM <@MONTHBEGINDATE       
SET @DATEFROM=@MONTHBEGINDATE      
      
 
SET @MATUREDATE=SUBSTRING(@DATEFROM,1,8)+'/'+@DAYPART      
SET @I=1      
      
--    WHILE @MATUREDATE<=DBO.SHAMSIINCDATE(@DATETO+'/01',0,1,0)      
  WHILE @MATUREDATE< DBO.SHAMSIINCDATE(@DATETO+'/01',0,1,0)      
  BEGIN   
   /*      
    SELECT  @MONTHAMOUNT=MONTHLYTYPE.AMOUNT      
    FROM         ACCOUNT       
    INNER JOIN   MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID      
    WHERE ACCOUNTID=@ACCOUNTID   */      
            
           SET @MONTHAMOUNT=0      
           SELECT     @MONTHAMOUNT=MONTHLYTYPE_DETAIL.AMOUNT       
           FROM       MONTHLYTYPE_DETAIL INNER JOIN      
                      MONTHLYTYPE ON MONTHLYTYPE_DETAIL.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID INNER JOIN      
                      ACCOUNT ON MONTHLYTYPE.MONTHLYTYPEID = ACCOUNT.MONTHLYTYPEID      
           WHERE ACCOUNTID=@ACCOUNTID AND      
                 SUBSTRING(MONTHLYTYPE_DETAIL.MONTHLYTYPEYEAR,3,2) =SUBSTRING(@MATUREDATE,3,2)      
                 
           IF @MONTHAMOUNT=0       
                 SELECT     @MONTHAMOUNT=MAX(MONTHLYTYPE_DETAIL.AMOUNT )      
                 FROM         MONTHLYTYPE_DETAIL INNER JOIN      
                                    MONTHLYTYPE ON MONTHLYTYPE_DETAIL.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID INNER JOIN      
                                    ACCOUNT ON MONTHLYTYPE.MONTHLYTYPEID = ACCOUNT.MONTHLYTYPEID      
                 WHERE ACCOUNTID=@ACCOUNTID AND      
                       SUBSTRING(MONTHLYTYPE_DETAIL.MONTHLYTYPEYEAR,3,2)<SUBSTRING(@MATUREDATE,3,2)      
    IF @MONTHAMOUNT<>0       
    BEGIN 
     IF @DAYPART IN (30,31) AND SUBSTRING(@MATUREDATE,6,2)=12
         SET  @MATUREDATE=SUBSTRING(@MATUREDATE,1,8)+'29'

     IF NOT EXISTS( SELECT * 
                    FROM   FORCEPAYMENT 
                    WHERE  PARENTID=@ACCOUNTID AND     
                           MATUREDATE BETWEEN DBO.SHAMSIINCDATE(@MATUREDATE,0,0,-15) AND 
                           DBO.SHAMSIINCDATE(@MATUREDATE,0,0,15) AND 
                           FORCETYPEID=2)      
--       SELECT @ACCOUNTID ,@MATUREDATE ,@MATUREDATE,@I      
       INSERT INTO FORCEPAYMENT ( PARENTID  , FORCETYPEID  , AMOUNT  , MATUREDATE,ORDERNO )      
       VALUES                   (@ACCOUNTID , 2,@MONTHAMOUNT,@MATUREDATE,@I)
      ELSE      
--       SELECT @ACCOUNTID ,@MATUREDATE ,@MONTHAMOUNT,@I      
       UPDATE FORCEPAYMENT      
       SET AMOUNT=@MONTHAMOUNT,ORDERNO=@I,MATUREDATE=@MATUREDATE      
       WHERE PARENTID=@ACCOUNTID AND     
                             MATUREDATE BETWEEN DBO.SHAMSIINCDATE(@MATUREDATE,0,0,-15) AND DBO.SHAMSIINCDATE(@MATUREDATE,0,0,15) AND PAYMENTID IS NULL  AND FORCETYPEID=2   
         
    END      
 
    
          IF @DAYPART IN (30,31) AND SUBSTRING(@MATUREDATE,6,2)=12
            SET  @MATUREDATE=SUBSTRING(@MATUREDATE,1,8)+'29'
          IF @DAYPART IN (31) AND SUBSTRING(@MATUREDATE,6,2)>6 AND SUBSTRING(@MATUREDATE,6,2)<>12
            SET  @MATUREDATE=SUBSTRING(@MATUREDATE,1,8)+'30'

          IF @DAYPART IN (31) AND SUBSTRING(@MATUREDATE,6,2)=6 
            SET  @MATUREDATE=SUBSTRING(@MATUREDATE,1,8)+'30'
          IF SUBSTRING(@MATUREDATE,6,10)='11/30' 
            SET @MATUREDATE=SUBSTRING(@MATUREDATE,1,5)+'11/29'
    
    SET @MATUREDATE=DBO.SHAMSIINCDATE(@MATUREDATE,0,1,0) 
    IF SUBSTRING(@MATUREDATE,6,2)='01'
    SET @MATUREDATE=SUBSTRING(@MATUREDATE,1,8)+@DAYPART

    SET @I=@I+1      
 END      
      
--       
--       
--       
--       
--       
-- CREATE PROC [DBO].[MAKEMONTHLY]      
-- @ACCOUNTID INT,      
-- @DATEFROM CHAR(7),      
-- @DATETO CHAR(7)      
-- AS      
--       
-- DECLARE @MONTHAMOUNT INT,@MONTHBEGINDATE CHAR(10), @I INT      
--       
-- SELECT           
-- @MONTHAMOUNT=MONTHLYTYPE.AMOUNT,@MONTHBEGINDATE=MONTHLYBEGINDATE      
-- FROM         ACCOUNT       
-- INNER JOIN   MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID      
-- WHERE ACCOUNTID=@ACCOUNTID      
--       
-- IF @MONTHAMOUNT<=0 RETURN      
--       
-- DECLARE @MATUREDATE CHAR(10),@DAYPART CHAR(2)      
--       
-- SET @DAYPART=SUBSTRING(@MONTHBEGINDATE,9,2)      
--       
-- IF @DATEFROM <@MONTHBEGINDATE       
-- SET @DATEFROM=@MONTHBEGINDATE      
--       
-- SET @MATUREDATE=SUBSTRING(@DATEFROM,1,8)+'/'+@DAYPART      
-- SET @I=1      
--       
-- WHILE @MATUREDATE<=DBO.SHAMSIINCDATE(@DATETO+'/01',0,1,0)      
--  BEGIN      
-- IF NOT EXISTS(SELECT * FROM FORCEPAYMENT WHERE PARENTID=@ACCOUNTID AND       
-- MATUREDATE=@MATUREDATE AND FORCETYPEID=2)      
--       
-- INSERT INTO FORCEPAYMENT ( PARENTID  , FORCETYPEID  , AMOUNT  , MATUREDATE,ORDERNO )      
-- VALUES     (@ACCOUNTID, 2,@MONTHAMOUNT,@MATUREDATE,@I)      
-- ELSE      
-- UPDATE FORCEPAYMENT      
-- SET AMOUNT=@MONTHAMOUNT      
-- WHERE PARENTID=@ACCOUNTID AND MATUREDATE=@MATUREDATE AND PAYMENTID IS NULL  AND FORCETYPEID=2      
--       
-- SET @MATUREDATE=DBO.SHAMSIINCDATE(@MATUREDATE,0,1,0)      
-- SET @I=@I+1      
--  END      
--       
--       
-- GO      
--    
  
  
GO
/****** Object:  StoredProcedure [dbo].[MAKEPARTS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MAKEPARTS]  
  @LOANID INT,@INTERESTAMOUNT INT  
AS 

DECLARE @PARTMONTH INT ,@NUMBEROFPARTS INT, @I INT,@NEWDATE CHAR(10),@PARTAMOUNT bigInt,  
  @PARTSBEGINDATE CHAR(10),@PARTINTERESTAMOUNT INT ,@LOANAMOUNT bigInt,@PARTROUND TINYINT,@ROUNDFROMBEGIN BIT
  ,@PERIOD NVARCHAR(10)/*RANJBAR 88.07.18*/

SELECT @PARTSBEGINDATE=PARTSBEGINDATE,@NEWDATE=PARTSBEGINDATE,@PARTMONTH =PARTMONTHS,  
       @NUMBEROFPARTS=LOAN.PARTNUMBER,@LOANAMOUNT=AMOUNT
       , @PERIOD = RTRIM(PERIOD) /*RANJBAR 88.07.18*/ 
FROM   LOAN  
INNER JOIN LOANTYPE ON LOAN.LOANTYPEID = LOANTYPE.LOANTYPEID  
WHERE (LOANID =@LOANID)  
  
IF DBO.IS_VALIDSHAMSIDATE(@PARTSBEGINDATE)=0 RETURN  
  
EXEC GET_SYSTEMSETTING 'PARTROUND',@PARTROUND OUTPUT  
EXEC GET_SYSTEMSETTING 'ROUNDFROMBEGIN',@ROUNDFROMBEGIN OUTPUT  
  
SET @PARTINTERESTAMOUNT = @INTERESTAMOUNT/@NUMBEROFPARTS;  
SET @PARTAMOUNT = @LOANAMOUNT/@NUMBEROFPARTS;  

SET @PARTAMOUNT=@PARTAMOUNT-@PARTAMOUNT%POWER(10,@PARTROUND)  
SET @PARTINTERESTAMOUNT=@PARTINTERESTAMOUNT-@PARTINTERESTAMOUNT%POWER(10,@PARTROUND)  

SET @I=1  
PRINT @NUMBEROFPARTS  
WHILE @I<=@NUMBEROFPARTS  
BEGIN  
   INSERT INTO FORCEPAYMENT(PARENTID , FORCETYPEID , AMOUNT , MATUREDATE , ORDERNO , INTERESTAMOUNT )  
   VALUES (@LOANID , 1 , @PartAmount , @NEWDATE , @I , @PARTINTERESTAMOUNT)  
  
   SET @I=@I+1;  
   /*SET @NEWDATE = DBO.SHAMSIINCDATE(@NEWDATE , 0 , @PARTMONTH , 0);  RANJBAR 88.07.18*/
   IF (@PERIOD = 'ماه') OR (@PERIOD = '') 
      SET @NEWDATE = DBO.SHAMSIINCDATE(@NEWDATE , 0 , @PARTMONTH , 0);  
   IF (@PERIOD = 'هفته') 
      SET @NEWDATE = DBO.SHAMSIINCDATE(@NEWDATE , 0 , 0 , @PARTMONTH*7);  
   IF (@PERIOD = 'روز') 
      SET @NEWDATE = DBO.SHAMSIINCDATE(@NEWDATE , 0 , 0 , @PARTMONTH);
   /**/  
END;  
  
UPDATE FORCEPAYMENT   
SET AMOUNT = AMOUNT + @LOANAMOUNT - @NUMBEROFPARTS * @PartAmount,  
    INTERESTAMOUNT= INTERESTAMOUNT + @INTERESTAMOUNT - @NUMBEROFPARTS * @PARTINTERESTAMOUNT  
WHERE PARENTID = @LOANID 
AND FORCETYPEID = 1 
AND ORDERNO = CASE @ROUNDFROMBEGIN WHEN 0 THEN 1 ELSE @NUMBEROFPARTS END
GO
/****** Object:  StoredProcedure [dbo].[MOVE_LOANPRIORITY]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[MOVE_LOANPRIORITY]
@LOANPRIORITYID INT,@ISUP BIT
AS
DECLARE @ISURGENCY BIT ,@PRIORITY SMALLINT,@PRIORITY1 SMALLINT,@LOANPRIORITYID1 INT

SELECT @ISURGENCY=ISURGENCY,@PRIORITY=PRIORITY FROM LOANPRIORITY WHERE LOANPRIORITYID=@LOANPRIORITYID


IF @ISUP =1 
SELECT @PRIORITY1=MAX(PRIORITY)
FROM LOANPRIORITY
WHERE ISURGENCY=@ISURGENCY AND PRIORITY<@PRIORITY
ELSE
SELECT @PRIORITY1=MIN(PRIORITY)
FROM LOANPRIORITY
WHERE ISURGENCY=@ISURGENCY AND PRIORITY>@PRIORITY

IF @PRIORITY1 IS NOT NULL
  BEGIN
   SELECT @LOANPRIORITYID1=LOANPRIORITYID FROM  LOANPRIORITY WHERE ISURGENCY=@ISURGENCY AND PRIORITY=@PRIORITY1
   UPDATE LOANPRIORITY SET PRIORITY=@PRIORITY1 WHERE LOANPRIORITYID=@LOANPRIORITYID
   UPDATE LOANPRIORITY SET PRIORITY=@PRIORITY WHERE LOANPRIORITYID=@LOANPRIORITYID1
  END




GO
/****** Object:  StoredProcedure [dbo].[PAY_BENEFIT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PAY_BENEFIT]  
 @FROMDATE CHAR(10),@TODAY CHAR(10) ,@BENEFITPERCENT FLOAT,@NEWDOCUMNETNO VARCHAR(10),@INSERTUSERID INT  
AS  
/*نيز تغيير يابد REPORT_SUMBALANCE هر نوع تغيير در اين روال ، در روال */ 
  
SELECT ACCOUNTID,ACCOUNTNO,ACCOUNTTITLE,ACCOUNTDATE, ISNULL(DBO.SUMBALANCE(ACCOUNTID,@FROMDATE,@TODAY),0)/304000 SUMBALANCE  
, ACC.CONTACTID , (SELECT TOP 1 CONTACTTYPEID FROM CONTACT C WHERE C.CONTACTID = ACC.CONTACTID) AS CONTACTTYPEID /*RANJBAR*/ 
 INTO #P  
FROM ACCOUNT ACC  
WHERE ACCOUNTTYPEID=1 AND ISACTIVE=1
/*RANJBAR 88.05.21 CODE=23*/  
AND (ACC.CONTACTID IN (SELECT CONTACTID FROM CONTACT WHERE HAVEINTEREST = 1 /*تعلق گرفتن سود*/) )  
---   
  
DECLARE @BENEFITACCOUNTID INT,@TIME VARCHAR(8)  
  
EXEC GET_SYSTEMSETTING 'BENEFITACCOUNTID',@BENEFITACCOUNTID OUTPUT  
  
EXEC [GET_TIME] @TIME  OUTPUT  
  
INSERT INTO YLOANCASH.DBO.PAYMENT  
(CREDITORACCOUNTID  ,DEBTORACCOUNTID  ,DATE  ,TIME  ,AMOUNT  ,COMMENT  ,  
FINANCIALNOTEID  ,INSERTUSERID  ,INSERTDATE  ,PAYTYPEID  ,DOCUMENTNO)  
SELECT    ACCOUNTID,@BENEFITACCOUNTID,DBO.SHAMSI( GETDATE()),CAST(@TIME AS VARCHAR(5)),FLOOR(@BENEFITPERCENT*SUMBALANCE*100),'سود سپرده گذاري در تاريخ "'+@TODAY+'"'  
  ,0,@INSERTUSERID,DBO.SHAMSI( GETDATE()),1,@NEWDOCUMNETNO   
FROM #P 


GO
/****** Object:  StoredProcedure [dbo].[PAY_BENEFIT_New]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE PROCEDURE [dbo].[PAY_BENEFIT_New]                    
   @Year char(4)  ,                
   @AccountID INT,                
   @BENEFITPERCENT FLOAT,                
   @InsertUserId INT ,                
   @InsertedMode INT --0 show the information,1 means insert info                
AS              
DECLARE @TedadRooz INTEGER                
  
--DECLARE @Year char(4),@AccountID INT,@BENEFITPERCENT FLOAT,@InsertUserId INT,@InsertedMode INT --0 show the information,1 means insert info               
-- SET @Year='1390'                
-- SET @AccountID=0                
-- SET @BENEFITPERCENT=1               
-- SET @InsertUserId=1         
-- SET @InsertedMode=1     
      
                
                
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[#P]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)        
DROP TABLE #P        
        
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[#_FirstPrice]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)        
DROP TABLE #_FirstPrice        
        
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[#P2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)        
DROP TABLE #P2        
        
        
DECLARE @ToDate varchar(10) ,@FromDate varchar(10)        
        
Set @FromDate =@Year+'/01/01'        
Set @ToDate =(Select DBO.ShamsiIncDate(@Year+'/01/01' ,1 ,0,0) )        
        
Select  CreditorAccountId   AccountId,          
        Amount,          
        Cast(1 as smallint) status,          
        Date,            
        Cast(0 as float) TotalPrice         
INTO #P            
From Payment  Inner Join           
     Account ac1 on creditorAccountId=ac1.AccountId            
WHERE ACCOUNTTypeId=1 AND (@AccountID  =0 OR ac1.AccountID=@AccountID ) AND ac1.ContactID IN(Select ContactID From Contact Where HAVEINTEREST =1)  
	AND ac1.IsActive = 1         
------------DB          
INSERT INTO #P             
Select  DebtorAccountId,          
        Amount,          
        -1 status,          
        Date    ,        
        0           
From Payment Inner Join         
     Account AC2 on DebtorAccountId=ac2.AccountId            
WHERE ACCOUNTTypeId=1 AND (@AccountID  =0 OR AC2.AccountID=@AccountID ) AND ac2.ContactID IN(Select ContactID From Contact Where HAVEINTEREST =1)  
	AND ac2.IsActive = 1            
        
--           select @BeforPrice_TMP 'موجودي ابتداي دوره',@Price as 'موجودي روز',@BeforPrice as 'موجودي روز که با روزهاي قبل جمع شده', dbo.ShamsiDateDiff(@DATE,'1390/01/01') as  'تعداد روز'        
        
        SELECT  CAST(0 AS integer) AccountId ,        
                Cast(0 as float)  /*BeforPrice_TMP */ as MojoodiEbtedayeDore ,        
                Cast(0 as float) /*@Price*/mojoodiRooz ,        
                Cast(0 as float) /*@BeforPrice*/MojRoozJamShodehBaRozGhabl ,        
                Cast(0 as int) /*@BeforPrice*/TedadRooz ,        
                Cast('0000/00/00' as varchar(10)) _DATE     ,        
                Cast(0 as float)  /*TotalPrice*/ TotalPrice         
        INTO #p2        
        
 SELECT DISTINCT AccountId,SUM(AMOUNT*STATUS) FirstPrice         
 INTO #_FirstPrice         
 FROM #P        
 WHERE date<@FromDate AND  (@AccountID  =0 OR AccountID=@AccountID )        
 GROUP BY AccountId         
                 
         
        
        DECLARE @_AccountId INT ,@Price  float ,@BeforPrice float ,@DATE VARCHAR(10)  ,@BeforAccountId int,@BeforPrice_TMP float        
        SET @BeforPrice =0        
        SET @BeforAccountId =0        
        
        -- Amin 1391/11/08 Start
        SELECT  AccountId,SUM(AMOUNT*STATUS) PRICE , DATE  INTO #A      
        FROM #P
        WHERE DATE BETWEEN @FromDate AND @ToDate        GROUP BY AccountId,DATE
        UNION
        SELECT  distinct AccountId, 
			--case when @BENEFITPERCENT = 1 then dbo.TotalExist(AccountID,CAST(@Year-1 AS VARCHAR) + '/12/29', 1) else dbo.Exist(AccountID,CAST(@Year-1 AS VARCHAR) + '/12/29') end PRICE , 
			dbo.Exist(AccountID,CAST(@Year-1 AS VARCHAR) + '/12/29') PRICE ,
			CAST(@Year-1 AS VARCHAR) + '/12/29'        
        FROM #P         
        WHERE DATE < @FromDate       GROUP BY AccountId,DATE        order by AccountId,DATE
                
        DECLARE Payment_Cursor CURSOR FOR        
        SELECT  AccountId,sum(PRICE) AS price , DATE        
        FROM #A         
        WHERE (@AccountID  =0 OR AccountID=@AccountID )        
        GROUP BY AccountId,DATE         
        order by AccountId,DATE
        /*DECLARE Payment_Cursor CURSOR FOR        
        SELECT  AccountId,SUM(AMOUNT*STATUS) PRICE , DATE        
        FROM #P         
        WHERE DATE BETWEEN @FromDate AND @ToDate AND  (@AccountID  =0 OR AccountID=@AccountID )        
        GROUP BY AccountId,DATE         
        order by AccountId,DATE */
        -- Amin 1391/11/08 End       
        OPEN Payment_Cursor         
        
 FETCH NEXT FROM Payment_Cursor INTO @_AccountId,@Price,@DATE        
 WHILE @@FETCH_STATUS = 0        
 BEGIN        
           SET @BeforPrice_TMP=0        
           IF (@BeforAccountId<>@AccountId)        
           BEGIN        
              SET @BeforPrice =ISNULL((SELECT    FirstPrice   FROM #_FirstPrice  WHERE ACCOUNTID=@_Accountid  ),0)         
              SET @BeforPrice_TMP=@BeforPrice        
           END        
        
           Set @BeforPrice=@BeforPrice+@Price        
        
                   
--           select @BeforPrice_TMP 'موجودي ابتداي دوره',@Price as 'موجودي روز',@BeforPrice as 'موجودي روز که با روزهاي قبل جمع شده', dbo.ShamsiDateDiff(@DATE,'1390/01/01') as  'تعداد روز'        
                 
                   
           insert into #p2        
           Select @_AccountId  ,        
                  @BeforPrice_TMP   ,        
                  @Price  ,        
                  @BeforPrice   ,        
                  dbo.ShamsiDateDiff(@DATE, @ToDate) as Total_Price ,        
                  @DATE AS _date ,        
--                  @BeforPrice*dbo.ShamsiDateDiff(@DATE,@ToDate) as TotalPrice         
                  @Price*dbo.ShamsiDateDiff(@DATE,@ToDate) as TotalPrice                     
    Set @BeforAccountId=@_AccountId         
    FETCH NEXT FROM Payment_Cursor INTO @_AccountId,@price,@DATE        
 END        
 CLOSE Payment_Cursor        
 DEALLOCATE Payment_Cursor          
                             
--*********************************************************************************************************                
--*********************************************************************************************************                
--*********************************************************************************************************                 
DECLARE @BENEFITACCOUNTID INT,@TIME VARCHAR(8),@Y_Tmp tinyint,@NewDocumentNo VARCHAR(10)                
                 
SET  @Y_Tmp=(SELECT SUBSTRING(@Year,3,2))                
EXEC GET_SYSTEMSETTING 'BENEFITACCOUNTID',@BENEFITACCOUNTID OUTPUT                 
EXEC [GET_TIME] @TIME  OUTPUT                     
EXEC [GET_NEWDOCUMNETNO] @Y_Tmp,@NewDocumentNo  OUTPUT        

SELECT  #P2.ACCOUNTID                                                     ,                
         ACCOUNT.AccountNO,                
         ACCOUNT.AccountTitle,                
         @BENEFITACCOUNTID                             AS BENEFITACCOUNTID,                
         DBO.SHAMSI( GETDATE())                        AS [date],                
         CAST(@TIME AS VARCHAR(5))                     AS [time],                
         FLOOR((@BENEFITPERCENT * dbo.Calculate_Benefit(#p2.AccountID, @Year))/100) AS InsertedBenefitPrice  ,               
         CONVERT(Float, dbo.Calculate_Benefit(#p2.AccountID, @Year)) AS AnnualAvragePrice                
 FROM  #P2 INNER JOIN ACCOUNT ON #P2.ACCOUNTID=ACCOUNT.ACCOUNTID                 
 WHERE #P2.ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)                  
 GROUP BY #P2.ACCOUNTID,ACCOUNT.AccountTitle, ACCOUNT.AccountNO          
 HAVING (  SUM(TotalPrice)<>0)        
 ORDER BY #P2.ACCOUNTID
 
 --SELECT * FROM #p2
 
IF @InsertedMode=1                
BEGIN   
BEGIN TRAN T1    
-----------------------------------------
  
 SELECT              ACCOUNTID,
					 [YEAR] = @Year ,
					 DocumentNo = @NewDocumentNo,     
                     InsertedBenefitPrice = FLOOR((@BENEFITPERCENT * dbo.Calculate_Benefit(#P2.AccountID, @Year))/100),  
                     AnnualAvragePrice = FLOOR(@BENEFITPERCENT * dbo.Calculate_Benefit(#P2.AccountID, @Year)),       
                     InsertedDate = DBO.SHAMSI(GETDATE()),
                     InsertedUserId = @InsertUserId ,
                     BenefitPercent = @BENEFITPERCENT                                                           
 INTO #B                           
 FROM  #P2                 
 WHERE ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)                  
 GROUP BY ACCOUNTID                
 HAVING (  SUM(TotalPrice)<>0)        
 ORDER BY #P2.ACCOUNTID                  
 SELECT   #P2.ACCOUNTID,                
          ACCOUNT.AccountNO,                
          ACCOUNT.AccountTitle,                
          @BENEFITACCOUNTID             AS BENEFITACCOUNTID,                
          DBO.SHAMSI(GETDATE())         AS [Date],                
          CAST(@TIME AS VARCHAR(5))     AS [Time],                               
          FLOOR((@BENEFITPERCENT * dbo.Calculate_Benefit(#P2.AccountID, @Year))/100) AS InsertedBenefitPrice  ,                
          FLOOR(@BENEFITPERCENT * dbo.Calculate_Benefit(#P2.AccountID, @Year)) AS AnnualAvragePrice      
 FROM  #P2 INNER JOIN ACCOUNT ON #P2.ACCOUNTID=ACCOUNT.ACCOUNTID                 
 WHERE #P2.ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR) AND #P2.accountID > 0                 
 GROUP BY #P2.ACCOUNTID,ACCOUNT.AccountTitle, ACCOUNT.AccountNO                
 HAVING ( SUM(TotalPrice)<>0)        
 ORDER BY #P2.ACCOUNTID 

-----------------------------------------
 INSERT INTO DBO.PAYMENT                    
        (CREDITORACCOUNTID,                
         DEBTORACCOUNTID  ,                
         DATE             ,                
         TIME             ,                
         AMOUNT           ,                
         COMMENT          ,                
         FINANCIALNOTEID  ,              
         FinancialNote_DetailID,                
         INSERTUSERID     ,                
         INSERTDATE       ,                 
         PAYTYPEID        ,                
         DOCUMENTNO       )
                             
 SELECT  ACCOUNTID                                                     ,                
         @BENEFITACCOUNTID									    	   ,                
         DBO.SHAMSI(GETDATE())    as [date]                            ,                
         CAST(@TIME AS VARCHAR(5))as [time]                            ,                  
         --FLOOR((@BENEFITPERCENT* ((ISNULL((SELECT TOP 1  MojoodiEbtedayeDore FROM #P2  PP2 WHERE #P2.ACCOUNTID=PP2.AccountId and MojoodiEbtedayeDore<>0),0)/365)+ sum(TotalPrice/365)))/100)  BENEFITPERCENT ,                 
         FLOOR((@BENEFITPERCENT * dbo.Calculate_Benefit(AccountID, @Year))/100)  BENEFITPERCENT ,    
         'سود سپرده گذاري در تاريخ "'+DBO.SHAMSI( GETDATE()) +'"'      ,                
         0                                                             ,                
         0                                                             ,                
         @INSERTUSERID   as  INSERTUSERID                              ,                
         DBO.SHAMSI(GETDATE()) as date                                 ,                
         1 AS PAYTYPEID                                                ,                
         @NewDocumentNo  as NewDocumentNo                    
 FROM  #P2               
 WHERE ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)  AND #P2.accountID > 0                  
 GROUP BY ACCOUNTID                
 HAVING ( SUM(TotalPrice)<>0 )        
 ORDER BY #P2.ACCOUNTID 
-----------------------------------------  
IF (@@ERROR=0)  
BEGIN  
 
 ------------------------------------------------------------------------------
 Insert Into Benefit(ACCOUNTID,[YEAR],DocumentNo    ,InsertedBenefitPrice                                                          
                     ,AnnualAvragePrice      
                     ,InsertedDate          ,InsertedUserId, BenefitPercent)                
 SELECT   * FROM #B
 ------------------------------------------------------------------------------                
END  
ELSE  
ROLLBACK  TRAN T1  

COMMIT TRAN T1   
     
END                
      
 DROP TABLE #_FirstPrice                
 DROP TABLE #p                
 DROP TABLE #p2
 DROP TABLE #A -- Hadi Mohamed 1392/07/21 


GO
/****** Object:  StoredProcedure [dbo].[PAY_FORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PAY_FORCEPAYMENT]
@FORCEPAYMENTID INT ,@PAYMENTID INT 
AS
UPDATE FORCEPAYMENT
   SET [PAYMENTID] = @PAYMENTID
      ,[PAID] = 1
 WHERE FORCEPAYMENTID=@FORCEPAYMENTID





GO
/****** Object:  StoredProcedure [dbo].[PERFRAJLIST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
--===============================================================================================
--===============================================================================================
CREATE PROCEDURE [dbo].[PERFRAJLIST] (@FROMDATE CHAR(10), @TODATE CHAR(10), @PAYKIND INT,@ACCOUNTID INT)    
 AS     
    
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TotalExistsTmpTb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)    
drop table [dbo].[TotalExistsTmpTb]    
     
    
 if @Accountid=0     
 SELECT     AccountID ,dbo.Totalexist(Accountid,'1399/12/29', 0) totalexists    
 into TotalExistsTmpTb    
 FROM         Account    
 where accounttypeid=1      
  else    
 SELECT     AccountID ,dbo.Totalexist(Accountid,'1399/12/29', 0) totalexists    
 into TotalExistsTmpTb    
 FROM         Account    
 where accounttypeid=1  and AccountID=@AccountID     
    
declare @sql Nvarchar(4000)    
set @sql=N'    
 SELECT   Payment.documentNo,Payment.WasPrinted,Payment.PaymentID,Account.Accountid,Account.ContactID, Account.Accountno, Account.AccountTitle, Payment.[Date], Payment.Comment,Payment.Amount, Payment.Amount AS bes, 0 AS bed,ForcePayment.InterestAmount,     
            ForcePayment.ParentID, PayType.PayTypeTitle ,PayType.PayTypeID ,lloan.LoanID,    
            CASE PayType.PayTypeID WHEN 1 THEN ''واريز به حساب''    
                                   WHEN 2 THEN ''پرداخت ماهيانه''      
                                   WHEN 3 THEN ''پرداخت قسط به شماره ''+ CAST(ForcePayment.OrderNo AS CHAR(5)) END AS DES,    
            CASE PayType.PayTypeID     
                                   WHEN 1 THEN (Select totalexists  From TotalExistsTmpTb where accountid=Account.Accountid )       
                                   WHEN 2 THEN (SELECT SUM(FP_M.Amount)          FROM ForcePayment FP_M  WHERE (FP_M.ParentID = ForcePayment.ParentID)AND(FP_M.ForceTypeID = 2)AND (FP_M.Paid = 1))    
                                          WHEN 3 THEN  ISNULL((SELECT SUM(fp_Np.Amount) FROM ForcePayment fp_Np WHERE (fp_Np.ParentID = lloan.LOANID)AND FP_NP.ForceTypeid=1 AND (fp_Np.Paid = 0)),0) END AS MANDEH    
 FROM         Loan lloan RIGHT OUTER JOIN    
                       ForcePayment ON lloan.LoanID = ForcePayment.ParentID RIGHT OUTER JOIN    
                       Payment INNER JOIN    
                       Account ON Payment.CreditorAccountID = Account.AccountID INNER JOIN    
                       PayType ON Payment.PayTypeID = PayType.PayTypeID ON ForcePayment.PaymentID = Payment.PaymentID    
 WHERE    Account.AccountTypeID=1 and  Payment.[Date] between '''+@FromDate+''' and '''+@ToDate+''''    
    
if  @PayKind <>0     
   set @sql=@sql+  ' and PayType.PayTypeID ='+cast(@PayKind as char(5))    
if  @Accountid <>0     
   set @sql=@sql+  ' and Account.AccountID ='+cast(@Accountid as char(10))     
               
set @sql=@sql+'Union     
 SELECT   Payment.documentNo,Payment.WasPrinted,Payment.PaymentID,Account.Accountid,Account.ContactID, Account.Accountno, Account.AccountTitle, Payment.[Date], Payment.Comment,Payment.Amount, Payment.Amount AS bes, 0 AS bed,ForcePayment.InterestAmount,     
            ForcePayment.ParentID, PayType.PayTypeTitle ,PayType.PayTypeID ,lloan.LoanID,    
            CASE PayType.PayTypeID WHEN 1 THEN ''واريز به حساب''    
                                   WHEN 2 THEN ''پرداخت ماهيانه''      
                                   WHEN 3 THEN ''پرداخت قسط به شماره ''+ CAST(ForcePayment.OrderNo AS CHAR(5)) END AS DES,    
            CASE PayType.PayTypeID     
                                   WHEN 1 THEN  (Select totalexists  From TotalExistsTmpTb where accountid=Account.Accountid )       
                                   WHEN 2 THEN  (SELECT SUM(FP_M.Amount)          FROM ForcePayment FP_M  WHERE (FP_M.ParentID = lloan.LOANID)AND(FP_M.ForceTypeID = 2)AND (FP_M.Paid = 1))    
                                   WHEN 3 THEN  ISNULL((SELECT SUM(fp_Np.Amount) FROM ForcePayment fp_Np WHERE (fp_Np.ParentID = lloan.LOANID)AND FP_NP.ForceTypeid=1 AND (fp_Np.Paid = 0)),0) END AS MANDEH    
 FROM         Loan lloan RIGHT OUTER JOIN    
                       ForcePayment ON lloan.LoanID = ForcePayment.ParentID RIGHT OUTER JOIN    
                       Payment INNER JOIN    
                       Account ON Payment.DebtorAccountID = Account.AccountID INNER JOIN    
                       PayType ON Payment.PayTypeID = PayType.PayTypeID ON ForcePayment.PaymentID = Payment.PaymentID    
 WHERE  PayType.PayTypeID <> 4 AND Account.AccountTypeID=1 and Payment.[Date] between '''+@FromDate+''' and '''+@ToDate+''''    
if  @PayKind <>0     
   set @sql=@sql+  ' and PayType.PayTypeID ='+cast(@PayKind as char(5))    
if  @Accountid <>0     
   set @sql=@sql+  ' and Account.AccountID ='+cast(@Accountid as char(10))     
set @sql=@sql+ ' ORDER BY  Account.Accountno, Account.AccountTitle,PayType.PayTypeID, Payment.[Date] '     
set @sql=@sql+ ' Drop Table TotalExistsTmpTb '    
    
 exec sp_executesql @sql
GO
/****** Object:  StoredProcedure [dbo].[REP_SoodSepordeh]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[REP_SoodSepordeh]
	@startDate NVARCHAR(10) = '',
	@endDate NVARCHAR(10) = '',
	@accountNO NVARCHAR(20) = ''
AS	
SELECT documentno, [DATE], a1.AccountNo, a1.AccountTitle AS ozvName, a2.AccountTitle AS hesabName, Amount, DebtorAccountID, CreditorAccountID
FROM Payment 
	INNER JOIN Account a1 ON CreditorAccountID = a1.AccountID
	INNER JOIN Account a2 ON DebtorAccountID = a2.AccountID
WHERE (Comment LIKE '%سود سپرده گذاري در تاريخ%')
AND ((@accountNO = '') OR @accountNO = a1.AccountNo OR (@accountNO = a2.AccountNo))
AND ((LTRIM(RTRIM(@startDate)) = '') OR ([DATE] >= @startDate))
AND ((LTRIM(RTRIM(@endDate)) = '') OR ([DATE] <= @endDate))

UNION ALL

SELECT null,null,'',NULL,'مجموع سود در اين بازه',ISNULL(SUM(Amount), 0),NULL,null
FROM Payment 
	INNER JOIN Account a1 ON CreditorAccountID = a1.AccountID
	INNER JOIN Account a2 ON DebtorAccountID = a2.AccountID
WHERE (Comment LIKE '%سود سپرده گذاري در تاريخ%')
AND ((@accountNO = '') OR @accountNO = a1.AccountNo OR (@accountNO = a2.AccountNo))
AND ((LTRIM(RTRIM(@startDate)) = '') OR ([DATE] >= @startDate))
AND ((LTRIM(RTRIM(@endDate)) = '') OR ([DATE] <= @endDate))

UNION ALL
SELECT null,null,'',NULL,'مجموع کل سود پرداخت شده  ',ISNULL(SUM(Amount), 0),NULL,null
FROM Payment 
WHERE (Comment LIKE '%سود سپرده گذاري در تاريخ%')
GO
/****** Object:  StoredProcedure [dbo].[REP_SUMSoodSepordeh]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REP_SUMSoodSepordeh] 
	@startDate NVARCHAR(10) = '',
	@endDate NVARCHAR(10) = '',
	@accountNO NVARCHAR(20) = ''
AS	
SELECT 0 AS id,ISNULL(SUM(Amount), 0) AS sumAll
FROM Payment 
	INNER JOIN Account a1 ON CreditorAccountID = a1.AccountID
	INNER JOIN Account a2 ON DebtorAccountID = a2.AccountID
WHERE (Comment LIKE '%سود سپرده گذاري در تاريخ%')
AND ((@accountNO = '') OR @accountNO = a1.AccountNo OR (@accountNO = a2.AccountNo))
AND ((LTRIM(RTRIM(@startDate)) = '') OR ([DATE] >= @startDate))
AND ((LTRIM(RTRIM(@endDate)) = '') OR ([DATE] <= @endDate))

UNION ALL
SELECT 1 AS id,ISNULL(SUM(Amount), 0) AS sumAll
FROM Payment 
WHERE (Comment LIKE '%سود سپرده گذاري در تاريخ%')
GO
/****** Object:  StoredProcedure [dbo].[REPORT_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPORT_ACCOUNT](@ACCOUNTTYPEID TINYINT,@WHERE VARCHAR(1000),@ROWCOUNT CHAR(100)=500)
 AS      
           
DECLARE @SQL NVARCHAR(4000)      



SET @WHERE =ISNULL(LTRIM(@WHERE),'')      
IF @WHERE <>'' SET @WHERE=' AND  '+@WHERE      
      
IF @ROWCOUNT=0 
  SET @SQL='SELECT '
ELSE
  SET @SQL='SELECT TOP '+@ROWCOUNT

SET       @SQL=@SQL+' MONTHLYTYPE.MONTHLYTYPETITLE, BANK.BANKTITLE, ACCOUNT.ACCOUNTID, ACCOUNT.ACCOUNTTITLE, ACCOUNTNO, dbo.FnYSrtToInt(AccountNo) AS AccountNoInt , ACCOUNTDATE, ACCOUNT.ISACTIVE,      
                      ACCOUNT.MONTHLYTYPEID, ACCOUNT.MONTHLYBEGINDATE, ACCOUNT.FAMILYID, ACCOUNT.ACCOUNTTYPEID, CONTACT.CONTACTID, CONTACT.PERSONALNO,      
                      FIRSTNAME, LASTNAME,LASTNAME+ISNULL('' - ''+FIRSTNAME,'''') FULLNAME, FATHERNAME, CONTACT.IDNO, CONTACT.BIRTHPLACE, CONTACT.BIRTHDATE, CONTACT.ADDRESS, CONTACT.PHONES,      
                      JOB, MEMO, USERFIELD1, USERFIELD2,      
                      CONTACTTYPEID,FAMILYTITLE,DBO.EXIST(ACCOUNT.ACCOUNTID,''9'') EXIST,    
                      DBO.TOTALEXIST(ACCOUNT.ACCOUNTID,''9'', '+Convert(nvarchar, @ACCOUNTTYPEID)+') TOTALEXIST,    
CASE SIGN(DBO.BALANCE(ACCOUNT.ACCOUNTID,''9'')) WHEN 1 THEN ''بستانکار '' WHEN -1 THEN  ''بدهكار'' ELSE ''تسويه '' END DEBITSTATUSTITLE  /*RANJBAR*/    
      
FROM ACCOUNT       
INNER JOIN    CONTACT ON ACCOUNT.CONTACTID = CONTACT.CONTACTID       
LEFT  JOIN    BANK ON ACCOUNT.BANKID = BANK.BANKID       
LEFT  JOIN    MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID      
LEFT  JOIN    FAMILY ON FAMILY.FAMILYID = ACCOUNT.FAMILYID      
WHERE     (ACCOUNT.ACCOUNTTYPEID = '+CAST(@ACCOUNTTYPEID AS VARCHAR(2))+' OR '+CAST(@ACCOUNTTYPEID AS VARCHAR(2))+'=0)'      
      
SET @SQL=@SQL+@WHERE+' ORDER BY LASTNAME '      
EXEC SP_EXECUTESQL @SQL
GO
/****** Object:  StoredProcedure [dbo].[REPORT_ACCOUNT2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_ACCOUNT2](@ACCOUNTTYPEID TINYINT,@WHERE VARCHAR(1000))        
AS        
  
DECLARE @SQL NVARCHAR(4000)        
        
SET @WHERE =ISNULL(LTRIM(@WHERE),'')        
IF @WHERE <>'' SET @WHERE=' AND  '+@WHERE        
        
SET @SQL='SELECT MONTHLYTYPE.MONTHLYTYPETITLE, BANK.BANKTITLE, ACCOUNT.ACCOUNTID, ACCOUNT.ACCOUNTTITLE,  ACCOUNTNO , ACCOUNTDATE, ACCOUNT.ISACTIVE,        
                 ACCOUNT.MONTHLYTYPEID, ACCOUNT.MONTHLYBEGINDATE, ACCOUNT.FAMILYID, ACCOUNT.ACCOUNTTYPEID, CONTACT.CONTACTID, CONTACT.PERSONALNO,        
                 FIRSTNAME, LASTNAME,ISNULL(FIRSTNAME+'' '','''')+LASTNAME FULLNAME, FATHERNAME, CONTACT.IDNO, CONTACT.BIRTHPLACE, CONTACT.BIRTHDATE,   
                 CONTACT.ADDRESS, CONTACT.PHONES,        
                 JOB, MEMO, USERFIELD1, USERFIELD2,        
                 CONTACTTYPEID,FAMILYTITLE,DBO.EXIST(ACCOUNT.ACCOUNTID,''9'')  EXIST,        
   CASE SIGN(DBO.BALANCE(ACCOUNT.ACCOUNTID,''9'')) WHEN 1 THEN ''بستانکار '' WHEN -1 THEN  ''بدهکار '' ELSE ''تسويه '' END DEBITSTATUSTITLE,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,1,''9'') BALANCE1,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,2,''9'') BALANCE2,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,3,''9'') BALANCE3,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,4,''9'') BALANCE4,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,5,''9'') BALANCE5,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,6,''9'') BALANCE6,        
   DBO.BALANCE_BYPAYTYPEID(ACCOUNTID,7,''9'') BALANCE7,        
   ISNULL((SELECT    SUM(ForcePayment.AMOUNT) FROM ForcePayment INNER JOIN Loan ON ForcePayment.ParentID = Loan.LoanID  Where ForcePayment.FORCETYPEID=1 AND Loan.AccountID=ACCOUNT.ACCOUNTID AND ForcePayment.PAID=0  ),0)REMAINOFLOAN,  
   ISNULL(DBO.GET_LASTLOANAMOUNT(ACCOUNT.ACCOUNTID),0) LASTLOANAMOUNT,      
   ISNULL(DBO.GET_LASTLOANNO(ACCOUNT.ACCOUNTID),0)     LASTLOANNO      ,    
   ISNULL(DBO.Get_LastBeforLastLoanNo_F(ACCOUNT.ACCOUNTID ),0) AS BeforLastLoanNo ,  
   ISNULL(DBO.Get_LastBeforLastLoanAmount_F(ACCOUNT.ACCOUNTID),0) AS BeforLastLoanAmount,  
   ISNULL((SELECT  COUNT(Loanid) FROM LOAN WHERE Loanid IN (SELECT  L.Loanid  
                           FROM   Loan AS L INNER JOIN  ForcePayment AS F ON L.LoanID = F.ParentID    
                           WHERE  L.AccountID = ACCOUNT.ACCOUNTID  AND F.ForceTypeID = 1  AND F.Paid = 0   
                           Group by l.LoanID)   ),0) AS CountOfNotPaiedLoan  
  ,
   ISNULL((SELECT   TOP 1  Loan.LoanNO FROM Loan INNER JOIN ForcePayment ON Loan.LoanID = ForcePayment.ParentID  WHERE (Loan.AccountID = ACCOUNT.ACCOUNTID ) AND (ForcePayment.ForceTypeID = 1) AND (ForcePayment.Paid = 0) ORDER BY   Loan.LoanID  desc  ),0) LastNotPaidLoanNo
  
         
FROM         ACCOUNT        
INNER JOIN    CONTACT ON ACCOUNT.CONTACTID = CONTACT.CONTACTID        
LEFT  JOIN    BANK ON ACCOUNT.BANKID = BANK.BANKID        
LEFT  JOIN    MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID        
LEFT  JOIN    FAMILY ON FAMILY.FAMILYID = ACCOUNT.FAMILYID        
WHERE     (ACCOUNT.ACCOUNTTYPEID = '+CAST(@ACCOUNTTYPEID AS VARCHAR(2))+' OR '+CAST(@ACCOUNTTYPEID AS VARCHAR(2))+'=0)'        
        
        
SET @SQL=@SQL+@WHERE+' ORDER BY LASTNAME '        
        
EXEC SP_EXECUTESQL @SQL        
        
GO
/****** Object:  StoredProcedure [dbo].[REPORT_BENEFIT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_BENEFIT]    
                                       @Year char(4) ,@ACCOUNTID INTEGER 
AS
SELECT  Benefit.ACCOUNTID, Benefit.[YEAR], Benefit.DocumentNo, Benefit.InsertedBenefitPrice, Benefit.AnnualAvragePrice, Benefit.InsertedDate, Benefit.BenefitPercent,
        Benefit.InsertedUserId, Account.AccountTitle, Account.AccountNo
FROM    Benefit INNER JOIN
        Account ON Benefit.ACCOUNTID = Account.AccountID
WHERE [YEAR]=@YEAR AND (Benefit.ACCOUNTID=@ACCOUNTID OR @ACCOUNTID=0)
GO
/****** Object:  StoredProcedure [dbo].[REPORT_CASHACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_CASHACCOUNT](@WHERE VARCHAR(1000),@ISLOAN INT=0)                
AS                
DECLARE @SQL NVARCHAR(4000)                
                
SET @WHERE =ISNULL(LTRIM(@WHERE),'')                
IF @WHERE <>'' SET @WHERE=' AND  '+@WHERE                
              
              
IF   @ISLOAN<>7                
SET @SQL='SELECT  BANK.BANKTITLE, ACCOUNT.ACCOUNTID, ACCOUNT.ACCOUNTTITLE, ACCOUNTNO, ACCOUNTDATE, ACCOUNT.ISACTIVE,ACCOUNT.ACCOUNTTYPEID,ACCOUNTTYPETITLE,                 
                      case When AccountId=1  then IsNull(DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,''1400/12/29''),0)/*+IsNull((SELECT SUM(Amount) FROM   Payment  WHERE   PayTypeID = 7),0)  */  
                           When  AccountId=4  then  DBO.F_Soodvam (''1360/01/01'' ,''1400/12/29'')       
                           ELSE DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,''1400/12/29'')              
          
End as  BALANCE,            
                  CASE SIGN(DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,''9'')) WHEN 1 THEN ''بستانکار '' WHEN -1 THEN  ''بدهکار '' ELSE ''تسويه '' END DEBITSTATUSTITLE                
                
FROM         ACCOUNT                 
LEFT  JOIN    BANK ON ACCOUNT.BANKID = BANK.BANKID                 
INNER JOIN ACCOUNTTYPE ON ACCOUNT.ACCOUNTTYPEID=ACCOUNTTYPE.ACCOUNTTYPEID                
WHERE ACCOUNT.ISACTIVE=1 '                

IF   @ISLOAN=7               
SET @SQL='            SELECT     BANK.BANKTITLE, ACCOUNT.ACCOUNTID,ACCOUNT.ACCOUNTTITLE,ACCOUNT.ACCOUNTNO,               
                      ACCOUNT.ACCOUNTDATE,ACCOUNT.ISACTIVE,LOANTYPE.LOANTYPEID AS ACCOUNTTYPEID,LOANTYPE.LOANTYPETITLE AS ACCOUNTTYPETITLE,              
                      case When ACCOUNT.AccountId=1  then IsNull(DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,''1400/12/29''),0)+IsNull((SELECT SUM(Amount) FROM   Payment  WHERE  (PayTypeID = 7)),0)              
                           When ACCOUNT.AccountId=4  then DBO.F_Soodvam (''1360/01/01'' ,''1400/12/29'')      
                           ELSE DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,''1400/12/29'')    End as  BALANCE,           
                      CASE SIGN(DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,''9'')) WHEN 1 THEN ''بستانکار '' WHEN -1 THEN  ''بدهکار '' ELSE ''تسويه '' END DEBITSTATUSTITLE                      
FROM         LOAN INNER   JOIN              
                      ACCOUNT ON LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID LEFT OUTER JOIN              
                      LOANTYPE ON LOAN.LOANTYPEID = LOANTYPE.LOANTYPEID LEFT OUTER JOIN              
                      BANK ON ACCOUNT.BANKID = BANK.BANKID              
WHERE ACCOUNT.ISACTIVE=1 '                
              

SET @SQL=@SQL+@WHERE+' ORDER BY ACCOUNTTITLE '                
--PRINT @SQL              
EXEC SP_EXECUTESQL @SQL  

GO
/****** Object:  StoredProcedure [dbo].[REPORT_CONTACT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[REPORT_CONTACT](@WHERE VARCHAR(1000))
AS 
DECLARE @SQL NVARCHAR(4000)

SET @WHERE =ISNULL(LTRIM(@WHERE),'')
IF @WHERE <>'' SET @WHERE=' WHERE  '+@WHERE

SET @SQL='SELECT  CONTACTID, FIRSTNAME, LASTNAME,ISNULL(FIRSTNAME+'' '','''')+ LASTNAME FULLNAME, FATHERNAME, ADDRESS, USERFIELD1, USERFIELD2, 
                   CONTACT.CONTACTTYPEID, CONTACTTYPETITLE, PHONES,PERSONALNO, BIRTHPLACE, BIRTHDATE, JOB, ISACTIVE, MEMO, CALFIELD
FROM         CONTACT 
INNER JOIN CONTACTTYPE ON CONTACT.CONTACTTYPEID = CONTACTTYPE.CONTACTTYPEID'


SET @SQL=@SQL+@WHERE+' ORDER BY LASTNAME '

EXEC SP_EXECUTESQL @SQL








GO
/****** Object:  StoredProcedure [dbo].[REPORT_DAILY_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[REPORT_DAILY_PAYMENT]
@DATEFROM CHAR(10),@DATETO CHAR(10)  ,@USERID INT
AS
SELECT  PAYMENT.*,
 CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,
 DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE,
 PAYTYPE.PAYTYPETITLE,
 FINANCIALNOTE_Detail.NOTENO, 
 FINANCIALNOTE_MASTER.MATUREDATE, 
 FINANCIALNOTE_MASTER.AMOUNT FINANCIALNOTEAMOUNT,
 FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE,
 USERS.FULLNAME,
 ISNULL(COMMENT,PAYTYPETITLE) COMMENT2
FROM PAYMENT
INNER JOIN PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID
INNER JOIN ACCOUNT AS CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID
INNER JOIN ACCOUNT AS DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID
LEFT JOIN USERS ON PAYMENT.INSERTUSERID = USERS.USERID
LEFT JOIN  FINANCIALNOTE_Detail ON PAYMENT.FINANCIALNOTE_DETAILID = FINANCIALNOTE_Detail.FinancialNote_DETAILID
LEFT JOIN  FINANCIALNOTE_MASTER ON FINANCIALNOTE_Detail.FinancialNote_MasterID = FINANCIALNOTE_MASTER.FinancialNote_MasterID
LEFT JOIN  FINANCIALNOTETYPE ON FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID
WHERE (@USERID=0 OR USERID=@USERID) AND DATE BETWEEN @DATEFROM  AND @DATETO

GO
/****** Object:  StoredProcedure [dbo].[Report_DelayedLoanPayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create With Cash Exe File 
Create PROCEDURE  [dbo].[Report_DelayedLoanPayment]   
                 @LoanTypeID      AS SmallInt,   
                 @LoanNO          AS Varchar(10),   
                 @AccountID       AS INT,  
                 @ShowDetail      AS SMALLINT ,  
                 @GROUPBY         AS SMALLINT,  
                 @TODate          AS CHAR(10),  
                 @dELAY           AS INT  ,  
                 @JustDelayedDocs AS INT , 
                 @REMAINOFLOAN    AS INT,--Tasviyeh Shodeh=0 Nashodeh=1 all=2
                 @Paid AS INT --NOT PAID=0 , PAID=1 , ALL=2
   
AS    
 /*
  
DECLARE @LoanTypeID      AS smallint,  
        @LoanNO          AS varchar(10),  
        @AccountID       AS INT,  
        @ShowDetail      AS SMALLINT,  
        @GROUPBY         AS SMALLINT,  
        @TODate          AS CHAR(10),  
        @dELAY           AS INT ,  
        @JustDelayedDocs AS INT,
        @REMAINOFLOAN    AS INT,--Tasviyeh Shodeh=0 Nashodeh=1 all=2
        @Paid AS INT --NOT PAID=0 , PAID=1 , ALL=2
  
  
SET @LoanTypeID =0    
SET @LoanNO=0    
SET @TODate='1390/07/19'    
SET @AccountID=8    
SET @ShowDetail=1  
SET @GROUPBY=0  
SET @Delay=0  
SET @JustDelayedDocs=0 
SET @REMAINOFLOAN=2 
SET @Paid=2 
  
  */
SELECT     Account.AccountID      ,     
           Account.AccountNO      ,     
           Account.AccountTitle   ,     
           dbo.ShamsiDateDiff(ForcePayment.MatureDate,ISNULL(Payment.[Date],@TODate )) AS DELAY,   
           Loan.AMOUNT,  
           (Select SUM(AMOUNT)        FROM FORCEPAYMENT WHERE PARENTID=LOAN.LOANID AND FORCETYPEID=1               AND PAID=1)    JamAghsatPardakhti ,               
           (Select COUNT(1)           FROM FORCEPAYMENT WHERE PARENTID=LOAN.LOANID AND FORCETYPEID=1                         )    TedadAghsat,                
           (Select COUNT(1)           FROM FORCEPAYMENT WHERE PARENTID=LOAN.LOANID AND FORCETYPEID=1               AND PAID=1)    TedadAghsatPardakhti,                
           ISNULL((Select SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=2        AND PARENTID=Account.AccountID  AND PAID=0),0) REMAINOF_MahiyanehPerAccountId,  
           isnull((Select SUM(AMOUNT) FROM FORCEPAYMENT WHERE PARENTID=LOAN.LOANID AND FORCETYPEID=1               AND PAID=0),0) REMAINOF_Ghest,                
           ISNULL((Select SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1        AND PARENTID=LOAN.LOANID        AND PAID=0),0) REMAINOFLOAN,  
           (SELECT SUM(F .Amount)     FROM ForcePayment F                          INNER JOIN   
                                           Loan         L ON F.ParentID = L.LoanID INNER JOIN  
                                           Account      A ON L.AccountID= A.AccountID    
                                                        WHERE (F .Paid =0)                      AND   
                                                              (A.AccountID = Account.AccountID) AND   
                                                              (F.ForceTypeID = 1) ) RemainOfLoanPerAccountId ,               
           Loan.LoanNO            ,     
           ForcePayment.OrderNo   ,     
           ForcePayment.MatureDate,    
           Loan.LoanTypeID        ,    
           LoanType.LoanTypeTitle ,      
           ' قسط شماره  '+CAST( ForcePayment.OrderNo AS VARCHAR(5)) AS COMMENT ,  
           ForcePayment.Paid,  
           ForceType.FoceTypeID   
INTO #C    
FROM            ForcePayment                                                  INNER JOIN    
                      Loan           ON ForcePayment.ParentID = Loan.LoanID             INNER JOIN    
                      Account      ON Loan.AccountID = Account.AccountID              INNER JOIN    
                      LoanType   ON Loan.LoanTypeID = LoanType.LoanTypeID           INNER JOIN    
                      ForceType  ON ForcePayment.ForceTypeID = ForceType.FoceTypeID LEFT OUTER JOIN    
                      Payment     ON ForcePayment.PaymentID = Payment.PaymentID    
    
WHERE    --(ForcePayment.Paid = 1)    AND     
          (ForceType.FoceTypeID = 1) AND     
          (dbo.ShamsiDateDiff(ForcePayment.MatureDate, ISNULL(Payment.[Date],'')) >0) AND    
          (Account.AccountID=@AccountID OR @AccountID=0 ) AND     
          (Loan.LoanNO=@LoanNO          OR @LoanNO=0    ) AND    
(Loan.LoanTypeID=@LoanTypeID  OR @LoanTypeID=0)   
--          (ForcePayment.MatureDate <=Payment.[Date]     )  

             
ORDER BY Loan.LoanNO ,Loan.AMOUNT   
  

IF @ShowDetail=1     
BEGIN
	 IF @REMAINOFLOAN=1 
	 BEGIN
		  SELECT *    
		  FROM  #C     
   		  WHERE   (Paid=@Paid OR @Paid=2) and
		          
		          (REMAINOFLOAN >0 ) 
		  ORDER BY AccountTitle 
	 
	 END
	 ELSE  
	 BEGIN
		  SELECT *    
		  FROM  #C     
   		  WHERE   (Paid=@Paid OR @Paid=2) and
		         
		        (REMAINOFLOAN =0 or @REMAINOFLOAN=2) 
		  ORDER BY AccountTitle 
	 END
         
END
ELSE    
BEGIN    
 IF @GROUPBY=1 -- LOANNo    
 BEGIN  
	 IF @REMAINOFLOAN=1 
	 BEGIN
		  SELECT   ACCOUNTID,AccountTitle,ACCOUNTNo,COUNT(OrderNo) OrderNoCount,LoanNo,REMAINOFLOAN,0 AS REMAINOfLoanPerAccountId           
		  FROM #C     
		  WHERE   (Paid=@Paid OR @Paid=2) 
		  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,LoanNO,REMAINOFLOAN  
		  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0)AND (REMAINOFLOAN >0 ) 
		  ORDER BY LoanNo    
	 
	 END
	 ELSE  
	 BEGIN
		  SELECT   ACCOUNTID,AccountTitle,ACCOUNTNo,COUNT(OrderNo) OrderNoCount,LoanNo,REMAINOFLOAN,0 AS REMAINOfLoanPerAccountId           
		  FROM #C     
		  WHERE   (Paid=@Paid OR @Paid=2) 
		  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,LoanNO,REMAINOFLOAN  
		  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0)AND (REMAINOFLOAN=0  OR @REMAINOFLOAN=2 ) 
		  ORDER BY LoanNo    
	 END
 END  
 IF @GROUPBY=2 -- ACCOUNTNo
 BEGIN
    IF @REMAINOFLOAN=1 
		  SELECT ACCOUNTID,AccountTitle,ACCOUNTNo, COUNT(OrderNo)  OrderNoCount ,'' AS  LoanNo ,0 AS REMAINOFLOAN, REMAINOfLoanPerAccountId  
		  FROM #C  
		  WHERE   (Paid=@Paid OR @Paid=2)  
		  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,REMAINOfLoanPerAccountId    
		  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0 ) AND (REMAINOfLoanPerAccountId>0)
													  
    ELSE --IF @REMAINOFLOAN>0
		  SELECT ACCOUNTID,AccountTitle,ACCOUNTNo, COUNT(OrderNo)  OrderNoCount ,'' AS  LoanNo ,0 AS REMAINOFLOAN, REMAINOfLoanPerAccountId  
		  FROM #C  
		  WHERE   (Paid=@Paid OR @Paid=2)  
		  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,REMAINOfLoanPerAccountId    
		  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0 ) AND (REMAINOfLoanPerAccountId=0 OR @REMAINOFLOAN=2)
 END    
      
      
      
      
       /*AND( case when @REMAINOFLOAN=0 AND REMAINOfLoanPerAccountId=0    THEN  1 
                                                             WHEN @REMAINOFLOAN=1 AND REMAINOfLoanPerAccountId>0   THEN 1 
                                                             ELSE  0 END=1) */   

END    
  
  
DROP TABLE #C  
GO
/****** Object:  StoredProcedure [dbo].[REPORT_DeletedPayment_ByDocumentNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_DeletedPayment_ByDocumentNO]  @DocumentNO VarChar(10),@Year int =0          
AS          


--DECLARE @DOCUMENTNO VARCHAR(10),@YEAR TINYINT
--SET @DOCUMENTNO=0 
--SET @YEAR=0

--ATAIE1400
DECLARE @Y VARCHAR(10)          
Set @Y = CAST(@YEAR AS  CHAR(4))

--SET @Y=CASE WHEN @YEAR>0 THEN '13'+CAST(@YEAR AS  CHAR(2)) ELSE '13' END +'%'         
      
      
         
SELECT     PAYMENT.*,          
           CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,          
           DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE,          
           RTRIM(PAYTYPE.PAYTYPETITLE) +  (CASE WHEN PAYMENT.PAYTYPEID = 3 THEN ( SELECT ' - ق ش '+(CAST(ORDERNO AS NVARCHAR(10)))AS ORDERNODESC FROM FORCEPAYMENT WHERE FORCEPAYMENT.PAYMENTID = PAYMENT.PAYMENTID ) END) AS PAYTYPETITLE,          
           FINANCIALNOTE.NOTENO, FINANCIALNOTE.MATUREDATE, FINANCIALNOTE.AMOUNT FINANCIALNOTEAMOUNT,FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE,          
           USERS.FULLNAME,      
           ISNULL(COMMENT,PAYTYPETITLE) COMMENT2 ,       
           FINANCIALNOTE_DETAIL.AMOUNT AS NOTE_DETAILAMOUNT,       
           FINANCIALNOTE_DETAIL.NOTENO AS NOTE_DETAILNOTENO,       
           FINANCIALNOTE_DETAIL.NOTEDATE AS DETAILNOTEDATE,       
           FINANCIALNOTESTATUS.FINANCIALNOTESTATUSDESC AS STATUSFINANCIALNOTESTATUSDESC,       
           FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID AS MASTERFINANCIALNOTETYPEID,       
           FINANCIALNOTETYPE_1.FINANCIALNOTETYPETITLE AS NOTE_DETAILFINANCIALNOTETYPETITLE      
FROM                  FINANCIALNOTE_MASTER INNER JOIN    
                      FINANCIALNOTE_DETAIL ON FINANCIALNOTE_MASTER.FINANCIALNOTE_MASTERID = FINANCIALNOTE_DETAIL.FINANCIALNOTE_MASTERID INNER JOIN    
                      FINANCIALNOTESTATUS ON FINANCIALNOTE_DETAIL.NOTESTATUSID = FINANCIALNOTESTATUS.FINANCIALNOTESTATUSID INNER JOIN    
                      FINANCIALNOTETYPE FINANCIALNOTETYPE ON     
                      FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID RIGHT OUTER JOIN    
                      PAYMENT INNER JOIN    
                      PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID INNER JOIN    
                      ACCOUNT CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID INNER JOIN    
                      ACCOUNT DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID ON     
                      FINANCIALNOTE_DETAIL.FINANCIALNOTE_DETAILID = PAYMENT.FINANCIALNOTE_DETAILID LEFT OUTER JOIN    
                      USERS ON PAYMENT.INSERTUSERID = USERS.USERID LEFT OUTER JOIN    
                      FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID LEFT OUTER JOIN    
                      FINANCIALNOTETYPE FINANCIALNOTETYPE_1 ON FINANCIALNOTE.FINANCIALNOTETYPEID = FINANCIALNOTETYPE_1.FINANCIALNOTETYPEID    
    
WHERE ((DOCUMENTNO = @DOCUMENTNO)OR('0' = @DOCUMENTNO)/*تمامي اسناد*/)          
    --AND PAYMENT.DATE LIKE @Y   --ATAIE1400
    AND (Left(PAYMENT.[DATE], 4) = @Y Or @YEAR=0)   
	AND PAYMENT.PayTypeSecondId=8      
	AND ISNULL(PAYMENT.RefrencePaymentId,0)>0
ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT), PAYMENT.[DATE]

GO
/****** Object:  StoredProcedure [dbo].[REPORT_FORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--===================================================================================
--===================================================================================
CREATE PROCEDURE [dbo].[REPORT_FORCEPAYMENT]         
  @FOCETYPEID TINYINT,-- 0 MEANS ALL          
  @PAYSTATUS TINYINT, --  0= NOTPAID, 1=PAID,2 MEANS ALL          
  @GROUPINGBYACCOUNT BIT=0,--          
  @DELAYDAYS TINYINT,-- 0= ALL , 1=DELAYED,2 LATESTNOTPAID          
  @ONLYLATEST BIT ,--0 = ALL ,1= LATEST          
  @NO VARCHAR(20)='0',-- 0 MEANS ALL          
  @SEARCHBYLOANNO BIT =0,--          
  @MATUREDATEFROM CHAR(10),          
  @MATUREDATETO CHAR(10),          
  @FAMILYID SMALLINT,-- 0 MEANS ALL      
  @LOANTYPEID SMALLINT=0,-- 0 MEANS ALL      
  @MONTHLYTYPEID SMALLINT=0,-- 0 MEANS ALL      
  @TODAY CHAR(10)=NULL,          
  @TOP INT=1000,      
  @SUMAMOUNT BIGINT OUTPUT,          
  @SUMAMERCE BIGINT OUTPUT,          
  @SUMINTEREST BIGINT OUTPUT          
          
AS          
       
IF @ONLYLATEST=1          
 BEGIN          
   SET @PAYSTATUS=0          
   SET @DELAYDAYS=0          
 END          
SET @NO=ISNULL(LTRIM(@NO),'')          
IF @SEARCHBYLOANNO=1          
  SET @FOCETYPEID=1          
          
          
DECLARE  @RESULTTABLE          
TABLE ( ACCOUNTID INT ,          
        FORCETYPEID TINYINT NOT NULL,          
        FORCEPAYMENTID INT NOT NULL,          
        PARENTID INT NOT NULL,          
        ACCOUNTNO VARCHAR(20) NOT NULL,          
        ACCOUNTTITLE NVARCHAR(100) NULL,          
        LOANNO VARCHAR(10)  NULL,          
        AMOUNT BIGINT NOT NULL,          
        MATUREDATE CHAR(10) NOT NULL,          
        PAID BIT NOT NULL,          
        ORDERNO TINYINT  NOT NULL,          
        DELAY INT  NULL,          
        AMERCE INT NULL,          
        PAYMENTID INT NULL,          
        PAYDATE CHAR(10),          
        COMMENT   NVARCHAR(100),          
        INTERESTAMOUNT INT ,      
        LOANORMONTHLYTITLE NVARCHAR(100)         
)          
          
          
          
IF @SEARCHBYLOANNO=1          
      INSERT INTO @RESULTTABLE                   
      SELECT           ACCOUNT.ACCOUNTID,      
                        FORCETYPEID,      
                        FORCEPAYMENTID,       
                        PARENTID,      
                        ACCOUNTNO,       
                        DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE,       
                        LOANNO,       
                        FORCEPAYMENT.AMOUNT,      
                        MATUREDATE,          
                        PAID,      
                        ORDERNO,      
                        1 DELAY ,      
                        2 AMERCE,      
                        FORCEPAYMENT.PAYMENTID,      
                        NULL,      
                        COMMENT,      
                        INTERESTAMOUNT    ,      
                        CASE FORCEPAYMENT.FORCETYPEID WHEN 1 THEN (SELECT TOP 1 LTT.LOANTYPETITLE FROM LOANTYPE LTT WHERE LTT.LOANTYPEID=LOAN.LOANTYPEID)         
                                                      WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE FROM MONTHLYTYPE MT WHERE ACCOUNT.MONTHLYTYPEID=MT.MONTHLYTYPEID)       
                        END AS LOANORMONTHLYTITLE   FROM  FORCEPAYMENT          
            INNER JOIN   LOAN ON FORCEPAYMENT.PARENTID = LOAN.LOANID          
            INNER JOIN   ACCOUNT ON  LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID          
   WHERE (LOANNO=@NO) AND        
          MATUREDATE BETWEEN @MATUREDATEFROM  AND @MATUREDATETO AND      
          FORCETYPEID=1                      AND      
         (FAMILYID=@FAMILYID OR @FAMILYID=0) AND       
         (PAID=@PAYSTATUS OR @PAYSTATUS=2)   AND       
                       (LOAN.LOANTYPEID=@LOANTYPEID OR @LOANTYPEID=0) AND      
                       (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)      
ELSE          
 BEGIN          
   IF @FOCETYPEID IN (0,1)          
     INSERT INTO @RESULTTABLE    
     select ACCOUNT.ACCOUNTID,      
                        FORCETYPEID,       
                        FORCEPAYMENTID,PARENTID,       
                        ACCOUNTNO,       
                        --DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE ,
                        IsNull(Contact.Lastname,Account.AccountTitle)+isnull(' - '+Contact.FirstName,'') AS ACCOUNTTITLE ,
                        LOANNO,       
                        FORCEPAYMENT.AMOUNT,      
                        MATUREDATE,          
                        PAID,      
                        ORDERNO,      
                        1 DELAY ,      
                        2 AMERCE,      
                        case when Paid=1 THEN FORCEPAYMENT.PAYMENTID ELSE NULL END,-- Amin Added      
                        NULL,      
                        FORCEPAYMENT.COMMENT,     -- Amin Changed 
                        INTERESTAMOUNT    ,      
                        CASE forcepayment.ForceTypeID WHEN 1 THEN (SELECT TOP 1 LTT.LOANTYPETITLE FROM LOANTYPE LTT WHERE LTT.LOANTYPEID=LOAN.LOANTYPEID)
													  WHEN 2 Then (SELECT TOP 1 MT.MONTHLYTYPETITLE FROM MONTHLYTYPE MT WHERE ACCOUNT.MONTHLYTYPEID=MT.MONTHLYTYPEID)
													  end AS LOANORMONTHLYTITLE      
     FROM  FORCEPAYMENT          
             INNER JOIN   LOAN ON FORCEPAYMENT.PARENTID = LOAN.LOANID          
             INNER JOIN   ACCOUNT ON  LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID  
             INNER JOIN Payment p ON p.PaymentID= loan.PaymentID    -- Amin Added 
             LEFT OUTER JOIN Contact ON Account.ContactID = Contact.ContactID  
     WHERE  (ACCOUNTNO=@NO OR @NO='') AND       
             MATUREDATE BETWEEN @MATUREDATEFROM  AND @MATUREDATETO AND          
             FORCETYPEID=1 AND       
            (FAMILYID=@FAMILYID or @FAMILYID=0) AND       
            (PAID=@PAYSTATUS or @PAYSTATUS=2) AND       
            (LOAN.LOANTYPEID=@LOANTYPEID or @LOANTYPEID=0)  AND      
            (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)
             AND p.PaymentID NOT IN (SELECT p2.PaymentID FROM Payment p2 WHERE p2.PayTypeSecondId=8) -- Amin Added                                                                                                         
          
   IF @FOCETYPEID IN (0,2)           
     INSERT INTO @RESULTTABLE                   
     SELECT   TOP 1000   ACCOUNTID,  
                         FORCETYPEID,       
                         FORCEPAYMENTID,  
                         PARENTID,       
                         ACCOUNTNO,       
                         --DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE ,  
                         IsNull(Contact.Lastname,Account.AccountTitle)+isnull(' - '+Contact.FirstName,'') AS ACCOUNTTITLE ,     
                         NULL LOANNO,       
                         FORCEPAYMENT.AMOUNT,        
                         MATUREDATE,          
                         PAID,       
                         ORDERNO,      
                         1 DELAY ,      
                         2 AMERCE,     
                         FORCEPAYMENT.PAYMENTID,      
                         NULL,      
                         COMMENT,INTERESTAMOUNT    ,      
                         CASE FORCEPAYMENT.FORCETYPEID WHEN 1 THEN ('وام')         
                                                       WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE FROM MONTHLYTYPE MT WHERE ACCOUNT.MONTHLYTYPEID=MT.MONTHLYTYPEID)       
                         END AS LOANORMONTHLYTITLE      
     FROM  FORCEPAYMENT          
                INNER JOIN   ACCOUNT ON  FORCEPAYMENT.PARENTID = ACCOUNT.ACCOUNTID
				LEFT OUTER JOIN Contact ON Account.ContactID = Contact.ContactID            
     WHERE (ACCOUNTNO=@NO OR @NO='') AND       
            MATUREDATE BETWEEN @MATUREDATEFROM  AND @MATUREDATETO AND          
            FORCETYPEID=2 AND        
           (FAMILYID=@FAMILYID OR @FAMILYID=0) AND       
           (PAID=@PAYSTATUS OR @PAYSTATUS=2)    AND       
           (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)           
          
END          
          
          
SELECT *       
INTO #M  -- SQL BUG IN USE TABLE VARIABLE IN SUBQUERY          
FROM @RESULTTABLE          
          
          
IF @ONLYLATEST=1          
DELETE #M         
WHERE    EXISTS (SELECT *       
                 FROM #M M       
                 WHERE M.PARENTID=#M.PARENTID AND M.FORCETYPEID=#M.FORCETYPEID AND M.MATUREDATE<#M.MATUREDATE)          
          
          
UPDATE #M        
SET PAYDATE=[DATE]       
FROM #M    LEFT JOIN PAYMENT ON #M.PAYMENTID=PAYMENT.PAYMENTID          
          
          
DECLARE @MONTHLYTOLERANCE INT,      
        @MONTHLYFROMFIRST BIT,      
        @MONTHLYAMERCE INT,          
        @PARTTOLERANCE INT   ,      
        @PARTFROMFIRST BIT   ,      
        @PARTAMERCE INT          
          
SELECT @MONTHLYTOLERANCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYTOLERANCE'          
SELECT @PARTTOLERANCE=VALUE    FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTTOLERANCE'          
SELECT @PARTFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END  FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTFROMFIRST'          
SELECT @MONTHLYFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYFROMFIRST'          
SELECT @PARTAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTAMERCE'          
SELECT @MONTHLYAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYAMERCE'          
          
UPDATE #M          
SET AMERCE=dbo.Calc_PartAmerce(MatureDate, Amount , ISNULL(PAYDATE,@Today))       
WHERE FORCETYPEID=1     
  
UPDATE #M          
SET AMERCE=dbo.Calc_MonthlyAmerce(MatureDate, Amount ,ISNULL(PAYDATE,@Today))       
WHERE FORCETYPEID=2            
          
UPDATE #M          
SET DELAY=DBO.SHAMSIDATEDIFF(MATUREDATE,ISNULL(PAYDATE,@TODAY))          
          
          
IF @DELAYDAYS>0          
  DELETE #M WHERE DELAY<=@DELAYDAYS               
      
      
SELECT @SUMAMOUNT=SUM(CAST(AMOUNT AS BIGINT)),      
       @SUMAMERCE=SUM(AMERCE),      
       @SUMINTEREST=SUM(INTERESTAMOUNT)       
FROM #M          
          
      
      
SET @SUMAMOUNT=ISNULL(@SUMAMOUNT,0)          
SET @SUMAMERCE=ISNULL(@SUMAMERCE,0)      
SET @SUMINTEREST=ISNULL(@SUMINTEREST,0)          
          
IF @GROUPINGBYACCOUNT=0          
 SELECT #M.*,FOCETYPETITLE          
 FROM #M  INNER JOIN        
             FORCETYPE ON #M.FORCETYPEID = FORCETYPE.FOCETYPEID          
          
ELSE          
         SELECT  ACCOUNTID,ACCOUNTNO,       
                 DBO.GET_ACCOUNTFULLNAME(ACCOUNTID) AS ACCOUNTTITLE,          
                 SUM(CAST(AMOUNT AS BIGINT)) SUMAMOUNT,          
          SUM(DELAY) SUMDELAY,          
          SUM(CASE WHEN FORCETYPEID=1 THEN AMOUNT ELSE 0 END) SUMPART,          
          SUM(CASE WHEN FORCETYPEID=2 THEN AMOUNT ELSE 0 END) SUMMONTHLY,          
          SUM(AMERCE) SUMAMERCE,SUM(INTERESTAMOUNT) INTERESTAMOUNT          
  FROM #M          
  GROUP BY ACCOUNTID,ACCOUNTNO, ACCOUNTTITLE

GO
/****** Object:  StoredProcedure [dbo].[REPORT_FORCEPAYMENTSMS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create PROCEDURE [dbo].[REPORT_FORCEPAYMENTSMS]         
	  @FOCETYPEID TINYINT,-- 0 MEANS ALL          
	  @PAYSTATUS TINYINT, --  0= NOTPAID, 1=PAID,2 MEANS ALL          
	  @GROUPINGBYACCOUNT BIT=0,--          
	  @DELAYDAYS TINYINT,-- 0= ALL , 1=DELAYED,2 LATESTNOTPAID          
	  @ONLYLATEST BIT ,--0 = ALL ,1= LATEST          
	  @NO VARCHAR(20)='0',-- 0 MEANS ALL          
	  @SEARCHBYLOANNO BIT =0,--          
	  @MATUREDATEFROM CHAR(10),          
	  @MATUREDATETO CHAR(10),          
	  @FAMILYID SMALLINT,-- 0 MEANS ALL      
	  @LOANTYPEID SMALLINT=0,-- 0 MEANS ALL      
	  @MONTHLYTYPEID SMALLINT=0,-- 0 MEANS ALL      
	  @TODAY CHAR(10),
	  @TOP INT=1000,      
	  @SUMAMOUNT BIGINT OUTPUT,          
	  @SUMAMERCE BIGINT OUTPUT,          
	  @SUMINTEREST BIGINT OUTPUT          
			  
	AS          
		   
	IF @ONLYLATEST=1          
	 BEGIN          
	   SET @PAYSTATUS=0          
	   SET @DELAYDAYS=0          
	 END          
	SET @NO=ISNULL(LTRIM(@NO),'')          
	IF @SEARCHBYLOANNO=1          
	  SET @FOCETYPEID=1          
	  
	  
			

	DECLARE  @RESULTTABLE          
	TABLE ( ACCOUNTID INT ,          
			FORCETYPEID TINYINT NOT NULL,          
			FORCEPAYMENTID INT NOT NULL,          
			PARENTID INT NOT NULL,          
			ACCOUNTNO VARCHAR(20) NOT NULL,          
			ACCOUNTTITLE NVARCHAR(100) NULL,          
			LOANNO VARCHAR(10)  NULL,          
			AMOUNT INT NOT NULL,          
			MATUREDATE CHAR(10) NOT NULL,          
			PAID BIT NOT NULL,          
			ORDERNO TINYINT  NOT NULL,          
			DELAY INT  NULL,          
			AMERCE INT NULL,          
			PAYMENTID INT NULL,          
			PAYDATE CHAR(10),          
			COMMENT   NVARCHAR(100),          
			INTERESTAMOUNT INT ,      
			LOANORMONTHLYTITLE NVARCHAR(100),
			ContactID INT
	)          
			  
			  
			  
	IF @SEARCHBYLOANNO=1          
		  INSERT INTO @RESULTTABLE                   
		  SELECT           ACCOUNT.ACCOUNTID,      
							FORCETYPEID,      
							FORCEPAYMENTID,       
							PARENTID,      
							ACCOUNTNO,       
							DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE,       
							LOANNO,       
							FORCEPAYMENT.AMOUNT,      
							MATUREDATE,          
							PAID,      
							ORDERNO,      
							1 DELAY ,      
							2 AMERCE,      
							FORCEPAYMENT.PAYMENTID,      
							NULL,      
							COMMENT,      
							INTERESTAMOUNT    ,      
							CASE FORCEPAYMENT.FORCETYPEID WHEN 1 THEN (SELECT TOP 1 LTT.LOANTYPETITLE FROM LOANTYPE LTT WHERE LTT.LOANTYPEID=LOAN.LOANTYPEID)         
														  WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE FROM MONTHLYTYPE MT WHERE ACCOUNT.MONTHLYTYPEID=MT.MONTHLYTYPEID)       
							END AS LOANORMONTHLYTITLE  ,ACCOUNT.ContactID FROM  FORCEPAYMENT          

				INNER JOIN   LOAN ON FORCEPAYMENT.PARENTID = LOAN.LOANID          
				INNER JOIN   ACCOUNT ON  LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID          
	   WHERE (LOANNO=@NO) AND        
			  MATUREDATE BETWEEN @MATUREDATEFROM  AND @MATUREDATETO AND      
			  FORCETYPEID=1                      AND      
			 (FAMILYID=@FAMILYID OR @FAMILYID=0) AND       
			 (PAID=@PAYSTATUS OR @PAYSTATUS=2)   AND       
						   (LOAN.LOANTYPEID=@LOANTYPEID OR @LOANTYPEID=0) AND      
						   (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)  
			AND account.IsActive = 1    
	ELSE          
	 BEGIN          
	   IF @FOCETYPEID IN (0,1)          
		 INSERT INTO @RESULTTABLE    
		 select ACCOUNT.ACCOUNTID,      
							FORCETYPEID,       
							FORCEPAYMENTID,PARENTID,       
							ACCOUNTNO,       
							--DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE ,
							IsNull(Contact.Lastname,Account.AccountTitle)+isnull(' - '+Contact.FirstName,'') AS ACCOUNTTITLE ,
							LOANNO,       
							FORCEPAYMENT.AMOUNT,      
							MATUREDATE,          
							PAID,      
							ORDERNO,      
							1 DELAY ,      
							2 AMERCE,      
							case when Paid=1 THEN FORCEPAYMENT.PAYMENTID ELSE NULL END,-- Amin Added      
							NULL,      
							FORCEPAYMENT.COMMENT,     -- Amin Changed 
							INTERESTAMOUNT    ,      
							CASE forcepayment.ForceTypeID WHEN 1 THEN (SELECT TOP 1 LTT.LOANTYPETITLE FROM LOANTYPE LTT WHERE LTT.LOANTYPEID=LOAN.LOANTYPEID)
														  WHEN 2 Then (SELECT TOP 1 MT.MONTHLYTYPETITLE FROM MONTHLYTYPE MT WHERE ACCOUNT.MONTHLYTYPEID=MT.MONTHLYTYPEID)
														  end AS LOANORMONTHLYTITLE 
							,account.ContactID
		 FROM  FORCEPAYMENT          
				 INNER JOIN   LOAN ON FORCEPAYMENT.PARENTID = LOAN.LOANID          
				 INNER JOIN   ACCOUNT ON  LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID  
				 INNER JOIN Payment p ON p.PaymentID= loan.PaymentID    -- Amin Added 
				 LEFT OUTER JOIN Contact ON Account.ContactID = Contact.ContactID  
		 WHERE  (ACCOUNTNO=@NO OR @NO='') AND       
				 MATUREDATE BETWEEN @MATUREDATEFROM  AND @MATUREDATETO AND          
				 FORCETYPEID=1 AND       
				(FAMILYID=@FAMILYID or @FAMILYID=0) AND       
				(PAID=@PAYSTATUS or @PAYSTATUS=2) AND       
				(LOAN.LOANTYPEID=@LOANTYPEID or @LOANTYPEID=0)  AND      
				(ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)
				 AND p.PaymentID NOT IN (SELECT p2.PaymentID FROM Payment p2 WHERE p2.PayTypeSecondId=8) -- Amin Added
		AND account.IsActive = 1 
			  
	   IF @FOCETYPEID IN (0,2)           
		 INSERT INTO @RESULTTABLE                   
		 SELECT   TOP 1000   ACCOUNTID,  
							 FORCETYPEID,       
							 FORCEPAYMENTID,  
							 PARENTID,       
							 ACCOUNTNO,       
							 --DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE ,  
							 IsNull(Contact.Lastname,Account.AccountTitle)+isnull(' - '+Contact.FirstName,'') AS ACCOUNTTITLE ,     
							 NULL LOANNO,       
							 FORCEPAYMENT.AMOUNT,        
							 MATUREDATE,          
							 PAID,       
							 ORDERNO,      
							 1 DELAY ,      
							 2 AMERCE,     
							 FORCEPAYMENT.PAYMENTID,      
							 NULL,      
							 COMMENT,INTERESTAMOUNT    ,      
							 CASE FORCEPAYMENT.FORCETYPEID WHEN 1 THEN ('وام')         
														   WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE FROM MONTHLYTYPE MT WHERE ACCOUNT.MONTHLYTYPEID=MT.MONTHLYTYPEID)       
							 END AS LOANORMONTHLYTITLE  ,dbo.Account.ContactID    
		 FROM  FORCEPAYMENT          
					INNER JOIN   ACCOUNT ON  FORCEPAYMENT.PARENTID = ACCOUNT.ACCOUNTID
					LEFT OUTER JOIN Contact ON Account.ContactID = Contact.ContactID            
		 WHERE (ACCOUNTNO=@NO OR @NO='') AND       
				MATUREDATE BETWEEN @MATUREDATEFROM  AND @MATUREDATETO AND          
				FORCETYPEID=2 AND        
			   (FAMILYID=@FAMILYID OR @FAMILYID=0) AND       
			   (PAID=@PAYSTATUS OR @PAYSTATUS=2)    AND       
			   (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)
		   AND account.IsActive = 1 
			  
	END          
			  
			  
	SELECT *       
	INTO #M  -- SQL BUG IN USE TABLE VARIABLE IN SUBQUERY          
	FROM @RESULTTABLE          
			  
			  
	IF @ONLYLATEST=1          
	DELETE #M         
	WHERE    EXISTS (SELECT *       
					 FROM #M M       
					 WHERE M.PARENTID=#M.PARENTID AND M.FORCETYPEID=#M.FORCETYPEID AND M.MATUREDATE<#M.MATUREDATE)          
			  
			  
	UPDATE #M        
	SET PAYDATE=[DATE]       
	FROM #M    LEFT JOIN PAYMENT ON #M.PAYMENTID=PAYMENT.PAYMENTID          
			  
			  
	DECLARE @MONTHLYTOLERANCE INT,      
			@MONTHLYFROMFIRST BIT,      
			@MONTHLYAMERCE INT,          
			@PARTTOLERANCE INT   ,      
			@PARTFROMFIRST BIT   ,      
			@PARTAMERCE INT          
			  
	SELECT @MONTHLYTOLERANCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYTOLERANCE'          
	SELECT @PARTTOLERANCE=VALUE    FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTTOLERANCE'          
	SELECT @PARTFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END  FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTFROMFIRST'          
	SELECT @MONTHLYFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYFROMFIRST'          
	SELECT @PARTAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='PARTAMERCE'          
	SELECT @MONTHLYAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYAMERCE'          
			  
	UPDATE #M          
	SET AMERCE=dbo.Calc_PartAmerce(MatureDate, Amount , ISNULL(PAYDATE,@Today))       
	WHERE FORCETYPEID=1     
	  
	UPDATE #M          
	SET AMERCE=dbo.Calc_MonthlyAmerce(MatureDate, Amount ,ISNULL(PAYDATE,@Today))       
	WHERE FORCETYPEID=2            
			  
	UPDATE #M          
	SET DELAY=DBO.SHAMSIDATEDIFF(MATUREDATE,ISNULL(PAYDATE,@TODAY))          
			  
			  
	IF @DELAYDAYS>0          
	  DELETE #M WHERE DELAY<=@DELAYDAYS               
		  
		  
	SELECT @SUMAMOUNT=SUM(CAST(AMOUNT AS BIGINT)),      
		   @SUMAMERCE=SUM(AMERCE),      
		   @SUMINTEREST=SUM(INTERESTAMOUNT)       
	FROM #M          
			  
		  
		  
	SET @SUMAMOUNT=ISNULL(@SUMAMOUNT,0)          
	SET @SUMAMERCE=ISNULL(@SUMAMERCE,0)      
	SET @SUMINTEREST=ISNULL(@SUMINTEREST,0)          
			  
	IF @GROUPINGBYACCOUNT=0          
	 SELECT 
	 #M.accountno ,#M.accounttitle,#M.loanno,FOCETYPETITLE  ,COUNT(*)DelayCount  ,FORCETYPE.FOCETYPEID,#m.ContactID,c.Phones,s.SimilarWord,MIN(MatureDate)FromDate
	 FROM #M  
	 INNER JOIN FORCETYPE ON #M.FORCETYPEID = FORCETYPE.FOCETYPEID
	 INNER JOIN dbo.Contact c ON c.ContactID=#M.ContactID
	 LEFT JOIN sexes s ON s.sexid=c.sexid
			  where #M.delay >0
			  GROUP BY #M.accountno,#M.accounttitle,#M.loanno,FOCETYPETITLE  ,FORCETYPE.FOCETYPEID,#m.ContactID,c.Phones,s.SimilarWord
			  HAVING COUNT(*) >0
	ELSE          
			 SELECT  ACCOUNTID,ACCOUNTNO,       
					 DBO.GET_ACCOUNTFULLNAME(ACCOUNTID) AS ACCOUNTTITLE,          
					 SUM(CAST(AMOUNT AS BIGINT)) SUMAMOUNT,          
			  SUM(DELAY) SUMDELAY,          
			  SUM(CASE WHEN FORCETYPEID=1 THEN AMOUNT ELSE 0 END) SUMPART,          
			  SUM(CASE WHEN FORCETYPEID=2 THEN AMOUNT ELSE 0 END) SUMMONTHLY,          
			  SUM(AMERCE) SUMAMERCE,SUM(INTERESTAMOUNT) INTERESTAMOUNT          
	  FROM #M          
	  GROUP BY ACCOUNTID,ACCOUNTNO, ACCOUNTTITLE



GO
/****** Object:  StoredProcedure [dbo].[REPORT_LATESTPAYMENT_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[REPORT_LATESTPAYMENT_BYACCOUNTID]
@ACCOUNTID INT
AS

SELECT   TOP 5  PAYMENT.*,
CASE WHEN @ACCOUNTID=DEBTORACCOUNTID THEN PAYMENT.AMOUNT ELSE 0 END DEBIT,
CASE WHEN @ACCOUNTID=CREDITORACCOUNTID THEN PAYMENT.AMOUNT ELSE 0 END CREDIT,
  USERS.FULLNAME,ACCOUNTTITLE
FROM       PAYMENT
LEFT JOIN  USERS ON PAYMENT.INSERTUSERID = USERS.USERID
LEFT JOIN  ACCOUNT ON CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END = ACCOUNT.ACCOUNTID
LEFT  JOIN FINANCIALNOTE  ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID
WHERE   (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))
ORDER BY PAYMENT.DATE DESC


GO
/****** Object:  StoredProcedure [dbo].[REPORT_LOAN]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[REPORT_LOAN](@WHERE VARCHAR(1000),@ROWCOUNT CHAR(100)=500)            
AS    
            
DECLARE @SQL NVARCHAR(4000)                
--DECLARE @WHERE VARCHAR(1000)    
SET @WHERE =ISNULL(LTRIM(@WHERE),'')            
IF @WHERE <>'' SET @WHERE=' WHERE  '+@WHERE  
          
IF @ROWCOUNT=0 
  SET @SQL='SELECT '
ELSE
  SET @SQL='SELECT TOP '+@ROWCOUNT  
            
SET @SQL=@Sql+'            
	      LOANID, 
          LOANNO,
          LOANDATE,
          PARTSBEGINDATE,
          AMOUNT,            
          LOANTYPETITLE,
          ACCOUNTNO,/*ACCOUNTTITLE,*/           
          ISNULL(FIRSTNAME+'' '','''')+LASTNAME SPONSORTITLE, 
          (SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND FORCETYPEID=1 AND PAID=1) PAIEDAMOUNT ,           
          (SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND FORCETYPEID=1 ) NUMBEROFPART,            
          (SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND  FORCETYPEID=1 AND PAID=1) NUMBEROFPAIDPART,            
          (SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID AND PAID=0) REMAINOFLOAN,            
          (SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND PAID=0 AND FORCETYPEID=1 AND MATUREDATE<DBO.SHAMSI(GETDATE()) ) DELAYEDPARTS,
          ACCOUNT.FAMILYID /*RANJBAR*/ ,
          (SELECT RTRIM(C.LASTNAME) FROM CONTACT C WHERE C.CONTACTID = ACCOUNT.CONTACTID) + '' - ''+        
          (SELECT RTRIM(C.FIRSTNAME) FROM CONTACT C WHERE C.CONTACTID = ACCOUNT.CONTACTID)AS ACCOUNTTITLE   /*RANJBAR*/,        
          LOANCOMMENT /*RANJBAR*/       ,
          Family.FamilyTitle   ,Loan.LoanTypeID    
-- FROM LOAN            
-- INNER JOIN ACCOUNT ON ACCOUNT.ACCOUNTID=LOAN.ACCOUNTID            
-- LEFT JOIN LOANTYPE ON LOAN.LOANTYPEID=LOANTYPE.LOANTYPEID            
-- LEFT JOIN CONTACT ON LOAN.SPONSORCONTACTID=CONTACT.CONTACTID               
FROM         Loan INNER JOIN
                      Account ON Account.AccountID = Loan.AccountID LEFT OUTER JOIN
                      Family ON Account.Familyid = Family.FamilyID LEFT OUTER JOIN
                      LoanType ON Loan.LoanTypeID = LoanType.LoanTypeID LEFT OUTER JOIN
                      Contact ON Loan.SponsorContactID = Contact.ContactID '               
            
SET @SQL=@SQL+@WHERE+' ORDER BY LOANNO '     
--SELECT   @SQL             
EXEC SP_EXECUTESQL @SQL
GO
/****** Object:  StoredProcedure [dbo].[Report_LoanPerAccount]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---------------------------------------
---------------------------------------
CREATE  PROCEDURE [dbo].[Report_LoanPerAccount](@AccountID int,@SelAll int)      
AS
    
 SELECT DISTINCT Loan.AccountID,  
  loan.LoanID,
                  Account.AccountTitle,       
                  Account.AccountNo,       
                  Account.AccountDate,       
                  SUM(Loan.Amount) AS MablaghVam,       
                  LoanType.LoanTypeTitle,  
                  --DBO.TotalExist (Loan.AccountID,'9', 0)TOTALEXIST,
                  DBO.Exist (Loan.AccountID,'9')TOTALEXIST,     --By Hadi Mohamed 92/04/18 
                  (SELECT COUNT(1)      
                   FROM   Loan  L1 INNER JOIN      
                          ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and L1.LoanTypeID = Loan.LoanTypeID  AND F1.FORCETYPEID = 1 AND L1.AMOUNT=LOAN.AMOUNT AND Loan.AccountID =L1.AccountID) AS TedadAghsat 
,      
                  ISNULL((SELECT TOP 1 F1.AMOUNT+f1.InterestAmount   AS t       
                   FROM Loan  L1 INNER JOIN      
                        ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and L1.LoanTypeID = Loan.LoanTypeID  AND F1.FORCETYPEID = 1 AND L1.AMOUNT=LOAN.AMOUNT AND Loan.AccountID =L1.AccountID        
                   ORDER BY t ASC),0) AS MablaghYekGhest       
 ,      
                  ISNULL((SELECT COUNT(1)      
                   FROM Loan  L1 INNER JOIN      
                        ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and L1.LoanTypeID = Loan.LoanTypeID  AND F1.FORCETYPEID = 1 AND F1.PAID = 1 AND L1.AMOUNT=LOAN.AMOUNT AND Loan.AccountID =L1.AccountID),0) AS tedadAghsatPardakhtShode    
 ,      
                  ISNULL((SELECT SUM(F1.AMOUNT)      
                   FROM Loan  L1 INNER JOIN      
                        ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and L1.LoanTypeID = Loan.LoanTypeID  AND F1.FORCETYPEID = 1 AND F1.PAID = 1 AND L1.AMOUNT=LOAN.AMOUNT AND Loan.AccountID =L1.AccountID),0) AS AghsatPardakhti     
       
 ,                ISNULL((ISNULL(SUM(Loan.Amount),0)-
                  ISNULL((SELECT SUM(F1.AMOUNT)      
                   FROM Loan  L1 INNER JOIN      
                        ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and L1.LoanTypeID = Loan.LoanTypeID  AND F1.FORCETYPEID = 1 AND F1.PAID = 1 AND L1.AMOUNT=LOAN.AMOUNT AND Loan.AccountID =L1.AccountID),0)),0) AS mandehVam      
,
                  isnull(ISNULL((SELECT isnull(SUM(F1.AMOUNT),0)+isnull(SUM(InterestAmount),0)      
                   FROM   Loan  L1 INNER JOIN      
                          ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and F1.PAID =0  AND Loan.AccountID =L1.AccountID AND F1.ForceTypeID = 1),0),0) AS TotalMandehVam   
,
				  ISNULL((SELECT SUM(InterestAmount) FROM ForcePayment WHERE ParentID = Loan.LoanID AND ForceTypeID = 1 AND ForcePayment.Paid = 1),0) AS PaidIntrestAmount,
				  ISNULL((SELECT SUM(InterestAmount) FROM ForcePayment WHERE ParentID = Loan.LoanID AND ForceTypeID = 1),0) AS TotalIntrestAmount
,
                  ISNULL((SELECT SUM(F1.AMOUNT)+SUM(InterestAmount)      
                   FROM Loan  L1 INNER JOIN      
                        ForcePayment F1 ON L1.LoanID = F1.ParentID        
                   WHERE L1.LoanID=loan.LoanID and L1.LoanTypeID = Loan.LoanTypeID  AND F1.FORCETYPEID = 1 AND F1.PAID = 1 AND L1.AMOUNT=LOAN.AMOUNT AND Loan.AccountID =L1.AccountID),0) AS JamePardakhti 
 
 FROM  Loan INNER JOIN      
       LoanType ON Loan.LoanTypeID = LoanType.LoanTypeID INNER JOIN      
       Account  ON Loan.AccountID = Account.AccountID INNER JOIN      
       Contact  ON Account.ContactID = Contact.ContactID     
WHERE (Loan.AccountID= @AccountID AND @SelAll<>1) OR (@SelAll = 1)
GROUP BY  Loan.AccountID, Account.AccountNo,Account.AccountTitle,Account.AccountDate, LoanType.LoanTypeTitle,
	Loan.Amount,Loan.LoanTypeID, Loan.LoanID
ORDER BY Account.AccountNo,Account.AccountTitle, Account.AccountDate

GO
/****** Object:  StoredProcedure [dbo].[REPORT_LOANPOINT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
--===============================================================================================
--===============================================================================================

------------------------------------------------
------------------------------------------------
CREATE PROCEDURE [dbo].[REPORT_LOANPOINT]    
@TODAY CHAR(10),@AccountNO varchar(20),@AccountTitle nvarchar(100)      
AS      
DECLARE @LASTLOANDATE   CHAR(10),@ACCOUNTDATE CHAR(10),@REQUESTDATE CHAR(10),@POINT INT      
DECLARE @PARTDELAYPOINT INT , @MONTHLYDELAYPOINT INT, @LASTLOANPOINT INT,@LOANREQUESTPOINT INT,@BALANCEPOINT INT      
DECLARE @LoanPointSetting  INT,@MonthPointSetting INT
DECLARE @GroupPoint INT -- Amin Added
      
SELECT @BALANCEPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='BALANCEPOINT' AND USERID=-1      
      
SELECT @PARTDELAYPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='PARTDELAYPOINT' AND USERID=-1      
      
SELECT @MONTHLYDELAYPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='MONTHLYDELAYPOINT' AND USERID=-1      
      
SELECT @LASTLOANPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='LASTLOANPOINT' AND USERID=-1      
      
SELECT @LOANREQUESTPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='LOANREQUESTPOINT' AND USERID=-1      

-- Amin Added
SELECT @GroupPoint=isnull(VALUE, 0) 
FROM Setting 
WHERE VariableName='GroupPoint' AND UserID=-1
set @GroupPoint= ISNULL(@GroupPoint, 0)
-- 
      
      
SELECT      
ACCOUNTID,ACCOUNTNO,ACCOUNTTITLE,ACCOUNTDATE,      
(SELECT TOP 1 LOANDATE FROM LOAN WHERE ACCOUNTID=ACC.ACCOUNTID ORDER BY LOANDATE DESC ) LASTLOANDATE,      
(SELECT TOP 1 LOANID FROM LOAN WHERE ACCOUNTID=ACC.ACCOUNTID ORDER BY LOANDATE DESC ) LASTLOANID,      
(SELECT  MAX(REQUESTDATE) FROM DBO.LOANREQUEST WHERE ACCOUNTID=ACC.ACCOUNTID  AND EXPIRED=0)  REQUESTDATE,      
CAST(0 AS INT) PARTDELAY,      
CAST(0 AS INT) MONTHLYDELAY,      
CAST(0 AS INT) AS AVGPOINT,      
CAST(0 AS INT) AS POINT,      
CAST(0 AS TINYINT) NUMBEROFPART,      
CAST(0 AS INT) LASTLOANAMOUNT,      
CAST('' AS VARCHAR(10)) LASTLOANNO,      
CAST(0 AS INT) REMAINOFLOAN,
CAST(0 AS INT) GroupPaymentPoint--Amin Added 
INTO #M      
FROM ACCOUNT ACC      
WHERE ACCOUNTTYPEID=1 AND IsActive= 1   
      
UPDATE #M      
SET LASTLOANDATE=ISNULL(LASTLOANDATE,ACCOUNTDATE),      
 LASTLOANID=ISNULL(LASTLOANID,0)  
 

 UPDATE #M      
SET NUMBEROFPART=(SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID=#M.LASTLOANID AND FORCETYPEID=1 ) ,      
REMAINOFLOAN=(SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=#M.LASTLOANID AND PAID=0)      
      
UPDATE #M      
SET LASTLOANAMOUNT=AMOUNT,LASTLOANNO=LOANNO      
FROM #M INNER JOIN LOAN ON LOAN.LOANID=#M.LASTLOANID     
      
      
SET @LoanPointSetting  =(SELECT [VALUE] FROM SETTING WHERE VARIABLENAME ='LoanPoint')
SET @MonthPointSetting =(SELECT [VALUE] FROM SETTING WHERE VARIABLENAME ='MonthPoint')

IF @LoanPointSetting=0--تاخير بر اساس آخرين وام 
BEGIN
		UPDATE #M       
		-- Commented by Amin 91/06/05 SET PARTDELAY= DBO.LOANDELAY(LASTLOANID,@TODAY) --تاخير بر اساس آخرين وام      
		SET PARTDELAY=Floor((@PARTDELAYPOINT*DBO.LOANDELAY(LASTLOANID,@TODAY)*(Convert(float, LastLoanAmount)*0.2))/100000) -- Added by Amin 91/06/05
END
   
IF @LoanPointSetting=1 -- تاخير بر اساس افتتاح حساب
BEGIN
		UPDATE #M       
		-- Commented by Amin 91/06/05 SET PARTDELAY=dbo.LoanDelay_ByAccountId(ACCOUNTID,@TODAY) -- تاخير بر اساس افتتاح حساب
		SET PARTDELAY=Floor((@PARTDELAYPOINT*dbo.LoanDelay_ByAccountId(ACCOUNTID,@TODAY)*
			(Convert(float, LastLoanAmount)*0.2))/100000) -- Added by Amin 91/06/05
END
   
IF @MonthPointSetting=0 --تاخير بر اساس آخرين وام 
BEGIN
	UPDATE #M
		-- Commented by Amin 91/06/05 SET MONTHLYDELAY=DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(LASTLOANDATE,ACCOUNTDATE),@TODAY) --تاخير بر اساس آخرين وام    
		set MONTHLYDELAY=Floor(@MONTHLYDELAYPOINT*DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(LASTLOANDATE,ACCOUNTDATE),@TODAY)) -- Added by Amin 91/06/05
END
IF @MonthPointSetting=1 -- تاخير بر اساس افتتاح حساب
BEGIN
		UPDATE #M       
		-- Commented by Amin 91/06/05 SET MONTHLYDELAY=DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY) --تاخير بر اساس افتتاح حساب     
		set MONTHLYDELAY=Floor(@MONTHLYDELAYPOINT*DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY)) -- Added by Amin 91/06/05 
END

-- Amin Added
UPDATE #M 
SET GroupPaymentPoint= dbo.GroupPaymentPoint(LastLoanID, ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY)
--

UPDATE #M       
SET AVGPOINT= DBO.SUMBALANCE(ACCOUNTID,LASTLOANDATE,@TODAY)/304000/*,      
--تعداد روز ماه ضرب در 10000 ريال      
    PARTDELAY=dbo.LoanDelay_ByAccountId(ACCOUNTID,@TODAY),-- تاخير بر اساس افتتاح حساب
    -- DBO.LOANDELAY(LASTLOANID,@TODAY), --تاخير بر اساس آخرين وام      
    MONTHLYDELAY=DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY) --تاخير بر اساس افتتاح حساب     
    -- MONTHLYDELAY=DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY) --تاخير بر اساس آخرين وام     
 */          
      
UPDATE #M      
SET POINT=-MONTHLYDELAY - PARTDELAY
+@BALANCEPOINT*AVGPOINT      
+@LASTLOANPOINT*ISNULL(DBO.SHAMSIDATEDIFF(LASTLOANDATE,@TODAY),0)      
+@LOANREQUESTPOINT*ISNULL(DBO.SHAMSIDATEDIFF(ISNULL(REQUESTDATE,@TODAY),@TODAY),0) 
+@GroupPoint*GroupPaymentPoint  -- Amin Added
      
SELECT *      
FROM #M     
Where  (AccountNO=@AccountNO OR @AccountNO='0') AND  (AccountTitle=@AccountTitle OR @AccountTitle='0' )    
ORDER BY POINT DESC
GO
/****** Object:  StoredProcedure [dbo].[REPORT_LOANPOINTByNaseri]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create PROCEDURE [dbo].[REPORT_LOANPOINTByNaseri]     
@TODAY CHAR(10)     
AS      
DECLARE @LASTLOANDATE   CHAR(10),@ACCOUNTDATE CHAR(10),@REQUESTDATE CHAR(10),@POINT INT      
DECLARE @PARTDELAYPOINT INT , @MONTHLYDELAYPOINT INT, @LASTLOANPOINT INT,@LOANREQUESTPOINT INT,@BALANCEPOINT INT      
DECLARE @LoanPointSetting  INT,@MonthPointSetting INT
      
SELECT @BALANCEPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='BALANCEPOINT' AND USERID=-1      
      
SELECT @PARTDELAYPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='PARTDELAYPOINT' AND USERID=-1      
      
SELECT @MONTHLYDELAYPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='MONTHLYDELAYPOINT' AND USERID=-1      
      
SELECT @LASTLOANPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='LASTLOANPOINT' AND USERID=-1      
      
SELECT @LOANREQUESTPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='LOANREQUESTPOINT' AND USERID=-1      
      
      
SELECT      
ACCOUNTID,ACCOUNTNO,ACCOUNTTITLE,ACCOUNTDATE,      
(SELECT TOP 1 LOANDATE FROM LOAN WHERE ACCOUNTID=ACC.ACCOUNTID ORDER BY LOANDATE DESC ) LASTLOANDATE,      
(SELECT TOP 1 LOANID FROM LOAN WHERE ACCOUNTID=ACC.ACCOUNTID ORDER BY LOANDATE DESC ) LASTLOANID,      
(SELECT  MAX(REQUESTDATE) FROM DBO.LOANREQUEST WHERE ACCOUNTID=ACC.ACCOUNTID  AND EXPIRED=0)  REQUESTDATE,      
CAST(0 AS INT) PARTDELAY,      
CAST(0 AS INT) MONTHLYDELAY,      
CAST(0 AS INT) AS AVGPOINT,      
CAST(0 AS INT) AS POINT,      
CAST(0 AS TINYINT) NUMBEROFPART,      
CAST(0 AS INT) LASTLOANAMOUNT,      
CAST('' AS VARCHAR(10)) LASTLOANNO,      
CAST(0 AS INT) REMAINOFLOAN INTO #M      
FROM ACCOUNT ACC      
WHERE ACCOUNTTYPEID=1      
      
UPDATE #M      
SET LASTLOANDATE=ISNULL(LASTLOANDATE,ACCOUNTDATE),      
 LASTLOANID=ISNULL(LASTLOANID,0)      
      
      
SET @LoanPointSetting  =(SELECT [VALUE] FROM SETTING WHERE VARIABLENAME ='LoanPoint')
SET @MonthPointSetting =(SELECT [VALUE] FROM SETTING WHERE VARIABLENAME ='MonthPoint')

IF @LoanPointSetting=0--تاخير بر اساس آخرين وام 
BEGIN
		UPDATE #M       
		SET PARTDELAY= DBO.LOANDELAY(LASTLOANID,@TODAY) --تاخير بر اساس آخرين وام      
END
   
IF @LoanPointSetting=1 -- تاخير بر اساس افتتاح حساب
BEGIN
		UPDATE #M       
		SET PARTDELAY=dbo.LoanDelay_ByAccountId(ACCOUNTID,@TODAY) -- تاخير بر اساس افتتاح حساب
END

IF @MonthPointSetting=0 --تاخير بر اساس آخرين وام 
BEGIN
		UPDATE #M       
		SET MONTHLYDELAY=DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(LASTLOANDATE,ACCOUNTDATE),@TODAY) --تاخير بر اساس آخرين وام    
END
IF @MonthPointSetting=1 -- تاخير بر اساس افتتاح حساب
BEGIN
		UPDATE #M       
		SET MONTHLYDELAY=DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY) --تاخير بر اساس افتتاح حساب     
END

UPDATE #M       
SET AVGPOINT= DBO.SUMBALANCE(ACCOUNTID,LASTLOANDATE,@TODAY)/304000
    
 UPDATE #M      
SET NUMBEROFPART=(SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID=#M.LASTLOANID AND FORCETYPEID=1 ) ,      
REMAINOFLOAN=(SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=#M.LASTLOANID AND PAID=0)      
      
UPDATE #M      
SET LASTLOANAMOUNT=AMOUNT,LASTLOANNO=LOANNO      
FROM #M INNER JOIN LOAN ON LOAN.LOANID=#M.LASTLOANID      
      
      
      
UPDATE #M      
SET POINT=-@MONTHLYDELAYPOINT*MONTHLYDELAY-@PARTDELAYPOINT*PARTDELAY+@BALANCEPOINT*AVGPOINT      
+@LASTLOANPOINT*ISNULL(DBO.SHAMSIDATEDIFF(LASTLOANDATE,@TODAY),0)      
+@LOANREQUESTPOINT*ISNULL(DBO.SHAMSIDATEDIFF(ISNULL(REQUESTDATE,@TODAY),@TODAY),0)      
      
SELECT * 
FROM #M
Where  (Accountid in(SELECT AccountID FROM LoanPriority))    
ORDER BY POINT ASC

UPDATE LoanPriority
SET Point = #M.point,Priority = 0 FROM LoanPriority lp
INNER JOIN #M ON lp.AccountID = #M.AccountID

CREATE TABLE LoanPriorityByNaseri 
(
	AccountID INT,
	Priority SMALLINT IDENTITY(1,1),
	Point INT,
	IsUrgency BIT
)

INSERT INTO LoanPriorityByNaseri
(
	AccountID,
	Point,
	IsUrgency
)
Select AccountID,Point,IsUrgency FROM LoanPriority ORDER BY Point Asc

TRUNCATE TABLE LoanPriority

INSERT INTO LoanPriority
(
	-- LoanPriorityID -- this column value is auto-generated
	AccountID,
	Priority,
	Point,
	IsUrgency
)
Select AccountID,Priority,Point,IsUrgency FROM LoanPriorityByNaseri

DROP TABLE LoanPriorityByNaseri

GO
/****** Object:  StoredProcedure [dbo].[REPORT_LOANREQUEST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[REPORT_LOANREQUEST]  
@WHERE NVARCHAR(1000)  
AS  
DECLARE @SQL NVARCHAR(3000)  
  
SET @SQL='SELECT     ACCOUNTTITLE, ACCOUNTNO, LOANREQUESTID, REQUESTDATE, COMMENT,   
                      DOCUMENTNO, CASE EXPIRED WHEN 0 THEN ''فعال''  ELSE ''غير فعال'' END EXPIRESTATUS,  
 CASE ISURGENCY WHEN 1 THEN ''ضروري'' ELSE ''عادي'' END URGENCYSTATUS  
FROM         LOANREQUEST   
LEFT OUTER JOIN   ACCOUNT ON LOANREQUEST.ACCOUNTID = ACCOUNT.ACCOUNTID  

'  
IF ISNULL(@WHERE,'')<>''   
SET @SQL=@SQL +' AND '+@WHERE   
EXEC(@SQL)  
GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[REPORT_PAYMENT](@WHERE VARCHAR(1000))  
AS  
DECLARE @SQL NVARCHAR(4000)  
  
SET @WHERE =ISNULL(LTRIM(@WHERE),'')  
IF @WHERE <>'' SET @WHERE=' WHERE  '+@WHERE  
  
SET @SQL='SELECT PAYMENTID,CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,  
 DEBTORACCOUNT.ACCOUNTTITLE AS DEBTORACCOUNTTITLE,  
 PAYTYPE.PAYTYPETITLE,  
 PAYMENT.DATE,PAYMENT.TIME, PAYMENT.AMOUNT, PAYMENT.COMMENT, PAYMENT.INSERTDATE,CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO/*RANJBAR*/,  
 FINANCIALNOTE_DETAIL.NOTENO, FinancialNote_Master.MATUREDATE, FINANCIALNOTE_DETAIL.AMOUNT FINANCIALNOTEAMOUNT,FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE,  
 USERS.FULLNAME  ,ISNULL(COMMENT,PAYTYPETITLE) COMMENT2  
FROM PAYMENT  
INNER JOIN PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID  
INNER JOIN ACCOUNT AS CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID  
INNER JOIN ACCOUNT AS DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID  
LEFT JOIN USERS ON PAYMENT.INSERTUSERID = USERS.USERID  
LEFT JOIN  FinancialNote_Detail ON PAYMENT.FINANCIALNOTE_DETAILID = FinancialNote_Detail.FinancialNote_DetailID  
left JOIN FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID
LEFT JOIN  FINANCIALNOTETYPE ON FinancialNote_Master.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID  
'  
    
SET @SQL=@SQL+@WHERE+' ORDER BY CAST(DOCUMENTNO AS INT)/*RANJBAR*/ , PAYMENTID DESC  '  
  
EXEC SP_EXECUTESQL @SQL

GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[REPORT_PAYMENT_BYACCOUNTID]                      
                        @ACCOUNTID INT,            
                        @DATEFROM  CHAR(10),            
                        @DATETO    CHAR(10),            
                        @SUMDEBIT  BIGINT OUTPUT,            
                        @SUMCREDIT BIGINT OUTPUT ,             
                        @PAYTYPEID INT=0     ,            
                        @SORTORDER INT=1                  
AS                 
     
          
Declare @TEMPTABLE Table (PAYMENTID Int,DOCUMENTNO Int,AMOUNT Bigint,Date Varchar(30) , OTHERACCOUNTID Int,STATUS INT,SUMAMOUNT BIGINT)                      
Declare @FIRSTAMOUNT BIGINT                      
Declare @PAYMENTID INT ,@STATUS INT ,@AMOUNT BIGINT,@SUMAMOUNT BIGINT                  
Declare @FIRSTAMOUNT2 bigint 
Set @FIRSTAMOUNT2 = 0 
Declare @CalcBenefitAndWage NVARCHAR(2)
Declare @accType int
Select @CalcBenefitAndWage = LTRIM(RTRIM(VALUE)) FROM Setting WHERE LTRIM(RTRIM(VariableName)) = 'CalcBenefitAndWage'  
Select @accType = AccountTypeID FROM Account WHERE AccountID = @ACCOUNTID   
            
If @SORTORDER =1                   
Begin                 
	If @accountid=4             
	Begin            
		SELECT @FIRSTAMOUNT = SUM(Amount)                   
			FROM PAYMENT                   
			WHERE DATE <@DATEFROM  AND (  PAYTYPEID=7 )  
              
		SELECT @FIRSTAMOUNT2=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)                      
			FROM PAYMENT                   
			WHERE DATE <@DATEFROM  AND ( @accountid IN(DEBTORACCOUNTID,CREDITORACCOUNTID) and  PAYTYPEID<>7 ) 
    
		SET @FIRSTAMOUNT = @FIRSTAMOUNT2 - @FIRSTAMOUNT      
                 
	End            
	Else  if @accountid=1             
	Begin            
		SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)                      
			FROM PAYMENT                   
			WHERE DATE <@DATEFROM  AND ( @accountid IN(DEBTORACCOUNTID,CREDITORACCOUNTID) /*and  PAYTYPEID<>7 */)            
	End            
	Else            
	Begin   --Ataie
		If @CalcBenefitAndWage = '0' And @accType = 1
			Select @FIRSTAMOUNT=SUM(Case When @ACCOUNTID=DEBTORACCOUNTID  Then +AMOUNT Else -AMOUNT End)                      
				From PAYMENT                      
				Where Date <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID)and  PAYTYPEID<>7 AND PayTypeID <>6) 
		Else
			Select @FIRSTAMOUNT=SUM(Case When @ACCOUNTID=DEBTORACCOUNTID Then +AMOUNT Else -AMOUNT End)                      
				From PAYMENT                      
				Where Date <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))                          
	End             
                          
	Set @FIRSTAMOUNT=ISNULL(@FIRSTAMOUNT,0)                     
                       
	Insert Into @TEMPTABLE(PAYMENTID,DOCUMENTNO,DATE,AMOUNT,OTHERACCOUNTID,STATUS,SUMAMOUNT)                      
                   Values(0,0,@DATEFROM,ABS(@FIRSTAMOUNT),0,Case When @FIRSTAMOUNT>0 Then +1 Else -1 End,@FIRSTAMOUNT)                      
          
	IF @Accountid=4             
	Begin         
		INSERT INTO @TEMPTABLE            
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.CreditorAccountId OTHERACCOUNTID,
					Cast(-1 AS SmallInt) Status,
					CAST(0 AS BIGINT) SUMAMOUNT
				From	Payment  
					Inner Join Account ac1 on creditorAccountId=ac1.AccountId
				Where Date BETWEEN  @DATEFROM  and @DATETO
					And CreditorAccountId=4             
        
		INSERT INTO @TEMPTABLE          
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.DebtorAccountId   OTHERACCOUNTID,
					Cast(1 AS SmallInt) Status,
					CAST(0 AS BIGINT) SUMAMOUNT
				From	Payment
					Inner Join Account ac1 on DebtorAccountId=ac1.AccountId                  
				Where	Date BETWEEN  @DATEFROM  and @DATETO   
					And DebtorAccountId=4           

		INSERT INTO @TEMPTABLE            
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.CreditorAccountId   OTHERACCOUNTID,
					Cast(-1 AS SmallInt) Status,
					CAST(0 AS BIGINT) SUMAMOUNT
				From	Payment  
					Inner Join Account ac1 on creditorAccountId=ac1.AccountId
				Where	AccountTypeId=1
					And	PAYTYPEID=7
					And Date BETWEEN @DATEFROM  and @DATETO  
					--and CreditorAccountId<>4

  ------------DB                
		INSERT INTO @TEMPTABLE                    
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.DebtorAccountId   OTHERACCOUNTID,
					1 status,
					CAST(0 AS BIGINT) SUMAMOUNT
				From	Payment  
					Inner Join Account AC2 on DebtorAccountId=ac2.AccountId
				Where	AccountTypeId=1  
					And	PAYTYPEID=7
					And	Date BETWEEN @DATEFROM  and @DATETO
	End          
	Else IF @Accountid=1             
	Begin           
		INSERT INTO @TEMPTABLE                      
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					AMOUNT,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,
					CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,
					CAST(0 AS BIGINT) SUMAMOUNT
				FROM	PAYMENT
				WHERE	(PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)
					And	(@accountid IN (DEBTORACCOUNTID,CREDITORACCOUNTID)
					/*  AND (PAYMENT.PAYTYPEID<>7)*/ )                  
					--AND    (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0=PAYMENT.PAYTYPEID)               
	End          
	Else           
	Begin  
		If @CalcBenefitAndWage = '0'  AND @accType = 1       
			INSERT INTO @TEMPTABLE
				SELECT	PAYMENT.PAYMENTID,
						PAYMENT.DOCUMENTNO,
						AMOUNT,
						DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,
						CAST(0 AS BIGINT) SUMAMOUNT
					FROM	PAYMENT
					WHERE   (PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)
						And (@ACCOUNTID IN ( DEBTORACCOUNTID,CREDITORACCOUNTID))
						And (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID OR (payment.PayTypeSecondId = @PAYTYPEID AND @PAYTYPEID =8))
						And (Payment.PayTypeID <> 7) AND (Payment.PayTypeID <>6)
		ELSE --Ataie
			INSERT INTO @TEMPTABLE
				SELECT	PAYMENT.PAYMENTID,
						PAYMENT.DOCUMENTNO,
						AMOUNT,
						DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,
						CAST(0 AS BIGINT) SUMAMOUNT
					FROM	PAYMENT
					WHERE   (PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)                      
						And (@ACCOUNTID IN ( DEBTORACCOUNTID,CREDITORACCOUNTID))                  
						And (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID OR (payment.PayTypeSecondId = @PAYTYPEID AND @PAYTYPEID =8))  
	End          

	SET @SUMAMOUNT=0                  
	DECLARE EMPLOYEE_CURSOR CURSOR FOR                  
				SELECT PAYMENTID,STATUS,AMOUNT                   
					FROM @TEMPTABLE                   
					ORDER BY  DATE                                     
	
	OPEN EMPLOYEE_CURSOR                
                 
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT                  
	WHILE @@FETCH_STATUS = 0                  
	BEGIN             
                        
		SET @SUMAMOUNT=@SUMAMOUNT+(@STATUS*@AMOUNT)       

		UPDATE @TEMPTABLE
			SET SUMAMOUNT=@SUMAMOUNT
			FROM @TEMPTABLE
			WHERE PAYMENTID=@PAYMENTID

		FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	END
	CLOSE EMPLOYEE_CURSOR
	DEALLOCATE EMPLOYEE_CURSOR

	SELECT	M.PAYMENTID,
			PAYMENT.CREDITORACCOUNTID,
			PAYMENT.DEBTORACCOUNTID,
			PAYMENT.DATE,
			PAYMENT.TIME,
			M.AMOUNT,
			PAYMENT.COMMENT,
			PAYMENT.FINANCIALNOTEID,
			PAYMENT.INSERTUSERID,
			PAYMENT.INSERTDATE,
			PAYMENT.LASTUPDATE,
			PAYMENT.LASTUSERID,
			PAYMENT.PAYTYPEID,
			PAYMENT.RELATEDID,
			CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO,
			CASE WHEN STATUS>0 THEN M.AMOUNT ELSE 0 END DEBIT,
			CASE WHEN STATUS<0 THEN M.AMOUNT ELSE 0 END CREDIT,
			CASE WHEN M.PAYMENTID>0 THEN ACCOUNT.ACCOUNTTITLE ELSE 'حساب ابتداي دوره'  END ACCOUNTTITLE,
			CASE WHEN SUMAMOUNT<0 THEN 'بس' when SUMAMOUNT>0 THEN 'بد' else '-' END DEBITSTATUS,
			USERS.FULLNAME,
			ABS(SUMAMOUNT) SUMAMOUNT,
			PAYTYPETITLE,
			STATUS
		FROM	@TEMPTABLE M
			Left Join PAYMENT ON M.PAYMENTID=PAYMENT.PAYMENTID
			Left Join PAYTYPE ON PAYMENT.PAYTYPEID=PAYTYPE.PAYTYPEID
			Left Join USERS ON PAYMENT.INSERTUSERID = USERS.USERID
			Left Join ACCOUNT ON M.OTHERACCOUNTID = ACCOUNT.ACCOUNTID
			Left Join FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID
		WHERE (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID OR (payment.PayTypeSecondId = @PAYTYPEID AND @PAYTYPEID =8))
		ORDER BY M.DATE --,M.PAYMENTID

	SELECT	@SUMCREDIT=SUM(AMOUNT)
		FROM	@TEMPTABLE
		WHERE STATUS<0

	SELECT	@SUMDEBIT=SUM(AMOUNT)
		FROM	@TEMPTABLE
		WHERE STATUS>0

	SET @SUMDEBIT=ISNULL(@SUMDEBIT,0)
	SET @SUMCREDIT=ISNULL(@SUMCREDIT,0)
End
Else
Begin --@SORTORDER <> 1 
	If @accountid=4
	Begin
		SELECT @FIRSTAMOUNT = SUM(Amount)
			FROM PAYMENT
			WHERE (DATE <@DATEFROM)  AND (PAYTYPEID=7)

		SELECT @FIRSTAMOUNT2=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)
			FROM PAYMENT
			WHERE DATE <@DATEFROM  AND (@accountid IN(DEBTORACCOUNTID,CREDITORACCOUNTID) and  PAYTYPEID<>7)

		SET @FIRSTAMOUNT = @FIRSTAMOUNT2 - @FIRSTAMOUNT          
	End            
	Else	If @accountid=1
	Begin
		SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)
			FROM PAYMENT
			WHERE DATE <@DATEFROM  AND ( @accountid IN(DEBTORACCOUNTID,CREDITORACCOUNTID) /*and  PAYTYPEID<>7 */)
	End
	Else
	Begin
		If @CalcBenefitAndWage = '0' AND @accType = 1
			SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)
				FROM PAYMENT
				WHERE DATE <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID)and  PAYTYPEID<>7 AND PayTypeID <>6)
		ELSE --Ataie
			SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)
				FROM PAYMENT
				WHERE DATE <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))
	End
                          
	SET @FIRSTAMOUNT=ISNULL(@FIRSTAMOUNT,0)
                       
	INSERT INTO @TEMPTABLE(PAYMENTID,DOCUMENTNO,DATE,AMOUNT,OTHERACCOUNTID,STATUS,SUMAMOUNT)
                   VALUES(0,0,@DATEFROM,ABS(@FIRSTAMOUNT),0,CASE WHEN @FIRSTAMOUNT>0 THEN +1 ELSE -1 END,@FIRSTAMOUNT)

	If	@Accountid=4
	Begin
		INSERT INTO @TEMPTABLE            
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.CreditorAccountId   OTHERACCOUNTID,
					Cast(1 AS SmallInt) Status,
					CAST(0 AS BIGINT) SUMAMOUNT                   
				From Payment
					Inner Join	Account ac1 on creditorAccountId=ac1.AccountId
				Where	Date BETWEEN  @DATEFROM  and @DATETO
						And CreditorAccountId=4

		INSERT INTO @TEMPTABLE
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.DebtorAccountId   OTHERACCOUNTID,
					Cast(1 AS SmallInt) Status,
					CAST(0 AS BIGINT) SUMAMOUNT
				From Payment
					Inner Join Account ac1 on DebtorAccountId=ac1.AccountId
				Where	Date BETWEEN  @DATEFROM  and @DATETO
						And DebtorAccountId=4
        
		INSERT INTO @TEMPTABLE
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					Amount,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					PAYMENT.CreditorAccountId OTHERACCOUNTID,
					Cast(1 AS SmallInt) Status,
					CAST(0 AS BIGINT) SUMAMOUNT
				From Payment
					Inner Join Account ac1 on creditorAccountId=ac1.AccountId
				Where  AccountTypeId=1
					And PAYTYPEID=7   
					And Date BETWEEN @DATEFROM  and @DATETO  --and CreditorAccountId<>4

  ------------DB                
		INSERT INTO @TEMPTABLE
		SELECT	PAYMENT.PAYMENTID,
				PAYMENT.DOCUMENTNO,
				Amount,
				DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
				PAYMENT.DebtorAccountId OTHERACCOUNTID,
				-1 status,
				CAST(0 AS BIGINT) SUMAMOUNT
			From Payment
				Inner Join Account AC2 on DebtorAccountId=ac2.AccountId
			Where AccountTypeId=1
				And PAYTYPEID=7
				And Date BETWEEN @DATEFROM  and @DATETO
	End
	Else If @Accountid=1
	Begin
		INSERT INTO @TEMPTABLE
			SELECT	PAYMENT.PAYMENTID,
					PAYMENT.DOCUMENTNO,
					AMOUNT,
					DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
					CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,
					CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,
					CAST(0 AS BIGINT) SUMAMOUNT
				FROM	PAYMENT
				WHERE	(PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)
					And	(@accountid IN (DEBTORACCOUNTID,CREDITORACCOUNTID)  /*  AND (PAYMENT.PAYTYPEID<>7)*/ )                  
     --AND    (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0=PAYMENT.PAYTYPEID)               
	End
	Else
	Begin
		If @CalcBenefitAndWage = '0'  AND @accType = 1
			INSERT INTO @TEMPTABLE
				SELECT	PAYMENT.PAYMENTID,
						PAYMENT.DOCUMENTNO,
						AMOUNT,
						DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,
						CAST(0 AS BIGINT) SUMAMOUNT
					FROM	PAYMENT
					WHERE	(PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)
						And	(@ACCOUNTID IN ( DEBTORACCOUNTID,CREDITORACCOUNTID))
						And	(PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID OR (payment.PayTypeSecondId = @PAYTYPEID AND @PAYTYPEID =8))
						And	(Payment.PayTypeID <> 7) AND (Payment.PayTypeID <>6)
		Else --Ataie
			INSERT INTO @TEMPTABLE
				SELECT	PAYMENT.PAYMENTID,
						PAYMENT.DOCUMENTNO,
						AMOUNT,
						DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,
						CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,
						CAST(0 AS BIGINT) SUMAMOUNT
					FROM	PAYMENT
					WHERE	(PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)
						And	(@ACCOUNTID IN ( DEBTORACCOUNTID,CREDITORACCOUNTID))
						And	(PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID OR (payment.PayTypeSecondId = @PAYTYPEID AND @PAYTYPEID =8))
	End
         
	SET @SUMAMOUNT=0
	DECLARE EMPLOYEE_CURSOR CURSOR FOR

		SELECT PAYMENTID,STATUS,AMOUNT
			FROM @TEMPTABLE
			ORDER BY DOCUMENTNO

	OPEN EMPLOYEE_CURSOR
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SUMAMOUNT=@SUMAMOUNT+(@STATUS*@AMOUNT)
		UPDATE @TEMPTABLE
				SET SUMAMOUNT=@SUMAMOUNT
			FROM @TEMPTABLE
			WHERE PAYMENTID=@PAYMENTID

		FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	END
	CLOSE EMPLOYEE_CURSOR
	DEALLOCATE EMPLOYEE_CURSOR

	SELECT	M.PAYMENTID,
			PAYMENT.CREDITORACCOUNTID,
			PAYMENT.DEBTORACCOUNTID,
			PAYMENT.DATE,
			PAYMENT.TIME,
			M.AMOUNT,
			PAYMENT.COMMENT,
			PAYMENT.FINANCIALNOTEID,
			PAYMENT.INSERTUSERID,
			PAYMENT.INSERTDATE,
			PAYMENT.LASTUPDATE,
			PAYMENT.LASTUSERID,
			PAYMENT.PAYTYPEID,
			PAYMENT.RELATEDID,
			CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO,
			--CASE  WHEN SUMAMOUNT>0 THEN M.AMOUNT ELSE 0 END DEBIT,
			--CASE  WHEN SUMAMOUNT<0 THEN M.AMOUNT ELSE 0 END CREDIT,
			CASE  WHEN STATUS = 1 THEN M.AMOUNT ELSE 0 END DEBIT,
			CASE  WHEN STATUS = -1 THEN M.AMOUNT ELSE 0 END CREDIT,
			USERS.FULLNAME,
			CASE WHEN M.PAYMENTID>0 THEN ACCOUNT.ACCOUNTTITLE ELSE 'حساب ابتداي دوره'  END ACCOUNTTITLE,
			CASE WHEN SUMAMOUNT<0 THEN 'بس' when SUMAMOUNT>0 THEN 'بد' else '-' END DEBITSTATUS,
			ABS(SUMAMOUNT) SUMAMOUNT,
			PAYTYPETITLE,
			STATUS
		FROM	@TEMPTABLE M
			Left Join PAYMENT ON M.PAYMENTID=PAYMENT.PAYMENTID
			Left Join PAYTYPE ON PAYMENT.PAYTYPEID=PAYTYPE.PAYTYPEID
			Left Join USERS ON PAYMENT.INSERTUSERID = USERS.USERID
			Left Join ACCOUNT ON M.OTHERACCOUNTID = ACCOUNT.ACCOUNTID
			Left Join FINANCIALNOTE  ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID                      
		WHERE (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID OR (payment.PayTypeSecondId = @PAYTYPEID AND @PAYTYPEID =8))
		ORDER BY M.DOCUMENTNO --,M.PAYMENTID

	SELECT @SUMCREDIT=SUM(AMOUNT)
		FROM @TEMPTABLE
		WHERE STATUS<0

	SELECT @SUMDEBIT=SUM(AMOUNT)
		FROM @TEMPTABLE
		WHERE STATUS>0
	
	SET @SUMDEBIT=ISNULL(@SUMDEBIT,0)
	SET @SUMCREDIT=ISNULL(@SUMCREDIT,0)
END

GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_BYACCOUNTID_NEW]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_PAYMENT_BYACCOUNTID_NEW]    
                    @ACCOUNTID INT,@DATEFROM CHAR(10), @DATETO CHAR(10),@SUMDEBIT BIGINT OUTPUT,@SUMCREDIT BIGINT OUTPUT , @PAYTYPEID INT=0 ,@SORTORDER    INT=1
AS

--IF  @SORTORDER =1 ORDER BY DATE
--IF  @SORTORDER =2 ORDER BY DOCNO
--DECLARE @SORTORDER    INT
--SET @SORTORDER=1
DECLARE @SQL NVARCHAR(4000)         
/*DECLARE  @ACCOUNTID INT,@DATEFROM CHAR(10),@DATETO CHAR(10),@SUMDEBIT BIGINT ,@SUMCREDIT BIGINT  , @PAYTYPEID INT  
  SET @ACCOUNTID=6    
  SET @DATEFROM ='1389/01/01'
  SET @DATETO='1389/12/29'
  SET @PAYTYPEID =0
 */

SET @SQL='
   DECLARE @TEMPTABLE TABLE (PAYMENTID INT,DOCUMENTNO INT,AMOUNT BIGINT,DATE VARCHAR(30) , OTHERACCOUNTID INT,STATUS INT,SUMAMOUNT BIGINT)    
   DECLARE @FIRSTAMOUNT BIGINT    
   DECLARE @SUMDEBIT BIGINT ,@SUMCREDIT BIGINT

	SELECT @FIRSTAMOUNT=SUM(CASE WHEN '+LTRIM(RTRIM(CAST(@ACCOUNTID AS VARCHAR(10))))+'=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)    
	FROM PAYMENT    
	WHERE DATE <'''+@DATEFROM+'''  AND ('+LTRIM(RTRIM(CAST(@ACCOUNTID AS VARCHAR(10))))+' IN (DEBTORACCOUNTID,CREDITORACCOUNTID))    
      
	SET @FIRSTAMOUNT=ISNULL(@FIRSTAMOUNT,0)   
   
	INSERT INTO @TEMPTABLE(PAYMENTID,DOCUMENTNO,DATE     ,AMOUNT           ,OTHERACCOUNTID,STATUS                                      ,SUMAMOUNT)    
	                VALUES(0        ,0         ,'''+@DATEFROM+''',ABS(@FIRSTAMOUNT),0             ,CASE WHEN @FIRSTAMOUNT>0 THEN +1 ELSE -1 END,@FIRSTAMOUNT)    


	INSERT INTO @TEMPTABLE    
	SELECT     PAYMENT.PAYMENTID,PAYMENT.DOCUMENTNO,AMOUNT,DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,    
	CASE WHEN '+LTRIM(RTRIM(CAST(@ACCOUNTID AS VARCHAR(10))))+'=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,    
	CASE WHEN '+LTRIM(RTRIM(CAST(@ACCOUNTID AS VARCHAR(10))))+'=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,    
	CAST(0 AS BIGINT) SUMAMOUNT    
	FROM         PAYMENT    
	WHERE      (PAYMENT.DATE BETWEEN '''+@DATEFROM+''' AND '''+@DATETO+''')    
	       AND ('+LTRIM(RTRIM(CAST(@ACCOUNTID AS VARCHAR(10))))+' IN (DEBTORACCOUNTID,CREDITORACCOUNTID))
  
    

	DECLARE  @PAYMENTID INT ,@STATUS INT ,@AMOUNT BIGINT,@SUMAMOUNT BIGINT
	SET @SUMAMOUNT=0
	DECLARE EMPLOYEE_CURSOR CURSOR FOR
	
        SELECT PAYMENTID,STATUS,AMOUNT 
        FROM @TEMPTABLE '
        IF  @SORTORDER =1 
           SET @SQL=@SQL+'	ORDER BY  DATE    '
        IF  @SORTORDER =2 
           SET @SQL=@SQL+'	ORDER BY  DOCUMENTNO    '
	
SET @SQL=@SQL+' OPEN EMPLOYEE_CURSOR 
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	WHILE @@FETCH_STATUS = 0
	BEGIN
	   
	        SET @SUMAMOUNT=@SUMAMOUNT+(@STATUS*@AMOUNT)
		
	        UPDATE @TEMPTABLE    
		SET SUMAMOUNT=@SUMAMOUNT
		FROM @TEMPTABLE 
	        WHERE PAYMENTID=@PAYMENTID
	
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	END
	CLOSE EMPLOYEE_CURSOR
	DEALLOCATE EMPLOYEE_CURSOR


SELECT     M.PAYMENTID,
           PAYMENT.CREDITORACCOUNTID,
           PAYMENT.DEBTORACCOUNTID,
           PAYMENT.DATE,

           PAYMENT.TIME,    
           M.AMOUNT,
           PAYMENT.COMMENT,
           PAYMENT.FINANCIALNOTEID, 
           PAYMENT.INSERTUSERID,
           PAYMENT.INSERTDATE,    
           PAYMENT.LASTUPDATE,
           PAYMENT.LASTUSERID,
           PAYMENT.PAYTYPEID,
           PAYMENT.RELATEDID ,     
           CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO,    
           CASE WHEN STATUS>0 THEN M.AMOUNT ELSE 0 END DEBIT,
           CASE WHEN STATUS<0 THEN M.AMOUNT ELSE 0 END CREDIT,    
           USERS.FULLNAME,
           CASE WHEN M.PAYMENTID>0 THEN ACCOUNT.ACCOUNTTITLE ELSE ''حساب ابتداي دوره''  END ACCOUNTTITLE,    
           CASE WHEN SUMAMOUNT<0 THEN ''بس'' ELSE ''بد'' END DEBITSTATUS,    
           ABS(SUMAMOUNT) SUMAMOUNT,
           PAYTYPETITLE ,
           STATUS    
FROM        @TEMPTABLE M    
       LEFT JOIN PAYMENT ON M.PAYMENTID=PAYMENT.PAYMENTID    
       LEFT JOIN PAYTYPE ON PAYMENT.PAYTYPEID=PAYTYPE.PAYTYPEID    
       LEFT JOIN  USERS ON PAYMENT.INSERTUSERID = USERS.USERID     
       LEFT JOIN  ACCOUNT ON M.OTHERACCOUNTID = ACCOUNT.ACCOUNTID     
       LEFT  JOIN FINANCIALNOTE  ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID    

WHERE (PAYMENT.PAYTYPEID = '+CAST(@PAYTYPEID AS VARCHAR(10))+'   OR 0 =  '+CAST(@PAYTYPEID AS VARCHAR(10))+')'
        IF  @SORTORDER =1 
           SET @SQL=@SQL+'	ORDER BY  M.DATE    '
        IF  @SORTORDER =2 
           SET @SQL=@SQL+'	ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT)     '
SET @SQL=@SQL+'
 SELECT    @SUMCREDIT=SUM(AMOUNT)    
 FROM      @TEMPTABLE    
 WHERE STATUS<0    
     
 SELECT   @SUMDEBIT=SUM(AMOUNT)    
 FROM       @TEMPTABLE    
 WHERE STATUS>0    
     
 SET  @SUMCREDIT  =ISNULL( @SUMCREDIT,0)    
 SET  @SUMDEBIT   =ISNULL( @SUMDEBIT,0 )

'
--SELECT @SQL       
EXEC SP_EXECUTESQL @SQL       


GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_BYACCOUNTID_NEW2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_PAYMENT_BYACCOUNTID_NEW2]    
                    @ACCOUNTID INT,@DATEFROM CHAR(10),@DATETO CHAR(10),@SUMDEBIT BIGINT OUTPUT,@SUMCREDIT BIGINT OUTPUT , @PAYTYPEID INT=0     ,@SORTORDER    INT=1
AS
DECLARE @TEMPTABLE TABLE (PAYMENTID INT,DOCUMENTNO INT,AMOUNT BIGINT,DATE VARCHAR(30) , OTHERACCOUNTID INT,STATUS INT,SUMAMOUNT BIGINT)    
        DECLARE @FIRSTAMOUNT BIGINT    
	DECLARE  @PAYMENTID INT ,@STATUS INT ,@AMOUNT BIGINT,@SUMAMOUNT BIGINT
    
IF @SORTORDER =1 
BEGIN
	SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)    
	FROM PAYMENT    
	WHERE DATE <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))    
      
	SET @FIRSTAMOUNT=ISNULL(@FIRSTAMOUNT,0)   
   
	INSERT INTO @TEMPTABLE(PAYMENTID,DOCUMENTNO,DATE     ,AMOUNT           ,OTHERACCOUNTID,STATUS                                      ,SUMAMOUNT)    
	                VALUES(0        ,0         ,@DATEFROM,ABS(@FIRSTAMOUNT),0             ,CASE WHEN @FIRSTAMOUNT>0 THEN +1 ELSE -1 END,@FIRSTAMOUNT)    


	INSERT INTO @TEMPTABLE    
	SELECT     PAYMENT.PAYMENTID,PAYMENT.DOCUMENTNO,AMOUNT,DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,    
	CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,    
	CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,    
	CAST(0 AS BIGINT) SUMAMOUNT    
	FROM         PAYMENT    
	WHERE   (PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)    
	 AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))
  
    

	
	SET @SUMAMOUNT=0
	DECLARE EMPLOYEE_CURSOR CURSOR FOR
	
        SELECT PAYMENTID,STATUS,AMOUNT 
        FROM @TEMPTABLE 
	ORDER BY  DATE    
	
        OPEN EMPLOYEE_CURSOR 
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	WHILE @@FETCH_STATUS = 0
	BEGIN
	   
	   SET @SUMAMOUNT=@SUMAMOUNT+(@STATUS*@AMOUNT)
	
             UPDATE @TEMPTABLE    
	SET SUMAMOUNT=@SUMAMOUNT
	FROM @TEMPTABLE 
             WHERE PAYMENTID=@PAYMENTID
	
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	END
	CLOSE EMPLOYEE_CURSOR
	DEALLOCATE EMPLOYEE_CURSOR



	SELECT     M.PAYMENTID,
	           PAYMENT.CREDITORACCOUNTID,
	           PAYMENT.DEBTORACCOUNTID,
	           PAYMENT.DATE,
	
	           PAYMENT.TIME,    
	           M.AMOUNT,
	           PAYMENT.COMMENT,
	           PAYMENT.FINANCIALNOTEID, 
	           PAYMENT.INSERTUSERID,
	           PAYMENT.INSERTDATE,    
	           PAYMENT.LASTUPDATE,
	           PAYMENT.LASTUSERID,
	           PAYMENT.PAYTYPEID,
	           PAYMENT.RELATEDID ,     
	           CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO,    
	           CASE WHEN STATUS>0 THEN M.AMOUNT ELSE 0 END DEBIT,
	           CASE WHEN STATUS<0 THEN M.AMOUNT ELSE 0 END CREDIT,    
	           USERS.FULLNAME,
	           CASE WHEN M.PAYMENTID>0 THEN ACCOUNT.ACCOUNTTITLE ELSE 'حساب ابتداي دوره'  END ACCOUNTTITLE,    
	           CASE WHEN SUMAMOUNT<0 THEN 'بس' ELSE 'بد' END DEBITSTATUS,    
	           ABS(SUMAMOUNT) SUMAMOUNT,
	           PAYTYPETITLE ,
	           STATUS    
	FROM        @TEMPTABLE M    
	       LEFT JOIN PAYMENT ON M.PAYMENTID=PAYMENT.PAYMENTID    
	       LEFT JOIN PAYTYPE ON PAYMENT.PAYTYPEID=PAYTYPE.PAYTYPEID    
	       LEFT JOIN  USERS ON PAYMENT.INSERTUSERID = USERS.USERID     
	       LEFT JOIN  ACCOUNT ON M.OTHERACCOUNTID = ACCOUNT.ACCOUNTID     
	       LEFT  JOIN FINANCIALNOTE  ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID    
	
	WHERE (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID)  
	ORDER BY M.DATE --,M.PAYMENTID    
	     
	SELECT    @SUMCREDIT=SUM(AMOUNT)    
	FROM      @TEMPTABLE    
	WHERE STATUS<0    
	    
	SELECT   @SUMDEBIT=SUM(AMOUNT)    
	FROM       @TEMPTABLE    
	WHERE STATUS>0    
	    
	SET @SUMDEBIT=ISNULL(@SUMDEBIT,0)    
	SET @SUMCREDIT=ISNULL(@SUMCREDIT,0)
END
ELSE
BEGIN
	SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)    
	FROM PAYMENT    
	WHERE DATE <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))    
      
	SET @FIRSTAMOUNT=ISNULL(@FIRSTAMOUNT,0)   
   
	INSERT INTO @TEMPTABLE(PAYMENTID,DOCUMENTNO,DATE     ,AMOUNT           ,OTHERACCOUNTID,STATUS                                      ,SUMAMOUNT)    
	                VALUES(0        ,0         ,@DATEFROM,ABS(@FIRSTAMOUNT),0             ,CASE WHEN @FIRSTAMOUNT>0 THEN +1 ELSE -1 END,@FIRSTAMOUNT)    


	INSERT INTO @TEMPTABLE    
	SELECT     PAYMENT.PAYMENTID,PAYMENT.DOCUMENTNO,AMOUNT,DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,    
	CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,    
	CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,    
	CAST(0 AS BIGINT) SUMAMOUNT    
	FROM         PAYMENT    
	WHERE   (PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)    
	 AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))
  
    

	
	SET @SUMAMOUNT=0
	DECLARE EMPLOYEE_CURSOR CURSOR FOR
	
        SELECT PAYMENTID,STATUS,AMOUNT 
        FROM @TEMPTABLE 
	ORDER BY  DOCUMENTNO    
	
        OPEN EMPLOYEE_CURSOR 
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	WHILE @@FETCH_STATUS = 0
	BEGIN
	   
	   SET @SUMAMOUNT=@SUMAMOUNT+(@STATUS*@AMOUNT)
	
             UPDATE @TEMPTABLE    
	     SET SUMAMOUNT=@SUMAMOUNT
	     FROM @TEMPTABLE 
             WHERE PAYMENTID=@PAYMENTID
	
	FETCH NEXT FROM EMPLOYEE_CURSOR INTO @PAYMENTID,@STATUS,@AMOUNT
	END
	CLOSE EMPLOYEE_CURSOR
	DEALLOCATE EMPLOYEE_CURSOR



	SELECT     M.PAYMENTID,
	           PAYMENT.CREDITORACCOUNTID,
	           PAYMENT.DEBTORACCOUNTID,
	           PAYMENT.DATE,
	
	           PAYMENT.TIME,    
	           M.AMOUNT,
	           PAYMENT.COMMENT,
	           PAYMENT.FINANCIALNOTEID, 
	           PAYMENT.INSERTUSERID,
	           PAYMENT.INSERTDATE,    
	           PAYMENT.LASTUPDATE,
	           PAYMENT.LASTUSERID,
	           PAYMENT.PAYTYPEID,
	           PAYMENT.RELATEDID ,     
	           CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO,    
	           CASE WHEN STATUS>0 THEN M.AMOUNT ELSE 0 END DEBIT,
	           CASE WHEN STATUS<0 THEN M.AMOUNT ELSE 0 END CREDIT,    
	           USERS.FULLNAME,
	           CASE WHEN M.PAYMENTID>0 THEN ACCOUNT.ACCOUNTTITLE ELSE 'حساب ابتداي دوره'  END ACCOUNTTITLE,    
	           CASE WHEN SUMAMOUNT<0 THEN 'بس' ELSE 'بد' END DEBITSTATUS,    
	           ABS(SUMAMOUNT) SUMAMOUNT,
	           PAYTYPETITLE ,
	           STATUS    
	FROM        @TEMPTABLE M    
	       LEFT JOIN PAYMENT ON M.PAYMENTID=PAYMENT.PAYMENTID    
	       LEFT JOIN PAYTYPE ON PAYMENT.PAYTYPEID=PAYTYPE.PAYTYPEID    
	       LEFT JOIN  USERS ON PAYMENT.INSERTUSERID = USERS.USERID     
	       LEFT JOIN  ACCOUNT ON M.OTHERACCOUNTID = ACCOUNT.ACCOUNTID     
	       LEFT  JOIN FINANCIALNOTE  ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID    
	
	WHERE (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID)  
	ORDER BY M.DOCUMENTNO --,M.PAYMENTID    
	     
	SELECT    @SUMCREDIT=SUM(AMOUNT)    
	FROM      @TEMPTABLE    
	WHERE STATUS<0    
	    
	SELECT   @SUMDEBIT=SUM(AMOUNT)    
	FROM       @TEMPTABLE    
	WHERE STATUS>0    
	    
	SET @SUMDEBIT=ISNULL(@SUMDEBIT,0)    
	SET @SUMCREDIT=ISNULL(@SUMCREDIT,0)
END

GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_BYACCOUNTID_OLD]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[REPORT_PAYMENT_BYACCOUNTID_OLD]  
@ACCOUNTID INT,@DATEFROM CHAR(10),@DATETO CHAR(10),@SUMDEBIT BIGINT OUTPUT,@SUMCREDIT BIGINT OUTPUT , @PAYTYPEID INT=0   
AS  
  
DECLARE @TEMPTABLE TABLE (PAYMENTID INT,AMOUNT BIGINT,DATE VARCHAR(30) , OTHERACCOUNTID INT,STATUS INT,SUMAMOUNT BIGINT)  
  
INSERT INTO @TEMPTABLE  
SELECT     PAYMENT.PAYMENTID,AMOUNT,DATE+TIME+CAST(PAYMENTID AS VARCHAR(10)) DATE,  
CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN CREDITORACCOUNTID ELSE DEBTORACCOUNTID  END OTHERACCOUNTID,  
CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +1 ELSE -1 END STATUS,  
CAST(0 AS BIGINT) SUMAMOUNT  
FROM         PAYMENT  
WHERE   (PAYMENT.DATE BETWEEN @DATEFROM AND @DATETO)  
 AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))  
  
DECLARE @FIRSTAMOUNT BIGINT  
  
SELECT @FIRSTAMOUNT=SUM(CASE WHEN @ACCOUNTID=DEBTORACCOUNTID   THEN +AMOUNT ELSE -AMOUNT END)  
FROM PAYMENT  
WHERE DATE <@DATEFROM  AND (@ACCOUNTID IN (DEBTORACCOUNTID,CREDITORACCOUNTID))  
    
SET @FIRSTAMOUNT=ISNULL(@FIRSTAMOUNT,0)  
  
INSERT INTO @TEMPTABLE(PAYMENTID,AMOUNT,OTHERACCOUNTID,STATUS ,SUMAMOUNT)  
 VALUES(0,ABS(@FIRSTAMOUNT),0,CASE WHEN @FIRSTAMOUNT>0 THEN +1 ELSE -1 END,@FIRSTAMOUNT)  
  
UPDATE @TEMPTABLE  
SET SUMAMOUNT=(SELECT SUM(STATUS*AMOUNT) FROM @TEMPTABLE WHERE DATE<=M.DATE)  
FROM @TEMPTABLE AS M  
WHERE PAYMENTID>0  
    
SELECT     PAYMENT.PAYMENTID,PAYMENT.CREDITORACCOUNTID,PAYMENT.DEBTORACCOUNTID,PAYMENT.DATE,PAYMENT.TIME,  
PAYMENT.AMOUNT,PAYMENT.COMMENT,PAYMENT.FINANCIALNOTEID,PAYMENT.INSERTUSERID,PAYMENT.INSERTDATE,  
PAYMENT.LASTUPDATE,PAYMENT.LASTUSERID,PAYMENT.PAYTYPEID,PAYMENT.RELATEDID ,   
CAST(PAYMENT.DOCUMENTNO AS INT) DOCUMENTNO,  
CASE WHEN STATUS>0 THEN M.AMOUNT ELSE 0 END DEBIT,CASE WHEN STATUS<0 THEN M.AMOUNT ELSE 0 END CREDIT,  
  USERS.FULLNAME,CASE WHEN M.PAYMENTID>0 THEN ACCOUNT.ACCOUNTTITLE ELSE 'حساب ابتداي دوره'  END ACCOUNTTITLE,  
CASE WHEN SUMAMOUNT<0 THEN 'بس' ELSE 'بد' END DEBITSTATUS,  
ABS(SUMAMOUNT) SUMAMOUNT,PAYTYPETITLE ,STATUS  
FROM        @TEMPTABLE M  
LEFT JOIN PAYMENT ON M.PAYMENTID=PAYMENT.PAYMENTID  
LEFT JOIN PAYTYPE ON PAYMENT.PAYTYPEID=PAYTYPE.PAYTYPEID  
LEFT JOIN  USERS ON PAYMENT.INSERTUSERID = USERS.USERID   
LEFT JOIN  ACCOUNT ON M.OTHERACCOUNTID = ACCOUNT.ACCOUNTID   
LEFT  JOIN FINANCIALNOTE  ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID  
/*RANJBAR*/
WHERE (PAYMENT.PAYTYPEID = @PAYTYPEID OR 0 = @PAYTYPEID)
--
ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT) ,M.PAYMENTID  
   
SELECT   @SUMCREDIT=SUM(AMOUNT)  
FROM       @TEMPTABLE  
WHERE STATUS<0  
  
SELECT   @SUMDEBIT=SUM(AMOUNT)  
FROM       @TEMPTABLE  
WHERE STATUS>0  
  
SET @SUMDEBIT=ISNULL(@SUMDEBIT,0)  
SET @SUMCREDIT=ISNULL(@SUMCREDIT,0)
GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_BYDOCUMENTNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[REPORT_PAYMENT_BYDOCUMENTNO]
@DOCUMENTNO VARCHAR(10),@YEAR INT =0        
AS        
DECLARE @Y VARCHAR(10)        
SET @Y = CAST(@YEAR AS  CHAR(4))     
--SET @Y=CASE WHEN @YEAR>0 THEN '13'+CAST(@YEAR AS  CHAR(2)) ELSE '13' END +'%'       
    
    
       
SELECT     PAYMENT.*,        
           CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,        
           DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE,        
           RTRIM(PAYTYPE.PAYTYPETITLE) +  (CASE WHEN PAYMENT.PAYTYPEID = 3 THEN ( SELECT ' - ق ش '+(CAST(ORDERNO AS NVARCHAR(10)))AS ORDERNODESC FROM FORCEPAYMENT WHERE FORCEPAYMENT.PAYMENTID = PAYMENT.PAYMENTID ) END) AS PAYTYPETITLE,        
           FINANCIALNOTE.NOTENO, FINANCIALNOTE.MATUREDATE, FINANCIALNOTE.AMOUNT FINANCIALNOTEAMOUNT,FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE,        
           USERS.FULLNAME,    
           ISNULL(COMMENT,PAYTYPETITLE) COMMENT2 ,     
           FINANCIALNOTE_DETAIL.AMOUNT AS NOTE_DETAILAMOUNT,     
           FINANCIALNOTE_DETAIL.NOTENO AS NOTE_DETAILNOTENO,     
           FINANCIALNOTE_DETAIL.NOTEDATE AS DETAILNOTEDATE,     
           FINANCIALNOTESTATUS.FINANCIALNOTESTATUSDESC AS STATUSFINANCIALNOTESTATUSDESC,     
           FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID AS MASTERFINANCIALNOTETYPEID,     
           PayType.PayTypeTitle AS NOTE_DETAILFINANCIALNOTETYPETITLE    
FROM                  FINANCIALNOTE_MASTER INNER JOIN  
                      FINANCIALNOTE_DETAIL ON FINANCIALNOTE_MASTER.FINANCIALNOTE_MASTERID = FINANCIALNOTE_DETAIL.FINANCIALNOTE_MASTERID INNER JOIN  
                      FINANCIALNOTESTATUS ON FINANCIALNOTE_DETAIL.NOTESTATUSID = FINANCIALNOTESTATUS.FINANCIALNOTESTATUSID INNER JOIN  
                      FINANCIALNOTETYPE FINANCIALNOTETYPE ON   
                      FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID RIGHT OUTER JOIN  
                      PAYMENT INNER JOIN  
                      PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID INNER JOIN  
                      ACCOUNT CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID INNER JOIN  
                      ACCOUNT DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID ON   
                      FINANCIALNOTE_DETAIL.FINANCIALNOTE_DETAILID = PAYMENT.FINANCIALNOTE_DETAILID LEFT OUTER JOIN  
                      USERS ON PAYMENT.INSERTUSERID = USERS.USERID LEFT OUTER JOIN  
                      FINANCIALNOTE ON FINANCIALNOTE_DETAIL.FinancialNote_MasterID = FINANCIALNOTE.FINANCIALNOTEID LEFT OUTER JOIN  
                      FINANCIALNOTETYPE FINANCIALNOTETYPE_1 ON FinancialNote_Master.FINANCIALNOTETYPEID = FINANCIALNOTETYPE_1.FINANCIALNOTETYPEID  
  
WHERE ((DOCUMENTNO = @DOCUMENTNO)OR('0' = @DOCUMENTNO)/*تمامي اسناد*/)        
    AND (Left(PAYMENT.[DATE], 4) = @Y Or @YEAR = 0)
ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT), PAYMENT.[DATE]    

GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_BYDOCUMENTNO_ADV]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPORT_PAYMENT_BYDOCUMENTNO_ADV]         
@DOCUMENTNO VARCHAR(10),@AZDATE CHAR(10),@TADATE CHAR(10)
AS        
DECLARE @Y1 CHAR(10)        
DECLARE @Y2 CHAR(10)        

SET @Y1=CASE WHEN @AZDATE<>'' THEN @AZDATE ELSE '12' END +'%'       
SET @Y2=CASE WHEN @TADATE<>'' THEN @TADATE ELSE '99' END +'%'            
       
SELECT     PAYMENT.*,        
           CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,        
           DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE,        
           RTRIM(PAYTYPE.PAYTYPETITLE) +  (CASE WHEN PAYMENT.PAYTYPEID = 3 THEN ( SELECT ' - ? ? '+(CAST(ORDERNO AS NVARCHAR(10)))AS ORDERNODESC FROM FORCEPAYMENT WHERE FORCEPAYMENT.PAYMENTID = PAYMENT.PAYMENTID ) END) AS PAYTYPETITLE,        
           FINANCIALNOTE.NOTENO, FINANCIALNOTE.MATUREDATE, FINANCIALNOTE.AMOUNT FINANCIALNOTEAMOUNT,FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE,        
           USERS.FULLNAME,    
           ISNULL(COMMENT,PAYTYPETITLE) COMMENT2 ,     
           FINANCIALNOTE_DETAIL.AMOUNT AS NOTE_DETAILAMOUNT,     
           FINANCIALNOTE_DETAIL.NOTENO AS NOTE_DETAILNOTENO,     
           FINANCIALNOTE_DETAIL.NOTEDATE AS DETAILNOTEDATE,     
           FINANCIALNOTESTATUS.FINANCIALNOTESTATUSDESC AS STATUSFINANCIALNOTESTATUSDESC,     
           FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID AS MASTERFINANCIALNOTETYPEID,     
           PayType.PayTypeTitle AS NOTE_DETAILFINANCIALNOTETYPETITLE    
FROM                  FINANCIALNOTE_MASTER INNER JOIN  
                      FINANCIALNOTE_DETAIL ON FINANCIALNOTE_MASTER.FINANCIALNOTE_MASTERID = FINANCIALNOTE_DETAIL.FINANCIALNOTE_MASTERID INNER JOIN  
                      FINANCIALNOTESTATUS ON FINANCIALNOTE_DETAIL.NOTESTATUSID = FINANCIALNOTESTATUS.FINANCIALNOTESTATUSID INNER JOIN  
                      FINANCIALNOTETYPE FINANCIALNOTETYPE ON   
                      FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID RIGHT OUTER JOIN  
                      PAYMENT INNER JOIN  
                      PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID INNER JOIN  
                      ACCOUNT CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID INNER JOIN  
                      ACCOUNT DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID ON   
                      FINANCIALNOTE_DETAIL.FINANCIALNOTE_DETAILID = PAYMENT.FINANCIALNOTE_DETAILID LEFT OUTER JOIN  
                      USERS ON PAYMENT.INSERTUSERID = USERS.USERID LEFT OUTER JOIN  
                      FINANCIALNOTE ON FINANCIALNOTE_DETAIL.FinancialNote_MasterID = FINANCIALNOTE.FINANCIALNOTEID LEFT OUTER JOIN  
                      FINANCIALNOTETYPE FINANCIALNOTETYPE_1 ON FinancialNote_Master.FINANCIALNOTETYPEID = FINANCIALNOTETYPE_1.FINANCIALNOTETYPEID  
  
WHERE ((DOCUMENTNO = @DOCUMENTNO)OR('0' = @DOCUMENTNO)/*????? ?????*/)        
    AND PAYMENT.DATE BETWEEN @Y1 AND @Y2       
ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT), PAYMENT.[DATE]
GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENT_ForPrint]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
-------------------------------------------------------------------
CREATE  PROCEDURE [dbo].[REPORT_PAYMENT_ForPrint] @DocumentNoFrom VARCHAR(10),
                                                  @DocumentNoTo VARCHAR(10), 
                                                  @DateFrom VARCHAR(10),
                                                  @DateTo varchar(10)        
AS
      
SELECT     PAYMENT.*,          
           CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,          
           DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE,          
           RTRIM(PAYTYPE.PAYTYPETITLE) +  (CASE WHEN PAYMENT.PAYTYPEID = 3 THEN ( SELECT ' - ق ش '+(CAST(ORDERNO AS NVARCHAR(10)))AS ORDERNODESC FROM FORCEPAYMENT WHERE FORCEPAYMENT.PAYMENTID = PAYMENT.PAYMENTID ) END) AS PAYTYPETITLE,          
           FINANCIALNOTE_DETAIL.NOTENO, 
           FINANCIALNOTE_MASTER.MATUREDATE, 
           FINANCIALNOTE_DETAIL.AMOUNT FINANCIALNOTEAMOUNT,
           FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE,          
           USERS.FULLNAME,      
           ISNULL(COMMENT,PAYTYPETITLE) COMMENT2 ,       
           FINANCIALNOTE_DETAIL.AMOUNT AS NOTE_DETAILAMOUNT,       
           FINANCIALNOTE_DETAIL.NOTENO AS NOTE_DETAILNOTENO,       
           FINANCIALNOTE_DETAIL.NOTEDATE AS DETAILNOTEDATE,       
           FINANCIALNOTESTATUS.FINANCIALNOTESTATUSDESC AS STATUSFINANCIALNOTESTATUSDESC,       
           FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID    AS MASTERFINANCIALNOTETYPEID,       
           FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE  AS NOTE_DETAILFINANCIALNOTETYPETITLE      
FROM       FINANCIALNOTE_MASTER INNER JOIN    
                      FINANCIALNOTE_DETAIL ON FINANCIALNOTE_MASTER.FINANCIALNOTE_MASTERID = FINANCIALNOTE_DETAIL.FINANCIALNOTE_MASTERID INNER JOIN    
                      FINANCIALNOTESTATUS ON FINANCIALNOTE_DETAIL.NOTESTATUSID = FINANCIALNOTESTATUS.FINANCIALNOTESTATUSID INNER JOIN    
                      FINANCIALNOTETYPE FINANCIALNOTETYPE ON     
                      FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID RIGHT OUTER JOIN    
                      PAYMENT INNER JOIN    
                      PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID INNER JOIN    
                      ACCOUNT CREDITORACCOUNT ON PAYMENT.CREDITORACCOUNTID = CREDITORACCOUNT.ACCOUNTID INNER JOIN    
                      ACCOUNT DEBTORACCOUNT ON PAYMENT.DEBTORACCOUNTID = DEBTORACCOUNT.ACCOUNTID ON     
                      FINANCIALNOTE_DETAIL.FINANCIALNOTE_DETAILID = PAYMENT.FINANCIALNOTE_DETAILID LEFT OUTER JOIN    
                      USERS ON PAYMENT.INSERTUSERID = USERS.USERID LEFT OUTER JOIN    
                      FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID   
    
WHERE  ( ( CAST(DOCUMENTNO AS INT)    BETWEEN  CAST(@DocumentNoFrom AS INT ) AND CAST(@DocumentNoTo AS INT))OR
         ('0' = @DocumentNoFrom AND '0' = @DocumentNoTo))/*تمامي اسناد*/           
    AND ((PAYMENT.DATE BETWEEN @DateFrom AND @DateTo)  OR (@DateFrom='0' AND @DateTo='0') )
            
ORDER BY CAST(PAYMENT.DOCUMENTNO AS INT), PAYMENT.[DATE]
GO
/****** Object:  StoredProcedure [dbo].[Report_PaymentInDetail]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------------------------
---------------------------------------------------------------------



CREATE PROCEDURE [dbo].[Report_PaymentInDetail]  @DateFrom Char(10) ,@DateTo Char(10),@PayType int  ,@Grouped int
AS 

/*DECLARE @DateFrom Char(10) ,@DateTo Char(10),@PayType int ,@Grouped int 
SET  @DateFrom='1391/01/01'  
SET  @DateTo  ='1391/03/01'  
SET  @PayType  =0
SET @Grouped=0 */

if @PayType=0   
BEGIN 
if exists (select * from dbo.sysobjects where id = object_id(N'P_MAIN') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table P_MAIN


if exists (select * from dbo.sysobjects where id = object_id(N'P_MAIN_2') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table P_MAIN_2


if exists (select * from dbo.sysobjects where id = object_id(N'P') /*and OBJECTPROPERTY(id, N'IsUserTable') = 1*/)
drop table P


if exists (select * from dbo.sysobjects where id = object_id(N'Loan_Tmp') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table Loan_Tmp



------------CR-----------------
SELECT    CAST( 'اقساط پرداخت شده' AS VARCHAR(100)) AS COMMENT,  
           Payment.PayTypeID,  
           Payment.CreditorAccountId,   
           Payment.Amount,  
            Cast(1 as smallint) AS status,   
           Payment.[Date]  
Into P    
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.CreditorAccountId = AC2.AccountID    
WHERE     (Payment.PayTypeID = 3)--AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
------------DB-----------------
Insert InTo P      
SELECT     'اقساط پرداخت شده' AS COMMENT,  
           Payment.PayTypeID,  
           Payment.DebtorAccountID,   
           Payment.Amount,  
           - 1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.DebtorAccountId = AC2.AccountID    
WHERE     (Payment.PayTypeID = 3)--AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)   
-------------------CR--------------------------------------------------  
Insert InTo P      
SELECT     'ماهيانه اعضا' AS COMMENT,  
           Payment.PayTypeID,  
           Payment.CreditorAccountId,   
           Payment.Amount,  
            Cast(1 as smallint) AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.CreditorAccountId = AC2.AccountID    
WHERE     (Payment.PayTypeID = 2) AND  AC2.AccountTypeId=1 --AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)   
------------DB    
Insert InTo P      
SELECT     'ماهيانه اعضا' AS COMMENT,  
           Payment.PayTypeID,  
           Payment.DebtorAccountID,   
           Payment.Amount,  
           - 1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.DebtorAccountId = AC2.AccountID    
WHERE     (Payment.PayTypeID = 2) AND  AC2.AccountTypeId=1  --AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
------------CR صندوق  
Insert InTo P      
SELECT     'صندوق' AS COMMENT,  
           9 AS PayTypeID,  
           Payment.CreditorAccountId,   
           Payment.Amount,  
           Cast(1 AS smallint) AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.CreditorAccountId = AC2.AccountID    
WHERE      Payment.CreditorAccountId=1 -- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
------------DB  صندوق  
Insert InTo P      
SELECT     'صندوق' AS COMMENT,  
           9 AS PayTypeID ,  
           Payment.DebtorAccountID,   
           Payment.Amount,  
           - 1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.DebtorAccountId = AC2.AccountID    
WHERE      Payment.DebtorAccountID=1 -- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
------------CR هزينه هاي صندوق  
Insert InTo P      
SELECT     'هزينه هاي صندوق' AS COMMENT,  
           5 AS PayTypeID,  
           Payment.CreditorAccountId,   
           Payment.Amount,  
           Cast(1 AS smallint) AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.CreditorAccountId = AC2.AccountID    
WHERE      Payment.CreditorAccountId=5 -- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
------------DB  هزينه هاي صندوق  
Insert InTo P      
SELECT     'هزينه هاي صندوق' AS COMMENT,  
           5 AS PayTypeID ,  
           Payment.DebtorAccountID,   
           Payment.Amount,  
           - 1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.DebtorAccountId = AC2.AccountID    
WHERE      Payment.DebtorAccountID=5  --AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
------------CR سود وام  
Insert InTo P      
SELECT     'سود وام' AS COMMENT,  
           7 AS PayTypeID,  
           Payment.CreditorAccountId,   
           Payment.Amount,  
           Cast(1 AS smallint) AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.CreditorAccountId = AC2.AccountID    
WHERE      Payment.CreditorAccountId=4 -- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
    
------------DB    سود وام  
Insert InTo P      
SELECT     'سود وام' AS COMMENT,  
           7 AS PayTypeID ,  
           Payment.DebtorAccountID,   
           Payment.Amount,  
           - 1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.DebtorAccountId = AC2.AccountID    
WHERE      Payment.DebtorAccountID=4  --AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
  
------------ اعضا بستانکار  
  
Insert InTo P      
SELECT    'اعضا' AS COMMENT,  
          8  AS PayTypeID,  
          CreditorAccountId ,        
          Amount,    
          Cast(1 AS SmallInt) Status,    
          Date        
From Payment  Inner Join     
     Account AC1 ON CreditorAccountId=AC1.AccountId      
Where AC1.AccountTypeId=1     -- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
  
  
------------ اعضا بدهکار  
Insert InTo P      
SELECT    'اعضا' AS COMMENT,  
          8 AS PayTypeID,  
          DebtorAccountId ,        
          Amount,    
         -1 status,    
         Date      
From Payment  Inner Join     
     Account ac2 ON DebtorAccountId=Ac2.AccountId      
Where Ac2.AccountTypeId=1    --AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
  
------------ دريافت و پرداخت عادي  
Insert InTo P      
SELECT     'دريافت و پرداخت اعضا' AS COMMENT,  
           Payment.PayTypeID,  
           Payment.CreditorAccountId,   
           Payment.Amount,  
            1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.CreditorAccountId = AC2.AccountID    
WHERE     (Payment.PayTypeID = 1) AND  AC2.AccountTypeId=1-- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)   
    
------------DB    
Insert InTo P      
SELECT     'دريافت و پرداخت اعضا' AS COMMENT,  
           Payment.PayTypeID,  
           Payment.DebtorAccountID,   
           Payment.Amount,  
           - 1 AS status,   
           Payment.[Date]  
FROM       Payment INNER JOIN  
           Account AC2 ON Payment.DebtorAccountId = AC2.AccountID    
WHERE     (Payment.PayTypeID = 1) AND  AC2.AccountTypeId=1 -- AND(Payment.Date>=@DateFrom)AND(Payment.Date<=@DateTo)  
  
  
-------------------وامهاي در گردش-----------------------------------------------------------------------------------------------------------------------------------------------------  
  
SELECT     Loan.LoanID, Loan.LoanNO, Loan.LoanDate, Loan.PartsBeginDate, Loan.Amount,Account.AccountID, Account.AccountNo,  
          (SELECT     COUNT(1) FROM FORCEPAYMENT  WHERE PARENTID = LOAN.LOANID AND FORCETYPEID = 1             ) AS NUMBEROFPART,  
          (SELECT     COUNT(1) FROM FORCEPAYMENT  WHERE PARENTID = LOAN.LOANID AND FORCETYPEID = 1 AND PAID = 1) AS NUMBEROFPAIDPART,  
          (SELECT  SUM(AMOUNT) FROM FORCEPAYMENT  WHERE FORCETYPEID = 1 AND PARENTID = LOAN.LOANID AND PAID = 0) AS REMAINOFLOAN,  
          (SELECT     COUNT(1) FROM FORCEPAYMENT  WHERE PARENTID = LOAN.LOANID AND PAID = 0 AND FORCETYPEID = 1 AND MATUREDATE < DBO.SHAMSI(GETDATE())) AS DELAYEDPARTS,   
           Account.Familyid,  
          (SELECT     RTRIM(C.LASTNAME) FROM  CONTACT C WHERE     C.CONTACTID = ACCOUNT.CONTACTID) + ' - ' +(SELECT     RTRIM(C.FIRSTNAME) FROM  CONTACT C WHERE  C.CONTACTID = ACCOUNT.CONTACTID) AS ACCOUNTTITLE, Loan.LoanComment  
INTO Loan_Tmp  
FROM  Loan INNER JOIN  
      Account ON Account.AccountID = Loan.AccountID -- AND(loan.LoanDate>=@DateFrom)AND(loan.LoanDate<=@DateTo)
  
  
------------------------------  
insert into P  
SELECT 'مبلغ مانده وام' AS COMMENT ,    
          6 AS PayTypeID ,  
           AccountID,   
           isnull(REMAINOFLOAN,0) as amount ,  
            1 AS status,   
            LoanDate  
From Loan_Tmp      
  
insert into P  
SELECT 'اقساط پرداخت نشده' AS COMMENT,    
          4 AS PayTypeID ,  
           AccountID,   
           isnull(Amount,0) - isnull(REMAINOFLOAN,0) as amount ,  
            1 AS status,   
            LoanDate  
From Loan_Tmp      
  
   
  
  
SELECT COMMENT,    
       PayTypeID,  
       (SELECT Sum(Case When Status=-1 Then amount Else 0      End) FROM  P AS _pD Where _pD.PayTypeID=P.PayTypeID AND Date Between @DateFrom and @DateTo) AS C1,  
       (SELECT Sum(Case When Status=-1 Then 0      Else Amount End) FROM  P AS _pD Where _pD.PayTypeID=P.PayTypeID AND Date Between @DateFrom and @DateTo) AS C2,  
       Sum(Case When status=-1 Then amount Else 0      End) AS C3,       
       Sum(Case When status=-1 Then 0      Else Amount End) AS C4    
INTO  P_MAIN                                                                 
From  P AS P  
GROUP BY         PayTypeID, COMMENT  
ORDER BY PayTypeID  
  
  
SELECT COMMENT,    
       PayTypeID,  
       C1,  
       C2,  
       C3,       
       C4 ,  
       Case When C4>C3 Then 0     Else C3-C4 End C5,      
       Case When C4>C3 Then C4-C3 Else 0     End C6     
INTO   P_MAIN_2  
From  P_MAIN  AS M_P   
ORDER BY PayTypeID   
  
-- if @PayType=0   
--   
-- SELECT   COMMENT,  
--         PayTypeID,  
--         ISNULL(C1,0) AS C1,  
--         ISNULL(C2,0) AS C2,  
--         ISNULL(C3,0) AS C3,  
--         ISNULL(C4,0) AS C4,  
--         ISNULL(C5,0) AS C5,  
--         ISNULL(C6,0) AS C6  
-- FROM P_MAIN_2  
-- UNION ALL  
-- SELECT TOP 1     'نقدينگي صندوق' AS COMMENT,  
--        10  PayTypeID,  
--        ISNULL((SELECT Sum(C1) FROM  P_MAIN_2  Where PayTypeID IN(9,2,3)) -(SELECT Sum(C1) FROM  P_MAIN_2  Where PayTypeID IN(5)),0) AS C1,  
--        ISNULL((SELECT Sum(C2) FROM  P_MAIN_2  Where PayTypeID IN(9,2,3)) -(SELECT Sum(C2) FROM  P_MAIN_2  Where PayTypeID IN(5)),0) AS C2,  
--        ISNULL((SELECT Sum(C3) FROM  P_MAIN_2  Where PayTypeID IN(9,2,3)) -(SELECT Sum(C1) FROM  P_MAIN_2  Where PayTypeID IN(5)),0) AS C3,  
--        ISNULL((SELECT Sum(C4) FROM  P_MAIN_2  Where PayTypeID IN(9,2,3)) -(SELECT Sum(C2) FROM  P_MAIN_2  Where PayTypeID IN(5)),0) AS C4,   
--        ISNULL((SELECT Sum(C5) FROM  P_MAIN_2  Where PayTypeID IN(9,2,3)) -(SELECT Sum(C5) FROM  P_MAIN_2  Where PayTypeID IN(5)),0) AS C5,  
--        ISNULL((SELECT Sum(C6) FROM  P_MAIN_2  Where PayTypeID IN(9,2,3)) -(SELECT Sum(C6) FROM  P_MAIN_2  Where PayTypeID IN(5)),0) AS C6   
-- FROM     P_MAIN_2  
   
--if @PayType=0   
--BEGIN  
DECLARE  @C1_F AS BIGINT,@C2_F AS BIGINT,@C3_F AS BIGINT,@C4_F AS BIGINT ,@C5_F AS BIGINT ,@C6_F AS BIGINT,  
         @C1_T AS BIGINT,@C2_T AS BIGINT,@C3_T AS BIGINT,@C4_T AS BIGINT ,@C5_T AS BIGINT ,@C6_T AS BIGINT  
  
 SELECT   @C1_F=ISNULL(Sum(C1),0)   ,  
		  @C2_F=ISNULL(Sum(C2),0)   ,  
		  @C3_F=ISNULL(Sum(C3),0)   ,  
		  @C4_F=ISNULL(Sum(C4),0)   ,  
		  @C5_F=ISNULL(Sum(C5),0)   ,  
		  @C6_F=ISNULL(Sum(C6),0)     
       FROM  P_MAIN_2  Where PayTypeID IN(9,2,3,7)   
  
 SELECT   @C1_T=ISNULL(Sum(C1),0)   ,  
		  @C2_T=ISNULL(Sum(C2),0)   ,  
	      @C3_T=ISNULL(Sum(C3),0)   ,  
		  @C4_T=ISNULL(Sum(C4),0)   ,  
		  @C5_T=ISNULL(Sum(C5),0)   ,  
		  @C6_T=ISNULL(Sum(C6),0)     
       FROM  P_MAIN_2  Where PayTypeID IN(5)   
  
 SELECT   COMMENT,  
         PayTypeID,  
         ISNULL(C1,0) AS C1,  
         ISNULL(C2,0) AS C2,  
         ISNULL(C3,0) AS C3,  
         ISNULL(C4,0) AS C4,  
         ISNULL(C5,0) AS C5,  
         ISNULL(C6,0) AS C6  
 FROM P_MAIN_2  
 UNION ALL  
 SELECT TOP 1     'نقدينگي صندوق' AS COMMENT,  
        10  PayTypeID,  
        @C1_F-@C1_T,  
        @C2_F-@C2_T,  
        @C3_F-@C3_T,  
        @C4_F-@C4_T,  
        @C5_F-@C5_T,  
        @C6_F-@C6_T  
 FROM     P_MAIN_2  
   
   
END  
  
  
  
if @PayType<>0  
BEGIN  
	 IF @PayType=10
         BEGIN
		  SELECT PayTypeID,  
		         COMMENT,  
		         AccountTitle,  
		         AccountNo,  
		         (Case When status=-1 Then Amount Else 0      End)amountDb,   
		         (Case When status=-1 Then 0 Else amount      End)amountcr,  
		         Date 
	          INTO #FINAL_Tmp10 
		  FROM P INNER JOIN ACCOUNT ON P.CreditorAccountId=ACCOUNT.accountid   
		  Where PayTypeID IN (2,3,7,9,5)  
		  ORDER BY PAYTYPEID
  
  		  IF @GROUPED=1 
   		     SELECT PayTypeID,COMMENT,AccountTitle,AccountNo,SUM(AmountDb)AmountDb,SUM(AmountCr)AmountCr ,'1389/01/01' AS DATE 
                     FROM #FINAL_Tmp10 
                     GROUP BY PayTypeID,COMMENT,AccountTitle,AccountNo 
	   	     ORDER BY PAYTYPEID,AccountNo
 
                  ELSE IF @GROUPED<>1 
    		     SELECT *
                     FROM #FINAL_Tmp10 
	   	     ORDER BY PAYTYPEID,AccountNo


                  DROP TABLE #FINAL_Tmp10
          END 
          ELSE
          BEGIN
		  SELECT PayTypeID,  
		         COMMENT,  
		         AccountTitle,  
		         AccountNo,  
		         (Case When status=-1 Then Amount Else 0      End)amountDb,   
		         (Case When status=-1 Then 0 Else amount      End)amountcr,  
		         Date   
	          INTO #FINAL_Tmp    
		  FROM P INNER JOIN ACCOUNT ON P.CreditorAccountId=ACCOUNT.accountid   
		  Where PayTypeID=@PayType  
		  ORDER BY PAYTYPEID,AccountNo

  		  IF @GROUPED=1
   		     SELECT PayTypeID,COMMENT,AccountTitle,AccountNo,SUM(AmountDb)AmountDb,SUM(AmountCr)AmountCr,'1389/01/01' AS DATE   
                     FROM #FINAL_Tmp 
                     GROUP BY PayTypeID,COMMENT,AccountTitle,AccountNo 
	   	     ORDER BY PAYTYPEID,AccountNo
                  ELSE IF @GROUPED<>1
   		     SELECT *
                     FROM #FINAL_Tmp 
	   	     ORDER BY PAYTYPEID,AccountNo

                  DROP TABLE #FINAL_Tmp
          END   

END   

GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAYMENTPBK_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROCEDURE [dbo].[REPORT_PAYMENTPBK_BYACCOUNTID]  
                                                       @ACCOUNTID INT,
                                                       @DATEFROM CHAR(10),
                                                       @DATETO CHAR(10)
AS  
  

--جريمه ماهيانه وسود ماهيانه
SELECT
           PAYMENT.DOCUMENTNO,
           PAYMENT.[DATE], 
           ACCOUNT_2.ACCOUNTTITLE AS CREDITORTITLE, 
           ACCOUNT_1.ACCOUNTTITLE AS DEBTORTITLE,
           PAYMENT.AMOUNT, 
           PAYTYPE.PAYTYPETITLE,
           PAYMENT.COMMENT,
           ACCOUNT.ACCOUNTNO, 
           ACCOUNT.ACCOUNTTITLE, 
           PAYMENT.CREDITORACCOUNTID, 
           PAYMENT.DEBTORACCOUNTID ,
           FINANCIALNOTE.NOTENO, 
           ACCOUNT.ACCOUNTID

FROM         PAYMENT INNER JOIN
                   FORCEPAYMENT ON PAYMENT.RELATEDID = FORCEPAYMENT.FORCEPAYMENTID INNER JOIN
                   LOAN ON FORCEPAYMENT.PARENTID = LOAN.LOANID INNER JOIN
                   ACCOUNT ON LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID INNER JOIN
                   PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID  INNER JOIN
                   ACCOUNT ACCOUNT_2 ON PAYMENT.CREDITORACCOUNTID = ACCOUNT_2.ACCOUNTID INNER JOIN
                   ACCOUNT ACCOUNT_1 ON PAYMENT.DEBTORACCOUNTID = ACCOUNT_1.ACCOUNTID LEFT OUTER JOIN
                   FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID
WHERE     (PAYMENT.PAYTYPEID IN (5, 7)) AND
                   (FORCEPAYMENT.FORCETYPEID = 1) AND
                   (ACCOUNT.ACCOUNTID= @ACCOUNTID) AND
                   (PAYMENT.[DATE]    BETWEEN @DATEFROM  AND @DATETO )

UNION  ALL
--جريمه ماهيانه وسود ماهيانه
SELECT     PAYMENT.DOCUMENTNO,
           PAYMENT.[DATE], 
           ACCOUNT_2.ACCOUNTTITLE AS CREDITORTITLE, 
           ACCOUNT_1.ACCOUNTTITLE AS DEBTORTITLE,
           PAYMENT.AMOUNT, 
           PAYTYPE.PAYTYPETITLE,
           PAYMENT.COMMENT,
           ACCOUNT.ACCOUNTNO, 
           ACCOUNT.ACCOUNTTITLE, 
           PAYMENT.CREDITORACCOUNTID, 
           PAYMENT.DEBTORACCOUNTID,
           FINANCIALNOTE.NOTENO, 
           ACCOUNT.ACCOUNTID

FROM         PAYMENT INNER JOIN
                   FORCEPAYMENT ON PAYMENT.RELATEDID = FORCEPAYMENT.FORCEPAYMENTID INNER JOIN
                   PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID INNER JOIN
                   ACCOUNT ON FORCEPAYMENT.PARENTID = ACCOUNT.ACCOUNTID  INNER JOIN
                   ACCOUNT ACCOUNT_2 ON PAYMENT.CREDITORACCOUNTID = ACCOUNT_2.ACCOUNTID INNER JOIN
                   ACCOUNT ACCOUNT_1 ON PAYMENT.DEBTORACCOUNTID = ACCOUNT_1.ACCOUNTID LEFT OUTER JOIN
                   FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID
WHERE     (PAYMENT.PAYTYPEID IN (5, 7)) AND 
                   (FORCEPAYMENT.FORCETYPEID = 2) AND
                   (ACCOUNT.ACCOUNTID= @ACCOUNTID) AND
                   (PAYMENT.[DATE]    BETWEEN @DATEFROM  AND @DATETO )

UNION ALL
--کارمزد
SELECT     PAYMENT.DOCUMENTNO,
           PAYMENT.[DATE], 
           ACCOUNT_2.ACCOUNTTITLE AS CREDITORTITLE, 
           ACCOUNT_1.ACCOUNTTITLE AS DEBTORTITLE,
           PAYMENT.AMOUNT, 
           PAYTYPE.PAYTYPETITLE,
           PAYMENT.COMMENT,
           ACCOUNT.ACCOUNTNO, 
           ACCOUNT.ACCOUNTTITLE, 
           PAYMENT.CREDITORACCOUNTID, 
           PAYMENT.DEBTORACCOUNTID,
           FINANCIALNOTE.NOTENO, 
           ACCOUNT.ACCOUNTID

FROM         PAYMENT INNER JOIN
                      PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID INNER JOIN
                      LOAN INNER JOIN
                      ACCOUNT ON LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID ON PAYMENT.PAYMENTID = LOAN.WAGEPAYMENTID  INNER JOIN
                      ACCOUNT ACCOUNT_2 ON PAYMENT.CREDITORACCOUNTID = ACCOUNT_2.ACCOUNTID INNER JOIN
                      ACCOUNT ACCOUNT_1 ON PAYMENT.DEBTORACCOUNTID = ACCOUNT_1.ACCOUNTID LEFT OUTER JOIN
                      FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID
WHERE     (PAYMENT.PAYTYPEID = 6)AND
                   (ACCOUNT.ACCOUNTID= @ACCOUNTID) AND
                   (PAYMENT.[DATE]    BETWEEN @DATEFROM  AND @DATETO )
ORDER BY PAYMENT.DOCUMENTNO,PAYMENT.[DATE]

GO
/****** Object:  StoredProcedure [dbo].[REPORT_SUMBALANCE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[REPORT_SUMBALANCE]    
 @FROMDATE CHAR(10),@TODAY CHAR(10),@SUMAVGBALANCE BIGINT OUTPUT,@ALLDAYS INT OUTPUT    
AS 
/*نيز تغيير يابد PAY_BENEFIT هر نوع تغيير در اين روال ، در روال */    

SET @ALLDAYS=DBO.SHAMSIDATEDIFF(@FROMDATE,@TODAY)     
    
SELECT ACCOUNTID,ACCOUNTNO,ACCOUNTTITLE,ACCOUNTDATE, ISNULL(DBO.SUMBALANCE(ACCOUNTID,@FROMDATE,@TODAY),0)/304000 SUMBALANCE   
, ACC.CONTACTID , (SELECT TOP 1 CONTACTTYPEID FROM CONTACT C WHERE C.CONTACTID = ACC.CONTACTID) AS CONTACTTYPEID /*RANJBAR*/   
INTO #P    
FROM ACCOUNT ACC    
WHERE ACCOUNTTYPEID=1 AND ISACTIVE=1   
/*RANJBAR 88.05.21 CODE=23*/  
AND (ACC.CONTACTID IN (SELECT CONTACTID FROM CONTACT WHERE HAVEINTEREST = 1 /*تعلق گرفتن سود*/) )  
---    
SELECT @SUMAVGBALANCE=SUM(SUMBALANCE)    
FROM #P    
    
SET @SUMAVGBALANCE=ISNULL(@SUMAVGBALANCE,0)    
    
SELECT *    
FROM #P    


GO
/****** Object:  StoredProcedure [dbo].[REPORT_SUMMERYPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[REPORT_SUMMERYPAYMENT]
@DATEFROM CHAR(10),@DATETO CHAR(10)
AS

DECLARE @TEMPTABLE TABLE (PAYMENTID INT,AMOUNT BIGINT,DATE VARCHAR(30) , OTHERACCOUNTID INT,STATUS INT,SUMAMOUNT BIGINT)

SELECT  ACCOUNT.ACCOUNTTYPEID,ACCOUNTTYPETITLE,CAST (SUM(DBO.PUREBALANCE(ACCOUNT.ACCOUNTID,'1399/12/29')) AS BIGINT) BALANCE INTO #M
FROM         ACCOUNT
INNER JOIN ACCOUNTTYPE ON ACCOUNTTYPE.ACCOUNTTYPEID=ACCOUNT.ACCOUNTTYPEID
GROUP BY ACCOUNT.ACCOUNTTYPEID,ACCOUNTTYPETITLE


SELECT ACCOUNTTYPEID,ACCOUNTTYPETITLE,
 CASE WHEN BALANCE<=0 THEN ABS(BALANCE) ELSE 0 END DEBIT,
CASE WHEN BALANCE>=0 THEN  BALANCE ELSE 0 END CREDIT 
INTO #N
FROM #M 

INSERT INTO #N
SELECT 10,'جمع',ISNULL(SUM(DEBIT),0),ISNULL(SUM(CREDIT),0)
FROM #N
SELECT *
FROM #N
ORDER BY 1 






GO
/****** Object:  StoredProcedure [dbo].[REPORT_SUMMERYPAYMENT2]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE  PROCEDURE [dbo].[REPORT_SUMMERYPAYMENT2]        
@DATEFROM CHAR(10),@DATETO CHAR(10)        
AS       
    
--By Hadi Mohamed --92/03/25       
            
            
--declare     @DATEFROM CHAR(10),@DATETO CHAR(10)        
--set @DATEFROM ='1380/01/01'    
--set @DATETO='1390/06/13'    
    
        
--SELECT  PAYTYPEID,PAYTYPETITLE,SUM(DBO.BALANCE_BYPAYTYPEID(ACCOUNT.ACCOUNTID,PAYTYPEID,'1399/12/29')) BALANCE        
SELECT  PAYTYPEID,PAYTYPETITLE,ISNULL(SUM(DBO.BALANCE_BYPAYTYPEID2(ACCOUNT.ACCOUNTID,PAYTYPEID,@DATETO,@DATEFROM)),0) BALANCE        
INTO #M        
FROM         ACCOUNT        
CROSS JOIN PAYTYPE        
WHERE ACCOUNTTYPEID=1        
GROUP BY PAYTYPEID,PAYTYPETITLE         
    
 
IF EXISTS(SELECT * FROM ACCOUNT WHERE ACCOUNTNO='9001' AND ACCOUNTTypeId=9) 
BEGIN
	update #M    
	set BALANCE=ISNULL((select   sum(Amount)   from payment where paytypeid=5 and Date <= @DateTo AND Date>=@DATEFROM ),0)    
	where paytypeid=5    
END
    
update #M    
set BALANCE=ISNULL((select   sum(Case When 3=DebtorAccountID   Then -Amount Else +Amount End)   from payment where  3 IN (DebtorAccountID,cREDITORAccountID)AND Date <= @DateTo AND Date>=@DATEFROM ),0)  
where paytypeid=6 

update #M    
set BALANCE=DBO.F_Soodvam(@DATEFROM,@DATETO)  
where paytypeid=7    
        
SELECT PAYTYPEID,PAYTYPETITLE,        
 CASE WHEN BALANCE<=0 THEN ABS(BALANCE) ELSE 0 END DEBIT,        
CASE WHEN BALANCE>=0 THEN  BALANCE ELSE 0 END CREDIT,CAST(0 AS BIGINT) [SUM]        
INTO #N        
FROM #M         
    
    
        
INSERT INTO #N        
SELECT 10,'جمع',ISNULL(SUM(DEBIT),0),ISNULL(SUM(CREDIT),0),ISNULL(SUM(CREDIT),0) -ISNULL(SUM(DEBIT),0)        
FROM #N        
        
    
SELECT *        
FROM #N        
ORDER BY 1    
GO
/****** Object:  StoredProcedure [dbo].[REPORT_TOTAL_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[REPORT_TOTAL_PAYMENT]
@DATEFROM CHAR(10),@DATETO CHAR(10),@ROOTACCOUNTTYPEID INT
AS

 SELECT  CAST (PAYMENT.PAYMENTID AS INT) PAYMENTID,CREDITORACCOUNTID ACCOUNTID,ACCOUNT.ACCOUNTTITLE ,
CAST(1 AS BIT) STATUS INTO #M
FROM PAYMENT
INNER JOIN ACCOUNT  ON PAYMENT.CREDITORACCOUNTID = ACCOUNT.ACCOUNTID
WHERE DATE BETWEEN @DATEFROM  AND @DATETO AND DBO.IS_PARENTID(ACCOUNTTYPEID,@ROOTACCOUNTTYPEID)=1


INSERT INTO #M
 SELECT  PAYMENT.PAYMENTID,DEBTORACCOUNTID,ACCOUNT.ACCOUNTTITLE ,0
FROM PAYMENT
INNER JOIN ACCOUNT  ON PAYMENT.DEBTORACCOUNTID = ACCOUNT.ACCOUNTID
WHERE DATE BETWEEN @DATEFROM  AND @DATETO AND DBO.IS_PARENTID(ACCOUNTTYPEID,@ROOTACCOUNTTYPEID)=1





 SELECT  PAYMENT.AMOUNT,PAYMENT.DATE,#M.*, PAYTYPE.PAYTYPETITLE, FINANCIALNOTE.NOTENO,ISNULL(COMMENT,PAYTYPETITLE) COMMENT2
FROM #M
INNER JOIN PAYMENT  ON #M.PAYMENTID=PAYMENT.PAYMENTID
INNER JOIN PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAYTYPEID 
LEFT JOIN  FINANCIALNOTE ON PAYMENT.FINANCIALNOTEID = FINANCIALNOTE.FINANCIALNOTEID
WHERE DATE BETWEEN @DATEFROM  AND @DATETO
ORDER BY ACCOUNTTITLE,[DATE]

GO
/****** Object:  StoredProcedure [dbo].[REPORT_TOTALPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[REPORT_TOTALPAYMENT] @DOCUMENTNO VARCHAR(10),@TODAY VARCHAR(10)        
AS   
/*DECLARE  @DOCUMENTNO VARCHAR(10),@TODAY VARCHAR(10)       
SET  @DOCUMENTNO =3629
SET  @TODAY='1389/10/30'
*/
DECLARE @A TABLE(ACCOUNTTITLE VARCHAR(50),     
                FATHERNAME  VARCHAR(20),     
                MATUREDATE  VARCHAR(10),     
                ACCOUNTNO  VARCHAR(20),        
                GHESTAMOUNT INT,        
                MOUNTLYAMOUNT INT,    
                MOUNTLY_GHESTAMOUNT BIGINT,      
                REMAINOFLOAN INT,     
                TOTALLOANAMOUNT INT,         
                DELAY INT,         
                MONTHLYBALANCE BIGINT    ,    
                PARTSBEGINDATE  VARCHAR(10),         
                LOANTYPEID INT,         
                GHESTPERIOD  VARCHAR(10),         
                GHESTCOUNT   INT)
INSERT INTO @A    
SELECT          ACCOUNT.ACCOUNTTITLE,     
                CONTACT.FATHERNAME,     
                FORCEPAYMENT.MATUREDATE,     
                ACCOUNT.ACCOUNTNO,        
                ISNULL((SELECT F.AMOUNT FROM FORCEPAYMENT F WHERE F.FORCETYPEID = 1     AND F.FORCEPAYMENTID = FORCEPAYMENT.FORCEPAYMENTID),0) AS GHESTAMOUNT,        
                ISNULL((SELECT F.AMOUNT FROM FORCEPAYMENT F WHERE F.FORCETYPEID = 2     AND F.FORCEPAYMENTID = FORCEPAYMENT.FORCEPAYMENTID),0) AS MOUNTLYAMOUNT,    
                ISNULL((select sum(amount) from Payment where DOCUMENTNO=@DOCUMENTNO AND SUBSTRING(PAYMENT.DATE,3,2 )=SUBSTRING(@TODAY,3,2)),0) AS MOUNTLY_GHESTAMOUNT,      
                ISNULL((SELECT SUM(AMOUNT)FROM   FORCEPAYMENT WHERE  FORCETYPEID = 1 AND PARENTID = LOAN.LOANID AND PAID = 0), 0) AS REMAINOFLOAN,     
                LOAN.AMOUNT AS TOTALLOANAMOUNT,         
                DBO.SHAMSIDATEDIFF(FORCEPAYMENT.MATUREDATE,ISNULL(PAYMENT.DATE,@TODAY))  AS DELAY,         
                dbo.Exist(Account.AccountID,'1399/12/29') AS MONTHLYBALANCE    ,    
                LOAN.PARTSBEGINDATE,         
                LOAN.LOANTYPEID,         
                LOANTYPE.PERIOD AS GHESTPERIOD,         
                (SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID=LOAN.LOANID AND FORCETYPEID=1 ) AS GHESTCOUNT   
FROM         Loan INNER JOIN  
                      LoanType ON Loan.LoanTypeID = LoanType.LoanTypeID INNER JOIN  
                      ForcePayment INNER JOIN  
                      Contact INNER JOIN  
                      Account ON Contact.ContactID = Account.ContactID INNER JOIN  
                      Payment ON Account.AccountID = Payment.CreditorAccountID ON ForcePayment.PaymentID = Payment.PaymentID ON   
                      Loan.LoanID = ForcePayment.ParentID  
WHERE      PAYMENT.DOCUMENTNO=@DOCUMENTNO AND    
           SUBSTRING(PAYMENT.DATE,3,2 )=SUBSTRING(@TODAY,3,2) AND       
          (ForcePayment.ForceTypeID = 1)  
  

INSERT INTO @A    
  
SELECT          ACCOUNT.ACCOUNTTITLE,     
                CONTACT.FATHERNAME,     
                FORCEPAYMENT.MATUREDATE,     
                ACCOUNT.ACCOUNTNO,        
                0 AS GHESTAMOUNT,        
                FORCEPAYMENT.AMOUNT  AS MOUNTLYAMOUNT,    
                ISNULL((select sum(amount) from Payment where DOCUMENTNO=@DOCUMENTNO AND SUBSTRING(PAYMENT.DATE,3,2 )=SUBSTRING(@TODAY,3,2)),0) AS MOUNTLY_GHESTAMOUNT,    
                       
                0 AS REMAINOFLOAN,     
                0 AS TOTALLOANAMOUNT,         
                DBO.SHAMSIDATEDIFF(FORCEPAYMENT.MATUREDATE,  
                ISNULL(PAYMENT.DATE,@TODAY))  AS DELAY,         
                dbo.Exist(Account.AccountID,'1399/12/29') AS MONTHLYBALANCE    ,    
                '',         
                0,         
                '' AS GHESTPERIOD,         
                0 AS GHESTCOUNT        
FROM         ForcePayment INNER JOIN  
                      Contact INNER JOIN  
                      Account ON Contact.ContactID = Account.ContactID INNER JOIN  
                      Payment ON Account.AccountID = Payment.CreditorAccountID ON ForcePayment.PaymentID = Payment.PaymentID  
WHERE      PAYMENT.DOCUMENTNO=@DOCUMENTNO AND    
           SUBSTRING(PAYMENT.DATE,3,2 )=SUBSTRING(@TODAY,3,2) AND  (ForcePayment.ForceTypeID = 2)  
ORDER BY Account.AccountTitle  
      
select   ACCOUNTTITLE ,     
                FATHERNAME   ,     
                MATUREDATE  ,     
                ACCOUNTNO  ,        
                sum(GHESTAMOUNT)GHESTAMOUNT  ,        
                sum(MOUNTLYAMOUNT) MOUNTLYAMOUNT,    
                MOUNTLY_GHESTAMOUNT  ,      
                sum(REMAINOFLOAN) REMAINOFLOAN ,
                sum(TOTALLOANAMOUNT) TOTALLOANAMOUNT,         
                DELAY  ,         
                MONTHLYBALANCE   ,      
                --PARTSBEGINDATE  ,         
              (select Top 1  a_t.PARTSBEGINDATE  from @a a_t where a_t.MATUREDATE =m_a.MATUREDATE and  a_t.ACCOUNTNO=m_a.ACCOUNTNO  )PARTSBEGINDATE,
              (select Top 1  a_t.LOANTYPEID  from @a a_t where a_t.MATUREDATE =m_a.MATUREDATE and  a_t.ACCOUNTNO=m_a.ACCOUNTNO and isnull(LOANTYPEID,0)<>0)LOANTYPEID,
              (select Top 1  a_t.GHESTPERIOD from @a a_t where a_t.MATUREDATE =m_a.MATUREDATE and  a_t.ACCOUNTNO=m_a.ACCOUNTNO and isnull(GHESTPERIOD,'')<>'')GHESTPERIOD,
              (select Top 1  a_t.GHESTCOUNT  from @a a_t where a_t.MATUREDATE =m_a.MATUREDATE and  a_t.ACCOUNTNO=m_a.ACCOUNTNO and isnull(GHESTCOUNT,0)<>0)GHESTCOUNT 

From @a m_a
Group by ACCOUNTTITLE ,     
         FATHERNAME   ,     
         MATUREDATE   ,     
         ACCOUNTNO    ,
         MOUNTLY_GHESTAMOUNT  ,      
         DELAY        ,         
         MONTHLYBALANCE   
    

GO
/****** Object:  StoredProcedure [dbo].[REPORT_USERLOGINLOGOUT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[REPORT_USERLOGINLOGOUT](@BDATE CHAR(10), @EDATE CHAR(10))
AS
SELECT     USERS.USERNAME, IPADDRESS, 
DBO.SHAMSI(LOGINTIME) LOGINDATE,CAST(DATEPART(HH, LOGINTIME) AS VARCHAR(2))+':'+CAST (DATEPART(MI, LOGINTIME) AS VARCHAR(2)) LOGINTIME,
 DBO.SHAMSI(LOGOUTTIME) LOGOUTDATE,CAST(DATEPART(HH, LOGOUTTIME) AS VARCHAR(2))+':'+CAST (DATEPART(MI, LOGOUTTIME) AS VARCHAR(2)) LOGOUTTIME,
                      ISSAFELOGOUT
FROM         USERLOGINLOGOUT INNER JOIN
                      USERS ON USERLOGINLOGOUT.USERID = USERS.USERID
WHERE DBO.SHAMSI(LOGINTIME)  BETWEEN @BDATE AND @EDATE







 





GO
/****** Object:  StoredProcedure [dbo].[RepTotalPayment]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE  PROCEDURE [dbo].[RepTotalPayment]   @GroupId INT ,
                                  @FirstDocNo varchar(10),
                                  @LastDocNo varchar(10),
				  @BeginDate VARCHAR(10),
				  @EndDate VARCHAR(10)
AS				  

DECLARE @StrQry nvarchar(4000),@StrWhere NVARCHAR(1000)


SET @StrWhere=' WHERE Payment.PayTypeID IN (2,3) '

IF ISNULL(@GroupId,0)<>0 
SET @StrWhere=@StrWhere+' AND '+CAST (@GroupId AS VARCHAR(3))+' IN (Account_1.Familyid,Account.Familyid)'

IF  ISNULL(@FirstDocNo,'0')<>'0' AND
    ISNULL(@LastDocNo,'0') <>'0' 
	SET @StrWhere=@StrWhere+' AND cast(Payment.documentno as integer) BETWEEN '''+@FirstDocNo+''' And '''+@LastDocNo+''''

IF   @BeginDate ='13  /  /  ' 
	SET @BeginDate=''
IF   @EndDate ='13  /  /  '   
	SET @EndDate=''

IF  ISNULL(@BeginDate,'')<>'' AND
    ISNULL(@EndDate,'') <>'' 
	SET @StrWhere=@StrWhere+' AND Payment.[Date] BETWEEN '''+ @BeginDate+''' AND '''+ @EndDate+''''

SET @StrQry= '
SELECT  Payment.CreditorAccountID,
        Payment.DebtorAccountID,
        Payment.[Date],
        Payment.Amount,
        Payment.Comment,
        Payment.PayTypeID,
        Payment.documentno,
        PayType.PayTypeTitle,
        Account.AccountTitle AS crTitle,
        Account_1.AccountTitle AS dbtitle,
        CASE  WHEN  ISNULL(Account.FamilyID,0)= 0 THEN ISNULL(Account_1.Familyid,0) ELSE  ISNULL(Account.Familyid,0) END GROUPID,
         CASE  WHEN  ISNULL(Account.FamilyID,0)= 0 THEN ISNULL(Family_1.FamilyTitle,'''') ELSE  ISNULL(Family.FamilyTitle,'''') END GROUPTitle
FROM    Payment
        INNER JOIN PayType ON Payment.PayTypeID = PayType.PayTypeID
        INNER JOIN Account ON Payment.CreditorAccountID = Account.AccountID
        INNER JOIN Account Account_1 ON Payment.DebtorAccountID = Account_1.AccountID
        LEFT OUTER JOIN Family ON Account.Familyid = Family.FamilyID
        LEFT OUTER JOIN Family Family_1 ON Account_1.Familyid = Family_1.FamilyID'+@StrWhere+''

--SELECT @StrQry

EXEC sp_executesql @StrQry
 
GO
/****** Object:  StoredProcedure [dbo].[SAVEAS_ACCESS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  PROCEDURE [dbo].[SAVEAS_ACCESS]
	( @ACCESSTITLE NVARCHAR(50),@OLDACCESSID INT ,@NEWID INT OUTPUT)

AS
 
INSERT INTO ACCESS	 ( ACCESSTITLE) VALUES ( @ACCESSTITLE)

 SELECT @NEWID=MAX(ACCESSID) FROM ACCESS

PRINT @NEWID
INSERT INTO ACCESSOBJECT(ACCESSID,OBJECTNAME, ACCESS)
SELECT     @NEWID,OBJECTNAME, ACCESS
FROM         ACCESSOBJECT
WHERE ACCESSID=@OLDACCESSID

SET @NEWID=ISNULL(@NEWID,0)




GO
/****** Object:  StoredProcedure [dbo].[Search_Benefits]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Search_Benefits]
@AccountID	INT,--
@FamilyID	INT,--
@Year		INT,
@Month		TINYINT,
@WithLoan	BIT,
@doForSetteld BIT--

AS
BEGIN
	SELECT a.AccountID, a.AccountNo,a.AccountTitle,
	b.YEAR,b.DocumentNo,b.InsertedBenefitPrice,
	b.AnnualAvragePrice,b.InsertedDate,b.BenefitPercent,isnull(b.MONTH,13) Month
	FROM Account a left join Benefit b on 
	(b.YEAR = @Year and a.AccountID = b.ACCOUNTID and (@Month = 0 or (b.Month = @Month  or b.Month = 0 or b.Month is null)))-- INTO #Acc
	WHERE (@AccountID = 0 OR @AccountID = a.accountid)
	AND ((@FamilyID = 0) OR (@FamilyID is null) OR (@FamilyID = a.Familyid))
	AND (@doForSetteld = 1 OR a.IsActive = 1)
	and a.AccountTypeID = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Sel_Rep_LoanPoint]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Sel_Rep_LoanPoint]
AS
select * from Rep_LoanPoint
ORDER BY POINT DESC
GO
/****** Object:  StoredProcedure [dbo].[SELECT_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_ACCOUNT]
@ACCOUNTID INT
AS
SELECT     *
FROM         ACCOUNT
WHERE ACCOUNTID=@ACCOUNTID
GO
/****** Object:  StoredProcedure [dbo].[SELECT_ACCOUNT_BYACCOUNTTYPEID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SELECT_ACCOUNT_BYACCOUNTTYPEID]
@ACCOUNTTYPEID  TINYINT
AS
SELECT     *
FROM         ACCOUNT
WHERE     (ACCOUNTTYPEID = @ACCOUNTTYPEID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_ACCOUNT_DETAILS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_ACCOUNT_DETAILS] @ACCOUNTID INT        
AS    
Declare @EndDate Nchar(10) = '1400/12/29'

SELECT  ACCOUNTID,ACCOUNTNO,ACCOUNTDATE,CONTACT.PERSONALNO,CONTACT.SIGN,CONTACT.PICTURE,        
            ISNULL(CASE WHEN ACCOUNT.ACCOUNTTYPEID IN (1,3 ,5,6) THEN ISNULL(FIRSTNAME+' ','')+LASTNAME+' ش.حساب: '+ ACCOUNTNO  ELSE ACCOUNTTITLE+' ش.حساب: '+ ACCOUNTNO END,ACCOUNTTITLE+' ش.حساب: '+ ACCOUNTNO) ACCOUNTTITLE,        
            CASE WHEN DBO.BALANCE(@ACCOUNTID,@EndDate)<0 THEN 'بدهکار'        
                   WHEN DBO.BALANCE(@ACCOUNTID,@EndDate)>0 THEN 'بستانکار'        
                   ELSE 'تسويه' END DEBITSTATUS,        
            (SELECT COUNT(1) FROM FORCEPAYMENT  INNER JOIN LOAN ON LOAN.LOANID=FORCEPAYMENT.PARENTID WHERE   FORCETYPEID=1 AND LOAN.ACCOUNTID=@ACCOUNTID AND ISNULL(FORCEPAYMENT.PAYMENTID,0)=0) NUMBEROFNOTPAIDPART ,        
     DBO.EXIST(@ACCOUNTID,@EndDate) EXIST,        
     DBO.TOTALEXIST(@ACCOUNTID,@EndDate, 0) TOTALEXIST,        
     DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,1,@EndDate) PAYBALANCE,        
     DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,2,@EndDate) MONTHLYBALANCE,  
     CASE SIGN(DBO.BALANCE(ACCOUNT.ACCOUNTID,'9')) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END DEBITSTATUSTITLE ,  
     CASE SIGN(DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,1,@EndDate)) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END PAYBALANCETitle ,  
     CASE SIGN(DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,2,@EndDate)) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END MONTHLYBALANCETitle ,  
     CASE SIGN(DBO.EXIST(@ACCOUNTID,@EndDate)) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END EXISTTitle ,
     CASE SIGN(DBO.TOTALEXIST(@ACCOUNTID,@EndDate, 0)) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END TOTALEXISTTitle,  

     ACCOUNT.CONTACTID ,dbo.GetPhoneNumber(ACCOUNT.CONTACTID) Phone
            
    FROM     ACCOUNT            
             LEFT JOIN MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID=MONTHLYTYPE.MONTHLYTYPEID        
             LEFT JOIN ACCOUNTTYPE ON ACCOUNT.ACCOUNTTYPEID=ACCOUNTTYPE.ACCOUNTTYPEID        
             LEFT JOIN CONTACT     ON ACCOUNT.CONTACTID=CONTACT.CONTACTID        
    WHERE ACCOUNTID=@ACCOUNTID  

GO
/****** Object:  StoredProcedure [dbo].[SELECT_ACCOUNT_MONTHLYS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECT_ACCOUNT_MONTHLYS]
@ACCOUNTID INT
AS
SELECT     *
FROM         FORCEPAYMENT
WHERE      (PARENTID = @ACCOUNTID) AND (FORCETYPEID = 2) 




GO
/****** Object:  StoredProcedure [dbo].[SELECT_ALL_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_ALL_ACCOUNT]
AS

SELECT [ACCOUNTID]   FROM [ACCOUNT]  WHERE  ACCOUNTTYPEID=1





GO
/****** Object:  StoredProcedure [dbo].[SELECT_ALL_ACCOUNT_WithoutDELAcc]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SELECT_ALL_ACCOUNT_WithoutDELAcc] 
AS  
  

SELECT *   FROM [ACCOUNT]  WHERE  ACCOUNTTYPEID=1  and isactive=1

GO
/****** Object:  StoredProcedure [dbo].[SELECT_ALL_CASH_ACCOUNTS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_ALL_CASH_ACCOUNTS](@ACCOUNTID INT )
	
AS
SELECT     ACCOUNTID,ACCOUNTTYPETITLE+' : '+ACCOUNTTITLE ACCOUNTTITLE
FROM         ACCOUNT
INNER JOIN ACCOUNTTYPE ON ACCOUNT.ACCOUNTTYPEID=ACCOUNTTYPE.ACCOUNTTYPEID
WHERE ACCOUNT.ACCOUNTTYPEID>1 AND ACCOUNTID<>@ACCOUNTID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_ATTACHMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SELECT_ATTACHMENT]
@ATTACHMENTID INT 
AS

SELECT     *
FROM       ATTACHMENT
WHERE ATTACHMENTID=@ATTACHMENTID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_ATTACHMENT_BY_PAGE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SELECT_ATTACHMENT_BY_PAGE]
@DOCUMENTTYPEID TINYINT,@DOCUMENTID INT,@PAGENUMBER TINYINT
AS
SELECT     *
FROM         ATTACHMENT
WHERE     (DOCUMENTTYPEID = @DOCUMENTTYPEID) AND (PAGENUMBER = @PAGENUMBER) AND (DOCUMENTID = @DOCUMENTID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_BENEFIT_ACCOUNT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_BENEFIT_ACCOUNT] @Type INT
AS
	SELECT * FROM Account WHERE isactive =1 and AccountTypeID=@Type
GO
/****** Object:  StoredProcedure [dbo].[SELECT_CASH_ACCOUNTS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_CASH_ACCOUNTS]

AS
SELECT     ACCOUNTID,ACCOUNTTYPETITLE+' : '+ACCOUNTTITLE ACCOUNTTITLE
FROM         ACCOUNT
INNER JOIN ACCOUNTTYPE ON ACCOUNTTYPE.ACCOUNTTYPEID=ACCOUNT.ACCOUNTTYPEID
WHERE DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,2)=1 OR
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,3)=1 OR
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,4)=1 OR
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,6)=1






GO
/****** Object:  StoredProcedure [dbo].[SELECT_CASH_ACCOUNTS_PLUS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SELECT_CASH_ACCOUNTS_PLUS]  
AS  
SELECT     ACCOUNTID,ACCOUNTTYPETITLE+' : '+ACCOUNTTITLE ACCOUNTTITLE  
FROM         ACCOUNT  
INNER JOIN ACCOUNTTYPE ON ACCOUNTTYPE.ACCOUNTTYPEID=ACCOUNT.ACCOUNTTYPEID  
WHERE DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,2)=1 OR  
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,3)=1 OR  
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,4)=1 OR  
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,6)=1 OR 
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,8)=1 OR
  DBO.IS_PARENTID(ACCOUNTTYPE.ACCOUNTTYPEID,9)=1  
ORDER BY  ACCOUNTNO
GO
/****** Object:  StoredProcedure [dbo].[SELECT_CASHLOGO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_CASHLOGO]
AS
SELECT [CASHINFOID],   [CASHLOGO]
  FROM [CASHINFO]




GO
/****** Object:  StoredProcedure [dbo].[SELECT_CONTACT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_CONTACT]
@CONTACTID INT
AS
SELECT     *
FROM         CONTACT
WHERE CONTACTID=@CONTACTID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_CONTACT_LIKE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SELECT_CONTACT_LIKE]
@CONTACTTYPEID TINYINT ,@LIKE NVARCHAR(50)
AS
SELECT  CONTACTTYPEID,FIRSTNAME+ISNULL(' '+LASTNAME,'') FULLNAME,FATHERNAME,PERSONALNO,ACCOUNTNO,CONTACT.CONTACTID,ACCOUNTID
FROM         CONTACT
LEFT JOIN ACCOUNT ON ACCOUNT.CONTACTID=CONTACT.CONTACTID
WHERE (CONTACTTYPEID=@CONTACTTYPEID OR @CONTACTTYPEID=0) AND
 ISNULL(FIRSTNAME,'')+ISNULL(LASTNAME,'')+ISNULL(ACCOUNTNO,'') LIKE '%'+@LIKE+'%'




GO
/****** Object:  StoredProcedure [dbo].[SELECT_FIELDS_BYTABLENAME]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECT_FIELDS_BYTABLENAME]
@TABLENAME NVARCHAR(50)
AS

SELECT     FIELDNAME, DESCRIPTION
FROM      FIELD
WHERE TABLENAME=@TABLENAME






GO
/****** Object:  StoredProcedure [dbo].[SELECT_FINANCIALNOTE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_FINANCIALNOTE]
@FINANCIALNOTEID INT
AS
SELECT *
FROM FINANCIALNOTE
WHERE FINANCIALNOTEID=@FINANCIALNOTEID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_FINANCIALNOTE_DEATILS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECT_FINANCIALNOTE_DEATILS]
@FINANCIALNOTEID INT
AS
SELECT     FINANCIALNOTE.*, BANKTITLE,FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE, ACCOUNT.ACCOUNTTITLE AS OWNER, NOTESTATUS.NOTESTATUSTITLE
FROM         FINANCIALNOTE
LEFT  JOIN   FINANCIALNOTETYPE ON FINANCIALNOTE.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID
LEFT  JOIN   NOTESTATUS ON FINANCIALNOTE.NOTESTATUSID = NOTESTATUS.NOTESTATUSID
LEFT  JOIN   ACCOUNT ON FINANCIALNOTE.OWNERACCOUNTID = ACCOUNT.ACCOUNTID
LEFT  JOIN   BANK ON FINANCIALNOTE.BANKID = BANK.BANKID
WHERE FINANCIALNOTEID=@FINANCIALNOTEID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_FINANCIALNOTE_LIKE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECT_FINANCIALNOTE_LIKE]
@LIKE NVARCHAR(50),@FINANCIALNOTETYPEID TINYINT
AS
SELECT    FINANCIALNOTE.*, FINANCIALNOTETYPE.FINANCIALNOTETYPETITLE, ACCOUNT.ACCOUNTTITLE AS OWNER, NOTESTATUS.NOTESTATUSTITLE
FROM         FINANCIALNOTE
LEFT  JOIN   FINANCIALNOTETYPE ON FINANCIALNOTE.FINANCIALNOTETYPEID = FINANCIALNOTETYPE.FINANCIALNOTETYPEID
LEFT  JOIN   NOTESTATUS ON FINANCIALNOTE.NOTESTATUSID = NOTESTATUS.NOTESTATUSID
LEFT  JOIN   ACCOUNT ON FINANCIALNOTE.OWNERACCOUNTID = ACCOUNT.ACCOUNTID
WHERE (FINANCIALNOTE.FINANCIALNOTETYPEID=@FINANCIALNOTETYPEID OR @FINANCIALNOTETYPEID=0) AND  ISNULL(ACCOUNTTITLE,'')+ISNULL(NOTENO,'')+ISNULL(BRANCH,'')+ISNULL(BANKACCOUNTNO,'')  LIKE
'%'+@LIKE+'%'




GO
/****** Object:  StoredProcedure [dbo].[SELECT_FINANCIALNOTE_LIKE_NEW]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SELECT_FINANCIALNOTE_LIKE_NEW] @LIKE NVARCHAR(50),@NOTESTATUSID TINYINT  ,@SHOWALL SMALLINT=0                
AS                  
IF @SHOWALL=0             
SELECT Distinct    FinancialNote_Detail.Amount, FinancialNote_Detail.ForceTypeID, Bank.BankTitle, FinancialNote_Detail.NoteDate,   
                      FinancialNote_Detail.NoteDescription, FinancialNote_Detail.ForcePaymentID, FinancialNoteStatus.FinancialNoteStatusDesc,   
                      FinancialNoteType.FinancialNoteTypeTitle, FinancialNote_Detail.NoteNo, FinancialNote_Detail.FinancialNote_MasterID,   
                      FinancialNote_Detail.FinancialNote_DetailID, FinancialNote_Detail.BankID, FinancialNote_Detail.NoteStatusID, FinancialNote_Detail.BRANCH,   
                      FinancialNote_Detail.BRANCHCODE, FinancialNote_Detail.BANKACCOUNTNO, FinancialNoteType.FinancialNoteTypeID,/* Payment.documentno,   
                      ISNULL(PayType.PayTypeTitle, 'مشخص نشده است') AS PayTypeTitle,*/ FinancialNote_Detail.FND_LoanNo, FinancialNote_Detail.FND_LoanId  
FROM         PayType INNER JOIN  
                      Payment ON PayType.PayTypeID = Payment.PayTypeID RIGHT OUTER JOIN  
                      FinancialNote_Detail INNER JOIN  
                      FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID INNER JOIN  
                      FinancialNoteType ON FinancialNote_Master.FinancialNoteTypeID = FinancialNoteType.FinancialNoteTypeID INNER JOIN  
                      FinancialNoteStatus ON FinancialNote_Detail.NoteStatusID = FinancialNoteStatus.FinancialNoteStatusID ON   
                      Payment.FINANCIALNOTE_DETAILID = FinancialNote_Detail.FinancialNote_DetailID LEFT OUTER JOIN  
                      Bank ON FinancialNote_Detail.BankID = Bank.BankID  
WHERE     (FINANCIALNOTE_DETAIL.NOTESTATUSID=@NOTESTATUSID OR @NOTESTATUSID=0) AND                
          (ISNULL(FINANCIALNOTE_DETAIL.NOTENO,'')+ISNULL(BANK.BRANCH,'')+   ISNULL(BANK.BANKACCOUNTNO,'') LIKE '%'+@LIKE+'%'   )                
               
              
ELSE             
            
SELECT Distinct    FinancialNote_Detail.Amount, FinancialNote_Detail.ForceTypeID, Bank.BankTitle, FinancialNote_Detail.NoteDate,   
                      FinancialNote_Detail.NoteDescription, FinancialNote_Detail.ForcePaymentID, FinancialNoteStatus.FinancialNoteStatusDesc,   
                      FinancialNoteType.FinancialNoteTypeTitle, FinancialNote_Detail.NoteNo, FinancialNote_Detail.FinancialNote_MasterID,   
                      FinancialNote_Detail.FinancialNote_DetailID, FinancialNote_Detail.BankID, FinancialNote_Detail.NoteStatusID, FinancialNote_Detail.BRANCH,   
                      FinancialNote_Detail.BRANCHCODE, FinancialNote_Detail.BANKACCOUNTNO, FinancialNoteType.FinancialNoteTypeID,/* Payment.documentno,   
                      ISNULL(PayType.PayTypeTitle, 'مشخص نشده است') AS PayTypeTitle,*/ FinancialNote_Detail.FND_LoanNo, FinancialNote_Detail.FND_LoanId  
FROM         PayType INNER JOIN  
                      Payment ON PayType.PayTypeID = Payment.PayTypeID RIGHT OUTER JOIN  
                      FinancialNote_Detail INNER JOIN  
                      FinancialNote_Master ON FinancialNote_Detail.FinancialNote_MasterID = FinancialNote_Master.FinancialNote_MasterID INNER JOIN  
                      FinancialNoteType ON FinancialNote_Master.FinancialNoteTypeID = FinancialNoteType.FinancialNoteTypeID INNER JOIN  
                      FinancialNoteStatus ON FinancialNote_Detail.NoteStatusID = FinancialNoteStatus.FinancialNoteStatusID ON   
                      Payment.FINANCIALNOTE_DETAILID = FinancialNote_Detail.FinancialNote_DetailID LEFT OUTER JOIN  
                      Bank ON FinancialNote_Detail.BankID = Bank.BankID  
WHERE    (FINANCIALNOTE_DETAIL.NOTESTATUSID=@NOTESTATUSID OR @NOTESTATUSID=0)              
      
GO
/****** Object:  StoredProcedure [dbo].[SELECT_FORCEPAYMENT_BYFORCEPAYMENTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_FORCEPAYMENT_BYFORCEPAYMENTID]
 @FORCEPAYMENTID INT
AS

SELECT     *
FROM         FORCEPAYMENT
WHERE     (FORCEPAYMENTID = @FORCEPAYMENTID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_FORCEPAYMENT_BYPARENTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_FORCEPAYMENT_BYPARENTID]
@FORCETYPEID TINYINT, @PARENTID INT
AS

SELECT     *
FROM         FORCEPAYMENT
WHERE     (PAID = 0) AND (FORCETYPEID = @FORCETYPEID) AND (PARENTID = @PARENTID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LASTMONTHLY]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_LASTMONTHLY]    
@ACCOUNTID INT,@TODAY CHAR(10)    
AS    
    
/*RANJBAR  
DECLARE @MONTHLYTOLERANCE INT   ,@MONTHLYFROMFIRST BIT   ,@MONTHLYAMERCE INT      
SELECT @MONTHLYTOLERANCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYTOLERANCE'    
SELECT @MONTHLYFROMFIRST=CASE VALUE WHEN 0 THEN 0 ELSE 1 END  FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYFROMFIRST'    
SELECT @MONTHLYAMERCE=VALUE FROM SETTING WHERE USERID=-1 AND VARIABLENAME='MONTHLYAMERCE'    
*/    
    
    
SELECT     TOP 1 FORCEPAYMENTID,ACCOUNT.ACCOUNTNO,    
MONTHLYTYPETITLE,    
ACCOUNT.ACCOUNTDATE,    
ACCOUNT.MONTHLYBEGINDATE,    
FORCEPAYMENT.AMOUNT,    
FORCEPAYMENT.MATUREDATE,    
FORCEPAYMENT.COMMENT,    
FORCEPAYMENT.ORDERNO,  
  
/*@MONTHLYAMERCE * CASE WHEN DBO.SHAMSIDATEDIFF(MATUREDATE,@TODAY)>@MONTHLYTOLERANCE THEN    
                 CASE WHEN @MONTHLYFROMFIRST=1 THEN DBO.SHAMSIDATEDIFF(MATUREDATE,@TODAY)    
                 ELSE DBO.SHAMSIDATEDIFF(MATUREDATE,@TODAY)-@MONTHLYTOLERANCE END  ELSE 0 END  AMERCE,*/   
DBO.CALC_MONTHLYAMERCE(FORCEPAYMENT.MATUREDATE , FORCEPAYMENT.AMOUNT , @TODAY) AMERCE ,  
   
DBO.SHAMSIDATEDIFF(MATUREDATE,@TODAY) DELAY    
    
FROM         FORCEPAYMENT INNER JOIN    
                      ACCOUNT ON FORCEPAYMENT.PARENTID = ACCOUNT.ACCOUNTID LEFT OUTER JOIN    
                      MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID = MONTHLYTYPE.MONTHLYTYPEID    
WHERE     (FORCEPAYMENT.PAID = 0) AND (FORCEPAYMENT.FORCETYPEID = 2) AND (FORCEPAYMENT.PARENTID = @ACCOUNTID)    
ORDER BY FORCEPAYMENT.MATUREDATE    
    
  
  


GO
/****** Object:  StoredProcedure [dbo].[SELECT_LASTPART]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  
-------------------------------------------------------------------
  
CREATE Procedure [dbo].[SELECT_LASTPART]        @LoanID int,@today char(10)          
As          
            
/*Ranjbar         
declare @PartTolerance int ,@PartFromFirst bit   ,@PartAmerce int          
          
Select @PartTolerance = Value from Setting where userid=-1 and variablename='PartTolerance'            
Select @PartFromFirst = Case value when 0 then 0 else 1 end  from Setting where userid=-1 and variablename='PartFromFirst'           
Select @PartAmerce = Value from Setting where userid=-1 and variablename='PartAmerce'          
*/        
            
SELECT TOP 1 ForcePayment.ForcePaymentID,Loan.LoanNO , LoanType.LoanTypeTitle , Loan.LoanDate , Loan.PartsBeginDate,          
             Loan.Amount LoanAmount , ForcePayment.Amount , ForcePayment.MatureDate , ForcePayment.Comment ,          
             ForcePayment.OrderNo , InterestAmount,          
/*Ranjbar */        
            dbo.Calc_PartAmerce(ForcePayment.MatureDate, ForcePayment.Amount , @Today) Amerce,      
            FinancialNote_Detail.NoteNo  ,      
            FinancialNote_Detail.FinancialNote_MasterID ,      
            FinancialNote_Detail.FinancialNote_DetailID ,  
/*@PartAmerce * case when dbo.shamsidatediff(Maturedate,@today)>@PartTolerance then          
              case when @PartFromFirst=1 then dbo.shamsidatediff(Maturedate,@today)          
              else dbo.shamsidatediff(Maturedate,@today)-@PartTolerance         
              end  else 0         
              end  Amerce,*/          
        
           dbo.shamsidatediff(Maturedate,@today) Delay  ,  
           ForcePayment.ParentID        
FROM  ForcePayment INNER JOIN          
      Loan ON ForcePayment.ParentID = Loan.LoanID INNER JOIN          
      LoanType ON Loan.LoanTypeID = LoanType.LoanTypeID    LEFT OUTER JOIN      
                      FinancialNote_Detail ON ForcePayment.ForcePaymentID = FinancialNote_Detail.ForcePaymentID      
WHERE (ForcePayment.Paid = 0) AND (ForcePayment.ForceTypeID = 1) AND (ForcePayment.ParentID = @LoanID)          
ORDER BY ForcePayment.MatureDate         
 
GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOAN]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOAN]    
@LOANID INT    
AS    
SELECT     LOANID, LOANNO, ACCOUNTID, SPONSORCONTACTID, LOANTYPEID, LOANDATE, PARTSBEGINDATE, AMOUNT, ISACTIVE, WAGEPAYMENTID, PAYMENTID    
           , LOANCOMMENT,PARTNUMBER /*RANJBAR*/  
FROM       LOAN    
WHERE     (LOANID = @LOANID)    


GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOAN_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_LOAN_BYACCOUNTID]
@ACCOUNTID INT
AS
SELECT     LOANID,LOANNO,LOANDATE,PARTSBEGINDATE,AMOUNT,LOANTYPETITLE,ISNULL(FIRSTNAME+' ','')+LASTNAME SPONSORTITLE,
(SELECT COUNT(1) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID) NUMBEROFPART,
(SELECT COUNT(1) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID AND PAID=1) NUMBEROFPAIDPART,
(SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID  AND PAID=0) REMAINOFLOAN
FROM         LOAN
INNER JOIN LOANTYPE ON LOAN.LOANTYPEID=LOANTYPE.LOANTYPEID
LEFT JOIN CONTACT ON LOAN.SPONSORCONTACTID=CONTACT.CONTACTID
WHERE     (ACCOUNTID = @ACCOUNTID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOAN_LIKE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOAN_LIKE]
@LIKE NVARCHAR(50)
AS
 SELECT     LOAN.LOANID, LOAN.LOANNO, LOAN.LOANDATE, LOAN.PARTSBEGINDATE, LOAN.AMOUNT, ACCOUNT.ACCOUNTTITLE, ACCOUNT.ACCOUNTNO,
(SELECT COUNT(1) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID) NUMBEROFPART,
(SELECT COUNT(1) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID AND ISNULL(PAYMENTID,0)>0) NUMBEROFPAIDPART,
(SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID=LOAN.LOANID AND ISNULL(PAYMENTID,0)=0) REMAINOFLOAN
FROM         LOAN
INNER JOIN  ACCOUNT ON LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID
INNER JOIN LOANTYPE ON LOAN.LOANTYPEID=LOANTYPE.LOANTYPEID
WHERE LOAN.LOANNO+' '+ACCOUNT.ACCOUNTTITLE+' '+ACCOUNT.ACCOUNTNO LIKE '%'+@LIKE+'%'




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOAN_PARTS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOAN_PARTS]
@LOANID INT
AS
SELECT     *
FROM         FORCEPAYMENT
WHERE      (PARENTID = @LOANID) AND (FORCETYPEID = 1)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOAN_PARTS_DETAILS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


--NEW  
CREATE PROCEDURE [dbo].[SELECT_LOAN_PARTS_DETAILS]    
@LOANID INT,@DATEFROM CHAR(10),@DATETO  CHAR(10),@PAID TINYINT    
AS    
SELECT     ACCOUNTTITLE, 
           ACCOUNTNO, 
           PAYMENT.DATE PAYDATE,
           LOANNO,
           dbo.LoaN.Amount LoanAmount,    
          
          (SELECT SUM(AMOUNT)+SUM(INTERESTAMOUNT)/*RANJBAR*/   
           FROM FORCEPAYMENT   
           WHERE  PARENTID=LOAN.LOANID AND FORCETYPEID=1 AND ORDERNO>FP.ORDERNO   ) REMAINAMOUNT,    
          (FP.AMOUNT+INTERESTAMOUNT)AS AMOUNT , MATUREDATE, ORDERNO , INTERESTAMOUNT    
FROM FORCEPAYMENT FP    
INNER JOIN  LOAN ON FP.PARENTID = LOAN.LOANID    
INNER JOIN  ACCOUNT ON LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID    
LEFT  JOIN  PAYMENT ON FP.PAYMENTID = PAYMENT.PAYMENTID    
WHERE     (PARENTID = @LOANID) AND (FORCETYPEID = 1)    
AND MATUREDATE BETWEEN @DATEFROM  AND @DATETO    
AND (PAID=@PAID OR @PAID=2)    
  
  
  
GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOANATTACHMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_LOANATTACHMENT]
@LOANID INT
AS

SELECT     *
FROM       ATTACHMENT
WHERE DOCUMENTID=@LOANID AND DOCUMENTTYPEID=2




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOANGAURANTOR]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOANGAURANTOR]    
@LOANID INT    
AS    
   
SELECT
           LOANGAURANTOR.*,
           CONTACT.PERSONALNO ,
           CONTACT.FIRSTNAME ,
           CONTACT.LASTNAME ,
           CONTACT.FATHERNAME,
           CONTACT.IDNO ,
           CONTACT.BIRTHPLACE ,
           CONTACT.BIRTHDATE ,
           CONTACT.ADDRESS ,
           CONTACT.PHONES    ,
           CONTACT.JOB ,
           CONTACT.ISACTIVE ,
           CONTACT.MEMO ,
           CONTACT.USERFIELD1 ,
           CONTACT.USERFIELD2 ,
           CONTACT.CALFIELD,    
           FinancialNote_Detail.NOTENO, 
           FinancialNote_Detail.NoteDate as MatureDate, 
           FinancialNote_Detail.AMOUNT,
           FinancialNote_Detail.BRANCH,  
           FinancialNote_Detail.BRANCHCODE, 
           FinancialNote_Detail.BANKACCOUNTNO    
FROM       LOANGAURANTOR    
LEFT  JOIN   FinancialNote_Detail ON LOANGAURANTOR.FINANCIALNOTEID = FinancialNote_Detail.FinancialNote_DetailID    
LEFT  JOIN   BANK          ON FinancialNote_Detail.BANKID = BANK.BANKID    
INNER JOIN CONTACT ON CONTACT.CONTACTID=LOANGAURANTOR.GAURANTORCONTACTID    
WHERE LOANID=@LOANID    
    
  


GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOANPRIORITY_BYISURGENCY]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOANPRIORITY_BYISURGENCY]
@ISURGENCY BIT
AS
SELECT     LOANPRIORITY.*,ACCOUNTNO,ACCOUNTTITLE
FROM         LOANPRIORITY
INNER JOIN ACCOUNT ON ACCOUNT.ACCOUNTID=LOANPRIORITY.ACCOUNTID
WHERE     (ISURGENCY = @ISURGENCY)
ORDER BY PRIORITY




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOANREQUEST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOANREQUEST]
@LOANREQUESTID INT
AS
SELECT *
FROM LOANREQUEST
WHERE LOANREQUESTID=@LOANREQUESTID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_LOANREQUEST_BYACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_LOANREQUEST_BYACCOUNTID]
@ACCOUNTID INT
AS
SELECT [LOANREQUESTID]      ,[ACCOUNTID]
      ,[REQUESTDATE]      ,[COMMENT]
      ,[DOCUMENTNO],
 CASE EXPIRED WHEN 0 THEN 'فعال'  ELSE 'غير فعال' END EXPIRESTATUS,
 CASE ISURGENCY WHEN 1 THEN 'ضروري' ELSE 'عادي' END URGENCYSTATUS

FROM  LOANREQUEST
WHERE ACCOUNTID=@ACCOUNTID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_MONTHLY_DETAILS]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SELECT_MONTHLY_DETAILS]
@ACCOUNTID INT,@DATEFROM CHAR(10),@DATETO  CHAR(10),@PAID TINYINT
AS
SELECT     ACCOUNTTITLE, ACCOUNTNO, PAYMENT.DATE PAYDATE,
 0 REMAINAMOUNT, FORCEPAYMENT.AMOUNT, 
MATUREDATE, ORDERNO
FROM         FORCEPAYMENT 
INNER JOIN  ACCOUNT ON FORCEPAYMENT.PARENTID = ACCOUNT.ACCOUNTID
LEFT  JOIN  PAYMENT ON FORCEPAYMENT.PAYMENTID = PAYMENT.PAYMENTID
WHERE     (PARENTID = @ACCOUNTID) AND (FORCETYPEID = 2)
AND MATUREDATE BETWEEN @DATEFROM  AND @DATETO
AND (PAID=@PAID OR @PAID=2) 




GO
/****** Object:  StoredProcedure [dbo].[SELECT_OBJECTACCESS_BYGROUP]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SELECT_OBJECTACCESS_BYGROUP]
@GROUPTITLE NVARCHAR(50),@ACCESSID INT
AS
SELECT     OBJECTS.OBJECTCAPTION, OBJECTS.GROUPTITLE, ACCESSOBJECT.*
FROM         ACCESSOBJECT
INNER JOIN  OBJECTS ON ACCESSOBJECT.OBJECTNAME = OBJECTS.OBJECTNAME

WHERE     (OBJECTS.GROUPTITLE = @GROUPTITLE) AND ACCESSID=@ACCESSID




GO
/****** Object:  StoredProcedure [dbo].[SELECT_OBJECTGROUP]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SELECT_OBJECTGROUP]
AS
SELECT     DISTINCT GROUPTITLE
FROM         OBJECTS




GO
/****** Object:  StoredProcedure [dbo].[SELECT_PAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECT_PAYMENT]
@PAYMENTID INT
AS
SELECT     *
FROM         PAYMENT
WHERE     (PAYMENTID = @PAYMENTID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_RANDOM_ACCOUNTID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[SELECT_RANDOM_ACCOUNTID] @RandACCOUNTID VarChar(50)  OutPut  
  
AS  
  
  
SELECT TOP 1 @RandACCOUNTID=ACCOUNTID  
FROM ACCOUNT   
WHERE ACCOUNTID NOT IN(SELECT Loan.ACCOUNTID  
                       FROM         ForcePayment INNER JOIN  
                                          Loan ON Loan.LoanID = ForcePayment.ParentID  
                       WHERE (ForcePayment.ForceTypeID=1) AND   
                             (ISNULL(ForcePayment.PaymentID,0)=0))  AND 
      CONTACTID<>0  AND
     (IsActive = 1) 
ORDER BY NEWID()  


GO
/****** Object:  StoredProcedure [dbo].[SELECT_RANDOM_ACCOUNTNO]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE  [dbo].[SELECT_RANDOM_ACCOUNTNO] @RandACCOUNTNO VarChar(50)  OutPut

AS


SELECT TOP 1 @RandACCOUNTNO=ACCOUNTNO 
FROM ACCOUNT 
WHERE ACCOUNTID NOT IN(SELECT Loan.ACCOUNTID
                       FROM         ForcePayment INNER JOIN
                                          Loan ON Loan.LoanID = ForcePayment.ParentID
                       WHERE (ForcePayment.ForceTypeID=1) AND 
                             (ISNULL(ForcePayment.PaymentID,0)=0))
                     AND (CONTACTID<>0)
                     AND (IsActive = 1) 
ORDER BY NEWID()
GO
/****** Object:  StoredProcedure [dbo].[SELECT_SPONSOR]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECT_SPONSOR]
AS
SELECT ACCOUNTID,CONTACT.CONTACTID,CONTACT.CONTACTTYPEID,CONTACTTYPETITLE+':'+ISNULL(FIRSTNAME+' ','') +LASTNAME FULLNAME,  FATHERNAME,
DBO.BALANCE (ACCOUNTID,'2') BALANCE
FROM CONTACT
INNER JOIN DBO.CONTACTTYPE ON CONTACT.CONTACTTYPEID=CONTACTTYPE.CONTACTTYPEID
LEFT JOIN ACCOUNT ON ACCOUNT.CONTACTID=CONTACT.CONTACTID
WHERE CONTACT.CONTACTTYPEID IN (2,4)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_TABLE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_TABLE]
AS
SELECT DISTINCT TABLENAME
FROM FIELD





GO
/****** Object:  StoredProcedure [dbo].[SELECT_USER_LIKE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_USER_LIKE]
@LIKE NVARCHAR(50)
AS
SELECT *
FROM USERS
WHERE USERNAME+FULLNAME LIKE '%'+@LIKE+'%'




GO
/****** Object:  StoredProcedure [dbo].[SELECT_USERLOGINLOGOUT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_USERLOGINLOGOUT](@BDATE CHAR(10), @EDATE CHAR(10), @USERID INT)
AS
SELECT     USERS.USERNAME, IPADDRESS,
DBO.SHAMSI(LOGINTIME) LOGINDATE,CAST(DATEPART(HH, LOGINTIME) AS VARCHAR(2))+':'+CAST (DATEPART(MI, LOGINTIME) AS VARCHAR(2)) LOGINTIME,
 DBO.SHAMSI(LOGOUTTIME) LOGOUTDATE,CAST(DATEPART(HH, LOGOUTTIME) AS VARCHAR(2))+':'+CAST (DATEPART(MI, LOGOUTTIME) AS VARCHAR(2)) LOGOUTTIME,
                      ISSAFELOGOUT
FROM         USERLOGINLOGOUT INNER JOIN
                      USERS ON USERLOGINLOGOUT.USERID = USERS.USERID
WHERE DBO.SHAMSI(LOGINTIME)  BETWEEN @BDATE AND @EDATE



GO
/****** Object:  StoredProcedure [dbo].[SELECT_WORDTEMPLATE]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_WORDTEMPLATE]
@WORDTEMPLATEID INT
AS

SELECT     WORDTEMPLATEID, WORDTEMPLATE
FROM         WORDTEMPLATE
WHERE     (WORDTEMPLATEID = @WORDTEMPLATEID)




GO
/****** Object:  StoredProcedure [dbo].[SELECT_WORDTEMPLATELIST]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECT_WORDTEMPLATELIST]
AS

SELECT     WORDTEMPLATEID,TEMPLATETITLE 
FROM         WORDTEMPLATE




GO
/****** Object:  StoredProcedure [dbo].[SelectContact]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create PROCEDURE [dbo].[SelectContact] (@FirstName varchar(100),@LastName varchar(100),@BirthDate varchar(10),@SexId int)
	AS
	BEGIN
		SET @FirstName=ISNULL(@FirstName,'')
		SET @FirstName=LTRIM(RTRIM(@FirstName))
		SET @LastName=ISNULL(@LastName,'')
		SET @LastName=LTRIM(RTRIM(@LastName))
		SET @BirthDate=ISNULL(@BirthDate,'')
		SET @BirthDate=LTRIM(RTRIM(SUBSTRING(@BirthDate,6,LEN(@BirthDate))))
		SET @SexId=ISNULL(@SexId,-1)
		
		DECLARE @sql VARCHAR(max)
		SET @sql= ' Select * from Contact where phones is not null'
		
		IF @FirstName<>''
		SET @sql=@sql+ ' and FirstName like ''%'+@FirstName+'%'''
		IF @LastName<>''
		SET @sql=@sql+ ' and LastName like ''%'+@LastName+'%'''
		IF @BirthDate<>''
		SET @sql=@sql+ ' and  SUBSTRING(BirthDate,6,LEN(BirthDate)) ='''+@BirthDate+''''

		IF @SexId<>-1
		SET @sql=@sql+ ' and  SexId ='+STR(@SexId)
		
		PRINT @sql
		EXEC (@sql)
		
	END
GO
/****** Object:  StoredProcedure [dbo].[SET_SYSTEMSETTING]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SET_SYSTEMSETTING]
@VARIABLENAME VARCHAR(50),@VALUE NVARCHAR(100)
AS
EXEC SET_USERSETTING -1 ,@VARIABLENAME ,@VALUE




GO
/****** Object:  StoredProcedure [dbo].[SET_USERSETTING]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SET_USERSETTING]
@USERID  INT ,@VARIABLENAME VARCHAR(50),@VALUE NVARCHAR(100)
AS
IF NOT EXISTS(SELECT * FROM SETTING WHERE (USERID = @USERID) AND (VARIABLENAME = @VARIABLENAME))
INSERT INTO SETTING(USERID,VARIABLENAME,VALUE) VALUES(@USERID,@VARIABLENAME,@VALUE)
UPDATE SETTING 
SET VALUE=@VALUE
WHERE     (USERID = @USERID) AND (VARIABLENAME = @VARIABLENAME)





GO
/****** Object:  StoredProcedure [dbo].[SetNextNo]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SetNextNo] @TbName  Nvarchar(50),@FldName Nvarchar(50),@Where nvarchar(100) 

 AS
Declare  @Str nvarchar(4000)

SET @Str='SELECT ISNULL(CAST(MAX(ISNULL('+@FldName+',0))  AS INT)+1,1) AS RESULT FROM '+@TbName+  ' WHERE  1=1 '+ @Where

EXECUTE SP_EXECUTESQL @Str   

GO
/****** Object:  StoredProcedure [dbo].[SetSystemSetting]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetSystemSetting]
@VariableName varchar(50),@Value nvarchar(255)
AS
exec SetUserSetting -1 ,@VariableName ,@Value
GO
/****** Object:  StoredProcedure [dbo].[SetUserSetting]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetUserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(255)
AS
DELETE FROM Setting WHERE  (UserID = @UserID) AND (VariableName = LTRIM(RTRIM(@VariableName)))
insert into Setting(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)
Update Setting 
set Value=@Value
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)
GO
/****** Object:  StoredProcedure [dbo].[SP_DELPHI_PROC]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE  [dbo].[SP_DELPHI_PROC] (@SPN VARCHAR(50) )
AS

DECLARE @LINE1 VARCHAR(1000),@LINE2 VARCHAR(8000),@ID INT, @COUNT INT ,@SPNAME VARCHAR(100),@SPTYPE VARCHAR(50),@COLNAME VARCHAR(100),
@ISOUTPARAM BIT,@TEMP INT,@LENGTH INT,@ISFUNCTION BIT ,@RTYPE NVARCHAR(100),@RPNAME NVARCHAR(100)

  SELECT    IDENTITY(INT,1,1) ID, NAME  INTO #M
  FROM         SYSOBJECTS
  WHERE     (XTYPE = 'P') AND (STATUS >= 0)
         AND (ISNULL(@SPN,'')='' OR NAME LIKE '%'+@SPN) 


SELECT @COUNT=MAX(ID)
FROM #M

SET @ID=1

WHILE @ID<=@COUNT 
 BEGIN
   SELECT @SPNAME=NAME FROM #M WHERE ID=@ID
   DECLARE SPCOL CURSOR FOR  
    SELECT SUBSTRING(SYSCOLUMNS.NAME,2,100),MAX(DBO.DELPHITYPE(SYSTYPES.NAME)),MAX(COLID),MAX( ISOUTPARAM),MAX(SYSCOLUMNS.LENGTH)
    FROM    SYSCOLUMNS INNER JOIN
            SYSOBJECTS ON SYSCOLUMNS.ID = SYSOBJECTS.ID INNER JOIN
            SYSTYPES ON SYSCOLUMNS.XTYPE = SYSTYPES.XTYPE
    WHERE     (SYSOBJECTS.XTYPE = 'P') AND (SYSOBJECTS.NAME = @SPNAME)
    GROUP BY SUBSTRING(SYSCOLUMNS.NAME,2,100)
   ORDER BY 3

IF (    SELECT COUNT(SYSCOLUMNS.NAME)
    FROM    SYSCOLUMNS INNER JOIN
            SYSOBJECTS ON SYSCOLUMNS.ID = SYSOBJECTS.ID 
    WHERE      (SYSOBJECTS.NAME =@SPNAME) AND SYSCOLUMNS.ISOUTPARAM=1)=1 
SET @ISFUNCTION =1
ELSE 
SET @ISFUNCTION=0

    OPEN  SPCOL 
    FETCH NEXT FROM SPCOL INTO @COLNAME,@SPTYPE,@TEMP,@ISOUTPARAM,@LENGTH
    SET @LINE1=CASE WHEN @ISFUNCTION=0 THEN 'PROCEDURE  ' ELSE 'FUNCTION ' END+@SPNAME+'('
    SET @LINE2='';

    WHILE @@FETCH_STATUS=0 
     BEGIN
      IF @COLNAME='TYPE' SET @COLNAME='_TYPE'
      SET @LINE1=@LINE1+CASE WHEN @ISFUNCTION=0 OR @ISOUTPARAM=0 THEN  @COLNAME+':'+@SPTYPE+';' ELSE '' END
      SET @LINE2=@LINE2+'
  WITH ADOSP.PARAMETERS.ADDPARAMETER DO
      BEGIN
      DATATYPE := FT'+@SPTYPE+';
      DIRECTION := '+CASE @ISOUTPARAM WHEN 0 THEN 'PDINPUT;' ELSE 'PDOUTPUT;' END +'
      NAME:=''@'+@COLNAME+''';'+CASE WHEN @SPTYPE LIKE '%STRING%' THEN '
      SIZE:= '+CAST(@LENGTH AS VARCHAR(10))+';' ELSE '' END+
CASE @ISOUTPARAM WHEN 0 THEN  '
      VALUE :='+@COLNAME+';
' ELSE '' END +'
    END;
'
IF  @ISOUTPARAM=1 SET  @RTYPE=@SPTYPE;
IF  @ISOUTPARAM=1 SET  @RPNAME=@COLNAME;
    FETCH NEXT FROM SPCOL INTO @COLNAME,@SPTYPE,@TEMP,@ISOUTPARAM,@LENGTH
     END;
IF @LINE1 LIKE '%;' SET @LINE1=SUBSTRING(@LINE1,1,LEN(@LINE1)-1)
SET @LINE1=@LINE1+CASE WHEN  @ISFUNCTION=0 THEN ');' ELSE '):'+@RTYPE+';' END
    PRINT REPLACE(REPLACE(@LINE1+'
'+@LINE1+'
 VAR ADOSP:TADOSTOREDPROC;
 BEGIN
  ADOSP:=TADOSTOREDPROC.CREATE(NIL);
  ADOSP.PROCEDURENAME:='''+@SPNAME+''';
',';;',';'),';);',');')
PRINT @LINE2

    PRINT
'    ADOSP.CONNECTION:=DM.YEGANEHCONNECTION;
    ADOSP.EXECPROC;
'+CASE WHEN @ISFUNCTION=0 THEN '' ELSE
'   RESULT:=ADOSP.PARAMETERS.PARAMBYNAME(''@'+@RPNAME+''').VALUE;' END+'
END;'


  CLOSE SPCOL
  DEALLOCATE SPCOL
  SET @ID=@ID+1
 END









GO
/****** Object:  StoredProcedure [dbo].[SP_DELPHI_PROCEBYNAME]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE  [dbo].[SP_DELPHI_PROCEBYNAME](@SPN VARCHAR(50) )
AS

DECLARE @ALL VARCHAR(4000),@LINE1 VARCHAR(1000),@LINE2 VARCHAR(4000),@ID INT, @COUNT INT ,@SPNAME VARCHAR(100),@SPTYPE VARCHAR(50),@COLNAME VARCHAR(100)

  SELECT    IDENTITY(INT,1,1) ID, NAME  INTO #M
  FROM         SYSOBJECTS
  WHERE     (XTYPE = 'P') AND (STATUS >= 0)
         AND (ISNULL(@SPN,'')='' OR NAME LIKE @SPN)


SELECT @COUNT=MAX(ID)
FROM #M



SET @ID=1

WHILE @ID<=@COUNT
 BEGIN
   SELECT @SPNAME=NAME FROM #M WHERE ID=@ID
   DECLARE SPCOL CURSOR FOR
    SELECT SUBSTRING(SYSCOLUMNS.NAME,2,100),MAX(DBO.DELPHITYPE(SYSTYPES.NAME))
    FROM    SYSCOLUMNS INNER JOIN
            SYSOBJECTS ON SYSCOLUMNS.ID = SYSOBJECTS.ID INNER JOIN
            SYSTYPES ON SYSCOLUMNS.XTYPE = SYSTYPES.XTYPE
    WHERE     (SYSOBJECTS.XTYPE = 'P') AND (SYSOBJECTS.NAME = @SPNAME)
    GROUP BY SUBSTRING(SYSCOLUMNS.NAME,2,100)
    OPEN  SPCOL
    FETCH NEXT FROM SPCOL INTO @COLNAME,@SPTYPE
    SET @LINE1='PROCEDURE  OPEN_'+@SPNAME+'(';
    SET @LINE2='';


    WHILE @@FETCH_STATUS=0
     BEGIN
      IF @COLNAME='TYPE' SET @COLNAME='_TYPE'
      SET @LINE1=@LINE1+@COLNAME+':'+@SPTYPE+';'
      SET @LINE2=@LINE2+'PARAMBYNAME(''@'+ @COLNAME+''').VALUE:='+@COLNAME+';
'
    FETCH NEXT FROM SPCOL INTO @COLNAME,@SPTYPE
     END

    SET @ALL= @LINE1+');
'+@LINE1+');
  BEGIN
  WITH DM.' + @SPNAME +',PARAMETERS DO
   BEGIN
    CLOSE;
    ' + @LINE2+'    OPEN;
   END;
END;'


PRINT REPLACE(REPLACE(@ALL,';;',';'),';)',')')

  CLOSE SPCOL
  DEALLOCATE SPCOL
  SET @ID=@ID+1
 END
SELECT  'OBJECT '+NAME+': TADOSTOREDPROC
  CONNECTION = YEGANEHCONNECTION
  CURSORTYPE = CTSTATIC
  PROCEDURENAME = '''+NAME+'''
END','
OBJECT D'+NAME+': TDATASOURCE
  DATASET = '+NAME+'
END'
  FROM         SYSOBJECTS
  WHERE     (XTYPE = 'P') AND (STATUS >= 0)
         AND (ISNULL(@SPN,'')='' OR NAME LIKE @SPN)










GO
/****** Object:  StoredProcedure [dbo].[SP_REP_LOANPOINT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------
--------------------------------------------------------------
CREATE PROCEDURE [dbo].[SP_REP_LOANPOINT]    
@TODAY CHAR(10),@AccountNO varchar(20),@AccountTitle nvarchar(100)      
AS      
DECLARE @LASTLOANDATE   CHAR(10),@ACCOUNTDATE CHAR(10),@REQUESTDATE CHAR(10),@POINT INT      
DECLARE @PARTDELAYPOINT INT , @MONTHLYDELAYPOINT INT, @LASTLOANPOINT INT,@LOANREQUESTPOINT INT,@BALANCEPOINT INT      
DECLARE @LoanPointSetting  INT,@MonthPointSetting INT
DECLARE @GroupPoint INT 
      
SELECT @BALANCEPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='BALANCEPOINT' AND USERID=-1      
      
SELECT @PARTDELAYPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='PARTDELAYPOINT' AND USERID=-1      
      
SELECT @MONTHLYDELAYPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='MONTHLYDELAYPOINT' AND USERID=-1      
      
SELECT @LASTLOANPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='LASTLOANPOINT' AND USERID=-1      
      
SELECT @LOANREQUESTPOINT=VALUE      
FROM SETTING      
WHERE  VARIABLENAME='LOANREQUESTPOINT' AND USERID=-1      

SELECT @GroupPoint=isnull(VALUE, 0) 
FROM Setting 
WHERE VariableName='GroupPoint' AND UserID=-1
set @GroupPoint= ISNULL(@GroupPoint, 0)
-- 

IF  EXISTS (SELECT * FROM sysobjects WHERE name = 'Rep_LoanPoint' AND type in (N'U'))
DROP TABLE [dbo].[Rep_LoanPoint]      
      
SELECT      
ACCOUNTID,ACCOUNTNO,ACCOUNTTITLE,ACCOUNTDATE,      
(SELECT TOP 1 LOANDATE FROM LOAN WHERE ACCOUNTID=ACC.ACCOUNTID ORDER BY LOANDATE DESC ) LASTLOANDATE,      
(SELECT TOP 1 LOANID FROM LOAN WHERE ACCOUNTID=ACC.ACCOUNTID ORDER BY LOANDATE DESC ) LASTLOANID,      
(SELECT  MAX(REQUESTDATE) FROM DBO.LOANREQUEST WHERE ACCOUNTID=ACC.ACCOUNTID  AND EXPIRED=0)  REQUESTDATE,      
CAST(0 AS INT) PARTDELAY,      
CAST(0 AS INT) MONTHLYDELAY,      
CAST(0 AS INT) AS AVGPOINT,      
CAST(0 AS INT) AS POINT, 
--CAST(0 AS INT) AS LoansCount,      
CAST(0 AS TINYINT) NUMBEROFPART,      
CAST(0 AS INT) LASTLOANAMOUNT,      
CAST('' AS VARCHAR(10)) LASTLOANNO,      
CAST(0 AS INT) REMAINOFLOAN,
CAST(0 AS INT) GroupPaymentPoint
INTO Rep_LoanPoint      
FROM ACCOUNT ACC      
WHERE ACCOUNTTYPEID=1 AND IsActive= 1   
      
UPDATE Rep_LoanPoint      
SET LASTLOANDATE=ISNULL(LASTLOANDATE,ACCOUNTDATE),      
 LASTLOANID=ISNULL(LASTLOANID,0)  

--UPDATE Rep_LoanPoint      
--SET LoansCount=ISNULL((select COUNT(loanid) from loan WHERE ACCOUNTID=ACCOUNTID),0)

 
 UPDATE Rep_LoanPoint      
SET NUMBEROFPART=(SELECT COUNT(1) FROM FORCEPAYMENT WHERE  PARENTID/*=LASTLOANID*/ in(select loanid from loan WHERE loan.ACCOUNTID=Rep_LoanPoint.ACCOUNTID) AND FORCETYPEID=1 ) ,      
REMAINOFLOAN=(SELECT SUM(AMOUNT) FROM FORCEPAYMENT WHERE FORCETYPEID=1 AND PARENTID/*=LASTLOANID*/ in(select loanid from loan WHERE loan.ACCOUNTID=Rep_LoanPoint.ACCOUNTID) AND PAID=0)      
      
UPDATE Rep_LoanPoint      
SET LASTLOANAMOUNT=AMOUNT,LASTLOANNO=LOANNO      
FROM Rep_LoanPoint INNER JOIN LOAN ON LOAN.LOANID=Rep_LoanPoint.LASTLOANID     
      
      
SET @LoanPointSetting  =(SELECT [VALUE] FROM SETTING WHERE VARIABLENAME ='LoanPoint')
SET @MonthPointSetting =(SELECT [VALUE] FROM SETTING WHERE VARIABLENAME ='MonthPoint')

IF @LoanPointSetting=0 --تاخير بر اساس آخرين وام 
BEGIN
		UPDATE Rep_LoanPoint       
		SET PARTDELAY=Floor((@PARTDELAYPOINT*DBO.LOANDELAY(LASTLOANID,@TODAY)*(Convert(float, LastLoanAmount)*0.2))/100000) 
END
   
IF @LoanPointSetting=1 -- تاخير بر اساس افتتاح حساب
BEGIN
		UPDATE Rep_LoanPoint       
		SET PARTDELAY=Floor((@PARTDELAYPOINT*dbo.LoanDelay_ByAccountId(ACCOUNTID,@TODAY)*
			(Convert(float, LastLoanAmount)*0.2))/100000) 
END
   
IF @MonthPointSetting=0 --تاخير بر اساس آخرين وام 
BEGIN
	UPDATE Rep_LoanPoint
	set MONTHLYDELAY=Floor(@MONTHLYDELAYPOINT*DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(LASTLOANDATE,ACCOUNTDATE),@TODAY)) 
END
IF @MonthPointSetting=1 -- تاخير بر اساس افتتاح حساب
BEGIN
		UPDATE Rep_LoanPoint       
		set MONTHLYDELAY=Floor(@MONTHLYDELAYPOINT*DBO.MONTHLYDELAY(ACCOUNTID,ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY)) 
END


UPDATE Rep_LoanPoint 
SET GroupPaymentPoint= dbo.GroupPaymentPoint(LastLoanID, ISNULL(REQUESTDATE,ACCOUNTDATE),@TODAY)

      
SELECT *      
FROM Rep_LoanPoint     
Where  (AccountNO=@AccountNO OR @AccountNO='0') AND  (AccountTitle=@AccountTitle OR @AccountTitle='0' )    
GO
/****** Object:  StoredProcedure [dbo].[SP_RestoreDB]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROC [dbo].[SP_RestoreDB](@BackupPath NVARCHAR(4000), @MDFPath NVARCHAR(4000), @LDFPath NVARCHAR(4000), @Distination NVARCHAR(4000), @DBName NVARCHAR(100))
AS
BEGIN
	DECLARE @query NVARCHAR(4000)
	SET @query = 'USE [master] Restore DataBase ' + @DBName + 
				' From Disk = ''' + @BackupPath + '''' +
				' With Move ''' + @MDFPath + ''' to ''' + @Distination + @DBName + '.MDF'' '+
				' , Move ''' + @LDFPath + ''' to ''' + @Distination + @DBName + '.LDF'' '+
				' , replace'
				
	PRINT @query
	EXEC (@query)
	
	SET @query = 'Update '+@DBName+'..UserLoginLogout set isSafeLogout = 1';
	EXEC (@query)	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowBill]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create  PROCEDURE [dbo].[Sp_ShowBill] @PaymentID INT
AS


SELECT     Payment.CreditorAccountID, Payment.DebtorAccountID, Payment.[Date], Payment.[Time], Payment.Amount, Payment.Comment, 
                      Payment.FINANCIALNOTE_DETAILID, Account.AccountTitle AS CreditAccountTitle, Account_1.AccountTitle AS DebitAccountTitle, Payment.documentno, 
                      Payment.PaymentID,Account.AccountNo AS CreditAccountNo ,Account_1.AccountNo AS DebitAccountNo
FROM         Payment INNER JOIN
                      Account ON Payment.CreditorAccountID = Account.AccountID INNER JOIN
                      Account Account_1 ON Payment.DebtorAccountID = Account_1.AccountID
WHERE dbo.Payment.PaymentID=@PaymentID
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowPerfraj]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--------------------------------------------------
-------------  
CREATE PROCEDURE [dbo].[sp_ShowPerfraj]   
  @Line INT,  
  
  @ChBoDocNo_1       VARCHAR(6),  
  @ChBoAccountNo_1    VARCHAR(20),  
  @ChBoAccountTitle_1 VARCHAR(100),  
  @ChBoDate_1    VARCHAR(10),  
  @ChBoDesc_1    VARCHAR(100),  
  @ChBoCredit_1    VARCHAR(30),  
  @ChBoCredit_H_1    VARCHAR(100),  
  @ChBoDebit_1    VARCHAR(30),  
  @ChBoDebit_H_1    VARCHAR(100),  
  @ChBoDebCrd_1    VARCHAR(30),  
  @ChBoDebCrd_H_1    VARCHAR(100),  
  @ChBoRemain_1    VARCHAR(30),  
  @ChBoRemain_H_1    VARCHAR(100),  
  @ChBoBenefit_1    VARCHAR(30),  
  @ChBoBenefit_H_1   VARCHAR(100),  
  @ChBoSumBenefitPrice_1  VARCHAR(30),  
  @ChBoSumBenefitPrice_H_1 VARCHAR(100),  
  
  @ChBoDocNo_2        VARCHAR(6),  
  @ChBoAccountNo_2    VARCHAR(20),  
  @ChBoAccountTitle_2 VARCHAR(100),  
  @ChBoDate_2     VARCHAR(10),  
  @ChBoDesc_2     VARCHAR(100),  
  @ChBoCredit_2     VARCHAR(30),  
  @ChBoCredit_H_2     VARCHAR(100),  
  @ChBoDebit_2     VARCHAR(30),  
  @ChBoDebit_H_2     VARCHAR(100),  
  @ChBoDebCrd_2     VARCHAR(30),  
  @ChBoDebCrd_H_2     VARCHAR(100),  
  @ChBoRemain_2     VARCHAR(30),  
  @ChBoRemain_H_2     VARCHAR(100),  
  @ChBoBenefit_2     VARCHAR(30),  
  @ChBoBenefit_H_2    VARCHAR(100),  
  @ChBoSumBenefitPrice_2  VARCHAR(30),  
  @ChBoSumBenefitPrice_H_2 VARCHAR(100)  
      
  
       
  
AS  
  
DECLARE @TEMPTbl table(  
  
ChBoDocNo_1          VARCHAR(6),  
ChBoAccountNo_1    VARCHAR(20),  
ChBoAccountTitle_1 VARCHAR(100),  
ChBoDate_1    VARCHAR(10),  
ChBoDesc_1    VARCHAR(100),  
ChBoCredit_1    VARCHAR(30),  
ChBoCredit_H_1    VARCHAR(100),  
ChBoDebit_1    VARCHAR(30),  
ChBoDebit_H_1    VARCHAR(100),  
ChBoDebCrd_1    VARCHAR(30),  
ChBoDebCrd_H_1    VARCHAR(100),  
ChBoRemain_1    VARCHAR(30),  
ChBoRemain_H_1    VARCHAR(100),  
ChBoBenefit_1    VARCHAR(30),  
ChBoBenefit_H_1   VARCHAR(100),  
ChBoSumBenefitPrice_1  VARCHAR(30),  
ChBoSumBenefitPrice_H_1 VARCHAR(100),  
ChBoDocNo_2          VARCHAR(6),  
ChBoAccountNo_2    VARCHAR(20),  
ChBoAccountTitle_2 VARCHAR(100),  
ChBoDate_2    VARCHAR(10),  
ChBoDesc_2    VARCHAR(100),  
ChBoCredit_2    VARCHAR(30),  
ChBoCredit_H_2    VARCHAR(100),  
ChBoDebit_2    VARCHAR(30),  
ChBoDebit_H_2    VARCHAR(100),  
ChBoDebCrd_2    VARCHAR(30),  
ChBoDebCrd_H_2    VARCHAR(100),  
ChBoRemain_2    VARCHAR(30),  
ChBoRemain_H_2    VARCHAR(100),  
ChBoBenefit_2     VARCHAR(30),  
ChBoBenefit_H_2    VARCHAR(100),  
ChBoSumBenefitPrice_2  VARCHAR(30),  
ChBoSumBenefitPrice_H_2 VARCHAR(100)  
  
    )  
delete @TEMPTbl   
DECLARE @I INT  
SET @I=1  
  
WHILE @i < @line  
BEGIN  
  INSERT INTO @TEMPTbl   
  SELECT '','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''  
  set @i=@i+1  
end  
  INSERT INTO @TEMPTbl(ChBoDocNo_1  ,  
                ChBoAccountNo_1 ,  
                              ChBoAccountTitle_1 ,  
                ChBoDate_1    ,  
                ChBoDesc_1    ,  
                ChBoCredit_1    ,  
                ChBoCredit_H_1    ,  
                ChBoDebit_1    ,  
                ChBoDebit_H_1    ,  
                ChBoDebCrd_1    ,  
                ChBoDebCrd_H_1    ,  
                ChBoRemain_1    ,  
                ChBoRemain_H_1    ,  
                ChBoBenefit_1    ,  
                ChBoBenefit_H_1   ,  
                ChBoSumBenefitPrice_1,  
                ChBoSumBenefitPrice_H_1,  
  
                ChBoDocNo_2        ,  
                ChBoAccountNo_2    ,  
                ChBoAccountTitle_2 ,  
                ChBoDate_2     ,  
                ChBoDesc_2     ,  
                ChBoCredit_2     ,  
                ChBoCredit_H_2     ,  
                ChBoDebit_2     ,  
                ChBoDebit_H_2     ,  
                ChBoDebCrd_2     ,  
                ChBoDebCrd_H_2     ,  
                ChBoRemain_2     ,  
                ChBoRemain_H_2     ,   
                ChBoBenefit_2    ,  
                ChBoBenefit_H_2   ,  
                ChBoSumBenefitPrice_2,  
                ChBoSumBenefitPrice_H_2  
  
)   
  SELECT  @ChBoDocNo_1  ,  
  @ChBoAccountNo_1 ,  
  @ChBoAccountTitle_1 ,  
  @ChBoDate_1    ,  
  @ChBoDesc_1    ,  
  @ChBoCredit_1    ,  
  @ChBoCredit_H_1    ,  
  @ChBoDebit_1    ,  
  @ChBoDebit_H_1    ,  
  @ChBoDebCrd_1    ,  
  @ChBoDebCrd_H_1    ,  
  @ChBoRemain_1    ,  
  @ChBoRemain_H_1    ,  
  @ChBoBenefit_1    ,  
  @ChBoBenefit_H_1   ,  
  @ChBoSumBenefitPrice_1,  
  @ChBoSumBenefitPrice_H_1,  
  
  @ChBoDocNo_2        ,  
  @ChBoAccountNo_2    ,  
  @ChBoAccountTitle_2 ,  
  @ChBoDate_2     ,  
  @ChBoDesc_2     ,  
  @ChBoCredit_2     ,  
  @ChBoCredit_H_2     ,  
  @ChBoDebit_2     ,  
  @ChBoDebit_H_2     ,  
  @ChBoDebCrd_2     ,  
  @ChBoDebCrd_H_2     ,  
  @ChBoRemain_2     ,  
  @ChBoRemain_H_2     ,   
  @ChBoBenefit_2    ,  
  @ChBoBenefit_H_2   ,  
  @ChBoSumBenefitPrice_2,  
  @ChBoSumBenefitPrice_H_2  
  
select * from @TEMPTbl  
  
  
GO
/****** Object:  StoredProcedure [dbo].[TotalPriceOfLoanForEachGaurantor]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[TotalPriceOfLoanForEachGaurantor] @GaurantorContactID as INT,@Result FLOAT OUTPUT
AS

set @Result=ISNULL((
			SELECT     SUM(Amount) AS Expr1
			FROM         Loan
			WHERE     (LoanID IN
			                    (SELECT LoanID
			                     FROM   LoanGaurantor
			                     WHERE (GaurantorContactID = 3)
                                             )
                                   )
                    )
               ,0)


GO
/****** Object:  StoredProcedure [dbo].[UNPAY_FORCEPAYMENT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[UNPAY_FORCEPAYMENT]
@FORCEPAYMENTID INT
AS

DECLARE @PAYMENTID INT 

SELECT  @PAYMENTID=PAYMENTID
FROM FORCEPAYMENT
WHERE FORCEPAYMENTID=@FORCEPAYMENTID


DELETE PAYMENT WHERE PAYMENTID = @PAYMENTID

DELETE PAYMENT
WHERE RELATEDID=@FORCEPAYMENTID AND PAYTYPEID=7


UPDATE FORCEPAYMENT   
SET PAYMENTID = 0  ,PAID = 0 
WHERE FORCEPAYMENTID=@FORCEPAYMENTID









GO
/****** Object:  StoredProcedure [dbo].[UPDATE_AccountForGaurantyInfo]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-------------------------------------------------------------------
CREATE PROCEDURE [dbo].[UPDATE_AccountForGaurantyInfo]    @AccountID_or_ContactID  INT ,@LoanId Integer ,@Price Float,@AddOrDelete INT --ADD=1 DELETE=2    
AS      

DECLARE @Percent INT    
/*DECLARE   @AccountID_or_ContactID    INT ,@LoanId Integer ,@Price Float,@AddOrDelete INT --ADD=1 DELETE=2    
SET    @AccountID_or_ContactID =4   
SET    @LoanId =32
SET    @Price=1000000
SET    @AddOrDelete=2    
SELECT * FROM ACCOUNT    WHERE ContactID=@AccountID_or_ContactID*/

IF @AddOrDelete=1    
  UPDATE    Account    
  SET       BlockedPrice =IsNull(BlockedPrice,0)+@Price      
  Where     AccountID=@AccountID_or_ContactID    
    
IF @AddOrDelete=2    
BEGIN    
  SET @Percent =(Select TOP 1  PercentofGauranty From LoanGaurantor WHERE LoanId=@LoanId AND GaurantorContactID=(SELECT CONTACTID FROM ACCOUNT WHERE contactid=@AccountID_or_ContactID))    
  UPDATE    Account    
  SET       BlockedPrice =IsNull(BlockedPrice,0)-((@Price*@Percent)  /100  )  
  Where     ContactID=@AccountID_or_ContactID    
   
END    
 
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CALCFIELD]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UPDATE_CALCFIELD]
@CONTACTID INT,@CALFIELD INT
AS
UPDATE CONTACT
 SET CALFIELD = @CALFIELD
 WHERE CONTACTID=@CONTACTID



GO
/****** Object:  StoredProcedure [dbo].[UPDATE_LOANGAURANTOR_FINANCIALNOTEID]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[UPDATE_LOANGAURANTOR_FINANCIALNOTEID]
@LOANGAURANTORID INT,@FINANCIALNOTEID INT
AS

UPDATE LOANGAURANTOR
   SET [FINANCIALNOTEID] = @FINANCIALNOTEID
 WHERE LOANGAURANTORID=@LOANGAURANTORID




GO
/****** Object:  StoredProcedure [dbo].[Update_Rep_LOANPOINT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[Update_Rep_LOANPOINT]
@ACCountID Int, @TODAY CHAR(10),@AccountNO varchar(20),@AccountTitle nvarchar(100)      
AS      
DECLARE @LASTLOANDATE   CHAR(10),@ACCOUNTDATE CHAR(10),@REQUESTDATE CHAR(10),@POINT INT      
DECLARE @PARTDELAYPOINT INT , @MONTHLYDELAYPOINT INT, @LASTLOANPOINT INT,@LOANREQUESTPOINT INT,@BALANCEPOINT INT      
DECLARE @LoanPointSetting  INT,@MonthPointSetting INT
DECLARE @GroupPoint INT 
      
SELECT @BALANCEPOINT=VALUE      --OK
FROM SETTING      
WHERE  VARIABLENAME='BALANCEPOINT' AND USERID=-1      
      
SELECT @LASTLOANPOINT=VALUE    --OK  
FROM SETTING      
WHERE  VARIABLENAME='LASTLOANPOINT' AND USERID=-1      
      
SELECT @LOANREQUESTPOINT=VALUE     --OK 
FROM SETTING      
WHERE  VARIABLENAME='LOANREQUESTPOINT' AND USERID=-1      

SELECT @GroupPoint=isnull(VALUE, 0)   --OK
FROM Setting 
WHERE VariableName='GroupPoint' AND UserID=-1
set @GroupPoint= ISNULL(@GroupPoint, 0)

SElect @LASTLOANDATE=LASTLOANDATE from rep_loanpoint
where ACCOUNTID=@ACCountID

UPDATE Rep_LoanPoint       
SET AVGPOINT= DBO.SUMBALANCE(@ACCountID,@LASTLOANDATE,@TODAY)/304000
WHERE ACCOUNTID=@ACCountID

     
UPDATE Rep_LoanPoint      
SET POINT=-MONTHLYDELAY - PARTDELAY
+@BALANCEPOINT*AVGPOINT      
+@LASTLOANPOINT*ISNULL(DBO.SHAMSIDATEDIFF(LASTLOANDATE,@TODAY),0)      
+@LOANREQUESTPOINT*ISNULL(DBO.SHAMSIDATEDIFF(ISNULL(REQUESTDATE,@TODAY),@TODAY),0) 
+@GroupPoint*GroupPaymentPoint
WHERE ACCOUNTID=@ACCountID
      
SELECT *      
FROM Rep_LoanPoint     
Where  (AccountNO=@AccountNO OR @AccountNO='0') AND (ACCountID=@ACCountID) AND (AccountTitle=@AccountTitle OR @AccountTitle='0' )    
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_USERLOGINLOGOUT]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[UPDATE_USERLOGINLOGOUT]
	( @USERLOGINLOGOUTID	[INT],
	 @ISSAFELOGOUT 	[BIT])

AS
 UPDATE [DBO].[USERLOGINLOGOUT]

SET          [LOGOUTTIME]	 = GETDATE(),
	 [ISSAFELOGOUT]	 = @ISSAFELOGOUT

WHERE 	( [USERLOGINLOGOUTID]	 = @USERLOGINLOGOUTID)












GO
/****** Object:  StoredProcedure [dbo].[UpdateForcePaymentAfterInsertFromExcel]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE  [dbo].[UpdateForcePaymentAfterInsertFromExcel]  @PaymentID INT , @ParentID Int,@AMOUNT int, @MatureDate  CHAR(10),@SwInsert  CHAR(1) --if @SwInsert=1 insert else dont insert
AS 
/*declare @PaymentID INT , @ParentID Int,@AMOUNT FLOAT, @MatureDate  CHAR(10),@SwInsert  CHAR(1) --if @SwInsert=1 insert else dont insert 
set @PaymentID=1862  
set @ParentID=14
set @AMOUNT=200000 
set @MatureDate='1390/01/01'
set @SwInsert=1 --if @SwInsert=1 insert else dont insert 
 */
DECLARE @OrderNo INTEGER
     SET @OrderNo  = (SELECT MAX(ISNULL(OrderNo,0))+1  FROM ForcePayment WHERE SUBSTRING(ForcePayment.MatureDate,1,7)=SUBSTRING(@MatureDate,1,7) and ParentID=@ParentID and ForceTypeID=2)
     SET @OrderNo  = ISNULL(@OrderNo,1)

        IF NOT EXISTS(SELECT ForcePayment.MatureDate 
                      FROM   ForcePayment 
                      WHERE (ForcePayment.ForceTypeID = 2) AND
                            (ForcePayment.ParentID=@ParentID) AND 
                            (SUBSTRING(ForcePayment.MatureDate,1,7)=SUBSTRING(@MatureDate,1,7) ))
        BEGIN
          IF @SwInsert='1' 
           INSERT INTO  ForcePayment (  ParentID,ForceTypeID, Amount, MatureDate, PaymentID, Comment                  , Paid, OrderNo, InterestAmount )
           SELECT                      @ParentID,2          ,@Amount,@MatureDate,@PaymentID,'واريز از طريق فايل اکسل',1,@OrderNo,0
	END 
	ELSE
	BEGIN
/*          select ParentID,2          ,Amount,MatureDate,PaymentID,'واريز از طريق فايل اکسل',1,OrderNo,0 from   ForcePayment 
	  --SET     PAID=1 ,PaymentID =(@PaymentID)
	  WHERE  (ForcePayment.ForceTypeID = 2) AND 
	         (ForcePayment.ParentID=@ParentID)  AND 
	         (SUBSTRING(ForcePayment.MatureDate,1,7)=SUBSTRING(@MatureDate,1,7) )*/

  	  UPDATE  ForcePayment 
 	  SET     PAID=1 ,PaymentID =(@PaymentID)
 	  WHERE  (ForcePayment.ForceTypeID = 2) AND 
 	         (ForcePayment.ParentID=@ParentID)  AND 
 	         (SUBSTRING(ForcePayment.MatureDate,1,7)=SUBSTRING(@MatureDate,1,7) ) 

	END

GO
/****** Object:  StoredProcedure [dbo].[Y_BACKUP]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Y_BACKUP](@DBNAME NVARCHAR(50),@PATH NVARCHAR(255))
 AS
EXEC('BACKUP DATABASE ['+@DBNAME+'] TO DISK='''+@PATH+'''')
GO
/****** Object:  StoredProcedure [dbo].[Y_REINDEXTABLES]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Y_REINDEXTABLES] (@DBNAME NVARCHAR(50))   
AS    
DECLARE  @NAME VARCHAR(50)    
DECLARE  @SQL NVARCHAR(100)    
DECLARE MAIN_CURSOR CURSOR FOR    
           SELECT NAME FROM SYSOBJECTS    
           WHERE TYPE='U' ORDER BY NAME    
 OPEN  MAIN_CURSOR    
 FETCH NEXT FROM MAIN_CURSOR INTO @NAME    
    
 WHILE @@FETCH_STATUS=0    
  BEGIN    
    SET @SQL='DBCC DBREINDEX( ['+@NAME+'] )'    
    PRINT @SQL+'...'    
    EXEC SP_EXECUTESQL @SQL    
   FETCH NEXT FROM MAIN_CURSOR INTO @NAME    
  END    
    
 CLOSE MAIN_CURSOR    
 DEALLOCATE MAIN_CURSOR    
    
  
--EXEC Y_SHRINK 'YLOANCASH'    
   
EXEC Y_SHRINK @DBNAME  

  

GO
/****** Object:  StoredProcedure [dbo].[Y_SHRINK]    Script Date: 18/07/1403 05:21:51 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Y_SHRINK](@DBNAME NVARCHAR(50))
 AS
DECLARE @I TINYINT
SET @I=1
WHILE @I<=5
BEGIN
--EXEC('BACKUP LOG '+@DBNAME+' WITH TRUNCATE_ONLY')
EXEC('Alter DataBase '+ @DBNAME + ' Set Recovery Simple')

  DBCC SHRINKFILE(1,1)
 DBCC SHRINKFILE(2,1)
SET @I=@I+1

EXEC('Alter DataBase '+ @DBNAME + ' Set Recovery Full')
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'شماره وام' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Loan', @level2type=N'COLUMN',@level2name=N'LoanNO'
GO
USE [master]
GO
ALTER DATABASE [YLoanCash_null] SET  READ_WRITE 
GO
