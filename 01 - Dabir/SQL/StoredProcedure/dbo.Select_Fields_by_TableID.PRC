/************************************************************
 * Code formatted by Vahid Hamzehzadeh
 * Time: 21/02/1402 11:26:50 ق.ظ
 ************************************************************/
IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[dbo].[Select_Fields_by_TableID]') AND TYPE IN (N'P', N'PC'))
    DROP PROCEDURE [dbo].[Select_Fields_by_TableID]
GO

CREATE PROCEDURE [dbo].[Select_Fields_by_TableID]
	@LetterID INT
WITH ENCRYPTION
AS
	SELECT *
	FROM Fields
	WHERE EXISTS (SELECT * from dbo.Letter AS L WHERE L.LetterID = @LetterID AND (TableID = L.UserTableID OR TableID = L.UserTableID2))

GO