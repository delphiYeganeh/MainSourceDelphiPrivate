

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_Ins_ArchiveFolder]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_Ins_ArchiveFolder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_Del_News]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_Del_News]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_Del_NewsGroupUsers]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_Del_NewsGroupUsers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Update_LetterRecommites]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Update_LetterRecommites]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_NotDel_SendStatus]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_NotDel_SendStatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Delete_Users]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Delete_Users]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_Del_Users]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_Del_Users]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[user_ins]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[user_ins]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_Del_WorkGroupOrg]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_Del_WorkGroupOrg]
GO

CREATE Trigger Tr_Ins_ArchiveFolder 
on ArchiveFolder
After Insert 
As
Declare @ArchiveFolderID int  
Declare @ArchiveCenterID int
Select Top 1 @ArchiveFolderID = Inserted.FolderID , @ArchiveCenterID = Inserted.UserID/10000 
From Inserted , ArchiveFolder Where Inserted.FolderID = ArchiveFolder.FolderID

Delete from UserAccArchive Where ArchiveFolderID = @ArchiveFolderID And ArchiveCenterID = @ArchiveCenterID

Insert into UserAccArchive(SecID,UserID,ArchiveCenterID,ArchiveFolderID,ISAccess)
Select US.SecID , US.UserID , AC.ArchiveCenterID , @ArchiveFolderID , 1
from UserSecretariats US , Secretariats S , ArchiveCenter Ac , Users U
Where US.SecID = S.SecID
  And S.ArchiveCenterID = Ac.ArchiveCenterID
  And US.UserID = U.ID 
  And Ac.ArchiveCenterID = ( @ArchiveCenterID)
Order By US.SecID , AC.ArchiveCenterID , US.UserID 
GO


Create Trigger Tr_Del_News
ON dbo.News
for Delete
As
  Set nocount on
  Declare @DeleteID int
  Select @DeleteID = NewsID From Deleted
  --if Exists(Select * from ImageData Where(TableName = 'News')And(TableID = @DeleteID))
  Delete From ImageData Where(TableName = 'News')And(TableID = @DeleteID)
  Delete From NewsUsers Where(NewsID = @DeleteID)
  Set nocount Off
GO



Create TRIGGER Tr_Del_NewsGroupUsers 
ON NewsGroup 
For DELETE 
AS
Set nocount on
Declare @DeleteID Int
Select top 1 @DeleteID = NewsGroupID From Deleted
if Exists(Select * from NewsGroupUsers Where(NewsGroupID = @DeleteID ))
   Delete From NewsGroupUsers Where(NewsGroupID = @DeleteID)
Set nocount off 
GO


CREATE TRIGGER Update_LetterRecommites ON dbo.ReCommites 
FOR INSERT, UPDATE, DELETE
AS
declare @Letterid int,@actionTypeID tinyint ,@Paraph nvarchar(500)


SELECT    @letterid=LetterID  ,@actionTypeID=actionTypeID
FROM         inserted

if @letterid is null
SELECT    @letterid=LetterID
FROM        deleted

select top 1 @paraph=isnull(Paraph,'') 
from Recommites
where letterid=@Letterid
order by recommitedate desc ,recommiteid desc 


UPDATE    Letter
SET    LetterRecommites =CAST(dbo.Recommites_by_indicator(LetterID)+'
¬Œ—Ì‰ Å«—«›: '+@paraph AS NVARCHAR(500))
 ,latestActionTypeid=@actionTypeID
where Letterid=@letterid

GO


CREATE Trigger Tr_NotDel_SendStatus
On SendStatus
instead of Delete
As
  Select * from SendStatus
  --RaisError('(Trigger) ÊÃÊœ ‰œ«—œ SendStatus «„ﬂ«‰ Õ–› «“ ÃœÊ· ', 16, 1)
GO







CREATE TRIGGER [Delete_Users] ON dbo.Users
FOR  DELETE
AS
set nocount on
declare  @ui int
select @ui=id from deleted
if @ui<>0
delete from settings
where userid=@ui

delete
FROM         UserSecretariats
where userid=@ui


delete
FROM         UserTemplateGroup
where userid=@ui

delete
FROM         UserExtention
where userid=@ui
GO


Create Trigger Tr_Del_Users
On dbo.Users
for Delete
As
  Delete From UserAccArchive
  Where UserID = (Select Top 1 ID from Deleted)


GO
CREATE TRIGGER [user_ins] ON dbo.Users
FOR INSERT
AS
set nocount on
declare  @ui int,@defSec int 
select @ui=id,@defSec= DefualtSecretariatID from inserted


delete from settings
where userid=@ui


insert into settings
SELECT @ui, VariableId, Value, description
FROM Settings
where userid=0

delete
FROM         UserTemplateGroup
where userid=@ui
insert into     UserTemplateGroup
select @ui,TemplateGroupID
from TemplateGroup



delete
FROM         UserSecretariats
where userid=@ui
insert into     UserSecretariats
values(@ui,@defSec)


delete
FROM         UserExtention
where userid=@ui

insert into     UserExtention
(userid,extentionid)

select @ui,extentionid
from extention

if not exists (select * from ArchiveFolder where userid=@ui)
 INSERT INTO ArchiveFolder ( ParentFolderID , Title , UserID) values( 0 ,'»«Ìê«‰Ì' ,@ui)
set nocount off


GO

CREATE TRIGGER Tr_Del_WorkGroupOrg ON WorkGroup 
FOR DELETE 
AS
Declare @DeleteID Int
Select @DeleteID = WorkGroupID From Deleted

if Exists(Select * from WorkGroupOrg Where(WorkGroupID = @DeleteID ))
   Delete From WorkGroupOrg
   Where(WorkGroupID = @DeleteID)  





