

	if not exists (select * from setting where VariableName='EnableSms')
	insert into Setting (UserID,VariableName,Value)
	values(-1,'EnableSms','1')
GO
	if not exists (select * from setting where VariableName='TerminalID')
	insert into Setting (UserID,VariableName,Value)
	values(-1,'TerminalID','')
GO
	if not exists (select * from setting where VariableName='SmsPassWord')
	insert into Setting (UserID,VariableName,Value)
	values(-1,'SmsPassWord','')

GO
	IF OBJECT_ID('Contact') IS NOT NULL
	IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='Contact' AND COLUMN_NAME='SexId' ) 
	ALTER TABLE dbo.Contact 
	ADD SexId INT NOT NULL DEFAULT 0 

	IF object_id('Sexes') IS NULL
	CREATE TABLE Sexes
	(
		Sexid INT IDENTITY (1,1),
		Title varchar(100),
		SimilarWord varchar(100)
		CONSTRAINT PK_Sexes PRIMARY KEY CLUSTERED
		(
			SexId asc
		)
	)

	SET IDENTITY_INSERT sexes ON
	IF NOT Exists(SELECT * FROM sexes WHERE title='نامشخص')
	INSERT INTO sexes (sexid,title ,SimilarWord)
	VALUES(0,'نامشخص','آقای/خانم')
	IF NOT Exists(SELECT * FROM sexes WHERE title='مرد')
	INSERT INTO sexes (sexid,title ,SimilarWord)
	VALUES(1,'مرد','آقای')
	IF NOT Exists(SELECT * FROM sexes WHERE title='زن')
	INSERT INTO sexes (sexid,title ,SimilarWord)
	VALUES(2,'زن','خانم')
	SET IDENTITY_INSERT sexes OFF

GO   
	IF OBJECT_ID('Contact') IS NOT NULL
	
	IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='Contact' AND COLUMN_NAME='SendSms') 
	ALTER TABLE dbo.Contact 
	ADD SendSms BIT NOT NULL DEFAULT 1


	IF OBJECT_ID ('SmsLogs') IS NULL
	CREATE TABLE SmsLogs 
	(
		SmsLogId INT IDENTITY(1,1)	,
		SmsDate DATETIME,
		SmsText VARCHAR(4000),
		SmsType INT,
		CONSTRAINT PK_SmsLogs PRIMARY KEY CLUSTERED
	(
		SmsLogId asc
	)   
	)
GO
	IF OBJECT_ID('AddShamsi') IS NOT NULL 
	DROP FUNCTION AddShamsi 
GO
	CREATE Function AddShamsi(@Count INT)
	RETURNS VARCHAR(10)
	AS
	BEGIN
		DECLARE   @Date CHAR(10)
		--@x date
		SET @Date=''
		--SET  @x= DATEADD(DAY,@Count,GETDATE())
	--	SELECT @Date = dbo.Shamsi(@x)
		RETURN @Date 
	END
GO
	if object_id('REPORT_FORCEPAYMENTSMS') is not null
	drop procedure REPORT_FORCEPAYMENTSMS
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
	 #M.accountno ,#M.accounttitle,#M.loanno,FOCETYPETITLE  ,COUNT(*)DelayCount  ,FORCETYPE.FOCETYPEID,#m.ContactID,c.Phones,s.SimilarWord
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
	if object_id('SelectContact') is not null
	drop procedure  SelectContact
GO
	Create PROCEDURE SelectContact (@FirstName varchar(100),@LastName varchar(100),@BirthDate varchar(10),@SexId int)
	AS
	BEGIN
		SET @FirstName=ISNULL(@FirstName,'')
		SET @FirstName=LTRIM(RTRIM(@FirstName))
		SET @LastName=ISNULL(@LastName,'')
		SET @LastName=LTRIM(RTRIM(@LastName))
		SET @BirthDate=ISNULL(@BirthDate,'')
		SET @BirthDate=LTRIM(RTRIM(SUBSTRING(@BirthDate,6,LEN(@BirthDate))))
		SET @SexId=ISNULL(@SexId,-1)
		
		DECLARE @sql VARCHAR(4000)
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
	if object_id('REPORT_FORCEPAYMENT') is not null
	drop procedure  REPORT_FORCEPAYMENT
GO
	Create PROCEDURE [dbo].[REPORT_FORCEPAYMENT]         
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
			LOANORMONTHLYTITLE NVARCHAR(100)         
	)          
			  
			  
			  
	IF @SEARCHBYLOANNO=1          
	begin
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
														   WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE 
																		FROM MONTHLYTYPE MT 
																		INNER JOIN MonthlyType_Detail mtd ON mtd.MonthlyTypeID = mt.MonthlyTypeID
																		WHERE MTd.Amount=FORCEPAYMENT.Amount AND LEFT (MATUREDATE,4) =mtd.MonthlyTypeYear) END AS LOANORMONTHLYTITLE      	FROM  FORCEPAYMENT 
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


	end		
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
														   WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE 
																		FROM MONTHLYTYPE MT 
																		INNER JOIN MonthlyType_Detail mtd ON mtd.MonthlyTypeID = mt.MonthlyTypeID
																		WHERE MTd.Amount=FORCEPAYMENT.Amount AND LEFT (MATUREDATE,4) =mtd.MonthlyTypeYear) END AS LOANORMONTHLYTITLE           FROM  FORCEPAYMENT          
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
	   begin
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
														   WHEN 2 THEN (SELECT TOP 1 MT.MONTHLYTYPETITLE 
																		FROM MONTHLYTYPE MT 
																		INNER JOIN MonthlyType_Detail mtd ON mtd.MonthlyTypeID = mt.MonthlyTypeID
																		WHERE MTd.Amount=FORCEPAYMENT.Amount AND LEFT (MATUREDATE,4) =mtd.MonthlyTypeYear) END AS LOANORMONTHLYTITLE      
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
		end        
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
	IF object_id('SELECT_ACCOUNT_DETAILS') IS NOT NULL
	DROP PROCEDURE SELECT_ACCOUNT_DETAILS
