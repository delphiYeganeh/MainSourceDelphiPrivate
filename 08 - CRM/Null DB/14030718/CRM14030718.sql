USE [Y_Crm]
GO
/****** Object:  User [Ramezani]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE USER [Ramezani] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [WIN-KNU2IVMRR1U\moghadam]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE USER [WIN-KNU2IVMRR1U\moghadam] FOR LOGIN [WIN-KNU2IVMRR1U\moghadam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Y_Advise_app]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE USER [Y_Advise_app] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Y_Advise_app]
GO
/****** Object:  User [YeganehCompany_CRM]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE USER [YeganehCompany_CRM] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'Ramezani'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_accessadmin', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_securityadmin', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_ddladmin', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_denydatareader', @membername = N'YeganehCompany_CRM'
GO
sys.sp_addrolemember @rolename = N'db_denydatawriter', @membername = N'YeganehCompany_CRM'
GO
/****** Object:  Schema [Y_Advise_app]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE SCHEMA [Y_Advise_app]
GO
/****** Object:  UserDefinedDataType [dbo].[DTCodeint]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTCodeint] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTCodeStr]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTCodeStr] FROM [nvarchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTDate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTDate] FROM [nvarchar](25) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTDateAndTime]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTDateAndTime] FROM [nvarchar](20) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTFamiliy]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTFamiliy] FROM [nvarchar](100) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTFlag]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTFlag] FROM [bit] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTFloat]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTFloat] FROM [float] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTID] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTImage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTImage] FROM [image] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTInteger]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTInteger] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTMoney]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTMoney] FROM [float] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTName]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTName] FROM [nvarchar](50) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTPhone]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTPhone] FROM [nvarchar](20) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTSmallInteger]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTSmallInteger] FROM [tinyint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTSmallName]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTSmallName] FROM [nvarchar](10) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTSmallText]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTSmallText] FROM [nvarchar](300) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTTime]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTTime] FROM [nvarchar](15) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DTVeryBigText]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
CREATE TYPE [dbo].[DTVeryBigText] FROM [nvarchar](4000) NULL
GO
/****** Object:  UserDefinedFunction [dbo].[code]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[code](@code int )  
RETURNS char(4) AS  
BEGIN 
declare @res char(4)
if @code<10 set @res='000'+cast(@code as varchar(4)) else
if @code<100 set @res='00'+cast(@code as varchar(4)) else
if @code<1000 set @res='0'+cast(@code as varchar(4)) else
set @res=cast(@code as varchar(4))
return(@RES)

END
GO
/****** Object:  UserDefinedFunction [dbo].[ContractValidator]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[ContractValidator](@LockCode varchar(20))
Returns bit
as
 Begin
 Declare @EndDate varchar(10)
 Declare @TempBit bit
 Declare @CustomerID int
 select Top 1 @EndDate = EndDate,@CustomerId = Customer.CustomerId from dbo.Customer
 inner join contract on contract.CustomerID = Customer.CustomerID
 where FreeField09 = @LockCode
 order by EndDate Desc
 if @EndDate <= dbo.Shamsi(GetDate())
   Set @TempBit = 0
 else
   Set @TempBit = 1
 Return @TempBit  
 End

GO
/****** Object:  UserDefinedFunction [dbo].[CustomerOtherPersonPhone]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[CustomerOtherPersonPhone](@CustomerId INT)
returns  nvarchar(50) 
AS
BEGIN
	
DECLARE @result nvarchar(50)	

SET @result = (SELECT TOP 1 [WorkPhone] WorkPhoneOther 
  FROM [dbo].[Person]  WITH(NOLOCK)  WHERE  ISNULL([WorkPhone],'') <> '' AND   CustomerID  = @CustomerId)
  
  
 RETURN  ISNULL(@result,'')
 
END
GO
/****** Object:  UserDefinedFunction [dbo].[DayOfWeek]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[DayOfWeek](@date char(10))
RETURNS tinyint AS  
BEGIN 
return((dbo.shamsitoint(@date)+1)%7)
END






GO
/****** Object:  UserDefinedFunction [dbo].[delphiType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[Exist]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create FUNCTION [dbo].[Exist]
(
@AccountID int,@dateTo char(10)
)
RETURNS bigint
AS
BEGIN
declare @SumAmount bigint
select @SumAmount=sum(Case when @AccountID=DebtorAccountID   then -Amount else +Amount end)
from Payment
where Date <=@dateTo  AND (@AccountID in (DebtorAccountID,CreditorAccountID))
and paytypeid in (1,2)
set @SumAmount=isnull(@SumAmount,0)

RETURN @SumAmount

END




GO
/****** Object:  UserDefinedFunction [dbo].[fn_FinishedContractBycustomerId]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_FinishedContractBycustomerId]( @CustomerID  int)  
returns  NVARCHAR(2000)  
Begin  
	Declare @result nvarchar(2000)  
	Declare @cnt INT, @csid int
	Set @result=''  
	
	SELECT @csid=CustomerStatusid FROM dbo.customer WITH(NOLOCK) WHERE customer.customerid = @CustomerID
	
	IF (@csid = 2)
	BEGIN
		SELECT @cnt = COUNT(c.ContractID) FROM [Contract] c WITH(NOLOCK)
		INNER JOIN dbo.customer cu WITH(NOLOCK) ON c.customerid = cu.customerid
		WHERE c.customerid = @CustomerID AND cu.CustomerStatusid = 2
		IF (@cnt = 0) 
			set @result = N'قرارداد ندارد'
		ELSE
		BEGIN
			Select @result = @result+','+ replace(ProductTitle,'ي','ي')  
			FROM  dbo.CustomerProduct WITH(NOLOCK) 
			LEFT JOIN  dbo.Product WITH(NOLOCK) ON (Product.ProductID = CustomerProduct.ProductID)   
			WHERE  CustomerProduct.ContractFinished = 1  
			    AND (CustomerProduct.CustomerID = @CustomerID)  
			order by Product.ProductID  
  
			if @result<>''   
				set @result=right(@result,len(@result)-1)    
			else  
				set @result=''
		END
 
		IF @result = ''
		BEGIN
			SELECT @cnt = COUNT(c.ContractID) FROM [Contract] c WITH(NOLOCK)
			WHERE c.customerid = @CustomerID
				AND dbo.Shamsi(getdate()) BETWEEN c.BEGINdate AND c.EndDate
	
			IF @cnt = 0 
				set @result = N'اتمام تاريخ قرارداد'
		END	
	END
	ELSE
		set @result = ''
    
	return(@result)     
end 

GO
/****** Object:  UserDefinedFunction [dbo].[fn_FinishedContractBycustomerId_NEW]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE function [dbo].[fn_FinishedContractBycustomerId_NEW]( @CustomerID  int)  
returns  NVARCHAR(2000)  
Begin  
Declare @result nvarchar(2000)  
Set @result=''  
Select @result = @result+','+ replace(ProductTitle,'ي','ي') +'( '+(SELECT MAX(ISNULL(ENDDATE,'0')) FROM dbo.CONTRACT WITH(NOLOCK) WHERE CUSTOMERID = @CustomerID)  +' )' 
FROM  dbo.CustomerProduct WITH(NOLOCK)
LEFT JOIN   dbo.Product WITH(NOLOCK) ON (Product.ProductID = CustomerProduct.ProductID)   
WHERE  CustomerProduct.ContractFinished = 1  
        AND (CustomerProduct.CustomerID =@CustomerID)  
      
order by Product.ProductID  
  
if @result<>''   
  set @result=right(@result,len(@result)-1)    
else  
  set @result=''   
    
 return(@result)     
end  

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetAllStateCustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_GetAllStateCustomer]( @CustomerID INT ,@ATLevelID   int)
returns  int
BEGIN
/*
  0 -- هیچ کاری انجام نشده\
  1 -- درحال انجام
  2 -- انجام شده
  3 -- در این وضعیت نیستیم ولی قبلا این قسمت کاری انجام شده
  
 */	
	
DECLARE @result INT
DECLARE @MaxFollowUpID INT ,@level INT ,@ChildCount INT,@DoneStatusIDMax INT , @maxActionTypeDone INT, @maxActionTypeInUnDone INT,@childID INT 
DECLARE @CustomerStatusId INT 

SET @level = ISNULL((SELECT LEVEL FROM dbo.ActionType_Level AS ATL WHERE id = @ATLevelID ),0)
SET @MaxFollowUpID = 0

IF ( @level = 0 ) OR ( @level = 1 AND @ATLevelID NOT IN ( SELECT id FROM [dbo].[ActionType_Level] WHERE LEVEL = 1 AND id NOT IN (SELECT parentid FROM [dbo].[ActionType_Level] WHERE LEVEL=2) ) )
  SET @MaxFollowUpID = ISNULL(( SELECT max(FollowUPID) FROM [dbo].[FollowUp] WITH(NOLOCK) WHERE CustomerID = @CustomerID ),0) 
SET @DoneStatusIDMax = 0
SET @maxActionTypeDone = 0
SET @maxActionTypeInUnDone = 0
SET @childID = 0


IF @MaxFollowUpID >0 
begin
  SET @DoneStatusIDMax = (SELECT DoneStatusID FROM [dbo].[FollowUp] WITH(NOLOCK) WHERE CustomerID = @CustomerID  AND FollowUPID = @MaxFollowUpID )
  SET @maxActionTypeDone = (SELECT ActionTypeID FROM [dbo].[FollowUp] WITH(NOLOCK) WHERE CustomerID = @CustomerID  AND DoneStatusID = 1 AND
                              FollowUPID IN (SELECT MAX(FollowUPID) FROM dbo.FollowUp AS FU WITH (NOLOCK) WHERE CustomerID = @CustomerID  AND DoneStatusID = 1 ) )
  SET @maxActionTypeInUnDone = (SELECT ActionTypeID FROM [dbo].[FollowUp] WITH(NOLOCK) WHERE CustomerID = @CustomerID  AND DoneStatusID = 2 AND 
                                  FollowUPID IN (SELECT MAX(FollowUPID) FROM dbo.FollowUp AS FU WITH (NOLOCK) WHERE CustomerID = @CustomerID  AND DoneStatusID = 2 ) )
  IF @level = 1
	SET @ChildCount = ISNULL( (SELECT COUNT(ChildID) FROM [dbo].[ActionType_Level] WHERE LEVEL = 2 AND  ParentID = @ATLevelID) ,0)
  
  IF @ChildCount = 1
	SET @childID = ISNULL( (SELECT ChildID FROM [dbo].[ActionType_Level] WHERE LEVEL = 2 AND  ParentID = @ATLevelID) ,0)
  
  SET @CustomerStatusId = (SELECT CustomerStatusID FROM dbo.Customer AS C WITH (NOLOCK) WHERE C.CustomerID = @CustomerID)                                     
end  
  
set @result = 0

IF  ( @MaxFollowUpID ) = 0 -- زمانیکه هیچ اقدامی نداریم پس در مرحله فروش هستیم
BEGIN
  IF @level = 0  AND  @ATLevelID = 1	--فروش	
    SET @result = 1
  ELSE 
  IF  @level = 1  AND @ATLevelID = 6	--ثبت سر نخ
    SET @result = 2
  ELSE 
  IF  @LEVEL = 1  AND @ATLEVELID = 12	--کنسلی
  BEGIN
  	 SET @CustomerStatusId = (SELECT CustomerStatusID FROM dbo.Customer AS C WITH (NOLOCK) WHERE C.CustomerID = @CustomerID)  
  	IF @CustomerStatusId = 3  
	  SET @RESULT = 2 
	ELSE  SET @RESULT = 0  
  END
  ELSE   SET @result = 0

END
ELSE 
IF ( @MaxFollowUpID ) > 0
BEGIN
  IF @level = 0 
  BEGIN
  	
  	IF @ATLevelID = 1	--فروش	
  	BEGIN
  	  IF @CustomerStatusId = 3 -- انصراف	
  	    SET @result = 3
  	  ELSE 
  	  IF @CustomerStatusId IN (2,7)--قطعی
  	    SET @result = 2
  	  ELSE SET  @result = 1  
  	END 
  	
  	IF @ATLevelID = 3	--پشتیبانی 
  	BEGIN
  	  IF @CustomerStatusId IN (2,7)
  	    SET @result = 3
  	  ELSE SET  @result = 1  
  	END 
  	  	
  	IF @ATLevelID = 5 --مشتری
  	BEGIN
  	  IF @CustomerStatusId IN (2,7)
  	    SET @result = 2
  	  ELSE SET  @result = 0  
  	END   	
  	-- کدوم مرحله اصلی هستیم
  	--SET @result = 0
  END	
  ELSE 
  IF @level = 1
  BEGIN	
    
  	IF  @ChildCount = 0
  	BEGIN
  	  IF @ATLevelID = 6	--ثبت سر نخ
        SET @result = 2
        
      else IF @ATLevelID =12 --کنسلی
      BEGIN
      	SET @result = 2 
      END
      ELSE  SET @result = 0  
      
  	END	
  	ELSE  
  	IF  @ChildCount = 1
  	BEGIN
  	  IF (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID = @CustomerID AND ActionTypeID = @childID ) >0 
  	  begin	
  		  IF (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID = @CustomerID AND ActionTypeID = @childID AND DoneStatusID = 2) >0 
  		  BEGIN
  	  		SET @result = 2	
  		  END
  		  /*
  		  ELSE IF (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID = @CustomerID AND ActionTypeID = @ChildCount AND DoneStatusID = 1) >0 
  		  BEGIN
  	  		SET @result = 1	
  		  END  
  		  */	  
  		  ELSE SET @result = 1		
  	  END
  	  ELSE SET @result = 0
  	END	
  	ELSE    		  
  	IF @ChildCount > 1
  	BEGIN
  	  IF (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID = @CustomerID AND 
  	       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE LEVEL = 2 AND ParentID = @ATLevelID )) >0 
  	  BEGIN
  		  IF (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID = @CustomerID AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE LEVEL = 2 AND ParentID = @ATLevelID ) AND DoneStatusID = 2) >0 
  		  BEGIN
  	  		SET @result = 2	
  		  END
  		  /*
  		  ELSE IF (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID = @CustomerID AND ActionTypeID = @ChildCount AND DoneStatusID = 1) >0 
  		  BEGIN
  	  		SET @result = 1	
  		  END  
  		  */	  
  		  ELSE SET @result = 1	  	  	
  	  END
  	  ELSE SET @result = 0		
  	END 

  	--SET @result = 0	
  END	
END


--SELECT [dbo].[fn_GetAllStateCustomer]( 59720,8 )
  
return(@result)   
end

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCommisionPercent]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_GetCommisionPercent](@ProductId INT,@UserID INT,@MYear INT)
returns  tinyint
BEGIN
	
declare @result TINYINT,@CommissionPercent INT,
		@Dabir_Single FLOAT, @Dabir_Net FLOAT, @Baygani_Single FLOAT, @Baygani_Net FLOAT,           
		@Box_Single FLOAT, @Box_Net FLOAT, @Automation_Web FLOAT, @Automation_Net FLOAT, @Analysis FLOAT

SELECT @UserID=ID FROM Users WHERE MarketerID=@UserID

set @result=0
SELECT  TOP 1
		@Dabir_Single=Dabir_Single,           
		@Dabir_Net=Dabir_Net,
		@Baygani_Single=Baygani_Single,
		@Baygani_Net=Baygani_Net,
		@Box_Single=Box_Single,
		@Box_Net=Box_Net,
		@Automation_Web=Automation_Web,         
		@Automation_Net=Automation_Net,
		@Analysis=Analysis
FROM PoorsantList WHERE (MYear=@MYear) AND (UserID=@UserID)




IF      @ProductId=1  SET @result=@Dabir_Net
ELSE IF @ProductId=9  SET @result=@Dabir_Single 
ELSE IF @ProductId=18 SET @result=@Baygani_Net 
ELSE IF @ProductId=3  SET @result=@Baygani_Single 
ELSE IF (@ProductId=17) OR (@ProductId=10) SET @result=@Box_Single 
ELSE IF @ProductId=2  SET @result=@Box_Net 
ELSE IF @ProductId=4   SET @result=@Automation_Net 
ELSE IF @ProductId=5   SET @result=@Automation_Web 
ELSE IF @ProductId=6   SET @result=@Analysis 

IF @result IS NULL SET @result=0

	RETURN(@result)
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCurrentStateCustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_GetCurrentStateCustomer]( @CustomerID  int)
returns  nvarchar(2000)
begin
declare @result nvarchar(2000)

set @result = ''

  
SELECT @result = VTL.[Description] +' - ' + l.[Description]
FROM  [dbo].[VWActionType_Level_Detail]  AS l 
LEFT JOIN dbo.VWActionType_Level AS VTL ON l.ParentID = VTL.ID
WHERE [dbo].[fn_GetAllStateCustomer]( @CustomerID,l.ID   )  = 1 --وضعیت جاری

if @result = '' 
SELECT @result = VTL.[Description] +' - ' + l.[Description]
FROM  [dbo].[VWActionType_Level_Detail]  AS l 
LEFT JOIN dbo.VWActionType_Level AS VTL ON l.ParentID = VTL.ID
WHERE [dbo].[fn_GetAllStateCustomer]( @CustomerID,l.ID   )  = 2 --وضعیت تمام شده

if @result <> '' 
  set @result = @result --right(@result, len(@result)-1)  
else
  set @result = 'فروش - ثبت مشتری' 
  
return(@result)   
end

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCurrentStateCustomerActionType_LevelID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_GetCurrentStateCustomerActionType_LevelID]( @CustomerID  int)
returns  INT
BEGIN
	/*
	        UPDATE dbo.Customer   
                  SET ActionType_LevelID = [dbo].[fn_GetCurrentStateCustomerActionType_LevelID](customerid)   
                  */
	
declare @result INT
 DECLARE @ATLevelID INT 
 

set @result = 0

  
SELECT @result = L.[id]
FROM  [dbo].[VWActionType_Level_Detail]  AS l 
LEFT JOIN dbo.VWActionType_Level AS VTL ON l.ParentID = VTL.ID
WHERE [dbo].[fn_GetAllStateCustomer]( @CustomerID,l.ID   )  = 1 --وضعیت جاری

if @result = 0 
SELECT @result = L.[id]
FROM  [dbo].[VWActionType_Level_Detail]  AS l 
LEFT JOIN dbo.VWActionType_Level AS VTL ON l.ParentID = VTL.ID
WHERE [dbo].[fn_GetAllStateCustomer]( @CustomerID,l.ID   )  = 2 --وضعیت تمام شده

if @result >0
  set @result = @result --right(@result, len(@result)-1)  
else
  set @result = 6
  

--set @result = 6
--set @result =  [dbo].[fn_GetAllStateCustomer]( @CustomerID  ,@ATLevelID   )

return(@result)   
end

GO
/****** Object:  UserDefinedFunction [dbo].[FN_GetCustomerProducts]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FN_GetCustomerProducts](@CustomerID INT) 
	RETURNS VARCHAR(4000)
AS
BEGIN
	DECLARE c CURSOR FOR
		SELECT p.ProductTitle
		  FROM dbo.CustomerProduct cp WITH(NOLOCK)
		  INNER JOIN dbo.Product p WITH(NOLOCK) ON cp.ProductID = p.ProductID
		WHERE CustomerID = @CustomerID
	OPEN c

	DECLARE @pTitle VARCHAR(1000)
	DECLARE @Result VARCHAR(4000)
	SET @Result = '';
	FETCH NEXT FROM c INTO @pTitle
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @Result <> ''
			SET @Result = @Result + ' , '
			
		SET @Result = @Result + @pTitle
		FETCH NEXT FROM c INTO @pTitle
	END

	CLOSE c
	DEALLOCATE c

	RETURN @Result	
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ProductByCustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_ProductByCustomerID]( @CustomerID  int)
returns  nvarchar(2000)
begin
declare @result nvarchar(2000)

set @result = ''

select @result = @result + ',' + Replace( replace(ProductTitle,'ی','ي'),'ک','ك')    
FROM   dbo.CustomerProduct WITH(NOLOCK)
INNER JOIN  dbo.Product WITH(NOLOCK) ON CustomerProduct.ProductID = Product.ProductID
WHERE  (CustomerProduct.CustomerID = @CustomerID)
order by Product.ProductID

if @result<>'' 
  set @result=right(@result,len(@result)-1)  
else
  set @result='ندارد' return(@result)   
end

GO
/****** Object:  UserDefinedFunction [dbo].[fn_ProductCategoryByCustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE function [dbo].[fn_ProductCategoryByCustomerID]( @CustomerID  int)
returns  nvarchar(2000)
begin
declare @result nvarchar(2000)

set @result = ''
select distinct @result = @result+','+ replace(ProductCategoryTitle,'ی','ي')
FROM    dbo.CustomerProduct WITH(NOLOCK)
INNER JOIN  dbo.Product WITH(NOLOCK) ON CustomerProduct.ProductID = Product.ProductID
inner join dbo.ProductCategory WITH(NOLOCK) on Product.ProductCategoryID=ProductCategory.ProductCategoryID
WHERE   (CustomerProduct.CustomerID =@CustomerID) 

if @result<>'' 
  set @result=right(@result,len(@result)-1)  
else
  set @result='ندارد' return(@result)   
end













GO
/****** Object:  UserDefinedFunction [dbo].[fn_ProductCategoryIDByCustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE function [dbo].[fn_ProductCategoryIDByCustomerID]( @CustomerID  int)
returns  nvarchar(2000)
begin
declare @result nvarchar(2000)
set @result=''
select distinct @result=@result+','+ cast(ProductCategoryID as char(1))
FROM   dbo.CustomerProduct WITH(NOLOCK)
INNER JOIN  dbo.Product WITH(NOLOCK) ON CustomerProduct.ProductID = Product.ProductID 
WHERE     (CustomerProduct.CustomerID = @CustomerID) 

if @result<>'' 
  set @result=right(@result,len(@result)-1)  
else
  set @result='0' return(@result)   
end














GO
/****** Object:  UserDefinedFunction [dbo].[fn_ProductCommisionPercent]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE function [dbo].[fn_ProductCommisionPercent](@ProductId INT,@ContractDate NCHAR(10))
returns  tinyint
begin
declare @result TINYINT

		
set @result=0

set @result = 
(SELECT top 1 CommisionPercent FROM CommisionPercent WHERE productId = @ProductId AND  Effectivedate <= @ContractDate
ORDER BY Effectivedate DESC)

IF @result IS NULL
select top 1 @result =  CommisionPercent
FROM   dbo.Product WITH(NOLOCK) WHERE ProductID = @ProductId
		order by Product.ProductID

 return(@result)   
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ProductIdByCustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------
CREATE function [dbo].[fn_ProductIdByCustomerID]( @CustomerID  int)
returns  nvarchar(2000)
BEGIN
	declare @result nvarchar(2000)

	set @result=''

	select @result=@result+'|'+ cast(Product.ProductId AS NVARCHAR) 
	FROM     dbo.CustomerProduct WITH(NOLOCK)
	INNER JOIN  dbo.Product WITH(NOLOCK) ON CustomerProduct.ProductID = Product.ProductID
	WHERE     (CustomerProduct.CustomerID =@CustomerID)
	order by Product.ProductID 
	
	SET @result=LTRIM(RTRIM(@result))
	SET @result=SUBSTRING(@result,2,LEN(@result))

	RETURN(@result)   
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ProductPercentByCustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE function [dbo].[fn_ProductPercentByCustomerID]( @CustomerID  int)
returns  tinyint
begin
declare @result tinyint
set @result=0
select top 1 @result=  CommisionPercent
FROM    dbo.CustomerProduct WITH(NOLOCK)
INNER JOIN  dbo.Product WITH(NOLOCK) ON CustomerProduct.ProductID = Product.ProductID
WHERE     (CustomerProduct.CustomerID =@CustomerID)
order by Product.ProductID


 return(@result)   
end














GO
/****** Object:  UserDefinedFunction [dbo].[Is_ParentId]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[Is_ValidShamsiDate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[IsValidAccountId]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
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
                     dbo.TotalExist(Accountid,9)>(ISNULL(blockedprice,0)+@Price)And  
                     ISNULL(BlockedPrice,0)<>0                                                          ) -- نبايد بدهکار هم باشد   
    
      Set @IsValidAccountId=1    
    Else    
      Set @IsValidAccountId=0    
END
-- 	   IF EXISTS( SELECT AccountID    
-- 	              FROM   Account    
-- 	              Where  AccountID=@AccountID   And      
-- 	                     ISNULL(BlockedPrice,0)=0                                                          )  -- نبايد بدهکار هم باشد    
-- 	    
-- 	      Set @IsValidAccountId=1    
-- 	    Else    
-- 	      Set @IsValidAccountId=0    
    
Return(@IsValidAccountId)    
End    
GO
/****** Object:  UserDefinedFunction [dbo].[MiladiLeapyear]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[Number_Of_Week]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create FUNCTION [dbo].[Number_Of_Week] (@D datetime)  
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
/****** Object:  UserDefinedFunction [dbo].[PresentTime]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










	CREATE function  [dbo].[PresentTime]
(@userID int,@FromDate char(10),@ToDate char(10),@now char(5))
 returns int

begin
 declare @sum int


 select @sum=sum(dbo.usefulltime(Workdate,EnterTime,isnull(ExitTime,EnterTime)))
 from timesheet
 where userid=@userID and WorkDate between @FromDate  and @ToDate  and effect=1
set @sum=isnull(@sum,0)
 return(@sum)
end











GO
/****** Object:  UserDefinedFunction [dbo].[PresentTime2]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








	CREATE function  [dbo].[PresentTime2]
(@MarketerID int,@FromDate char(10),@ToDate char(10),@now char(5))
 returns int

begin
 declare @sum int,@userID int
select @userid=id from users where marketerid=@marketerid  

 return(dbo.PresentTime(@userID ,@FromDate ,@ToDate,@now ))
end







GO
/****** Object:  UserDefinedFunction [dbo].[Shamsi]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Shamsi](@miladiDate DateTime)
returns  char(10) 
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
SET @miladiDate=@miladiDate-CONVERT(char,@miladiDate,114)

SET @ShiftDays=466699 +2
SET @OneYear= 365.24199


SET @SYear = 0
SET @SMonth = 0
SET @SDay = 0
SET @AllDays = CAst(@miladiDate as Real)

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
/****** Object:  UserDefinedFunction [dbo].[ShamsiDateDiff]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOf]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayOfWeek]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiDayPerMonth]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[ShamsiDayPerMonth](@y int,@m int) RETURNS  INT 
AS BEGIN
 return(case when @m<=6 then 31 when @m>6 and @m<>12 then 30 else 29+dbo.ShamsiLeapYear(@y) end)
END


 


GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiEnCodeDate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiIncDate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiInvertForWord]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiLeapYear]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiMonthOf]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiToInt]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiToMiladi]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
      --SET @TmpDateStr = dbo.ReversDate(@DateStr)
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
/****** Object:  UserDefinedFunction [dbo].[ShamsiYearOf]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[SumBalance]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[timeDiff]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  FUNCTION [dbo].[timeDiff](@enterTime char(5),@exitTime char(5))
RETURNS int AS  
BEGIN 
if @enterTime is null or @exitTime is null return(0)
declare @delay int,@extra int
set @delay=0
set @extra=0

if @entertime<='08:15' 
  set @entertime='08:00'
else
  set @delay =datediff(mi,'08:00',@entertime)


/*
if @exittime>'16:00'
if @exittime between '16:46' and '17:15'  
  set @exittime='16:00'
else
  set @extra =floor(datediff(mi,'17:00',@exittime)*0.4)

if  @entertime>=@exittime return(0)
*/

if @exittime>'16:45'
if @exittime between '16:46' and '17:15'  
  set @exittime='16:45'
else
  set @extra =floor(datediff(mi,'17:00',@exittime)*0.4)

if  @entertime>=@exittime return(0)


return(datediff(mi,@entertime,@exittime)-@delay+@extra-datediff(mi,'08:00','16:45'))

END
















GO
/****** Object:  UserDefinedFunction [dbo].[Today]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  UserDefinedFunction [dbo].[usefulltime]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














CREATE FUNCTION [dbo].[usefulltime](@date char(10),@enterTime char(5),@exitTime char(5))
RETURNS int AS  
BEGIN 

if dbo.dayOfWeek(@date)=6  return(0)

if @entertime<='08:15' set @entertime='08:15'

if dbo.dayOfweek(@date)=5 
 if @exittime  >'13:00' set @exittime='13:00' 

if @exittime  >'18:00' set @exittime='18:00' 
if  @entertime>=@exittime return(0)


if @exittime>'18:00' set @exittime='18:00' 
if dbo.dayOfweek(@date)=5  
 if @exittime>'13:30' set @exittime='13:30' 


return(datediff(mi,@entertime,@exittime))

END












GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a](
	[aa] [float] NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[cit] [float] NULL,
	[F5] [float] NULL,
	[2] [float] NULL,
	[39] [float] NULL,
	[F8] [nvarchar](255) NULL,
	[1392] [float] NULL,
	[F10] [nvarchar](255) NULL,
	[code] [float] NULL,
	[sait] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[addres] [nvarchar](255) NULL,
	[E,I] [nvarchar](255) NULL,
	[واردات و صادرات کلیه اقلام] [nvarchar](255) NULL,
	[t1] [nvarchar](255) NULL,
	[t2] [nvarchar](255) NULL,
	[KAEM] [nvarchar](255) NULL,
	[person] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Access]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Access](
	[AccessID] [tinyint] NOT NULL,
	[AccessTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accesses]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesses](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[PositionInCrm] [nvarchar](50) NULL,
	[TypeUser] [int] NULL,
 CONSTRAINT [PK_Accesses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessObject]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessObject](
	[AccessObjectId] [int] NOT NULL,
	[AccessId] [tinyint] NOT NULL,
	[ObjectName] [varchar](50) NOT NULL,
	[Access] [bit] NOT NULL,
 CONSTRAINT [PK_Access_object] PRIMARY KEY CLUSTERED 
(
	[AccessObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionProType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionProType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](500) NULL,
	[ProductId] [int] NULL,
	[UserTypeId] [int] NULL,
 CONSTRAINT [PK_ActionProType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actions](
	[ActionName] [nvarchar](50) NOT NULL,
	[FormID] [tinyint] NOT NULL,
	[Title] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionsAccess]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionsAccess](
	[AccessID] [tinyint] NOT NULL,
	[ActionName] [nvarchar](50) NOT NULL,
	[FormID] [tinyint] NOT NULL,
	[HasAccess] [bit] NOT NULL,
 CONSTRAINT [PK_ActionsAccess] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC,
	[ActionName] ASC,
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionType](
	[ActionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ActionTypeTitle] [nvarchar](50) NOT NULL,
	[UserTypeId] [int] NULL,
	[AttacheMandatory] [bit] NULL,
	[SortOrder] [int] NULL,
	[Active] [bit] NULL,
	[SortOrderInSale] [int] NULL,
	[SortOrderInOfficial] [int] NULL,
	[SortOrderInSupport] [int] NULL,
	[SortOrderInProduction] [int] NULL,
	[SortOrderInAcc] [int] NULL,
 CONSTRAINT [PK_ActionType] PRIMARY KEY CLUSTERED 
(
	[ActionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionType_Level]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionType_Level](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[ChildID] [int] NULL,
	[OrderId] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Level] [int] NULL,
	[Type] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityUser_Log]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityUser_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[Date] [datetime] NULL,
	[FormName] [nchar](50) NULL,
	[Activity] [nchar](10) NULL,
	[ComputerName] [nvarchar](50) NULL,
	[IPAddress] [nvarchar](50) NULL,
	[CustomerID] [int] NULL,
	[ContractID] [int] NULL,
	[FollowupID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARM_CUSTOMER_INFO]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARM_CUSTOMER_INFO](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMER_CODE] [varchar](200) NULL,
	[CUSTOMER_NAME] [varchar](200) NULL,
	[SOFTWARE_TYPE] [varchar](50) NULL,
	[LOCK_SERIAL_NUMBER] [varbinary](50) NULL,
	[LOCK_READKEY] [varchar](50) NULL,
	[LOCK_WRITEKEY] [varchar](50) NULL,
	[DATE_01] [varchar](10) NULL,
	[DATE_02] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARM_PASSWORD]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARM_PASSWORD](
	[PASSWORD] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArtGroup]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArtGroup](
	[ArtGroup_ID] [dbo].[DTID] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[DTName] NOT NULL,
	[Type] [dbo].[DTSmallInteger] NOT NULL,
	[Store_Ref] [dbo].[DTID] NULL,
	[ArtGroup_Ref] [dbo].[DTID] NULL,
	[IsService] [dbo].[DTFlag] NULL,
 CONSTRAINT [PK_ArtGroup] PRIMARY KEY CLUSTERED 
(
	[ArtGroup_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Article_ID] [dbo].[DTID] IDENTITY(1,1) NOT NULL,
	[Store_Ref] [dbo].[DTID] NULL,
	[ArtGroup_Ref1] [dbo].[DTID] NOT NULL,
	[ArtGroup_Ref2] [dbo].[DTID] NOT NULL,
	[Code] [dbo].[DTInteger] NOT NULL,
	[Name] [dbo].[DTName] NOT NULL,
	[Unit_Ref] [dbo].[DTID] NULL,
	[MaxBuy] [dbo].[DTInteger] NULL,
	[SalePrice] [dbo].[DTMoney] NULL,
	[BuyPrice] [dbo].[DTMoney] NULL,
	[EndBuyPrice] [dbo].[DTMoney] NULL,
	[Exist] [dbo].[DTInteger] NULL,
	[AvgPrice] [dbo].[DTMoney] NULL,
	[Country] [dbo].[DTName] NULL,
	[Attribute1] [dbo].[DTName] NULL,
	[Attribute2] [dbo].[DTName] NULL,
	[Model] [dbo].[DTName] NULL,
	[Tozihat] [dbo].[DTSmallText] NULL,
	[IsService] [dbo].[DTFlag] NULL,
	[OldExist1] [dbo].[DTInteger] NULL,
	[OldExist2] [dbo].[DTInteger] NULL,
	[OldEndBuyPrice1] [dbo].[DTMoney] NULL,
	[OldEndBuyPrice2] [dbo].[DTMoney] NULL,
	[Barcode] [dbo].[DTCodeStr] NULL,
	[TaxPayerID] [nchar](20) NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[Article_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTableLinkedID] [int] NOT NULL,
	[DataDescription] [nvarchar](50) NULL,
	[Data] [image] NOT NULL,
	[ExtentionID] [tinyint] NULL,
 CONSTRAINT [PK_AccountData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalendarHoliday]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarHoliday](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [char](4) NULL,
	[Mounth] [char](2) NULL,
	[Day] [char](2) NULL,
	[HolidayDate] [nchar](10) NULL,
	[Description] [nchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CancelReason]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CancelReason](
	[CancelReasonID] [tinyint] NOT NULL,
	[CancelReasonTitle] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_CancelReason] PRIMARY KEY CLUSTERED 
(
	[CancelReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseFiles]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseFiles](
	[CaseFilesID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[Data] [image] NULL,
	[FileType] [nchar](10) NULL,
	[CaseId] [int] NOT NULL,
 CONSTRAINT [PK_CaseFiles] PRIMARY KEY CLUSTERED 
(
	[CaseFilesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseOriginal]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseOriginal](
	[CaseOriginalId] [tinyint] IDENTITY(1,1) NOT NULL,
	[CaseOriginalTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CaseOriginal] PRIMARY KEY CLUSTERED 
(
	[CaseOriginalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasePriority]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasePriority](
	[CasePriorityID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CasePriorityTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CasePriority] PRIMARY KEY CLUSTERED 
(
	[CasePriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cases](
	[CaseID] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseTitle] [nvarchar](250) NOT NULL,
	[Comment] [nvarchar](4000) NULL,
	[ProductId] [int] NULL,
	[ProductVersion] [int] NULL,
	[CaseTypeID] [tinyint] NULL,
	[CasePriorityId] [tinyint] NULL,
	[CustomerID] [int] NULL,
	[CaseOrigiranlId] [tinyint] NULL,
	[RegisterDate] [nchar](10) NULL,
	[CaseEstimatedDate] [nchar](10) NULL,
	[RegisterUserID] [int] NULL,
	[Completed] [bit] NOT NULL,
	[CompleteDate] [nchar](10) NULL,
	[CompleteComment] [nvarchar](4000) NULL,
	[IsBug] [bit] NULL,
	[CheckUserID] [int] NULL,
	[FollowUpID] [int] NULL,
	[IsActive] [bit] NULL,
	[CurrentDate] [datetime] NULL,
 CONSTRAINT [PK_Cases] PRIMARY KEY CLUSTERED 
(
	[CaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseType](
	[CaseTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CaseTypeTitle] [nvarchar](50) NOT NULL,
	[ManagerUserID] [int] NULL,
 CONSTRAINT [PK_CaseType] PRIMARY KEY CLUSTERED 
(
	[CaseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTitle] [varchar](1000) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[Cheque_ID] [dbo].[DTID] IDENTITY(1,1) NOT NULL,
	[AcountNumber] [dbo].[DTInteger] NOT NULL,
	[AcountName] [dbo].[DTName] NULL,
	[Number] [dbo].[DTName] NOT NULL,
	[ExportDate] [dbo].[DTDate] NOT NULL,
	[DueDate] [dbo].[DTDate] NULL,
	[ED_Bank_Ref] [dbo].[DTInteger] NOT NULL,
	[BranchName] [dbo].[DTName] NULL,
	[Price] [dbo].[DTMoney] NULL,
	[Bearer] [dbo].[DTName] NULL,
	[Endorse] [dbo].[DTInteger] NULL,
	[Type] [dbo].[DTInteger] NULL,
	[Status] [dbo].[DTInteger] NULL,
	[Receiver] [dbo].[DTName] NULL,
	[Tozihat] [dbo].[DTSmallText] NULL,
	[Factor_Ref] [dbo].[DTID] NULL,
	[Users_Ref] [dbo].[DTID] NOT NULL,
 CONSTRAINT [PK_Check] PRIMARY KEY CLUSTERED 
(
	[Cheque_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CItyId] [int] IDENTITY(1,1) NOT NULL,
	[CityTitle] [nvarchar](50) NOT NULL,
	[StateId] [int] NOT NULL,
	[StateNum] [varchar](1) NULL,
	[CountyTitle] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommisionPercent]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommisionPercent](
	[CommisionPercentID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[CommisionPercent] [tinyint] NOT NULL,
	[Effectivedate] [nchar](10) NULL,
 CONSTRAINT [PK_CommisionPercent] PRIMARY KEY CLUSTERED 
(
	[CommisionPercentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compagin]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compagin](
	[CompaginID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CompaginTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Compagin] PRIMARY KEY CLUSTERED 
(
	[CompaginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanySizes]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanySizes](
	[CompanySizeId] [int] IDENTITY(1,1) NOT NULL,
	[CompanySizeTitle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CompanySizes] PRIMARY KEY CLUSTERED 
(
	[CompanySizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyStructures]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyStructures](
	[CompanyStructureId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyStructureTitle] [varchar](250) NOT NULL,
 CONSTRAINT [PK_CompanyStructures] PRIMARY KEY CLUSTERED 
(
	[CompanyStructureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTypes]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTypes](
	[CompanyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyTypeTitle] [varchar](200) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[BeginDate] [char](10) NOT NULL,
	[EndDate] [char](10) NOT NULL,
	[Amount] [float] NOT NULL,
	[Attachment] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
	[MarketerID] [int] NOT NULL,
	[ContractTypeID] [tinyint] NOT NULL,
	[ProductID] [tinyint] NULL,
	[ContractSubTypeID] [tinyint] NULL,
	[ContractText] [image] NULL,
	[TaxPercentage] [float] NULL,
	[GoodJobPercentage] [float] NULL,
	[ByCashAmount] [float] NULL,
	[ByCashFishNo] [float] NULL,
	[InsuranceAccount] [float] NULL,
	[TaxFish] [image] NULL,
	[SignUpDate] [varchar](10) NULL,
	[ContractExcell] [image] NULL,
	[ComputerName] [nvarchar](50) NULL,
	[IPAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractCheque]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractCheque](
	[ContractchequeID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NOT NULL,
	[ChequeAmount] [float] NOT NULL,
	[ChequeNo] [nvarchar](50) NOT NULL,
	[Date] [char](10) NOT NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[AccountName] [nvarchar](50) NULL,
	[BankName] [nvarchar](30) NULL,
	[Comment] [nvarchar](150) NULL,
	[ChequeImage] [image] NULL,
	[FileType] [nvarchar](6) NULL,
 CONSTRAINT [PK_ContractCheque] PRIMARY KEY CLUSTERED 
(
	[ContractchequeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractGuarantee]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractGuarantee](
	[ContractGuaranteeID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NOT NULL,
	[Sake] [tinyint] NOT NULL,
	[GuaranteeTypeID] [tinyint] NOT NULL,
	[StartDate] [nchar](10) NOT NULL,
	[EndDate] [nchar](10) NOT NULL,
	[Amount] [float] NOT NULL,
	[GuaranteeImage] [image] NULL,
	[FileType] [nvarchar](6) NULL,
 CONSTRAINT [PK_ContractGuarantee] PRIMARY KEY CLUSTERED 
(
	[ContractGuaranteeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractPayByCash]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractPayByCash](
	[ContractPayByCashID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [char](10) NOT NULL,
	[FishNo] [nvarchar](50) NULL,
	[AccountNo] [nvarchar](40) NULL,
	[BankName] [nvarchar](50) NULL,
	[Comment] [nvarchar](150) NULL,
	[FishImage] [image] NULL,
	[FileType] [nvarchar](6) NULL,
 CONSTRAINT [PK_ContractPayByCash] PRIMARY KEY CLUSTERED 
(
	[ContractPayByCashID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractSubType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractSubType](
	[ContractSubTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ContractSubTypeCode] [nvarchar](50) NULL,
	[ContractTypeID] [tinyint] NOT NULL,
	[ContractSubTypeTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ContractTypeSub] PRIMARY KEY CLUSTERED 
(
	[ContractSubTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractType](
	[ContractTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ContractTypeTitle] [nvarchar](50) NOT NULL,
	[ContractTypeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContractType] PRIMARY KEY CLUSTERED 
(
	[ContractTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNo] [varchar](50) NULL,
	[PersonTitle] [nvarchar](200) NULL,
	[Address] [nvarchar](455) NULL,
	[Phone] [nvarchar](200) NULL,
	[Notes] [varchar](4000) NULL,
	[CompanyName] [nvarchar](400) NULL,
	[CityId] [smallint] NULL,
	[GroupId] [int] NULL,
	[MarketerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SenderType] [tinyint] NULL,
	[Priority] [int] NULL,
	[Treater] [nvarchar](50) NULL,
	[CompaginID] [tinyint] NULL,
	[PostalCode] [nvarchar](20) NULL,
	[EmailAddress] [nvarchar](350) NULL,
	[WorkPhone1] [nvarchar](230) NULL,
	[Website] [varchar](200) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[FaxNumber] [nvarchar](310) NULL,
	[competitiveNote] [nvarchar](255) NULL,
	[Insertdate] [char](10) NULL,
	[LastUpdate] [char](10) NULL,
	[CustomerStatusID] [tinyint] NOT NULL,
	[CancelReasonID] [tinyint] NULL,
	[CancelComment] [nvarchar](250) NULL,
	[CancelDate] [char](10) NULL,
	[UserTableLinkedID] [int] NULL,
	[FreeField01] [nvarchar](100) NULL,
	[FreeField02] [nvarchar](100) NULL,
	[FreeField03] [nvarchar](100) NULL,
	[FreeField04] [nvarchar](100) NULL,
	[FreeField05] [nvarchar](100) NULL,
	[FreeField06] [nvarchar](100) NULL,
	[FreeField07] [nvarchar](100) NULL,
	[FreeField08] [nvarchar](100) NULL,
	[FreeField09] [nvarchar](100) NULL,
	[FreeField10] [nvarchar](100) NULL,
	[FreeField11] [nvarchar](100) NULL,
	[FreeField12] [nvarchar](100) NULL,
	[FreeField13] [nvarchar](100) NULL,
	[FreeField14] [nvarchar](100) NULL,
	[FreeField15] [nvarchar](100) NULL,
	[FreeField16] [nvarchar](100) NULL,
	[FreeField17] [nvarchar](100) NULL,
	[FreeField18] [nvarchar](100) NULL,
	[StateID] [tinyint] NULL,
	[InnerPhone] [nvarchar](50) NULL,
	[CustomerBirthDate] [varchar](50) NULL,
	[UserAccessMode] [int] NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[CompanyTypeId] [int] NULL,
	[CompanySizeId] [int] NULL,
	[FreeField19] [varchar](1000) NULL,
	[FreeField20] [varchar](1000) NULL,
	[FreeField21] [varchar](1000) NULL,
	[FreeField22] [varchar](1000) NULL,
	[FreeField23] [varchar](1000) NULL,
	[FreeField24] [varchar](1000) NULL,
	[FreeField25] [varchar](1000) NULL,
	[FreeField26] [varchar](1000) NULL,
	[FreeField27] [varchar](1000) NULL,
	[FreeField28] [varchar](1000) NULL,
	[CompanyStructureId] [int] NULL,
	[Organization] [nvarchar](1000) NULL,
	[FinishedContractProducts] [nvarchar](2000) NULL,
	[ProductsSTR] [nvarchar](2000) NULL,
	[ProductsIdSTR] [nvarchar](2000) NULL,
	[CustomerMiscalculationDesc] [nvarchar](200) NULL,
	[CustomerMiscalculation] [bit] NOT NULL,
	[CountMeet] [int] NULL,
	[CountCancelMeet] [int] NULL,
	[CountHumanInterface] [int] NULL,
	[CustomerSuccessChance] [tinyint] NULL,
	[ActionType_LevelID] [int] NULL,
	[Priceestimate] [float] NULL,
	[ComputerName] [nvarchar](50) NULL,
	[IPAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerLocks]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerLocks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Serial_ID] [int] NULL,
	[WriteDate] [varchar](50) NULL,
	[ExpireDate] [varchar](50) NULL,
 CONSTRAINT [PK_CustomerLocks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerProduct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerProduct](
	[CustomerProductID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [tinyint] NOT NULL,
	[ContractFinished] [tinyint] NULL,
	[DateUpDateFinishedContractProducts] [nvarchar](10) NULL,
 CONSTRAINT [PK_journalAddress] PRIMARY KEY CLUSTERED 
(
	[CustomerProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerStatus]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatus](
	[CustomerStatusID] [tinyint] NOT NULL,
	[CustomerStatusTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerStatus] PRIMARY KEY CLUSTERED 
(
	[CustomerStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerStatusReport]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatusReport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerStatusID] [int] NULL,
	[CustomerStatusTitle] [varchar](1000) NULL,
	[One] [int] NULL,
	[Two] [int] NULL,
	[Three] [int] NULL,
	[Four] [int] NULL,
	[Five] [int] NULL,
	[Six] [int] NULL,
	[Seven] [int] NULL,
	[Eight] [int] NULL,
	[Nine] [int] NULL,
	[Ten] [int] NULL,
	[Eleven] [int] NULL,
	[Twelve] [int] NULL,
 CONSTRAINT [PK_CustomerStatusReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dana]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dana](
	[custid] [nvarchar](255) NULL,
	[companyname] [nvarchar](255) NULL,
	[product] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[Data_ID] [dbo].[DTID] NOT NULL,
	[En_DataName] [dbo].[DTName] NULL,
	[Fa_DataName] [dbo].[DTName] NOT NULL,
	[DataTag] [dbo].[DTInteger] NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[Data_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Data] UNIQUE NONCLUSTERED 
(
	[En_DataName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoneStatus]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnterData]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnterData](
	[EnterData_ID] [dbo].[DTID] IDENTITY(1,1) NOT NULL,
	[EDCode] [dbo].[DTInteger] NULL,
	[EDName] [dbo].[DTName] NULL,
	[EDDesc] [dbo].[DTSmallText] NULL,
	[EDPrice1] [dbo].[DTMoney] NULL,
	[EDPrice2] [dbo].[DTMoney] NULL,
	[Data_Ref] [dbo].[DTID] NOT NULL,
	[EDFloat1] [dbo].[DTFloat] NULL,
	[EDFloat2] [dbo].[DTFloat] NULL,
	[EDStr1] [dbo].[DTSmallText] NULL,
	[EDStr2] [dbo].[DTSmallText] NULL,
	[Users_Ref] [dbo].[DTID] NULL,
 CONSTRAINT [PK_EnterData] PRIMARY KEY CLUSTERED 
(
	[EnterData_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorMessage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorMessage](
	[Errorid] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorMessage] [nvarchar](255) NULL,
	[ErrorDate] [nvarchar](10) NULL,
	[UserCode] [int] NULL,
	[FarsiMessage] [nvarchar](255) NULL,
	[ShowMessage] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[f_followup]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[f_followup](
	[FollowUPID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ActionTypeID] [int] NOT NULL,
	[DoneStatusID] [tinyint] NOT NULL,
	[MarketerID] [int] NOT NULL,
	[Comment] [nvarchar](1000) NULL,
	[ToDoDate] [char](10) NULL,
	[DoneDate] [char](10) NULL,
	[Attachment1] [nvarchar](255) NULL,
	[Attachment2] [nvarchar](255) NULL,
	[ToDoTime] [char](5) NULL,
	[SuccessChance] [tinyint] NOT NULL,
	[DoneComment] [nvarchar](1000) NULL,
	[insertdate] [datetime] NULL,
	[Lastupdate] [datetime] NULL,
	[UserTableLinkedID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacDetails]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacDetails](
	[FacDetails_ID] [dbo].[DTInteger] IDENTITY(1,1) NOT NULL,
	[Factor_Ref] [dbo].[DTID] NULL,
	[Article_Ref] [dbo].[DTID] NOT NULL,
	[Unit_Ref] [dbo].[DTID] NULL,
	[UnitPrice] [dbo].[DTMoney] NOT NULL,
	[ArtCount] [dbo].[DTInteger] NOT NULL,
	[Tozihat] [dbo].[DTSmallText] NULL,
	[DiscountLine] [dbo].[DTMoney] NULL,
	[TotalPriceLine] [dbo].[DTMoney] NULL,
	[AddedValueLine] [dbo].[DTMoney] NULL,
	[TaxPayerID] [nchar](20) NULL,
 CONSTRAINT [PK_FacDetails] PRIMARY KEY CLUSTERED 
(
	[FacDetails_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factor]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factor](
	[Factor_ID] [dbo].[DTID] IDENTITY(1,1) NOT NULL,
	[Customer_Ref] [dbo].[DTID] NOT NULL,
	[FacDate] [dbo].[DTDate] NOT NULL,
	[FacTime] [dbo].[DTTime] NOT NULL,
	[RegisterDate] [dbo].[DTDate] NOT NULL,
	[Number] [dbo].[DTInteger] NOT NULL,
	[Type] [dbo].[DTSmallName] NOT NULL,
	[FactorePrice] [dbo].[DTMoney] NOT NULL,
	[ReducePrice] [dbo].[DTMoney] NOT NULL,
	[CashPrice] [dbo].[DTMoney] NOT NULL,
	[CheckPrice] [dbo].[DTMoney] NOT NULL,
	[Users_Ref] [dbo].[DTID] NOT NULL,
	[CreditPrice] [dbo].[DTMoney] NOT NULL,
	[Tozihat] [dbo].[DTSmallText] NULL,
	[Liquidate] [dbo].[DTFlag] NULL,
	[ValueAdded] [dbo].[DTMoney] NULL,
	[TotalFactorPrice] [dbo].[DTMoney] NOT NULL,
	[Discount] [dbo].[DTFloat] NULL,
	[IsNonCash] [bit] NOT NULL,
	[RelatedFactor_ID] [int] NULL,
	[RelatedNumber] [int] NULL,
 CONSTRAINT [PK_Factor] PRIMARY KEY CLUSTERED 
(
	[Factor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactorAddress]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Factor_ID] [int] NULL,
	[Address] [nvarchar](455) NULL,
	[Phone] [nvarchar](200) NULL,
	[CityId] [smallint] NULL,
	[StateID] [tinyint] NULL,
	[PostalCode] [nvarchar](20) NULL,
	[NationalId] [nvarchar](100) NULL,
	[EconomicCode] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUp]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUp](
	[FollowUPID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ActionTypeID] [int] NOT NULL,
	[DoneStatusID] [tinyint] NOT NULL,
	[MarketerID] [int] NOT NULL,
	[Comment] [nvarchar](1000) NULL,
	[ToDoDate] [char](10) NULL,
	[DoneDate] [char](10) NULL,
	[Attachment1] [nvarchar](255) NULL,
	[Attachment2] [nvarchar](255) NULL,
	[ToDoTime] [char](5) NULL,
	[SuccessChance] [tinyint] NOT NULL,
	[DoneComment] [nvarchar](1000) NULL,
	[insertdate] [datetime] NULL,
	[Lastupdate] [datetime] NULL,
	[UserTableLinkedID] [int] NULL,
	[WordAttachment] [image] NULL,
	[PicAttachment] [image] NULL,
	[ParentFollowUpID] [int] NULL,
	[StatusSaveDate] [nvarchar](10) NULL,
	[FollowUpInsertDate] [nvarchar](10) NULL,
	[ExcellAttachment] [image] NULL,
	[PdfAttachment] [image] NULL,
	[IsFactor] [bit] NULL,
	[IsPreFactor] [bit] NULL,
	[FactorId] [int] NULL,
	[TaskID] [int] NULL,
	[PicAttachmentType] [char](5) NULL,
	[IsAuto] [bit] NULL,
	[FTPSpace] [bit] NULL,
	[ParentMarketerID] [int] NULL,
	[ComputerName] [nvarchar](50) NULL,
	[IPAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_FollowUp] PRIMARY KEY CLUSTERED 
(
	[FollowUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpAssessment]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUpAssessment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[logDate] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[FollowUpId] [int] NOT NULL,
	[ValuatorUserID] [int] NOT NULL,
	[ExpertUserID] [int] NOT NULL,
	[AssessmenScore1] [int] NULL,
	[AssessmenScore2] [int] NULL,
	[AssessmenScore3] [int] NULL,
	[AssessmenScore4] [int] NULL,
	[AssessmenScore5] [int] NULL,
	[AssessmenScore6] [int] NULL,
	[AssessmenScore7] [int] NULL,
	[AssessmenScore8] [int] NULL,
	[AverageScore] [int] NULL,
	[FollowUpInPerson] [int] NULL,
	[UserId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpInPerson]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUpInPerson](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[logDate] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[FollowUpId] [int] NOT NULL,
	[DateInPerson] [nvarchar](10) NULL,
	[TimeInperson] [nvarchar](5) NULL,
	[PeriodTimeInperson] [nvarchar](5) NULL,
	[LocationInperson] [nvarchar](200) NULL,
	[ExpertId] [int] NOT NULL,
	[DescriptionService] [nvarchar](1000) NULL,
	[DescriptionPersionInMetting] [nvarchar](1000) NULL,
	[ValuatorUserID] [int] NULL,
	[PdfAttachment] [image] NULL,
	[FollowUpNeed] [bit] NULL,
	[FollowUpDescription] [nvarchar](1000) NULL,
	[UserId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FTPServers]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FTPServers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServerAddress] [varchar](100) NULL,
	[UserName] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
 CONSTRAINT [PK_FTPServers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gh]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gh](
	[c] [float] NULL,
	[o] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupTitle] [nvarchar](50) NOT NULL,
	[GroupNo] [varchar](50) NOT NULL,
	[effect] [tinyint] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuaranteeType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuaranteeType](
	[GuaranteeTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GuaranteeType] PRIMARY KEY CLUSTERED 
(
	[GuaranteeTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hollyDateS]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hollyDateS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](10) NULL,
	[Title] [varchar](50) NULL,
	[Is_hollydate] [bit] NULL,
	[WeekNumber] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_Processes]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Processes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](1000) NULL,
	[Type] [nvarchar](10) NULL,
	[currentDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marketer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marketer](
	[MarketerID] [int] IDENTITY(1,1) NOT NULL,
	[MarketerNo] [varchar](50) NOT NULL,
	[MarketerTitle] [nvarchar](50) NOT NULL,
	[Tag] [bit] NOT NULL,
	[PPercent] [tinyint] NOT NULL,
	[OrgID] [int] NULL,
	[IsActive_] [bit] NULL,
	[MarketerIsDone] [bit] NULL,
	[OrderByID] [int] NULL,
 CONSTRAINT [PK_Marketer] PRIMARY KEY CLUSTERED 
(
	[MarketerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaMessage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](3000) NULL,
	[Description] [nvarchar](500) NULL,
	[Type] [int] NULL,
	[Media] [nvarchar](20) NULL,
	[CurrentDate] [datetime] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[IsSend] [bit] NULL,
	[TrySend] [int] NULL,
	[ResultSend] [bit] NULL,
	[CustomerId] [int] NULL,
	[SenderUserId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InserteadUserId] [int] NULL,
	[CurrentDate] [datetime] NULL,
	[MessageType] [int] NULL,
	[Subject] [nvarchar](1000) NULL,
	[Description] [nvarchar](4000) NULL,
	[UserID] [int] NULL,
	[IsRead] [bit] NULL,
	[ReadDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[ExpireDateShow] [nchar](10) NULL,
	[CustomerId] [int] NULL,
	[FollowUpId] [int] NULL,
	[LevelMessageId] [int] NULL,
	[MaxLevelMessageId] [int] NULL,
	[IsAuto] [bit] NULL,
	[icon] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mostafa]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mostafa](
	[CustomerID] [int] NOT NULL,
	[CustomerNo] [varchar](50) NULL,
	[مدیریت] [nvarchar](100) NULL,
	[AADDRESS] [nvarchar](4000) NULL,
	[Phone] [nvarchar](100) NULL,
	[Notes] [varchar](8000) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CityID] [smallint] NULL,
	[CityTitle] [nvarchar](50) NULL,
	[GroupID] [int] NULL,
	[GroupTitle] [nvarchar](50) NULL,
	[MarketerID] [int] NOT NULL,
	[MarketerTitle] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[SenderType] [tinyint] NULL,
	[Priority] [int] NULL,
	[طرف مکاتبه] [nvarchar](50) NULL,
	[CompaginID] [tinyint] NULL,
	[CompaginTitle] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[WorkPhone1] [nvarchar](30) NULL,
	[Website] [varchar](100) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[FaxNumber] [nvarchar](30) NULL,
	[رقبا] [nvarchar](4000) NULL,
	[Insertdate] [char](10) NULL,
	[LastUpdate] [char](10) NULL,
	[CancelReasonID] [tinyint] NULL,
	[CancelComment] [nvarchar](4000) NULL,
	[CancelDate] [char](10) NULL,
	[latestFollowup] [char](10) NULL,
	[CustomerStatusID] [tinyint] NOT NULL,
	[CustomerStatusTitle] [nvarchar](50) NULL,
	[UserTableLinkedID] [int] NULL,
	[nextFollowup] [char](10) NULL,
	[کد اقتصادي :] [nvarchar](100) NULL,
	[شناسه ملي : ] [nvarchar](100) NULL,
	[طرف قرار داد :] [nvarchar](100) NULL,
	[ورژن نرم افزار :] [nvarchar](100) NULL,
	[نوع SQL:] [nvarchar](100) NULL,
	[IP Server:] [nvarchar](100) NULL,
	[نسخه مورد استفاده:] [nvarchar](100) NULL,
	[IP Static:] [nvarchar](100) NULL,
	[سريال قفل:] [nvarchar](100) NULL,
	[کد ملي :] [nvarchar](100) NULL,
	[شماره ثبت و تاريخ ثبت :] [nvarchar](100) NULL,
	[First Aid :] [nvarchar](100) NULL,
	[FreeField13] [nvarchar](100) NULL,
	[نوع ويندوز Server:] [nvarchar](100) NULL,
	[نام سرور (مورد استفاده کلاينت ها):] [nvarchar](100) NULL,
	[مسير تهيه پشتيبان:] [nvarchar](100) NULL,
	[Password Server:] [nvarchar](100) NULL,
	[کدپستي:] [nvarchar](100) NULL,
	[حساسيت هاي مشتري] [varchar](1000) NULL,
	[امکانات مورد نظر مشتري] [varchar](1000) NULL,
	[رقبا در اين پروژه ] [varchar](1000) NULL,
	[تعداد کاربران نرم افزار يگانه] [varchar](1000) NULL,
	[برند آنتي ويروس] [varchar](1000) NULL,
	[تاريخ آخرين سرکشي واحد بازرگاني] [varchar](1000) NULL,
	[فعال / غيرفعال ] [varchar](1000) NULL,
	[راضي / ناراضي ] [varchar](1000) NULL,
	[امتياز مشتري از نظر واحد بازرگاني] [varchar](1000) NULL,
	[مشاهدات و تجربيات از نظر کارشناس فروش] [varchar](1000) NULL,
	[CategoryId] [int] NULL,
	[CategoryTitle] [varchar](1000) NULL,
	[SubCategoryId] [int] NULL,
	[SubCategoryTitle] [varchar](1000) NULL,
	[CompanyTypeId] [int] NULL,
	[CompanyTypeTitle] [varchar](200) NULL,
	[CompanySizeId] [int] NULL,
	[CompanySizeTitle] [varchar](50) NULL,
	[CompanyStructureId] [int] NULL,
	[CompanyStructureTitle] [varchar](250) NULL,
	[FinishedContractProducts] [nvarchar](2000) NULL,
	[products] [nvarchar](2000) NULL,
	[InnerPhone] [nvarchar](50) NULL,
	[fn_ProductIdByCustomerID] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[ID] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[ParentID] [int] NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutBox]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  Table [dbo].[Person]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](30) NULL,
	[WorkPhone] [nvarchar](50) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[FaxNumber] [nvarchar](30) NULL,
	[Notes] [nvarchar](255) NULL,
	[JobTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PoorsantList]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PoorsantList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MYear] [int] NULL,
	[UserID] [int] NULL,
	[Dabir_Single] [float] NULL,
	[Dabir_Net] [float] NULL,
	[Baygani_Single] [float] NULL,
	[Baygani_Net] [float] NULL,
	[Box_Single] [float] NULL,
	[Box_Net] [float] NULL,
	[Automation_Web] [float] NULL,
	[Automation_Net] [float] NULL,
	[Analysis] [float] NULL,
 CONSTRAINT [PK_PoorsantList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProductTitle] [nvarchar](100) NOT NULL,
	[Comment] [nvarchar](100) NULL,
	[ProductCategoryID] [tinyint] NOT NULL,
	[CommisionPercent] [tinyint] NOT NULL,
	[Code] [varchar](5) NULL,
	[LastVertion] [varchar](50) NULL,
	[IsNetwork] [bit] NULL,
	[avgFollouwup] [int] NULL,
	[IsSell] [bit] NULL,
	[ShowInSale] [bit] NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_journal] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [tinyint] NOT NULL,
	[ProductCategoryTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetailVertion]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetailVertion](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProductID] [tinyint] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Version] [nchar](20) NULL,
	[date] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ramezani]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramezani](
	[CustomerID] [int] NOT NULL,
	[CustomerNo] [varchar](50) NULL,
	[مدیریت] [nvarchar](100) NULL,
	[AADDRESS] [nvarchar](4000) NULL,
	[Phone] [nvarchar](100) NULL,
	[Notes] [varchar](8000) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CityID] [smallint] NULL,
	[CityTitle] [nvarchar](50) NULL,
	[GroupID] [int] NULL,
	[GroupTitle] [nvarchar](50) NULL,
	[MarketerID] [int] NOT NULL,
	[MarketerTitle] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[SenderType] [tinyint] NULL,
	[Priority] [int] NULL,
	[طرف مکاتبه] [nvarchar](50) NULL,
	[CompaginID] [tinyint] NULL,
	[CompaginTitle] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[WorkPhone1] [nvarchar](30) NULL,
	[Website] [varchar](100) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[FaxNumber] [nvarchar](30) NULL,
	[رقبا] [nvarchar](4000) NULL,
	[Insertdate] [char](10) NULL,
	[LastUpdate] [char](10) NULL,
	[CancelReasonID] [tinyint] NULL,
	[CancelComment] [nvarchar](4000) NULL,
	[CancelDate] [char](10) NULL,
	[latestFollowup] [char](10) NULL,
	[CustomerStatusID] [tinyint] NOT NULL,
	[CustomerStatusTitle] [nvarchar](50) NULL,
	[UserTableLinkedID] [int] NULL,
	[nextFollowup] [char](10) NULL,
	[کد اقتصادي :] [nvarchar](100) NULL,
	[شناسه ملي : ] [nvarchar](100) NULL,
	[طرف قرار داد :] [nvarchar](100) NULL,
	[ورژن نرم افزار :] [nvarchar](100) NULL,
	[نوع SQL:] [nvarchar](100) NULL,
	[IP Server:] [nvarchar](100) NULL,
	[نسخه مورد استفاده:] [nvarchar](100) NULL,
	[IP Static:] [nvarchar](100) NULL,
	[سريال قفل:] [nvarchar](100) NULL,
	[کد ملي :] [nvarchar](100) NULL,
	[شماره ثبت و تاريخ ثبت :] [nvarchar](100) NULL,
	[First Aid :] [nvarchar](100) NULL,
	[FreeField13] [nvarchar](100) NULL,
	[نوع ويندوز Server:] [nvarchar](100) NULL,
	[نام سرور (مورد استفاده کلاينت ها):] [nvarchar](100) NULL,
	[مسير تهيه پشتيبان:] [nvarchar](100) NULL,
	[Password Server:] [nvarchar](100) NULL,
	[کدپستي:] [nvarchar](100) NULL,
	[حساسيت هاي مشتري] [varchar](1000) NULL,
	[امکانات مورد نظر مشتري] [varchar](1000) NULL,
	[رقبا در اين پروژه ] [varchar](1000) NULL,
	[تعداد کاربران نرم افزار يگانه] [varchar](1000) NULL,
	[برند آنتي ويروس] [varchar](1000) NULL,
	[تاريخ آخرين سرکشي واحد بازرگاني] [varchar](1000) NULL,
	[فعال / غيرفعال ] [varchar](1000) NULL,
	[راضي / ناراضي ] [varchar](1000) NULL,
	[امتياز مشتري از نظر واحد بازرگاني] [varchar](1000) NULL,
	[مشاهدات و تجربيات از نظر کارشناس فروش] [varchar](1000) NULL,
	[CategoryId] [int] NULL,
	[CategoryTitle] [varchar](1000) NULL,
	[SubCategoryId] [int] NULL,
	[SubCategoryTitle] [varchar](1000) NULL,
	[CompanyTypeId] [int] NULL,
	[CompanyTypeTitle] [varchar](200) NULL,
	[CompanySizeId] [int] NULL,
	[CompanySizeTitle] [varchar](50) NULL,
	[CompanyStructureId] [int] NULL,
	[CompanyStructureTitle] [varchar](250) NULL,
	[FinishedContractProducts] [nvarchar](2000) NULL,
	[products] [nvarchar](2000) NULL,
	[InnerPhone] [nvarchar](50) NULL,
	[fn_ProductIdByCustomerID] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceTableData]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferralUser]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferralUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[ChildID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Serial]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serial](
	[Serial_ID] [int] NOT NULL,
	[SoftSerial] [nvarchar](20) NULL,
	[BaseSerial] [int] NOT NULL,
	[Serial2] [nchar](10) NULL,
	[Kit] [nchar](5) NULL,
	[Network] [smallint] NULL,
	[HaveCust] [smallint] NULL,
	[SerialUsed] [smallint] NULL,
	[SerDate] [nvarchar](15) NULL,
	[SerTime] [nvarchar](5) NULL,
	[ProductID] [tinyint] NULL,
	[CustomerID] [int] NULL,
	[CustomerDelivery] [int] NULL,
	[UserID] [int] NULL,
	[WorkStationName] [varchar](200) NULL,
	[WinOrDomainUserName] [varchar](200) NULL,
	[ExpireDate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[SettingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[VariableName] [varchar](50) NULL,
	[Value] [nvarchar](100) NULL,
 CONSTRAINT [PK_SettingsID] PRIMARY KEY CLUSTERED 
(
	[SettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slrSalary]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slrSalary](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonalID] [int] NOT NULL,
	[month] [char](7) NOT NULL,
	[SalaryItemID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Comment] [nvarchar](250) NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slrSalaryItems]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slrSalaryItems](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[effect] [smallint] NOT NULL,
	[PercentOfBaseSalary] [tinyint] NULL,
	[FixAmount] [int] NULL,
	[DictumIncluded] [bit] NULL,
	[SalaryIncluded] [bit] NULL,
	[OrderNo] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSAutoText]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSAutoText](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AutoText] [varchar](300) NULL,
 CONSTRAINT [PK_SMSAutoText] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSGroups]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
 CONSTRAINT [PK_SMSGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSLogs]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSLogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SentDate] [varchar](50) NULL,
	[SentTime] [varchar](50) NULL,
	[CustomerID] [int] NULL,
	[SMSGroupSID] [int] NULL,
	[SMSSubGroupsID] [int] NULL,
	[Message] [varchar](500) NULL,
	[SenderUserID] [int] NULL,
	[SenderWorkStationName] [varchar](50) NULL,
	[SenderWinorDomainUserName] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Comment] [varchar](500) NULL,
 CONSTRAINT [PK_SMSLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSSettings]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TerminalID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RegUserID] [int] NULL,
	[RegDate] [varchar](50) NULL,
	[SendSMS] [bit] NULL,
	[SendSMSType2] [bit] NULL,
	[SmsUser] [nvarchar](100) NULL,
	[SmsPassWord] [nvarchar](100) NULL,
	[SmsTimer] [nvarchar](100) NULL,
	[SMSCenterNumber] [nvarchar](100) NULL,
 CONSTRAINT [PK_SMSSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSSubGroups]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSSubGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SMSGroupsID] [int] NULL,
	[Title] [varchar](100) NULL,
 CONSTRAINT [PK_SMSSubGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSTMP]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSTMP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[CustomerNo] [varchar](50) NULL,
	[PersonTitle] [nvarchar](100) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[ProductTitle] [nvarchar](100) NULL,
	[CustomerStatusTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_SMSTMP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoftwareUpdateDtl]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftwareUpdateDtl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MstID] [int] NULL,
	[FileName] [varchar](200) NULL,
 CONSTRAINT [PK_Software] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoftwareUpdateMst]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftwareUpdateMst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Software] [varchar](50) NULL,
	[ServerAddress] [varchar](50) NULL,
	[Version] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StateTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Store_ID] [dbo].[DTID] IDENTITY(1,1) NOT NULL,
	[Code] [dbo].[DTCodeint] NOT NULL,
	[Name] [dbo].[DTName] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Store_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[SubCategoryTitle] [varchar](1000) NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemSettings]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemSettings](
	[VariableId] [int] NOT NULL,
	[Value] [varchar](255) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[TableId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[TableType] [tinyint] NULL,
	[TableCode] [varchar](50) NULL,
	[UserField1] [nvarchar](50) NULL,
	[UserField2] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tamas]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tamas](
	[code] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskFiles]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskFiles](
	[TaskFilesID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[Data] [image] NULL,
	[FileType] [nchar](10) NULL,
	[TaskId] [int] NOT NULL,
 CONSTRAINT [PK_TaskFiles] PRIMARY KEY CLUSTERED 
(
	[TaskFilesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskLog]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CaseId] [int] NULL,
	[TaskID] [int] NULL,
	[DateLog] [date] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[UserID] [int] NULL,
	[LongTime] [nvarchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskReferral]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskReferral](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NULL,
	[CaseTypeID] [int] NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[CaseId] [int] NOT NULL,
	[Comment] [nvarchar](300) NULL,
	[TodoDate] [nchar](10) NULL,
	[StatusId] [int] NULL,
	[AssignedUserId] [int] NOT NULL,
	[AssignedDate] [nchar](10) NULL,
	[EstimatedDate] [nchar](10) NULL,
	[AssignedComment] [nvarchar](300) NULL,
	[TaskCurrentDatetime] [datetime] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[TaskStatusID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TaskStatusTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CaseStatus] PRIMARY KEY CLUSTERED 
(
	[TaskStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxPerYear]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxPerYear](
	[TaxPerYearID] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NOT NULL,
	[TaxPercentage] [float] NOT NULL,
 CONSTRAINT [PK_TaxPerYear] PRIMARY KEY CLUSTERED 
(
	[TaxPerYearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempcr]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempcr](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNo] [varchar](50) NULL,
	[PersonTitle] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nvarchar](100) NULL,
	[Notes] [varchar](4000) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CityId] [smallint] NULL,
	[GroupId] [int] NULL,
	[MarketerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SenderType] [tinyint] NULL,
	[Priority] [int] NULL,
	[Treater] [nvarchar](50) NULL,
	[CompaginID] [tinyint] NULL,
	[PostalCode] [nvarchar](20) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[WorkPhone1] [nvarchar](30) NULL,
	[Website] [varchar](100) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[FaxNumber] [nvarchar](30) NULL,
	[competitiveNote] [nvarchar](255) NULL,
	[Insertdate] [char](10) NULL,
	[LastUpdate] [char](10) NULL,
	[CustomerStatusID] [tinyint] NOT NULL,
	[CancelReasonID] [tinyint] NULL,
	[CancelComment] [nvarchar](250) NULL,
	[CancelDate] [char](10) NULL,
	[UserTableLinkedID] [int] NULL,
	[FreeField01] [nvarchar](100) NULL,
	[FreeField02] [nvarchar](100) NULL,
	[FreeField03] [nvarchar](100) NULL,
	[FreeField04] [nvarchar](100) NULL,
	[FreeField05] [nvarchar](100) NULL,
	[FreeField06] [nvarchar](100) NULL,
	[FreeField07] [nvarchar](100) NULL,
	[FreeField08] [nvarchar](100) NULL,
	[FreeField09] [nvarchar](100) NULL,
	[FreeField10] [nvarchar](100) NULL,
	[FreeField11] [nvarchar](100) NULL,
	[FreeField12] [nvarchar](100) NULL,
	[FreeField13] [nvarchar](100) NULL,
	[FreeField14] [nvarchar](100) NULL,
	[FreeField15] [nvarchar](100) NULL,
	[FreeField16] [nvarchar](100) NULL,
	[FreeField17] [nvarchar](100) NULL,
	[FreeField18] [nvarchar](100) NULL,
	[StateID] [tinyint] NULL,
	[InnerPhone] [nvarchar](50) NULL,
	[CustomerBirthDate] [varchar](50) NULL,
	[UserAccessMode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[TimeSheetID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[WorkDate] [char](10) NOT NULL,
	[EnterTime] [char](5) NOT NULL,
	[ExitTime] [char](5) NULL,
	[WorkTypeID] [tinyint] NOT NULL,
	[Comment] [nvarchar](100) NULL,
	[Effect] [bit] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[TimeSheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Unit_ID] [dbo].[DTInteger] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[DTName] NOT NULL,
	[UnitCount] [dbo].[DTInteger] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Unit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UpdateRequestFromUsers]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpdateRequestFromUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[LockCode] [varchar](20) NULL,
	[ContractEndDate] [varchar](10) NULL,
	[RequestDate] [varchar](10) NULL,
	[RequestTime] [time](7) NULL,
	[Updated] [bit] NULL,
 CONSTRAINT [PK_UpdateRequestFromUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_LogIn_Log]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_LogIn_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[LogIn] [datetime] NULL,
	[logOut] [datetime] NULL,
	[ComputerName] [nvarchar](50) NULL,
	[IPAddress] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginLogout]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginLogout](
	[UserLoginLogoutID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[IPAddress] [char](15) NULL,
	[LoginTime] [datetime] NOT NULL,
	[LogoutTime] [datetime] NOT NULL,
	[isSafeLogout] [bit] NOT NULL,
 CONSTRAINT [PK_UserLoginLogout] PRIMARY KEY CLUSTERED 
(
	[UserLoginLogoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[NewPassWord] [nvarchar](50) NULL,
	[MarketerID] [tinyint] NULL,
	[DefaultProductID] [tinyint] NULL,
	[Email] [varchar](50) NULL,
	[AccountNo] [varchar](50) NULL,
	[isadmin] [bit] NOT NULL,
	[AccessID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ExportCustomerList] [bit] NULL,
	[ShowContract] [bit] NULL,
	[EditContract] [bit] NULL,
	[ShowAllCustomer] [bit] NULL,
	[UserTypeId] [tinyint] NULL,
	[ExportFollow] [bit] NULL,
	[ShowMyAction] [bit] NULL,
	[BtnAllContract] [bit] NULL,
	[BtnAllAct] [bit] NULL,
	[ISWinServer] [bit] NULL,
	[PinFollowUp] [bit] NULL,
	[ThemTypeColor] [int] NULL,
	[Color1] [nvarchar](20) NULL,
	[Color2] [nvarchar](20) NULL,
	[Color3] [nvarchar](20) NULL,
	[Color4] [nvarchar](20) NULL,
	[AccAcess] [bit] NULL,
	[CallAccess] [bit] NULL,
	[AssesstAccess] [bit] NULL,
	[FactorAccess] [bit] NULL,
	[EditVersion] [bit] NULL,
	[IsSystemUser] [bit] NULL,
	[ManagerSale] [bit] NULL,
	[ManagerProduction] [bit] NULL,
	[ManagerSupport] [bit] NULL,
	[ManagerOfficial] [bit] NULL,
	[LastVertionLogin] [nvarchar](10) NULL,
	[LastLoginDateTime] [datetime] NULL,
	[LastLogOutDateTime] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersCustomerAccess]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersCustomerAccess](
	[CustomerID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[HasAccess] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersPinFollowUP]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPinFollowUP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[UserID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSequence]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSequence](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UsersID] [int] NULL,
	[sequence] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_UsersSequence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTableContent]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTableContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTableLinkedID] [int] NOT NULL,
	[TableID] [tinyint] NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_UserTableContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTableContentValue]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTableContentValue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTableContentID] [int] NOT NULL,
	[FieldID] [int] NOT NULL,
	[FieldValue] [nvarchar](2000) NULL,
	[LastUpdate] [datetime] NULL,
	[InsertUserID] [int] NULL,
 CONSTRAINT [PK_UserTableContentValue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeTitle] [nvarchar](50) NOT NULL,
	[UserTypeCode] [nvarchar](50) NOT NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypeContractType]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypeContractType](
	[UserTypeContractTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[ContractTypeId] [tinyint] NOT NULL,
 CONSTRAINT [PK_UserTypeContractType] PRIMARY KEY CLUSTERED 
(
	[UserTypeContractTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WordTemplate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordTemplate](
	[WordTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[WordTemplate] [image] NULL,
	[TemplateTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WordTemplate] PRIMARY KEY CLUSTERED 
(
	[WordTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VWFollowup]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create VIEW [dbo].[VWFollowup]      
AS      
 
SELECT MAX(minTododate) minTododate ,MAX(maxTododate) maxTododate,Customerid FROM (
SELECT min(Tododate) minTododate, '' maxTododate ,Customerid,donestatusid  from dbo.followup WITH(NOLOCK)  GROUP BY Customerid,donestatusid  having   donestatusid = 1
union
SELECT '' minTododate, max(Tododate) maxTododate ,Customerid,donestatusid  from dbo.followup WITH(NOLOCK)  GROUP BY Customerid,donestatusid  having   donestatusid = 2
) t
GROUP BY Customerid
GO
/****** Object:  View [dbo].[VWSelect_Customer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [dbo].[VWSelect_Customer]
AS

SELECT  isnull(cu.CompanyName,'')+'('+isnull(cu.PersonTitle,'')+isnull(' - '+cu.Treater,'')+')'  as NickName      
,Cu.CustomerID
, Cu.CustomerNo 
, cast(1 as bigint) as RowNo  /*  Row_Number() over (order  by insertdate desc )  as RowNo   */
,cu.[PersonTitle]
,cu.[Address]
,cu.[Phone]
,cu.[Notes]
,cu.[CompanyName]
,Cu.CityID
,Cu.GroupID
,Cu.MarketerID           
,cu.[IsActive]
,cu.[SenderType]
,cu.[Priority]
,cu.[Treater]
,cu.[CompaginID]
,cu.[PostalCode]
,cu.[EmailAddress]
,cu.[WorkPhone1]        
,cu.[Website]
,cu.[MobilePhone]
,cu.[FaxNumber]
,cu.[competitiveNote]
,Cp.[CompaginTitle]
,cu.[Insertdate]
,cu.[LastUpdate]
,cu.[CancelReasonID]        
,cu.[CancelComment]
,cu.[CancelDate]
,Cu.CustomerStatusID
,cu.UserTableLinkedID
,c.CityTitle
,gr.GroupTitle
, CASE WHEN Cu.MarketerID = 0 THEN 'نامشخص' ELSE  ma.MarketerTitle end  MarketerTitle   
,cs.CustomerStatusTitle
--,(select max(Tododate) from dbo.followup where customerid = customer.customerid and donestatusid = 2) latestFollowup      
--,(select min(Tododate) from dbo.followup where customerid = customer.customerid and donestatusid = 1) nextFollowup  
,fu.minTododate latestFollowup
,fu.maxTododate nextFollowup

,cu.FreeField01,cu.FreeField02,cu.FreeField03,cu.FreeField04,cu.FreeField05,cu.FreeField06  
,cu.FreeField07,cu.FreeField08,cu.FreeField09,cu.FreeField10,cu.FreeField11,cu.FreeField12  
,cu.FreeField13,cu.FreeField14,cu.FreeField15,cu.FreeField16,cu.FreeField17,cu.FreeField18        
--,dbo.fn_FinishedContractBycustomerId(cu.customerid) FinishedContractProducts 
,ISNULL(cu.FinishedContractProducts,'')  FinishedContractProducts    
,cu.CategoryId,cu.SubCategoryId
,cu.CompanyTypeId,cu.CompanySizeId,cu.CompanyStructureId,cu.FreeField19,cu.FreeField20,cu.FreeField21,cu.FreeField22
,cu.FreeField23,cu.FreeField24,cu.FreeField25,cu.FreeField26,cu.FreeField27,cu.FreeField28

--,dbo.fn_ProductByCustomerID(cu.customerid) products
 , ISNULL(cu.productsSTR,'') products 
--,'|'+dbo.fn_ProductIdByCustomerID(cu.customerid)+'|' ProductsID  
,'|'+ISNULL(cu.productsIdSTR,'')+'|' ProductsID
,cu.InnerPhone 
, cast(cu.CustomerId as NVARCHAR(30))+'|'+isnull(cu.PostalCode,'')+'|'+isnull(cu.CustomerNo,'')+'|'+isnull(cu.PersonTitle,'')+'|' 
        + isnull(cu.Treater,'')+'|'+isnull(cu.Address,'')+'|'+isnull(cu.Notes,'')+'|'+isnull(cu.CompanyName,'')
        +'|'+isnull(cu.Phone,'')+'|'+isnull(cu.CompetitiveNote,'')+'|'+isnull(cu.FaxNumber,'')+'|'+isnull(cu.WorkPhone1,'')+'|'+isnull(cu.MobilePhone,'')   SearchStr  
 , ( isnull(cu.Phone,'')+'|'+isnull(cu.FaxNumber,'')+'|'+isnull(cu.WorkPhone1,'')+'|'+isnull(cu.MobilePhone,'')) SearchInt  
,c.stateid  
, CASE WHEN (otherPer.CustomerID > 0) THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT ) END OtherPerson
,ccont.enddate
,cu.ActionType_LevelID 
,cu.ComputerName
,cu.IPAddress 
FROM dbo.Customer  cu            WITH(NOLOCK)      
left join dbo.Marketer ma        WITH(NOLOCK)    on Cu.MarketerID   = Ma.MarketerID      
left join dbo.Groups  gr         WITH(NOLOCK)    on Cu.GroupID   = Gr.GroupID      
left join dbo.City    c          WITH(NOLOCK)    ON Cu.CityID = C.CityID        
left join dbo.CustomerStatus cs  WITH(NOLOCK)    on Cu.CustomerStatusID  = Cs.CustomerStatusID 
left join dbo.[Compagin]   cp    WITH(NOLOCK)    on Cu.CompaginID  = Cp.[CompaginID]   
LEFT JOIN [dbo].[VWFollowup]  fu on Cu.CustomerID  = fu.CustomerID 
LEFT JOIN ( SELECT DISTINCT [CustomerID]  FROM [dbo].[Person]  WITH(NOLOCK) ) otherPer on Cu.CustomerID  = otherPer.CustomerID 
LEFT JOIN (SELECT isnull(MAX(EndDate),'''') enddate ,customerid FROM dbo.CONTRACT  WITH(NOLOCK) GROUP BY customerid ) ccont ON ccont.customerid = cu.CustomerID

GO
/****** Object:  View [dbo].[VWActionType_Level]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VWActionType_Level]      
AS      
 
SELECT [ID]
      ,[ParentID]
      ,[ChildID]
      ,[Description]
      ,[Level]
      ,[Type]
      ,[OrderId]
  FROM [dbo].[ActionType_Level]
WHERE TYPE=1

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCurrentStateCustomerTable]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GetCurrentStateCustomerTable]( @CustomerID  int,@ATLevelID INT )

RETURNS TABLE 
AS
RETURN 
(
	
SELECT TOP 10 l.[ID]
      ,l.[ParentID]
      ,l.[ChildID]
      ,l.[Description]
      ,l.[Level]
      ,l.[Type]
      ,l.[OrderId]
      , [dbo].[fn_GetAllStateCustomer]( c.CustomerID,l.ID   ) State
FROM dbo.customer AS c
CROSS JOIN [dbo].[VWActionType_Level] AS l  
WHERE c.CustomerID = @CustomerID AND
  (  @ATLevelID = 0 OR  l.[ID] = @ATLevelID )

	--SELECT [dbo].[fn_GetAllStateCustomer]( @CustomerID,@LevelID   ) State
)
GO
/****** Object:  View [dbo].[VWActionType_Level_Detail]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VWActionType_Level_Detail]      
AS      
 
SELECT [ID]
      ,[ParentID]
      ,[ChildID]
      ,[Description]
      ,[Level]
      ,[Type]
      ,[OrderId]
  FROM [dbo].[ActionType_Level]
WHERE TYPE=2

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCurrentStateCustomerTable_Detail]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GetCurrentStateCustomerTable_Detail]( @CustomerID  int,@ATPLevelID INT ,@ATLevelID INT)

RETURNS TABLE 
AS
RETURN 
(
	
	SELECT TOP 10 l.[ID]
      ,l.[ParentID]
      ,l.[ChildID]
      ,l.[Description]
      ,l.[Level]
      ,l.[Type]
      ,l.[OrderId]
      , [dbo].[fn_GetAllStateCustomer]( c.CustomerID,l.ID   ) State
FROM dbo.customer AS c
CROSS JOIN [dbo].[VWActionType_Level_Detail]  AS l  
WHERE c.CustomerID = @CustomerID AND l.[ParentID] = @ATPLevelID AND
  (@ATLevelID = 0 OR l.id = @ATLevelID )
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GeAllTaskCaseTable]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GeAllTaskCaseTable]( @CaseID  int)

RETURNS TABLE 
AS
RETURN 
(
	
SELECT * FROM (	
SELECT [TaskID]
      ,[CaseId]
      --,[Comment]
      , ' توضیحات ارجاع دهنده '+ ' : '+CHAR(10) + CHAR(13)+ CHAR(13)+'  '
      + ISNULL(Comment,'') +CHAR(10) + CHAR(13)+ CHAR(13)+'             '
      + ' توضیحات انجام دهنده '+' : '+ CHAR(10) + CHAR(13)+ CHAR(13)+'  '
      + ISNULL(AssignedComment,'') AS Comment
      ,[TodoDate]
      ,[StatusId]
      ,[AssignedUserId]
      ,[AssignedDate]
      ,[EstimatedDate]
      ,[AssignedComment]
      ,[TaskCurrentDatetime]
      ,u.Title
      ,[TaskStatusTitle]
      ,'' Descriptions
  FROM [dbo].[Tasks]
  LEFT JOIN dbo.Users AS U ON u.id= tasks.AssignedUserId
  LEFT JOIN [dbo].[TaskStatus] tt ON tt.TaskStatusID = tasks.StatusId 
  WHERE Tasks.CaseId = @CaseID
  
   UNION ALL
   SELECT TOP 1 0 ,CAST(Cases.CaseID as int),
   ' '
   ,RegisterDate,4,RegisterUserID,RegisterDate,CaseEstimatedDate,
   ' شرح مورد '+ ' : '+CHAR(10) + CHAR(13)+ CHAR(13)+'  ' + Comment
     ,CurrentDate
   ,u.Title
      ,'ثبت' [TaskStatusTitle]
       ,'    ' Descriptions
    FROM [dbo].[Cases]
  LEFT JOIN dbo.Users AS U ON u.id= Cases.RegisterUserID
  --LEFT JOIN [dbo].[TaskStatus] tt ON tt.TaskStatusID = 4    
  WHERE Cases.CaseId = @CaseID
) tt
)


GO
/****** Object:  View [dbo].[FollowUpPortal]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[FollowUpPortal]
as
Select 
FollowUp.FollowUPID,FollowUp.CustomerID
,FollowUp.ActionTypeID
,at.ActionTypeTitle 
,FollowUp.DoneStatusID
,DoneStatus.DoneStatustitle 
,FollowUp.MarketerID
,Marketer.MarketerTitle 
,FollowUp.Comment,FollowUp.ToDoDate,FollowUp.DoneDate,FollowUp.Attachment1,FollowUp.Attachment2,FollowUp.ToDoTime,FollowUp.SuccessChance
,FollowUp.DoneComment,FollowUp.insertdate,FollowUp.Lastupdate
,FollowUp.WordAttachment,FollowUp.PicAttachment,FollowUp.ParentFollowUpID
,dbo.ShamsiToMiladi(FollowUp.StatusSaveDate)StatusSaveDate
,dbo.ShamsiToMiladi(FollowUp.FollowUpInsertDate)FollowUpInsertDate
---, at.ActionTypeTitle + ' (' + (CASE WHEN LEN(FollowUp.Comment) > 30 THEN SUBSTRING(FollowUp.Comment, 1, 30) + '...' ELSE isnull(FollowUp.Comment,'') END) + ')' AS FullActionTitle
from dbo.followup WITH(NOLOCK)
inner join dbo.marketer WITH(NOLOCK) on marketer.marketerid=followup.marketerid
INNER JOIN dbo.ActionType At WITH(NOLOCK) ON at.ActionTypeID = FollowUp.ActionTypeID
left join  dbo.DoneStatus WITH(NOLOCK) on DoneStatus.DoneStatusID=followup.DoneStatusID

GO
/****** Object:  View [dbo].[Prodoct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[Prodoct]
--------آخرین قرارداد
as 
Select 
Contract.CustomerID,
Max( dbo.ShamsiToMiladi(Contract.BeginDate))BeginDate ,Max( dbo.ShamsiToMiladi(Contract.EndDate))EndDate ,Max( Contract.Amount)Amount
--- ),Max( Contract.Attachment ),Max( Contract.ContractText
,Max( REPLACE(REPLACE(Contract.Comment ,CHAR(10),' '),CHAR(13),'   ') )ContractComment
--- ),Max( Marketer.MarketerID ),Max( Marketer.MarketerNo ),Max( Marketer.MarketerTitle
 ,Max( ContractType.ContractTypeID )ContractTypeID ,Max( ContractType.ContractTypeTitle )ContractTypeTitle ,Max( Product.ProductID )ProductID 
 ,Max( Product.ProductTitle )ProductTitle ,Max( Product.Comment )ProductComment ,Max( Product.ProductCategoryID )ProductCategoryID 
 ,Max( ProductCategory.ProductCategoryTitle )ProductCategoryTitle ,Max( Product.CommisionPercent )CommisionPercent,Max( Product.Code )ProductCode 
 ,Max( cast(Product.IsNetwork as int))ProductIsNetwork ,Max( Contract.ContractSubTypeID )ContractSubTypeID ,Max( ContractSubTypeTitle )ContractSubTypeTitle 
 ,Max( Contract.TaxPercentage )TaxPercentage ,Max( Contract.GoodJobPercentage )GoodJobPercentage ,Max( Contract.ByCashAmount )ByCashAmount 
 ,Max( Contract.ByCashFishNo )ByCashFishNo,Max( Contract.InsuranceAccount )InsuranceAccount ---,max( Contract.TaxFish )TaxFish

from dbo.CONTRACT WITH(NOLOCK)   
left join dbo.ContractType    WITH(NOLOCK) on (Contract.ContractTypeId = ContractType.ContractTypeID)  
left join dbo.ContractSubType WITH(NOLOCK) on (Contract.ContractSubTypeId = ContractSubType.ContractSubTypeID)  
left join dbo.Product         WITH(NOLOCK) on (Contract.ProductId = Product.ProductId)  
left join dbo.Marketer        WITH(NOLOCK) on (Contract.MarketerID = Marketer.MarketerID)  
LEFT JOIN dbo.ProductCategory WITH(NOLOCK) ON ProductCategory.ProductCategoryID=Product.ProductCategoryID
---where Contract.CustomerID='16720'
group by Contract.CustomerID

GO
/****** Object:  View [dbo].[Product_Customer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[Product_Customer]
as 
----DECLARE  @TaxDate CHAR(10)  set @TaxDate =(SELECT [VALUE] from Settings WHERE VariableName = 'TaxDate')  
  
Select 
Contract.CustomerID,
dbo.ShamsiToMiladi(Contract.BeginDate)BeginDate,dbo.ShamsiToMiladi(Contract.EndDate)EndDate,Contract.Amount,Contract.Attachment,Contract.ContractText,Contract.Comment  ContractComment
,Marketer.MarketerID,Marketer.MarketerNo,Marketer.MarketerTitle,ContractType.ContractTypeID,ContractType.ContractTypeTitle
,Product.ProductID,Product.ProductTitle,Product.Comment ProductComment,Product.ProductCategoryID,ProductCategory.ProductCategoryTitle,Product.CommisionPercent,Product.Code,Product.IsNetwork,

Contract.ContractSubTypeID,ContractSubTypeTitle,Contract.TaxPercentage,Contract.GoodJobPercentage,Contract.ByCashAmount,Contract.ByCashFishNo,Contract.InsuranceAccount,Contract.TaxFish


--,Marketer.Tag,Marketer.PPercent,Marketer.OrgID,Marketer.IsActive_
     --parsa	
--,(CASE WHEN ('1394/01/01' <> '') AND ( BeginDate >='1394/01/01' ) THEN       
--     Round(Amount+( 
     --(isnull((select TaxPercentage from TaxPerYear where [Year] = substring(BeginDate,1,4)),0)/100)*Amount  
,(CASE WHEN ('1394/01/01' <> '') AND (ISNULL(SignUpDate, BeginDate) >='1394/01/01' ) THEN       
     Round(Amount+(      
     (isnull((select TaxPercentage from TaxPerYear where [Year] = substring(ISNULL(SignUpDate, BeginDate),1,4)),0)/100)*Amount       
     --parsa
         ) ,0)    
    ELSE  Amount END  
    )AS          
         TotalAmount  

from dbo.Contract  WITH(NOLOCK) 
  left join dbo.ContractType    WITH(NOLOCK) on (Contract.ContractTypeId = ContractType.ContractTypeID)  
  left join dbo.ContractSubType WITH(NOLOCK) on (Contract.ContractSubTypeId = ContractSubType.ContractSubTypeID)  
  left join dbo.Product         WITH(NOLOCK) on   (Contract.ProductId = Product.ProductId)  
  left join dbo.Marketer        WITH(NOLOCK) on (Contract.MarketerID = Marketer.MarketerID)  
  LEFT JOIN dbo.ProductCategory WITH(NOLOCK) ON   ProductCategory.ProductCategoryID=Product.ProductCategoryID
---where customerid=27198



GO
/****** Object:  View [dbo].[viw_Contract]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[viw_Contract]
as
SELECT TOP 1000 ContractID
      ,CustomerID
      ,BeginDate
      ,EndDate
      ,Amount
      ,Attachment
      ,Contract.Comment
      ,Marketer.MarketerTitle
      ,ContractType.ContractTypeTitle
      ,Product.ProductTitle
      ,ContractSubType.ContractSubTypeTitle
      ,ContractText
      ,TaxPercentage
      ,GoodJobPercentage
      ,ByCashAmount
      ,ByCashFishNo
      ,InsuranceAccount
      ,TaxFish
  FROM dbo.Contract WITH(NOLOCK)
  join dbo.Marketer WITH(NOLOCK) on Marketer.MarketerID=Contract.MarketerID
  join dbo.ContractType WITH(NOLOCK) on ContractType.ContractTypeID=Contract.ContractTypeID
  join dbo.Product WITH(NOLOCK) on Product.ProductID=Contract.ProductID
  join dbo.ContractSubType WITH(NOLOCK) on ContractSubType.ContractSubTypeID=Contract.ContractSubTypeID
  
GO
/****** Object:  View [dbo].[viw_Person]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[viw_Person]
as
SELECT [PersonID]
      ,[CustomerID]
      ,[FirstName]
      ,[LastName]
      ,[EmailAddress]
      ,[HomePhone]
      ,[WorkPhone]
      ,[MobilePhone]
      ,[FaxNumber]
      ,[Notes]
      ,[JobTitle]
  FROM [dbo].[Person] WITH(NOLOCK)
GO
/****** Object:  View [dbo].[Viwcustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--USE [Y_Crm]
--GO

--/****** Object:  View [dbo].[Viwcustomer]    Script Date: 10/06/1394 05:06:17 ب.ظ ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

CREATE VIEW		[dbo].[Viwcustomer]
AS		       
select 
[CustomerID],[CustomerNo],[AADDRESS],[Phone],[Notes]
,
case when (
case when [CompanyName] is null then [مدیریت]
else [CompanyName]  end ) is null then [طرف مکاتبه] else 
(
case when [CompanyName] is null then [مدیریت]
else [CompanyName]  end ) end 
CompanyName
,[طرف مکاتبه]
,[مدیریت]
,[CityID],[CityTitle],[GroupID],[GroupTitle],[MarketerID],[MarketerTitle],[IsActive],[SenderType],[Priority],[CompaginID],[CompaginTitle],[PostalCode],[EmailAddress],[WorkPhone1],[Website],[MobilePhone],[FaxNumber],[رقبا],[Insertdate],[LastUpdate],[CancelReasonID],[CancelComment],[CancelDate],[latestFollowup],[CustomerStatusID],[CustomerStatusTitle],[UserTableLinkedID],[nextFollowup],[کد اقتصادي :],[شناسه ملي : ],[طرف قرار داد :],[ورژن نرم افزار :],[نوع SQL:],[IP Server:],[نسخه مورد استفاده:],[IP Static:],[سريال قفل:],[کد ملي :],[شماره ثبت و تاريخ ثبت :],[First Aid :],[FreeField13],[نوع ويندوز Server:],[نام سرور (مورد استفاده کلاينت ها):],[مسير تهيه پشتيبان:],[Password Server:],[کدپستي:],[حساسيت هاي مشتري],[امکانات مورد نظر مشتري],[رقبا در اين پروژه ],[تعداد کاربران نرم افزار يگانه],[برند آنتي ويروس],[تاريخ آخرين سرکشي واحد بازرگاني],[فعال / غيرفعال ],[راضي / ناراضي ],[امتياز مشتري از نظر واحد بازرگاني],[مشاهدات و تجربيات از نظر کارشناس فروش],[CategoryId],[CategoryTitle],[SubCategoryId],[SubCategoryTitle],[CompanyTypeId],[CompanyTypeTitle],[CompanySizeId],[CompanySizeTitle],[CompanyStructureId],[CompanyStructureTitle],[FinishedContractProducts],[products],[InnerPhone],[fn_ProductIdByCustomerID]

from 
(
SELECT  
Customer.CustomerID, Customer.CustomerNo 
,PersonTitle [مدیریت]
,REPLACE(REPLACE(Address,CHAR(10),' '),CHAR(13),'   ') AADDRESS
,Phone
,REPLACE(REPLACE(Notes,CHAR(10),' '),CHAR(13),'   ') Notes
,
case
--when isnull(ltrim(rtrim(CompanyName)),'0') ='0' then PersonTitle 
--when isnull(ltrim(rtrim(CompanyName)),'0') ='0'  and  isnull(ltrim(rtrim(PersonTitle)) ,'0')='0'  then Treater
when GroupTitle ='شرکت يگانه' then PersonTitle 
when CompanyName ='.....' then PersonTitle 
when CompanyName ='.......' then PersonTitle 
when CompanyName ='............' then PersonTitle 
when CompanyName ='...............' then PersonTitle 
when CompanyName ='..........' then PersonTitle 
when CompanyName ='..' then PersonTitle 
when CompanyName ='.' then PersonTitle 
when CompanyName ='........' then PersonTitle 
when CompanyName ='.' then PersonTitle 
when CompanyName ='.......' then PersonTitle 
when CompanyName ='..' then PersonTitle 
when CompanyName ='--' then PersonTitle 
when CompanyName ='-' then PersonTitle 
when CompanyName ='   -' then PersonTitle 
else CompanyName 
end CompanyName 


,Customer.CityID,CityTitle,Customer.GroupID,GroupTitle,Customer.MarketerID,MarketerTitle
,IsActive,SenderType,Priority,Treater  [طرف مکاتبه],customer.CompaginID,Compagin.CompaginTitle,PostalCode,EmailAddress,WorkPhone1        
,Website,MobilePhone,FaxNumber
,REPLACE(REPLACE(competitiveNote,CHAR(10),' '),CHAR(13),'   ') [رقبا]
,Insertdate,LastUpdate,CancelReasonID        
,REPLACE(REPLACE(CancelComment,CHAR(10),' '),CHAR(13),'   ') CancelComment
,CancelDate
,(select max(Tododate) from followup where customerid=customer.customerid and donestatusid=2) latestFollowup      
,Customer.CustomerStatusID,CustomerStatusTitle,UserTableLinkedID
,(select min(Tododate) from followup where customerid=customer.customerid and donestatusid=1) nextFollowup  

,FreeField01 [کد اقتصادي :]
,FreeField02 [شناسه ملي : ]
,FreeField03 [طرف قرار داد :]
,FreeField04 [ورژن نرم افزار :]
,FreeField05 [نوع SQL:]
,FreeField06 [IP Server:]
,FreeField07 [نسخه مورد استفاده:]
,FreeField08 [IP Static:]
,FreeField09 [سريال قفل:]
,FreeField10 [کد ملي :]
,FreeField11 [شماره ثبت و تاريخ ثبت :]
,FreeField12 [First Aid :]
,FreeField13 
,FreeField14 [نوع ويندوز Server:]
,FreeField15 [نام سرور (مورد استفاده کلاينت ها):]
,FreeField16 [مسير تهيه پشتيبان:]
,FreeField17 [Password Server:]
,FreeField18 [کدپستي:]     
,FreeField19 [حساسيت هاي مشتري]
,FreeField20 [امکانات مورد نظر مشتري]
,FreeField21 [رقبا در اين پروژه ]
,FreeField22 [تعداد کاربران نرم افزار يگانه]
,FreeField23 [برند آنتي ويروس]
,FreeField24 [تاريخ آخرين سرکشي واحد بازرگاني]
,FreeField25 [فعال / غيرفعال ]
,FreeField26 [راضي / ناراضي ]
,FreeField27 [امتياز مشتري از نظر واحد بازرگاني]
,FreeField28 [مشاهدات و تجربيات از نظر کارشناس فروش]
---,dbo.fn_FinishedContractBycustomerId(customerid) FinishedContractProducts      
,Customer.CategoryId,Categories.CategoryTitle,Customer.SubCategoryId, SubCategories.SubCategoryTitle
,Customer.CompanyTypeId,CompanyTypes.CompanyTypeTitle
,Customer.CompanySizeId,CompanySizeTitle
,Customer.CompanyStructureId,CompanyStructureTitle
,dbo.fn_FinishedContractBycustomerId_NEW(customerid) FinishedContractProducts     
,dbo.fn_ProductByCustomerID(customerid) products
,InnerPhone    
,dbo.fn_ProductIdByCustomerID(customerid)fn_ProductIdByCustomerID ---ProductsID  


FROM dbo.Customer WITH(NOLOCK)
left join dbo.Marketer WITH(NOLOCK) on Marketer.MarketerID=Customer.MarketerID        
left join dbo.Groups   WITH(NOLOCK) on Groups.GroupID=Customer.GroupID        
left join dbo.City     WITH(NOLOCK) on City.CityID=Customer.CityID        
left join dbo.CustomerStatus WITH(NOLOCK) on CustomerStatus.CustomerStatusID=Customer.CustomerStatusID 
left join dbo.Compagin WITH(NOLOCK) on  Compagin.CompaginID = Customer.CompaginID 
LEFT JOIN dbo.Categories WITH(NOLOCK) ON Categories.CategoryId=Customer.CategoryId
LEFT JOIN dbo.SubCategories WITH(NOLOCK) ON dbo.SubCategories.SubCategoryId=Customer.SubCategoryId
LEFT JOIN dbo.CompanyTypes  WITH(NOLOCK) ON CompanyTypes.CompanyTypeId=Customer.CompanyTypeId
LEFT JOIN dbo.CompanySizes  WITH(NOLOCK) ON dbo.CompanySizes.CompanySizeId=Customer.CompanySizeId
LEFT join dbo.CompanyStructures WITH(NOLOCK) ON dbo.CompanyStructures.CompanyStructureId=Customer.CompanyStructureId
----WHERE dbo.Customer.CustomerID=16737


-----where isnull(ltrim(rtrim(replace(CompanyName,' ',''))),'0')<>'0'
--where CompanyName is not null and CompanyName<>''
--and CompanyName not like '%گانه%'
--and CompanyName not in ('-','--','   -')
--and CustomerStatus.CustomerStatusID=2
---------and dbo.Customer.CustomerID=24860
-----and Customer.groupid=5

)a
GO
/****** Object:  View [dbo].[VW_Marketer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW		[dbo].[VW_Marketer]
AS		       

SELECT * FROM dbo.marketer
WHERE  MarketerIsDone = 0
--IsActive_ = 1
--ORDER BY OrderByID

GO
/****** Object:  View [dbo].[Vw_SrchFactor]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE View [dbo].[Vw_SrchFactor]
As

Select F.Factor_ID,F.Customer_Ref,F.FacDate,F.RegisterDate,F.Number,F.Users_Ref,F.Type
       ,C.CompanyName as CustName
       ,U.Title UserName
From dbo.Factor F WITH(NOLOCK) , Customer C WITH(NOLOCK) , Users U WITH(NOLOCK)
Where(F.Customer_Ref = C.CustomerID)
  And(F.Users_Ref = U.ID)

GO
/****** Object:  View [dbo].[Vw_SrchFactorCustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE View [dbo].[Vw_SrchFactorCustomer]
As

SELECT F.Number, F.Factor_ID,F.Customer_Ref,F.Type,
F.FacDate,F.RegisterDate,F.Users_Ref,CASE WHEN F.Type = 'P' THEN 'پیش فاکتور' ELSE 'فاکتور' END  typeFac,f.TotalFactorPrice
      -- ,C.CompanyName as CustName
       ,U.Title UserName
       ,f.RelatedNumber
From dbo.Factor F WITH(NOLOCK) , dbo.Customer C WITH(NOLOCK) , dbo.Users U WITH(NOLOCK)
Where(F.Customer_Ref = C.CustomerID)
  And(F.Users_Ref = U.ID)

GO
/****** Object:  View [dbo].[VWCities]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VWCities]      
AS      
 
SELECT (Case When IsNull(RTrim(City.CityTitle),'') = '' then 'بدون شهر(' + RTrim(State.StateTitle) + ')'
        else RTrim(City.CityTitle) + ' (' + RTrim(State.StateTitle) + ')' 
        end ) AS StateCityTitle
       , State.StateTitle, dbo.City.*      
FROM dbo.City WITH(NOLOCK)
Right JOIN    dbo.State WITH(NOLOCK) ON dbo.City.StateID = dbo.State.StateID 

GO
/****** Object:  View [dbo].[VWFolloWUpMessage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[VWFolloWUpMessage]
AS
/*
0 FIRST SEND m
1 1 DAY NOT RIGHT cd
2 RIGHT cd
3 SEND cd
4  2 OR 4 DAY pass NOT install 
5  followu peygiri darad
6  install shode
7  Education shode
8  peygiri install
9 final calc
*/

--اطلاع رسانی جهت آماده سازی پکیج --مشتری قطعی
SELECT 0 Levels ,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 0  )
  AND actiontypeid  = 56 
UNION all  
-- یک اقدام رایت پکیج انجام شده
SELECT 1,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 0  )
                       
  AND actiontypeid  = 44  
  -- رایت پکیج (سی دی) آپدیت مرحله قبل انجام شده
UNION all  
SELECT 2,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 1  )
  AND actiontypeid  = 44  
 
 UNION all  
 -- ارسال پکیج انجام شده بعد از آپدیت مرحله رایت پکیج
SELECT 3,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 2  )
  AND actiontypeid  = 51  
 UNION all    
  --ارسال پکیج (سی دی)انجام شده نوبت پیگیری نصب
SELECT 4,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 3  )
  AND actiontypeid  = 51  
 -- AND 1=2  
 UNION ALL
 --هماهنگی نصب   در انتظار پاسخ مشتری  عدم پاسخگویی مشتری   
SELECT 5,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 3  )
  AND actiontypeid   IN (54,52,28)  
    
UNION ALL
-- نصب    آموزش و نصب
SELECT 6,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 4  )
  AND actiontypeid   IN (20,19)  
    
UNION ALL
-- آموزش و نصب   آموزش
SELECT 7,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 5  )
  AND actiontypeid   IN (22,19)  
    
UNION ALL
-- پیگیری نصب
SELECT 8,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) = 6  )
  AND actiontypeid   IN (22,19)  
    
UNION all
SELECT 9 Levels ,CustomerID,[ToDoDate],ISNULL([DoneDate],[ToDoDate]) Fdate,FollowUPID
FROM dbo.FollowUp AS FU WITH(NOLOCK)
 WHERE    FU.CustomerID IN ( SELECT [CustomerId] 
                             FROM [dbo].[Messages] WITH(NOLOCK)
                             WHERE MessageType = 1 AND IsAuto = 1 AND ISNULL(CustomerId,0) >0 AND LevelMessageId = 1 AND ISNULL(MaxLevelMessageId,0) < 7 )
  AND actiontypeid  = 56


GO
/****** Object:  View [dbo].[VWVersionDescription]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VWVersionDescription]      
AS      
 
SELECT DESCRIPTION  FROM [dbo].[ProductDetailVertion]
WHERE version = ( SELECT Value FROM dbo.SystemSettings WHERE VariableId = 3 )
AND ProductID  = 31

GO
ALTER TABLE [dbo].[ActivityUser_Log] ADD  CONSTRAINT [DF_ActivityUser_Log_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_CaseTypeID]  DEFAULT ((3)) FOR [CaseTypeID]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_CasePriorityId]  DEFAULT ((1)) FOR [CasePriorityId]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_Status]  DEFAULT ((0)) FOR [Completed]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_IsBug]  DEFAULT ((1)) FOR [IsBug]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_CurrentDate]  DEFAULT (getdate()) FOR [CurrentDate]
GO
ALTER TABLE [dbo].[Contract] ADD  CONSTRAINT [DF_Contract_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[Contract] ADD  CONSTRAINT [DF_Contract_ContractTypeID]  DEFAULT ((1)) FOR [ContractTypeID]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Address_MarketerID]  DEFAULT ((0)) FOR [MarketerID]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Address_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Insertdate]  DEFAULT ([dbo].[shamsi](getdate())) FOR [Insertdate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_LastUpdate]  DEFAULT ([dbo].[shamsi](getdate())) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CustomerStatusID]  DEFAULT ((1)) FOR [CustomerStatusID]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__UserAc__33CA93F7]  DEFAULT ((0)) FOR [UserAccessMode]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Custom__18777F3D]  DEFAULT ((0)) FOR [CustomerMiscalculation]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_ActionType_LevelID]  DEFAULT ((6)) FOR [ActionType_LevelID]
GO
ALTER TABLE [dbo].[ErrorMessage] ADD  CONSTRAINT [DF_ErrorMessage_ShowMessage]  DEFAULT (1) FOR [ShowMessage]
GO
ALTER TABLE [dbo].[FacDetails] ADD  CONSTRAINT [DF_FacDetails_DiscountLine]  DEFAULT ((0)) FOR [DiscountLine]
GO
ALTER TABLE [dbo].[FacDetails] ADD  CONSTRAINT [DF_FacDetails_TotalPriceLine]  DEFAULT ((0)) FOR [TotalPriceLine]
GO
ALTER TABLE [dbo].[FacDetails] ADD  CONSTRAINT [DF_FacDetails_AddedValueLine]  DEFAULT ((0)) FOR [AddedValueLine]
GO
ALTER TABLE [dbo].[Factor] ADD  CONSTRAINT [DF_Factor_CheckPrice]  DEFAULT ((0)) FOR [CheckPrice]
GO
ALTER TABLE [dbo].[Factor] ADD  CONSTRAINT [DF_Factor_IsCash]  DEFAULT ((0)) FOR [IsNonCash]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_IsWhere]  DEFAULT ((1)) FOR [IsWhere]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_ISString]  DEFAULT ((1)) FOR [ISString]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_IsLike]  DEFAULT ((1)) FOR [IsLike]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_EveryLike]  DEFAULT ((1)) FOR [EveryLike]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_VisibleInGrid]  DEFAULT ((1)) FOR [VisibleInGrid]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_isblob]  DEFAULT ((0)) FOR [isblob]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_order]  DEFAULT ((1)) FOR [order]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_DoneStatusID]  DEFAULT (1) FOR [DoneStatusID]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_SuccessChance]  DEFAULT (0) FOR [SuccessChance]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_insertdate]  DEFAULT (getdate()) FOR [insertdate]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_Lastupdate]  DEFAULT (getdate()) FOR [Lastupdate]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_IsFactor]  DEFAULT ((0)) FOR [IsFactor]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_IsPreFactor]  DEFAULT ((0)) FOR [IsPreFactor]
GO
ALTER TABLE [dbo].[FollowUp] ADD  CONSTRAINT [DF_FollowUp_IsAuto]  DEFAULT ((0)) FOR [IsAuto]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_effect]  DEFAULT (100) FOR [effect]
GO
ALTER TABLE [dbo].[Log_Processes] ADD  CONSTRAINT [DF_Log_Processes_currentDate]  DEFAULT (getdate()) FOR [currentDate]
GO
ALTER TABLE [dbo].[Marketer] ADD  CONSTRAINT [DF_Marketer_Tag]  DEFAULT ((1)) FOR [Tag]
GO
ALTER TABLE [dbo].[Marketer] ADD  CONSTRAINT [DF_Marketer_PPercent]  DEFAULT ((25)) FOR [PPercent]
GO
ALTER TABLE [dbo].[Marketer] ADD  CONSTRAINT [DF_Marketer_IsActive_]  DEFAULT ((1)) FOR [IsActive_]
GO
ALTER TABLE [dbo].[Marketer] ADD  CONSTRAINT [DF_Marketer_MarketerIsDone]  DEFAULT ((0)) FOR [MarketerIsDone]
GO
ALTER TABLE [dbo].[MediaMessage] ADD  CONSTRAINT [DF_MediaMessage_CurrentDate]  DEFAULT (getdate()) FOR [CurrentDate]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_CurrentDate]  DEFAULT (getdate()) FOR [CurrentDate]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_IsAuto]  DEFAULT ((0)) FOR [IsAuto]
GO
ALTER TABLE [dbo].[Organization] ADD  CONSTRAINT [DF_Organization_ParentID]  DEFAULT ((1)) FOR [ParentID]
GO
ALTER TABLE [dbo].[OutBox] ADD  DEFAULT (getdate()) FOR [SendDate]
GO
ALTER TABLE [dbo].[OutBox] ADD  DEFAULT ((0)) FOR [Inprocess]
GO
ALTER TABLE [dbo].[OutBox] ADD  DEFAULT ((0)) FOR [IsSend]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ProductCategoryID]  DEFAULT ((1)) FOR [ProductCategoryID]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CommisionPercent]  DEFAULT ((7)) FOR [CommisionPercent]
GO
ALTER TABLE [dbo].[TaskLog] ADD  CONSTRAINT [DF_TaskLog_DateLog]  DEFAULT (getdate()) FOR [DateLog]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_TaskCurrentDatetime]  DEFAULT (getdate()) FOR [TaskCurrentDatetime]
GO
ALTER TABLE [dbo].[TimeSheet] ADD  CONSTRAINT [DF_TimeSheet_Effect]  DEFAULT (1) FOR [Effect]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF_Unit_UnitCount]  DEFAULT ((1)) FOR [UnitCount]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_LoginTime]  DEFAULT (getdate()) FOR [LoginTime]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_LogoutTime]  DEFAULT (getdate()) FOR [LogoutTime]
GO
ALTER TABLE [dbo].[UserLoginLogout] ADD  CONSTRAINT [DF_UserLoginLogout_isSafeLogout]  DEFAULT (0) FOR [isSafeLogout]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_isadmin]  DEFAULT ((1)) FOR [isadmin]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ShowAllCu__4FF1D159]  DEFAULT ((1)) FOR [ShowAllCustomer]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsSystemUser]  DEFAULT ((0)) FOR [IsSystemUser]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ManagerSale]  DEFAULT ((0)) FOR [ManagerSale]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ManagerProduction]  DEFAULT ((0)) FOR [ManagerProduction]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ManagerSupport]  DEFAULT ((0)) FOR [ManagerSupport]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ManagerOfficial]  DEFAULT ((0)) FOR [ManagerOfficial]
GO
ALTER TABLE [dbo].[UsersCustomerAccess] ADD  DEFAULT ((0)) FOR [HasAccess]
GO
ALTER TABLE [dbo].[UserTableContentValue] ADD  CONSTRAINT [DF_UserTableContentValue_LastUpdate]  DEFAULT (getdate()) FOR [LastUpdate]
GO
ALTER TABLE [dbo].[UserTableContentValue] ADD  CONSTRAINT [DF_UserTableContentValue_InsertUserID]  DEFAULT ((0)) FOR [InsertUserID]
GO
ALTER TABLE [dbo].[ArtGroup]  WITH CHECK ADD  CONSTRAINT [FK_ArtGroup_ArtGroup] FOREIGN KEY([ArtGroup_Ref])
REFERENCES [dbo].[ArtGroup] ([ArtGroup_ID])
GO
ALTER TABLE [dbo].[ArtGroup] CHECK CONSTRAINT [FK_ArtGroup_ArtGroup]
GO
ALTER TABLE [dbo].[ArtGroup]  WITH CHECK ADD  CONSTRAINT [FK_ArtGroup_Store] FOREIGN KEY([Store_Ref])
REFERENCES [dbo].[Store] ([Store_ID])
GO
ALTER TABLE [dbo].[ArtGroup] CHECK CONSTRAINT [FK_ArtGroup_Store]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[ContractCheque]  WITH CHECK ADD  CONSTRAINT [FK_ContractCheque_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ContractID])
GO
ALTER TABLE [dbo].[ContractCheque] CHECK CONSTRAINT [FK_ContractCheque_Contract]
GO
ALTER TABLE [dbo].[ContractGuarantee]  WITH CHECK ADD  CONSTRAINT [FK_ContractGuarantee_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ContractID])
GO
ALTER TABLE [dbo].[ContractGuarantee] CHECK CONSTRAINT [FK_ContractGuarantee_Contract]
GO
ALTER TABLE [dbo].[ContractGuarantee]  WITH CHECK ADD  CONSTRAINT [FK_ContractGuarantee_GuaranteeType] FOREIGN KEY([GuaranteeTypeID])
REFERENCES [dbo].[GuaranteeType] ([GuaranteeTypeID])
GO
ALTER TABLE [dbo].[ContractGuarantee] CHECK CONSTRAINT [FK_ContractGuarantee_GuaranteeType]
GO
ALTER TABLE [dbo].[ContractPayByCash]  WITH CHECK ADD  CONSTRAINT [FK_ContractPayByCash_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ContractID])
GO
ALTER TABLE [dbo].[ContractPayByCash] CHECK CONSTRAINT [FK_ContractPayByCash_Contract]
GO
ALTER TABLE [dbo].[ContractSubType]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubType_ContractType] FOREIGN KEY([ContractTypeID])
REFERENCES [dbo].[ContractType] ([ContractTypeID])
GO
ALTER TABLE [dbo].[ContractSubType] CHECK CONSTRAINT [FK_ContractSubType_ContractType]
GO
ALTER TABLE [dbo].[FacDetails]  WITH CHECK ADD  CONSTRAINT [FK_FacDetails_Factor] FOREIGN KEY([Factor_Ref])
REFERENCES [dbo].[Factor] ([Factor_ID])
GO
ALTER TABLE [dbo].[FacDetails] CHECK CONSTRAINT [FK_FacDetails_Factor]
GO
ALTER TABLE [dbo].[FacDetails]  WITH CHECK ADD  CONSTRAINT [FK_FacDetails_Unit] FOREIGN KEY([Unit_Ref])
REFERENCES [dbo].[Unit] ([Unit_ID])
GO
ALTER TABLE [dbo].[FacDetails] CHECK CONSTRAINT [FK_FacDetails_Unit]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories]
GO
ALTER TABLE [dbo].[UserTypeContractType]  WITH CHECK ADD  CONSTRAINT [FK_UserTypeContractType_UserType] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserType] ([UserTypeId])
GO
ALTER TABLE [dbo].[UserTypeContractType] CHECK CONSTRAINT [FK_UserTypeContractType_UserType]
GO
ALTER TABLE [dbo].[UserTypeContractType]  WITH CHECK ADD  CONSTRAINT [FK_UserTypeContractType_UserTypeContractType] FOREIGN KEY([ContractTypeId])
REFERENCES [dbo].[ContractType] ([ContractTypeID])
GO
ALTER TABLE [dbo].[UserTypeContractType] CHECK CONSTRAINT [FK_UserTypeContractType_UserTypeContractType]
GO
/****** Object:  StoredProcedure [dbo].[addcontractFollow]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[addcontractFollow]
@Enddate  char(10),@followDate char(10)
as

INSERT INTO [Y_CRM].[dbo].[FollowUp]
           ([CustomerID] ,[ActionTypeID]  ,[DoneStatusID]  ,[MarketerID]  ,[Comment]
           ,[ToDoDate] ,[ToDoTime]  ,[insertdate] ,[UserTableLinkedID])

select contract.customerid,1,1,13,'پیگیری قرارداد پشتیبانی)(یگانه)'
,@followDate,'12:34',getdate(),-99
from contract
inner join customer on customer.customerid=contract.customerid
where not exists (select * from Contract where customerid=customer.customerid and enddate>dbo.shamsi(Getdate()))
and exists (select * from Contract where customerid=customer.customerid and enddate>@Enddate)
 and exists (select * from customerproduct where customerid=customer.customerid and ProductID not in (2,10,14))
group by contract.customerid,companyname
GO
/****** Object:  StoredProcedure [dbo].[CheckCustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckCustomer]
(
@CustotomerID	INT		
)
AS
DECLARE @result TINYINT
SET @result = 0

IF (SELECT count(*) FROM [Contract] WHERE CustomerID = @CustotomerID) > 0 
	SET @result = 1

IF (SELECT count(*) FROM FollowUp WHERE CustomerID = @CustotomerID) > 0 
	SET @result = 2

IF (SELECT count(*) FROM Person WHERE CustomerID = @CustotomerID) > 0 
	SET @result = 3
	
	
	SELECT @result ERROR

GO
/****** Object:  StoredProcedure [dbo].[Customer_NDayReport]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Customer_NDayReport]
@Number	 INT
AS

Select cast(t.CustomerId as nvarchar) CustomerIdStr,t.CustomerId,isnull(CompanyName,'')+'('+isnull(PersonTitle,'')+isnull(' - '+Treater,'')+')'  as NickName
			,ProductTitle,t.productid, f  ContractFinish FROM CustomerProduct cp
						INNER JOIN (
						SELECT ProductID,CustomerID,dbo.[ShamsiDateDiff](max(CONTRACT.EndDate),dbo.shamsi(GETDATE())) AS f FROM [CONTRACT] GROUP BY ProductID,CustomerID
						HAVING dbo.[ShamsiDateDiff](max(CONTRACT.EndDate),dbo.shamsi(GETDATE())) <= @Number 
							AND not ProductID IS NULL) t
							ON (t.ProductID = cp.ProductID AND t.CustomerID = cp.CustomerID )
			LEFT JOIN Product p ON p.productid = cp.ProductID
			LEFT JOIN Customer c ON cp.CustomerID = c.CustomerID
		
WHERE f > 0				
ORDER BY cp.CustomerId DESC
GO
/****** Object:  StoredProcedure [dbo].[DailyAverage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create procedure [dbo].[DailyAverage]   @Year char(4)  ,@ReportKind smallint,@AccountID INT =0  
AS    
  
-- DECLARE @Year char(4)  ,@ReportKind smallint,@AccountID INT   
-- SET  @Year='1389'  
-- SET  @ReportKind=1  
-- SET  @AccountID=6  
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
WHERE ACCOUNTTypeId=1 AND (@AccountID  =0 OR ac1.AccountID=@AccountID )  
    
------------DB    
INSERT INTO #P       
Select  DebtorAccountId,    
        Amount,    
        -1 status,    
        Date    ,  
        0     
From Payment Inner Join   
     Account AC2 on DebtorAccountId=ac2.AccountId      
WHERE ACCOUNTTypeId=1 AND (@AccountID  =0 OR AC2.AccountID=@AccountID )  
  
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
        Set @BeforAccountId =0  
  
        DECLARE Payment_Cursor CURSOR FOR  
 SELECT  AccountId,SUM(AMOUNT*STATUS) PRICE , DATE  
 FROM #P   
        WHERE DATE BETWEEN @FromDate AND @ToDate AND  (@AccountID  =0 OR AccountID=@AccountID )  
 GROUP BY AccountId,DATE   
        order by AccountId,DATE  
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
  
IF @ReportKind=1  
 SELECT #P2.ACCOUNTID,Account.AccountNo,AccountTitle,ROUND  (SUM(TotalPrice/365),0)   AS DailyAvrage  
-- SELECT #P2.ACCOUNTID,Account.AccountNo,AccountTitle,ROUND( ( (TotalPrice)/365),0  ) AS DailyAvrage  
 FROM  #p2 inner join Account on Account.AccountId=#P2.AccountId  
 GROUP BY #P2.ACCOUNTID,Account.AccountTitle,Account.AccountNo   
 ORDER BY #P2.ACCOUNTID    
  
IF @ReportKind=2  
 SELECT #P2.*,Account.AccountTitle,Account.AccountNo ,round((TotalPrice/365),0) as DailyAvr  
 FROM  #p2 inner join Account on Account.AccountId=#P2.AccountId  
 ORDER BY #P2.ACCOUNTID, #P2._Date  
   
   
DROP TABLE #_FirstPrice  
DROP TABLE #p  
DROP TABLE #p2  
  
GO
/****** Object:  StoredProcedure [dbo].[delete_Access]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[delete_Access]
@AccessID  tinyint
as

delete AccessObject
where AccessID=@AccessID


delete Access
where AccessID=@AccessID





GO
/****** Object:  StoredProcedure [dbo].[delete_Accesses]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

CREATE PROCEDURE [dbo].[delete_Accesses]
	(@AccessID 	[tinyint])

AS DELETE [dbo].[Accesses] 

WHERE 
	( [ID]	 = @AccessID)








GO
/****** Object:  StoredProcedure [dbo].[delete_Actions_ByFormID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_Actions_ByFormID]
	(@FormID 	[tinyint])

AS DELETE [dbo].[Actions] 

WHERE (
	 [FormID]	 = @FormID)








GO
/****** Object:  StoredProcedure [dbo].[delete_address_fromProduct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[delete_address_fromProduct]
(@ProductID tinyint,@where nvarchar(2000) )
as
declare @sqlCommand nvarchar(4000)
set @sqlCommand='delete ProductAddress
FROM       ProductAddress 
INNER JOIN  Address  ON Address.AddressId = ProductAddress.AddressId'

set @where=isnull(ltrim(rtrim(@where)),'')
if @ProductId<>0 
  if @where<>'' 
    set @where=@where+' and (ProductID = '+cast(@ProductId as varchar(3))+')'
   else
    set @where=@where+'( ProductID = '+cast(@ProductId as varchar(3))+')'

if @where<>'' 
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand

exec sp_executesql @sqlCommand





GO
/****** Object:  StoredProcedure [dbo].[delete_Attachment]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[delete_Attachment]
@AttachmentID int
as
DELETE Attachment
      WHERE AttachmentID=@AttachmentID




GO
/****** Object:  StoredProcedure [dbo].[delete_Customer_fromProduct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE  PROCEDURE [dbo].[delete_Customer_fromProduct]
(@ProductID tinyint,@where nvarchar(2000) )
as
declare @sqlCommand nvarchar(4000)
set @sqlCommand='delete CustomerProduct
FROM       CustomerProduct 
INNER JOIN  Customer  ON Customer.CustomerId = CustomerProduct.CustomerId'

set @where=isnull(ltrim(rtrim(@where)),'')
if @ProductId<>0 
  if @where<>'' 
    set @where=@where+' and (ProductID = '+cast(@ProductId as varchar(3))+')'
   else
    set @where=@where+'( ProductID = '+cast(@ProductId as varchar(3))+')'

if @where<>'' 
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand

exec sp_executesql @sqlCommand






GO
/****** Object:  StoredProcedure [dbo].[delete_extra]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_extra]
AS
delete
from customer
where isnull(ltrim(PersonTitle ),'')=''  and 
isnull(ltrim(Address ),'')=''  and 
isnull(ltrim(Phone ),'')=''  and 
isnull(ltrim(Notes ),'')=''  and 
isnull(ltrim(CompanyName ),'')=''  and 
isnull(ltrim(Treater ),'')=''  and 
isnull(ltrim(EmailAddress ),'')=''  and 
isnull(ltrim(WorkPhone1 ),'')=''  and 
isnull(ltrim(Website ),'')=''  and 
isnull(ltrim(MobilePhone ),'')=''  and 
isnull(ltrim(FaxNumber ),'')=''  




update  customer
set customerstatusid=4
where isnull(ltrim(PersonTitle ),'')=''  and 
isnull(ltrim(Address ),'')=''  and 
isnull(ltrim(Phone ),'')=''  and 
isnull(ltrim(Notes ),'')=''  and 
isnull(ltrim(CompanyName ),'')=''  and 
isnull(ltrim(Treater ),'')=''  and 
isnull(ltrim(WorkPhone1 ),'')=''  and 
isnull(ltrim(Website ),'')=''  and 
isnull(ltrim(MobilePhone ),'')=''  and 
isnull(ltrim(FaxNumber ),'')=''  
GO
/****** Object:  StoredProcedure [dbo].[delete_UserTable]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

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


delete tables
WHERE     (TableID = @tableid)



GO
/****** Object:  StoredProcedure [dbo].[DeleteUserTableContent]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 

CREATE Procedure [dbo].[DeleteUserTableContent]
 @UserTableLinkedID int
as
 

DELETE FROM UserTableContentValue
WHERE     (UserTableLinkedID = @UserTableLinkedID)


delete dbo.UserTableContent 
WHERE    (UserTableLinkedID = @UserTableLinkedID)





GO
/****** Object:  StoredProcedure [dbo].[Exist_ProductCustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[Exist_ProductCustomer]
	(@CustomerID 	[int],
	 @ProductID[tinyint],@exist bit output)

AS 

if exists (select *
from  [CustomerProduct] 

WHERE 
	( [CustomerID]	 = @CustomerID AND
	 [ProductID]	 = @ProductID))
set @Exist=1
else 
set @Exist=0





GO
/****** Object:  StoredProcedure [dbo].[Followup_cancel]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[Followup_cancel]
@Customerid int
as
update Customer
set     CancelReasonID=null, CancelComment=null, CancelDate=null,CustomerStatusid=1
WHERE     (CustomerID = @CustomerID)

GO
/****** Object:  StoredProcedure [dbo].[Get_Farsi_Message]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[Get_Farsi_Message]
 @ErrorMsg nvarchar(500),@FarsiMessage nvarchar(500) output,@ShowMsg bit output
as

SELECT    top 1  @FarsiMessage=FarsiMessage,@ShowMsg=showmessage
FROM         ErrorMessage
where @ErrorMsg like '%'+ErrorMessage+'%'
order by len(ErrorMessage) desc 

set @FarsiMessage=isnull(@FarsiMessage,'')
set @ShowMsg=isnull(@ShowMsg,1)




GO
/****** Object:  StoredProcedure [dbo].[Get_FieldName_byDescription]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[Get_FieldName_byDescription]
@Description nvarchar(50),@FieldName varchar(50) output
as

SELECT     @FieldName=FieldName
FROM      Field
where replace(replace(Description,nchar(1740),'D'),nchar(1610),'D')=replace(replace(@Description,nchar(1740),'D'),nchar(1610),'D')

set @FieldName=isnull(@FieldName,'NotFound')

print @Description




GO
/****** Object:  StoredProcedure [dbo].[Get_LastIndicatorID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Get_LastIndicatorID](@letter_type Tinyint ,@SecretariatID int,@Myear int,      
                @LetterFormat Tinyint,@newIndicatorid int Output)      
As  
  
Declare @RecivedInd int ,@SentInd  int,@InnerInd int,@DocInd int      
Declare @UniqueIndSec int , @UniqueIndSecID int
Declare @TempIndicatorID int

--منحصر بفرد بون شماره انديكاتور براي تمامي دبيرخانه ها
Set @UniqueIndSec = dbo.GetSystemValue('UniqueIndSec')
if @UniqueIndSec = 0  /* -1= Active , 0= InActive */   
begin

   /*آخرين مقدار نامه هاي داخلي*/ 
   Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=1       

   /*آخرين مقدار نامه هاي صادره*/
   Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=2

   /*آخرين مقدار نامه هاي داخلي*/
   Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=3

   /*آخرين مقدار نامه هاي مدارك*/  
   Select @DocInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=4
end
   else
   begin    
      /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
      Select @RecivedInd = isnull(Max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
                /*And SecretariatID=@SecretariatID*/ And letter_type=1       

      /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
      Select @SentInd = isnull(max(indicatorID),0)+1 from Letter where myear=@myear And LetterFormat=@LetterFormat      
                /*And SecretariatID=@SecretariatID*/ And letter_type=2

      /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
      Select @innerind = isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
             /*And SecretariatID=@SecretariatID*/ and letter_type=3       

      /*بدست آوردن بزرگترين شماره انديكاتور تمامي دبيرخانه ها*/
      Select @DocInd = isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
             /*And SecretariatID=@SecretariatID*/ and letter_type=4       
end  
    
--------
/*تنظيمات - شروع ش انديكاتور براي نامه هاي وارده*/      
if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3      
      
/*تنظيمات - شروع ش انديكاتور براي نامه هاي صادره*/          
if @SentInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3   
     
/*تنظيمات - شروع ش انديكاتور براي نامه هاي داخلي*/              
if @innerind<dbo.GetSystemValue('BeginIndicator')--3       
   set @innerind=dbo.GetSystemValue('BeginIndicator')--3      
--------
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
--------      
/*شماره نامه وارده و صادره پيوسته باشد*/      
if dbo.GetSystemValue('UniqeIndicator')=0   --5     
begin      
   if @SentInd > @RecivedInd      
      set @newIndicatorid=@SentInd      
   else      
      set @newIndicatorid=@RecivedInd          
end      
  
/*شماره نامه وارده و صادره مجزا و سريال باشد*/      
if dbo.GetSystemValue('UniqeIndicator')=1  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=@RecivedInd      
   if @letter_type=2      
      set @newIndicatorid=@SentInd      
end      
  
/*شماره نامه هاي صادره زوج  و وارده فرد باشد*/      
if dbo.GetSystemValue('UniqeIndicator')=2  --5    
begin      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd-1)/2)      
      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1      
end      
  
/*شماره نامه هاي صادره فرد  و وارده زوج باشد*/      
if dbo.GetSystemValue('UniqeIndicator')=3  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)      
      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1      
end   

GO
/****** Object:  StoredProcedure [dbo].[get_Level_hasChild]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_Level_hasChild]
(@ParentID 	[int], @hasChild bit output)

As

if exists( select id from  dbo.ActionType_Level WHERE  [ParentID]	 = @ParentID)
   set @haschild=1
else
  set @haschild=0

GO
/****** Object:  StoredProcedure [dbo].[get_LevelDescriptionByID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_LevelDescriptionByID]
(
	@ID		Int,
	@Description	Nvarchar(250) output
)

As

Select @Description = Description
	From dbo.ActionType_Level AS ATL
	Where [ID] = @ID
GO
/****** Object:  StoredProcedure [dbo].[Get_MaxAttachmentPage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create Procedure [dbo].[Get_MaxAttachmentPage]
@DocumentTypeID tinyint,@DocumentID int,@PageNumber tinyint output
as
SELECT     @PageNumber=isnull(max(PageNumber),0)
FROM         Attachment
WHERE     (DocumentTypeID = @DocumentTypeID) AND (DocumentID = @DocumentID)






GO
/****** Object:  StoredProcedure [dbo].[get_MaxReferenceDataID_By_TableID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_MinAttachmentPage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create Procedure [dbo].[Get_MinAttachmentPage]
@DocumentTypeID tinyint,@DocumentID int,@PageNumber tinyint output
as
SELECT     @PageNumber=isnull(min(PageNumber),0)
FROM         Attachment
WHERE     (DocumentTypeID = @DocumentTypeID) AND (DocumentID = @DocumentID)






GO
/****** Object:  StoredProcedure [dbo].[Get_NewDocumnetNo]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[Get_NewDocumnetNo] @Year tinyint,@NewDocumnetNo varchar(10) output
as


select  @NewDocumnetNo=max(cast(documentno as int ))+1
from payment
where substring(date,3,2)=@year


set @NewDocumnetNo=isnull(@NewDocumnetNo,'1')


GO
/****** Object:  StoredProcedure [dbo].[Get_ObjectAccess]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





Create Procedure [dbo].[Get_ObjectAccess]
@AccessId tinyint , @ObjectName varchar(50),@access bit output
as
SELECT     @access=Access
FROM         AccessObject
WHERE     (AccessId = @AccessId) AND (ObjectName = @ObjectName)

set @Access=isnull(@Access,1)





GO
/****** Object:  StoredProcedure [dbo].[get_ReferenceTable]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[get_ReferenceTableData_by_tableID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_Sum_Contract_Amount]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  procedure [dbo].[Get_Sum_Contract_Amount](@FromDate char(10),@ToDate char(10),@marketerID int=0,@amount bigint output)
AS
	SELECT     @amount=sum(amount)
FROM         Contract 
where (marketerID =@marketerID or @marketerID=0) and begindate between @FromDate  and @ToDate 


set @amount=isnull(@amount,0)
GO
/****** Object:  StoredProcedure [dbo].[Get_SystemSetting]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[Get_SystemSetting]
@VariableName varchar(50),@Value nvarchar(100)  output
AS
 exec Get_UserSetting -1,@VariableName,@value output


GO
/****** Object:  StoredProcedure [dbo].[get_Time]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[get_Time] (@minute smallint,@time char(5)output)
as
declare @t datetime

set @t=dateadd(mi,@minute,getdate())

select @time=case when datepart(hour,@t)<10 then '0'else '' end +cast(datepart(hour,@t) as varchar(2))+':'+
   case when datepart(mi,@t)<10 then '0'else '' end +cast(datepart(mi,@t) as varchar(2))
GO
/****** Object:  StoredProcedure [dbo].[get_userfields_by_tableID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Get_UserLogoutStatus]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[Get_UserLogoutStatus]
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
/****** Object:  StoredProcedure [dbo].[Get_UserSetting]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Get_UserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(100) output
AS
SELECT     @Value=Value
FROM         Setting
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)

set @Value=isnull(@Value,'')




GO
/****** Object:  StoredProcedure [dbo].[get_userTable]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[GetActionAccess]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Procedure [dbo].[GetActionAccess]
@AccessID int ,@ActionName varchar(50),@FormID  int,@HasAccess bit output
as
SELECT    @HasAccess= HasAccess
FROM         ActionsAccess
WHERE     (AccessID = @AccessID) AND (ActionName =@ActionName) AND (FormID = @FormID)

IF UPPER(@ActionName)=UPPER('btnDelEghdamat')
	set @HasAccess=isnull(@HasAccess,0)
ELSE
	set @HasAccess=isnull(@HasAccess,1)
GO
/****** Object:  StoredProcedure [dbo].[GetActionAccessByAccessID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetActionAccessByAccessID](@AccessID int)
as
Select aa.*,a.Title
from dbo.ActionsAccess aa
		LEFT JOIN Actions a ON a.ActionName = aa.ActionName 		
where AccessID=@AccessID
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerAbstractInfo]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetCustomerAbstractInfo]
@customerid int,@avgFollouwupDays int out ,@FollowCount int out
as
DECLARE @insertdate char(10),@contractDate char(10)


select @contractDate=min(begindate)
from contract
where customerid=@customerid

select @insertdate=insertdate
from customer
where customerid=@customerid

SELECT    @avgFollouwupDays=avgFollouwup
FROM         Product INNER JOIN
                      CustomerProduct ON Product.ProductID = CustomerProduct.ProductID
WHERE     (CustomerProduct.CustomerID = @customerid)

Select FollowCount=Count(*)
from   followup 
where customerid=@customerid and tododate<@contractdate 
GO
/****** Object:  StoredProcedure [dbo].[GetFieldValuesByUserTableContentID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure  [dbo].[GetFieldValuesByUserTableContentID] 
@UserTableContentID int
as
SELECT   UserTableContentValue.*,Fields.[order],
Fields.[Description],Fields.FieldTypeID,Fields.ReferenceTableID 
FROM     Fields    
left join  UserTableContentValue on Fields.ID = UserTableContentValue.FieldID 
WHERE   UserTableContentValue.UserTableContentID=@UserTableContentID 
ORDER BY Fields.[order]

 




GO
/****** Object:  StoredProcedure [dbo].[GetNewUserTableLinkedID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetNewUserTableLinkedID]
@NewUserTableLinkedID int out
as

SELECT @NewUserTableLinkedID=max(UserTableLinkedID)+1 FROM  UserTableContent 


set @NewUserTableLinkedID=isnull(@NewUserTableLinkedID,1)

GO
/****** Object:  StoredProcedure [dbo].[GetSystemSetting]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSystemSetting]
@VariableName varchar(50),@Value nvarchar(255)  output
AS
 exec GetUserSetting -1,@VariableName,@value output



GO
/****** Object:  StoredProcedure [dbo].[GetUserLogout_status]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





create PROCEDURE [dbo].[GetUserLogout_status]
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
/****** Object:  StoredProcedure [dbo].[GetUserSetting]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[GetUserTableContentBYID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetUserTableContentBYID]
@UserTableLinkedID int 
as

SELECT     *
FROM         UserTableContent
WHERE     (UserTableLinkedID = @UserTableLinkedID)


GO
/****** Object:  StoredProcedure [dbo].[Insert_AccessObject]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[Insert_AccessObject]
as
INSERT INTO  AccessObject ([AccessId] ,[ObjectName] ,[Access])
select AccessID,ObjectName,1
from  Access,Objects
where cast(AccessID as varchar(3))+ObjectName not in (select cast(AccessID as varchar(3))+ObjectName from AccessObject)




GO
/****** Object:  StoredProcedure [dbo].[insert_Actions]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_Actions]
	(
	 @FormID 	[tinyint],
	 @ActionName 	[nvarchar](50),
	 @Title 	[nvarchar](50)
)

AS INSERT INTO [dbo].[Actions]
	 ( FormID,
	 ActionName,
	 [Title])

VALUES
	( @FormID,
	 @ActionName,
	 @Title)



GO
/****** Object:  StoredProcedure [dbo].[insert_ActionType_Level]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_ActionType_Level]
	(@ParentID 	int,
	 @ChildID 	int,
	 @OrderId   INT,
	 @Description 	[nvarchar](200),
	 @Level int,
	 @Type INT,
	 @id INT OUTPUT )

AS INSERT INTO [dbo].[ActionType_Level] 
	 ( [ParentID]
      ,[ChildID]
      ,[OrderId]
      ,[Description]
      ,[Level]
      ,[Type]) 
 
VALUES 
	(@ParentID 	,
	 @ChildID ,
	 @OrderId   ,
	 @Description ,
	 @Level ,
	 @Type )
	 
	set @id =@@IDENTITY
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[insert_Bugs]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insert_Bugs]
	(@CustomerNo 	[varchar](50),
	 @Software 	[nvarchar](50),
	 @senderTitle 	[nvarchar](50),
	 @Comment 	[nvarchar](500))

AS INSERT INTO [Y_CRM].[dbo].[Bugs] 
	 ( [CustomerNo],
	 [Software],
	 [senderTitle],
	 [Comment]) 
 
VALUES 
	( @CustomerNo,
	 @Software,
	 @senderTitle,
	 @Comment)

GO
/****** Object:  StoredProcedure [dbo].[insert_Customer_toProduct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE  PROCEDURE [dbo].[insert_Customer_toProduct]
(@ProductID tinyint,@where nvarchar(2000) )
as
declare @sqlCommand nvarchar(4000)
set @sqlCommand='insert into CustomerProduct(CustomerID, ProductID)
select Customerid,'+cast(@ProductId as varchar(3)) +'
FROM      Customer '

set @where=isnull(ltrim(rtrim(@where)),'')
  if @where<>'' 
    set @where=@where+' and CustomerID not in (SELECT CustomerID FROM  CustomerProduct WHERE ProductID = '+cast(@ProductID as varchar(3))+')'
   else
    set @where=@where+' CustomerID not in (SELECT CustomerID FROM  CustomerProduct WHERE ProductID = '+cast(@ProductID as varchar(3))+')'

set @sqlCommand=@sqlCommand+' where '+@where
exec sp_executesql @sqlCommand



GO
/****** Object:  StoredProcedure [dbo].[insert_newActionsAccess]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_newActionsAccess]
AS 

IF NOT EXISTS(SELECT * FROM Actions WHERE UPPER(ActionName)=UPPER('acDelEghdamat'))
BEGIN
	INSERT INTO Actions(ActionName,FormID,Title)
	VALUES('acDelEghdamat',1,'حذف اقدامات')
END

IF NOT EXISTS(SELECT * FROM Actions WHERE UPPER(ActionName)=UPPER('BitBtnCase'))
BEGIN
	INSERT INTO Actions(ActionName,FormID,Title)
	VALUES('BitBtnCase',1,'مورد / باگ')
END

IF NOT EXISTS(SELECT * FROM Actions WHERE UPPER(ActionName)=UPPER('btnCasesAll'))
BEGIN
	INSERT INTO Actions(ActionName,FormID,Title)
	VALUES('btnCasesAll',1,'ليست همه موارد/باگ ها')
END

IF NOT EXISTS(SELECT * FROM Actions WHERE UPPER(ActionName)=UPPER('acgbTaskTime'))
BEGIN
	INSERT INTO Actions(ActionName,FormID,Title)
	VALUES('acgbTaskTime',1,'پنل مدت زمان انجام تسک')
END

IF NOT EXISTS(SELECT * FROM Actions WHERE UPPER(ActionName)=UPPER('acfollowUpItem'))
BEGIN
	INSERT INTO Actions(ActionName,FormID,Title)
	VALUES('acfollowUpItem',1,'دسترسی به تمام اقدامات')
END

IF NOT EXISTS(SELECT * FROM Actions WHERE UPPER(ActionName)=UPPER('acgbInformationSale'))
BEGIN
	INSERT INTO Actions(ActionName,FormID,Title)
	VALUES('acgbInformationSale',1,'اطلاعات تکمیلی فروش')
END


delete from ActionsAccess 
where str(formID) + ActionName not in (select str(formID) + ActionName from actions)							

INSERT INTO [dbo].[ActionsAccess] 
	 ( [AccessID],
	 ActionName,
	 FormID,
	 [HasAccess])

--SELECT     Accesses.ID,  Actions.ActionName,Actions.FormID,1 

SELECT     Accesses.ID,  Actions.ActionName,Actions.FormID,0 
FROM       Accesses,Actions 

where str(accesses.id) + actions.ActionName not in
 (select STR(Accessid) + ActionName  from dbo.ActionsAccess)
GO
/****** Object:  StoredProcedure [dbo].[insert_newActionsAccess_New]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[insert_newActionsAccess_New]  
AS  
delete from ActionsAccess where str(formID)+ActionName not in (select str(formID)+ActionName from  
actions)  
  
INSERT INTO [dbo].[ActionsAccess]   
  ( [AccessID],  ActionName,  FormID,  [HasAccess])  

 

  
SELECT     Accesses.ID,  Actions.ActionName,Actions.FormID,0   
FROM         Accesses,Actions   
where ActionName IN(SELECT  ActionName  From Actions Where Str(formID)+ActionName Not IN 
(select str(formID)+ActionName From ActionsAccess) ) 
 
GO
/****** Object:  StoredProcedure [dbo].[Insert_Objects]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE Procedure [dbo].[Insert_Objects]
@ObjectName  varchar(50),@ObjectCaption nvarchar(50),@GroupTitle nvarchar(50)
as
if not exists (select * from Objects  where ObjectName=@ObjectName)
INSERT INTO Objects   ([ObjectName] ,ObjectCaption,GroupTitle)    
 VALUES      (@ObjectName  ,@ObjectCaption ,@GroupTitle)




GO
/****** Object:  StoredProcedure [dbo].[insert_ProductCustomer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[insert_ProductCustomer]
	(@CustomerID 	[int],
	 @ProductID 	[tinyint])

AS
if @ProductID<>0 
 if not exists(select * from CustomerProduct
WHERE CustomerID = @CustomerID AND ProductID = @ProductID)
 INSERT INTO [CustomerProduct] 
	 ( [CustomerID],
	 [ProductID]) 

VALUES 
	( @CustomerID,
	 @ProductID)




GO
/****** Object:  StoredProcedure [dbo].[insert_SiteLink]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[insert_SiteLink](    
@Page varchar(1000)   ,
@Link nvarchar(4000)   ,
@Date nvarchar(50) ,
@FileName varchar(50)
)
as
INSERT INTO  SiteLink
           ([Page]
           ,[Link]
           ,[Date],FileName)
     VALUES
           (@Page
           ,@Link
           ,@Date,@FileName)
GO
/****** Object:  StoredProcedure [dbo].[Insert_Task]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Insert_Task]
@CaseId INT
,@Desc NVARCHAR(500)
,@UserRefrence INT

AS

Insert into Tasks (CaseId,Comment,StatusId,AssignedUserId,AssignedDate)values(@CaseId,@Desc,8,@UserRefrence,dbo.Shamsi(GETDATE()))
        
        
RETURN SCOPE_IDENTITY();                                
GO
/****** Object:  StoredProcedure [dbo].[insert_UserLoginLogout]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_UserLoginLogout]
	( @UserID 	[int],
	 @IPAddress 	[char](15),
@UserLoginLogoutID int output)

AS 

INSERT INTO [dbo].[UserLoginLogout] 
	 ( [UserID],
	 [IPAddress]) 
 
VALUES 
	(
	 @UserID,
	 @IPAddress)
set @UserLoginLogoutID=@@identity


GO
/****** Object:  StoredProcedure [dbo].[MakeMarketerRep]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE  [dbo].[MakeMarketerRep](@FromDate char(10),@ToDate char(10))
AS
set @FromDate='1389/03/01'
select Customerid,Customerstatusid,Customer.MarketerID,MarketerTitle,0 FollowCount into #c
from customer
inner join marketer on marketer.marketerid=customer.marketerid
where  tag=1 and insertdate between @FromDate and @ToDate

update #c 
set FollowCount=(select count(*) from  Followup where Customerid=#c.customerid)


select MarketerTitle ,MarketerID,
count(*) CustomerCount,
sum(FollowCount) all_Followup, 
sum(case when Customerstatusid in (1,2,3) then FollowCount else 0 end) Followup123,
sum(case when Customerstatusid=2 then FollowCount else 0 end ) Followup2,
sum(case when Customerstatusid=1 then 1 else 0 end ) Count1,
sum(case when Customerstatusid=2 then 1 else 0 end ) Count2,
sum(case when Customerstatusid=3 then 1 else 0 end ) Count3,
sum(case when Customerstatusid=4 then 1 else 0 end ) Count4,
sum(case when Customerstatusid=5 then 1 else 0 end ) Count5,
cast(0 as float) avg123,
cast(0 as float) avg2

into #m
from #c
group by MarketerTitle,MarketerID
declare @s1 int,@s2 int,@s3 int ,@s4 int ,@s5 int,@s0 int

select   @s0=sum(CustomerCount),@s1=sum(count1),@s2=sum(count2),@s3=sum(count3),@s4=sum(count4),@s5=sum(count5)
from #m


insert into #m(Marketerid,MarketerTitle,CustomerCount,Count1,Count2,Count3,Count4,count5,Followup123,Followup2)
select 0, 'مجموع', @s0,@s1,@s2,@s3,@s4,@s5,sum(Followup123),sum(Followup2)
from #m

update #m
set  avg123 = case when Count1+Count2+Count3=0  then 0 else  round(Followup123/(Count1+Count2+Count3),1) end
,    avg2   = case when        Count2       =0  then 0 else  round(Followup2  /(       Count2       ),1) end


select MarketerID,MarketerTitle,CustomerCount,Count1,Count2,Count3,Count4,count5, Avg2,avg123,
--case when CustomerCount=0 then 0 else (100*count1)/CustomerCount end percent11 ,
--case when CustomerCount=0 then 0 else (100*count2)/CustomerCount end percent12,
--case when CustomerCount=0 then 0 else (100*count3)/CustomerCount end percent13,
--case when CustomerCount=0 then 0 else (100*count4)/CustomerCount end percent14,
--case when CustomerCount=0 then 0 else (100*count5)/CustomerCount end percent15,
case when @s1=0 then 0 else (100*count1)/@s1 end percent21,
case when @s2=0 then 0 else (100*count2)/@s2 end percent22,
case when @s3=0 then 0 else (100*count3)/@s3 end percent23,
case when @s4=0 then 0 else (100*count4)/@s4 end percent24,
case when @s5=0 then 0 else (100*count5)/@s5 end percent25,
case when @s0=0 then 0 else 100*CustomerCount/@s0 end Percent0,
case when count2= 0 then 0 else (100*count2)/(count1+count2+count3) end ContractPercent,followup2,Followup123  into ##m
from #m






GO
/****** Object:  StoredProcedure [dbo].[MakeMarketerRep_bkp]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE  [dbo].[MakeMarketerRep_bkp](@FromDate char(10),@ToDate char(10))
AS


select Customerid,Customerstatusid,Customer.MarketerID,MarketerTitle,0 FollowCount into #c
from customer
inner join marketer on marketer.marketerid=customer.marketerid
where  tag=1 and insertdate between @FromDate and @ToDate

update #c 
set FollowCount=(select count(*) from  Followup where Customerid=#c.customerid)


select MarketerTitle ,MarketerID,
count(*) CustomerCount,
sum(FollowCount) all_Followup, 
sum(case when Customerstatusid in (1,2,3) then FollowCount else 0 end) Followup123,
sum(case when Customerstatusid=2 then FollowCount else 0 end ) Followup2,
sum(case when Customerstatusid=1 then 1 else 0 end ) Count1,
sum(case when Customerstatusid=2 then 1 else 0 end ) Count2,
sum(case when Customerstatusid=3 then 1 else 0 end ) Count3,
sum(case when Customerstatusid=4 then 1 else 0 end ) Count4,
sum(case when Customerstatusid=5 then 1 else 0 end ) Count5,
cast(0 as float) avg123,
cast(0 as float) avg2

into #m
from #c
group by MarketerTitle,MarketerID
declare @s1 int,@s2 int,@s3 int ,@s4 int ,@s5 int,@s0 int

select   @s0=sum(CustomerCount),@s1=sum(count1),@s2=sum(count2),@s3=sum(count3),@s4=sum(count4),@s5=sum(count5)
from #m


insert into #m(Marketerid,MarketerTitle,CustomerCount,Count1,Count2,Count3,Count4,count5,Followup123,Followup2)
select 0, 'مجموع', @s0,@s1,@s2,@s3,@s4,@s5,sum(Followup123),sum(Followup2)
from #m

update #m
set  avg123 = case when Count1+Count2+Count3=0  then 0 else  round(Followup123/(Count1+Count2+Count3),1) end
,    avg2   = case when        Count2       =0  then 0 else  round(Followup2  /(       Count2       ),1) end


select MarketerID,MarketerTitle,CustomerCount,Count1,Count2,Count3,Count4,count5, Avg2,avg123,
case when CustomerCount=0 then 0 else (100*count1)/CustomerCount end percent11 ,
case when CustomerCount=0 then 0 else (100*count2)/CustomerCount end percent12,
case when CustomerCount=0 then 0 else (100*count3)/CustomerCount end percent13,
case when CustomerCount=0 then 0 else (100*count4)/CustomerCount end percent14,
case when CustomerCount=0 then 0 else (100*count5)/CustomerCount end percent15,
case when @s1=0 then 0 else (100*count1)/@s1 end percent21,
case when @s2=0 then 0 else (100*count2)/@s2 end percent22,
case when @s3=0 then 0 else (100*count3)/@s3 end percent23,
case when @s4=0 then 0 else (100*count4)/@s4 end percent24,
case when @s5=0 then 0 else (100*count5)/@s5 end percent25,
case when @s0=0 then 0 else 100*CustomerCount/@s0 end Percent0,
case when count2= 0 then 0 else (100*count2)/(count1+count2+count3) end ContractPercent,followup2,Followup123 into ##m
from #m 






GO
/****** Object:  StoredProcedure [dbo].[MakeUserTableContentValue]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







create procedure [dbo].[MakeUserTableContentValue]
 @UserTableContentID int
as 
declare @TableID int
select @TableID=TableID from dbo.UserTableContent
where id=@UserTableContentID

delete UserTableContentValue where fieldid not in (select id from fields where  TableID=@TableID)


INSERT INTO  UserTableContentValue (UserTableContentID ,FieldID)
 select @UserTableContentID,ID
FROM Fields where TableID=@TableID
and id not in (select fieldid from UserTableContentValue where UserTableContentID=@UserTableContentID)





GO
/****** Object:  StoredProcedure [dbo].[MarketerInsertRate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
  
  
  
  
CREATE PROCEDURE  [dbo].[MarketerInsertRate](@FromDate char(10),@ToDate char(10))  
AS  
--DECLAre @FromDate char(10)
--DECLAre @ToDate char(10)
--set @ToDate='1399/01/01'

set @FromDate='1389/10/13'  
declare @now char(5)  
exec get_Time 0,@now  output  
  
exec update_Crm  
exec delete_extra  


select Customerid,Customerstatusid,Customer.MarketerID,MarketerTitle,0 FollowCount 
into ##c  
from customer  
       inner join marketer on marketer.marketerid=customer.marketerid  
where  tag=1 and insertdate between @FromDate and @ToDate  
  
update  ##c   
set FollowCount=(select count(*) from  Followup where Customerid=##c.customerid/*#c.customerid*/)

  
select c.MarketerID,MarketerTitle,PPercent,  
sum(case when Customerstatusid in (1,2,3) then isnull(effect,100)/100.0 else 0 end) CustomerCount,  
round(dbo.PresentTime2(c.MarketerId,@FromDate , @ToDate,@now)/600.0,2) days,  
cast(0  as float) rate,  
cast(0 as int) ExceptedCount  
into  ##N  
from customer c  
     inner join marketer on marketer.marketerid=c.marketerid  
     left join groups on groups.groupid=c.groupid  
where  tag=1 and insertdate between @FromDate and @ToDate  
group by MarketerTitle,c.MarketerID,PPercent  
  
declare @N int,@SumPercent_Days float  
  
select @n=sum(customerCount),@SumPercent_Days=sum((PPercent*Days))  
from ##N  
  
  
update ##N  
set  rate = case when days=0 then 0 else  round(CustomerCount/days,2) end,  
exceptedCount=case when @SumPercent_Days=0 then 0 else (@n*PPercent*days/@SumPercent_Days) end -CustomerCount  
  
  
/*insert into ##N(Marketerid,MarketerTitle,CustomerCount,days,ppercent,exceptedCount)  
select 0, 'مجموع', @n,sum(days),100,sum(exceptedCount)  
from ##N  
*/  
Select *  
From ##N  
Order BY ExceptedCount Desc ,CustomerCount,marketerid  
  
Drop Table ##N  
Drop Table ##C
  
  
  
  
  
  
  
  
GO
/****** Object:  StoredProcedure [dbo].[PAY_BENEFIT_New]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[PAY_BENEFIT_New]      
                                       @Year char(4)  ,  
                                       @AccountID INT,  
                                       @BENEFITPERCENT FLOAT,  
                                       @InsertUserId INT ,  
                                       @InsertedMode INT --0 show the information,1 means insert info  
AS  
--Declare @Year char(4),@AccountID INT,        @BENEFITPERCENT FLOAT,        @InsertUserId INT  
DECLARE @ToDate varchar(10) ,@FromDate varchar(10),@TedadRooz INTEGER  
-- SET @Year='1389'  
-- SET @AccountID=0  
-- SET @BENEFITPERCENT=4  
-- SET @InsertUserId=1  
SET @FromDate =@Year+'/01/01'  
SET @ToDate =(Select DBO.ShamsiIncDate(@Year+'/01/01' ,1 ,0,0) )  
  
  
------------CB------------------------------------------------------------------------------------  
Select  CreditorAccountId   AccountId,    
        Amount,    
        Cast(1 as smallint) status,    
        Date,      
        Cast(0 as float) TotalPrice   
INTO #P      
From  Payment  Inner Join     
      Account ac1 on creditorAccountId=ac1.AccountId      
WHERE ACCOUNTTypeId=1 AND ISACTIVE=1 AND (@AccountID  =0 OR ac1.AccountID=@AccountID )  
------------DB------------------------------------------------------------------------------------    
INSERT INTO #P       
Select  DebtorAccountId,    
        Amount,    
        -1 status,    
        Date    ,  
        0     
From Payment Inner Join   
     Account AC2 on DebtorAccountId=ac2.AccountId      
WHERE ACCOUNTTypeId=1 AND ISACTIVE=1 AND (@AccountID  =0 OR AC2.AccountID=@AccountID )  
---------------------------------------------------------------------------------------------------  
        SELECT  CAST(0 AS integer) AccountId ,  
                Cast(0 as float) /*BeforPrice_TMP */ as MojoodiEbtedayeDore ,  
                Cast(0 as float) /*@Price*/mojoodiRooz ,  
                Cast(0 as float) /*@BeforPrice*/MojRoozJamShodehBaRozGhabl ,  
                Cast(0 as int)   /*@BeforPrice*/TedadRooz ,  
                Cast('0000/00/00' as varchar(10)) _DATE     ,  
                Cast(0 as float)  /*TotalPrice*/ TotalPrice   
        INTO #p2  
  
        SELECT DISTINCT AccountId,SUM(AMOUNT*STATUS) FirstPrice   
        INTO #_FirstPrice   
 FROM #P  
        WHERE date<@FromDate AND  (@AccountID  =0 OR AccountID=@AccountID )  
 GROUP BY AccountId         
------------------------------------------------------------------------------------------------------------------------------------------------------  
        DECLARE @_AccountId INT ,@Price  float ,@BeforPrice float ,@DATE VARCHAR(10)  ,@BeforAccountId int,@BeforPrice_TMP float  
 SET @BeforPrice =0  
        Set @BeforAccountId =0  
  
        DECLARE Payment_Cursor CURSOR FOR  
 SELECT  AccountId,SUM(AMOUNT*STATUS) PRICE , DATE  
 FROM #P   
        WHERE DATE BETWEEN @FromDate AND @ToDate AND  (@AccountID  =0 OR AccountID=@AccountID )  
 GROUP BY AccountId,DATE   
        order by AccountId,DATE  
        OPEN Payment_Cursor   
  
 FETCH NEXT FROM PAYMENT_CURSOR INTO @_ACCOUNTID,@PRICE,@DATE  
 WHILE @@FETCH_STATUS = 0  
 BEGIN  
           SET @BEFORPRICE_TMP=0  
           IF (@BEFORACCOUNTID<>@ACCOUNTID)  
           BEGIN  
              SET @BEFORPRICE =ISNULL((SELECT FIRSTPRICE FROM #_FIRSTPRICE  WHERE ACCOUNTID=@_ACCOUNTID),0)   
              SET @BEFORPRICE_TMP=@BEFORPRICE  
           END  
  
           SET @BEFORPRICE=@BEFORPRICE+@PRICE  
  
--           SELECT @BEFORPRICE_TMP 'موجودي ابتداي دوره',@PRICE AS 'موجودي روز',@BEFORPRICE AS 'موجودي روز که با روزهاي قبل جمع شده', DBO.SHAMSIDATEDIFF(@DATE,'1390/01/01') AS  'تعداد روز'  
           SET  @TEDADROOZ=(SELECT(DBO.SHAMSIDATEDIFF(@DATE, @TODATE)           ))  
           INSERT INTO #P2  
           SELECT @_ACCOUNTID  ,  
                  @BEFORPRICE_TMP   ,  
                  @PRICE  ,  
                  @BEFORPRICE   ,  
                  @TEDADROOZ AS TEDADROOZ ,  
                  @DATE AS _DATE ,  
                  @PRICE*@TEDADROOZ AS TOTALPRICE  
  
    SET @BEFORACCOUNTID=@_ACCOUNTID   
    FETCH NEXT FROM PAYMENT_CURSOR INTO @_ACCOUNTID,@PRICE,@DATE  
 END  
 CLOSE PAYMENT_CURSOR DEALLOCATE PAYMENT_CURSOR  
     
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
         FLOOR((@BENEFITPERCENT* SUM(TotalPrice/100))) AS InsertedBenefitPrice  ,  
         SUM(TotalPrice/365)                               AS AnnualAvragePrice  
 FROM  #P2 INNER JOIN ACCOUNT ON #P2.ACCOUNTID=ACCOUNT.ACCOUNTID   
 WHERE #P2.ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)    
 GROUP BY #P2.ACCOUNTID,ACCOUNT.AccountTitle, ACCOUNT.AccountNO  
 HAVING SUM(TotalPrice)>0  
 ORDER BY #P2.ACCOUNTID    
  
  
IF @InsertedMode=1  
BEGIN  
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
         @BENEFITACCOUNTID                                             ,  
         DBO.SHAMSI( GETDATE())as [date]                               ,  
         CAST(@TIME AS VARCHAR(5))as [time]                            ,  
         FLOOR((@BENEFITPERCENT* SUM(TotalPrice/100)))  BENEFITPERCENT ,  
         'سود سپرده گذاري در تاريخ "'+DBO.SHAMSI( GETDATE()) +'"'      ,  
         0                                                             ,  
         0                                                             ,  
         @INSERTUSERID   as  INSERTUSERID                              ,  
         DBO.SHAMSI(GETDATE()) as date                                 ,  
         1 AS PAYTYPEID                                                ,  
         @NewDocumentNo  as NewDocumentNo      
 FROM  #P2   
 WHERE ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)    
 GROUP BY ACCOUNTID  
 HAVING SUM(TotalPrice)>0  
 ORDER BY #P2.ACCOUNTID    
  
 Insert Into Benefit(ACCOUNTID,[YEAR],DocumentNo    ,InsertedBenefitPrice                                                ,AnnualAvragePrice,InsertedDate          ,InsertedUserId, BenefitPercent)  
-- SELECT              ACCOUNTID,@Year ,@NewDocumentNo, FLOOR((@BENEFITPERCENT* SUM(TotalPrice/100)))  InsertedBenefitPrice,SUM(TotalPrice)  , DBO.SHAMSI(GETDATE()),@InsertUserId ,@BENEFITPERCENT       
 SELECT              ACCOUNTID,@Year ,@NewDocumentNo, FLOOR((@BENEFITPERCENT* SUM(TotalPrice/100)))  InsertedBenefitPrice,SUM(TotalPrice/365)  , DBO.SHAMSI(GETDATE()),@InsertUserId ,@BENEFITPERCENT       
 FROM  #P2   
 WHERE ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)    
 GROUP BY ACCOUNTID  
 HAVING SUM(TotalPrice)>0  
 ORDER BY #P2.ACCOUNTID    
  
  
 SELECT       #P2.ACCOUNTID,  
          ACCOUNT.AccountNO,  
          ACCOUNT.AccountTitle,  
          @BENEFITACCOUNTID             AS BENEFITACCOUNTID,  
          DBO.SHAMSI( GETDATE())        AS [date],  
          CAST(@TIME AS VARCHAR(5)) AS [time],  
          FLOOR((@BENEFITPERCENT* SUM(TotalPrice/100))) AS InsertedBenefitPrice  ,  
--          SUM(TotalPrice)   AS AnnualAvragePrice  
          SUM(TotalPrice/365)   AS AnnualAvragePrice  
 FROM  #P2 INNER JOIN ACCOUNT ON #P2.ACCOUNTID=ACCOUNT.ACCOUNTID   
 WHERE #P2.ACCOUNTID NOT IN (SELECT ACCOUNTID FROM Benefit WHERE [YEAR]=@YEAR)    
 GROUP BY #P2.ACCOUNTID,ACCOUNT.AccountTitle, ACCOUNT.AccountNO  
 HAVING SUM(TotalPrice)>0  
 ORDER BY #P2.ACCOUNTID    
END  
  
   
 DROP TABLE #_FirstPrice  
 DROP TABLE #p  
 DROP TABLE #p2  
GO
/****** Object:  StoredProcedure [dbo].[Postpone_task]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Postpone_task]
@TaskId int,@days smallint
as
update Task
set ToDoTime=DATEADD(day, @days, ToDoTime)
where TaskId=@TaskId

GO
/****** Object:  StoredProcedure [dbo].[Report_Cancles]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Report_Cancles] 

 @CancelReasonId INT,
 @MarketerID INT,
 @ProductID INT,
 @InsertDateFrom  CHAR(10),
 @InsertDateTo  CHAR(10),
 @CancelDateFrom CHAR(10),
 @CancelDateTo CHAR(10)
  
AS
--DECLARE @CancelReasonId INT
--DECLARE @MarketerID INT 
--DECLARE @ProductID INT 
--DECLARE @InsertDateFrom  CHAR(10) 
--DECLARE @InsertDateTo  CHAR(10) 
--DECLARE @CancelDateFrom CHAR(10) 
--DECLARE @CancelDateTo CHAR(10)
--       
--SET @CancelReasonId=0
--SET @MarketerID=0
--SET @ProductID=0
--SET @InsertDateFrom='0'
--SET @InsertDateTo='0'
--SET @CancelDateFrom='0'
--SET @CancelDateTo='0'
 
IF ltrim(rtrim(@InsertDateFrom))=''
  SET @InsertDateFrom='0'

IF ltrim(rtrim(@InsertDateTo))=''	
	SET @InsertDateTo='0'
IF ltrim(rtrim(@CancelDateFrom))=''
    SET @CancelDateFrom='0'

IF ltrim(rtrim(@CancelDateTo))=''
	SET @CancelDateTo='0'
 


SELECT     Customer.CustomerID, Customer.CustomerNo, Customer.PersonTitle, CancelReason.CancelReasonTitle, Customer.CancelComment, 
                      Customer.Insertdate, Customer.CancelDate, CustomerStatus.CustomerStatusTitle, Customer.CompanyName, Customer.Notes, Marketer_1.MarketerNo, 
                      Marketer_1.MarketerTitle, dbo.fn_ProductByCustomerID(Customer.CustomerID) AS Products,
                          (SELECT     COUNT(1) AS Expr1
                             FROM         FollowUp INNER JOIN
                                                   Marketer ON Marketer.MarketerID = FollowUp.MarketerID AND FollowUp.MarketerID = Marketer.MarketerID
                             WHERE     (FollowUp.CustomerID = Customer.CustomerID)) AS TotalNoOfPeygiri,
                          (SELECT     COUNT(1) AS Expr1
                             FROM         FollowUp AS FollowUp_1 INNER JOIN
                                                   Marketer AS Marketer_2 ON Marketer_2.MarketerID = FollowUp_1.MarketerID
                             WHERE     (FollowUp_1.CustomerID = Customer.CustomerID)) AS NoOfPeygiriByMarketer, Product.ProductTitle,
                              CustomerProduct.ProductID
FROM         Product INNER JOIN
                      CustomerProduct ON Product.ProductID = CustomerProduct.ProductID RIGHT OUTER JOIN
                      Customer INNER JOIN
                      CustomerStatus ON CustomerStatus.CustomerStatusID = Customer.CustomerStatusID INNER JOIN
                      CancelReason ON CancelReason.CancelReasonID = Customer.CancelReasonID INNER JOIN
                      Marketer AS Marketer_1 ON Customer.MarketerID = Marketer_1.MarketerID ON CustomerProduct.CustomerID = Customer.CustomerID
WHERE     (Customer.CustomerStatusID = 3) AND
          (CancelReason.CancelReasonId=@CancelReasonId or  @CancelReasonId =0) AND
          (Customer.MarketerID=@MarketerID OR @MarketerID=0) AND
          (CustomerProduct.ProductID=@ProductID OR @ProductID=0) AND
          ((Customer.Insertdate >=@InsertDateFrom AND Customer.Insertdate<=@InsertDateTo) OR (@InsertDateFrom='0' AND @InsertDateTo='0')) AND
          ((Customer.CancelDate >=@CancelDateFrom AND Customer.CancelDate<=@CancelDateTo)OR (@CancelDateFrom='0' AND @CancelDateTo='0'))  



GO
/****** Object:  StoredProcedure [dbo].[Report_Contract]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[Report_Contract]
@where nvarchar(1000)
as
declare @sqlCommand nvarchar(4000)
set @sqlCommand='SELECT C.CustomerNo, C.PersonTitle, Marketer.MarketerTitle ContactMarketerTitle, C.Address, C.Phone,
 C.Notes, C.CompanyName,  C.EmailAddress, C.PostalCode, C.Treater, C.WorkPhone1, C.Website,
 C.MobilePhone,  C.FaxNumber, C.CompetitiveNote, C.Insertdate, Groups.GroupTitle, CustomerStatus.CustomerStatusTitle, City.CityTitle, 
Compagin.CompaginTitle,StateTitle,  Marketer_1.MarketerTitle CustomerMarketerTitle,dbo.fn_ProductByCustomerID(C.CustomerID) Products,   Contract.*,
ProductTitle ,ContractTypeTitle,
CAST(Contract.Amount AS Float)*dbo.fn_ProductPercentByCustomerID(c.CustomerID)/100 Comission
,InsuranceAccount,GoodJobPercentage,TaxPercentage
,(Case when isnull(Sake,8) = 0 then ''داراي ضمانت پيش پرداخت''
		when isnull(Sake,8) = 1 then ''داراي ضمانت  حسن انجام كار''
		end) SakeTitle 
FROM Customer C
inner JOIN  Contract ON C.CustomerID = Contract.CustomerID 
Left JOIN Marketer ON C.MarketerID = Marketer.MarketerID 
Left JOIN  Marketer AS Marketer_1 ON C.MarketerID = Marketer_1.MarketerID 
Left JOIN Groups ON C.GroupId = Groups.GroupID
Left JOIN CustomerStatus ON C.CustomerStatusID = CustomerStatus.CustomerStatusID 
Left JOIN Compagin ON C.CompaginID = Compagin.CompaginID
Left JOIN City ON C.CityId = City.CItyId
left join State on City.StateId = State.StateId
Left join product on product.productID = Contract.productId
Left Join ContractType on Contract.ContractTypeID = ContractType.ContractTypeID
Left Join ContractSubType on Contract.ContractSubTypeID = ContractSubType.ContractSubTypeID
left join ContractGuarantee on Contract.ContractID = ContractGuarantee.ContractID
'
set @Where=isnull(ltrim(rtrim(@Where)),'')
if @Where<>'' 
 set @where=' where '+@Where

set @sqlCommand=@sqlCommand+@where
exec sp_executesql @sqlCommand
--print @sqlCommand

GO
/****** Object:  StoredProcedure [dbo].[Report_Contract_forSale]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Report_Contract_forSale]
(
@StartDate		nvarchar(10)
,@EndDate		nvarchar(10)
,@MarketerID		int =0 
,@ContractTypeID	int
,@ProductID		int
--,@CustomerId		int
,@UserTypeID		INT
, @UserID			INT
,@StateID           INT
,@CityID            INT
)
as


DECLARE  @TaxDate CHAR(10),@MYear INT
	set @TaxDate =(SELECT [VALUE] from Settings WHERE VariableName = 'TaxDate')


SELECT COUNT (Amount) CountC, SUM (Amount) Amount, SUM(TotalAmount) TotalAmount
FROM (
SELECT -- Customer.PersonTitle, Customer.CompanyName, Contract.ContractID, Contract.CustomerID, 
        --Contract.BeginDate, Contract.EndDate, Contract.SignUpDate, 
		Contract.Amount Amount --,Marketer.MarketerTitle, Customer.CustomerNo,ContractTypeTitle,ProductTitle AS Product,
      --  dbo.fn_GetCommisionPercent(CONTRACT.ProductID, CONTRACT.MarketerID, SUBSTRING(Contract.BeginDate,1,4) ) * Contract.Amount / 100  Comission
         --parsa      
         -- ,(CASE WHEN (@TaxDate <> '') AND ( BeginDate >= @TaxDate) THEN 		
	     --Round(Amount + ( (isnull((select TaxPercentage from dbo.TaxPerYear where [Year] = substring(BeginDate,1,4)),0)/100) * Amount ) ,0)  
       ,(CASE WHEN (@TaxDate <> '') AND (ISNULL(SignUpDate, BeginDate) >= @TaxDate) THEN 	     
	     Round(Amount + ( (isnull((select TaxPercentage from dbo.TaxPerYear where [Year] = substring(ISNULL(SignUpDate, BeginDate),1,4)),0)/100) * Amount ) ,0)  
	     --parsa
	     ELSE 	Amount	END  ) AS 	TotalAmount
FROM  dbo.Contract
	  left JOIN    product on (Contract.productID = product.productID)
      inner JOIN   Customer ON Contract.CustomerID = Customer.CustomerID 
      inner JOIN   Marketer ON Contract.MarketerID = Marketer.MarketerID
	  left join    ContractType CT on (CT.ContractTypeId = Contract.ContractTypeId) 
where	
	(Contract.ProductId	 = @ProductId	or @ProductId = 0) 
	and (
			( BeginDate >= @StartDate or @StartDate = '') and ( (BeginDate <= @EndDate) or @EndDate = '') 
			)
	and (Contract.ContractTypeID = @ContractTypeID  or @ContractTypeID	= 0)

	and (Customer.CityId = @CityId or @CityId = 0)
	and (Customer.StateID = @StateID or @StateID = 0)
	
	and (Contract.ContractTypeId in (select ContractTypeId from UserTypeContractType where UserTypeID =  @UserTypeID) or @UserTypeID  = 0 )
	AND (@MarketerID = 0 OR Marketer.MarketerID = @MarketerID )
	
--order by BeginDate desc
) tt
GO
/****** Object:  StoredProcedure [dbo].[Report_Customer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE  PROCEDURE [dbo].[Report_Customer]
(@ProductID tinyint,@where nvarchar(2000),@Top int )
as
declare @sqlCommand nvarchar(4000)
set @sqlCommand='SELECT Top '+cast(@top as varchar(10))+' 
 case when lTrim(rtrim(CompanyName))<>'''' then CompanyName+''(''+PersonTitle+'')'' else PersonTitle end as nickname,
    Customer.*,                       Groups.GroupTitle, Groups.GroupNo, Marketer.MarketerNo, Marketer.MarketerTitle, VWCities.CityTitle
FROM         Customer left JOIN
                      Groups ON Customer.GroupId = Groups.GroupID left JOIN
                      Marketer ON Customer.MarketerID = Marketer.MarketerID left JOIN
                      VWCities ON Customer.CityId = VWCities.CityID '


set @where=isnull(ltrim(rtrim(@where)),'')
if @ProductId<>0 
  if @where<>'' 
    set @where=@where+' and CustomerID in (SELECT CustomerID FROM  CustomerProduct WHERE ProductID = '+cast(@ProductId as varchar(3))+')'
   else
    set @where=@where+'  CustomerID in (SELECT CustomerID FROM  CustomerProduct WHERE ProductID = '+cast(@ProductId as varchar(3))+')'

if @where<>'' 
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand

exec sp_executesql @sqlCommand

GO
/****** Object:  StoredProcedure [dbo].[Report_GroupbyMarketer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE Procedure  [dbo].[Report_GroupbyMarketer]
 @DateFrom char(10),@dateTo char(10)
as
select *
from  ##n 
order by exceptedCount desc 

drop table ##n




GO
/****** Object:  StoredProcedure [dbo].[Report_Marketer_TimeSheet]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE  [dbo].[Report_Marketer_TimeSheet](@MarketerID int ,@FromDate char(10),@ToDate char(10))
AS
DECLARE @UI INT
SELECT @UI=ID FROM USERS WHERE MarketerID=@MarketerID

SELECT      hollyDates.Date WorkDate ,  EnterTime,  ExitTime,
CAST(dbo.usefulltime(Workdate,EnterTime,  ExitTime)/60 AS VARCHAR(2))+':'+CAST(dbo.usefulltime(Workdate,EnterTime,  ExitTime)%60 AS VARCHAR(2)) UsefullTime,
case when Is_hollydate=1 then 3 
     when TimeSheetid is null and Is_hollydate=0 then 2
else 1 end stat
,525-dbo.usefulltime(Workdate,EnterTime,  ExitTime) 
FROM         hollyDates 
FULL OUTER join (SELECT * FROM TimeSheet where  USERID=@UI ) TimeSheet on hollyDates.Date=WorkDate
where ISNULL(USERID,@UI)=@UI and hollyDates.Date between @FromDate and @ToDate
order by workdate


GO
/****** Object:  StoredProcedure [dbo].[Report_Marketer_TimeSheet2]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_Marketer_TimeSheet2](@UserID int ,@FromDate char(10),@ToDate char(10))    
AS  
    
DECLARE @UI INT    
SELECT @UI=@UserID    

--SELECT  HollyDates.Date WorkDate , EnterTime , ExitTime ,    
--       dbo.TimeDiff(EnterTime,ExitTime) UsefullTime ,    
--       Case when Is_hollydate=1 then 3     
--            when TimeSheetid is null and Is_hollydate=0 then 2    
--       else 1 end stat    
--       ,525 - dbo.usefulltime(Workdate,EnterTime,ExitTime) ,Comment          
--FROM HollyDates     
--FULL OUTER join (SELECT * FROM TimeSheet where  USERID=@UI ) TimeSheet on hollyDates.Date=WorkDate    
--where ISNULL(USERID,@UI)=@UI and hollyDates.Date between @FromDate and @ToDate    
--Order By WorkDate 


SELECT	t.WorkDate,EnterTime, t.ExitTime,
		dbo.TimeDiff(EnterTime,ExitTime) UsefullTime ,
		1 AS stat,
		525 - dbo.usefulltime(t.Workdate,t.EnterTime,t.ExitTime) , t.Comment 
FROM TimeSheet t 
INNER JOIN Users u ON t.UserID=u.Id
WHERE (t.WorkDate BETWEEN @FromDate and @ToDate) AND (u.Id=@UserID)
Order By t.WorkDate 
GO
/****** Object:  StoredProcedure [dbo].[rpConactByDate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE Procedure [dbo].[rpConactByDate]
@FromDate char(10) ,@Todate char(10) 
as

SELECT hollydates.id DayID,CustomerID,CustomerStatusID,Insertdate into ##c
FROM   Customer 
inner join hollydates on hollydates.Date=insertdate
where InsertDate between @FromDate and @Todate

select  ##c.CustomerStatusID, CustomerStatusTitle  into #m
from ##C
Left JOIN dbo.CustomerStatus  ON ##c.CustomerStatusID = CustomerStatus.CustomerStatusID  
group by CustomerStatusTitle,##c.CustomerStatusID 


select  distinct InsertDate  into ##n
from ##C 

declare @sql nvarchar(4000),@m nvarchar(4000)
set @sql='Select insertdate,'
set @m='Select ''جمع'','

select @sql=@sql+'
(Select Count(*) from ##c where  insertdate=##n.Insertdate and CustomerStatusID='+cast(CustomerStatusID as varchar(20))+') ['+CustomerStatusTitle+'],',
@m=@m+'
(Select Count(*) from ##c where CustomerStatusID='+cast(CustomerStatusID as varchar(20))+'),'
from #m


set @sql=@sql+'
(Select Count(*) from ##c where  CustomerStatusID in (1,2,3) and insertdate=##n.Insertdate) [تماسهای مفید],'
set @m=@m+'
(Select Count(*) from ##c where  CustomerStatusID in (1,2,3)) ,'

set @sql=@sql+'
(Select Count(*) from ##c where  insertdate=##n.Insertdate ) [جمع]'
set @m=@m+'
(Select Count(*) from ##c) '

set @sql=@sql+' 
from ##n '
set @m=@m+' 
from ##n'
set @sql=@sql+' 
union 
'+@m+
' 
order by insertdate desc '
exec (@sql)

print @sql 
  


drop table #m
drop table ##n
drop table ##c






GO
/****** Object:  StoredProcedure [dbo].[rpConactByWeek]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[rpConactByWeek]
@FromDate char(10) ,@insertdate char(10) 
as

SELECT distinct hollydates.WeekNumber into #t
FROM   Customer 
inner join hollydates on hollydates.Date=insertdate
where InsertDate between @FromDate and @insertdate

SELECT hollydates.WeekNumber ,CustomerID,CustomerStatusID,Insertdate into ##c
FROM   Customer 
inner join hollydates on hollydates.Date=insertdate
where hollydates.WeekNumber in (select WeekNumber from #t)

select  ##c.CustomerStatusID, CustomerStatusTitle  into #m
from ##C
Left JOIN dbo.CustomerStatus  ON ##c.CustomerStatusID = CustomerStatus.CustomerStatusID  
group by CustomerStatusTitle,##c.CustomerStatusID 


select  WeekNumber,min(InsertDate) InsertDate  into ##n
from ##C
group by WeekNumber


declare @sql nvarchar(4000),@m nvarchar(4000)
set @sql='Select insertdate,'
set @m='Select ''جمع'','

select @sql=@sql+'
(Select Count(*) from ##c where  WeekNumber=##n.WeekNumber and CustomerStatusID='+cast(CustomerStatusID as varchar(20))+') ['+CustomerStatusTitle+'],',
@m=@m+'
(Select Count(*) from ##c where CustomerStatusID='+cast(CustomerStatusID as varchar(20))+'),'
from #m

set @sql=@sql+'
(Select Count(*) from ##c where  CustomerStatusID in (1,2,3) and WeekNumber=##n.WeekNumber ) [تماسهای مفید],'
set @m=@m+'
(Select Count(*) from ##c where  CustomerStatusID in (1,2,3)) ,'
set @sql=@sql+'
(Select Count(*) from ##c where  WeekNumber=##n.WeekNumber ) [جمع]'
set @m=@m+'
(Select Count(*) from ##c) '

set @sql=@sql+' 
from ##n '
set @m=@m+' 
from ##n'
set @sql=@sql+' 
union 
'+@m+
' 
order by insertdate desc'
exec (@sql)

print @sql 
  


drop table #m
drop table ##n
drop table ##c



GO
/****** Object:  StoredProcedure [dbo].[rpConactByWeekProduct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[rpConactByWeekProduct]
@FromDate char(10) ,@Todate char(10) 
as

SELECT distinct hollydates.WeekNumber into #t
FROM   Customer 
inner join hollydates on hollydates.Date=insertdate
where InsertDate between @FromDate and @Todate
and CustomerStatusID in (1,2,3)

SELECT hollydates.WeekNumber  ,Insertdate,
 dbo.fn_ProductCategoryByCustomerID(CustomerID) ProductTitle,
 dbo.fn_ProductCategoryIDByCustomerID(CustomerID) ProductID into ##c
FROM   Customer 
inner join hollydates on hollydates.Date=insertdate
where hollydates.WeekNumber in (select WeekNumber from #t)
and CustomerStatusID in (1,2,3)
 
select  distinct ProductID, ProductTitle  into #m
from ##C 


select  WeekNumber,min(InsertDate) InsertDate  into ##n
from ##C
group by WeekNumber


declare @sql nvarchar(4000),@m nvarchar(4000)
set @sql='Select insertdate,'
set @m='Select ''جمع'','

select @sql=@sql+'
(Select Count(*) from ##c where  WeekNumber=##n.WeekNumber and ProductID='+cast(ProductID as varchar(20))+') ['+ProductTitle+'],',
@m=@m+'
(Select Count(*) from ##c where ProductID='+cast(ProductID as varchar(20))+'),'
from #m


set @sql=@sql+'
(Select Count(*) from ##c where  WeekNumber=##n.WeekNumber ) [جمع]'
set @m=@m+'
(Select Count(*) from ##c) '

set @sql=@sql+' 
from ##n '
set @m=@m+' 
from ##n'
set @sql=@sql+' 
union 
'+@m+
' 
order by insertdate desc '
exec (@sql)

print @sql 
  


drop table #m
drop table ##n
drop table ##c




GO
/****** Object:  StoredProcedure [dbo].[rpContractMarketer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[rpContractMarketer]
@FromDate char(10) ,@Todate char(10)

as
 

SELECT  CUSTOMERID,begindate,amount/10000 amount,marketerid,
 dbo.fn_ProductByCustomerID(CustomerID) Products,   
Amount*dbo.fn_ProductPercentByCustomerID(CustomerID)/100 Comission into ##c
FROM   Contract   
where begindate between @FromDate and @Todate

  
select sum(amount) amount,##c.MarketerID, MarketerTitle into #m
from ##C
Left JOIN Marketer ON ##c.MarketerID = Marketer.MarketerID  
group by MarketerTitle,##c.MarketerID
having sum(amount)>0

 
select distinct substring(begindate,1,7) months into ##n
from ##C

declare @sql nvarchar(4000),@m nvarchar(4000)
set @sql='Select months,'
set @m='Select ''جمع'','

select @sql=@sql+'
(Select sum(amount) from ##c where  begindate  like months+''%'' and MarketerID='+cast(MarketerID as varchar(2))+') ['+MarketerTitle+'],',
@m=@m+'(Select sum(amount) from ##c where MarketerID='+cast(MarketerID as varchar(2))+'),'
from #m

set @sql=@sql+'(Select sum(amount) from ##c where  begindate  like months+''%'' ) [جمع]'
set @m=@m+'(Select sum(amount) from ##c) '

set @sql=@sql+' from ##n'
set @m=@m+' from ##n'
set @sql=@sql+' union '+@m
exec (@sql)

print @sql 
  

drop table #m
drop table ##n
drop table ##c



GO
/****** Object:  StoredProcedure [dbo].[rpContractMarketerRate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[rpContractMarketerRate]
@FromDate char(10) ,@Todate char(10)

as
 

select  marketer.MarketerID,MarketerTitle, count(*) CustomerCount into ##m
from customer
inner join marketer on marketer.marketerid=customer.marketerid
where    insertdate between @FromDate and @ToDate and
 CustomerStatusID in (1,2,3)
group by MarketerTitle,marketer.MarketerID


  

SELECT   Sum(amount)/10000 amount,Contract.marketerid into ##c
FROM   Contract   
inner join customer on Contract.customerID=customer.customerID
where insertdate between @FromDate and @Todate
group by Contract.marketerid

insert into ##m
select 999, 'جمع',sum(CustomerCount)  from ##m
where marketerid in (select marketerid from ##C)

insert into ##c
select sum(amount) amount,999 from ##c 
where marketerid in (select marketerid from ##m)



Select marketerTitle,amount/CustomerCount AmountRate,CustomerCount,amount 
from ##c
inner join ##m on  ##c.marketerid=##m.marketerid
order by ##c.marketerid


drop table ##M
drop table ##c






GO
/****** Object:  StoredProcedure [dbo].[rpContractProduct]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[rpContractProduct]
@FromDate char(10) ,@Todate char(10)

as
 

SELECT  begindate,amount/10000 amount ,
 dbo.fn_ProductCategoryByCustomerID(CustomerID) ProductTitle,
 dbo.fn_ProductCategoryIdByCustomerID(CustomerID) ProductID into ##c
FROM   Contract  
where begindate between @FromDate  and @Todate

select sum(amount) amount,ProductID,ProductTitle into #m
from ##C
group by ProductTitle,ProductID
having sum(amount)>0

 
select distinct substring(begindate,1,7) months into ##n
from ##C

declare @sql nvarchar(4000),@m nvarchar(4000)
set @sql='Select months,'
set @m='Select ''جمع'','

select @sql=@sql+'
(Select sum(amount) from ##c where  begindate  like months+''%'' and ProductID='''+cast(ProductID as varchar(20))+''') ['+ProductTitle+'],',
@m=@m+'(Select sum(amount) from ##c where ProductID='''+cast(ProductID as varchar(20))+'''),'
from #m

set @sql=@sql+'(Select sum(amount) from ##c where  begindate  like months+''%'' ) [جمع]'
set @m=@m+'(Select sum(amount) from ##c) '

set @sql=@sql+' from ##n'
set @m=@m+' from ##n'
set @sql=@sql+' union '+@m
exec (@sql)



drop table #m
drop table ##n
drop table ##c



GO
/****** Object:  StoredProcedure [dbo].[rpMarketer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE  [dbo].[rpMarketer]
--declare
@FromDate char(10),@ToDate char(10)
AS
--set @FromDate= ''--'1388/11/01'
--set @ToDate=''--'1389/04/31'
select Customerid,insertdate,Customerstatusid,Customer.MarketerID,MarketerTitle,0 FollowCount into #c
from customer
inner join marketer on marketer.marketerid=customer.marketerid
where  tag=1 and insertdate between @FromDate and @ToDate

update #c 
set FollowCount=(select count(*) from  Followup where Customerid=#c.customerid
 and ToDoDate<=isnull(
(select min(BeginDate) from contract where Customerid=#c.customerid)
,'1399/99/99'))


select MarketerTitle ,MarketerID,
sum(case when Customerstatusid in (1,2,3) then 1 else 0 end) CustomerCount,
sum(FollowCount) all_Followup, 
sum(case when Customerstatusid in (1,2,3) then FollowCount else 0 end) Followup123,
sum(case when Customerstatusid=2 then FollowCount else 0 end ) Followup2,
sum(case when Customerstatusid=1 then 1 else 0 end ) Count1,
sum(case when Customerstatusid=2 then 1 else 0 end ) Count2,
sum(case when Customerstatusid=3 then 1 else 0 end ) Count3 ,
cast(0 as float) avg123,
cast(0 as float) avg2

into #m
from #c
group by MarketerTitle,MarketerID
declare @s1 int,@s2 int,@s3 int ,@s0 int

select   @s0=sum(CustomerCount),
@s1=sum(count1),
@s2=sum(count2),@s3=sum(count3)
from #m




insert into #m(Marketerid,MarketerTitle,CustomerCount,Count1,Count2,Count3,Followup123,Followup2)
select 0, 'مجموع', @s0,@s1,@s2,@s3,sum(Followup123),sum(Followup2)
from #m

update #m
set  avg123 = case when Count1+Count2+Count3=0  then 0 else case when Count1+Count2+Count3>0 then round(Followup123/( Count1+Count2+Count3),1) else 0 end end
,    avg2   = case when        Count2       =0  then 0 else case when Count2>0 then round(Followup2  /(       Count2       ),1) else 0 end  end


select MarketerID,MarketerTitle,CustomerCount,Count1,Count2,Count3, Avg2,avg123,
case when CustomerCount=0 then 0 else (100*count1)/CustomerCount end percent11 ,
case when CustomerCount=0 then 0 else (100*count2)/CustomerCount end percent12,
case when CustomerCount=0 then 0 else (100*count3)/CustomerCount end percent13,
case when @s1=0 then 0 else (100*count1)/@s1 end percent21,
case when @s2=0 then 0 else (100*count2)/@s2 end percent22,
case when @s3=0 then 0 else (100*count3)/@s3 end percent23,
case when @s0=0 then 0 else 100*CustomerCount/@s0 end Percent0,
 (100*count2)/(count1+count2+count3)   ContractPercent,
followup2,Followup123  
from #m
where CustomerCount>0









GO
/****** Object:  StoredProcedure [dbo].[SalaryList]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[SalaryList]
@month char(7)
as
SELECT  distinct identity(int,1,1) n,  slrSalaryItems.ID, slrSalaryItems.Title,OrderNo into #m
FROM         slrSalary 
INNER JOIN  Users ON slrSalary.PersonalID = Users.Id 
INNER JOIN  slrSalaryItems ON slrSalary.SalaryItemID = slrSalaryItems.ID
WHERE     isactive=1 and (slrSalary.month = @month) and amount<>0
order by orderno
 
declare @i int,@m int,@sql nvarchar(4000)  
select  @m =max(n)
from #m 

set @i=1 

set @sql=' select users.Title userTitle'
while @i<=@m 
begin
select @sql=@sql+',(select amount from   slrSalary where PersonalID = Users.Id and 
 month = '''+@month+''' and SalaryItemID='+cast(#m.id as varchar(2))+') as ['+#m.title+']
'
from #m
where n=@i
set @i=@i+1
end

 
set @sql=@sql+',(SELECT   Sum(effect*amount )
FROM         slrSalary ,slrSalaryItems 
WHERE   slrSalary.SalaryItemID=slrSalaryItems.id and  (PersonalID = Users.Id) AND  month = '''+@month+''') [مجموع]'


set @sql=@sql+',(SELECT   Sum(effect*amount )
FROM         slrSalary ,slrSalaryItems 
WHERE   slrSalary.SalaryItemID=slrSalaryItems.id and  (PersonalID = Users.Id) AND  month = '''+@month+'''
and  slrSalary.SalaryItemID not in (12,13,16)) [مجموع بدون صندوق]'

set @sql=@sql+',(SELECT   Sum(effect*amount )
FROM         slrSalary ,slrSalaryItems 
WHERE   slrSalary.SalaryItemID=slrSalaryItems.id and  (PersonalID = Users.Id) AND  month = '''+@month+'''
and  slrSalary.SalaryItemID not in (10,12,13,16)) [مجموع بی صندوق و بیمه]'

set @sql=@sql+'
from   Users 
where isactive=1 and  (select isnull(sum(amount),0) from   slrSalary where PersonalID = Users.Id and 
 month = '''+@month+''')>0'
exec(@sql)
print @sql




GO
/****** Object:  StoredProcedure [dbo].[SaveAs_Access]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  PROCEDURE [dbo].[SaveAs_Access]
	( @AccessTitle nvarchar(50),@oldaccessID int ,@newID int output)

AS
 
INSERT INTO Access	 ( AccessTitle) VALUES ( @AccessTitle)

 select @newID=max(AccessID) from Access

print @newid
insert into AccessObject(accessid,ObjectName, Access)
SELECT     @newid,ObjectName, Access
FROM         AccessObject
where accessid=@oldaccessID

set @newID=isnull(@newID,0)




GO
/****** Object:  StoredProcedure [dbo].[SaveAs_Accesses]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

CREATE  PROCEDURE [dbo].[SaveAs_Accesses]
	( @Title nvarchar(50),@oldaccessID int ,@newID int output)

AS
 INSERT INTO [dbo].[Accesses]
	 ( [Title])

VALUES ( @Title)

select @newID=max(ID)
from accesses


insert into ActionsAccess(accessid,ActionName, FormID, HasAccess)
SELECT     @newid,ActionName, FormID, HasAccess
FROM         ActionsAccess
where accessid=@oldaccessID

insert into ActionsAccess(accessid,ActionName, FormID, HasAccess)
SELECT     Accesses.ID AS accessid, ActionName, Actions.FormID, 0 AS hasaccess
FROM         Actions , Accesses
where str(Accesses.ID)+Actions.ActionName not in (select str(accessid)+str(ActionName) from ActionsAccess)


GO
/****** Object:  StoredProcedure [dbo].[Search_Contract_Advance]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Search_Contract_Advance]
(
@StartDate		nvarchar(10)
,@EndDate		nvarchar(10)
,@MarketerID		int =0 
,@ContractTypeID	int
,@ProductID		int
,@CustomerId		int
,@UserTypeID		INT
, @UserID			INT
)
as


DECLARE  @TaxDate CHAR(10),@MYear INT
	set @TaxDate =(SELECT [VALUE] from Settings WHERE VariableName = 'TaxDate')


SELECT  Customer.PersonTitle, Customer.CompanyName, Contract.ContractID, Contract.CustomerID, Contract.BeginDate, Contract.EndDate, Contract.SignUpDate, 
		Contract.Amount,Marketer.MarketerTitle, Customer.CustomerNo,ContractTypeTitle,ProductTitle AS Product,

--dbo.fn_ProductCommisionPercent(CONTRACT.ProductID,Contract.BeginDate)*Contract.Amount/100 Comission
dbo.fn_GetCommisionPercent(CONTRACT.ProductID,CONTRACT.MarketerID,SUBSTRING(Contract.BeginDate,1,4))*Contract.Amount/100 Comission

					--parsa	
--,(CASE WHEN (@TaxDate <> '')AND ( BeginDate >=@TaxDate) THEN 				
--					Round(Amount+(
					--(isnull((select TaxPercentage from TaxPerYear where [Year] = substring(BeginDate,1,4)),0)/100)*Amount
,(CASE WHEN (@TaxDate <> '')AND (ISNULL(SignUpDate, BeginDate) >=@TaxDate) THEN 				
					Round(Amount+(					
					(isnull((select TaxPercentage from TaxPerYear where [Year] = substring(ISNULL(SignUpDate, BeginDate),1,4)),0)/100)*Amount
					--parsa
									) ,0)  
				ELSE 	Amount	END
				)AS 							
									TotalAmount

FROM         Contract
					left join product on (Contract.productID = product.productID)
                    inner JOIN   Customer ON Contract.CustomerID = Customer.CustomerID 
                    inner JOIN  Marketer ON Contract.MarketerID = Marketer.MarketerID
					left join ContractType CT on (CT.ContractTypeId = Contract.ContractTypeId) 
where	
	(Contract.ProductId		 = @ProductId		or @ProductId		= 0) 
	and (
			( BeginDate >= @StartDate or @StartDate = '') and ( (BeginDate <= @EndDate) or @EndDate = '') 
			)
	and (Contract.ContractTypeID = @ContractTypeID  or @ContractTypeID	= 0)

	--and (Marketer.MarketerID=@MarketerID or @MarketerID=0)
	and (Customer.CustomerId =@CustomerId or @CustomerId=0)
	and (Contract.ContractTypeId in (select ContractTypeId from UserTypeContractType where UserTypeID =  @UserTypeID) or @UserTypeID  = 0 )
	AND (@MarketerID = 0 OR Marketer.MarketerID=@MarketerID OR EXISTS(SELECT * FROM UsersCustomerAccess uca WHERE uca.CustomerID = CONTRACT.CustomerID AND uca.UserID = @UserID AND uca.HasAccess = 1))
order by BeginDate desc
GO
/****** Object:  StoredProcedure [dbo].[Search_ContractDetail]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Search_ContractDetail]  
(  
  @StartDate   char(10)  
,@EndDate  char(10)  
,@ContractTypeID int  
,@MarketerID int  
,@ProductId  int  
,@TaxPercentage float  
,@GoodJobPercentage float  
,@customerid int  
,@UserTypeID int  
)  
as  

-- DECLARE @StartDate  char(10)  
-- ,@EndDate  char(10)  
-- ,@ContractTypeID int  
-- ,@MarketerID int  
-- ,@ProductId  int  
-- ,@TaxPercentage float  
-- ,@GoodJobPercentage float  
-- ,@customerid int  
-- ,@UserTypeID int  

  
-- SET @StartDate=''
-- SET @EndDate= '' 
-- SET @ContractTypeID=0
-- SET @MarketerID=0 
-- SET @ProductId=0
-- SET @TaxPercentage=-1 
-- SET @GoodJobPercentage=-1  
-- SET @customerid=15  
-- SET @UserTypeID=1  


  
DECLARE  @TaxDate CHAR(10)  
 set @TaxDate =(SELECT [VALUE] from Settings WHERE VariableName = 'TaxDate')  
  
  
Select Contract.*,ContractTypeTitle,ContractSubTypeTitle,ProductTitle,MarketerTitle  
     --parsa
--,(CASE WHEN (@TaxDate <> '')AND ( BeginDate >=@TaxDate) THEN       
--     Round(Amount+(   
     --(isnull((select TaxPercentage from TaxPerYear where [Year] = substring(BeginDate,1,4)),0)/100)*Amount  
,(CASE WHEN (@TaxDate <> '')AND (ISNULL(SignUpDate, BeginDate) >=@TaxDate) THEN       
     Round(Amount+(        
     (isnull((select TaxPercentage from TaxPerYear where [Year] = substring(ISNULL(SignUpDate, BeginDate),1,4)),0)/100)*Amount  
     --parsa
         ) ,0)    
    ELSE  Amount END  
    )AS          
         TotalAmount  
  
from Contract   
  left join ContractType on (Contract.ContractTypeId = ContractType.ContractTypeID)  
  left join ContractSubType on (Contract.ContractSubTypeId = ContractSubType.ContractSubTypeID)  
  left join Product on   (Contract.ProductId = Product.ProductId)  
  left join Marketer on (Contract.MarketerID = Marketer.MarketerID)  
  
where customerid=@customerid  
and (Contract.ContractTypeId in (select ContractTypeId from UserTypeContractType where UserTypeID =  @UserTypeID) or @UserTypeID = 0)  
 and (  
   ( BeginDate >= @StartDate or @StartDate = '') and ( (EndDate <= @EndDate) or @EndDate = '')   
   )  
 and (Contract.ContractTypeID = @ContractTypeID  or @ContractTypeID = 0)  
 and (Contract.MarketerID     = @MarketerID  or @MarketerID  = 0)  
 and (Contract.ProductId   = @ProductId  or @ProductId  = 0)   
 and (isnull(TaxPercentage,0) = @TaxPercentage or @TaxPercentage = -1)  
 and (isnull(GoodJobPercentage,0) = @GoodJobPercentage or @GoodJobPercentage = -1)  
 ORDER  BY CONTRACT.ContractID desc

GO
/****** Object:  StoredProcedure [dbo].[Search_Serial]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_Serial]
(
@Network tinyint
,@StartDate nvarchar(15),@EndDate nvarchar(15)
,@ProductId tinyint
,@customerId int
)
as

Select Serial.CustomerID,PersonTitle,companyName,Serial.* ,/*productTitle,*/dbo.shamsi(SerDate) SerDateShamsi
		,u.UserName
from Serial 
LEFT join customer ON (Customer.CustomerId = Serial.CustomerId)
LEFT join Users u ON Serial.UserID=u.Id
--INNER join Product ON (CAST(Product.Code AS INT) = Serial.productID)
where (Network  = @Network  or @Network = 2)
			and
 	  (dbo.shamsi(SerDate)  >= @StartDate or @StartDate = '') 
			and
	  (dbo.shamsi(SerDate)  <= @EndDate or @EndDate = '') 
			and
	  (Serial.ProductID = @ProductId or @ProductId = 0)
			and
	  (Serial.CustomerId = @customerId or @customerId = 0)
			and
	  (Serial.CustomerDelivery = 1)
GO
/****** Object:  StoredProcedure [dbo].[Select_Assessment]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Select_Assessment]
@FollowUpInPerson int
AS


  SELECT [Id]
      ,[logDate]
      ,[CustomerId]
      ,[FollowUpId]
      ,[ValuatorUserID]
      ,[ExpertUserID]
      ,[AssessmenScore1]
      ,[AssessmenScore2]
      ,[AssessmenScore3]
      ,[AssessmenScore4]
      ,[AssessmenScore5]
      ,[AssessmenScore6]
      ,[AssessmenScore7]
      ,[AssessmenScore8]
      ,[AverageScore]
      ,FollowUpInPerson
      ,fass.UserId
  from [dbo].[FollowUpAssessment] fass 
  WHERE FollowUpInPerson = @FollowUpInPerson
  order BY id 


GO
/****** Object:  StoredProcedure [dbo].[Select_Attachment]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




Create Procedure [dbo].[Select_Attachment]
@AttachmentID int 
as

SELECT     *
FROM       Attachment
where AttachmentID=@AttachmentID




GO
/****** Object:  StoredProcedure [dbo].[Select_Attachment_by_Page]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[Select_Attachment_by_Page]
@DocumentTypeID tinyint,@DocumentID int,@PageNumber tinyint
as
SELECT     *
FROM         Attachment
WHERE     (DocumentTypeID = @DocumentTypeID) AND (PageNumber = @PageNumber) AND (DocumentID = @DocumentID)




GO
/****** Object:  StoredProcedure [dbo].[Select_Case]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_Case]
(
@RegisterUserID INT,@TypeReport INT = 0)
AS

SELECT c.*,p.ProductTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ctr.CompanyName
		,u.UserName
		,u2.UserName + ' ('+ a. Title +') ' CheckUserName
		,CASE WHEN  t.AssignedUserId>0 THEN  ISNULL(u3.UserName,'کاربر فعال نمی باشد')  ELSE '' END  CurentUserName
	--	,t.CaseId,t.AssignedUserId
  FROM Cases c WITH(NOLOCK)
			LEFT JOIN Product p		    WITH(NOLOCK)	ON c.ProductId = p.ProductID
			LEFT JOIN CaseType ct	    WITH(NOLOCK)	ON ct.CaseTypeID = c.CaseTypeID
			LEFT JOIN CasePriority cp   WITH(NOLOCK)	ON cp.CasePriorityID = c.CasePriorityId
			LEFT JOIN Customer ctr	    WITH(NOLOCK)	ON ctr.CustomerID = c.CustomerID
			LEFT JOIN Users u		    WITH(NOLOCK)	ON u.Id = c.RegisterUserID
			LEFT JOIN Users u2		    WITH(NOLOCK)	ON u2.Id = c.CheckUserID
			LEFT JOIN dbo.Accesses AS A WITH(NOLOCK) ON a.id = u2.AccessID
			LEFT JOIN (SELECT * FROM dbo.Tasks AS T WITH(NOLOCK)  WHERE t.TaskID in  (SELECT MAX(taskid) FROM dbo.Tasks AS T WITH(NOLOCK) GROUP BY T.CaseId ) ) AS t  ON t.CaseId = c.CaseID 
			LEFT JOIN Users u3  		ON u3.Id = t.AssignedUserId
			
	--	where	 CaseID = 190 and c.CaseTypeID = 3 and CasePriorityId = 1
WHERE  -- CheckUserID = @RegisterUserID OR @RegisterUserID = -1
c.IsActive = 1 AND (
( @TypeReport= 0 AND CheckUserID = @RegisterUserID OR @RegisterUserID = -1 )
OR 
( @TypeReport= 1 AND ctr.CustomerID = @RegisterUserID  )
)
GO
/****** Object:  StoredProcedure [dbo].[Select_Contract_By_CustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[Select_Contract_By_CustomerID]
@customerid int 
as
Select *
from dbo.Contract WITH(NOLOCK)
where customerid = @customerid



GO
/****** Object:  StoredProcedure [dbo].[Select_Contract_By_Date]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[Select_Contract_By_Date](@FromDate char(10),@ToDate char(10),
@MarketerID int =0 )
AS

BEGIN
	SELECT     Customer.PersonTitle, Customer.CompanyName, Contract.ContractID, Contract.CustomerID, Contract.BeginDate, Contract.EndDate, Contract.Amount, 
                      Marketer.MarketerTitle, Customer.CustomerNo,ContractTypeTitle
				--, dbo.fn_ProductByCustomerID(Contract.CustomerID) AS Product,
						,ProductTitle AS Product,
--dbo.fn_ProductPercentByCustomerID(Contract.CustomerID)*Contract.Amount/100 Comission
dbo.[fn_ProductCommisionPercent](CONTRACT.ProductID,Contract.BeginDate)*Contract.Amount/100 Comission
FROM    dbo.Contract WITH(NOLOCK)
left join   dbo.product WITH(NOLOCK)  on (Contract.productID = product.productID)
inner JOIN  dbo.Customer WITH(NOLOCK) ON Contract.CustomerID = Customer.CustomerID 
inner JOIN  dbo.Marketer WITH(NOLOCK) ON Contract.MarketerID = Marketer.MarketerID
left join   dbo.ContractType CT WITH(NOLOCK)  on (CT.ContractTypeId = Contract.ContractTypeId) 

where begindate between @FromDate  and @ToDate and (Marketer.MarketerID=@MarketerID or @MarketerID=0)
order by BeginDate desc 
END
GO
/****** Object:  StoredProcedure [dbo].[Select_Contract_By_EndDate]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[Select_Contract_By_EndDate](@FromDate char(10),@ToDate char(10))
AS
BEGIN
	SELECT     Customer.PersonTitle, Customer.CompanyName, Contract.ContractID, Contract.CustomerID, Contract.BeginDate, Contract.EndDate, Contract.Amount, 
                      Marketer.MarketerTitle, Customer.CustomerNo, dbo.fn_ProductByCustomerID(Contract.CustomerID) AS Product
FROM   dbo.Contract  WITH(NOLOCK) 
INNER JOIN  dbo.Customer WITH(NOLOCK) ON Contract.CustomerID = Customer.CustomerID 
INNER JOIN  dbo.Marketer WITH(NOLOCK) ON Contract.MarketerID = Marketer.MarketerID
where enddate between @FromDate  and @ToDate
order by endDate desc 
END



GO
/****** Object:  StoredProcedure [dbo].[Select_Customer]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_Customer]        
(@likeWhere nvarchar(1000),@MarketerID int ,@GroupId int,@CityId int,@ProductId int,@CustomerStatusId int =1,@Top int =1000  
,@StateID  int  
,@ContactNumber nvarchar(100)  
,@Email   nvarchar(100)  
--parsa
,@SearchStr   nvarchar(200) = ''
,@ActionType_LevelID INT = 0
--parsa
)        
As  


Declare @sqlCommand nvarchar(4000),@where nvarchar(4000)      

  Set @sqlCommand='  
      Declare @Date Char(10)
      set @Date = dbo.Shamsi(GETDATE())
      Update CustomerProduct set ContractFinished = 0  , DateUpDateFinishedContractProducts = @Date WHERE DateUpDateFinishedContractProducts <> @Date
        
      Update CustomerProduct set ContractFinished = 1 , DateUpDateFinishedContractProducts = @Date  FROM CustomerProduct  
      INNER JOIN (  
      SELECT ProductID,CustomerID FROM [CONTRACT] GROUP BY ProductID,CustomerID  
      HAVING max(CONTRACT.EndDate) < @Date  
       AND not ProductID IS NULL) t  
       ON (t.ProductID = CustomerProduct.ProductID AND t.CustomerID = CustomerProduct.CustomerID ) 
       WHERE DateUpDateFinishedContractProducts <> @Date              
       '  
    
  Exec sp_executesql @sqlCommand 
   
  SET @sqlCommand = ''  
  
  
Set @sqlCommand='SELECT  top '+cast(@top as varchar(10))+'
 NickName      
,CustomerID, CustomerNo ,  RowNo 
,[PersonTitle],[Address],[Phone],[Notes],[CompanyName],CityID,GroupID,MarketerID           
,[IsActive],[SenderType],[Priority],[Treater],[CompaginID],[PostalCode],[EmailAddress],[WorkPhone1]        
,[Website],[MobilePhone],[FaxNumber],[competitiveNote],[CompaginTitle],[Insertdate],[LastUpdate],[CancelReasonID]        
,[CancelComment],[CancelDate],CustomerStatusID,UserTableLinkedID,CityTitle,GroupTitle,MarketerTitle      
,CustomerStatusTitle, latestFollowup      
, nextFollowup  
,FreeField01,FreeField02,FreeField03,FreeField04,FreeField05,FreeField06  
,FreeField07,FreeField08,FreeField09,FreeField10,FreeField11,FreeField12  
,FreeField13,FreeField14,FreeField15,FreeField16,FreeField17,FreeField18        
,FinishedContractProducts     

,CategoryId,SubCategoryId,CompanyTypeId,CompanySizeId,CompanyStructureId,FreeField19,FreeField20,FreeField21,FreeField22,
FreeField23,FreeField24,FreeField25,FreeField26,FreeField27,FreeField28
,enddate ContractExpDate

, products ,InnerPhone , ProductsID
, SearchStr  
, SearchInt  
,stateid  
,OtherPerson
,ComputerName
,IPAddress 
FROM [dbo].[VWSelect_Customer] Customer  '

IF @SearchStr <> ''   
Set @sqlCommand= @sqlCommand + ' LEFT JOIN ( select distinct CustomerID cid from [dbo].[Person] WITH(NOLOCK)  where  (FirstName like ''%'+@SearchStr+'%'' ) or (LastName like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or '+
                                                     ' (JobTitle like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'' ) or (HomePhone like ''%'+@SearchStr+'%'' ) or '+
                                                    ' (WorkPhone like ''%'+@SearchStr+'%'' ) or (MobilePhone like ''%'+@SearchStr+'%'' ) or  ( FaxNumber like ''%'+@SearchStr+'%'' )    ) p 
                                  ON Customer.CustomerID = p. cid AND OtherPerson >0 ' 
 Set @sqlCommand= @sqlCommand +   '   where 1=1        '        
        
Set @likeWhere=isnull(ltrim(rtrim(@likeWhere)),'')        
        
Set @where=''        
if @likeWhere<>''         
 set @where = @where+' and '+@likeWhere        
               
Set @where=Replace(@where,'ک','ك')    
Set @where=Replace(@where,'ی','ي')   
        
if @MarketerID<>0                 
    set @where = @where+' and ( ('+cast(@MarketerID as varchar(3))+'=-1) or (Marketerid='+cast(@MarketerID as varchar(3))+')  or  ('+cast(@MarketerID as varchar(3))+' in (select distinct marketerid from dbo.followup WITH(NOLOCK) where customerid = customerid)) )'        
else              
    Set @where = @where+' and (isnull(GroupID,0)<>17)'             
     
if @CustomerStatusId<>0                
    Set @where = @where +' and CustomerStatusId='+cast(@CustomerStatusId as varchar(3))         
        
if @GroupId<>0                 
    Set @where = @where+' and isnull(GroupId,0)='+cast(@GroupId as varchar(3))             
        
if @CityId<>0                  
    Set @where = @where+' and CityId='+cast(@CityId as varchar(10))             
        
if @ProductId<>0                  
    Set @where = @where +' and CustomerID in (SELECT distinct CustomerID FROM  CustomerProduct  WITH(NOLOCK) WHERE ProductID = ' + cast(@ProductId as varchar(3))+')'        

if @StateID<>0                
    Set @where=@where+' and (StateID  = ' + cast(@StateID  as varchar(3))+')'           
  
if @Email<>''                
    Set @where = @where +' and (EmailAddress  like ''%' + @Email+'%'')'             
  
if @ContactNumber<>''               
    Set @where = @where +' and ((Phone like ''%'+@ContactNumber+'%'') or (WorkPhone1 like ''%'+@ContactNumber+'%'') or '+  
                         ' (MobilePhone like ''%'+@ContactNumber+'%'') or (FaxNumber like ''%'+@ContactNumber+'%'')  )'  

Set @SearchStr = Replace(@SearchStr,'ك','ک')    
--Set @SearchStr = Replace(@SearchStr,'ی','ي')  

IF @SearchStr <> ''                         
    set @where = @where+ ' and  (  (ISNULL(cid,0)>0) OR  (CompanyName like ''%'+@SearchStr+'%'' ) or (Treater like ''%'+@SearchStr+'%'' ) or (PersonTitle like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or (Address like ''%'+@SearchStr+'%'' ) or (PostalCode like ''%'+@SearchStr+'%'' ) or (CustomerID like ''%'+@SearchStr+'%'' ) or (CustomerNo like ''%'+@SearchStr+'%'' ) or '+
                                ' ( Phone like ''%'+@SearchStr+'%'' ) or  (WorkPhone1 like ''%'+@SearchStr+'%'' ) or   (MobilePhone like ''%'+@SearchStr+'%'' ) or  (FaxNumber like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'') or (competitiveNote like ''%'+@SearchStr+'%'' ) )'
                                                    
if @ActionType_LevelID <> 0                
   -- Set @where = @where + ' and ([dbo].[fn_GetAllStateCustomer]( CustomerID,'+ cast(@ActionType_LevelID  as varchar(3))+'   )  = 1  ) '   
       Set @where = @where + ' and ( ActionType_LevelID = '+ cast(@ActionType_LevelID  as varchar(3))+'  ) ' 

        
Set @sqlCommand=@sqlCommand+@where+' order  by insertdate desc ,CustomerID desc'  

Print @sqlCommand
Exec sp_executesql @sqlCommand 
GO
/****** Object:  StoredProcedure [dbo].[Select_Customer_14030201]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_Customer_14030201]        
(@likeWhere nvarchar(1000),@MarketerID int ,@GroupId int,@CityId int,@ProductId int,@CustomerStatusId int =1,@Top int =1000  
,@StateID  int  
,@ContactNumber nvarchar(100)  
,@Email   nvarchar(100)  
)        
As  


Declare @sqlCommand nvarchar(4000),@where nvarchar(1000)      

  Set @sqlCommand='  
      Declare @Date Char(10)
      set @Date = dbo.Shamsi(GETDATE())
      Update CustomerProduct set ContractFinished = 0  , DateUpDateFinishedContractProducts = @Date WHERE DateUpDateFinishedContractProducts <> @Date
        
      Update CustomerProduct set ContractFinished = 1 , DateUpDateFinishedContractProducts = @Date  FROM CustomerProduct  
      INNER JOIN (  
      SELECT ProductID,CustomerID FROM [CONTRACT] GROUP BY ProductID,CustomerID  
      HAVING max(CONTRACT.EndDate) < @Date  
       AND not ProductID IS NULL) t  
       ON (t.ProductID = CustomerProduct.ProductID AND t.CustomerID = CustomerProduct.CustomerID ) 
       WHERE DateUpDateFinishedContractProducts <> @Date              
       '  
    
  Exec sp_executesql @sqlCommand 
   
  SET @sqlCommand = ''  
  
  
Set @sqlCommand='SELECT  top '+cast(@top as varchar(10))+'
 NickName      
,CustomerID, CustomerNo ,  RowNo 
,[PersonTitle],[Address],[Phone],[Notes],[CompanyName],CityID,GroupID,MarketerID           
,[IsActive],[SenderType],[Priority],[Treater],[CompaginID],[PostalCode],[EmailAddress],[WorkPhone1]        
,[Website],[MobilePhone],[FaxNumber],[competitiveNote],[CompaginTitle],[Insertdate],[LastUpdate],[CancelReasonID]        
,[CancelComment],[CancelDate],CustomerStatusID,UserTableLinkedID,CityTitle,GroupTitle,MarketerTitle      
,CustomerStatusTitle, latestFollowup      
, nextFollowup  
,FreeField01,FreeField02,FreeField03,FreeField04,FreeField05,FreeField06  
,FreeField07,FreeField08,FreeField09,FreeField10,FreeField11,FreeField12  
,FreeField13,FreeField14,FreeField15,FreeField16,FreeField17,FreeField18        
,FinishedContractProducts     

,CategoryId,SubCategoryId,CompanyTypeId,CompanySizeId,CompanyStructureId,FreeField19,FreeField20,FreeField21,FreeField22,
FreeField23,FreeField24,FreeField25,FreeField26,FreeField27,FreeField28
'
IF @ProductId = 0 
	SET @sqlCommand =@sqlCommand + ', '''' as ContractExpDate'
ELSE
	SET @sqlCommand =@sqlCommand + ', (SELECT isnull(MAX(EndDate),'''') FROM CONTRACT co  WITH(NOLOCK)  WHERE ProductID = '+cast(@ProductId as varchar(3))+' AND co.CustomerID= CustomerID) as ContractExpDate'
Set @sqlCommand= @sqlCommand + '

, products ,InnerPhone , ProductsID
, SearchStr  
, SearchInt  
,stateid  
  
FROM [dbo].[VWSelect_Customer] Customer  where 1=1        '        
        
Set @likeWhere=isnull(ltrim(rtrim(@likeWhere)),'')        
        
Set @where=''        
if @likeWhere<>''         
 set @where = @where+' and '+@likeWhere        
               
Set @where=Replace(@where,'ک','ك')    
Set @where=Replace(@where,'ی','ي')   
        
if @MarketerID<>0                 
    set @where = @where+' and ('+cast(@MarketerID as varchar(3))+' in (select distinct marketerid from dbo.followup WITH(NOLOCK) where customerid = customerid) or Marketerid='+cast(@MarketerID as varchar(3))+' or '+cast(@MarketerID as varchar(3))+'=-1)'        
else              
    Set @where = @where+' and (isnull(GroupID,0)<>17)'             
     
if @CustomerStatusId<>0                
    Set @where = @where +' and CustomerStatusId='+cast(@CustomerStatusId as varchar(3))         
        
if @GroupId<>0                 
    Set @where = @where+' and isnull(GroupId,0)='+cast(@GroupId as varchar(3))             
        
if @CityId<>0                  
    Set @where = @where+' and CityId='+cast(@CityId as varchar(10))             
        
if @ProductId<>0                  
    Set @where = @where +' and CustomerID in (SELECT distinct CustomerID FROM  CustomerProduct  WITH(NOLOCK) WHERE ProductID = ' + cast(@ProductId as varchar(3))+')'        

if @StateID<>0                
    Set @where=@where+' and (StateID  = ' + cast(@StateID  as varchar(3))+')'           
  
if @Email<>''                
    Set @where = @where +' and (EmailAddress  like ''%' + @Email+'%'')'             
  
if @ContactNumber<>''               
    Set @where = @where +' and ((Phone like ''%'+@ContactNumber+'%'') or (WorkPhone1 like ''%'+@ContactNumber+'%'') or '+  
                         ' (MobilePhone like ''%'+@ContactNumber+'%'') or (FaxNumber like ''%'+@ContactNumber+'%'')  )'  

        
Set @sqlCommand=@sqlCommand+@where+' order  by insertdate desc '  

SELECT @sqlCommand
Print @sqlCommand
Exec sp_executesql @sqlCommand 
GO
/****** Object:  StoredProcedure [dbo].[Select_Customer_14030210]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[Select_Customer_14030210]        
(@likeWhere nvarchar(1000),@MarketerID int ,@GroupId int,@CityId int,@ProductId int,@CustomerStatusId int =1,@Top int =1000  
,@StateID  int  
,@ContactNumber nvarchar(100)  
,@Email   nvarchar(100)  
--parsa
,@SearchStr   nvarchar(200) = ''
--parsa
)        
As  


Declare @sqlCommand nvarchar(4000),@where nvarchar(4000)      

  Set @sqlCommand='  
      Declare @Date Char(10)
      set @Date = dbo.Shamsi(GETDATE())
      Update CustomerProduct set ContractFinished = 0  , DateUpDateFinishedContractProducts = @Date WHERE DateUpDateFinishedContractProducts <> @Date
        
      Update CustomerProduct set ContractFinished = 1 , DateUpDateFinishedContractProducts = @Date  FROM CustomerProduct  
      INNER JOIN (  
      SELECT ProductID,CustomerID FROM [CONTRACT] GROUP BY ProductID,CustomerID  
      HAVING max(CONTRACT.EndDate) < @Date  
       AND not ProductID IS NULL) t  
       ON (t.ProductID = CustomerProduct.ProductID AND t.CustomerID = CustomerProduct.CustomerID ) 
       WHERE DateUpDateFinishedContractProducts <> @Date              
       '  
    
  Exec sp_executesql @sqlCommand 
   
  SET @sqlCommand = ''  
  
  
Set @sqlCommand='SELECT  top '+cast(@top as varchar(10))+'
 NickName      
,CustomerID, CustomerNo ,  RowNo 
,[PersonTitle],[Address],[Phone],[Notes],[CompanyName],CityID,GroupID,MarketerID           
,[IsActive],[SenderType],[Priority],[Treater],[CompaginID],[PostalCode],[EmailAddress],[WorkPhone1]        
,[Website],[MobilePhone],[FaxNumber],[competitiveNote],[CompaginTitle],[Insertdate],[LastUpdate],[CancelReasonID]        
,[CancelComment],[CancelDate],CustomerStatusID,UserTableLinkedID,CityTitle,GroupTitle,MarketerTitle      
,CustomerStatusTitle, latestFollowup      
, nextFollowup  
,FreeField01,FreeField02,FreeField03,FreeField04,FreeField05,FreeField06  
,FreeField07,FreeField08,FreeField09,FreeField10,FreeField11,FreeField12  
,FreeField13,FreeField14,FreeField15,FreeField16,FreeField17,FreeField18        
,FinishedContractProducts     

,CategoryId,SubCategoryId,CompanyTypeId,CompanySizeId,CompanyStructureId,FreeField19,FreeField20,FreeField21,FreeField22,
FreeField23,FreeField24,FreeField25,FreeField26,FreeField27,FreeField28
'
IF @ProductId = 0 
	SET @sqlCommand =@sqlCommand + ', '''' as ContractExpDate'
ELSE
	SET @sqlCommand =@sqlCommand + ', (SELECT isnull(MAX(EndDate),'''') FROM CONTRACT co  WITH(NOLOCK)  WHERE ProductID = '+cast(@ProductId as varchar(3))+' AND co.CustomerID= CustomerID) as ContractExpDate'
Set @sqlCommand= @sqlCommand + '

, products ,InnerPhone , ProductsID
, SearchStr  
, SearchInt  
,stateid  
,OtherPerson
  
FROM [dbo].[VWSelect_Customer] Customer  where 1=1        '        
        
Set @likeWhere=isnull(ltrim(rtrim(@likeWhere)),'')        
        
Set @where=''        
if @likeWhere<>''         
 set @where = @where+' and '+@likeWhere        
               
Set @where=Replace(@where,'ک','ك')    
Set @where=Replace(@where,'ی','ي')   
        
if @MarketerID<>0                 
    set @where = @where+' and ( ('+cast(@MarketerID as varchar(3))+'=-1) or (Marketerid='+cast(@MarketerID as varchar(3))+')  or  ('+cast(@MarketerID as varchar(3))+' in (select distinct marketerid from dbo.followup WITH(NOLOCK) where customerid = customerid)) )'        
else              
    Set @where = @where+' and (isnull(GroupID,0)<>17)'             
     
if @CustomerStatusId<>0                
    Set @where = @where +' and CustomerStatusId='+cast(@CustomerStatusId as varchar(3))         
        
if @GroupId<>0                 
    Set @where = @where+' and isnull(GroupId,0)='+cast(@GroupId as varchar(3))             
        
if @CityId<>0                  
    Set @where = @where+' and CityId='+cast(@CityId as varchar(10))             
        
if @ProductId<>0                  
    Set @where = @where +' and CustomerID in (SELECT distinct CustomerID FROM  CustomerProduct  WITH(NOLOCK) WHERE ProductID = ' + cast(@ProductId as varchar(3))+')'        

if @StateID<>0                
    Set @where=@where+' and (StateID  = ' + cast(@StateID  as varchar(3))+')'           
  
if @Email<>''                
    Set @where = @where +' and (EmailAddress  like ''%' + @Email+'%'')'             
  
if @ContactNumber<>''               
    Set @where = @where +' and ((Phone like ''%'+@ContactNumber+'%'') or (WorkPhone1 like ''%'+@ContactNumber+'%'') or '+  
                         ' (MobilePhone like ''%'+@ContactNumber+'%'') or (FaxNumber like ''%'+@ContactNumber+'%'')  )'  

Set @SearchStr = Replace(@SearchStr,'ك','ک')    
--Set @SearchStr = Replace(@SearchStr,'ی','ي')  

IF @SearchStr <> ''                         
    set @where = @where+ ' and  ( (CompanyName like ''%'+@SearchStr+'%'' ) or (Treater like ''%'+@SearchStr+'%'' ) or (PersonTitle like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or (Address like ''%'+@SearchStr+'%'' ) or (PostalCode like ''%'+@SearchStr+'%'' ) or (CustomerID like ''%'+@SearchStr+'%'' ) or (CustomerNo like ''%'+@SearchStr+'%'' ) or '+
                                ' ( Phone like ''%'+@SearchStr+'%'' ) or  (WorkPhone1 like ''%'+@SearchStr+'%'' ) or   (MobilePhone like ''%'+@SearchStr+'%'' ) or  (FaxNumber like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'') or (competitiveNote like ''%'+@SearchStr+'%'' ) )'
                                
--IF @SearchStr <> ''                         
 --   set @where = @where+ ' OR ( (OtherPerson > 0) and  CustomerID in select distinct CustomerID from [dbo].[Person] where  (FirstName like ''%'+@SearchStr+'%'' ) or (LastName like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or '+
  --                                                     ' (JobTitle like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'' ) or (HomePhone like ''%'+@SearchStr+'%'' ) or '+
   --                                                    ' (WorkPhone like ''%'+@SearchStr+'%'' ) or (MobilePhone like ''%'+@SearchStr+'%'' ) or  ( FaxNumber like ''%'+@SearchStr+'%'' )   )'
                                                 
                          

        
Set @sqlCommand=@sqlCommand+@where+' order  by insertdate desc ,CustomerID desc'  

Print @sqlCommand
Exec sp_executesql @sqlCommand 
GO
/****** Object:  StoredProcedure [dbo].[Select_customer_By_CustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Select_customer_By_CustomerID]
@CustomerID int
as
SELECT  *,dbo.fn_ProductByCustomerID(customerid)  Products
FROM      dbo.Customer WITH (NOLOCK)
WHERE     (CustomerID = @CustomerID)


GO
/****** Object:  StoredProcedure [dbo].[Select_Customer_by_CustomerStatusID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Select_Customer_by_CustomerStatusID]
(@FromDate char(10),@ToDate char(10),@CustomerStatusId int =1)
as


SELECT  Customer.*,CustomerStatusTitle,MarketerTitle
FROM  dbo.Customer WITH(NOLOCK)
inner join dbo.CustomerStatus WITH(NOLOCK) on CustomerStatus.CustomerStatusID = Customer.CustomerStatusID
inner join dbo.Marketer WITH(NOLOCK) on Marketer.MarketerID = Customer.MarketerID
where Insertdate between @FromDate  and @ToDate
     and (@CustomerStatusId = 0 or Customer.CustomerStatusId = @CustomerStatusId)













GO
/****** Object:  StoredProcedure [dbo].[Select_Customer_By_Date]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[Select_Customer_By_Date](@FromDate char(10),@ToDate char(10))
AS
	

SELECT     Insertdate ,
sum(case when CustomerStatusID=1 then 1 else 0 end)  c1 , 
sum(case when CustomerStatusID=2 then 1 else 0 end)  c2,
sum(case when CustomerStatusID=3 then 1 else 0 end)  c3,
sum(case when CustomerStatusID=4 then 1 else 0 end)  c4,
Count(*) c 
FROM   dbo.Customer WITH(NOLOCK)
where Insertdate between @FromDate  and @ToDate
group by Insertdate
order by 1 desc 
GO
/****** Object:  StoredProcedure [dbo].[Select_Customer_test14030210]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_Customer_test14030210]        
(@likeWhere nvarchar(1000),@MarketerID int ,@GroupId int,@CityId int,@ProductId int,@CustomerStatusId int =1,@Top int =1000  
,@StateID  int  
,@ContactNumber nvarchar(100)  
,@Email   nvarchar(100)  
--parsa
,@SearchStr   nvarchar(200) = ''
--parsa
)        
As  


Declare @sqlCommand nvarchar(4000),@where nvarchar(4000)      

  Set @sqlCommand='  
      Declare @Date Char(10)
      set @Date = dbo.Shamsi(GETDATE())
      Update CustomerProduct set ContractFinished = 0  , DateUpDateFinishedContractProducts = @Date WHERE DateUpDateFinishedContractProducts <> @Date
        
      Update CustomerProduct set ContractFinished = 1 , DateUpDateFinishedContractProducts = @Date  FROM CustomerProduct  
      INNER JOIN (  
      SELECT ProductID,CustomerID FROM [CONTRACT] GROUP BY ProductID,CustomerID  
      HAVING max(CONTRACT.EndDate) < @Date  
       AND not ProductID IS NULL) t  
       ON (t.ProductID = CustomerProduct.ProductID AND t.CustomerID = CustomerProduct.CustomerID ) 
       WHERE DateUpDateFinishedContractProducts <> @Date              
       '  
    
  Exec sp_executesql @sqlCommand 
   
  SET @sqlCommand = ''  
  
  
Set @sqlCommand='SELECT  top '+cast(@top as varchar(10))+'
 NickName      
,CustomerID, CustomerNo ,  RowNo 
,[PersonTitle],[Address],[Phone],[Notes],[CompanyName],CityID,GroupID,MarketerID           
,[IsActive],[SenderType],[Priority],[Treater],[CompaginID],[PostalCode],[EmailAddress],[WorkPhone1]        
,[Website],[MobilePhone],[FaxNumber],[competitiveNote],[CompaginTitle],[Insertdate],[LastUpdate],[CancelReasonID]        
,[CancelComment],[CancelDate],CustomerStatusID,UserTableLinkedID,CityTitle,GroupTitle,MarketerTitle      
,CustomerStatusTitle, latestFollowup      
, nextFollowup  
,FreeField01,FreeField02,FreeField03,FreeField04,FreeField05,FreeField06  
,FreeField07,FreeField08,FreeField09,FreeField10,FreeField11,FreeField12  
,FreeField13,FreeField14,FreeField15,FreeField16,FreeField17,FreeField18        
,FinishedContractProducts     

,CategoryId,SubCategoryId,CompanyTypeId,CompanySizeId,CompanyStructureId,FreeField19,FreeField20,FreeField21,FreeField22,
FreeField23,FreeField24,FreeField25,FreeField26,FreeField27,FreeField28
'
IF @ProductId = 0 
	SET @sqlCommand =@sqlCommand + ', '''' as ContractExpDate'
ELSE
	SET @sqlCommand =@sqlCommand + ', (SELECT isnull(MAX(EndDate),'''') FROM CONTRACT co  WITH(NOLOCK)  WHERE ProductID = '+cast(@ProductId as varchar(3))+' AND co.CustomerID= CustomerID) as ContractExpDate'
Set @sqlCommand= @sqlCommand + '

, products ,InnerPhone , ProductsID
, SearchStr  
, SearchInt  
,stateid  
,OtherPerson
  
FROM [dbo].[VWSelect_Customer] Customer  '

IF @SearchStr <> ''   
Set @sqlCommand= @sqlCommand + ' LEFT JOIN ( select distinct CustomerID cid from [dbo].[Person] WITH(NOLOCK)  where  (FirstName like ''%'+@SearchStr+'%'' ) or (LastName like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or '+
                                                     ' (JobTitle like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'' ) or (HomePhone like ''%'+@SearchStr+'%'' ) or '+
                                                    ' (WorkPhone like ''%'+@SearchStr+'%'' ) or (MobilePhone like ''%'+@SearchStr+'%'' ) or  ( FaxNumber like ''%'+@SearchStr+'%'' )    ) p 
                                  ON Customer.CustomerID = p. cid AND OtherPerson >0 ' +
                     '   where 1=1        '        
        
Set @likeWhere=isnull(ltrim(rtrim(@likeWhere)),'')        
        
Set @where=''        
if @likeWhere<>''         
 set @where = @where+' and '+@likeWhere        
               
Set @where=Replace(@where,'ک','ك')    
Set @where=Replace(@where,'ی','ي')   
        
if @MarketerID<>0                 
    set @where = @where+' and ( ('+cast(@MarketerID as varchar(3))+'=-1) or (Marketerid='+cast(@MarketerID as varchar(3))+')  or  ('+cast(@MarketerID as varchar(3))+' in (select distinct marketerid from dbo.followup WITH(NOLOCK) where customerid = customerid)) )'        
else              
    Set @where = @where+' and (isnull(GroupID,0)<>17)'             
     
if @CustomerStatusId<>0                
    Set @where = @where +' and CustomerStatusId='+cast(@CustomerStatusId as varchar(3))         
        
if @GroupId<>0                 
    Set @where = @where+' and isnull(GroupId,0)='+cast(@GroupId as varchar(3))             
        
if @CityId<>0                  
    Set @where = @where+' and CityId='+cast(@CityId as varchar(10))             
        
if @ProductId<>0                  
    Set @where = @where +' and CustomerID in (SELECT distinct CustomerID FROM  CustomerProduct  WITH(NOLOCK) WHERE ProductID = ' + cast(@ProductId as varchar(3))+')'        

if @StateID<>0                
    Set @where=@where+' and (StateID  = ' + cast(@StateID  as varchar(3))+')'           
  
if @Email<>''                
    Set @where = @where +' and (EmailAddress  like ''%' + @Email+'%'')'             
  
if @ContactNumber<>''               
    Set @where = @where +' and ((Phone like ''%'+@ContactNumber+'%'') or (WorkPhone1 like ''%'+@ContactNumber+'%'') or '+  
                         ' (MobilePhone like ''%'+@ContactNumber+'%'') or (FaxNumber like ''%'+@ContactNumber+'%'')  )'  

Set @SearchStr = Replace(@SearchStr,'ك','ک')    
--Set @SearchStr = Replace(@SearchStr,'ی','ي')  

IF @SearchStr <> ''                         
    set @where = @where+ ' and  (  (ISNULL(cid,0)>0) OR  (CompanyName like ''%'+@SearchStr+'%'' ) or (Treater like ''%'+@SearchStr+'%'' ) or (PersonTitle like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or (Address like ''%'+@SearchStr+'%'' ) or (PostalCode like ''%'+@SearchStr+'%'' ) or (CustomerID like ''%'+@SearchStr+'%'' ) or (CustomerNo like ''%'+@SearchStr+'%'' ) or '+
                                ' ( Phone like ''%'+@SearchStr+'%'' ) or  (WorkPhone1 like ''%'+@SearchStr+'%'' ) or   (MobilePhone like ''%'+@SearchStr+'%'' ) or  (FaxNumber like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'') or (competitiveNote like ''%'+@SearchStr+'%'' ) )'
                                
--IF @SearchStr <> ''                         
--   set @where = @where+ ' OR ( (OtherPerson > 0) and  CustomerID in (select distinct CustomerID from [dbo].[Person] where  (FirstName like ''%'+@SearchStr+'%'' ) or (LastName like ''%'+@SearchStr+'%'' ) or (Notes like ''%'+@SearchStr+'%'' ) or '+
 --                                                    ' (JobTitle like ''%'+@SearchStr+'%'' ) or (EmailAddress like ''%'+@SearchStr+'%'' ) or (HomePhone like ''%'+@SearchStr+'%'' ) or '+
 --                                                   ' (WorkPhone like ''%'+@SearchStr+'%'' ) or (MobilePhone like ''%'+@SearchStr+'%'' ) or  ( FaxNumber like ''%'+@SearchStr+'%'' )   )'
                                                 
                          

        
Set @sqlCommand=@sqlCommand+@where+' order  by insertdate desc ,CustomerID desc'  

Print @sqlCommand
Exec sp_executesql @sqlCommand 
GO
/****** Object:  StoredProcedure [dbo].[Select_FactorAddress]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Select_FactorAddress]
@customerid int,
@Factor_ID int = 0


AS

SELECT TOP 1  *
from [dbo].[FactorAddress]
WHERE customerid = @customerid AND Factor_ID = @Factor_ID
GO
/****** Object:  StoredProcedure [dbo].[Select_FinancialNote_Like]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[Select_FinancialNote_Like]
@like nvarchar(50),@FinancialNoteTypeID tinyint
as
SELECT    FinancialNote.*, FinancialNoteType.FinancialNoteTypeTitle, Account.AccountTitle AS Owner, NoteStatus.NoteStatusTitle
FROM         FinancialNote
LEFT  JOIN   FinancialNoteType ON FinancialNote.FinancialNoteTypeID = FinancialNoteType.FinancialNoteTypeID
LEFT  JOIN   NoteStatus ON FinancialNote.NoteStatusID = NoteStatus.NoteStatusID
LEFT  JOIN   Account ON FinancialNote.OwnerAccountID = Account.AccountID
where (FinancialNote.FinancialNoteTypeID=@FinancialNoteTypeID or @FinancialNoteTypeID=0) and  isnull(AccountTitle,'')+isnull(NoteNo,'')+isnull(Branch,'')+isnull(BankAccountNo,'')  like
'%'+@like+'%'




GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
------------------------------------
CREATE procedure [dbo].[Select_FollowUP]
@customerid int,
@orgID int = 1
,@DoneDate	CHAR(10)
,@TodODate	CHAR(10)
,@MarketerID	INT
,@DoneStatusID	TINYINT
,@ActionTypeID	INT=0
AS

Select *, at.ActionTypeTitle + ' (' + (CASE WHEN LEN(FollowUp.Comment) > 30 THEN SUBSTRING(FollowUp.Comment, 1, 30) + '...' 
										ELSE isnull(FollowUp.Comment,'') END) + ')' AS FullActionTitle
from dbo.followup WITH(NOLOCK)
inner join dbo.marketer WITH(NOLOCK)      on marketer.marketerid = followup.marketerid
INNER JOIN dbo.ActionType At WITH(NOLOCK) ON at.ActionTypeID = FollowUp.ActionTypeID
where customerid = @customerid

AND ( marketer.orgid = @orgid 
     OR 
      @orgid in (Select UserTypeCode from dbo.UserType  WITH(NOLOCK) where isnull(Admin, 0)= 1) 
     OR 
      ISNULL(marketer.orgid,0)= @orgid 
     OR 
      (@orgid = 0)
     )
     
AND (ToDoDate = @TodODate OR @TodODate = '')
AND (Donedate = @DoneDate OR @DoneDate = '')
AND (followup.MarketerID = @MarketerID OR @MarketerID = 0)
AND (DoneStatusID = @DoneStatusID or @DoneStatusID = 0)
AND (FollowUp.ActionTypeID = @ActionTypeID or @ActionTypeID = 0)
--ORDER BY ToDoDate
ORDER BY ToDoDate,FollowUPID
GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_By_CustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Select_FollowUP_By_CustomerID]
@customerid int,@orgID int = 1 
as
Select  *
from dbo.followup WITH(nolock)
inner join dbo.marketer WITH(nolock) on marketer.marketerid = followup.marketerid
where customerid = @customerid
and ((marketer.orgid = @orgid) or (@orgid in (Select UserTypeCode from dbo.UserType WITH(NOLOCK) where isnull(Admin, 0)= 1)) OR (@orgID = 0 ))
--ORDER BY ToDoDate 
ORDER BY ToDoDate,FollowUPID
GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_By_date1]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_FollowUP_By_date1](@MarketerID int ,@BDate char(10), @Edate char(10),
@DonStatusID int,@ActionTypeID int=0,@Comment_like nvarchar(255)='',@BSuccess tinyint=0,@ESuccess tinyint=100,
@DoneComment_like nvarchar(255)='', @CommentTypeOr BIT = 0 , @userID INT, @groupID INT, @CustomerID INT = 0 , @CustomerName NVARCHAR(200)='' )
as

--declare @MarketerID int = 7,
--@BDate char(10) = '1390/12/01', 
--@Edate char(10) = '1391/12/29',
--@DonStatusID INT = 0,
--@ActionTypeID int=0,
--@Comment_like nvarchar(255)='',
--@BSuccess tinyint=0,
--@ESuccess tinyint=100,
--@DoneComment_like nvarchar(255)='', 
--@CommentTypeOr BIT = 0 , 
--@userID INT=9

--if @DonStatusID<=1 
SELECT   FollowUPID, Customer.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, FollowUp.Comment,DoneComment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, Customer.*, 
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, 
                      CASE WHEN FollowUp.MarketerID  = 0 THEN  'نا مشخص' ELSE  Marketer.MarketerTitle END MarketerTitle ,
Phone,WorkPhone1,InnerPhone, StatusSaveDate, FollowUpInsertDate, dbo.FN_GetCustomerProducts(Customer.CustomerID) AS ProductTitle, GroupTitle
--,[Phone],[WorkPhone1],[MobilePhone]
,[dbo].[CustomerOtherPersonPhone](FollowUp.CustomerID) WorkPhoneOther
,CASE WHEN CalendarHoliday.id >0 THEN 1 ELSE 0 END isHoliday

FROM  dbo.FollowUp WITH(NOLOCK)
inner JOIN   dbo.Customer WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
left JOIN   dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
left JOIN   dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
left JOIN   dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
left JOIN   dbo.Groups     WITH(NOLOCK) on Groups.GroupID=Customer.GroupID 
--parsa
LEFT JOIN  dbo.CalendarHoliday WITH(NOLOCK) ON followUP.Tododate = CalendarHoliday.HolidayDate
--parsa
WHERE  
(@groupID = 0 or Customer.GroupID = @groupID)   and
(@MarketerID = 0 or FollowUp.MarketerID = @MarketerID) AND 
((FollowUp.ToDoDate between  @BDate and @Edate)OR(FollowUp.DoneDate between  @BDate and @Edate)) and 
(@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)and 
--parsa
(@CustomerID=0 or FollowUp.CustomerID = @CustomerID) and 
(@CustomerName = '' or Customer.CompanyName like '%'+@CustomerName+'%') and 
--parsa
(FollowUp.ActionTypeID = @ActionTypeID or @ActionTypeID = 0) AND 
(isnull(SuccessChance,0) between  @BSuccess and @ESuccess) AND 
((@CommentTypeOr = 0 AND ((isnull(FollowUp.Comment,'') like '%'+@Comment_like+'%') AND (isnull(DoneComment,'') like '%'+@DoneComment_like+'%'))) OR
 (@CommentTypeOr = 1 AND ((isnull(FollowUp.Comment,'') like '%'+@Comment_like+'%' AND @comment_Like<>'') or (isnull(DoneComment,'') like '%'+@DoneComment_like+'%' AND @DoneComment_like<>''))))
AND (EXISTS(SELECT * FROM dbo.Users us WITH(NOLOCK) WHERE us.Id = @userID AND us.isadmin = 1) or EXISTS(SELECT * FROM dbo.userscustomeraccess uca WITH(NOLOCK) WHERE uca.CustomerID = followup.CustomerID AND uca.UserID = @userID AND uca.HasAccess = 1))
order by tododate,todotime
---------------
GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_By_Date2]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Select_FollowUP_By_Date2](@MarketerID int ,@BDate char(10), @Edate char(10),
@DonStatusID int)
as
SELECT   FollowUPID, FollowUp.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, Comment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, CompanyName, PersonTitle, CustomerNo, 
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle,-- Marketer.MarketerTitle
                      CASE WHEN FollowUp.MarketerID  = 0 THEN  'نا مشخص' ELSE  Marketer.MarketerTitle END MarketerTitle 
FROM  dbo.FollowUp  WITH(NOLOCK)
INNER JOIN   dbo.Customer   WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
INNER JOIN   dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
INNER JOIN   dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
INNER JOIN   dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
WHERE     (@MarketerID = 0 or FollowUp.MarketerID = @MarketerID) AND (FollowUp.ToDoDate between  @BDate and @Edate)
and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)


GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_By_Organization]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Select_FollowUP_By_Organization]
@orgID int = 1
,@DoneDate	CHAR(10)=''
,@TodODate	CHAR(10)=''
,@MarketerID	INT=0
,@DoneStatusID	TINYINT=0

AS

Select *, at.ActionTypeTitle + ' (' + (CASE WHEN LEN(FollowUp.Comment) > 30 THEN SUBSTRING(FollowUp.Comment, 1, 30) + '...' 
										ELSE isnull(FollowUp.Comment,'') END) + ')' AS FullActionTitle
from dbo.followup WITH(NOLOCK)
inner join dbo.marketer WITH(NOLOCK)      on marketer.marketerid = followup.marketerid
INNER JOIN dbo.ActionType At WITH(NOLOCK) ON at.ActionTypeID = FollowUp.ActionTypeID
where 
   ( marketer.orgid = @orgid 
     OR 
      @orgid in (Select UserTypeCode from dbo.UserType  WITH(NOLOCK) where isnull(Admin, 0)= 1) 
     OR 
      ISNULL(marketer.orgid,0)= @orgid 
     OR 
      (@orgid = 0)
     )
     
AND (ToDoDate = @TodODate OR @TodODate = '')
AND (Donedate = @DoneDate OR @DoneDate = '')
AND (followup.MarketerID = @MarketerID OR @MarketerID = 0)
AND (DoneStatusID = @DoneStatusID or @DoneStatusID = 0)
--ORDER BY ToDoDate
ORDER BY ToDoDate,FollowUPID
GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_By_PinUser]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_FollowUP_By_PinUser](@Userid int)
as

SELECT TOP 5     c.CustomerID,c.CompanyName
FROM      dbo.Customer c WITH(NOLOCK)
INNER JOIN  dbo.usersPinFollowUP  f WITH(NOLOCK) ON f.CustomerID = c.CustomerID
WHERE  f.UserID  = @Userid
ORDER BY f.id
GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUP_Report]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_FollowUP_Report](@MarketerID int ,@BDate char(10), @Edate char(10),
@DonStatusID int,@ActionTypeID int=0,@Comment_like nvarchar(255)='',@BSuccess tinyint=0,@ESuccess tinyint=100,
@DoneComment_like nvarchar(255)='', @CommentTypeOr BIT = 0 , @userID INT, @groupID INT, @CustomerID INT = 0 , @CustomerName NVARCHAR(200)='' )
as


SELECT   FollowUPID, Customer.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, FollowUp.Comment,DoneComment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, Customer.*, 
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, --Marketer.MarketerTitle,
                      CASE WHEN FollowUp.MarketerID  = 0 THEN  'نا مشخص' ELSE  Marketer.MarketerTitle END MarketerTitle ,
Phone,WorkPhone1,InnerPhone, StatusSaveDate, FollowUpInsertDate, dbo.FN_GetCustomerProducts(Customer.CustomerID) AS ProductTitle, GroupTitle
--,[Phone],[WorkPhone1],[MobilePhone]
,[dbo].[CustomerOtherPersonPhone](FollowUp.CustomerID) WorkPhoneOther
,CASE WHEN CalendarHoliday.id >0 THEN 1 ELSE 0 END isHoliday

FROM  dbo.FollowUp WITH(NOLOCK)
inner JOIN   dbo.Customer   WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
left JOIN    dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
left JOIN    dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
left JOIN    dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
left JOIN    dbo.Groups     WITH(NOLOCK) on Groups.GroupID=Customer.GroupID 
--parsa
LEFT JOIN  dbo.CalendarHoliday WITH(NOLOCK) ON followUP.Tododate = CalendarHoliday.HolidayDate
--parsa
WHERE  
(@groupID = 0 or Customer.GroupID = @groupID)   and
(@MarketerID = 0 or FollowUp.MarketerID = @MarketerID) AND 
((FollowUp.ToDoDate between  @BDate and @Edate)OR(FollowUp.DoneDate between  @BDate and @Edate)) and 
(@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)and 
--parsa
(@CustomerID=0 or FollowUp.CustomerID = @CustomerID) and 
(@CustomerName = '' or Customer.CompanyName like '%'+@CustomerName+'%') and 
--parsa
(FollowUp.ActionTypeID = @ActionTypeID or @ActionTypeID = 0) AND 
(isnull(SuccessChance,0) between  @BSuccess and @ESuccess) AND 
((@CommentTypeOr = 0 AND ((isnull(FollowUp.Comment,'') like '%'+@Comment_like+'%') AND (isnull(DoneComment,'') like '%'+@DoneComment_like+'%'))) OR
 (@CommentTypeOr = 1 AND ((isnull(FollowUp.Comment,'') like '%'+@Comment_like+'%' AND @comment_Like<>'') or (isnull(DoneComment,'') like '%'+@DoneComment_like+'%' AND @DoneComment_like<>''))))
AND (EXISTS(SELECT * FROM Users us WHERE us.Id = @userID AND us.isadmin = 1) or EXISTS(SELECT * FROM userscustomeraccess uca WHERE uca.CustomerID = followup.CustomerID AND uca.UserID = @userID AND uca.HasAccess = 1))
order by tododate,todotime
---------------
GO
/****** Object:  StoredProcedure [dbo].[Select_FollowUpInPerson]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Select_FollowUpInPerson]
@followupid int
AS

SELECT TOP 1 
       fup.id,
       logdate,
       fup.CustomerId
      ,[FollowUpId]
      ,[DateInPerson]
      ,[TimeInperson]
      ,[PeriodTimeInperson]
      ,[LocationInperson]
      ,[ExpertId]
      ,[DescriptionService]
      ,[DescriptionPersionInMetting]
      ,[ValuatorUserID]
      ,PdfAttachment
      ,fup.FollowUpNeed
      ,fup.FollowUpDescription
      ,fup.UserId 
  FROM [dbo].[FollowUpInPerson] fup WITH(NOLOCK)
WHERE FollowUpId = @followupid
ORDER BY fup.Id desc
GO
/****** Object:  StoredProcedure [dbo].[Select_Holiday_date]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_Holiday_date](@Year char(4) )
as


SELECT   * from
  dbo.CalendarHoliday  WITH(NOLOCK)
WHERE [YEAR] =  @Year

GO
/****** Object:  StoredProcedure [dbo].[Select_MediaMessage]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_MediaMessage]
(@CustomerID INT = 0)
AS

SELECT 
       [ID]
      ,[Message]
      ,[Description]
      ,[Type]
      ,[Media]
      ,[CurrentDate]
      ,[PhoneNumber]
      ,[IsSend]
      ,[TrySend]
      ,[ResultSend]
      ,[CustomerId]
      ,[SenderUserId]
FROM dbo.MediaMessage AS MM WITH(NOLOCK)
 WHERE MM.CustomerId = @CustomerID
GO
/****** Object:  StoredProcedure [dbo].[Select_ObjectAccess_byGroup]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE Procedure [dbo].[Select_ObjectAccess_byGroup]
@GroupTitle nvarchar(50),@AccessID int
as
SELECT     Objects.ObjectCaption, Objects.GroupTitle, AccessObject.*
FROM         AccessObject
INNER JOIN  Objects ON AccessObject.ObjectName = Objects.ObjectName

WHERE     (Objects.GroupTitle = @GroupTitle) and AccessID=@AccessID




GO
/****** Object:  StoredProcedure [dbo].[Select_ObjectGroup]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create Procedure [dbo].[Select_ObjectGroup]
as
SELECT     distinct GroupTitle
FROM         Objects




GO
/****** Object:  StoredProcedure [dbo].[Select_Person_By_CustomerID]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Select_Person_By_CustomerID](@CustomerID int)
as
SELECT    *
FROM      dbo.Person WITH(NOLOCK)
WHERE     (CustomerID = @CustomerID)

GO
/****** Object:  StoredProcedure [dbo].[select_Tasks]    Script Date: 18/07/1403 03:49:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[select_Tasks]
@CaseID INT
AS
SELECT * 
  FROM dbo.Tasks 	WITH(NOLOCK)	
WHERE CaseID = @CaseID
GO
/****** Object:  StoredProcedure [dbo].[select_TimeSheet]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure  [dbo].[select_TimeSheet]
@userID int
as

declare @today char(10),@EnterTime char(5),@h tinyint,@m tinyint

set @h=datepart(hh,getdate())
set @m=datepart(m,getdate())
set @enterTime=case when @h<10 then '0' else '' end+cast(@h as varchar(2))+':'+
               case when @m<10 then '0' else '' end+cast(@m as varchar(2));
set @today=dbo.shamsi(getdate())


SELECT  *
 
  FROM TimeSheet
WHERE     (UserID = @userID) AND (WorkDate = @today) and exitTime is null          






GO
/****** Object:  StoredProcedure [dbo].[Select_UserTypeContractType_By_UserTypeID]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Select_UserTypeContractType_By_UserTypeID]
(
	@UserTypeID int
)
as
Select UTT.*,ContractTypeCode,ContractTypeTitle 
from dbo.UserTypeContractType UTT WITH(NOLOCK)
left join dbo.ContractType CT WITH(NOLOCK) on (UTT.ContractTypeId = CT.ContractTypeId)
where UserTypeID = @UserTypeID
GO
/****** Object:  StoredProcedure [dbo].[Select_WordTemplate]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Select_WordTemplate]
@WordTemplateID int
as

SELECT     WordTemplateID, WordTemplate
FROM         WordTemplate
WHERE     (WordTemplateID = @WordTemplateID)




GO
/****** Object:  StoredProcedure [dbo].[Select_WordTemplateList]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[Select_WordTemplateList]
as

SELECT     WordTemplateID,TemplateTitle 
FROM         WordTemplate




GO
/****** Object:  StoredProcedure [dbo].[Set_systemSetting]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Set_systemSetting]
@VariableName varchar(50),@Value nvarchar(100)
AS
exec Set_UserSetting -1 ,@VariableName ,@Value




GO
/****** Object:  StoredProcedure [dbo].[Set_UserSetting]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Set_UserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(100)
AS
if not exists(select * from Setting WHERE (UserID = @UserID) AND (VariableName = @VariableName))
insert into Setting(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)
Update Setting 
set Value=@Value
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)





GO
/****** Object:  StoredProcedure [dbo].[SetSystemSetting]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetSystemSetting]
@VariableName varchar(50),@Value nvarchar(255)
AS
exec SetUserSetting -1 ,@VariableName ,@Value

GO
/****** Object:  StoredProcedure [dbo].[SetUserSetting]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetUserSetting]
@UserID  int ,@VariableName varchar(50),@Value nvarchar(255)
AS
if not exists(select * from Settings WHERE (UserID = @UserID) AND (VariableName = @VariableName))
insert into Settings(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)
Update Settings 
set Value=@Value
WHERE     (UserID = @UserID) AND (VariableName = @VariableName)
 
GO
/****** Object:  StoredProcedure [dbo].[slrGetSalaryByPersonalID]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[slrGetSalaryByPersonalID]
@PersonalID int,@month char(7),@sum int out,@PaidAmount int out,@cashAmount int out,@remain int out
as


SELECT   @sum=Sum(effect*amount )
FROM         slrSalary ,slrSalaryItems 
WHERE   slrSalary.SalaryItemID=slrSalaryItems.id and  (PersonalID = @PersonalID) AND ([month] =@month) 


SELECT   @cashAmount=Sum(effect*amount )
FROM         slrSalary ,slrSalaryItems 
WHERE   slrSalary.SalaryItemID=slrSalaryItems.id and  (PersonalID = @PersonalID) AND ([month] =@month) 
and  slrSalary.SalaryItemID in (12,13,16)

 

set @PaidAmount=isnull(@PaidAmount,0)
set @cashAmount=isnull(@cashAmount,0)
set @remain=@sum-@cashAmount-@PaidAmount

 

SELECT  slrSalary.*
FROM         slrSalary  ,slrSalaryItems  
where  slrSalary.SalaryItemID=slrSalaryItems.id and (PersonalID = @PersonalID) AND ([month] =@month) 
order by orderno



GO
/****** Object:  StoredProcedure [dbo].[slrGetSalaryTableByPersonalID]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[slrGetSalaryTableByPersonalID]
@PersonalID int,@month char(7) 
as

SELECT    identity(int,1,1)id, case when effect=1 then slrSalary.Amount else 0 end Plus,
 case when effect=1 then 0 else slrSalary.Amount  end Minus
, slrSalaryItems.Title, slrSalaryItems.effect,comment into #m
FROM         slrSalary 
INNER JOIN  slrSalaryItems ON slrSalary.SalaryItemID = slrSalaryItems.ID

where   (PersonalID = @PersonalID) AND ([month] =@month) 
order by orderno

declare
@sum int  


SELECT   @sum=Sum(effect*amount )
FROM         slrSalary ,slrSalaryItems 
WHERE   slrSalary.SalaryItemID=slrSalaryItems.id and  (PersonalID = @PersonalID) AND ([month] =@month) 

insert into #m(Plus,Minus,Title,effect,comment)
values(@sum,0,'مجموع',1,'')


select *
from #m
order by id 
GO
/****** Object:  StoredProcedure [dbo].[slrInsertDictums]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[slrInsertDictums]
as
INSERT INTO [Y_CRM].[dbo].[slrDictums]
           ([PersonelID]
           ,[FromDate]
           ,[ToDate])

select id,'1388/01/01','1388/12/29'
from users
GO
/****** Object:  StoredProcedure [dbo].[slrmakeSalry]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE procedure [dbo].[slrmakeSalry]
as/*
INSERT INTO [Y_CRM].[dbo].[slrSalary]
           ([PersonalID]
           ,[month]
           ,[SalaryItemID]
           ,[Amount]) 
SELECT  PersonelID  ,'1388/11',slrSalaryItems.id,case when FixAmount >0 then FixAmount else 0 end
FROM         slrDictums,dbo.slrSalaryItems 
where DictumIncluded =0 and SalaryIncluded=1

INSERT INTO [Y_CRM].[dbo].[slrSalary]
           ([PersonalID]
           ,[month]
           ,[SalaryItemID]
           ,[Amount]) 
SELECT  PersonelID  ,'1388/11',SalaryItemID,Amount
FROM        dbo.slrDictumDetails, dbo.slrDictums
where dbo.slrDictumDetails.DictumID=dbo.slrDictums.id
*/
INSERT INTO [Y_CRM].[dbo].[slrSalary]
           ([PersonalID]
           ,[month]
           ,[SalaryItemID]
           ,[Amount],Comment) 
SELECT     PersonalID, '1389/05' , SalaryItemID, Amount, Comment
FROM         slrSalary
WHERE     ([month] = '1389/04')

INSERT INTO [Y_CRM].[dbo].[slrSalary]
           ([PersonalID]
           ,[month]
           ,[SalaryItemID]
           ,[Amount]
           ,[Comment])
   SELECT     users.id ,[month], SalaryItemID, Amount, ''
FROM         slrSalary,users
WHERE     (PersonalID = 1) AND (month = '1389/05')
and isactive=1 and users.id not in (select personalid from slrSalary)



GO
/****** Object:  StoredProcedure [dbo].[sp_delphi_Proc]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure  [dbo].[sp_delphi_Proc] (@spN varchar(50) )
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
    set @line1=case when @isfunction=0 then 'Procedure  ' else 'function ' end+@spname+'('
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
    print Replace(replace(@line1+'
'+@line1+'
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='''+@spname+''';
',';;',';'),';);',');')
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
/****** Object:  StoredProcedure [dbo].[sp_delphi_proceByName]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetDispatchedRecommites]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_GetDispatchedRecommites](@OrgID int)
AS
BEGIN
	SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph
	  FROM recommites R
	INNER JOIN letter l ON l.LetterID=r.LetterID
	WHERE	r.OrgID= @OrgID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFollowUp]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetFollowUp](@FollowupID INT=NULL, @ParentFollowupID INT=NULL)
AS
BEGIN
	IF @FollowupID IS NULL AND @ParentFollowupID IS NULL
		RETURN
		
	SELECT  FollowUp.FollowUPID, FollowUp.ActionTypeID, ActionType.ActionTypeTitle, FollowUp.MarketerID, Marketer.MarketerTitle, 
      Customer.PersonTitle, Customer.CompanyName, FollowUp.CustomerID, FollowUp.Comment, FollowUp.ToDoDate, 
      FollowUp.DoneDate, FollowUp.ToDoTime, FollowUp.DoneComment, FollowUp.ParentFollowUpID, followup.FollowUpInsertDate, DoneStatus.DoneStatustitle
	FROM	dbo.FollowUp WITH(NOLOCK)
	  INNER JOIN dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
      INNER JOIN dbo.Customer WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
      INNER JOIN dbo.Marketer WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID 
      INNER JOIN dbo.DoneStatus WITH(NOLOCK) ON DoneStatus.DoneStatusID = Followup.DoneStatusID
	WHERE (@FollowupID IS NOT NULL AND FollowUp.FollowUPID = @FollowupID) OR
		  (@ParentFollowupID IS NOT NULL AND FollowUp.ParentFollowUpID = @ParentFollowupID)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertAutoMessage]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[sp_InsertAutoMessage] (@UserID INT,@TToday CHAR(10) ='' )
AS

DECLARE @SysyemUserId  INT = (SELECT id FROM dbo.Users AS U WHERE U.IsSystemUser = 1 )
DECLARE @Today CHAR(10)    = (SELECT [dbo].[Shamsi](GETDATE()))

DECLARE @Level0 INT ,@Level1 INT ,@level2 INT ,@level3 INT ,@Level4 INT ,@level5 INT ,@level6 INT ,@level7 INT ,@level8 INT 
DECLARE @LevelDate0 CHAR(10) ,@LevelDate1 CHAR(10) ,@LevelDate3 CHAR(10) ,@LevelDate4 CHAR(10) ,@LevelDate5 CHAR(10) ,@LevelDate6 CHAR(10) ,@LevelDate7 CHAR(10),@LevelDate8 CHAR(10) ,@LevelDate9 CHAR(10)
DECLARE @CityID INT 

/*
SELECT @TToday ttoday

SELECT levels,CustomerID, Fdate 
FROM dbo.VWFolloWUpMessage
where @UserID = 148--(select top 1 id from dbo.users where ManagerSupport = 1 order by id desc)
ORDER BY CustomerID,levels
*/


SET @Level0  = 0
SET @Level1  = 0
SET @Level2  = 0
SET @Level3  = 0
SET @Level4  = 0
SET @Level5  = 0
SET @Level6  = 0
SET @Level7  = 0
SET @Level8  = 0

SET  @LevelDate0 ='' SET  @LevelDate1 ='' SET @LevelDate3 ='' SET @LevelDate4 ='' SET @LevelDate5 ='' SET  @LevelDate6 ='' SET @LevelDate7 ='' SET @LevelDate9 = '' SET @LevelDate8 =''

DECLARE @level INT, @CustomerID INT ,@Fdate CHAR(10) 

DECLARE Message_cursor CURSOR FOR

SELECT levels,CustomerID, Fdate 
FROM dbo.VWFolloWUpMessage
where @UserID = (select top 1 id from dbo.users where ManagerSupport = 1 order by id desc)
ORDER BY CustomerID,levels,FollowUPID asc

OPEN Message_cursor

FETCH NEXT FROM Message_cursor
INTO @level, @CustomerID,@Fdate

WHILE @@FETCH_STATUS = 0
BEGIN
/*
0 FIRST SEND m
1 1 DAY NOT RIGHT cd
2 RIGHT cd
3 SEND cd
4  2 OR 4 DAY pass NOT install 
5  followu peygiri darad
6  install shode
7  Education shode
8  peygiri install
9 final calc
*/	
	
	IF @level = 0
	BEGIN
	   --مسیج اولیه برای مدیر پشتیبانی رفته	 
	   SET @Level0  = 1
	   SET @LevelDate0 = @Fdate
	END
	ELSE 	
	IF @level = 1
	BEGIN
	   -- یک روز از مسیج اولیه رایت پکیج گذشته و رایت پکیج انجام شده پس پیغام نمی خواهیم	 
	   SET @Level1  = 1	
	   SET @LevelDate1 = @Fdate
	END
	IF @level = 2
	BEGIN
	  -- رایت پکیج 	
	  SET @Level2  = 1	
	END
	IF @level = 3
	BEGIN
	  -- ارسال پکیج
	  SET @Level3  = 1	
	  SET @LevelDate3 = @Fdate
	END
	IF @level = 4
	BEGIN
	  -- تعداد 2 یا 4 روز گذشته و  نصب انجام شده	
	  SET @Level4  = 1	
	  SET @LevelDate4 = @Fdate
	END
	IF @level = 5
	BEGIN
	  -- یک هفته بعد از نصب اگر آموزش نداشتیم	
	  SET @Level5  = 1	
	  SET @LevelDate5 = @Fdate
	END
	IF @level = 6
	BEGIN
	  --نصب 	
	  SET @Level6  = 1	
	  SET @LevelDate6 = @Fdate
	END 
	IF @level = 7
	BEGIN
	   --آموزش	
	  SET @Level7  = 1
	  SET @LevelDate7 = @Fdate
	END
	IF @level = 8
	BEGIN
		--پیگیری نصب
	  SET @Level8  = 1
	  SET @LevelDate8 = @Fdate
	END
	IF @level = 9
	BEGIN
	   
	   SET @LevelDate9 = @Fdate
	   IF  @LevelDate9 > @LevelDate0 
	     set @Level0 = 0
	     
	   IF  @LevelDate9 > @LevelDate3 
	     set @Level3 = 0  
	     
	   IF  @LevelDate9 > @LevelDate4
	     set @Level4 = 0  
	     
	   IF  @LevelDate9 > @LevelDate5
	     set @Level5 = 0  
	     
	   IF  @LevelDate9 > @LevelDate6
	     set @Level6 = 0  
	     
	   IF  @LevelDate9 > @LevelDate7
	     set @Level7 = 0  
	     
	   IF  @LevelDate9 > @LevelDate8
	     set @Level8 = 0  
	     
	     	     	   
	   select       @Level0 '0',  @Level1 '1' , @Level2  '2',  @Level3 '3' , @Level4 '4',  @Level5  '5', @Level6  '6', @Level7 '7'

		select  @LevelDate0 '0' ,@LevelDate3 '3' ,@LevelDate4 '4' ,@LevelDate5 '5' ,@LevelDate6  '6',@LevelDate7 '7',@LevelDate8 '8',@LevelDate9 '9'

	   IF @Level0  = 1 AND @Level1  = 1  --بعد از یک روز رایت پکیج انجام شده بود 
	   BEGIN
	   	 --if dbo.shamsi(dbo.shamsitomiladi(@LevelDate1)) <= @Today
	   	   UPDATE dbo.Messages SET MaxLevelMessageId = 1 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0	
	   END
	   ELSE	
	   IF @Level0  = 1 AND @Level1  = 0  --اگر رایت پکیج انجام نشده بود بعد از یک روز
	   BEGIN
	   	 if dbo.shamsi(dbo.shamsitomiladi(@LevelDate0)) < @Today
	     begin
	       Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID,CustomerId,LevelMessageId,MaxLevelMessageId,IsAuto)
           select @SysyemUserId,getdate(),1,'رایت پکیج',' برای مشتری ' + CAST(@CustomerID AS nvarchar(10)) + ' رایت پکیج انجام نگرفته است ' ,@UserID,@CustomerID,1,1,1	   	
         
	   	   UPDATE dbo.Messages SET MaxLevelMessageId = 1 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0	
	   	 end
	   END
	   ELSE
	   IF @Level2  = 1  -- رایت پکیج انجام شده
	   BEGIN
	   	 UPDATE dbo.Messages SET MaxLevelMessageId = 2 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0	
	   END	
	   ELSE
	   IF @Level3  = 1  -- ارسال پکیج انجام شده
	   BEGIN
	   	 UPDATE dbo.Messages SET MaxLevelMessageId = 3 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0	
	   END	
	   ELSE  
	   IF @Level4  = 1 AND @Level5  = 0 --اگر 2 یا 4 روز از ارسال پکیج گذشته بود ولی هنوز رکورد دیگری نداشتیم مبنی بر اطلاع از مشتری
	   BEGIN
	   	 SET @CityID = (SELECT TOP 1 cityid FROM dbo.Customer AS C WHERE C.CustomerID = @CustomerID )
	   	 IF @CityID = 95 
	   	 BEGIN
		   --if dbo.shamsi(dbo.shamsitomiladi(@LevelDate4)+3) <= @TToday
		   if dbo.shamsi(dbo.shamsitomiladi(@LevelDate4)+3) <= @Today
		   begin
	   	     Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID,CustomerId,LevelMessageId,MaxLevelMessageId,IsAuto)
             select @SysyemUserId,getdate(),1,'هماهنگی نصب',' با مشتری ' + CAST(@CustomerID AS nvarchar(10)) + ' جهت هماهنگی نصب و آموزش تماس گرفته شود ' ,@UserID,@CustomerID,4,4,1	  
         
	   	     UPDATE dbo.Messages SET MaxLevelMessageId = 4 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0		
		   end
	   	 END
	   	 else
		 begin
		   -- if dbo.shamsi(dbo.shamsitomiladi(@LevelDate4)+5) <= @TToday
		    if dbo.shamsi(dbo.shamsitomiladi(@LevelDate4)+5) <= @Today
			begin
		 	  Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID,CustomerId,LevelMessageId,MaxLevelMessageId,IsAuto)
              select @SysyemUserId,getdate(),1,'هماهنگی نصب',' با مشتری ' + CAST(@CustomerID AS nvarchar(10)) + ' جهت هماهنگی نصب و آموزش تماس گرفته شود ' ,@UserID,@CustomerID,4,4,1	  
         
	   	     UPDATE dbo.Messages SET MaxLevelMessageId = 4 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0	
		   end
		 end
	   	 

	   END	  
	   ELSE  
	   IF @Level6  = 1 AND @Level7  = 0  --نصب شده ولی آموزش ندارد
	   BEGIN
	     --if dbo.shamsi(dbo.shamsitomiladi(@LevelDate6)+7) <= @TToday
	     if dbo.shamsi(dbo.shamsitomiladi(@LevelDate6)+7) <= @Today
		 begin
	   	   Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID,CustomerId,LevelMessageId,MaxLevelMessageId,IsAuto)
           select @SysyemUserId,getdate(),1,'هماهنگی آموزش',' با مشتری ' + CAST(@CustomerID AS nvarchar(10)) + ' جهت هماهنگی آموزش تماس گرفته شود ' ,@UserID,@CustomerID,5,5,1	
         	   	
	     	 UPDATE dbo.Messages SET MaxLevelMessageId = 5 WHERE CustomerId = @CustomerID-- AND ISNULL(MaxLevelMessageId,0) = 0	
		 end
	   END	
	   ELSE  
	   IF @Level7  = 1 AND @Level8  = 0 --آموزش دارد و پیگیری بعد آموزش
	   BEGIN
	     --if dbo.shamsi(dbo.shamsitomiladi(@LevelDate7)+7) <= @TToday
	     if dbo.shamsi(dbo.shamsitomiladi(@LevelDate7)+7) <= @Today
		 begin
	       Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID,CustomerId,LevelMessageId,MaxLevelMessageId,IsAuto)
           select @SysyemUserId,getdate(),1,'پیگیری بعد آموزش',' با مشتری ' + CAST(@CustomerID AS nvarchar(10)) + ' جهت هماهنگی  یک هفته بعد آموزش تماس گرفته شود ' ,@UserID,@CustomerID,6,6,1
         	   	
	       UPDATE dbo.Messages SET MaxLevelMessageId = 6 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0	
		 end
	   END	 	
	   ELSE  
	   IF @Level8  = 1 --AND @Level8  = 0  -- پیگیری بعد نصب
	   BEGIN
	     --if dbo.shamsi(dbo.shamsitomiladi(@LevelDate8)+30) <= @TToday
	     if dbo.shamsi(dbo.shamsitomiladi(@LevelDate8)+30) <= @Today
		 begin
	   	   Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID,CustomerId,LevelMessageId,MaxLevelMessageId,IsAuto)
           select @SysyemUserId,getdate(),1,'پیگری وضعیت مشتری',' با مشتری ' + CAST(@CustomerID AS nvarchar(10)) + ' جهت پیگیری وضعیت تماس گرفته شود ' ,@UserID,@CustomerID,7,7,1
         	   	
	       UPDATE dbo.Messages SET MaxLevelMessageId = 7 WHERE CustomerId = @CustomerID --AND ISNULL(MaxLevelMessageId,0) = 0
		 end 
	   END			      
       
       SET @Level0  = 0
	   SET @Level1  = 0
	   SET @Level2  = 0
	   SET @Level3  = 0
	   SET @Level4  = 0
	   SET @Level5  = 0
	   SET @Level6  = 0
	   SET @Level7  = 0
	   SET @Level8  = 0

	  SET  @LevelDate0 =''  SET @LevelDate1 ='' SET @LevelDate3 ='' SET @LevelDate4 ='' SET @LevelDate5 ='' SET  @LevelDate6 ='' SET @LevelDate7 ='' SET @LevelDate8 ='' SET @LevelDate9 = ''
  
	END	

	
    FETCH NEXT FROM Message_cursor
    INTO @level, @CustomerID,@Fdate
END
CLOSE Message_cursor
DEALLOCATE Message_cursor	
	

GO
/****** Object:  StoredProcedure [dbo].[sp_selectActionType_Level]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[sp_selectActionType_Level] @CustomerId INT 
as

SELECT [ID]
      ,[ParentID]
      ,[ChildID]
      ,[OrderId]
      ,[Description]
      ,[Level]
      ,[Type]
  FROM [dbo].[VWActionType_Level]
ORDER BY ParentID,OrderId


GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowBill]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[SpCompareFollowUp_Report]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[SpCompareFollowUp_Report]

@Customerid1	 INT = 0 ,
@MarketerID1     int = 0,
@ProductId1      INT = 0,
@ActionTypeID1   INT = 0,
@orgID1          INT = 1,
@GroupId1        INT = 0,
@DonStatusID1    INT = 0,
@FromDate1       NVARCHAR(10)='0',
@ToDate1         NVARCHAR(10)='0',

@Customerid2	 INT = 0 ,
@MarketerID2     int = 0,
@ProductId2      INT = 0,
@ActionTypeID2   INT = 0,
@orgID2          INT = 1,
@GroupId2        INT = 0,
@DonStatusID2    INT = 0,
@FromDate2       NVARCHAR(10)='0',
@ToDate2         NVARCHAR(10)='0',

@Customerid3	 INT = 0 ,
@MarketerID3     int = 0,
@ProductId3      INT = 0,
@ActionTypeID3   INT = 0,
@orgID3          INT = 1,
@GroupId3        INT = 0,
@DonStatusID3    INT = 0,
@FromDate3       NVARCHAR(10)='0',
@ToDate3         NVARCHAR(10)='0'

AS

SELECT * FROM (
SELECT  'گزارش اول' RepType ,1 RepId
, Marketer.MarketerTitle,ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, GroupTitle, COUNT(FollowUPID) Rcount
/*
, FollowUPID, Customer.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, FollowUp.Comment,DoneComment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, --Customer.*, 
                      Customer.CompanyName,
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, Marketer.MarketerTitle,
Phone,WorkPhone1,InnerPhone, StatusSaveDate, FollowUpInsertDate, dbo.FN_GetCustomerProducts(Customer.CustomerID) AS ProductTitle, GroupTitle
*/
FROM  dbo.FollowUp WITH(NOLOCK) 
inner JOIN   dbo.Customer   WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
left JOIN    dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
left JOIN    dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
left JOIN    dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
left JOIN    dbo.Groups     WITH(NOLOCK) on Groups.GroupID=Customer.GroupID 
--LEFT JOIN   dbo.Product AS P ON p.ProductID = Customer.ProductId
WHERE  
(@groupID1 = 0 or Customer.GroupID = @groupID1)   and
(@MarketerID1 = 0 or FollowUp.MarketerID = @MarketerID1) AND 
(@ProductId1 = 0 OR  '|'+ProductsIdSTR+'|' LIKE '%|'+CAST(@ProductId1 as NVARCHAR(10))+'|%' ) and
((FollowUp.ToDoDate between  @FromDate1 and @ToDate1 )OR(FollowUp.DoneDate between  @FromDate1 and @ToDate1 )) and 
(@DonStatusID1=0 or FollowUp.DoneStatusID = @DonStatusID1)and 
(@CustomerID1=0 or FollowUp.CustomerID = @CustomerID1) and 
(FollowUp.ActionTypeID = @ActionTypeID1 or @ActionTypeID1 = 0) 
and ((marketer.orgid = @orgid1) or (@orgid1 in (Select UserTypeCode from dbo.UserType WITH(NOLOCK) where isnull(Admin, 0)= 1)) OR (@orgID1 = 0 ))
GROUP BY ActionType.ActionTypeTitle,Marketer.MarketerTitle, DoneStatus.DoneStatustitle, GroupTitle
UNION ALL

SELECT   'گزارش دوم' RepType,2 RepId
, Marketer.MarketerTitle,ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, GroupTitle, COUNT(FollowUPID) Rcount
/*
, FollowUPID, Customer.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, FollowUp.Comment,DoneComment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, --Customer.*, 
                      Customer.CompanyName,
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, Marketer.MarketerTitle,
Phone,WorkPhone1,InnerPhone, StatusSaveDate, FollowUpInsertDate, dbo.FN_GetCustomerProducts(Customer.CustomerID) AS ProductTitle, GroupTitle
*/
FROM  dbo.FollowUp WITH(NOLOCK) 
inner JOIN   dbo.Customer   WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
left JOIN    dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
left JOIN    dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
left JOIN    dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
left JOIN    dbo.Groups     WITH(NOLOCK) on Groups.GroupID=Customer.GroupID 
--LEFT JOIN   dbo.Product AS P ON p.ProductID = Customer.ProductId
WHERE  
(@groupID2 = 0 or Customer.GroupID = @groupID2)   and
(@MarketerID2 = 0 or FollowUp.MarketerID = @MarketerID2) AND 
(@ProductId2 = 0 OR  '|'+ProductsIdSTR+'|' LIKE '%|'+CAST(@ProductId2 as NVARCHAR(10))+'|%' ) and
((FollowUp.ToDoDate between  @FromDate2 and @ToDate2 )OR(FollowUp.DoneDate between  @FromDate2 and @ToDate2 )) and 
(@DonStatusID2=0 or FollowUp.DoneStatusID = @DonStatusID2)and 
(@CustomerID2=0 or FollowUp.CustomerID = @CustomerID2) and 
(FollowUp.ActionTypeID = @ActionTypeID2 or @ActionTypeID2 = 0) 
and ((marketer.orgid = @orgid2) or (@orgid2 in (Select UserTypeCode from dbo.UserType WITH(NOLOCK) where isnull(Admin, 0)= 1)) OR (@orgID2 = 0 ))
GROUP BY ActionType.ActionTypeTitle,Marketer.MarketerTitle, DoneStatus.DoneStatustitle, GroupTitle
UNION ALL

SELECT  'گزارش سوم' RepType,3 RepId
, Marketer.MarketerTitle,ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, GroupTitle, COUNT(FollowUPID) Rcount
/*
, FollowUPID, Customer.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, FollowUp.Comment,DoneComment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, --Customer.*, 
                      Customer.CompanyName,
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, Marketer.MarketerTitle,
Phone,WorkPhone1,InnerPhone, StatusSaveDate, FollowUpInsertDate, dbo.FN_GetCustomerProducts(Customer.CustomerID) AS ProductTitle, GroupTitle
*/
FROM  dbo.FollowUp WITH(NOLOCK) 
inner JOIN   dbo.Customer   WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
left JOIN    dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
left JOIN    dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
left JOIN    dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
left JOIN    dbo.Groups     WITH(NOLOCK) on Groups.GroupID=Customer.GroupID 
--LEFT JOIN   dbo.Product AS P ON p.ProductID = Customer.ProductId
WHERE  
(@groupID3 = 0 or Customer.GroupID = @groupID3)   and
(@MarketerID3 = 0 or FollowUp.MarketerID = @MarketerID3) AND 
(@ProductId3 = 0 OR  '|'+ProductsIdSTR+'|' LIKE '%|'+CAST(@ProductId3 as NVARCHAR(10))+'|%' ) and
((FollowUp.ToDoDate between  @FromDate3 and @ToDate3 )OR(FollowUp.DoneDate between  @FromDate3 and @ToDate3 )) and 
(@DonStatusID3=0 or FollowUp.DoneStatusID = @DonStatusID3)and 
(@CustomerID3=0 or FollowUp.CustomerID = @CustomerID3) and 
(FollowUp.ActionTypeID = @ActionTypeID3 or @ActionTypeID3 = 0) 
and ((marketer.orgid = @orgid3) or (@orgid3 in (Select UserTypeCode from dbo.UserType WITH(NOLOCK) where isnull(Admin, 0)= 1)) OR (@orgID3 = 0 ))
GROUP BY ActionType.ActionTypeTitle,Marketer.MarketerTitle, DoneStatus.DoneStatustitle, GroupTitle
) tt
order BY ActionTypeTitle,MarketerTitle,GroupTitle,RepType--, tododate , todotime
GO
/****** Object:  StoredProcedure [dbo].[SpExpertUser_Report]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[SpExpertUser_Report]
@Customerid	 INT = 0 ,
@ProductId INT = 0,
@MarketerId INT = 0,
@FollowUpNeed BIT = 0,
@fromDate NVARCHAR(10)='0',
@ToDate NVARCHAR(10)='0',
@FromTime NVARCHAR(5)='0',
@ToTime NVARCHAR(5)='0'
AS

SELECT --[Id]
      --,[logDate]
      fpp.[CustomerId]
      ,cc.CompanyName
      ,cc.ProductsIdSTR
      ,cc.ProductsSTR
      ,fpp.[FollowUpId]
      ,[DateInPerson]
      --,[TimeInperson]
      ,[PeriodTimeInperson]
      --,[LocationInperson]
      ,[ExpertId]
      --,[DescriptionService]
      --,[DescriptionPersionInMetting]
      --,[ValuatorUserID]
     -- ,[PdfAttachment]
      --,[FollowUpNeed]
     -- ,[FollowUpDescription]
     ,[AverageScore]
     ,m.MarketerTitle
  FROM [dbo].[FollowUpInPerson] fpp 
  LEFT JOIN [dbo].[FollowUpAssessment] fa   ON fpp.id = fa.[FollowUpInPerson]
  LEFT JOIN dbo.customer AS cc ON cc.CustomerId =fpp.CustomerId
  LEFT JOIN dbo.Marketer AS M ON m.MarketerID = [ExpertId]
WHERE 1=1 
AND (@Customerid = 0 OR  fpp.Customerid = @Customerid )
AND (@ProductId = 0 OR ProductsIdSTR = @ProductId)
AND (@MarketerId = 0 OR ExpertId = @MarketerId )
AND (@FollowUpNeed = 0 OR FollowUpNeed = @FollowUpNeed)
AND ((@fromDate ='0'  AND @ToDate = '0') OR (DateInPerson BETWEEN @fromDate AND @ToDate))
AND ((@FromTime = '0' AND @ToTime = '0') OR (PeriodTimeInperson BETWEEN @FromTime AND @ToTime))
GO
/****** Object:  StoredProcedure [dbo].[spFillSMSTMPFromCustomer]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFillSMSTMPFromCustomer] 
	@CustomerStatusID int = 0, 
	@ProductID int = 0
AS
BEGIN
	SET NOCOUNT ON	
	INSERT INTO SMSTMP
	SELECT  c.CustomerID, c.CustomerNo, c.PersonTitle,
			c.CompanyName, c.Phone , c.MobilePhone , p.ProductTitle ,cs.CustomerStatusTitle
	FROM Customer c	
	INNER JOIN CustomerStatus cs ON cs.CustomerStatusID = c.CustomerStatusID
	INNER JOIN CustomerProduct cp ON cp.CustomerID = c.CustomerID
	INNER JOIN Product p ON p.ProductID = cp.ProductID
	WHERE ((c.CustomerStatusID=@CustomerStatusID) OR (@CustomerStatusID=0)) 
				AND 
		((p.ProductID=@ProductID) OR (@ProductID=0))			
END
GO
/****** Object:  StoredProcedure [dbo].[spFillSMSTMPFromOther]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFillSMSTMPFromOther] 
	@CompanyName nVARCHAR(100), 
	@PersonTitle nVARCHAR(100),
	@MobilePhone NVARCHAR(30)
AS
BEGIN
	SET NOCOUNT ON
			
	INSERT INTO SMSTMP(CustomerID,CustomerNo,PersonTitle,CompanyName,Phone,MobilePhone,ProductTitle,CustomerStatusTitle)
	VALUES(0,'ساير',@PersonTitle,@CompanyName,'ساير',@MobilePhone,'ساير','ساير')	
		
END
GO
/****** Object:  StoredProcedure [dbo].[SpFollowUp_Report]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SpFollowUp_Report]
@Customerid	 INT = 0 ,
@MarketerID int = 0,
@ProductId INT = 0,
@ActionTypeID INT = 0,
@orgID INT = 1,
@GroupId INT = 0,
@DonStatusID int,
@FromDate NVARCHAR(10)='0',
@ToDate NVARCHAR(10)='0'

AS

SELECT   FollowUPID, Customer.CustomerID, FollowUp.DoneStatusID, FollowUp.MarketerID, FollowUp.Comment,DoneComment, ToDoDate, 
                      DoneDate, ToDoTime, SuccessChance, Customer.*, 
                      ActionType.ActionTypeTitle, DoneStatus.DoneStatustitle, Marketer.MarketerTitle,
Phone,WorkPhone1,InnerPhone, StatusSaveDate, FollowUpInsertDate, dbo.FN_GetCustomerProducts(Customer.CustomerID) AS ProductTitle, GroupTitle

FROM  dbo.FollowUp WITH(NOLOCK) 
inner JOIN   dbo.Customer   WITH(NOLOCK) ON FollowUp.CustomerID = Customer.CustomerID 
left JOIN    dbo.ActionType WITH(NOLOCK) ON FollowUp.ActionTypeID = ActionType.ActionTypeID 
left JOIN    dbo.DoneStatus WITH(NOLOCK) ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID 
left JOIN    dbo.Marketer   WITH(NOLOCK) ON FollowUp.MarketerID = Marketer.MarketerID
left JOIN    dbo.Groups     WITH(NOLOCK) on Groups.GroupID=Customer.GroupID 
--LEFT JOIN   dbo.Product AS P ON p.ProductID = Customer.ProductId
WHERE  
(@groupID = 0 or Customer.GroupID = @groupID)   and
(@MarketerID = 0 or FollowUp.MarketerID = @MarketerID) AND 
(@ProductId = 0 OR  '|'+ProductsIdSTR+'|' LIKE '%|'+CAST(@ProductId as NVARCHAR(10))+'|%' ) and
((FollowUp.ToDoDate between  @FromDate and @ToDate )OR(FollowUp.DoneDate between  @FromDate and @ToDate )) and 
(@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)and 
(@CustomerID=0 or FollowUp.CustomerID = @CustomerID) and 
(FollowUp.ActionTypeID = @ActionTypeID or @ActionTypeID = 0) 
and ((marketer.orgid = @orgid) or (@orgid in (Select UserTypeCode from dbo.UserType WITH(NOLOCK) where isnull(Admin, 0)= 1)) OR (@orgID = 0 ))
order by tododate,todotime
GO
/****** Object:  StoredProcedure [dbo].[spGetCustomersBirthDateSMS]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCustomersBirthDateSMS] 
	@ToDay VARCHAR(50),
	@SMSGroupSID INT,
	@SMSSubGroupsID INT,
	@Flag INT
	
AS
BEGIN
	SET NOCOUNT ON

	IF OBJECT_ID('tempdb..#ListCustomers') IS NOT NULL DROP TABLE #ListCustomers 
	CREATE TABLE #ListCustomers(CustomerID INT,CustomerNo VARCHAR(50),PersonTitle NVARCHAR(100),
								CompanyName NVARCHAR(100),Phone NVARCHAR(100),MobilePhone NVARCHAR(30),
								Today_SMS_Recieve BIT,Mean VARCHAR(50))

	INSERT INTO #ListCustomers 
	SELECT	c.CustomerID, c.CustomerNo, c.PersonTitle, 
			c.CompanyName, c.Phone , c.MobilePhone ,
			0 AS Today_SMS_Recieve,'ارسال نشده' AS Mean 		
	FROM Customer c
	WHERE (c.CustomerBirthDate=@ToDay)		  
	
	UPDATE #ListCustomers
	SET Today_SMS_Recieve = 1,
		Mean = 'ارسال شده'
	WHERE #ListCustomers.CustomerID IN (SELECT CustomerID FROM SMSLogs WHERE (SentDate=@ToDay) AND (SMSGroupSID=@SMSGroupSID) AND (SMSSubGroupsID=@SMSSubGroupsID))	  
			  
	SELECT * FROM #ListCustomers WHERE ((Today_SMS_Recieve=@Flag) OR (@Flag=2))	

END
GO
/****** Object:  StoredProcedure [dbo].[spGetCustomersForEndContractSMS]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCustomersForEndContractSMS] 
	@FromDate VARCHAR(50), 
	@ToDate VARCHAR(50),
	@ToDay VARCHAR(50),
	@SMSGroupSID INT,
	@SMSSubGroupsID INT,
	@Flag INT,
	@ProductID INT=0,
	@CustomerWithoutContract BIT=0
	
AS
BEGIN
	SET NOCOUNT ON
	IF OBJECT_ID('tempdb..#s') IS NOT NULL DROP TABLE #s
	SELECT MAX(c2.ContractID) AS ContractID,MAX(c2.EndDate) AS EndDate
	INTO #s 
	FROM Customer c
	INNER JOIN Contract c2 ON c.CustomerID=c2.CustomerID
	GROUP BY c2.CustomerID 	

	IF OBJECT_ID('tempdb..#ListCustomers') IS NOT NULL DROP TABLE #ListCustomers 
	CREATE TABLE #ListCustomers(CustomerID INT,CustomerNo VARCHAR(50),PersonTitle NVARCHAR(100),
								CompanyName NVARCHAR(100),Phone NVARCHAR(100),MobilePhone NVARCHAR(30),
								EndDate VARCHAR(50),Today_SMS_Recieve BIT,Mean VARCHAR(50),ProductTitle VARCHAR(300))
	IF @CustomerWithoutContract=0
	BEGIN
		INSERT INTO #ListCustomers 
		SELECT	c.CustomerID, c.CustomerNo, c.PersonTitle, 
				c.CompanyName, c.Phone , c.MobilePhone ,
				c2.EndDate,0 AS Today_SMS_Recieve,'ارسال نشده' AS Mean ,p.ProductTitle		
		FROM Contract c2
		INNER JOIN Customer c ON c.CustomerID = c2.CustomerID
		INNER JOIN Product p ON p.ProductID = c2.ProductID
		WHERE ( (c2.ContractID IN (SELECT ContractID FROM #s)) 
					AND
			  c2.EndDate>=@FromDate
					AND 
			  c2.EndDate<=@ToDate
					AND
			   ((c2.ProductID=@ProductID) OR (@ProductID=0))		
			 )		
	END
	ELSE
	BEGIN
		INSERT INTO #ListCustomers 
		SELECT	c.CustomerID, c.CustomerNo, c.PersonTitle, 
				c.CompanyName, c.Phone , c.MobilePhone ,
				c2.EndDate,0 AS Today_SMS_Recieve,'ارسال نشده' AS Mean ,p.ProductTitle		
		FROM Contract c2
		INNER JOIN Customer c ON c.CustomerID = c2.CustomerID
		INNER JOIN Product p ON p.ProductID = c2.ProductID
		WHERE ( (c2.ContractID IN (SELECT ContractID FROM #s)) 
					AND
			  c2.EndDate<@FromDate
					AND
			   ((c2.ProductID=@ProductID) OR (@ProductID=0))		
			 )		
	END			  
	
	UPDATE #ListCustomers
	SET Today_SMS_Recieve = 1,
		Mean = 'ارسال شده'
	WHERE #ListCustomers.CustomerID IN (SELECT CustomerID FROM SMSLogs WHERE (SentDate=@ToDay) AND (SMSGroupSID=@SMSGroupSID) AND (SMSSubGroupsID=@SMSSubGroupsID))	  
			  
	SELECT * FROM #ListCustomers WHERE ((Today_SMS_Recieve=@Flag) OR (@Flag=2))	
	ORDER BY EndDate

END
GO
/****** Object:  StoredProcedure [dbo].[spGetCustomersForLockSMS]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCustomersForLockSMS] 
	@FromDate VARCHAR(50), 
	@ToDate VARCHAR(50),
	@ToDay VARCHAR(50),
	@SMSGroupSID INT,
	@SMSSubGroupsID INT,
	@Flag INT
	
AS
BEGIN
	SET NOCOUNT ON

	IF OBJECT_ID('tempdb..#ListCustomers') IS NOT NULL DROP TABLE #ListCustomers 
	CREATE TABLE #ListCustomers(CustomerID INT,CustomerNo VARCHAR(50),PersonTitle NVARCHAR(100),
								CompanyName NVARCHAR(100),Phone NVARCHAR(100),MobilePhone NVARCHAR(30),
								EXPIREDATE VARCHAR(50),Today_SMS_Recieve BIT,Mean VARCHAR(50))

	INSERT INTO #ListCustomers 
	SELECT	c.CustomerID, c.CustomerNo, c.PersonTitle, 
			c.CompanyName, c.Phone , c.MobilePhone ,
			s.EXPIREDATE,0 AS Today_SMS_Recieve,'ارسال نشده' AS Mean 		
	FROM Serial s
	INNER JOIN Customer c ON c.CustomerID = s.CustomerID
	WHERE (s.CustomerDelivery=1
				AND
		  s.EXPIREDATE>=@FromDate
				AND 
		  s.EXPIREDATE<=@ToDate)
		  
	
	UPDATE #ListCustomers
	SET Today_SMS_Recieve = 1,
		Mean = 'ارسال شده'
	WHERE #ListCustomers.CustomerID IN (SELECT CustomerID FROM SMSLogs WHERE (SentDate=@ToDay) AND (SMSGroupSID=@SMSGroupSID) AND (SMSSubGroupsID=@SMSSubGroupsID))	  
			  
	SELECT * FROM #ListCustomers WHERE ((Today_SMS_Recieve=@Flag) OR (@Flag=2))	
	ORDER BY EXPIREDATE

END
GO
/****** Object:  StoredProcedure [dbo].[spRepUserWork]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[spRepUserWork] 
	@UserID int, 
	@FromDate VARCHAR(50),
	@ToDate VARCHAR(50),
	@ActionType INT = 0
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @SqlString NVARCHAR(2000)
	
	SET @SqlString='Select c.CustomerID,c.PersonTitle,c.CompanyName,at.ActionTypeTitle,f.ToDoDate,f.Comment,u.Title'+
					' from followup f WITH(NOLOCK) '+
					' INNER JOIN marketer m WITH(NOLOCK) on m.marketerid=f.marketerid'+
					' INNER JOIN Users u  WITH(NOLOCK) ON m.MarketerID = u.MarketerID'+
					' INNER JOIN ActionType at WITH(NOLOCK) ON f.ActionTypeID=at.ActionTypeID'+
					' INNER JOIN Customer c WITH(NOLOCK) ON f.CustomerID=c.CustomerID'+
					' WHERE 1=1 '
					--' WHERE (f.ActionTypeID IN (6,7,19,20,22,23,26,31))'
					
	IF @UserID=-1 SET @SqlString=@SqlString+' AND (u.Id=-1)'
	ELSE IF @UserID>0 SET @SqlString=@SqlString+' AND (u.Id='+CAST(@UserID AS VARCHAR(50))+')'

	IF @FromDate<>'' SET @SqlString=@SqlString+' AND (f.ToDoDate>='''+CAST(@FromDate AS VARCHAR(50))+''' AND f.ToDoDate<='''+CAST(@ToDate AS VARCHAR(50))+''')'	
	
	IF @ActionType>0
		set @SqlString = @SqlString + ' AND F.ActionTypeID = '+ CONVERT(VARCHAR(10), @ActionType)
	
	--PRINT @SqlString
 	Exec Sp_ExecuteSql @SqlString
END
GO
/****** Object:  StoredProcedure [dbo].[SpSalesFunnel_Report]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC [dbo].[SpSalesFunnel_Report]
@TypeId INT = 0,
@Customerid	 INT = 0 ,
@ProductId INT = 0,
@MarketerId INT = 0 ,
@FromDate NVARCHAR(10)='0',
@ToDate NVARCHAR(10)='0',
@GroupId INT = 0,
@CompaingID INT = 0,
@CustomerStatusId INT = 0

AS

create table #Tempfunnel
(
	id INT IDENTITY, 
    MarketerId int, 
    ProductID int, 
    Level1 int, 
    Level2 int, 
    Level3 int,
    Level4 int,
    Level5 int, 
    Level6 int, 
    Level7 int
)

create table #TempCustomer
(
    MarketerId int, 
    ProductStr NVARCHAR(100), 
    Customerid INT,
    StateID INT 
)

-- @TypeId 0 بدون تفکیک   
-- 1 کارشناس
-- 2 محصول

    INSERT INTO  #TempCustomer
	SELECT MarketerID, ProductsIdSTR , Customerid,C.CustomerStatusID
	  FROM dbo.Customer AS C 
	WHERE ((@Customerid = 0) OR (C.CustomerID = @Customerid))
	AND ((@FromDate='0' AND @ToDate='0') OR (c.Insertdate  BETWEEN @FromDate AND @ToDate))
	AND ((@MarketerId = 0) OR (c.MarketerID = @MarketerId))
	AND ((@ProductId = 0) OR ('|'+c.ProductsIdSTR+'|' LIKE '%|'+CAST(@ProductId AS nvarCHAR(2))+'|%'))
	AND ((@GroupId = 0) OR (c.GroupId = @GroupId))
	AND ((@CompaingID = 0) OR (c.CompaginID = @CompaingID))
	AND ((@CustomerStatusId = 0) OR (c.CustomerStatusID = @CustomerStatusId))
		

	INSERT INTO #Tempfunnel
	SELECT 0 MarketerId ,0 ProductID, 0 Level1,0 Level2,0 Level3, 0 Level4 ,0 Level5,0 Level6, 0 Level7  WHERE @TypeId = 0
	UNION ALL
	SELECT  MarketerId ,0 ProductID, 0 Level1,0 Level2,0 Level3, 0 Level4 ,0 Level5,0 Level6, 0 Level7  FROM dbo.Marketer AS M
	WHERE @TypeId = 1 and M.MarketerID IN ( SELECT MarketerID FROM #TempCustomer WHERE @TypeId = 1 	)
	UNION all
	SELECT 0 MarketerId ,ProductID, 0 Level1,0 Level2,0 Level3, 0 Level4 ,0 Level5,0 Level6, 0 Level7  FROM dbo.Product AS P
	WHERE @TypeId = 2 and P.ProductID IN --( SELECT ProductStr FROM #TempCustomer WHERE @TypeId = 2 )
	(SELECT pc.ProductID FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE @TypeId = 2)
	
--SELECT * FROM #Tempfunnel
DECLARE     
	@cid INT,
	@cMarketerId int, 
    @cProductID int, 
    @cLevel1 int, 
    @cLevel2 int, 
    @cLevel3 int,
    @cLevel4 int,
    @cLevel5 int, 
    @cLevel6 int, 
    @cLevel7 INT
    
DECLARE a_cursor CURSOR FOR

SELECT 
    id,
    MarketerId , 
    ProductID , 
    Level1 , 
    Level2 , 
    Level3 ,
    Level4 ,
    Level5 , 
    Level6 , 
    Level7 
FROM #Tempfunnel

OPEN a_cursor

FETCH NEXT FROM a_cursor
INTO    @cid ,
		@cMarketerId , 
		@cProductID , 
		@cLevel1 , 
		@cLevel2 , 
		@cLevel3 ,
		@cLevel4 ,
		@cLevel5 , 
		@cLevel6 , 
		@cLevel7 

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @TypeId = 0
    BEGIN
      UPDATE #Tempfunnel 
      SET Level1 = (SELECT COUNT(customerid) FROM #TempCustomer  )
       -- ارسال فکس و ارسال کاتالوگ
      ,Level2 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 7  ) AND DoneStatusID = 2)
  	  -- آماده سازی دمو	       
      ,Level3 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 8  ) )
      -- دمو		       
      ,Level4 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 9  ) AND DoneStatusID = 2)
  	  -- ارسال پیش فاکتور	       
      ,Level5 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 10  ) AND DoneStatusID = 2)  
  		--مرحله نهایی فروش       
      -- ,Level6 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer) AND 
  	--	       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 11  ) AND DoneStatusID = 2)   		       		         		         		       
      ,Level6 = (SELECT COUNT(customerid) FROM #TempCustomer WHERE StateID = 2 )
      ,Level7 = (SELECT COUNT(customerid) FROM #TempCustomer WHERE StateID = 3 )
      WHERE id = @cid	
      
    	
    END
    ELSE 
    IF @TypeId = 1
    BEGIN
      UPDATE #Tempfunnel 
      SET Level1 = (SELECT COUNT(customerid) FROM #TempCustomer  WHERE MarketerId = @cMarketerId)
      ,Level2 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer WHERE MarketerId = @cMarketerId ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 7  ) AND DoneStatusID = 2 )
      ,Level3 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer WHERE MarketerId = @cMarketerId ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 8  ) )
      ,Level4 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer WHERE MarketerId = @cMarketerId ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 9  ) AND DoneStatusID = 2)
      ,Level5 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer WHERE MarketerId = @cMarketerId ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 10  ) AND DoneStatusID = 2)  
       ,Level6 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT Customerid FROM #TempCustomer WHERE MarketerId = @cMarketerId ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 11  ) AND DoneStatusID = 2)   
     -- ,Level6 = (SELECT COUNT(customerid) FROM #TempCustomer WHERE StateID = 2 AND MarketerId = @cMarketerId)
      ,Level7 = (SELECT COUNT(customerid) FROM #TempCustomer WHERE StateID = 3 AND MarketerId = @cMarketerId)
      WHERE id = @cid	    	
    	
    END
    ELSE 
    IF @TypeId = 2
    BEGIN
      UPDATE #Tempfunnel 
      SET Level1 = (SELECT COUNT(c.customerid) FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE pc.ProductID = @cProductID )
      ,Level2 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT c.Customerid FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE pc.ProductID = @cProductID ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 7  ) AND DoneStatusID = 2)
      ,Level3 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT c.Customerid FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE pc.ProductID = @cProductID ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 8  ) )
      ,Level4 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT c.Customerid FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE pc.ProductID = @cProductID ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 9  ) AND DoneStatusID = 2)
      ,Level5 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT c.Customerid FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE pc.ProductID = @cProductID ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 10  ) AND DoneStatusID = 2)  
      ,Level6 = (SELECT COUNT(FollowUPID) FROM dbo.FollowUp AS FU WHERE FU.CustomerID IN  ( SELECT c.Customerid FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE pc.ProductID = @cProductID ) AND 
  		       ActionTypeID IN ( SELECT ChildID FROM [dbo].[ActionType_Level] WHERE  ParentID = 11  ) AND DoneStatusID = 2)
     -- ,Level6 = (SELECT COUNT(c.customerid) FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE c.StateID = 2 AND pc.ProductID = @cProductID )
      ,Level7 = (SELECT COUNT(c.customerid) FROM #TempCustomer c LEFT JOIN dbo.CustomerProduct AS PC ON  pc.CustomerID = c.Customerid  WHERE c.StateID = 3 AND pc.ProductID = @cProductID )
      WHERE id = @cid	    	
    END        

    FETCH NEXT FROM a_cursor
    INTO    @cid ,
			@cMarketerId , 
			@cProductID , 
			@cLevel1 , 
			@cLevel2 , 
			@cLevel3 ,
			@cLevel4 ,
			@cLevel5 , 
			@cLevel6 , 
			@cLevel7 
END
CLOSE a_cursor;
DEALLOCATE a_cursor;	
	
SELECT * FROM #Tempfunnel
GO
/****** Object:  StoredProcedure [dbo].[SpTask_Report]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[SpTask_Report]
@Customerid	 INT = 0 ,
@ProductId INT = 0,
@TypeId INT = 0,
@PriorityId INT = 0,
@UserId INT = 0 ,
@CaseId INT = 0,
@State INT = 0,
@ToDate NVARCHAR(10)='0'

AS

SELECT * FROM (
SELECT 
       c.[CaseID]
      ,c.[CaseTitle]
      ,c.[Comment]
      ,c.[ProductId]
      ,p.ProductTitle
      ,c.[ProductVersion]
      ,c.[CaseTypeID]
      ,c.[CasePriorityId]
      ,cp.CasePriorityTitle
      ,c.[CustomerID]
      ,c.[RegisterDate]
      ,c.[RegisterUserID]
      ,c.[Completed]
      ,c.[CompleteDate]
      ,c.[CompleteComment]
      ,c.[IsBug]
      ,CASE WHEN c.[Completed]= 1 THEN 'در کارتابل کاربری نیست' ELSE  u.Title  END AssignUserTitle
      ,ts.TaskStatusTitle +
      CASE WHEN c.[Completed]= 1 THEN '' ELSE  ' ('+u.Title+') '  END TaskStatusTitle
      ,AssignedComment
      ,CAST(c.[CustomerID] AS nvarchar) +' - ('+CAST( c.[CaseID] AS nvarchar)+')' customercaseid
	  ,AssignedUserId
FROM dbo.Cases AS C WITH(NOLOCK)
LEFT JOIN dbo.tasks t         WITH(NOLOCK) ON t.CaseId = c.CaseID
LEFT JOIN dbo.Product AS P    WITH(NOLOCK) ON p.ProductID = c.ProductId
LEFT JOIN dbo.CasePriority cp WITH(NOLOCK) ON cp.CasePriorityID = C.CasePriorityId
LEFT JOIN dbo.Users      u    WITH(NOLOCK)     ON u.Id = t.AssignedUserId 
LEFT JOIN dbo.TaskStatus ts   WITH(NOLOCK) ON ts.TaskStatusID = T.StatusId  
WHERE c.IsActive = 1 AND C.CaseTypeID <> 9 and c.[Completed]= 1 AND StatusId = 11
UNION all
SELECT 
       c.[CaseID]
      ,c.[CaseTitle]
      ,c.[Comment]
      ,c.[ProductId]
      ,p.ProductTitle
      ,c.[ProductVersion]
      ,c.[CaseTypeID]
      ,c.[CasePriorityId]
      ,cp.CasePriorityTitle
      ,c.[CustomerID]
      ,c.[RegisterDate]
      ,c.[RegisterUserID]
      ,c.[Completed]
      ,c.[CompleteDate]
      ,c.[CompleteComment]
      ,c.[IsBug]
      ,CASE WHEN c.[Completed]= 1 THEN 'کار اتمام شده در کارتابل کاربری نیست' ELSE  u.Title  END AssignUserTitle
      ,ts.TaskStatusTitle +
      CASE WHEN c.[Completed]= 1 THEN '' ELSE  ' ('+u.Title+') '  END TaskStatusTitle
	  ,AssignedComment
	  ,CAST(c.[CustomerID] AS nvarchar) +' - ('+CAST( c.[CaseID] AS nvarchar) +')' customercaseid
	  ,AssignedUserId
FROM dbo.Cases AS C WITH(NOLOCK)
LEFT JOIN dbo.tasks t          WITH(NOLOCK) ON t.CaseId = c.CaseID
LEFT JOIN dbo.Product AS P     WITH(NOLOCK) ON p.ProductID = c.ProductId
LEFT JOIN dbo.CasePriority cp  WITH(NOLOCK) ON cp.CasePriorityID = C.CasePriorityId
LEFT JOIN dbo.Users      u     WITH(NOLOCK) ON u.Id = t.AssignedUserId 
LEFT JOIN dbo.TaskStatus ts    WITH(NOLOCK) ON ts.TaskStatusID = T.StatusId  
WHERE c.IsActive = 1 AND C.CaseTypeID <> 9 and c.[Completed]= 0 AND taskid IN ( SELECT MAX(taskid) FROM dbo.tasks WITH(NOLOCK) GROUP BY dbo.tasks.CaseId)
) tt
WHERE  (@Customerid = 0 OR  Customerid = @Customerid )
 AND (@CaseId = 0 OR  CaseID = @CaseId )
 AND (@ProductId = 0 OR  ProductId = @ProductId )
 AND (@PriorityId = 0 OR  CasePriorityId = @PriorityId )
 AND (@TypeId = 0 OR  CaseTypeID = @TypeId )
 AND (@UserId = 0 OR  AssignedUserId = @UserId )
 AND ((@ToDate ='0' ) OR (RegisterDate BETWEEN @ToDate AND @ToDate))
  AND (@State = 0 OR  Completed = @State )
 
GO
/****** Object:  StoredProcedure [dbo].[SpTimeIntervalSale_Report]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SpTimeIntervalSale_Report]
@Customerid	 INT = 0 ,
@MarketerID int = 0,
@ProductId INT = 0,
@GroupId INT = 0,
@CustomerStatusID INT = 0,
@FromDate NVARCHAR(10)='0',
@ToDate NVARCHAR(10)='0'

AS

SELECT  Customer.*, GroupTitle, Marketer.MarketerTitle
--,1 FirstTime ,2 SecondTime,3 ThirdTime
,[dbo].[ShamsiDateDiff](Customer. Insertdate,F.[DoneDate]) FirstTime
,[dbo].[ShamsiDateDiff](F.[DoneDate],C.BeginDate ) SecondTime
,[dbo].[ShamsiDateDiff](Customer. Insertdate,C.BeginDate ) ThirdTime
,F.[DoneDate] DemoDate ,C.BeginDate SaleDate

FROM  dbo.Customer   WITH(NOLOCK) 
left JOIN    dbo.Marketer   WITH(NOLOCK) ON Customer.MarketerID = Marketer.MarketerID
left JOIN    dbo.Groups     WITH(NOLOCK) on Groups.GroupID = Customer.GroupID 
left JOIN   (SELECT DISTINCT CustomerID ,MIN(DoneDate) DoneDate from  dbo.FollowUp  WITH(NOLOCK) where ActionTypeID  = 7 GROUP BY CustomerID ) f on Customer.CustomerID = f.CustomerID 
LEFT JOIN   (SELECT DISTINCT CustomerID ,MIN(BeginDate) BeginDate from  dbo.Contract  WITH(NOLOCK)  GROUP BY CustomerID) c  on Customer.CustomerID = C.CustomerID 
WHERE  
(@groupID = 0 or Customer.GroupID = @groupID)   and
(@MarketerID = 0 or Customer.MarketerID = @MarketerID) AND 
(@ProductId = 0 OR  '|'+ProductsIdSTR+'|' LIKE '%|'+CAST(@ProductId as NVARCHAR(10))+'|%' ) and
((Customer.Insertdate between  @FromDate and @ToDate )) and 
(@CustomerID=0 or Customer.CustomerID = @CustomerID) AND
(@CustomerStatusID=0 or Customer.CustomerStatusID = @CustomerStatusID) 
order BY Customer. Insertdate
GO
/****** Object:  StoredProcedure [dbo].[update_Crm]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[update_Crm]
AS
update  customer  
set customerstatusid=1
where customerstatusid>3
AND customerstatusid <>7
and exists (select * from followup where donestatusid=1 and customerid=customer.customerid)
and insertdate>='1387/04/01'


GO
/****** Object:  StoredProcedure [dbo].[Update_CustomerNo]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Update_CustomerNo]
@CustomerID int,
@CustomerNo varchar(50)
as

UPDATE  Customer
   SET [CustomerNo] = @CustomerNo
     
 WHERE CustomerID=@CustomerID
GO
/****** Object:  StoredProcedure [dbo].[update_UserLoginLogout]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
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
/****** Object:  StoredProcedure [dbo].[Y_Backup]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Y_Backup](@dbname nvarchar(50),@path nvarchar(255))
 as
Exec('backup database '+@dbname+' to disk='''+@path+'''')



GO
/****** Object:  StoredProcedure [dbo].[Y_ReindexTables]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[Y_ReindexTables]
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


exec Y_shrink 'YLoanCash'







GO
/****** Object:  StoredProcedure [dbo].[Y_Shrink]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Y_Shrink](@dbname nvarchar(50))
 as
declare @i tinyint
set @i=1
while @i<=5
begin
Exec('backup log '+@dbname+' with truncate_only')

  dbcc shrinkfile(1,1)
 dbcc shrinkfile(2,1)
set @i=@i+1
end




GO
/****** Object:  StoredProcedure [dbo].[YCRM_Select_Letter_By_CustomerID]    Script Date: 18/07/1403 03:49:39 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[YCRM_Select_Letter_By_CustomerID]
@CustomerID INT , @DBName VARCHAR(100)
AS

DECLARE @Sql VARCHAR(4000)

SET @Sql='
SELECT list1.*,fo.Title+fo.ResponsibleStaffer AS ToOrgIDDesc FROM 
(
SELECT	fo.title,
		l.indicatorId,
		l.SecretariatID,
		s.SecTitle SecretariatDesc,
		l.LetterID,    
		l.MYear, 		 
		l.Letter_Type,
		lt.Title Letter_TypeDesc,
		l.letterformat,
		lf.Title letterformatDesc,
		l.IncommingNO,                                        
		l.Incommingdate, 
		l.CenterNo,
		l.CenterDate,
		l.FromOrgID,
		fo.Title+fo.ResponsibleStaffer AS FromOrgDesc,
		l.ToOrgID,
		l.Signerid,
		l.ClassificationID, 
		c.Title ClassificationDesc,
		l.UrgencyID,		
		u2.Title UrgencyDesc,
		l.Memo,
		l.AttachTitle,                                                                                                                                                                                                                                                     
		l.NumberOfAttachPages, 
		l.NumberOfPage,
		l.ReceiveTypeID,
		rt.Title ReceiveTypeDesc,
		u.UserName,
		l.RetroactionNo,
		l.UserMemo,
		l.RegistrationDate,
		l.RegistrationTime,
		l.FollowLetterNo,
		l.ToStaffer,	
		l.SentLetterID,
		l.TemplateID,
		l.HeaderID,
		l.LetterRecommites,                                                                                                                                                                                                                                                
		l.PreCode,
		l.fromstaffer,                                       
		l.Finalized,
		l.SendStatusID,
		ss.SendStatusTitle SendStatusDesc,
		l.LatestActionTypeID,
		at.ActionTypeTitle AS latestActionTypeDesc,
		sb.SubjectTitle

FROM '+CAST(@DBName AS VARCHAR(100))+'..Letter L WITH(NOLOCK)
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..Secretariats s WITH(NOLOCK) ON s.SecID = L.SecretariatID
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..LetterTypes lt WITH(NOLOCK) ON lt.ID = L.Letter_Type
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..LetterFormats lf WITH(NOLOCK) ON L.letterformat=lf.Code
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..FromOrganizations fo WITH(NOLOCK) ON l.FromOrgID=fo.ID 
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..ReceiveTypes rt  WITH(NOLOCK) ON l.ReceiveTypeID=rt.ID
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..Users u WITH(NOLOCK) ON l.UserID=u.Id
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..SendStatus ss WITH(NOLOCK) ON l.SendStatusID=ss.SendStatusID
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..ActionType at WITH(NOLOCK) ON l.LatestActionTypeID=at.ActionTypeID
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..Urgenceis u2 WITH(NOLOCK) ON l.UrgencyID=u2.ID
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..Classifications c WITH(NOLOCK) ON l.ClassificationID=c.ID
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..Subject sb WITH(NOLOCK) ON l.SubjectID=sb.SubjectID

WHERE L.CustomerID='+CAST(@CustomerID AS VARCHAR(50))+
' ) AS list1
LEFT JOIN '+CAST(@DBName AS VARCHAR(100))+'..FromOrganizations fo WITH(NOLOCK) ON list1.ToOrgID=fo.ID'

EXEC (@Sql)
GO
