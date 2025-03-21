/************************************************************
 * Code formatted by Vahid Hamzehzadeh
 * Time: 21/02/1402 11:26:50 ق.ظ
 ************************************************************/
IF EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'trgInsDataToLetterFieldValue'))
	DROP TRIGGER [trgInsDataToLetterFieldValue]
GO

CREATE TRIGGER [dbo].[trgInsDataToLetterFieldValue] 
ON [dbo].[LetterForms]
WITH ENCRYPTION
AFTER INSERT
AS
BEGIN
      SET NOCOUNT ON
      DECLARE @UserID INT, @LetterID INT, @ID INT, @FormID INT, @FieldID INT,@K INT 
      SELECT @UserID = UserID, @LetterID = LetterID, @ID = ID, @FormID = FormID FROM INSERTED

      DECLARE cr CURSOR FOR SELECT ID FROM Fields WHERE TableID = @FormID
	  OPEN cr
      FETCH NEXT FROM cr INTO @FieldID
      WHILE @@FETCH_STATUS = 0 
		BEGIN
			SELECT @k = MAX(ISNULL(uniqueID, 0)) + 1 FROM dbo.LetterFieldValue WHERE LetterID = @LetterID
                    
			INSERT INTO LetterFieldValue (LetterID, FieldID, FieldValue, uniqueID, LastUpdate, InsertUserID, FormOrder)
			VALUES (@LetterID, @FieldID, NULL, @k, NULL, @UserID, @ID)
                  
			UPDATE Letter SET UserTableID = @FormID WHERE LetterID = @LetterID AND ISNULL(UserTableID, 0) = 0
			FETCH NEXT FROM cr INTO @FieldID        
		END
      CLOSE cr
      DEALLOCATE cr
END