GO
	CREATE PROCEDURE [dbo].[SELECT_ACCOUNT_DETAILS] @ACCOUNTID INT        
	AS    
	SELECT  ACCOUNTID,ACCOUNTNO,ACCOUNTDATE,CONTACT.PERSONALNO,CONTACT.SIGN,CONTACT.PICTURE,        
			ISNULL(CASE WHEN ACCOUNT.ACCOUNTTYPEID IN (1,3 ,5,6) THEN ISNULL(FIRSTNAME+' ','')+LASTNAME+' ش.حساب: '+ ACCOUNTNO  ELSE ACCOUNTTITLE+' ش.حساب: '+ ACCOUNTNO END,ACCOUNTTITLE+' ش.حساب: '+ ACCOUNTNO) ACCOUNTTITLE,        
			CASE WHEN DBO.BALANCE(@ACCOUNTID,'1399/12/29')<0 THEN 'بدهکار'        
				   WHEN DBO.BALANCE(@ACCOUNTID,'1399/12/29')>0 THEN 'بستانکار'        
				   ELSE 'تسويه' END DEBITSTATUS,        
			(SELECT COUNT(1) FROM FORCEPAYMENT  INNER JOIN LOAN ON LOAN.LOANID=FORCEPAYMENT.PARENTID WHERE   FORCETYPEID=1 AND LOAN.ACCOUNTID=@ACCOUNTID AND ISNULL(FORCEPAYMENT.PAYMENTID,0)=0) NUMBEROFNOTPAIDPART ,        
	 DBO.EXIST(@ACCOUNTID,'1399/12/29') EXIST,        
	 DBO.TOTALEXIST(@ACCOUNTID,'1399/12/29', 0) TOTALEXIST,        
	 DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,1,'1399/12/29') PAYBALANCE,        
	 DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,2,'1399/12/29') MONTHLYBALANCE,  
	 CASE SIGN(DBO.BALANCE(ACCOUNT.ACCOUNTID,'9')) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END DEBITSTATUSTITLE ,  
	 CASE SIGN(DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,1,'1399/12/29')) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END PAYBALANCETitle ,  
	 CASE SIGN(DBO.BALANCE_BYPAYTYPEID(@ACCOUNTID,2,'1399/12/29')) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END MONTHLYBALANCETitle ,  
	 CASE SIGN(DBO.EXIST(@ACCOUNTID,'1399/12/29')) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END EXISTTitle ,
	 CASE SIGN(DBO.TOTALEXIST(@ACCOUNTID,'1399/12/29', 0)) WHEN 1 THEN 'بستانکار' WHEN -1 THEN  'بدهكار' ELSE 'تسويه' END TOTALEXISTTitle,  

	 ACCOUNT.CONTACTID ,dbo.GetPhoneNumber(ACCOUNT.CONTACTID) Phone
	        
	FROM     ACCOUNT            
			 LEFT JOIN MONTHLYTYPE ON ACCOUNT.MONTHLYTYPEID=MONTHLYTYPE.MONTHLYTYPEID        
			 LEFT JOIN ACCOUNTTYPE ON ACCOUNT.ACCOUNTTYPEID=ACCOUNTTYPE.ACCOUNTTYPEID        
			 LEFT JOIN CONTACT     ON ACCOUNT.CONTACTID=CONTACT.CONTACTID        
	WHERE ACCOUNTID=@ACCOUNTID 
GO

	IF object_id ('GetPhoneNumber') IS NOT NULL
	DROP FUNCTION GetPhoneNumber
GO
	CREATE FUNCTION GetPhoneNumber (@ContactID int)
	RETURNS nvarchar(50)
	AS 
	BEGIN
		DECLARE @PhoneNumber NVARCHAR(50)
		SELECT @PhoneNumber=Phones FROM dbo.Contact WHERE ContactID=@ContactID
		RETURN ISNULL(@PhoneNumber,'-1')
	
END
GO
IF OBJECT_ID('OutBox') IS NULL
CREATE TABLE OutBox
(
	OutBoxId INT IDENTITY(1,1),
	SmsNumber varchar(11),
	SmsText VARCHAR(4000),
	SendDate DATETIME DEFAULT GETDATE(),
	Inprocess BIT DEFAULT 0 ,
	IsSend BIT DEFAULT 0,
	ErrorMessage int
)
