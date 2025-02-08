/************************************************************
 * Code formatted by Vahid Hamzehzadeh
 * Time: 21/02/1402 10:04:40 ﬁ.Ÿ
 ************************************************************/
IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[dbo].[REPORT_FORCEPAYMENT]') AND TYPE IN (N'P', N'PC'))
    DROP PROCEDURE [dbo].[REPORT_FORCEPAYMENT]
GO

CREATE PROCEDURE [dbo].[REPORT_FORCEPAYMENT]
	@FOCETYPEID TINYINT, -- 0 MEANS ALL
	@PAYSTATUS TINYINT, --  0= NOTPAID, 1=PAID,2 MEANS ALL
	@GROUPINGBYACCOUNT BIT=0, --
	@DELAYDAYS TINYINT, -- 0= ALL , 1=DELAYED,2 LATESTNOTPAID
	@ONLYLATEST BIT , --0 = ALL ,1= LATEST
	@NO VARCHAR(20)='0', -- 0 MEANS ALL
	@SEARCHBYLOANNO BIT=0, --
	@MATUREDATEFROM CHAR(10),
	@MATUREDATETO CHAR(10),
	@FAMILYID SMALLINT, -- 0 MEANS ALL
	@LOANTYPEID SMALLINT=0, -- 0 MEANS ALL
	@MONTHLYTYPEID SMALLINT=0, -- 0 MEANS ALL
	@TODAY CHAR(10)=NULL,
	@TOP INT=1000,
	@SUMAMOUNT BIGINT OUTPUT,
	@SUMAMERCE BIGINT OUTPUT,
	@SUMINTEREST BIGINT OUTPUT
