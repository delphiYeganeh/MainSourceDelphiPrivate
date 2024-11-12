BEGIN TRANSACTION
GO
IF EXISTS ( SELECT 1
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[Prc_NumberOFUnReadMessagesForOrgId]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[Prc_NumberOFUnReadMessagesForOrgId]
END
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

COMMIT
GO