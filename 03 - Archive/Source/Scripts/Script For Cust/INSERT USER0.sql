INSERT INTO SETTINGS
SELECT     0, VariableId, [Value], description
FROM         Settings
WHERE     (UserID = 1)