AS
	IF @ONLYLATEST=1
	BEGIN
	    SET @PAYSTATUS = 0
	    SET @DELAYDAYS = 0
	END
	
	SET @NO = ISNULL(LTRIM(@NO), '')
	IF @SEARCHBYLOANNO=1
	    SET @FOCETYPEID = 1
	
	DECLARE @RESULTTABLE TABLE
	(
		ACCOUNTID INT,
		FORCETYPEID TINYINT NOT NULL,
		FORCEPAYMENTID INT NOT NULL,
		PARENTID INT NOT NULL,
		ACCOUNTNO VARCHAR(20) NOT NULL,
		ACCOUNTTITLE NVARCHAR(100) NULL,
		LOANNO VARCHAR(10) NULL,
		AMOUNT BIGINT NOT NULL,
		MATUREDATE CHAR(10) NOT NULL,
		PAID BIT NOT NULL,
		ORDERNO TINYINT NOT NULL,
		DELAY INT NULL,
		AMERCE BIGINT NULL,
		PAYMENTID INT NULL,
		PAYDATE CHAR(10),
		COMMENT NVARCHAR(100),
		INTERESTAMOUNT INT,
		LOANORMONTHLYTITLE NVARCHAR(100)
	)          
	
	IF @SEARCHBYLOANNO=1
	    INSERT INTO @RESULTTABLE
	    SELECT ACCOUNT.ACCOUNTID, FORCETYPEID, FORCEPAYMENTID, PARENTID, ACCOUNTNO, DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE, LOANNO,
	           FORCEPAYMENT.AMOUNT, MATUREDATE, PAID, ORDERNO, 1 AS DELAY, 2 AS AMERCE, FORCEPAYMENT.PAYMENTID, NULL, COMMENT, INTERESTAMOUNT,
	           CASE FORCEPAYMENT.FORCETYPEID
	                WHEN 1 THEN (
	                         SELECT TOP 1 LTT.LOANTYPETITLE
	                         FROM LOANTYPE LTT
	                         WHERE LTT.LOANTYPEID = LOAN.LOANTYPEID
	                     )
	                WHEN 2 THEN (
	                         SELECT TOP 1 MT.MONTHLYTYPETITLE
	                         FROM MONTHLYTYPE MT
	                         WHERE ACCOUNT.MONTHLYTYPEID = MT.MONTHLYTYPEID
	                     )
	           END AS LOANORMONTHLYTITLE
	    FROM   FORCEPAYMENT
	           INNER JOIN LOAN ON FORCEPAYMENT.PARENTID = LOAN.LOANID
	           INNER JOIN ACCOUNT ON LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID
	    WHERE  (LOANNO = @NO)
	           AND MATUREDATE BETWEEN @MATUREDATEFROM AND @MATUREDATETO
	           AND FORCETYPEID = 1
	           AND (FAMILYID = @FAMILYID OR @FAMILYID = 0)
	           AND (PAID = @PAYSTATUS OR (@PAYSTATUS=2 AND EXISTS(SELECT * FROM dbo.ForcePayment AS fp WHERE fp.ParentID = LOAN.LoanID AND fp.Paid = 0)))
	           AND (LOAN.LOANTYPEID = @LOANTYPEID OR @LOANTYPEID = 0)
	           AND (ACCOUNT.MONTHLYTYPEID = @MONTHLYTYPEID OR @MONTHLYTYPEID=0)
	ELSE
	BEGIN
	    IF @FOCETYPEID IN (0, 1)
	        INSERT INTO @RESULTTABLE
	        SELECT ACCOUNT.ACCOUNTID,
	               FORCETYPEID,
	               FORCEPAYMENTID,
	               PARENTID,
	               ACCOUNTNO,
	               ISNULL(Contact.Lastname, Account.AccountTitle)+ISNULL(' - '+Contact.FirstName, '') AS ACCOUNTTITLE,
	               LOANNO,
	               FORCEPAYMENT.AMOUNT,
	               MATUREDATE,
	               PAID,
	               ORDERNO,
	               1       DELAY,
	               2       AMERCE,
	               CASE 
	                    WHEN Paid=1 THEN FORCEPAYMENT.PAYMENTID
	                    ELSE NULL
	               END,	-- Amin Added      
	               NULL,
	               FORCEPAYMENT.COMMENT,	-- Amin Changed 
	               INTERESTAMOUNT,
	               CASE forcepayment.ForceTypeID
	                    WHEN 1 THEN (
	                             SELECT TOP 1 LTT.LOANTYPETITLE
	                             FROM   LOANTYPE LTT
	                             WHERE  LTT.LOANTYPEID = LOAN.LOANTYPEID
	                         )
	                    WHEN 2 THEN (
	                             SELECT TOP 1 MT.MONTHLYTYPETITLE
	                             FROM   MONTHLYTYPE MT
	                             WHERE  ACCOUNT.MONTHLYTYPEID = MT.MONTHLYTYPEID
	                         )
	               END  AS LOANORMONTHLYTITLE
	        FROM   FORCEPAYMENT
	               INNER JOIN LOAN ON  FORCEPAYMENT.PARENTID = LOAN.LOANID
	               INNER JOIN ACCOUNT ON  LOAN.ACCOUNTID = ACCOUNT.ACCOUNTID
	               INNER JOIN Payment p ON  p.PaymentID = loan.PaymentID -- Amin Added 
	                    
	               LEFT OUTER JOIN Contact ON  Account.ContactID = Contact.ContactID
	        WHERE  (ACCOUNTNO=@NO OR @NO='')
	               AND MATUREDATE BETWEEN @MATUREDATEFROM AND @MATUREDATETO
	               AND FORCETYPEID = 1
	               AND (FAMILYID=@FAMILYID OR @FAMILYID=0)
	               AND (
	                       PAID=@PAYSTATUS
	                       OR (
	                              @PAYSTATUS=2
	                              AND EXISTS(
	                                      SELECT *
	                                      FROM   dbo.ForcePayment AS fp
	                                      WHERE  fp.ParentID = FORCEPAYMENT.ParentID
	                                             AND fp.Paid = 0
	                                  )
	                          )
	                   )
	               AND (LOAN.LOANTYPEID=@LOANTYPEID OR @LOANTYPEID=0)
	               AND (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)
	               AND p.PaymentID NOT IN (SELECT p2.PaymentID
	                                       FROM   Payment p2
	                                       WHERE  p2.PayTypeSecondId = 8) -- Amin Added                                                                                                         
	    
	    IF @FOCETYPEID IN (0, 2)
	        INSERT INTO @RESULTTABLE
	        SELECT TOP 1000     ACCOUNTID,
	               FORCETYPEID,
	               FORCEPAYMENTID,
	               PARENTID,
	               ACCOUNTNO,
	               --DBO.GET_ACCOUNTFULLNAME(ACCOUNT.ACCOUNTID) AS ACCOUNTTITLE ,  
	               ISNULL(Contact.Lastname, Account.AccountTitle)+ISNULL(' - '+Contact.FirstName, '') AS ACCOUNTTITLE,
	               NULL         LOANNO,
	               FORCEPAYMENT.AMOUNT,
	               MATUREDATE,
	               PAID,
	               ORDERNO,
	               1            DELAY,
	               2            AMERCE,
	               FORCEPAYMENT.PAYMENTID,
	               NULL,
	               COMMENT,
	               INTERESTAMOUNT,
	               CASE FORCEPAYMENT.FORCETYPEID
	                    WHEN 1 THEN ('Ê«„')
	                    WHEN 2 THEN (
	                             SELECT TOP 1 MT.MONTHLYTYPETITLE
	                             FROM   MONTHLYTYPE MT
	                             WHERE  ACCOUNT.MONTHLYTYPEID = MT.MONTHLYTYPEID
	                         )
	               END       AS LOANORMONTHLYTITLE
	        FROM   FORCEPAYMENT
	               INNER JOIN ACCOUNT ON  FORCEPAYMENT.PARENTID = ACCOUNT.ACCOUNTID
	               LEFT OUTER JOIN Contact ON  Account.ContactID = Contact.ContactID
	        WHERE  (ACCOUNTNO=@NO OR @NO='')
	               AND MATUREDATE BETWEEN @MATUREDATEFROM AND @MATUREDATETO
	               AND FORCETYPEID = 2
	               AND (FAMILYID=@FAMILYID OR @FAMILYID=0)
	               AND (
	                       PAID=@PAYSTATUS
	                       OR (
	                              @PAYSTATUS=2
	                              AND EXISTS(
	                                      SELECT *
	                                      FROM   dbo.ForcePayment AS fp
	                                      WHERE  fp.ParentID = FORCEPAYMENT.ParentID
	                                             AND fp.Paid = 0
	                                  )
	                          )
	                   )
	               AND (ACCOUNT.MONTHLYTYPEID=@MONTHLYTYPEID OR @MONTHLYTYPEID=0)
	END          
	
	
	SELECT *
	INTO   #M -- SQL BUG IN USE TABLE VARIABLE IN SUBQUERY
	FROM   @RESULTTABLE          
	
	
	IF @ONLYLATEST=1
	    DELETE #M
	    WHERE  EXISTS (
	               SELECT *
	               FROM   #M M
	               WHERE  M.PARENTID = #M.PARENTID
	                      AND M.FORCETYPEID = #M.FORCETYPEID
	                      AND M.MATUREDATE<#M.MATUREDATE
	           )          
	
	
	UPDATE #M
	SET    PAYDATE = [DATE]
	FROM   #M
	       LEFT JOIN PAYMENT ON  #M.PAYMENTID = PAYMENT.PAYMENTID          
	
	
	DECLARE @MONTHLYTOLERANCE     INT,
	        @MONTHLYFROMFIRST     BIT,
	        @MONTHLYAMERCE        INT,
	        @PARTTOLERANCE        INT,
	        @PARTFROMFIRST        BIT,
	        @PARTAMERCE           INT          
	
	SELECT @MONTHLYTOLERANCE = VALUE
	FROM   SETTING
	WHERE  USERID               = -1
	       AND VARIABLENAME     = 'MONTHLYTOLERANCE'
	
	SELECT @PARTTOLERANCE = VALUE
	FROM   SETTING
	WHERE  USERID               = -1
	       AND VARIABLENAME     = 'PARTTOLERANCE'
	
	SELECT @PARTFROMFIRST = CASE VALUE
	                             WHEN 0 THEN 0
	                             ELSE 1
	                        END
	FROM   SETTING
	WHERE  USERID               = -1
	       AND VARIABLENAME     = 'PARTFROMFIRST'
	
	SELECT @MONTHLYFROMFIRST = CASE VALUE
	                                WHEN 0 THEN 0
	                                ELSE 1
	                           END
	FROM   SETTING
	WHERE  USERID               = -1
	       AND VARIABLENAME     = 'MONTHLYFROMFIRST'
	
	SELECT @PARTAMERCE = VALUE
	FROM   SETTING
	WHERE  USERID               = -1
	       AND VARIABLENAME     = 'PARTAMERCE'
	
	SELECT @MONTHLYAMERCE = VALUE
	FROM   SETTING
	WHERE  USERID               = -1
	       AND VARIABLENAME     = 'MONTHLYAMERCE'          
	
	UPDATE #M
	SET    AMERCE = dbo.Calc_PartAmerce(MatureDate, Amount, ISNULL(PAYDATE, @Today))
	WHERE  FORCETYPEID = 1     
	
	UPDATE #M
	SET    AMERCE = dbo.Calc_MonthlyAmerce(MatureDate, Amount, ISNULL(PAYDATE, @Today))
	WHERE  FORCETYPEID = 2            
	
	UPDATE #M
	SET    DELAY = DBO.SHAMSIDATEDIFF(MATUREDATE, ISNULL(PAYDATE, @TODAY))          
	
	
	IF @DELAYDAYS>0
	    DELETE #M
	    WHERE  DELAY<=@DELAYDAYS               
	
	
	SELECT @SUMAMOUNT = SUM(CAST(AMOUNT AS BIGINT)),
	       @SUMAMERCE       = SUM(AMERCE),
	       @SUMINTEREST     = SUM(INTERESTAMOUNT)
	FROM   #M          
	
	
	
	SET @SUMAMOUNT = ISNULL(@SUMAMOUNT, 0)          
	SET @SUMAMERCE = ISNULL(@SUMAMERCE, 0)      
	SET @SUMINTEREST = ISNULL(@SUMINTEREST, 0)          
	
	IF @GROUPINGBYACCOUNT=0
	    SELECT #M.*,
	           FOCETYPETITLE
	    FROM   #M
	           INNER JOIN FORCETYPE ON #M.FORCETYPEID = FORCETYPE.FOCETYPEID
	ELSE
	    SELECT ACCOUNTID,
	           ACCOUNTNO,
	           DBO.GET_ACCOUNTFULLNAME(ACCOUNTID) AS ACCOUNTTITLE,
	           SUM(CAST(AMOUNT AS BIGINT)) SUMAMOUNT,
	           SUM(DELAY)              SUMDELAY,
	           SUM(CASE WHEN FORCETYPEID=1 THEN AMOUNT ELSE 0 END) SUMPART,
	           SUM(CASE WHEN FORCETYPEID=2 THEN AMOUNT ELSE 0 END) SUMMONTHLY,
	           SUM(AMERCE)             SUMAMERCE,
	           SUM(INTERESTAMOUNT)     INTERESTAMOUNT
	    FROM   #M
	    GROUP BY
	           ACCOUNTID,
	           ACCOUNTNO,
	           ACCOUNTTITLE
GO
