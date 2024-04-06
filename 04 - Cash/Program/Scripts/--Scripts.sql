--Yeganeh123

[LastNum]=60

--33, 34, 35, 36 by Hadi Mohamed 920808 -- for relation between yDabir and yArchive


[Num]=1
-----------Ver 4.11



if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ArchiveCenter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [dbo].[ArchiveCenter] (
	[ArchiveCenterID] [int] NOT NULL ,
	[ArchiveCenterTitle] [nvarchar] (50)  NOT NULL
) ON [PRIMARY]
ALTER TABLE [dbo].[ArchiveCenter] WITH NOCHECK ADD
	CONSTRAINT [PK_ArchiveCenter] PRIMARY KEY  CLUSTERED
	(
		[ArchiveCenterID]
	)  ON [PRIMARY]
insert into ArchiveCenter values(0,'„‘ —ò »Ì‰ Â„Â œ»Ì—Œ«‰Â Â«')

end
GO
--------------------------------------------  Fields  --------------------------------------
--------------------------------------------------------------------------------------------
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Rent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [dbo].[Rent] (
	[RentID] [int] IDENTITY (1, 1) NOT NULL ,
	[RenterID] [int] NOT NULL ,
	[LetterID] [int] NOT NULL ,
	[BeginDate] [char] (10)  NOT NULL ,
	[EndDate] [char] (10)  NULL ,
	[Comment] [nvarchar] (255)  NULL ,
	[MatureDate] [char] (10)  NULL 
) ON [PRIMARY]
ALTER TABLE [dbo].[Rent] WITH NOCHECK ADD 
	CONSTRAINT [PK_Rent] PRIMARY KEY  CLUSTERED 
	(
		[RentID]
	)  ON [PRIMARY] 
end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Renter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [dbo].[Renter] (
	[RenterID] [int] IDENTITY (1, 1) NOT NULL ,
	[RenterTitle] [nvarchar] (255)  NOT NULL ,
	[RenterComment] [nvarchar] (255)  NULL 
) ON [PRIMARY]

ALTER TABLE [dbo].[Renter] WITH NOCHECK ADD 
	CONSTRAINT [PK_Renter] PRIMARY KEY  CLUSTERED 
	(
		[RenterID]
	)  ON [PRIMARY]
 end
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Secretariats' and c.name='ArchiveCenterID')
alter TABLE Secretariats add ArchiveCenterID  int Not Null default 0
else
alter TABLE Secretariats alter column  [ArchiveCenterID] [int] NOT NULL
GO

alter TABLE Letter alter column  	Memo nvarchar(2000) NULL
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UserMemo1')
ALTER TABLE Letter ADD	UserMemo1 nvarchar(255) NULL
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UserMemo2')
ALTER TABLE Letter ADD	UserMemo2 nvarchar(255) NULL
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='HasSecureLetterAccess')
ALTER TABLE dbo.Users ADD HasSecureLetterAccess bit not NULL default 1

-------------------------------------------- Procedures ---------------------------------
-----------------------------------------------------------------------------------------

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[get_ArchiveFolder_byUserID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[get_ArchiveFolder_byUserID]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Select_Rent_byLetterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Select_Rent_byLetterID]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ParentFolders]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[ParentFolders]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Archive_ParentFolders]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Archive_ParentFolders]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Remove_UserTable_ByLetterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Remove_UserTable_ByLetterID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Export_LetterData]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Export_LetterData]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Report_UserTable]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Report_UserTable]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RentStatus]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[RentStatus]
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_RentID_ByLetterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_RentID_ByLetterID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HasSame_Rentertitle]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[HasSame_Rentertitle]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Select_Rent]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Select_Rent]
GO

CREATE PROCEDURE [dbo].[get_ArchiveFolder_byUserID]
@userID int
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (UserID = @userID)
order by title
GO
create Procedure [dbo].[Select_Rent_byLetterID]
@LetterID int
as
SELECT Rent.*,RenterTitle
  FROM  Rent
left join Renter on Renter.RenterID=Rent.RenterID
  where LetterID=@LetterID
order by BeginDate desc
GO

CREATE Procedure Get_RentID_ByLetterID
@LetterID int ,@RentID int output
as

SELECT @RentID=RentID
  FROM  Rent
where LetterID=@LetterID
and isnull(ltrim(EndDate),'')=''

set @RentID=isnull(@RentID,-1)
GO


Create procedure [dbo].[HasSame_Rentertitle](@Rentertitle nvarchar(255),@id int output)
as
set @id=-1
select @id=RenterID
from Renter
where replace(Rentertitle,' ','')=replace(@Rentertitle,' ','')
GO

create Procedure Select_Rent
@RentID int 
as
SELECT *
  FROM  Rent
where RentID=@RentID
GO
Alter PROCEDURE [dbo].[Get_All_Letter]
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int
as 
declare @today char(10)
set @today=dbo.Shamsi(getdate())

declare @sqlCommand nvarchar(4000)
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID, 
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate, 
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo, 
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle, 
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus 
FROM         Letter left  JOIN
                      FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN
                      FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID'
if @archiveFolderID>0  
set @sqlCommand=@sqlCommand+' 
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '



set @where=isnull(ltrim(rtrim(@where)),'')
if @where <>'' set @where =' and '+@where 

if @Letter_Type<>0 
  set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'

if @Secretariatid<>0 
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0 
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if @LetterFormat<>0 
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'

if @archiveFolderID>0  
 set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'

if @archiveFolderID=0  
 set @where=@where+' and (dbo.Letter_Archived(Letter.LetterID)=0)'


 set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '


exec sp_executesql   @sqlCommand
GO

CREATE FUNCTION RentStatus (@LetterID int,@today char(10))  
RETURNS tinyint
BEGIN
declare @result  tinyint,@rentID int 
/*
1=⁄«œÌ
2=œ— œ”  «„«‰ 
3=œ— œ”  «„«‰  »«  «ŒÌ—
*/


SELECT @RentID=RentID
  FROM  Rent
where LetterID=@LetterID
and isnull(ltrim(EndDate),'')=''
if @RentID is null return(1)

if exists (select * from Rent where RentId=@rentID and MatureDate<@today) 
return(3)

return(2)
end

GO


create Procedure [dbo].[Archive_ParentFolders] (@LetterID int,@UserID  tinyint,@result  nvarchar(4000) output )
as
set @result=''
SELECT   @result=@result +' , '+dbo.ParentFolders( ArchiveFolder.FolderID)
FROM         LetterArchiveFolder 
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result=substring(@result,4,1000)


GO


CREATE FUNCTION [dbo].[ParentFolders] (@FolderID int)  
RETURNS nvarchar(500) AS  
BEGIN 
 declare @i int,@PI int ,@res nvarchar(500),@CurID int,@Parents nvarchar(500)
 set @i=0 
set @CurID=@FolderID

select @PI=ParentFolderID,@res=Title+cast(isnull('['+Place+']','') as varchar(10)) from ArchiveFolder where FolderID=@FolderID
if @PI=0 return(@res)   else set @CurID=@PI

set @Parents=''

 while @i<5 and @PI>0
   begin
    select @PI=ParentFolderID,@Parents=@Parents+','+Title from ArchiveFolder where FolderID=@CurID
    set @CurID=@PI
    set @i=@i+1
   end
if @Parents<>''
 begin
  set @Parents=case when substring(@Parents,1,1)=',' then substring(@Parents,2,500) end
  set @Parents='('+@Parents+')'
  set @res=@res+@Parents
end
return(@res)
END


GO

Create Procedure Remove_UserTable_ByLetterID
@LetterID int
as
update Letter
set UserTableID=null
where LetterID=@LetterID


delete LetterFieldValue
where LetterID=@LetterID

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
insert INTO yeganeh_tmp_db.DBO.LetterData (LetterDataID,LetterID,PageNumber,Image,extention,[Description])
SELECT     LetterDataID,LetterID,PageNumber,Image,extention,[Description]
FROM         LetterData
WHERE     (LetterdataID = @LetterdataID)
GO


CREATE procedure [dbo].[Report_UserTable]
@tableID int,@LetterWhere nvarchar(2000),@UserTableWhere nvarchar(2000)
as

declare @sql nvarchar(4000)

set @sql= 'select LetterID into ##Uletters from Letter '

if @UserTableWhere<>'' 
 set @sql=@sql+' where  '+@UserTableWhere

exec(@SQL)


set @sql='Select l.LetterID into ##r from Letter l
 inner join ##Uletters on ##Uletters.LetterID=l.LetterID
 where UserTableID='+cast(@tableID as varchar(5))+' and '+@LetterWhere

exec(@Sql)
 
set @sql= 'create  table ##m (LetterID int '

SELECT     top 60 identity(int,1,1) id , Fields.Description,cast (fields.id as int ) fieldid into #m
FROM      Fields
WHERE     (tableid = @tableID)
order by [order]


SELECT     @sql=@sql+' ,['+isnull(Description,'')+'_'+
Cast((select count(*) from #m where isnull(Description,'')=isnull(m.Description,'') and id <=m.id) as varchar(3))+
'] nvarchar(2000)'
FROM      #m m

set @sql= @sql+')'

print @sql 
exec(@sql)
declare @insert  varchar(8000)


set @insert= 'insert into ##m select LetterID'


SELECT    @insert=@insert+',(select FieldValue from LetterFieldValue where FieldId='+cast(fieldid as varchar(10))+' and letterid=r.LetterID)'
FROM       #m

set @insert= @insert+' from ##r r '

exec(@insert)


select ##m.*,IndicatorID,IncommingNO,IncommingDate,CenterNo,CenterDate
,Memo,RetroactionNo,UserMemo,RegistrationDate,FollowLetterNo,LetterRecommites
,sender.Title AS SenderTitle ,Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle
FROM  ##m
inner join Letter on ##m.Letterid=Letter.Letterid
left  JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID 
left JOIN  FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
left join Secretariats on Secretariats.Secid=Letter.SecretariatID

drop table ##m  
drop table ##Uletters
drop table ##r


go
update letter
set myear=substring(registrationdate,3,2)
where myear=0
GO
IF  EXISTS (SELECT * FROM dbo.sysindexes WHERE id = OBJECT_ID(N'[dbo].[Fields]') AND name = N'IX_FieldName')
DROP INDEX [dbo].[Fields].[IX_FieldName]

go

ALTER PROCEDURE [dbo].[get_LetterID_ByInCommingNo]
	(@InCommingNo nvarchar(50),@Myear tinyint,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterid=0
SELECT     top 1 @LetterID=LetterID
FROM         Letter
WHERE     (InCommingNo =@InCommingNo)
 and LetterFormat=@LetterFormat   and 
( SecretariatID=@SecretariatID or @SecretariatID=0)
order by Myear desc



GO
-----------------------------------------
if not exists (select * from sysindexes where name ='Letterarchive_Folder_idx')
CREATE NONCLUSTERED INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArchiveFolder] (	[ArchiveFolderID] ASC) ON [PRIMARY]

GO
if not exists (select * from sysindexes where name ='Letterarchive_Letter_Folder_idx')
CREATE NONCLUSTERED INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[LetterArchiveFolder] (	[ArchiveFolderID] ASC,	[LetterID] ASC) ON [PRIMARY]


GO
if not exists (select * from sysindexes where name ='Letterarchive_Letter_idx')
CREATE NONCLUSTERED INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArchiveFolder] (	[LetterID] ASC) ON [PRIMARY]
GO

--exec ysp_shrink 'yarchive',''
--GO

------------------ ----------------------------------------------------------------------------


[Num]=2
-----------/*Ranjbar 88.02.06 Ver5*/


SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON

BEGIN TRANSACTION

if not Exists(Select name from SysObjects Where Name = 'DF_UserLog_FormID' )  --Ranjbar
ALTER TABLE dbo.UserLog ADD CONSTRAINT
	DF_UserLog_FormID DEFAULT 1 FOR FormID

GO
COMMIT
GO


-------- -------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Report_UserLog]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Report_UserLog]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


Create PROCEDURE [dbo].[Report_UserLog]
@Secretariatid int,
@myear tinyint,
@where nvarchar(2000)
as 
declare @sqlCommand nvarchar(4000)

set @sqlCommand='
SELECT     top 1000
 ApplicationForms.Title AS FormTitle,
 Users.Title AS UserTitle,
 Actions.Title AS ActionTitle,
 Letter.IndicatorID,
 LetterTypes.Title AS LetterType,
 Letter.IncommingNO,
 Letter.Incommingdate,
 Letter.RegistrationDate,
 Letter.Memo,
 dbo.Shamsi(UserLog.Time1) AS Date,
 right(cast(UserLog.Time1 as varchar(50)),7) as Time

FROM       UserLog
INNER JOIN Users            ON Users.Id = UserLog.UserID
INNER JOIN Actions          ON UserLog.ActionID = Actions.ID 
INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.FormTag
LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterID
LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.ID '


set @where=isnull(ltrim(rtrim(@where)),'')
if @where <>'' set @where =' and '+@where

if @Secretariatid<>0
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if substring(@where,1,4)=' and' set @where=' where '+substring(@where,5,4000)

 set @sqlCommand=@sqlCommand+@where + ' order by time1  '
exec(@sqlCommand)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

------------------ ----------------------------------------------------------------------------
if Not Exists(Select * from ApplicationForms Where [ID] = 4 )
begin
   Insert into ApplicationForms([ID] , Title)
   Values(4,'«÷«›Â ﬂ—œ‰ ÅÌÊ” ')
end
Go
------------------ ----------------------------------------------------------------------------
/*Ranjbar  —‰êÌ ﬂ—œ‰ ”‰œ */

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION

if not Exists(Select * from Syscolumns Where Name = 'Color' And ( ID = (Select Top 1 ID from SysObjects Where Name = 'Letter') ))  --Ranjbar
   ALTER TABLE dbo.Letter ADD Color int NULL
GO

if not Exists(Select * from Syscolumns Where Name = 'Linked_LetterID' And ( ID = (Select Top 1 ID from SysObjects Where Name = 'Letter') ))  --Ranjbar
   ALTER TABLE dbo.Letter ADD Linked_LetterID int NULL  /*Ranjbar ‘„«—Â ”‰œ „— »ÿ*/

GO
COMMIT
GO

------------------ ----------------------------------------------------------------------------

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]  
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int  
as   
declare @today char(10)  
set @today=dbo.Shamsi(getdate())  
  
declare @sqlCommand nvarchar(4000)  
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,   
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,   
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,   
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,   
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,  
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,  
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,  
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,  
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,
Letter.Color   
FROM         Letter left  JOIN  
                      FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN  
                      FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID   
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type   
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID'  
if @archiveFolderID>0    
set @sqlCommand=@sqlCommand+'   
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '  
  
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '  
  
  
  
set @where=isnull(ltrim(rtrim(@where)),'')  
if @where <>'' set @where =' and '+@where   
  
if @Letter_Type<>0   
  set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'  
  
if @Secretariatid<>0   
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'  
  
if @Myear<>0   
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'  
  
if @LetterFormat<>0   
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'  
  
if @archiveFolderID>0    
 set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'  
  
if @archiveFolderID=0    
 set @where=@where+' and (dbo.Letter_Archived(Letter.LetterID)=0)'  
  
  
 set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '  
  
  
exec sp_executesql   @sqlCommand  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
if Not Exists(Select * from ApplicationForms Where [ID] = 7 )
begin
   Insert into ApplicationForms([ID] , Title)
   Values(7,'›—„ «”ﬂ‰ ”‰œ')
end
Go
------------------ ----------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_NotDel_SendStatus]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_NotDel_SendStatus]
GO

CREATE Trigger Tr_NotDel_SendStatus
On SendStatus
instead of Delete
As
  Select * from SendStatus
  --RaisError('(Trigger) ÊÃÊœ ‰œ«—œ SendStatus «„ﬂ«‰ Õ–› «“ ÃœÊ· ', 16, 1)

GO
------------------ ----------------------------------------------------------------------------
/*Ranjbar 88.02.29*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_LetterJpgFile]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_LetterJpgFile]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure Get_LetterJpgFile(@LetterID int)  
as  
Select *  
from letterdata  
where LetterID = @LetterID  /* and PageNumber= @pagenumber  */
And Extention=1  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[get_FromOrganizationsTitle_byID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[get_FromOrganizationsTitle_byID]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [Get_FromOrganizationsTitle_ByID]  
(@ID [int],  
@Title [nvarchar](100) output,  
@ResponsibleStaffer [nvarchar](50) output , 
@code nvarchar(10) output )  
AS 
Select  @Title  = Title,  
@ResponsibleStaffer  = ResponsibleStaffer,  
@code=code  from [dbo].[FromOrganizations]   
WHERE ( [ID]  = @ID)
/*Ranjbar*/
if @ResponsibleStaffer is null
   Set @ResponsibleStaffer = '' --'»œÊ‰ „”∆Ê·'  
----
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

------------------ ----------------------------------------------------------------------------
/* Ranjbar 88.03.24   ﬁ”Ì„ ﬂ—œ‰ ›«Ì·Â«Ì œÌ «»Ì”  */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sp_AddFileToDB]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sp_AddFileToDB]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure dbo.Sp_AddFileToDB @DBName nVarchar(50) 
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
/*
Select @NewFilePath
Select @MaxFileID
Select @NewFileNu
Select @NewFileName
Select @FileSizeInMB --*/

if @FileSizeInMB > 3800 --MB
begin
   if @MaxFileID = 1  --mdf ﬁ—«— œ«œ‰ „«ﬂ“Ì„„ ÕÃ„ »—«Ì ›«Ì·
   begin
      Set @MDFSqlText = 'Use Master ALTER DATABASE ['+ @DBName +'] MODIFY FILE (NAME = N'''+ RTrim(@FileName) +''', MAXSIZE = '+ Cast(@FileSizeInMB+30 as nvarchar(10)) +') '
      Exec(@MDFSqlText)
      Print @MDFSqlText
   end 

   Set @SqlText = 'use Master '+
   'ALTER DATABASE [' + RTrim(@DBName) + '] 
    ADD FILE( NAME = '''+@NewFileName+''' , FILENAME = ''' + @NewFilePath + @NewFileName + '.NDF'' , 
             SIZE = 1 , MAXSIZE = 4000 , FILEGROWTH = 10% ) '
   Exec(@SqlText)
   Print @SqlText
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*Rajbar 88.03.09  ﬁ—«—œ«œ‰ «Ì‰œﬂ” Ê «— »«ÿ »Ì‰ Ãœ«Ê·*/  

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION


if not Exists(Select * from Sysindexes Where(Name = 'IX_Actions_ID')And(ID =(Select ID from SysObjects Where Name = 'Actions')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Actions_ID ON dbo.Actions
	(ID) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ApplicationForms_ID')And(ID =(Select ID from SysObjects Where Name = 'ApplicationForms')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ApplicationForms_ID ON dbo.ApplicationForms
	(
	ID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ArchiveFolder_ParentFolderID')And(ID =(Select ID from SysObjects Where Name = 'ArchiveFolder')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ArchiveFolder_ParentFolderID ON dbo.ArchiveFolder
	(
	ParentFolderID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ArchiveFolder_Title')And(ID =(Select ID from SysObjects Where Name = 'ArchiveFolder')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ArchiveFolder_Title ON dbo.ArchiveFolder
	(
	Title
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ArchiveFolder_UserID')And(ID =(Select ID from SysObjects Where Name = 'ArchiveFolder')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ArchiveFolder_UserID ON dbo.ArchiveFolder
	(
	UserID
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_ErrorMessage_ErrorMessage')And(ID =(Select ID from SysObjects Where Name = 'ErrorMessage')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ErrorMessage_ErrorMessage ON dbo.ErrorMessage
	(
	ErrorMessage
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ErrorMessage_FarsiMessage')And(ID =(Select ID from SysObjects Where Name = 'ErrorMessage')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ErrorMessage_FarsiMessage ON dbo.ErrorMessage
	(
	FarsiMessage
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Fields_TableID')And(ID =(Select ID from SysObjects Where Name = 'Fields')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Fields_TableID ON dbo.Fields
	(
	TableID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Fields_FieldName')And(ID =(Select ID from SysObjects Where Name = 'Fields')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Fields_FieldName ON dbo.Fields
	(
	FieldName
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Fields_FieldGroupID')And(ID =(Select ID from SysObjects Where Name = 'Fields')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Fields_FieldGroupID ON dbo.Fields
	(
	FieldGroupID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Fields_FieldTypeID')And(ID =(Select ID from SysObjects Where Name = 'Fields')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Fields_FieldTypeID ON dbo.Fields
	(
	FieldTypeID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Fields_ReferenceTableID')And(ID =(Select ID from SysObjects Where Name = 'Fields')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Fields_ReferenceTableID ON dbo.Fields
	(
	ReferenceTableID
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_FromOrganizations_Title')And(ID =(Select ID from SysObjects Where Name = 'FromOrganizations')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_FromOrganizations_Title ON dbo.FromOrganizations
	(
	Title
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_FromOrganizations_ParentID')And(ID =(Select ID from SysObjects Where Name = 'FromOrganizations')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_FromOrganizations_ParentID ON dbo.FromOrganizations
	(
	ParentID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_FromOrganizations')And(ID =(Select ID from SysObjects Where Name = 'FromOrganizations')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_FromOrganizations ON dbo.FromOrganizations
	(
	Code
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_IndicatorID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_IndicatorID ON dbo.Letter
	(
	IndicatorID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_Letter_Type')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_Letter_Type ON dbo.Letter
	(
	Letter_Type
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_letterformat')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_letterformat ON dbo.Letter
	(
	letterformat
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_IncommingNO')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_IncommingNO ON dbo.Letter
	(
	IncommingNO
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_FromOrgID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_FromOrgID ON dbo.Letter
	(
	FromOrgID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_ToOrgID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_ToOrgID ON dbo.Letter
	(
	ToOrgID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_Signerid')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_Signerid ON dbo.Letter
	(
	Signerid
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_ClassificationID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_ClassificationID ON dbo.Letter
	(
	ClassificationID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_UrgencyID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_UrgencyID ON dbo.Letter
	(
	UrgencyID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_UserID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_UserID ON dbo.Letter
	(
	UserID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_MYear')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_MYear ON dbo.Letter
	(
	MYear
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_RegistrationDate')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_RegistrationDate ON dbo.Letter
	(
	RegistrationDate
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Letter_SecretariatID')And(ID =(Select ID from SysObjects Where Name = 'Letter')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Letter_SecretariatID ON dbo.Letter
	(
	SecretariatID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterArchiveFolder_ArchiveFolderID')And(ID =(Select ID from SysObjects Where Name = 'LetterArchiveFolder')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterArchiveFolder_ArchiveFolderID ON dbo.LetterArchiveFolder
	(
	ArchiveFolderID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterArchiveFolder_LetterID')And(ID =(Select ID from SysObjects Where Name = 'LetterArchiveFolder')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterArchiveFolder_LetterID ON dbo.LetterArchiveFolder
	(
	LetterID
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterData_LetterID')And(ID =(Select ID from SysObjects Where Name = 'LetterData')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterData_LetterID ON dbo.LetterData
	(
	LetterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterData_extention')And(ID =(Select ID from SysObjects Where Name = 'LetterData')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterData_extention ON dbo.LetterData
	(
	extention
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterFieldValue_LetterID')And(ID =(Select ID from SysObjects Where Name = 'LetterFieldValue')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterFieldValue_LetterID ON dbo.LetterFieldValue
	(
	LetterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterFieldValue_FieldID')And(ID =(Select ID from SysObjects Where Name = 'LetterFieldValue')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterFieldValue_FieldID ON dbo.LetterFieldValue
	(
	FieldID
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterTemplate_Title')And(ID =(Select ID from SysObjects Where Name = 'LetterTemplate')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterTemplate_Title ON dbo.LetterTemplate
	(
	Title
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterText_LetterID')And(ID =(Select ID from SysObjects Where Name = 'LetterText')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterText_LetterID ON dbo.LetterText
	(
	LetterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_LetterText_LetterFormat')And(ID =(Select ID from SysObjects Where Name = 'LetterText')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_LetterText_LetterFormat ON dbo.LetterText
	(
	LetterFormat
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ListItems_ListID')And(ID =(Select ID from SysObjects Where Name = 'ListItems')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ListItems_ListID ON dbo.ListItems
	(
	ListID
	) ON [PRIMARY]
GO



if not Exists(Select * from Sysindexes Where(Name = 'IX_ReceiveTypes_Title')And(ID =(Select ID from SysObjects Where Name = 'ReceiveTypes')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReceiveTypes_Title ON dbo.ReceiveTypes
	(
	Title
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'PK_RecommiteData_RecommiteDataID')And(ID =(Select ID from SysObjects Where Name = 'RecommiteData')) )  --Ranjbar
ALTER TABLE dbo.RecommiteData WITH NOCHECK ADD CONSTRAINT  
	PK_RecommiteData_RecommiteDataID PRIMARY KEY CLUSTERED 
	(
	RecommiteDataID
	) ON [PRIMARY]

GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_RecommiteData_RecommiteID')And(ID =(Select ID from SysObjects Where Name = 'RecommiteData')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_RecommiteData_RecommiteID ON dbo.RecommiteData
	(
	RecommiteID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_RecommiteData_extention')And(ID =(Select ID from SysObjects Where Name = 'RecommiteData')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_RecommiteData_extention ON dbo.RecommiteData
	(
	extention
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReCommites_LetterID')And(ID =(Select ID from SysObjects Where Name = 'ReCommites')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReCommites_LetterID ON dbo.ReCommites
	(
	LetterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReCommites_ID')And(ID =(Select ID from SysObjects Where Name = 'ReCommites')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReCommites_ID ON dbo.ReCommites
	(
	ID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReCommites_ParentId')And(ID =(Select ID from SysObjects Where Name = 'ReCommites')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReCommites_ParentId ON dbo.ReCommites
	(
	ParentId
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReCommites_OrgID')And(ID =(Select ID from SysObjects Where Name = 'ReCommites')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReCommites_OrgID ON dbo.ReCommites
	(
	OrgID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReCommites_UserID')And(ID =(Select ID from SysObjects Where Name = 'ReCommites')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReCommites_UserID ON dbo.ReCommites
	(
	UserID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReCommites_DeadLineDate')And(ID =(Select ID from SysObjects Where Name = 'ReCommites')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReCommites_DeadLineDate ON dbo.ReCommites
	(
	DeadLineDate
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReferenceTableData_TableID')And(ID =(Select ID from SysObjects Where Name = 'ReferenceTableData')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReferenceTableData_TableID ON dbo.ReferenceTableData
	(
	TableID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_ReferenceTableData_DataID')And(ID =(Select ID from SysObjects Where Name = 'ReferenceTableData')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_ReferenceTableData_DataID ON dbo.ReferenceTableData
	(
	DataID
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_Secretariats_ArchiveCenterID')And(ID =(Select ID from SysObjects Where Name = 'Secretariats')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Secretariats_ArchiveCenterID ON dbo.Secretariats
	(
	ArchiveCenterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Secretariats_Precode')And(ID =(Select ID from SysObjects Where Name = 'Secretariats')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Secretariats_Precode ON dbo.Secretariats
	(
	Precode
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Tables_TableType')And(ID =(Select ID from SysObjects Where Name = 'Tables')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Tables_TableType ON dbo.Tables
	(
	TableType
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_UserExtention_UserId')And(ID =(Select ID from SysObjects Where Name = 'UserExtention')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserExtention_UserId ON dbo.UserExtention
	(
	UserId
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserExtention_ExtentionID')And(ID =(Select ID from SysObjects Where Name = 'UserExtention')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserExtention_ExtentionID ON dbo.UserExtention
	(
	ExtentionID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLog_UserID')And(ID =(Select ID from SysObjects Where Name = 'UserLog')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLog_UserID ON dbo.UserLog
	(
	UserID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLog_FormID')And(ID =(Select ID from SysObjects Where Name = 'UserLog')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLog_FormID ON dbo.UserLog
	(
	FormID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLog_ActionID')And(ID =(Select ID from SysObjects Where Name = 'UserLog')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLog_ActionID ON dbo.UserLog
	(
	ActionID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLog_LetterID')And(ID =(Select ID from SysObjects Where Name = 'UserLog')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLog_LetterID ON dbo.UserLog
	(
	LetterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLog_User_Act_Form')And(ID =(Select ID from SysObjects Where Name = 'UserLog')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLog_User_Act_Form ON dbo.UserLog
	(
	UserID,
	ActionID,
	FormID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLog_User_Act_Form_Letter')And(ID =(Select ID from SysObjects Where Name = 'UserLog')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLog_User_Act_Form_Letter ON dbo.UserLog
	(
	UserID,
	ActionID,
	FormID,
	LetterID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserLoginLogout_UserID')And(ID =(Select ID from SysObjects Where Name = 'UserLoginLogout')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserLoginLogout_UserID ON dbo.UserLoginLogout
	(
	UserID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserNote_UserID')And(ID =(Select ID from SysObjects Where Name = 'UserNote')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserNote_UserID ON dbo.UserNote
	(
	UserID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Users_FromOrgID')And(ID =(Select ID from SysObjects Where Name = 'Users')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Users_FromOrgID ON dbo.Users
	(
	FromOrgID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Users_AccessID')And(ID =(Select ID from SysObjects Where Name = 'Users')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Users_AccessID ON dbo.Users
	(
	AccessID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_Users_DefualtSecretariatID')And(ID =(Select ID from SysObjects Where Name = 'Users')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_Users_DefualtSecretariatID ON dbo.Users
	(
	DefualtSecretariatID
	) ON [PRIMARY]
GO


if not Exists(Select * from Sysindexes Where(Name = 'IX_UserTemplateGroup_TemplateGroupID')And(ID =(Select ID from SysObjects Where Name = 'UserTemplateGroup')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserTemplateGroup_TemplateGroupID ON dbo.UserTemplateGroup
	(
	TemplateGroupID
	) ON [PRIMARY]
GO

if not Exists(Select * from Sysindexes Where(Name = 'IX_UserTemplateGroup_UserID')And(ID =(Select ID from SysObjects Where Name = 'UserTemplateGroup')) )  --Ranjbar
CREATE NONCLUSTERED INDEX IX_UserTemplateGroup_UserID ON dbo.UserTemplateGroup
	(
	UserID
	) ON [PRIMARY]
GO

COMMIT
GO
------------------ ----------------------------------------------------------------------------


[Num]=3
----------
/*Ranjbar 88.03.27*/  ----ÃÂ  Ê—Êœ «ÿ·«⁄«  »—«Ì  ’«ÊÌ—
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
ALTER TABLE dbo.ListItems ADD
	UsersID int NULL
GO
COMMIT
GO
------------------ ----------------------------------------------------------------------------
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
ALTER TABLE dbo.LetterData ADD
	ListItemsID int NULL
GO
COMMIT
GO
------------------ ----------------------------------------------------------------------------


[Num]=4
----------

/*Ranjbar - Letter.ReceiveTypeID «÷«›Â ﬂ—œ‰ ›Ì·œ*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]    
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int    
as     
declare @today char(10)    
set @today=dbo.Shamsi(getdate())    
    
declare @sqlCommand nvarchar(4000)    
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,     
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,     
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,     
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,     
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,    
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,    
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,    
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,    
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,  
Letter.Color , Letter.ReceiveTypeID     
FROM         Letter left  JOIN    
                      FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN    
                      FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID     
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type     
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID'    
if @archiveFolderID>0      
set @sqlCommand=@sqlCommand+'     
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '    
    
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '    
    
    
    
set @where=isnull(ltrim(rtrim(@where)),'')    
if @where <>'' set @where =' and '+@where     
    
if @Letter_Type<>0     
  set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'    
    
if @Secretariatid<>0     
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'    
    
if @Myear<>0     
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'    
    
if @LetterFormat<>0     
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'    
    
if @archiveFolderID>0      
 set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'    
    
if @archiveFolderID=0      
 set @where=@where+' and (dbo.Letter_Archived(Letter.LetterID)=0)'    
    
    
 set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '    
    
    
exec sp_executesql   @sqlCommand    
  
  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*Ranjbar  -  ReceiveTypeID «÷«›Â ﬂ—œ‰ ›Ì·œ*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[insert_ReciveLetter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[insert_ReciveLetter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Insert_ReciveLetter  
  (@letterID integer output,  
  @IndicatorID  [int],  
  @MYear  [tinyint],  
  @SecretariatID  [tinyint],  
  @Letter_Type  [tinyint],  
  @letterformat  [tinyint],  
  @Memo  [nvarchar](500),  
  @UserID  [int],  
  @RegistrationDate  [char](10),  
  @RegistrationTime  [varchar](5))  
  
AS 
INSERT INTO [dbo].[Letter]   
   ( IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,Memo,UserID,RegistrationDate,RegistrationTime,ReceiveTypeID/*Ranjbar*/ )      
VALUES   
   ( @IndicatorID,@MYear,@SecretariatID,@Letter_Type,@letterformat,@Memo,@UserID,@RegistrationDate,@RegistrationTime,2)    
SET @LetterID=@@Identity  
  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*Ranjbar  €ÌÌ—  «»⁄ ‘„”Ì*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Shamsi]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[Shamsi]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/*Ravanpoor*/
CREATE FUNCTION dbo.Shamsi(@Date  DateTime)  
RETURNS Varchar(20)
as                 --  EHSAN RAVANPOUR 1386-06-31
begin
SET @Date = CAST(CONVERT(VARCHAR(20),@Date,111) AS DATETIME)
DECLARE @Farsi_Date  as Varchar(20) 
DECLARE @StY Varchar(10), @StM Varchar(10),@StD Varchar(10)
declare @y bigint, @m bigint, @d bigint
declare @d1 bigint, @d4 bigint, @d33 bigint

set @d1=365
set @d4=4*@d1 +1
set @d33=33*@d1 +8
set @d=cast(@Date as bigint)+422506
set @y=(@d/@d33)*33+122
set @d=@d % @d33
if(@d>(7*@d4+@d1))
Begin
   set @y=@y+1
   set @d=@d-@d1
End
set @y=@y+(@d/@d4)*4
set @d=@d % @d4
declare @i bigint
set @i=@d/@d1
set @d=@d%@d1;
if(@i=4)
Begin
   set @i=@i-1
   set @d=@d+@d1
End
set @y=@y+@i
if(@d<186)
Begin
   set @m=(@d/31)+1
   set @d=(@d%31)+1
end
Else
Begin
   set @d=@d-186
   set @m=(@d/30)+7
   set @d=(@d%30)+1
End
 SET @StY = CAST (@y as VarChar(5))
 SET @StM = RIGHT('0'+CAST (@m as VarChar(5)),2)
 SET @StD = RIGHT('0'+CAST (@d as VarChar(5)),2)
 SET @Farsi_Date = @StY+'/'+@StM+'/'+@StD
 Return @Farsi_Date
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-----------------------------------------------------------------------------------------

[Num]=5
----------
alter TABLE dbo.ArchiveFolder add  [ArchiveCenterID] [int] NULL 
GO

/*ÃÂ  „ﬁœ«— ê—› ‰ «Ì‰ ›Ì·œ*/
ALTER TABLE dbo.ArchiveFolder ADD CONSTRAINT
	DF_ArchiveFolder_ArchiveCenterID DEFAULT 0 FOR ArchiveCenterID
GO


create PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID]
@ArchiveCenterID int
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (ArchiveCenterID = @ArchiveCenterID)
order by title

GO






ALTER PROCEDURE [dbo].[insert_ArchiveFolder]
	(@FolderID 	[int] output,
	 @ParentFolderID 	[int],
	 @Title 	[nvarchar](100),
	 @UserID 	[int],
	 @Notes 	[nvarchar](500),
              @Place nvarchar(100),@archiveCenterID int )

AS INSERT INTO [dbo].[ArchiveFolder] 
	 ( 
	 [ParentFolderID],  [Title],  [UserID],  [Notes],  Place,ArchiveCenterID) 
 
VALUES 
	(
	 @ParentFolderID,
	 @Title,
	 @UserID,
	 @Notes,
@Place ,@archiveCenterID)

select @folderid= @@identity



GO
ALTER TABLE [dbo].[Letter] add
VersionDate char(10),
VersionNumber varchar(50)

GO
Create View VwContentType
as
SELECT     ListItemsID AS ID, Title
FROM         ListItems
WHERE     (ListID = 8)


GO
----------------------------------------------------------------------

[Num]=6
------
GO


CREATE PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Letterid]
@Letterid int,@ArchiveCenterid int
AS
SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFolder.Place
FROM         LetterArchiveFolder INNER JOIN
                      ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archivefolder.ArchiveCenterid=@ArchiveCenterid



 

GO
CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Place]
@ArchiveCenterID int,@Place nvarchar(100),@FolderID int output
AS

SELECT      top 1 @FolderID=FolderID
FROM         ArchiveFolder
WHERE     (ArchiveCenterID = @ArchiveCenterID)  and (Place=@Place)



 

GO


CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byArchiveCenterID_and_Title]
@ArchiveCenterID int,@like nvarchar(100)
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (ArchiveCenterID = @ArchiveCenterID)  and ( title like '%'+@like+'%' or place like  '%'+@like+'%' )




GO
------------------ ----------------------------------------------------------------------------


[Num]=7
------


ALTER proc [dbo].[Ysp_create_Temp_Database](@Path nvarchar(255))
as
declare @sql nvarchar(1000)
set @sql=
'CREATE DATABASE [yeganeh_tmp_db]  ON PRIMARY (NAME = N''yeganeh_tmp_db_Data'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Data.MDF'' ,
 SIZE = 5120kb, FILEGROWTH = 10%)
 LOG ON (NAME = N''yeganeh_tmp_db_Log'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Log.LDF'' , SIZE = 5120kb, FILEGROWTH = 10%)'

exec master..sp_executesql  @sql
GO
------------------ ----------------------------------------------------------------------------


[Num]=8
------

/*ExtentionName «÷«›Â ﬂ—œ‰ ›Ì·œ */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_LetterData_by_LetterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_LetterData_by_LetterID]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc Get_LetterData_by_LetterID(@LetterID int)    
As  
Select letterid,LetterDataID, LetterData.Extention, description, Extention.Extention As ExtentionName   
From LetterData Inner Join  
      Extention On LetterData.extention = Extention.ExtentionID  
Where(Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID)  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------


[Num]=9
----------Ver_3.5.0.0

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Report_UserTable]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Report_UserTable]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure [dbo].[Report_UserTable]  
@tableID int,@LetterWhere nvarchar(2000),@UserTableWhere nvarchar(2000)  
as  
  
declare @sql nvarchar(4000)  
  
set @sql= 'select LetterID into ##Uletters from Letter '  
  
if @UserTableWhere<>''   
 set @sql=@sql+' where  '+@UserTableWhere  
  
exec(@SQL)  
  
  
set @sql='Select l.LetterID into ##r from Letter l  
 inner join ##Uletters on ##Uletters.LetterID=l.LetterID  
 where UserTableID='+cast(@tableID as varchar(5))+' and '+@LetterWhere  
  
exec(@Sql)  
set @sql= 'create  table ##m (LetterID int '  
  
SELECT     top 60 identity(int,1,1) id , Fields.Description,cast (fields.id as int ) fieldid into #m  
FROM      Fields  
WHERE     (tableid = @tableID)  
order by [order]  
  
  
SELECT     @sql=@sql+' ,['+isnull(Description,'')+'_'+  
Cast((select count(*) from #m where isnull(Description,'')=isnull(m.Description,'') and id <=m.id) as varchar(3))+  
'] nvarchar(2000)'  
FROM      #m m  
  
set @sql= @sql+')'  
  
print @sql   
exec(@sql)  
declare @insert  varchar(8000)  
    
set @insert= 'insert into ##m select LetterID'  
   
SELECT @insert=@insert+',(select FieldValue from LetterFieldValue where FieldId=' + cast(fieldid as varchar(10))+' and letterid=r.LetterID)'  
FROM #m  
  
set @insert= @insert+' from ##r r '  
  
exec(@insert)  
  
  
select ##m.* ,IndicatorID,IncommingNO,IncommingDate,CenterNo,CenterDate  
,Memo/*,RetroactionNo*/,UserMemo,RegistrationDate/*,FollowLetterNo,LetterRecommites*/  
,sender.Title AS SenderTitle ,Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle  
FROM  ##m  
inner join Letter on ##m.Letterid=Letter.Letterid  
left  JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID   
left JOIN  FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID   
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type   
left join Secretariats on Secretariats.Secid=Letter.SecretariatID  
  
drop table ##m    
drop table ##Uletters  
drop table ##r

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

---------------------------- ------------------------------ 
/*Get_All_Letter »Â  SecTitle «›“Êœ‰ ” Ê‰ */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]        
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int        
as         
declare @today char(10)        
set @today=dbo.Shamsi(getdate())        
        
declare @sqlCommand nvarchar(4000)        
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,         
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,         
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,         
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,         
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,        
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,        
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,        
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,        
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,      
Letter.Color , Letter.ReceiveTypeID  
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/        
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate
FROM Letter left  JOIN        
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN        
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID         
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type         
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID'        
if @archiveFolderID>0          
set @sqlCommand=@sqlCommand+'         
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '        
        
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '        
      
set @where=isnull(ltrim(rtrim(@where)),'')        
if @where <>'' set @where =' and '+ @where         
        
if @Letter_Type<>0         
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'        
        
if @Secretariatid<>0         
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'        
        
if @Myear<>0         
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'        
        
if @LetterFormat<>0         
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'        
        
if @archiveFolderID>0          
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'        
        
if @archiveFolderID=0          
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'        
              
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '        
              
Exec sp_executesql @sqlCommand 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



---------------------------- ------------------------------ 
/*ExtentionName «÷«›Â ﬂ—œ‰ ›Ì·œ */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_LetterData_by_LetterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_LetterData_by_LetterID]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc Get_LetterData_by_LetterID(@LetterID int)    
As  
Select letterid,LetterDataID, LetterData.Extention, description, Extention.Extention As ExtentionName   
From LetterData Inner Join  
      Extention On LetterData.extention = Extention.ExtentionID  
Where(Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID)  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*Fields »Â ÃœÊ· IncommingMiladiDate_Calc «÷«›Â ﬂ—œ‰ —ﬂÊ—œ */
If not Exists(Select Fieldname From Fields Where Fieldname = 'IncommingMiladiDate_Calc')
begin
   Insert into Fields(FieldName, TableID, Description, IsWhere, ISString, IsLike, EveryLike, 
                      VisibleInGrid, isblob, FieldGroupID, FieldTypeID, ReferenceTableID, isboolean, [order] )
   Values('IncommingMiladiDate_Calc',1,' «—ÌŒ ”‰œ »Â „Ì·«œÌ',1,1,1,0,1,0,NULL,1,NULL,NULL,1) 
end
GO
------------------ ----------------------------------------------------------------------------
/*LetterArchiveFolder «÷«›Â ﬂ—œ‰ ÃœÊ·*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SelectLetter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SelectLetter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE  PROCEDURE SelectLetter  
@where nvarchar(2000)   
as   
declare @sqlCommand nvarchar(4000)  
set @sqlCommand='select l.*,   
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
 LEFT JOIN     Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID 
 Left join LetterArchiveFolder ON L.LetterID = LetterArchiveFolder.LetterID  /*Ranjbar ID=13*/ '   
set @where=isnull(ltrim(rtrim(@where)),'')  
if @where<>''   
 set @sqlCommand=@sqlCommand+' where '+@where  
 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '  
  
exec sp_executesql @sqlCommand  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*”Ê—  ﬂ—œ‰ “Ê‰ﬂ‰ Â«*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[get_ArchiveFolder_byArchiveCenterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_ArchiveFolder_ByArchiveCenterID]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_ArchiveFolder_ByArchiveCenterID]  
                @ArchiveCenterID int  
AS  
SELECT *  
FROM ArchiveFolder  
WHERE(ArchiveCenterID = @ArchiveCenterID)  
Order by FolderID  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

------------------ ----------------------------------------------------------------------------
/*UserLoginLogout »Â ÃœÊ· ComputerName  «÷«›Â ﬂ—œ‰ ›Ì·œ*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
ALTER TABLE dbo.UserLoginLogout ADD
	ComputerName char(30) NULL
GO
COMMIT
GO
------------------ ----------------------------------------------------------------------------
/*insert_UserLoginLogout »Â ComputerName  «÷«›Â ﬂ—œ‰ ›Ì·œ*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[insert_UserLoginLogout]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[insert_UserLoginLogout]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Insert_UserLoginLogout  
 ( @UserID  int , @IPAddress char(15), @ComputerName char(30) , @UserLoginLogoutID int output)    
AS    
INSERT INTO [dbo].[UserLoginLogout]   
  ( [UserID],[IPAddress],[ComputerName])      
VALUES (@UserID,@IPAddress,@ComputerName)  
set @UserLoginLogoutID=@@identity 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*select_userLoginLogout »Â ComputerName  «÷«›Â ﬂ—œ‰ ›Ì·œ*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[select_userLoginLogout]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[select_userLoginLogout]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure select_userLoginLogout(@bdate char(10), @edate char(10), @userid int)    
as    
SELECT Users.UserName, IPAddress,ComputerName ,      
       dbo.Shamsi(LoginTime) LoginDate,cast(datepart(hh, LoginTime) as varchar(2))+':'+cast (datepart(mi, LoginTime) as varchar(2)) LoginTime,    
       dbo.Shamsi(LogoutTime) LogoutDate,cast(datepart(hh, LogoutTime) as varchar(2))+':'+cast (datepart(mi, LogoutTime) as varchar(2)) LogoutTime,    
       isSafeLogout    
FROM UserLoginLogout INNER JOIN    
     Users ON UserID = Users.Id    
where dbo.Shamsi(LoginTime)  between @bdate and @edate    


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------


[Num]=10
----------Ver_3.5.0.0

Delete From ActionsAccess
GO
Delete from Actions
Go
------------------ ----------------------------------------------------------------------------

/*Actions »Â ÃœÊ· ActionName «÷«›Â ﬂ—œ‰ ›Ì·œ*/
/*Actions «“ ÃœÊ· ID Ê Õ–› ›Ì·œ  */
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
CREATE TABLE dbo.Tmp_Actions
	(
	FormTag tinyint NOT NULL,
	ActionName nvarchar(100) NOT NULL,
	Title nvarchar(50) NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.Actions)
	 EXEC('INSERT INTO dbo.Tmp_Actions (FormTag, Title)
		SELECT FormTag, Title FROM dbo.Actions (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Actions
GO
EXECUTE sp_rename N'dbo.Tmp_Actions', N'Actions', 'OBJECT'
GO
ALTER TABLE dbo.Actions ADD CONSTRAINT
	PK_Actions_ActionName PRIMARY KEY CLUSTERED 
	(
	FormTag,
	ActionName
	) ON [PRIMARY]

GO
COMMIT
GO

------------------ ----------------------------------------------------------------------------
/*ActionsAccess œ— ÃœÊ· ActionName »Â ActionID  »œÌ·*/

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
CREATE TABLE dbo.Tmp_ActionsAccess
	(
	AccessID tinyint NOT NULL,
	ActionName nvarchar(100) NOT NULL,
	FormTag tinyint NOT NULL,
	HasAccess bit NOT NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.ActionsAccess)
	 EXEC('INSERT INTO dbo.Tmp_ActionsAccess (AccessID, ActionName, FormTag, HasAccess)
		SELECT AccessID, CONVERT(nvarchar(100), ActionID), FormTag, HasAccess FROM dbo.ActionsAccess (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.ActionsAccess
GO
EXECUTE sp_rename N'dbo.Tmp_ActionsAccess', N'ActionsAccess', 'OBJECT'
GO
ALTER TABLE dbo.ActionsAccess ADD CONSTRAINT
	PK_ActionsAccess PRIMARY KEY CLUSTERED 
	(
	AccessID,
	ActionName,
	FormTag
	) ON [PRIMARY]

GO
COMMIT
GO
------------------ ----------------------------------------------------------------------------
/*UserLog »Â ÃœÊ· ActionName Ê «÷«›Â ﬂ—œ‰ ›Ì·œ ActionID Õ–› ›Ì·œ*/

Delete from UserLog 
GO

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
ALTER TABLE dbo.UserLog ADD
	ActionName nvarchar(100) NULL
GO
DROP INDEX dbo.UserLog.IX_UserLog_ActionID
GO
DROP INDEX dbo.UserLog.IX_UserLog_User_Act_Form
GO
DROP INDEX dbo.UserLog.IX_UserLog_User_Act_Form_Letter
GO
CREATE NONCLUSTERED INDEX IX_UserLog_ActionName ON dbo.UserLog
	(
	ActionName
	) ON [PRIMARY]
GO
ALTER TABLE dbo.UserLog
	DROP COLUMN ActionID
GO
COMMIT
GO
------------------ ----------------------------------------------------------------------------
/*Insert_Actions «’·«Õ*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Insert_Actions]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Insert_Actions]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure Insert_Actions(@FormTag Tinyint , @Title nvarchar(50),@ActionName nvarchar(100))   
As 
Insert Into dbo.Actions(FormTag,Title,ActionName)      
Values(@FormTag,@Title,@ActionName) 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------

/*Insert_NewActionsAccess «’·«Õ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Insert_NewActionsAccess]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Insert_NewActionsAccess]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/*
CREATE PROCEDURE [insert_newActionsAccess]    
AS     
    
delete from ActionsAccess where str(formtag)+str(ActionID) not in (select str(formtag)+str(ID) from     
actions)    
    
INSERT INTO [dbo].[ActionsAccess]     
  ( [AccessID],    
  [ActionID],    
  [FormTag],    
  [HasAccess])     
    
SELECT     Accesses.ID,  Actions.ID,Actions.FormTag,1     
FROM         Accesses,Actions     
where str(accesses.id)+Str(actions.id) not in     
 (select str(accesses.id)+Str(actionid)  from dbo.ActionsAccess) 
*/   
   
----
CREATE PROCEDURE [Insert_NewActionsAccess]    
AS     
    
Delete from ActionsAccess   
where Str(formtag) not in (Select Str(formtag) from Actions)    
And RTrim(ActionName) not in (Select RTrim(ActionName) from Actions)    

/*œ«œ‰ œ” —”Ì*/    
INSERT INTO [dbo].[ActionsAccess]( [AccessID],[ActionName],[FormTag],[HasAccess])         
SELECT Acc.ID,A.ActionName,A.FormTag,1        
FROM Accesses Acc,Actions A       
where (Str(A.formtag)+LTrim(RTrim(A.ActionName))+ Str(Acc.ID) not in 
      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionName))+ Str(AAC.AccessID) From ActionsAccess AAC) )

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

------------------ ----------------------------------------------------------------------------

/*Report_UserLog «’·«Õ */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Report_UserLog]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Report_UserLog]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Report_UserLog]  
@Secretariatid int,  
@myear tinyint,  
@where nvarchar(2000)  
as   
declare @sqlCommand nvarchar(4000)  
  
set @sqlCommand='  
SELECT     top 1000  
 ApplicationForms.Title AS FormTitle,  
 Users.Title AS UserTitle,  
 Actions.Title AS ActionTitle,  
 Letter.IndicatorID,  
 LetterTypes.Title AS LetterType,  
 Letter.IncommingNO,  
 Letter.Incommingdate,  
 Letter.RegistrationDate,  
 Letter.Memo,  
 dbo.Shamsi(UserLog.Time1) AS Date,  
 right(cast(UserLog.Time1 as varchar(50)),7) as Time  
  
FROM       UserLog  
INNER JOIN Users            ON Users.Id = UserLog.UserID  
/*INNER JOIN Actions          ON UserLog.ActionID = Actions.ActionID   */
INNER JOIN Actions          ON RTrim(UserLog.ActionName) = RTrim(Actions.ActionName)   
INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.FormTag  
LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterID  
LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.ID '  
  
  
set @where=isnull(ltrim(rtrim(@where)),'')  
if @where <>'' set @where =' and '+@where  
  
if @Secretariatid<>0  
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'  
  
if @Myear<>0  
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'  
  
if substring(@where,1,4)=' and' set @where=' where '+substring(@where,5,4000)  
  
 set @sqlCommand=@sqlCommand+@where + ' order by time1  '  
exec(@sqlCommand)  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*Insert_UserLog «’·«Õ */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[insert_UserLog]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Insert_UserLog]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [Insert_UserLog]  
 (@UserID  [tinyint],
  /*@ActionID  [int],  */
  @ActionName  nvarchar(100),    
  @LetterID [int])  
  
AS INSERT INTO [dbo].[UserLog]   
  ( [UserID],  
  [ActionName],  
  [LetterID])   
   
VALUES   
 ( @UserID,  
  @ActionName,  
  @LetterID)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*" Õ–› —ﬂÊ—œ "›—„ ÅÌÊ” */
Delete From ApplicationForms Where ID = 4
GO
------------------ ----------------------------------------------------------------------------


[Num]=11   
----------Ver_3.5.2.0

/*var 3.5.2.0*/

/*SelectLetter »Â has_Page «÷«›Â ﬂ—œ‰ ›Ì·œ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SelectLetter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SelectLetter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE SelectLetter    
@where nvarchar(2000)     
as     
declare @sqlCommand nvarchar(4000)    
set @sqlCommand='select l.*,     
 ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS ClassificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS UserTitle,     
 LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, LetterTemplate.Title AS TemplateTitle,      
 FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTypeTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.IndicatorID  AnswerIndicatorID    
 ,dbo.has_Page(L.letterid) has_Page /*Ranjbar*/
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
 LEFT JOIN     Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID   
 Left join LetterArchiveFolder ON L.LetterID = LetterArchiveFolder.LetterID  /*Ranjbar ID=13*/ '     
set @where=isnull(ltrim(rtrim(@where)),'')    
if @where<>''     
 set @sqlCommand=@sqlCommand+' where '+@where    
 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '    
    
exec sp_executesql @sqlCommand 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*Å” «“ »—Ê“ —”«‰Ì ° “Ê‰ﬂ‰ Â« ﬁ«»· „‘«ÂœÂ ‰»Êœ‰œ*/
Update ArchiveFolder
Set ArchiveCenterID = 0
Where ArchiveCenterID is Null
GO

Update ArchiveFolder
Set UserID = 0
GO
------------------ ----------------------------------------------------------------------------
Delete From ActionsAccess
GO
Delete from Actions
Go

Update ApplicationForms
Set ID = 3
Where ID = 2
GO
------------------ ----------------------------------------------------------------------------
/*Insert_NewActionsAccess «’·«Õ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Insert_NewActionsAccess]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Insert_NewActionsAccess]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/*
CREATE PROCEDURE [insert_newActionsAccess]    
AS     
    
delete from ActionsAccess where str(formtag)+str(ActionID) not in (select str(formtag)+str(ID) from     
actions)    
    
INSERT INTO [dbo].[ActionsAccess]     
  ( [AccessID],    
  [ActionID],    
  [FormTag],    
  [HasAccess])     
    
SELECT     Accesses.ID,  Actions.ID,Actions.FormTag,1     
FROM         Accesses,Actions     
where str(accesses.id)+Str(actions.id) not in     
 (select str(accesses.id)+Str(actionid)  from dbo.ActionsAccess) 
*/   
   
--
CREATE PROCEDURE [Insert_NewActionsAccess]    
AS     
    
Delete from ActionsAccess   
where Str(formtag) not in (Select Str(formtag) from Actions)    
And RTrim(ActionName) not in (Select RTrim(ActionName) from Actions)    

/*œ«œ‰ œ” —”Ì*/    
INSERT INTO [dbo].[ActionsAccess]( [AccessID],[ActionName],[FormTag],[HasAccess])         
SELECT Acc.ID,A.ActionName,A.FormTag,1        
FROM Accesses Acc,Actions A       
where (Str(A.formtag)+LTrim(RTrim(A.ActionName))+ Str(Acc.ID) not in 
      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionName))+ Str(AAC.AccessID) From ActionsAccess AAC) )
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------


[Num]=12
-----------Ver_4.0.0.0
/*ArchiveFolderTitle «÷«›Â ﬂ—œ‰ ›Ì·œ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]          
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int          
as           
declare @today char(10)          
set @today=dbo.Shamsi(getdate())          
          
declare @sqlCommand nvarchar(4000)          
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,           
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,           
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,           
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,           
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,          
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,          
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,          
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,          
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,        
Letter.Color , Letter.ReceiveTypeID    
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/          
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle  
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle  
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/
FROM Letter left  JOIN          
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN          
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID           
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type           
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID'          
if @archiveFolderID>0            
set @sqlCommand=@sqlCommand+'           
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '          
          
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '          
        
set @where=isnull(ltrim(rtrim(@where)),'')          
if @where <>'' set @where =' and '+ @where           
          
if @Letter_Type<>0           
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'          
          
if @Secretariatid<>0           
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'          
          
if @Myear<>0           
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'          
          
if @LetterFormat<>0           
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'          
          
if @archiveFolderID>0            
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'          
          
if @archiveFolderID=0            
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'          
                
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '          
                
Exec sp_executesql @sqlCommand

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
Update ArchiveCenter
--„‘ —ò »Ì‰ Â„Â œ»Ì—Œ«‰Â Â«
Set ArchiveCenterTitle = '„‘ —ﬂ »Ì‰ Â„Â œ›« — »«Ìê«‰Ì'
Where ArchiveCenteriD = 0
GO

------------------ ----------------------------------------------------------------------------
/* UserAccArchive ”«Œ  ÃœÊ·*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserAccArchive]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserAccArchive]
GO

CREATE TABLE [dbo].[UserAccArchive] (
	[UserAccArchiveID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NOT NULL ,
	[ArchiveCenterID] [int] NOT NULL ,
	[ArchiveFolderID] [int] NOT NULL ,
	[ISAccess] [bit] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserAccArchive] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserAccArchive] PRIMARY KEY  CLUSTERED 
	(
		[UserAccArchiveID]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_UserAccArchive_UserID] ON [dbo].[UserAccArchive]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_UserAccArchive_ArchiveCenterID] ON [dbo].[UserAccArchive]([ArchiveCenterID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_UserAccArchive_ArchiveFolderID] ON [dbo].[UserAccArchive]([ArchiveFolderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserAccArchive] ADD 
	CONSTRAINT [FK_UserAccArchive_ArchiveCenter] FOREIGN KEY 
	(
		[ArchiveCenterID]
	) REFERENCES [dbo].[ArchiveCenter] (
		[ArchiveCenterID]
	),
	CONSTRAINT [FK_UserAccArchive_ArchiveFolder] FOREIGN KEY 
	(
		[ArchiveFolderID]
	) REFERENCES [dbo].[ArchiveFolder] (
		[FolderID]
	),
	CONSTRAINT [FK_UserAccArchive_Users] FOREIGN KEY 
	(
		[UserID]
	) REFERENCES [dbo].[Users] (
		[Id]
	)
GO

alter table [dbo].[UserAccArchive] nocheck constraint [FK_UserAccArchive_ArchiveCenter]
GO

alter table [dbo].[UserAccArchive] nocheck constraint [FK_UserAccArchive_ArchiveFolder]
GO

alter table [dbo].[UserAccArchive] nocheck constraint [FK_UserAccArchive_Users]
GO


------------------ ----------------------------------------------------------------------------
/*ÃÂ  œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ Â«*/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sp_Sel_UserAccArchive]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sp_Sel_UserAccArchive]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure [dbo].[Sp_Sel_UserAccArchive] @userID int  , @ArchiveCenterID int    
As      
Select *      
From UserAccArchive      
Where(UserID = @userID)      
And(ArchiveCenterID = @ArchiveCenterID)      


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*»—«Ì  „«„Ì ﬂ«—»—«‰ UserAccArchive œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ ÃœÌœ œ— ÃœÊ·*/ 
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sp_SetAccessToArchiveFolder]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sp_SetAccessToArchiveFolder]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure Sp_SetAccessToArchiveFolder @ArchiveFolderID int   
As 
/*»—«Ì  „«„Ì ﬂ«—»—«‰ UserAccArchive œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ ÃœÌœ œ— ÃœÊ·*/ 
Declare @UserID int  
  
Declare Cu_Users Cursor For  
Select ID from Users  
  
Open Cu_Users   
Fetch Next From Cu_Users Into @UserID  
While @@FETCH_STATUS = 0  
begin  
   
Insert Into UserAccArchive(UserID, ArchiveCenterID, ArchiveFolderID, ISAccess)   
Select @UserID , AF.ArchiveCenterID , AF.FolderID , 1     
From Secretariats Se , ArchiveCenter AC , ArchiveFolder AF  
Where(AF.FolderID = @ArchiveFolderID)  
And(Se.ArchiveCenterID = AC.ArchiveCenterID)  
And(AC.ArchiveCenterID = AF.ArchiveCenterID)  
  
Fetch Next From Cu_Users Into @UserID  
end  
Close Cu_Users  
Deallocate Cu_Users  
--exec Sp_SetAccessToArchiveFolder 1,32

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*œ«œ‰ œ” —”Ì »Â  „«„Ì “Ê‰ﬂ‰ Â«Ì «“ ﬁ»· À»  ‘œÂ*/

Delete from UserAccArchive
GO
Declare @UserID int  
Declare Cu_Users Cursor For  
Select ID from Users  
  
Open Cu_Users   
Fetch Next From Cu_Users Into @UserID  
While @@FETCH_STATUS = 0  
begin  
   
Insert Into UserAccArchive(UserID, ArchiveCenterID, ArchiveFolderID, ISAccess) 
Select @UserID , AF.ArchiveCenterID , AF.FolderID , 1  
From ArchiveCenter AC , ArchiveFolder AF  
Where(AC.ArchiveCenterID = AF.ArchiveCenterID)  
  
Fetch Next From Cu_Users Into @UserID  
end  
Close Cu_Users  
Deallocate Cu_Users  
GO
------------------ ----------------------------------------------------------------------------
/*ÃÂ  «⁄„«· œ” —”Ì »Â “Ê‰ﬂ‰ Â« Get_ArchiveFolder_ByArchiveCenterID «’·«Õ */

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_ArchiveFolder_ByArchiveCenterID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_ArchiveFolder_ByArchiveCenterID]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_ArchiveFolder_ByArchiveCenterID] @ArchiveCenterID int , @userID int          
AS      
/*Old Sp    
Create PROCEDURE [dbo].[Get_ArchiveFolder_ByArchiveCenterID] @ArchiveCenterID int      
AS    
SELECT *      
FROM ArchiveFolder      
WHERE(ArchiveCenterID = @ArchiveCenterID)      
Order by FolderID      
*/    
        
SELECT AF.*          
FROM ArchiveFolder AF , UserAccArchive UAA       
Where (UAA.UserID = @userID)             
And(UAA.ArchiveCenterID = @ArchiveCenterID)        
And(UAA.IsAccess = 1)        
And(UAA.ArchiveFolderID = AF.FolderID)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*ID=25*/
/*PageNumber  €ÌÌ— ‰Ê⁄ ›Ì·œ*/

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION

ALTER TABLE dbo.LetterData DROP CONSTRAINT DF_letterdata_pageNumber
GO
ALTER TABLE dbo.LetterData Alter Column PageNumber int NULL
GO
ALTER TABLE dbo.LetterData ADD CONSTRAINT DF_letterdata_pageNumber DEFAULT (0) FOR PageNumber
GO

COMMIT
GO
------------------ ----------------------------------------------------------------------------
/*ID=25*/
/*LetterData »—«Ì ÃœÊ· PageNumber „— » ﬂ—œ‰  ’«ÊÌ— »« „ﬁœ«— œ«œ‰ »Â ›Ì·œ*/
/*Ranjbar*/

Declare @LetterID int
Declare @NextLetterID int
Declare @PageNumber int
Set @PageNumber = 0

Declare Cr_LetterData1 Cursor  
For
Select LetterID from LetterData
Order By LetterDataID, LetterID , PageNumber
For Update 

Open Cr_LetterData1 
Fetch Next from Cr_LetterData1 InTo @LetterID
While @@Fetch_Status = 0
begin   
   Set @PageNumber = @PageNumber+1
   Update LetterData Set PageNumber = @PageNumber Where Current of Cr_LetterData1

   Set @NextLetterID = @LetterID
   Fetch Next from Cr_LetterData1 InTo @LetterID
   if @NextLetterID <> @LetterID
      Set @PageNumber = 0
end
Close Cr_LetterData1
Deallocate Cr_LetterData1
GO
------------------ ----------------------------------------------------------------------------
Update Classifications
Set Title = Rtrim(LTrim(Title))
GO
------------------ ----------------------------------------------------------------------------
/*ID=12*/
/*ÃÂ  ﬁ—«— œ«œ‰  «—ÌŒ Ê ”«⁄  ÊÌ—«Ì‘ ”‰œÂ« LetterEdit ”«Œ  ÃœÊ·*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterEdit]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LetterEdit]
GO

CREATE TABLE [dbo].[LetterEdit] (
	[LetterEditID] [int] IDENTITY (1, 1) NOT NULL ,
	[EditDate] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1256_CI_AS NOT NULL ,
	[EditTime] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,
	[LetterID] [int] NOT NULL ,
	[UsersID] [int] NOT NULL ,
	[Statement] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LetterEdit] WITH NOCHECK ADD 
	CONSTRAINT [PK_LetterEdit] PRIMARY KEY  CLUSTERED 
	(
		[LetterEditID]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_LetterEdit_LetterID] ON [dbo].[LetterEdit]([LetterID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_LetterEdit_UserID] ON [dbo].[LetterEdit]([UsersID]) ON [PRIMARY]
GO
------------------ ----------------------------------------------------------------------------
/*AlarmUsers,Alarm ”«Œ  Ãœ«Ê·*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Alarm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Alarm]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AlarmUsers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[AlarmUsers]
GO

CREATE TABLE [dbo].[Alarm] (
	[AlarmID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,
	[Memo] [nvarchar] (3000) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,
	[DateAlarm] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,
	[TimeAlarm] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,
	[TagText] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1256_CI_AS NOT NULL ,
	[UsersID] [int] NULL ,
	[LetterID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[AlarmUsers] (
	[AlarmUsersID] [int] IDENTITY (1, 1) NOT NULL ,
	[AlarmID] [int] NOT NULL ,
	[UsersID] [int] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Alarm] WITH NOCHECK ADD 
	CONSTRAINT [PK_Alarm] PRIMARY KEY  CLUSTERED 
	(
		[AlarmID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[AlarmUsers] WITH NOCHECK ADD 
	CONSTRAINT [PK_AlarmUsers] PRIMARY KEY  CLUSTERED 
	(
		[AlarmUsersID]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_Alarm_UsersID] ON [dbo].[Alarm]([UsersID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_Alarm_LetterID] ON [dbo].[Alarm]([LetterID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_AlarmUsers_AlarmID] ON [dbo].[AlarmUsers]([AlarmID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_AlarmUsers_UsersID] ON [dbo].[AlarmUsers]([UsersID]) ON [PRIMARY]
GO


------------------ ----------------------------------------------------------------------------
/*ÃÂ  ﬁ—«—œ«œ‰ ¬ÌﬂÊ‰ ¬·«—„ œ— ›—„ «’·Ì Fu_LetterAlarm ”«Œ   «»⁄*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Fu_LetterAlarm]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[Fu_LetterAlarm]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/*0_No Alarm , 1_Have Alarm With No delay , 2_Have Alarm With Delay*/
CREATE Function dbo.Fu_LetterAlarm(@LetterID int , @MiladyTodayDate DateTime , @UsersID int) 
Returns int
As
Begin
   if Exists( Select AlarmID from AlarmUsers Where USersID=@UsersID And AlarmID in (Select AlarmID From Alarm Where(LetterID = @LetterID)And(TagText = 'LetterAlerm')) )
   begin
      Declare @Value int
      Declare @CurrentTime DateTime
      Set @CurrentTime = Cast( Cast(DatePart(hour,@MiladyTodayDate)as nVarchar)+':'+Cast(DatePart(minute,@MiladyTodayDate)as nVarchar) as Datetime)

      Declare @ShamsiTodayDate Nvarchar(20)
      Set @ShamsiTodayDate = dbo.Shamsi(@MiladyTodayDate)

      Declare @DateAlarm Nvarchar(20)
      Set @DateAlarm = (Select Top 1 RTrim(DateAlarm) from Alarm Where LetterID = @LetterID)
      Declare @TimeAlarm DateTime
if IsDate(Cast((Select Top 1 RTrim(TimeAlarm) from Alarm Where LetterID = @LetterID) as DateTime)) = 1
      Set @TimeAlarm = Cast((Select Top 1 RTrim(TimeAlarm) from Alarm Where LetterID = @LetterID) as DateTime)
else
Set @TimeAlarm = @CurrentTime

      Select @Value = (Case When @ShamsiTodayDate > (@DateAlarm) then 2 
                       else (Case When (@ShamsiTodayDate = @DateAlarm)And(@CurrentTime > @TimeAlarm) then 2 
                             else 1 end) end)
   end
      else
         Set @Value = 0
   Return @Value
end
-- Select dbo.Fu_LetterAlarm(5164,GetDate(),23)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*»—«Ì ‰„«Ì‘ ¬ÌﬂÊ‰ ¬·«—„ œ— ›—„ «’·Ì HasLetterAlerm ÃÂ  œ«‘ ‰ ›Ì·œ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]            
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,@UsersID int           
as             
declare @today char(10)            
set @today=dbo.Shamsi(getdate())            
            
declare @sqlCommand nvarchar(4000)            
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,             
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,             
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,             
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,             
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,            
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,            
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,            
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,            
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,          
Letter.Color , Letter.ReceiveTypeID      
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/            
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle    
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle    
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate  
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)  
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/  
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm
FROM Letter left  JOIN            
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN            
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID             
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type             
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID'            
if @archiveFolderID>0              
set @sqlCommand=@sqlCommand+'             
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '            
            
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '            
          
set @where=isnull(ltrim(rtrim(@where)),'')            
if @where <>'' set @where =' and '+ @where             
            
if @Letter_Type<>0             
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'            
            
if @Secretariatid<>0             
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'            
            
if @Myear<>0             
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'            
            
if @LetterFormat<>0             
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'            
            
if @archiveFolderID>0              
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'            
            
if @archiveFolderID=0              
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'            
                  
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '            
                  
Exec sp_executesql @sqlCommand

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*Ranjbar ID=21  ﬂ«—»— ›ﬁÿ »«Ìœ ”‰œÂ«ÌÌ —« „‘«ÂœÂ ﬂ‰œ ﬂÂ »Â “Ê‰ﬂ‰ ¬‰Â« œ” —”Ì œ«—œ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,@UsersID int             
as               
declare @today char(10)              
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)              
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,               
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,               
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,               
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,              
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,              
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,              
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
Letter.Color , Letter.ReceiveTypeID        
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/              
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate    
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)    
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/    
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm  
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type               
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

---Ranjbar ID=21
--> ﬂ«—»— ‰»«Ìœ ”‰œÂ«ÌÌ —« ﬂÂ œ— “Ê‰ﬂ‰ Â«Ì €Ì— ﬁ«»· œ” —”Ì ﬁ—«— œ«—‰œ —« „‘«ÂœÂ ﬂ‰œ 
if (@archiveFolderID = -1)or(@MYear=0)   --> ‰„«Ì‘  „«„Ì ”‰œÂ« ° Õ Ì »«Ìê«‰Ì ‘œÂ Â«
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --œ” —”Ì ‰œ«—œ
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) )'
                      

---
                               
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '              
                    
Print @sqlCommand
Exec sp_executesql @sqlCommand

--Exec Get_All_Letter 1, 0, 0, 1, N'', 100, -1, 26 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------


[Num]=13
-----------Ver_4.0.0.1

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[has_Page]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[has_Page]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE FUNCTION has_Page(@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit,@extention tinyint

/*
if dbo.GetSystemValue(27)='False'   
   set @extention=2 --Tiff
else
   set @extention=1 --Jpg
if exists(SELECT PageNumber FROM LetterData WHERE LetterID=@LetterID and extention=@extention)
*/
if exists(SELECT LetterID FROM LetterData WHERE LetterID=@LetterID And /*PageNumber>0 And*/ Extention in (1,2))
   set @res=1
else
   set @res=0
return(@res)
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------

[Num]=14
-----------Ver_4.0.0.2

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sp_SetAccessToArchiveFolder]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sp_SetAccessToArchiveFolder]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure Sp_SetAccessToArchiveFolder @ArchiveFolderID int     
As   
/*»—«Ì  „«„Ì ﬂ«—»—«‰ UserAccArchive œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ ÃœÌœ œ— ÃœÊ·*/   
Declare @UserID int    
Declare @ArchiveCenterID int
Select @ArchiveCenterID = ArchiveCenterID From ArchiveFolder Where FolderID = @ArchiveFolderID     

Declare Cu_Users Cursor For    
Select ID from Users    
    
Open Cu_Users     
Fetch Next From Cu_Users Into @UserID    
While @@FETCH_STATUS = 0    
begin    
     
Insert Into UserAccArchive(UserID, ArchiveCenterID, ArchiveFolderID, ISAccess)     
Values(@UserID,@ArchiveCenterID,@ArchiveFolderID,1)
/*Select @UserID , AF.ArchiveCenterID , AF.FolderID , 1       
From Secretariats Se , ArchiveCenter AC , ArchiveFolder AF    
Where(AF.FolderID = @ArchiveFolderID)    
And(Se.ArchiveCenterID = AC.ArchiveCenterID)    
And(AC.ArchiveCenterID = AF.ArchiveCenterID)    */
    
Fetch Next From Cu_Users Into @UserID    
end    
Close Cu_Users    
Deallocate Cu_Users    
--Exec Sp_SetAccessToArchiveFolder 1,32  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------

[Num]=15
-----------Ver_4.0.0.3

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
CREATE TABLE dbo.Tmp_Settings
	(
	UserID int NOT NULL,
	VariableId int NULL,
	[Value] nvarchar(255) NULL,
	description nvarchar(50) NULL,
	VariableName nvarchar(50) NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.Settings)
	 EXEC('INSERT INTO dbo.Tmp_Settings (UserID, VariableId, [Value], description)
		SELECT UserID, VariableId, [Value], description FROM dbo.Settings (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Settings
GO
EXECUTE sp_rename N'dbo.Tmp_Settings', N'Settings', 'OBJECT'
GO
COMMIT
GO
------------------ ----------------------------------------------------------------------------
/*ActionName »Â ActionID —‰Ã»—  €ÌÌ— ›Ì·œ*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SaveAs_Accesses]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SaveAs_Accesses]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE [SaveAs_Accesses]  
       ( @Title nvarchar(50),@oldaccessID int ,@newID int output)  
  
AS  
INSERT INTO [dbo].[Accesses]( [Title])   
VALUES ( @Title)  
  
select @newID = Max(ID) from accesses  

insert into ActionsAccess(accessid,ActionName, FormTag, HasAccess)  
SELECT @newid,ActionName, FormTag, HasAccess  
FROM ActionsAccess  
where accessid=@oldaccessID  
  
insert into ActionsAccess(accessid,ActionName, FormTag, HasAccess)  
SELECT Accesses.ID AS accessid, Actions.ActionName, Actions.FormTag, 0 AS hasaccess  
FROM Actions , Accesses  
--where str(Accesses.ID)+str(Actions.ID) not in (select str(accessid)+str(ActionID) from ActionsAccess)  
where (Str(Actions.formtag)+LTrim(RTrim(Actions.ActionName))+ Str(Accesses.ID) not in 
      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionName))+ Str(AAC.AccessID) From ActionsAccess AAC) )

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------


[Num]=16
-----------Ver_4.0.0.5


--insert into settings(UserID,VariableId,Value,Description) ID=93 «’·«Õ
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

--insert into settings(UserID,VariableId,Value,Description) «’·«Õ
Alter TRIGGER [User_Ins] ON dbo.Users 
FOR INSERT
AS
set nocount on
Declare  @ui tinyint , @DefSec int 
select @ui = ID,@DefSec= DefualtSecretariatID from inserted

Delete from settings
where userid=@ui

insert into settings(UserID,VariableId,Value,Description)
SELECT @ui, VariableId, Value, Description 
FROM Settings
where userid=0

Delete FROM UserTemplateGroup
where userid=@ui
insert into UserTemplateGroup
select @ui,TemplateGroupID
from TemplateGroup

delete FROM UserSecretariats
where userid=@ui
insert into UserSecretariats
values(@ui,@defSec)

delete FROM UserExtention
where userid=@ui

insert into UserExtention
(userid,extentionid)

Select @ui,extentionid
from extention
set nocount off


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
------------------ ----------------------------------------------------------------------------
/*Ranjbar 89.11.24 ID=94*/
/* ‰ŸÌ„«  ›—„ Å—Ì‰ */

Delete from Settings Where VariableId in(2101,2102,2103)
GO
Insert Into Settings(UserID, VariableId, Value, VariableName)
Select ID,2101,'False',null from Users
Union
Select ID,2102,'14',null from Users
Union
Select ID,2103,'0',null from Users
GO
------------------ ----------------------------------------------------------------------------
/*«’·«Õ ﬂ·„Â Ê—Êœ »Â Ê—œ*/
Update Extention
Set ExtentionTitle = '›«Ì· Ê—œ'
Where ExtentionID = 4
GO
------------------ ----------------------------------------------------------------------------

[Num]=17
----------------Ver_4.0.0.5


/*Invalid Argument »œ·Ì· ‰œ«‘ ‰ „ﬁœ«— Ê ‰„«Ì‘ ÅÌ€«„ Œÿ«Ì  */
Update Settings
Set Value=7
Where variableID = 10
And ((Value is Null) or (Value < 0))
GO

------------------ ----------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ShamsiToMiladi]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[ShamsiToMiladi]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE FUNCTION dbo.ShamsiToMiladi(@DateStr varchar(11))
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

   IF ((@i<>0) and  --(dbo.SubStrCount('/', @TmpDateStr)=2)/* ⁄œ«œ «”·‘*/ and
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
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------ ----------------------------------------------------------------------------
/*Jpg «’·«Õ  ’«ÊÌ— «“ ›—„  Œ«’ »Â ›—„  */

if not exists( select * from syscolumns where name='IsCorrectedImage' )
begin
	ALTER TABLE dbo.LetterData ADD	IsCorrectedImage bit NULL
end	

GO
------------------ ----------------------------------------------------------------------------

[Num]=18
----------------Ver_4.0.0.6
ALTER PROCEDURE [dbo].[delete_Extention]
@ExtentionID int 
AS
if not exists(select LetterDataID from LetterData where extention=@ExtentionID)
begin
	delete UserExtention where ExtentionID=@ExtentionID
	delete Extention where ExtentionID=@ExtentionID
end
else
	raiserror('«“ «Ì‰ ‰Ê⁄ ›«Ì· œ— ÅÌÊ”  Â« «” ›«œÂ ‘œÂ «”  „Ã«“ »Â Õ–› ‰Ì” Ìœ'     ,16,1) ;

GO


[Num]=19
----------------Ver_4.0.0.8

IF NOT EXISTS (select * from dbo.sysobjects WHERE name = 'DefineColors' AND xtype='U')
BEGIN
	CREATE TABLE [dbo].[DefineColors] (
		[ID] [int] IDENTITY (1, 1) NOT NULL ,
		[Color] [varchar] (50) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,
		[Descriptions] [varchar] (200) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL 
	) ON [PRIMARY]	
END
GO

IF NOT EXISTS (select * from syscolumns WHERE name = 'ColorID' AND id=OBJECT_ID('LetterData'))
BEGIN
	ALTER TABLE dbo.LetterData ADD	ColorID int NULL
END

GO

IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acDefineColor' )
BEGIN
	INSERT INTO Actions (FormTag,ActionName,Title)
	VALUES(1,'acDefineColor',' ⁄—Ì› —‰ê')	
END

GO
IF NOT EXISTS (select * from syscolumns WHERE name = 'AccessDesc' AND id=OBJECT_ID('DefineColors'))
BEGIN
	ALTER TABLE dbo.DefineColors ADD AccessDesc VARCHAR(200) NULL
END

GO
IF NOT EXISTS( SELECT * FROM ApplicationForms WHERE ID=8 )
BEGIN
	INSERT INTO ApplicationForms(ID,Title)
	VALUES(8,'“Ê‰ò‰ Â«Ì »«Ìê«‰Ì')	

	IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acNewZoonkanBaygani' )
	BEGIN
		INSERT INTO Actions (FormTag,ActionName,Title)
		VALUES(8,'acNewZoonkanBaygani','ÃœÌœ')	
	END
	IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acDeleteZoonkanBaygani' )
	BEGIN
		INSERT INTO Actions (FormTag,ActionName,Title)
		VALUES(8,'acDeleteZoonkanBaygani','Õ–›')	
	END
	IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acEditZoonkanBaygani' )
	BEGIN
		INSERT INTO Actions (FormTag,ActionName,Title)
		VALUES(8,'acEditZoonkanBaygani','ÊÌ—«Ì‘')	
	END
	IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acCutZoonkanBaygani' )
	BEGIN
		INSERT INTO Actions (FormTag,ActionName,Title)
		VALUES(8,'acCutZoonkanBaygani','Cut')	
	END
	IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acPasteZoonkanBaygani' )
	BEGIN
		INSERT INTO Actions (FormTag,ActionName,Title)
		VALUES(8,'acPasteZoonkanBaygani','Paste')	
	END		
END

GO

IF NOT EXISTS( SELECT * FROM ApplicationForms WHERE ID=9 )
BEGIN
	INSERT INTO ApplicationForms(ID,Title)
	VALUES(9,'ÿ»ﬁÂ »‰œÌ ÅÌÊ” ')
END

GO
IF EXISTS(SELECT id FROM sysobjects WHERE NAME='trgManageActionColors')
	DROP TRIGGER trgManageActionColors
GO	
CREATE TRIGGER [dbo].[trgManageActionColors] 
   ON  [dbo].[DefineColors] 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON
	DECLARE @Color VARCHAR(50) , @OldColor VARCHAR(50) , @AccessDesc VARCHAR(200),
			@ColorID INT			
	
	IF EXISTS(SELECT ID FROM INSERTED)
	BEGIN
		IF NOT EXISTS(SELECT ID FROM DELETED)
		BEGIN
			-- Insert
			SELECT @Color=Color,@AccessDesc=LTRIM(RTRIM(AccessDesc)) FROM INSERTED
			SET @Color='ac'+@Color 		  			  			
			IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName= @Color)
			BEGIN
				IF LEN(@AccessDesc)<=0 SET @AccessDesc='›«ﬁœ ‘—Õ œ” —”Ì œ— ÃœÊ·  ⁄—Ì› —‰ê Â« „Ì »«‘œ'
				INSERT INTO Actions (FormTag,ActionName,Title)
				VALUES(9,@Color,@AccessDesc)	
			END 			 			
		END
		ELSE
		BEGIN
			-- Update
			SELECT @Color=Color,@AccessDesc=LTRIM(RTRIM(AccessDesc)) FROM INSERTED
			SET @Color='ac'+@Color
			IF LEN(@AccessDesc)<=0 SET @AccessDesc='›«ﬁœ ‘—Õ œ” —”Ì œ— ÃœÊ·  ⁄—Ì› —‰ê Â« „Ì »«‘œ'  			 			
			SELECT @OldColor=Color FROM DELETED
			SET @OldColor='ac'+@OldColor
			ALTER TABLE Actions DISABLE TRIGGER ALL
			UPDATE Actions
			SET	ActionName = @Color,
				Title = @AccessDesc
			WHERE ActionName=@OldColor 	
			ALTER TABLE Actions ENABLE TRIGGER ALL
		END	 		
	END
	ELSE
	BEGIN
		-- Delete
		SELECT @OldColor=Color,@ColorID=ID FROM DELETED
		SET @OldColor='ac'+@OldColor 		
		IF EXISTS( SELECT LetterDataID FROM LetterData WHERE ColorID=@ColorID )
		BEGIN
			RAISERROR('«Ì‰ —‰ê »Â »—ŒÌ ÅÌÊ”  Â« «‰ ’«» œ«œÂ ‘œÂ «”  «„ò«‰ Õ–› ‰œ«—Ìœ',16,10)
			ROLLBACK
			RETURN
		END
		ELSE
		BEGIN
 			ALTER TABLE Actions DISABLE TRIGGER ALL
			DELETE FROM Actions WHERE ActionName=@OldColor
			ALTER TABLE Actions ENABLE TRIGGER ALL 			
		END	 		
	END		
END

GO
IF NOT EXISTS (select * from syscolumns WHERE name = 'CanAttachColor' AND id=OBJECT_ID('Users'))
BEGIN
	ALTER TABLE dbo.Users ADD CanAttachColor BIT NULL
END
GO
IF NOT EXISTS (select * from syscolumns WHERE name = 'CanViewAllAttachPages' AND id=OBJECT_ID('Users'))
BEGIN
	ALTER TABLE dbo.Users ADD CanViewAllAttachPages BIT NULL
END
GO
IF NOT EXISTS (select * from syscolumns WHERE name = 'VersionNo' AND id=OBJECT_ID('LetterData'))
BEGIN
	ALTER TABLE dbo.LetterData ADD VersionNo varchar(50) NULL
END
GO
IF NOT EXISTS (select * from syscolumns WHERE name = 'VersionDate' AND id=OBJECT_ID('LetterData'))
BEGIN
	ALTER TABLE dbo.LetterData ADD VersionDate VARCHAR(10) NULL
END
GO
ALTER proc [dbo].[Get_LetterData_by_LetterID](@LetterID int)    
As  
Select letterid,LetterDataID, LetterData.Extention, description, Extention.Extention As ExtentionName,LetterData.VersionNo,
       LetterData.VersionDate   
From LetterData Inner Join  
      Extention On LetterData.extention = Extention.ExtentionID  
Where(Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID) 
GO
IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acSendAllPayvast' )
BEGIN
	INSERT INTO Actions (FormTag,ActionName,Title)
	VALUES(1,'acSendAllPayvast','«—”«· ò· ÅÌÊ”  Â«')	
END
GO
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__Secretar__1DBB5747
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__Letter_T__1EAF7B80
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__letterfo__1FA39FB9
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__FromOrgI__2097C3F2
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__ToOrgID__218BE82B
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__Classifi__22800C64
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__UrgencyI__2374309D
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__NumberOf__246854D6
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__NumberOf__255C790F
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__ReceiveT__26509D48
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__UserID__2744C181
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__LastUpda__3CDFC83C
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF_Letter_Sent
GO
ALTER TABLE dbo.Letter
	DROP CONSTRAINT DF__Letter__Finalize__4EFE7877
GO
CREATE TABLE dbo.Tmp_Letter
	(
	LetterID int NOT NULL IDENTITY (1, 1),
	IndicatorID int NOT NULL,
	MYear tinyint NOT NULL,
	SecretariatID tinyint NOT NULL,
	Letter_Type tinyint NOT NULL,
	letterformat tinyint NOT NULL,
	IncommingNO nvarchar(50) NULL,
	Incommingdate nvarchar(10) NULL,
	CenterNo nvarchar(50) NULL,
	CenterDate char(10) NULL,
	FromOrgID int NOT NULL,
	ToOrgID int NOT NULL,
	Signerid nvarchar(50) NULL,
	ClassificationID tinyint NOT NULL,
	UrgencyID smallint NOT NULL,
	Memo nvarchar(2000) NULL,
	AttachTitle nvarchar(50) NULL,
	NumberOfAttachPages smallint NULL,
	NumberOfPage int NOT NULL,
	ReceiveTypeID tinyint NOT NULL,
	UserID int NOT NULL,
	RetroactionNo nvarchar(50) NULL,
	UserMemo nvarchar(255) NULL,
	RegistrationDate char(10) NOT NULL,
	RegistrationTime varchar(5) NOT NULL,
	FollowLetterNo nvarchar(50) NULL,
	ToStaffer nvarchar(50) NULL,
	SentLetterID int NULL,
	TemplateID int NULL,
	HeaderID int NULL,
	LetterRecommites nvarchar(500) NULL,
	FromStaffer nvarchar(50) NULL,
	LastUpdate datetime NOT NULL,
	SendStatusID tinyint NOT NULL,
	UserTableID int NULL,
	Finalized bit NOT NULL,
	UserMemo1 nvarchar(255) NULL,
	UserMemo2 nvarchar(255) NULL,
	Color int NULL,
	Linked_LetterID int NULL,
	VersionDate char(10) NULL,
	VersionNumber varchar(50) NULL
	)  ON [PRIMARY]
GO
--ALTER TABLE dbo.Tmp_Letter SET (LOCK_ESCALATION = TABLE)
--GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__Secretar__1DBB5747 DEFAULT ((1)) FOR SecretariatID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__Letter_T__1EAF7B80 DEFAULT ((1)) FOR Letter_Type
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__letterfo__1FA39FB9 DEFAULT ((1)) FOR letterformat
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__FromOrgI__2097C3F2 DEFAULT ((-1)) FOR FromOrgID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__ToOrgID__218BE82B DEFAULT ((0)) FOR ToOrgID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__Classifi__22800C64 DEFAULT ((1)) FOR ClassificationID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__UrgencyI__2374309D DEFAULT ((1)) FOR UrgencyID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__NumberOf__246854D6 DEFAULT ((1)) FOR NumberOfAttachPages
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__NumberOf__255C790F DEFAULT ((1)) FOR NumberOfPage
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__ReceiveT__26509D48 DEFAULT ((1)) FOR ReceiveTypeID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__UserID__2744C181 DEFAULT ((0)) FOR UserID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__LastUpda__3CDFC83C DEFAULT (getdate()) FOR LastUpdate
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF_Letter_Sent DEFAULT ((1)) FOR SendStatusID
GO
ALTER TABLE dbo.Tmp_Letter ADD CONSTRAINT
	DF__Letter__Finalize__4EFE7877 DEFAULT ((1)) FOR Finalized
GO
SET IDENTITY_INSERT dbo.Tmp_Letter ON
GO
IF EXISTS(SELECT * FROM dbo.Letter)
	 EXEC('INSERT INTO dbo.Tmp_Letter (LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, letterformat, IncommingNO, Incommingdate, CenterNo, CenterDate, FromOrgID, ToOrgID, Signerid, ClassificationID, UrgencyID, Memo, AttachTitle, NumberOfAttachPages, NumberOfPage, ReceiveTypeID, UserID, RetroactionNo, UserMemo, RegistrationDate, RegistrationTime, FollowLetterNo, ToStaffer, SentLetterID, TemplateID, HeaderID, LetterRecommites, FromStaffer, LastUpdate, SendStatusID, UserTableID, Finalized, UserMemo1, UserMemo2, Color, Linked_LetterID, VersionDate, VersionNumber)
		SELECT LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, letterformat, IncommingNO, Incommingdate, CenterNo, CenterDate, FromOrgID, ToOrgID, Signerid, ClassificationID, UrgencyID, Memo, AttachTitle, NumberOfAttachPages, CONVERT(int, NumberOfPage), ReceiveTypeID, UserID, RetroactionNo, UserMemo, RegistrationDate, RegistrationTime, FollowLetterNo, ToStaffer, SentLetterID, TemplateID, HeaderID, LetterRecommites, FromStaffer, LastUpdate, SendStatusID, UserTableID, Finalized, UserMemo1, UserMemo2, Color, Linked_LetterID, VersionDate, VersionNumber FROM dbo.Letter WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Letter OFF
GO
DROP TABLE dbo.Letter
GO
EXECUTE sp_rename N'dbo.Tmp_Letter', N'Letter', 'OBJECT' 
GO
ALTER TABLE dbo.Letter ADD CONSTRAINT
	PK_Letter PRIMARY KEY CLUSTERED 
	(
	LetterID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX Letter_IDX_Indicator ON dbo.Letter
	(
	IndicatorID,
	MYear,
	SecretariatID,
	Letter_Type,
	letterformat
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_IndicatorID ON dbo.Letter
	(
	IndicatorID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_Letter_Type ON dbo.Letter
	(
	Letter_Type
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_letterformat ON dbo.Letter
	(
	letterformat
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_IncommingNO ON dbo.Letter
	(
	IncommingNO
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_FromOrgID ON dbo.Letter
	(
	FromOrgID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_ToOrgID ON dbo.Letter
	(
	ToOrgID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_Signerid ON dbo.Letter
	(
	Signerid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_ClassificationID ON dbo.Letter
	(
	ClassificationID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_UrgencyID ON dbo.Letter
	(
	UrgencyID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_UserID ON dbo.Letter
	(
	UserID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_MYear ON dbo.Letter
	(
	MYear
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_RegistrationDate ON dbo.Letter
	(
	RegistrationDate
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Letter_SecretariatID ON dbo.Letter
	(
	SecretariatID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT
GO

[Num]=20
----------------Ver_4.0.0.8
IF NOT EXISTS(SELECT * FROM sysobjects WHERE NAME='UserMemo' AND xtype='U')
BEGIN
	CREATE TABLE [dbo].[UserMemo](
		[ID] [int] IDENTITY(1,1) NOT NULL,
		[UserMemo] [varchar](255) NULL,
	 CONSTRAINT [PK_UserMemo] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	) ON [PRIMARY] 
	) ON [PRIMARY]
	
	INSERT INTO UserMemo(UserMemo)
	SELECT DISTINCT LTRIM(RTRIM(UserMemo)) FROM Letter WHERE LTRIM(RTRIM(UserMemo))<>''		
END
GO
IF NOT EXISTS(SELECT * FROM sysobjects WHERE NAME='UserMemo1' AND xtype='U')
BEGIN
	CREATE TABLE [dbo].[UserMemo1](
		[ID] [int] IDENTITY(1,1) NOT NULL,
		[UserMemo1] [varchar](255) NULL,
	 CONSTRAINT [PK_UserMemo1] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	) ON [PRIMARY] 
	) ON [PRIMARY]
	INSERT INTO UserMemo1(UserMemo1)
	SELECT DISTINCT LTRIM(RTRIM(UserMemo1)) FROM Letter	WHERE LTRIM(RTRIM(UserMemo1))<>''
END
GO
IF NOT EXISTS(SELECT * FROM sysobjects WHERE NAME='UserMemo2' AND xtype='U')
BEGIN
	CREATE TABLE [dbo].[UserMemo2](
		[ID] [int] IDENTITY(1,1) NOT NULL,
		[UserMemo2] [varchar](255) NULL,
	 CONSTRAINT [PK_UserMemo2] PRIMARY KEY CLUSTERED 
	(
		[ID] ASC
	) ON [PRIMARY] 
	) ON [PRIMARY]
	INSERT INTO UserMemo2(UserMemo2)
	SELECT DISTINCT LTRIM(RTRIM(UserMemo2)) FROM Letter WHERE LTRIM(RTRIM(UserMemo2))<>'' 		
END
GO
IF NOT EXISTS( SELECT * FROM Actions WHERE ActionName='acFillUserMemo')
BEGIN
	INSERT INTO Actions
	(
		FormTag,
		ActionName,
		Title
	)
	VALUES
	(
		1,
		'acFillUserMemo',
		'›—„  ⁄—Ì› „ﬁ«œÌ— ›Ì·œÂ«/„‘Œ’«  «Œ Ì«—Ì'
	)	
END
GO
------------------ ----------------------------------------------------------------------------

------------------ ----------------------------------------------------------------------------
[Num]=21
------------------ ----------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME='SecID' AND TABLE_NAME='UserAccArchive')
	ALTER TABLE UserAccArchive ADD SecID INT
GO

Alter Procedure [dbo].[Sp_Sel_UserAccArchive] @userID int  , @ArchiveCenterID INT, @SecID INT   
As      
BEGIN
	Select *      
	From UserAccArchive      
	Where(UserID = @userID)      
	And(ArchiveCenterID = @ArchiveCenterID)
	AND(SecID = @SecID)	
END      
GO
------------------ ----------------------------------------------------------------------------

------------------ ----------------------------------------------------------------------------
[Num]=22
IF OBJECT_ID('sp_GetDispatchedRecommites') IS NOT NULL
	DROP PROC sp_GetDispatchedRecommites
GO

CREATE PROC sp_GetDispatchedRecommites(@OrgID int)
AS
BEGIN
	SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph
	  FROM recommites R
	INNER JOIN letter l ON l.LetterID=r.LetterID
	WHERE	r.OrgID= @OrgID
END
GO
-----------------------------------------------------------------------------------------------
[Num]=23
ALTER Procedure [dbo].[Sp_SetAccessToArchiveFolder] @ArchiveFolderID INT
As   
/*»—«Ì  „«„Ì ﬂ«—»—«‰ UserAccArchive œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ ÃœÌœ œ— ÃœÊ·*/   
Declare @UserID int    
Declare @ArchiveCenterID int
Select @ArchiveCenterID = ArchiveCenterID From ArchiveFolder Where FolderID = @ArchiveFolderID     

Declare Cu_Users Cursor For    
Select ID from Users    
    
Open Cu_Users     
Fetch Next From Cu_Users Into @UserID    
While @@FETCH_STATUS = 0    
begin    

declare @SecID int

SELECT @SecID = DefualtSecretariatID FROM users WHERE Id = @UserID
     
Insert Into UserAccArchive(UserID, ArchiveCenterID, ArchiveFolderID, ISAccess, SecID)     
Values(@UserID,@ArchiveCenterID,@ArchiveFolderID,1, @SecID)
/*Select @UserID , AF.ArchiveCenterID , AF.FolderID , 1       
From Secretariats Se , ArchiveCenter AC , ArchiveFolder AF    
Where(AF.FolderID = @ArchiveFolderID)    
And(Se.ArchiveCenterID = AC.ArchiveCenterID)    
And(AC.ArchiveCenterID = AF.ArchiveCenterID)    */
    
Fetch Next From Cu_Users Into @UserID    
end    
Close Cu_Users    
Deallocate Cu_Users
GO
-------------------------------------------------------------------------------------------------
[Num]=24
-------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[Get_ArchiveFolder_ByArchiveCenterID] @ArchiveCenterID int , @userID int, @SecID int        
AS              
SELECT distinct AF.*          
FROM ArchiveFolder AF , UserAccArchive UAA       
Where (UAA.UserID = @userID)             
And(UAA.ArchiveCenterID = @ArchiveCenterID)        
And(UAA.IsAccess = 1)        
And(UAA.ArchiveFolderID = AF.FolderID)
AND(UAA.SecID= @SecID)
go
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
ALTER PROCEDURE [dbo].[Get_All_Letter]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,@UsersID int         
as               
declare @today char(10)              
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)              
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,               
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,               
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,               
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,              
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,              
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,              
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
Letter.Color , Letter.ReceiveTypeID        
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/              
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate    
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)    
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/    
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm  
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type               
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

---Ranjbar ID=21
--> ﬂ«—»— ‰»«Ìœ ”‰œÂ«ÌÌ —« ﬂÂ œ— “Ê‰ﬂ‰ Â«Ì €Ì— ﬁ«»· œ” —”Ì ﬁ—«— œ«—‰œ —« „‘«ÂœÂ ﬂ‰œ 
if (@archiveFolderID = -1)or(@MYear=0)   --> ‰„«Ì‘  „«„Ì ”‰œÂ« ° Õ Ì »«Ìê«‰Ì ‘œÂ Â«
BEGIN
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --œ” —”Ì ‰œ«—œ
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) ' +
                       'AND(l.LetterID NOT IN(SELECT l1.LetterID FROM Letter l1 
								INNER JOIN LetterArchiveFolder laf1 ON l1.LetterID = laf1.LetterID
								INNER JOIN UserAccArchive uaa1 ON uaa1.ArchiveFolderID = laf1.ArchiveFolderID AND uaa1.UserID = l1.UserID
							WHERE l1.UserID = ' + Cast(@UsersID as nvarchar(10)) + '
								AND ((uaa1.SecID = ' + Cast(@Secretariatid as nvarchar(10)) + ')or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
								AND (L1.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )
								AND uaa1.ISAccess = 1)))'                   	
END
                      

---
                               
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '              
                    
--Print @sqlCommand
Exec sp_executesql @sqlCommand
go
-----------------------
[Num]=25
-----------------------
IF NOT EXISTS(SELECT * FROM Actions WHERE FormTag= 1 AND ActionName = 'DataSetDelete')
BEGIN
	INSERT INTO Actions(FormTag,ActionName,Title)
		VALUES(	1,	'DataSetDelete', 'Õ–› ”‰œ')
	
	DECLARE c CURSOR FOR SELECT ID FROM Accesses
	DECLARE @AccessID INT
	
	OPEN c
	FETCH NEXT FROM c INTO @AccessID
	WHILE @@FETCH_STATUS = 0
	BEGIN	
		INSERT INTO ActionsAccess(AccessID,ActionName,FormTag,HasAccess)
			VALUES(@AccessID,'DataSetDelete',	1,	1)
		FETCH NEXT FROM c INTO @AccessID	
	END
	CLOSE c
	DEALLOCATE c
END
go
---------------------------------------------
[Num]=26
---------------------------------------------
ALTER TABLE Users ALTER COLUMN PASSWORD NVARCHAR(100)
go

---------------------------------------------
[Num]=27
---------------------------------------------

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(9,'SetImageColor','«‰ ’«» —‰ê »Â  ’ÊÌ—')

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(9,'RemoveImageColor','Õ–› —‰ê  ’ÊÌ—')


INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(1,'SetLetterColor','«Œ ’«’ —‰ê »Â ”‰œ')

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(1,'ChangeLetterColor',' €ÌÌ— —‰ê ”‰œ')

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(1,'RemoveLetterColor','Õ–› —‰ê ”‰œ')

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(7,'EditPicture','ÊÌ—«Ì‘  ’ÊÌ—')

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(7,'DeleteOnePicture','Õ–› Ìò  ’ÊÌ—')

INSERT INTO Actions(FormTag, ActionName, Title)
VALUES(7,'DeleteAllPictures','Õ–›  „«„  ’«ÊÌ—')

go
------------------------------------------------
ALTER PROCEDURE [ysp_shrink]
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
-----------------------------------------------------------------
go
------------------------------------------
[Num]=28
------------------------------------------
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='Attachtitle')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('Attachtitle',	1,	'ÅÌÊ” '	,1,	1,	1,	1,	1,	0,	NULL,	1,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='ClassificatioTitle')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES	
	('ClassificatioTitle',	1,	'ÿ»ﬁÂ »‰œÌ'	,1,	1,	1,	1,	1,	0,	NULL,	5,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='Field')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('Field',	2,	'“„Ì‰Â',	1,	1,	1,	0,	1,	0,	NULL,	5,	NULL,	NULL,	1)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='FormatTitle')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('FormatTitle',	1,	'‰Ê⁄ ”‰œ'	,1,	1,	1,	1,	1,	0,	NULL,	1,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='Incommingdate')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('Incommingdate',	1,	' «—ÌŒ ”‰œ'	,1,	1,	1,	1,	1,	0,	NULL,	4,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='IncommingNO')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('IncommingNO',	1,	'‘„«—Â Ê«—œÂ'	,1,	1,	1,	1,	1,	0,	NULL,	5,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='IndicatorID')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('IndicatorID',	1,	'‘„«—Â ”‰œ'	,1,	1,	1,	1,	1,	0,	NULL,	3,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='Memo')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('Memo',	1,	'Œ·«’Â ”‰œ'	,1,	1,	1,	1,	1,	0,	NULL,	1,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='MYear')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('MYear',	1,	'”«·'	,1,	1,	1,	1,	1,	0,	NULL,	3,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='NumberOfPage')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('NumberOfPage',	1,	' ⁄œ«œ ’›ÕÂ' 	,1,	1,	1,	1,	1,	0,	NULL,	5,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='RegistrationDate')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('RegistrationDate',	1,	' «—ÌŒ À» '	,1,	1,	1,	1,	1,	0,	NULL,	1,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='RegistrationTime')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('RegistrationTime',	1,	'“„«‰ À» ' 	,1,	1,	1,	1,	1,	0,	NULL,	1,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='TemplateTitle')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('TemplateTitle',	1,	'ﬁ«·» ”‰œ'	,1,	1,	1,	1,	1,	0,	NULL,	5,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='ToOrgTitle')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('ToOrgTitle',	1,	'êÌ—‰œÂ'	,1,	1,	1,	1,	1,	0, NULL,	6,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='UserMemo')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('UserMemo',	1,	' Ê÷ÌÕ«  ﬂ«—»—'	,1,	1,	1,	1,	1,	0,	NULL,	3,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='UserTitle')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('UserTitle',	1,	'‰«„ ò«—»—'	,1,	1,	1,	1,	1,	0,	NULL,	4,	NULL,	NULL,	NULL)
	
	
IF NOT EXISTS(SELECT * FROM Fields WHERE FieldName='IncommingMiladiDate_Calc')
	INSERT INTO Fields([FieldName],[TableID],[Description],[IsWhere],[ISString],[IsLike],[EveryLike],[VisibleInGrid],
						[isblob],[FieldGroupID],[FieldTypeID],[ReferenceTableID],[isboolean],[order]) VALUES
	('IncommingMiladiDate_Calc',	1,	' «—ÌŒ ”‰œ »Â „Ì·«œÌ'	,1,	1,	1,	0,	1,	0,	NULL,	1,	NULL,	NULL,	1)


IF NOT EXISTS(SELECT * FROM [Tables] WHERE TableName='Letter')
	INSERT INTO [Tables]([TableID],[TableName],[Description],[TableType]) VALUES
	(1,'Letter','ÃœÊ· «’·Ì',3)
GO
-------------------------------------------------------------------------------
[Num]=29
-------------------------------------------------------------------------------


ALTER PROCEDURE [dbo].[UserChange_pass] (@userID int,@newPass nvarchar(100) )
AS

 
update users
set password=@newPass
where id=@userid 

GO

-------------------------------------------------------------------------------
[Num]=30
-------------------------------------------------------------------------------
DELETE FROM LetterFormats WHERE Code = 2
GO

UPDATE LetterFormats
SET
	Title = '„⁄„Ê·Ì' 
WHERE 
	Code = 1
GO
------------------------------------------------------------------------------
-------------------------------------------------------------------------------
[Num]=31
-------------------------------------------------------------------------------
UPDATE sys_AppMessage SET FarsiMessage = replace(FarsiMessage, '‰«„Â' , '”‰œ')
GO
------------------------------------------------------------------------------
-------------------------------------------------------------------------------
[Num]=32
-------------------------------------------------------------------------------

UPDATE ListItems
SET
	Title = REPLACE(Title, ' ‰«„Â', '')
GO

DELETE FROM ListItems WHERE Title LIKE'%„ò« »Â%'
GO
------------------------------------------------------------------------------
[Num]=33
------------------------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE name = 'sp_SearchArchive')
	DROP PROCEDURE [dbo].[sp_SearchArchive]
GO

CREATE PROCEDURE [dbo].[sp_SearchArchive]
		@TOP int = 100, @MYEAR int = 0, @SecID int = 0, @INDICATORID int = 0, @INCOMMINGNO nvarchar(50) = '', 
		@FROMDATE nvarchar(10) = '', @TODATE nvarchar(10) = '', @MEMO nvarchar(500) = '', 
		@USERFIELD1 nvarchar(500) = '', @USERFIELD2 nvarchar(500) = '', @USERFIELD3 nvarchar(500) = ''
AS
SELECT  TOP (@TOP) Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID, 
		Letter.IncommingNO, Letter.FromOrgID, Letter.IncommingDate, Letter.ToOrgID, Letter.Memo, 
		Letter.RegistrationDate, sender.Title AS SenderTitle, Deliver.Title AS DeliverTitle,
		dbo.InnerNo(Letter.LetterID) AS InnerNo, Users.Title AS UserTitle, 
		Letter.UserMemo, Letter.UserMemo1, Letter.UserMemo2  
FROM	Letter               
		LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID            
		LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
		LEFT JOIN sendstatus ON sendstatus.sendstatusID=Letter.sendstatusID  
		INNER JOIN users ON Users.ID = Letter.UserID
WHERE   LetterFormat = 1 
		AND (MYear = @MYEAR OR @MYEAR = 0 OR @MYEAR IS NULL)
		AND (SecretariatID = @SecID OR @SecID = 0 OR @SecID IS NULL)
		AND (IndicatorID = @INDICATORID OR @INDICATORID = 0 OR @INDICATORID IS NULL)
		AND (IncommingNO like '%'+@INCOMMINGNO+'%' OR @INCOMMINGNO = '' OR @INCOMMINGNO IS NULL)
		AND (IndicatorID = @INDICATORID OR @INDICATORID = 0 OR @INDICATORID IS NULL)
		AND ((Incommingdate >= @FROMDATE)OR(RegistrationDate >= @FROMDATE)OR(LTRIM(@FROMDATE) = '')OR(@FROMDATE IS NULL))
		AND ((Incommingdate <= @TODATE)OR(RegistrationDate <= @TODATE)OR(LTRIM(@TODATE) = '')OR(@TODATE IS NULL))
		AND (Memo like '%'+@MEMO+'%' OR @MEMO = '' OR @MEMO IS NULL)
		AND (UserMemo like '%'+@USERFIELD1+'%' OR @USERFIELD1 = '' OR @USERFIELD1 IS NULL)
		AND (UserMemo1 like '%'+@USERFIELD2+'%' OR @USERFIELD2 = '' OR @USERFIELD2 IS NULL)
		AND (UserMemo2 like '%'+@USERFIELD3+'%' OR @USERFIELD3 = '' OR @USERFIELD3 IS NULL)
GO	

IF NOT EXISTS(SELECT * FROM sysobjects WHERE name = 'AutomationRelation')
	CREATE TABLE [dbo].[AutomationRelation](
		[DabirLetterID] int NOT NULL,
		[DabirIndicatorID] int NOT NULL,
		[DabirMyear] tinyint NOT NULL,
		[DabirKhanehName] nvarchar(100) NOT NULL,
		[ArchiveID] int NOT NULL,
		[isDocument] bit NOT NULL
	) ON [PRIMARY]
GO
	


ALTER proc [dbo].[Get_LetterData_by_LetterDataID](@LetterDataID int )
as
SELECT     LetterDataID, Image, LetterData.VersionNo, LetterData.VersionDate
FROM        LetterData
WHERE     (LetterDataID = @LetterDataID)
GO
------------------------------------------------------------------------------
------------------------------------------------------------------------------
[Num]=34
------------------------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE name = 'AutomationView')
	DROP VIEW [dbo].[AutomationView]
GO
CREATE VIEW [dbo].[AutomationView]
AS
SELECT    
	DocPart =  CASE WHEN isDocument = 1 THEN 'ò· ”‰œ ' ELSE
                          (SELECT     'ÅÌÊ” '+' '+CONVERT(NVARCHAR(10),PageNumber)+' ('+extention.ExtentionTitle+')'
                             FROM         LetterData INNER JOIN Extention ON Extention.ExtentionID = LetterData.extention
                             WHERE     LetterData.LetterDataID = AutomationRelation.ArchiveID 
                          ) END,
	DabirIndicatorID, 
	DabirMyear, 
	DabirKhanehName, 
	isDocument, 
	ArchiveID, 
	ArchiveLetterID = CASE WHEN isDocument = 1 THEN ArchiveID ELSE
                          (SELECT     LetterID
                             FROM         LetterData
                             WHERE     LetterData.LetterDataID = AutomationRelation.ArchiveID) END 
FROM         dbo.AutomationRelation

GO

IF EXISTS(SELECT * FROM sysobjects WHERE NAME = 'sp_AutomationLetters_by_ArchiveLetterID')
	DROP PROCEDURE sp_AutomationLetters_by_ArchiveLetterID
GO

CREATE PROCEDURE sp_AutomationLetters_by_ArchiveLetterID
@ArchiveLetterId INT
AS
	SELECT * FROM Automationview
	WHERE ArchiveLetterID = @ArchiveLetterId
GO

-------------------------------------------------------------------------------
[Num]=35
-------------------------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects WHERE NAME= 'Insert_Letter_From_Dabir')
	DROP PROCEDURE dbo.[Insert_Letter_From_Dabir]
GO

CREATE PROCEDURE dbo.[Insert_Letter_From_Dabir] 
	 @INNO NVARCHAR(50),
	 @IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @ExtenTionType NVARCHAR(5),
	 @ExtenTionDesc NVARCHAR(100),
	 @DataDesc NVARCHAR(50),
	 @out_LetterDataID INT OUT
AS
-----------------------------------------------------------------------------------------------------------
DECLARE @LetterID INT , @extID INT
----------------------------------------------------------------------------------------------------------- 
IF NOT EXISTS(SELECT * FROM Users WHERE Title = 'ò«—»— œ»Ì—Œ«‰Â')
BEGIN
	INSERT INTO users(Title,UserName,DefualtSecretariatID,HasSecureLetterAccess)
		VALUES('ò«—»— œ»Ì—Œ«‰Â','ò«—»— œ»Ì—Œ«‰Â',1,1)
END 
-----------------------------------------------------------------------------------------------------------
SELECT @userID=id FROM Users 
WHERE Title = 'ò«—»— œ»Ì—Œ«‰Â'
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Extention WHERE Extention = @ExtenTionType)
BEGIN
	INSERT INTO Extention(Extention,ExtentionTitle,IsSystem)
		VALUES(@ExtenTionType,@ExtenTionDesc,0)
END
-----------------------------------------------------------------------------------------------------------
SELECT @extID = ExtentionID FROM Extention WHERE Extention = @ExtenTionType
-----------------------------------------------------------------------------------------------------------
select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @MYear and SecretariatID = @SecretariatID
-----------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT LetterID FROM Letter WHERE IncommingNO = @INNO)
BEGIN
	INSERT INTO [dbo].[Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [Memo],
	 [UserID],
	 [RegistrationDate],
	 [RegistrationTime],
	 [IncommingNO]) 
 
VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @Memo,
	 @UserID,
	 @RegistrationDate,
	 @RegistrationTime,
	 @INNO)
END 
-----------------------------------------------------------------------------------------------------------
SELECT @LetterID =LetterID FROM Letter WHERE IncommingNO = @INNO
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
INSERT INTO LetterData(LetterID,extention,PageNumber,[Description],LastUpdate)
	VALUES(@LetterID,@extID,(SELECT MAX(PageNumber)FROM LetterData WHERE LetterID = @LetterID),@DataDesc,GETDATE())
SET @out_LetterDataID =@@identity
-----------------------------------------------------------------------------------------------------------

GO

ALTER procedure [dbo].[get_UserExtention_by_UserID] (@userID int )
as

SELECT UserExtention.*
FROM   UserExtention
WHERE (UserId = 3)
      and extentionid in (SELECT ExtentionID FROM Extention WHERE IsSystem = 0)
UNION ALL
SELECT 0,3,Extention.ExtentionID,''
FROM Extention WHERE ExtentionID NOT IN (SELECT Extention.ExtentionID 
FROM Extention  LEFT  outer JOIN UserExtention ON UserExtention.ExtentionID = Extention.ExtentionID 
WHERE (UserId = 3))
GO
-------------------------------------------------------------------------------------------------------
[Num]=36
-------------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_SearchArchive]
		@TOP int = 100, @MYEAR int = 0, @SecID int = 0, @INDICATORID int = 0, @INCOMMINGNO nvarchar(50) = '', 
		@FROMDATE nvarchar(10) = '', @TODATE nvarchar(10) = '', @MEMO nvarchar(500) = '', 
		@USERFIELD1 nvarchar(500) = '', @USERFIELD2 nvarchar(500) = '', @USERFIELD3 nvarchar(500) = '', @ArchiveUserID INT = 0
AS
SELECT  TOP (@TOP) Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID, 
		Letter.IncommingNO, Letter.FromOrgID, Letter.IncommingDate, Letter.ToOrgID, Letter.Memo, 
		Letter.RegistrationDate, sender.Title AS SenderTitle, Deliver.Title AS DeliverTitle,
		dbo.InnerNo(Letter.LetterID) AS InnerNo, Users.Title AS UserTitle, 
		Letter.UserMemo, Letter.UserMemo1, Letter.UserMemo2  
FROM	Letter               
		LEFT JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID            
		LEFT JOIN FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
		LEFT JOIN sendstatus ON sendstatus.sendstatusID=Letter.sendstatusID  
		INNER JOIN users ON Users.ID = Letter.UserID
WHERE   LetterFormat = 1 
		AND (MYear = @MYEAR OR @MYEAR = 0 OR @MYEAR IS NULL)
		AND (SecretariatID IN(select secid from UserSecretariats where userid=@ArchiveUserID))
		AND (IndicatorID = @INDICATORID OR @INDICATORID = 0 OR @INDICATORID IS NULL)
		AND (IncommingNO like '%'+@INCOMMINGNO+'%' OR @INCOMMINGNO = '' OR @INCOMMINGNO IS NULL)
		AND (IndicatorID = @INDICATORID OR @INDICATORID = 0 OR @INDICATORID IS NULL)
		AND ((Incommingdate >= @FROMDATE)OR(RegistrationDate >= @FROMDATE)OR(LTRIM(@FROMDATE) = '')OR(@FROMDATE IS NULL))
		AND ((Incommingdate <= @TODATE)OR(RegistrationDate <= @TODATE)OR(LTRIM(@TODATE) = '')OR(@TODATE IS NULL))
		AND (Memo like '%'+@MEMO+'%' OR @MEMO = '' OR @MEMO IS NULL)
		AND (UserMemo like '%'+@USERFIELD1+'%' OR @USERFIELD1 = '' OR @USERFIELD1 IS NULL)
		AND (UserMemo1 like '%'+@USERFIELD2+'%' OR @USERFIELD2 = '' OR @USERFIELD2 IS NULL)
		AND (UserMemo2 like '%'+@USERFIELD3+'%' OR @USERFIELD3 = '' OR @USERFIELD3 IS NULL)
GO

-----------------------------------------------------------------------
[Num]=37
-----------------------------------------------------------------------
if not exists(select * from sysobjects where name='LetterDataText')
begin
CREATE TABLE [dbo].[LetterDataText](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[letterDataID] [int] NOT NULL,
	[textPart] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_LetterDataText] PRIMARY KEY CLUSTERED 
(
	[LetterDataID] ASC
)
) ON [PRIMARY] 

end
GO

---------------------------------------------------------------------------------
if exists(select * from sysobjects where name='insert_LetterDataText')
DROP PROCEDURE [dbo].[insert_LetterDataText]
GO
CREATE PROCEDURE [dbo].[insert_LetterDataText]
	(@LetterDataID int,
	 @TextPart   	NVARCHAR(450))
AS 
	INSERT INTO [dbo].[LetterDataText]( [LetterDataID], [textPart])
		VALUES 	( @LetterDataID, @textPart  )
GO
------------------------------------------------------------------------------------------------------------------
if exists(select * from sysobjects where name='letterDataTextSearch')
DROP PROCEDURE [dbo].[letterDataTextSearch]
GO
------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
Create PROCEDURE [dbo].[letterDataTextSearch]
 @secID tinyint,@where nvarchar(500)
AS

declare @sqlCommand nvarchar(4000)
DECLARE @Where2 NVARCHAR(500)
DECLARE @Where3 NVARCHAR(500)

set @where=ltrim(rtrim(isnull(@where,'')))
SET @where2=REPLACE(@where,nchar(1610),nchar(1740))
SET @where3=REPLACE(@where,nchar(1740),nchar(1610))
 set  @sqlcommand='SELECT    distinct Letter.LetterID, LetterData.LetterDataID ,Letter_type, indicatorid, RegistrationDate, 
Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Title AS ToTitle
FROM         LetterDataText 
inner join   LetterData on LetterDataText.LetterdataID = LetterData.LetterDataID
INNER JOIN   Letter on letter.letterid=LetterData.letterid
INNER JOIN     FromOrganizations ON FromOrgID = FromOrganizations.ID
INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrganizations.ID  where (Letter.SecretariatID='+cast(@secId as varchar(3)) +' or '+cast
(@SeCID as varchar(3))+' = 0)'

if @where<>'' set @sqlcommand=@sqlcommand+' and ('+@where+' or '+@Where2+' or '+@Where3+')'
exec sp_executesql @sqlcommand
GO

ALTER proc [dbo].[delete_LetterData] (@LetterDataID int )
as
delete       LetterData WHERE     (LetterDataID = @LetterDataID)
delete       LetterDataText WHERE     (LetterDataID = @LetterDataID)
GO

if exists(select * from sysobjects where name='YTrim')
DROP FUNCTION [dbo].[YTrim]
GO

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
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[insert_LetterDataText]
	(@LetterDataID int,
	 @FileTypeID INT,
	 @FileText   	ntext)
AS 
	DECLARE @textPart NVARCHAR(450)
	DELETE FROM LetterDataText WHERE letterDataID = @LetterDataID  
	WHILE DATALENGTH(@FileText)>0
	BEGIN
		SET @textPart = SUBSTRING(@FileText,0,450)
		SET @textPart = REVERSE(RIGHT(REVERSE (@textPart), len(@textPart) - NULLIF(charindex(' ', REVERSE(@textPart)),0)))
		SET @FileText = SUBSTRING(@FileText,LEN(@textPart),DATALENGTH(@FileText)/2-LEN(@textPart))
		SET @textPart = dbo.YTrim(@textPart)
		INSERT INTO [dbo].[LetterDataText]( [LetterDataID], [textPart])
			VALUES 	( @LetterDataID, @textPart  )
	END
GO
------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[letterDataTextSearch]
 @secID tinyint,@where nvarchar(500)
AS

declare @sqlCommand nvarchar(4000)

set @where=ltrim(rtrim(isnull(@where,'')))

 set  @sqlcommand='SELECT    distinct Letter.LetterID, LetterData.LetterDataID ,Letter_type, indicatorid, RegistrationDate, 
Memo
FROM         LetterDataText 
inner join   LetterData on LetterDataText.LetterdataID = LetterData.LetterDataID
INNER JOIN   Letter on letter.letterid=LetterData.letterid
where (Letter.SecretariatID='+cast(@secId as varchar(3)) +' or '+cast
(@SeCID as varchar(3))+' = 0)'

if @where<>'' set @sqlcommand=@sqlcommand+' and ('+@where+')'
exec sp_executesql @sqlcommand
GO
------------------------------------------------------------------------------------
[Num]=38
------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[insert_LetterDataText]
	(@LetterDataID int,
	 @FileText   	ntext)
AS 
	DECLARE @textPart NVARCHAR(450)
	DELETE FROM LetterDataText WHERE letterDataID = @LetterDataID  
	WHILE DATALENGTH(@FileText)>0
	BEGIN
		SET @textPart = SUBSTRING(@FileText,0,450)
		SET @textPart = REVERSE(RIGHT(REVERSE (@textPart), len(@textPart) - NULLIF(charindex(' ', REVERSE(@textPart)),0)))
		SET @FileText = SUBSTRING(@FileText,LEN(@textPart),DATALENGTH(@FileText)/2-LEN(@textPart))
		SET @textPart = dbo.YTrim(@textPart)
		INSERT INTO [dbo].[LetterDataText]( [LetterDataID], [textPart])
			VALUES 	( @LetterDataID, @textPart  )
	END
GO
-------------------------------------------------------------------------------------------------
[Num]=39
-------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[Insert_Letter_From_Dabir] 
	 @INNO NVARCHAR(50),
	 @IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @ExtenTionType NVARCHAR(5),
	 @ExtenTionDesc NVARCHAR(100),
	 @DataDesc NVARCHAR(50),
	 @out_LetterDataID INT OUT
AS
-----------------------------------------------------------------------------------------------------------
DECLARE @LetterID INT , @extID INT
----------------------------------------------------------------------------------------------------------- 
IF NOT EXISTS(SELECT * FROM Users WHERE Title = 'ò«—»— œ»Ì—Œ«‰Â')
BEGIN
	INSERT INTO users(Title,UserName,DefualtSecretariatID,HasSecureLetterAccess)
		VALUES('ò«—»— œ»Ì—Œ«‰Â','ò«—»— œ»Ì—Œ«‰Â',1,1)
END 
-----------------------------------------------------------------------------------------------------------
SELECT @userID=id FROM Users 
WHERE Title = 'ò«—»— œ»Ì—Œ«‰Â'
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM Extention WHERE Extention = @ExtenTionType)
BEGIN
	INSERT INTO Extention(Extention,ExtentionTitle,IsSystem)
		VALUES(@ExtenTionType,@ExtenTionDesc,0)
END
-----------------------------------------------------------------------------------------------------------
SELECT @extID = ExtentionID FROM Extention WHERE Extention = @ExtenTionType
-----------------------------------------------------------------------------------------------------------
select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @MYear and SecretariatID = @SecretariatID
-----------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT LetterID FROM Letter WHERE IncommingNO = @INNO)
BEGIN
	INSERT INTO [dbo].[Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [Memo],
	 [UserID],
	 [Incommingdate],
	 [RegistrationDate],
	 [RegistrationTime],
	 [IncommingNO]) 
 
VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @Memo,
	 @UserID,
	 @RegistrationDate,
	 @RegistrationDate,
	 @RegistrationTime,
	 @INNO)
END 
-----------------------------------------------------------------------------------------------------------
SELECT @LetterID =LetterID FROM Letter WHERE IncommingNO = @INNO
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
INSERT INTO LetterData(LetterID,extention,PageNumber,[Description],LastUpdate)
	VALUES(@LetterID,@extID,(SELECT MAX(PageNumber)FROM LetterData WHERE LetterID = @LetterID),@DataDesc,GETDATE())
SET @out_LetterDataID =@@identity
-----------------------------------------------------------------------------------------------------------
GO

-----------------------------------------------------------------------------------------------------------
[Num]=40
-----------------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[letterContainText]
 @secID tinyint,@where nvarchar(500)
AS
SELECT    distinct Letter.LetterID, indicatorid, RegistrationDate, 
Memo
FROM         LetterText 
INNER JOIN   Letter on letter.letterid=LetterText.letterid
where (Letter.SecretariatID=cast(@secId as varchar(3))  or cast(@SeCID as varchar(3)) = 0)
AND (replace(CONVERT(nvarchar(Max),TypeText),nchar(1740),nchar(1610)) LIKE '%'+@where+'%')
GO
-----------------------------------------------------------------------------------------------------------
[Num]=41
-----------------------------------------------------------------------------------------------------------
ALTER procedure [dbo].[Get_FieldValues_by_LetterID]
@LetterID int
as
SELECT  *,(select [order] from  Fields where ID = LetterFieldValue.FieldID) [order],
(select [Description] from  Fields where ID = LetterFieldValue.FieldID) [Description],
(select FieldTypeID from  Fields where ID = LetterFieldValue.FieldID) FieldTypeID,
(select ReferenceTableID from  Fields where ID = LetterFieldValue.FieldID) ReferenceTableID
FROM         LetterFieldValue 
WHERE    LetterFieldValue.letterid=@LetterID
ORDER BY [order]
GO
-----------------------------------------------------------------------------------------------------------
[Num]=42
-----------------------------------------------------------------------------------------------------------
ALTER PROC [dbo].[sp_GetDispatchedRecommites](@OrgID INT, @FromMe BIT , @ForMe BIT)
AS
BEGIN
	DECLARE @userID INT
	SELECT @userID = ID  FROM Users WHERE FromOrgID = @OrgID
	SET @userID = ISNULL(@userID, 0)
	SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph,
		r.OrgID, r.UserID, usender.title + ' - ' + foSender.title + '  ' + foSender.ResponsibleStaffer  as SenderDesc
		, uReceiver.title + ' - ' + foReceiver.title + '  ' + foReceiver.ResponsibleStaffer  as ReceiverDesc
	  , (CASE WHEN r.OrgID = @OrgID THEN ISNULL(usender.title,'') + ' - ' + ISNULL(foSender.title,'') + '  ' + ISNULL(foSender.ResponsibleStaffer,'')
				ELSE ISNULL(uReceiver.title,'') + ' - ' + ISNULL(foReceiver.title,'') + '  ' + ISNULL(foReceiver.ResponsibleStaffer,'') end) AS TarafErja
	FROM recommites R
	INNER JOIN letter AS  l ON l.LetterID=r.LetterID
	left JOIN users as uSender ON r.UserID = usender.Id
	left JOIN FromOrganizations AS  foSender ON usender.FromOrgID = foSender.ID
	left JOIN FromOrganizations as foReceiver ON r.OrgID = foReceiver.ID
	left JOIN users as uReceiver  ON foReceiver.ID = uReceiver.FromOrgID
	WHERE	(r.OrgID= @OrgID AND @ForMe = 1) OR (r.UserID = @UserID AND @FromMe = 1)
END
GO
-----------------------------------------------------------------------------------------------------------
[Num]=43
-----------------------------------------------------------------------------------------------------------
ALTER PROC [dbo].[sp_GetDispatchedRecommites](@OrgID INT, @FromMe BIT , @ForMe BIT)
AS
BEGIN
	DECLARE @userID INT
	SELECT @userID = ID  FROM Users WHERE FromOrgID = @OrgID
	SET @userID = ISNULL(@userID, 0)
	SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph,
		r.OrgID, r.UserID, usender.title + ' - ' + foSender.title + '  ' + foSender.ResponsibleStaffer  as SenderDesc
		, uReceiver.title + ' - ' + foReceiver.title + '  ' + foReceiver.ResponsibleStaffer  as ReceiverDesc
	  , (CASE WHEN r.OrgID = @OrgID THEN ISNULL(usender.title,'') + ' - ' + ISNULL(foSender.title,'') + '  ' + ISNULL(foSender.ResponsibleStaffer,'')
				ELSE ISNULL(uReceiver.title,'') + ' - ' + ISNULL(foReceiver.title,'') + '  ' + ISNULL(foReceiver.ResponsibleStaffer,'') end) AS TarafErja
	,l.UserMemo customField1,l.UserMemo1 customField2,l.UserMemo2 customField3,uSender.Title senderTitle, uReceiver.Title receiverTitle,r.RecommiteDate
	FROM recommites R
	INNER JOIN letter AS  l ON l.LetterID=r.LetterID
	left JOIN users as uSender ON r.UserID = usender.Id
	left JOIN FromOrganizations AS  foSender ON usender.FromOrgID = foSender.ID
	left JOIN FromOrganizations as foReceiver ON r.OrgID = foReceiver.ID
	left JOIN users as uReceiver  ON foReceiver.ID = uReceiver.FromOrgID
	WHERE	(r.OrgID= @OrgID AND @ForMe = 1) OR (r.UserID = @UserID AND @FromMe = 1)
END
GO
-----------------------------------------------------------------------------------------------------------
[Num]=44
-----------------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[Report_UserLog]
@Secretariatid int,
@myear tinyint,
@where nvarchar(2000),
@topCnt int=1000
as 
declare @sqlCommand nvarchar(4000)
set @sqlCommand = 'SELECT '
if @topCnt > 0 
	set @sqlCommand = @sqlCommand + ' top '+ CONVERT(varchar(5),@topCnt)
set @sqlCommand = @sqlCommand + ' 
 ApplicationForms.Title AS FormTitle,
 Users.Title AS UserTitle,
 Actions.Title AS ActionTitle,
 Letter.IndicatorID,
 LetterTypes.Title AS LetterType,
 Letter.IncommingNO,
 Letter.Incommingdate,
 Letter.RegistrationDate,
 Letter.Memo,
 dbo.Shamsi(UserLog.Time1) AS Date,
 right(cast(UserLog.Time1 as varchar(50)),7) as Time

FROM       UserLog
INNER JOIN Users            ON Users.Id = UserLog.UserID
INNER JOIN Actions          ON UserLog.Actionname = Actions.Actionname 
INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.FormTag
LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterID
LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.ID '


set @where=isnull(ltrim(rtrim(@where)),'')
if @where <>'' set @where =' and '+@where

if @Secretariatid<>0
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if substring(@where,1,4)=' and' set @where=' where '+substring(@where,5,4000)

 set @sqlCommand=@sqlCommand+@where + ' order by time1  '
exec(@sqlCommand)
GO
-----------------------------------------------------------------------------------------------------------
[Num]=45
-----------------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[insert_ReCommites]
	(@LetterID 	[int],
	 @ID 	[smallint],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit])
AS
declare @OrgStaff nvarchar(50)
select top 1 @OrgStaff=ResponsibleStaffer	
from dbo.FromOrganizations 
WHERE 	id	 = @OrgID

set @RecommiteDate = dbo.Shamsi(GETDATE())
 
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
	 @ID,
	 @Type,
	 @ParentId,
	 @OrgID,
	 @Paraph,
	 @RecommiteDate,
	 @UserID,
	 @IsCopy,
	 @Proceeded,
@OrgStaff )
GO

UPDATE ErrorMessage SET FarsiMessage = replace(FarsiMessage, '‰«„Â' , '”‰œ')
GO
-----------------------------------------------------------------------------------------------------------
[Num]=46
-----------------------------------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
ALTER PROCEDURE [dbo].[Get_All_Letter]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,@UsersID int         
as               
declare @today char(10)              
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)              
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,               
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,               
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,               
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,              
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,              
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,              
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
LC.ColorID as Color , Letter.ReceiveTypeID        
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/              
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate    
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)    
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/    
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm  
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
left join LetterColor LC on Letter.letterID = LC.LetterID and LC.UserID= '+Cast(@UsersID as Nvarchar(10))+'             
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

---Ranjbar ID=21
--> ﬂ«—»— ‰»«Ìœ ”‰œÂ«ÌÌ —« ﬂÂ œ— “Ê‰ﬂ‰ Â«Ì €Ì— ﬁ«»· œ” —”Ì ﬁ—«— œ«—‰œ —« „‘«ÂœÂ ﬂ‰œ 
if (@archiveFolderID = -1)or(@MYear=0)   --> ‰„«Ì‘  „«„Ì ”‰œÂ« ° Õ Ì »«Ìê«‰Ì ‘œÂ Â«
BEGIN
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --œ” —”Ì ‰œ«—œ
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) ' +
                       'AND(l.LetterID NOT IN(SELECT l1.LetterID FROM Letter l1 
								INNER JOIN LetterArchiveFolder laf1 ON l1.LetterID = laf1.LetterID
								INNER JOIN UserAccArchive uaa1 ON uaa1.ArchiveFolderID = laf1.ArchiveFolderID AND uaa1.UserID = l1.UserID
							WHERE l1.UserID = ' + Cast(@UsersID as nvarchar(10)) + '
								AND ((uaa1.SecID = ' + Cast(@Secretariatid as nvarchar(10)) + ')or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
								AND (L1.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )
								AND uaa1.ISAccess = 1)))'                   	
END
                      

---
                               
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '              
                    
--Print @sqlCommand
Exec sp_executesql @sqlCommand
GO
--------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sysobjects WHERE name = 'LetterColor')
BEGIN
	CREATE TABLE dbo.LetterColor
		(
		LetterID int NOT NULL,
		UserID int NOT NULL,
		ColorID int NOT NULL
		)  ON [PRIMARY]
	ALTER TABLE dbo.LetterColor ADD CONSTRAINT
		PK_LetterColor PRIMARY KEY CLUSTERED 
		(
		LetterID,
		UserID
		) ON [PRIMARY]
END
GO
---------------------------------------------------------------------------------------------------
[Num]=47
---------------------------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
ALTER PROCEDURE [dbo].[Get_All_Letter]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@top smallint ,@archiveFolderID int ,@UsersID int         
as               
declare @today char(10)              
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)              
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,               
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,               
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,               
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,              
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,              
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,              
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
LC.ColorID as Color , Letter.ReceiveTypeID        
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/              
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate    
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)    
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/    
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm,Letter.UserID AS LUID  
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
left join LetterColor LC on Letter.letterID = LC.LetterID              
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

---Ranjbar ID=21
--> ﬂ«—»— ‰»«Ìœ ”‰œÂ«ÌÌ —« ﬂÂ œ— “Ê‰ﬂ‰ Â«Ì €Ì— ﬁ«»· œ” —”Ì ﬁ—«— œ«—‰œ —« „‘«ÂœÂ ﬂ‰œ 
if (@archiveFolderID = -1)or(@MYear=0)   --> ‰„«Ì‘  „«„Ì ”‰œÂ« ° Õ Ì »«Ìê«‰Ì ‘œÂ Â«
BEGIN
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --œ” —”Ì ‰œ«—œ
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) ' +
                       'AND(l.LetterID NOT IN(SELECT l1.LetterID FROM Letter l1 
								INNER JOIN LetterArchiveFolder laf1 ON l1.LetterID = laf1.LetterID
								INNER JOIN UserAccArchive uaa1 ON uaa1.ArchiveFolderID = laf1.ArchiveFolderID AND uaa1.UserID = l1.UserID
							WHERE l1.UserID = ' + Cast(@UsersID as nvarchar(10)) + '
								AND ((uaa1.SecID = ' + Cast(@Secretariatid as nvarchar(10)) + ')or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
								AND (L1.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )
								AND uaa1.ISAccess = 1)))'                   	
END
                      

---
                               
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '              
                    
--Print @sqlCommand
Exec sp_executesql @sqlCommand
GO
-----------------------------------------------------------------------------------------------
[Num]=48

---------------------------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
ALTER PROCEDURE [dbo].[Get_All_Letter]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),
@top smallint ,@archiveFolderID int ,@UsersID int         
as               
declare @today char(10)              
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)              
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,               
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,               
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,               
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,              
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,              
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,              
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
LC.ColorID as Color , Letter.ReceiveTypeID        
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/              
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate    
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)    
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/    
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm,Letter.UserID AS LUID  
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
left join LetterColor LC on Letter.letterID = LC.LetterID and LC.UserID = '+ Cast(@UsersID as Nvarchar(10))+'            
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '              

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

---Ranjbar ID=21
--> ﬂ«—»— ‰»«Ìœ ”‰œÂ«ÌÌ —« ﬂÂ œ— “Ê‰ﬂ‰ Â«Ì €Ì— ﬁ«»· œ” —”Ì ﬁ—«— œ«—‰œ —« „‘«ÂœÂ ﬂ‰œ 
if (@archiveFolderID = -1)or(@MYear=0)   --> ‰„«Ì‘  „«„Ì ”‰œÂ« ° Õ Ì »«Ìê«‰Ì ‘œÂ Â«
BEGIN
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --œ” —”Ì ‰œ«—œ
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) ' +
                       'AND(l.LetterID NOT IN(SELECT l1.LetterID FROM Letter l1 
								INNER JOIN LetterArchiveFolder laf1 ON l1.LetterID = laf1.LetterID
								INNER JOIN UserAccArchive uaa1 ON uaa1.ArchiveFolderID = laf1.ArchiveFolderID AND uaa1.UserID = l1.UserID
							WHERE l1.UserID = ' + Cast(@UsersID as nvarchar(10)) + '
								AND ((uaa1.SecID = ' + Cast(@Secretariatid as nvarchar(10)) + ')or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
								AND (L1.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )
								AND uaa1.ISAccess = 1)))'                   	
END
                      

---
                               
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '              
                    
--Print @sqlCommand
Exec sp_executesql @sqlCommand
GO
------------------------------------------------------------------------------------
[Num]=49
---------------------
ALTER PROCEDURE [dbo].[Get_All_Letter]              
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),
@top smallint ,@archiveFolderID int ,@UsersID int, @WordText nvarchar(2000)='', @AttachText nvarchar(2000)=''        
as               
declare @today char(10)              
set @today=dbo.Shamsi(getdate())              
              
declare @sqlCommand nvarchar(4000)              
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,               
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,               
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,               
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.HeaderID, sender.Title AS SenderTitle,               
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,              
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(Letter.letterid) has_file,              
LetterTypes.Title LetterTypeTitle,LetterRecommites,dbo.ArchiveFolders(Letter.LetterID,0) ArchiveFolders,              
dbo.ArchivePlaces(Letter.LetterID,0) ArchivePlaces,sendstatusTitle,dbo.InnerNo(Letter.LetterID)  InnerNo,              
dbo.RentStatus(Letter.LetterID,'''+@today+''') RentStatus ,            
LC.ColorID as Color , Letter.ReceiveTypeID        
,(Select SecTitle From Secretariats S,UserSecretariats US Where S.SecID = US.SecId And US.SecId = Letter.SecretariatID And US.UserID = Letter.UserID) as SecTitle /*Ranjbar*/              
,(Select Title from Classifications Where Classifications.ID = Letter.ClassificationID) as ClassificationsTitle      
,(Select Title from Users Where Users.ID = Letter.UserID) as UserTitle      
,Letter.AttachTitle ,Letter.UserMemo ,Letter.UserMemo1,Letter.UserMemo2,Letter.VersionNumber,Letter.VersionDate    
,( Select Top 1 AF.Title From ArchiveFolder AF , LetterArchiveFolder LAF , Letter L Where(LAF.LetterID = Letter.LetterID)    
   And(LAF.LetterID = L.LetterID)  And(LAF.ArchiveFolderID = AF.FolderID) ) As ArchiveFolderTitle  /*Ranjbar ID=53*/    
,( Select dbo.Fu_LetterAlarm(Letter.LetterID, GetDate(),'+ Cast(@UsersID as Nvarchar(10))+') ) as HasLetterAlerm,Letter.UserID AS LUID  
FROM Letter left  JOIN              
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN              
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID               
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
left join LetterColor LC on Letter.letterID = LC.LetterID and LC.UserID = '+ Cast(@UsersID as Nvarchar(10))+'            
inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID '              
if @archiveFolderID>0                
set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID ' 
if len(@WordText)>0   
	set @sqlCommand=@sqlCommand+' inner join LetterText on LetterText.Letterid=Letter.LetterID '
	
--if len(@AttachText)>0   
--	set @sqlCommand=@sqlCommand+' inner join LetterData on LetterData.Letterid=Letter.LetterID '
--inner join LetterDataText on LetterDataText.LetterdataID = LetterData.LetterDataID '           
           

set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '              
            
set @where=isnull(ltrim(rtrim(@where)),'')              
if @where <>'' set @where =' and '+ @where               
              
if @Letter_Type<>0               
  set @where=@where+' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'              
              
if @Secretariatid<>0               
  set @where=@where+' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'              
              
if @Myear<>0               
  set @where=@where+' And (myear = '+Cast(@myear as varchar(5))+')'              
              
if @LetterFormat<>0               
  set @where=@where+' And (Letter.LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'              
              
if @archiveFolderID>0                
 set @where=@where+' And (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'              
              
if @archiveFolderID=0                
   set @where=@where+' And (dbo.Letter_Archived(Letter.LetterID)=0)'              

if len(@WordText)>0 
	set @where=@where+' And (replace(CONVERT(nvarchar(Max),TypeText),nchar(1740),nchar(1610)) LIKE ''%'+@WordText+'%'')'  
	
if LEN(@AttachText)>0
	set @where=@where+' And letter.letterid in(select letterid from letterdata where LetterdataID in (select LetterdataID from letterdatatext where (replace(CONVERT(nvarchar(Max),TextPart),nchar(1740),nchar(1610)) LIKE ''%'+@AttachText+'%'')))'  
---Ranjbar ID=21
--> ﬂ«—»— ‰»«Ìœ ”‰œÂ«ÌÌ —« ﬂÂ œ— “Ê‰ﬂ‰ Â«Ì €Ì— ﬁ«»· œ” —”Ì ﬁ—«— œ«—‰œ —« „‘«ÂœÂ ﬂ‰œ 
if (@archiveFolderID = -1)or(@MYear=0)   --> ‰„«Ì‘  „«„Ì ”‰œÂ« ° Õ Ì »«Ìê«‰Ì ‘œÂ Â«
BEGIN
   set @where=@where+' And  Letter.LetterID not in ( 
                       Select L.LetterID 
                       From Letter L ,LetterArchiveFolder LAF , ArchiveFolder AF,UserAccArchive UAA 
                       Where(L.LetterID = LAF.LetterID) 
                       And(UAA.ISAccess = 0 ) --œ” —”Ì ‰œ«—œ
                       And(UAA.UserID = ' + Cast(@UsersID as nvarchar(10)) + ' )
                       And((UAA.ArchiveCenterID = (Select ArchiveCenterID From Secretariats Where SecID = ' + 
                                                  Cast(@Secretariatid as nvarchar(10)) + '))or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
                       And(L.Finalized=1)
                       And(L.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )   
                       And(LAF.ArchiveFolderID = AF.FolderID)
                       And(Af.FolderID = UAA.ArchiveFolderID) ' +
                       'AND(l.LetterID NOT IN(SELECT l1.LetterID FROM Letter l1 
								INNER JOIN LetterArchiveFolder laf1 ON l1.LetterID = laf1.LetterID
								INNER JOIN UserAccArchive uaa1 ON uaa1.ArchiveFolderID = laf1.ArchiveFolderID AND uaa1.UserID = l1.UserID
							WHERE l1.UserID = ' + Cast(@UsersID as nvarchar(10)) + '
								AND ((uaa1.SecID = ' + Cast(@Secretariatid as nvarchar(10)) + ')or(' + Cast(@Secretariatid as nvarchar(10))+'=0))
								AND (L1.MYear = ' + Cast(@myear as nvarchar(10)) +' or ' + Cast(@myear as nvarchar(10)) +' = 0 )
								AND uaa1.ISAccess = 1)))'                   	
END
                      

---
                               
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '              
                    
Print @sqlCommand
Exec sp_executesql @sqlCommand
GO
---------------------------------------------------------------------
[Num]=50
--------------------------------------------
IF NOT EXISTS(SELECT * FROM sysobjects WHERE NAME = 'KeyWords' AND (xtype = 'U' OR TYPE = 'U'))
BEGIN
	CREATE TABLE dbo.KeyWords
		(
		id int NOT NULL IDENTITY (1, 1),
		word nvarchar(50) NOT NULL
		)  ON [PRIMARY]
	ALTER TABLE dbo.KeyWords ADD CONSTRAINT
		PK_KeyWords PRIMARY KEY CLUSTERED 
		(
		id
		) ON [PRIMARY]	
END
GO
--------------------------------------------------
[Num]=51
-----------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'AppForms')
CREATE TABLE [dbo].[AppForms](
	[FormTag] [int] NOT NULL,
	[FormEngName] [nvarchar](100) NOT NULL,
	[FormFarTitle] [nvarchar](255) NOT NULL,
	[FormEngTitle] [nvarchar](255) NULL,
 CONSTRAINT [PK_AppForms] PRIMARY KEY CLUSTERED 
(
	[FormTag] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'AppGrids')
BEGIN
	CREATE TABLE [dbo].[AppGrids](
		[GridID] [int] IDENTITY(1,1) NOT NULL,
		[FormTag] [int] NOT NULL,
		[GridName] [nvarchar](150) NOT NULL,
		[GridFarsiName] [nvarchar](255) NOT NULL,
	CONSTRAINT [PK_AppGrids] PRIMARY KEY CLUSTERED 
	(
		[GridID] ASC
	) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[AppGrids]  WITH CHECK ADD  CONSTRAINT [FK_AppGrids_AppForms] FOREIGN KEY([FormTag])
	REFERENCES [dbo].[AppForms] ([FormTag])
	ON UPDATE CASCADE
	ON DELETE CASCADE
	ALTER TABLE [dbo].[AppGrids] CHECK CONSTRAINT [FK_AppGrids_AppForms]
END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = 'AppColumns')
BEGIN
	CREATE TABLE [dbo].[AppColumns](
		[ColumnID] [int] IDENTITY(1,1) NOT NULL,
		[GridID] [int] NOT NULL,
		[ColumnEngName] [nvarchar](255) NOT NULL,
		[ColumnFarsiTitle] [nvarchar](255) NOT NULL,
	CONSTRAINT [PK_AppColumns] PRIMARY KEY CLUSTERED 
	(
		[ColumnID] ASC
	) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[AppColumns]  WITH CHECK ADD  CONSTRAINT [FK_AppColumns_AppGrids] FOREIGN KEY([GridID])
	REFERENCES [dbo].[AppGrids] ([GridID])
	ON UPDATE CASCADE
	ON DELETE CASCADE
	ALTER TABLE [dbo].[AppColumns] CHECK CONSTRAINT [FK_AppColumns_AppGrids]
END
GO

IF EXISTS (SELECT * FROM sysobjects WHERE NAME = 'SelectAppColumns')
DROP PROCEDURE [dbo].[SelectAppColumns] 
GO

CREATE PROCEDURE [dbo].[SelectAppColumns] 
@formName nvarchar(100),
@gridName nvarchar(100)
AS
select ac.* 
from appColumns ac 
	inner join appGrids ag on ac.gridID=ag.gridID 
	inner join appForms af on ag.formtag=af.formTag
Where af.FormEngName = @formName and ag.GridName = @gridName
GO

IF NOT EXISTS (SELECT * FROM AppForms WHERE [FormTag] = 10001) 
INSERT [dbo].[AppForms] ([FormTag], [FormEngName], [FormFarTitle], [FormEngTitle]) VALUES (10001, N'FrReport_userLog', N'»Ì·«‰ ò«—Ì ò«—»—«‰', NULL)
GO

IF NOT EXISTS (SELECT * FROM [AppGrids] WHERE [GridID] = 2) 
BEGIN
	SET IDENTITY_INSERT [dbo].[AppGrids] ON
	INSERT [dbo].[AppGrids] ([GridID], [FormTag], [GridName], [GridFarsiName]) VALUES (2, 10001, N'YDBGrid1', N'·Ì”  «⁄„«· ò«—»—«‰')
	SET IDENTITY_INSERT [dbo].[AppGrids] OFF	
END
GO
---------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
[Num]=52
------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[insert_LetterDataText]
	(@LetterDataID int,
	 @FileText   	ntext)
AS 
	DECLARE @textPart NVARCHAR(450)
	--DELETE FROM LetterDataText WHERE letterDataID = @LetterDataID  
	WHILE DATALENGTH(@FileText)>0
	BEGIN
		SET @textPart = SUBSTRING(@FileText,0,450)
		SET @textPart = REVERSE(RIGHT(REVERSE (@textPart), len(@textPart) - NULLIF(charindex(' ', REVERSE(@textPart)),0)))
		SET @FileText = SUBSTRING(@FileText,LEN(@textPart),DATALENGTH(@FileText)/2-LEN(@textPart))
		SET @textPart = dbo.YTrim(@textPart)
		INSERT INTO [dbo].[LetterDataText]( [LetterDataID], [textPart])
			VALUES 	( @LetterDataID, @textPart  )
	END
GO
------------------------------------------------------------------------------------------
[Num]=53
-------------------------------------------------------------------------------------------
update sys_AppMessage SET FarsiMessage = N'›«Ì· word »—«Ì «Ì‰ ”‰œ ÊÃÊœ ‰œ«—œ'  WHERE ID = 53
GO
-------------------------------------------------------------------------------------------
[Num]=54
-----------------------------------------------------------------------------------------------
ALTER Procedure [dbo].[Sp_SetAccessToArchiveFolder] @ArchiveFolderID INT
As   
/*»—«Ì  „«„Ì ﬂ«—»—«‰ UserAccArchive œ«œ‰ œ” —”Ì »Â “Ê‰ﬂ‰ ÃœÌœ œ— ÃœÊ·*/   
Declare @UserID int    
Declare @ArchiveCenterID int
Select @ArchiveCenterID = ArchiveCenterID From ArchiveFolder Where FolderID = @ArchiveFolderID     

Declare Cu_Users Cursor For    
Select ID from Users    
    
Open Cu_Users     
Fetch Next From Cu_Users Into @UserID    
While @@FETCH_STATUS = 0    
begin    

declare @SecID int

SELECT @SecID = DefualtSecretariatID FROM users WHERE Id = @UserID
     
Insert Into UserAccArchive(UserID, ArchiveCenterID, ArchiveFolderID, ISAccess, SecID)     
Values(@UserID,@ArchiveCenterID,@ArchiveFolderID,1, @SecID)
/*Select @UserID , AF.ArchiveCenterID , AF.FolderID , 1       
From Secretariats Se , ArchiveCenter AC , ArchiveFolder AF    
Where(AF.FolderID = @ArchiveFolderID)    
And(Se.ArchiveCenterID = AC.ArchiveCenterID)    
And(AC.ArchiveCenterID = AF.ArchiveCenterID)    */
    
Fetch Next From Cu_Users Into @UserID    
end    
Close Cu_Users    
Deallocate Cu_Users
GO
--------------------------------------------
[Num]=55
------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[get_Forms]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[get_Forms]
GO
create procedure [dbo].[get_Forms]
AS
	select T.TableId,T.Description,COUNT(F.ID) as FieldsCount
	From Tables T inner join Fields F on T.TableId = F.TableID
	where TableType=3 group by T.TableId,t.Description
GO
----------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[get_FormFields]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[get_FormFields]
GO
create procedure [dbo].[get_FormFields] @FormID int
AS
	select *
	From  Fields F inner join FieldType FT on F.FieldTypeID = FT.FieldTypeID
	where TableId=@FormID
	order by [order]
GO
-------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_Import_Document]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_Import_Document]
GO
create procedure [dbo].[sp_Import_Document] 
@canInsert bit,
@canEdit bit,
@year tinyint,
@secID tinyint,
@docNo nvarchar(50),
@docDate nvarchar(10),
@docSubject nvarchar(100),
@docSummery nvarchar(2000),
@classification nvarchar(50),
@customField1 nvarchar(255),
@customField2 nvarchar(255),
@customField3 nvarchar(255),
@FormID int,
@FormField1 nvarchar(255)=NULL,
@FormField2 nvarchar(255)=NULL,
@FormField3 nvarchar(255)=NULL,
@FormField4 nvarchar(255)=NULL,
@FormField5 nvarchar(255)=NULL,
@FormField6 nvarchar(255)=NULL,
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
@FormField18 nvarchar(255)=NULL
AS
	declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
	declare @docID int
	declare @claID tinyint
	declare @subjID int
	declare @indicatorID int
	set @docID = -1
    --------------------------------------------------------------------------------------------------------------	
	select @docID= LetterID From  Letter where IncommingNO = @docNo and MYear = @year and SecretariatID = @secID
	--------------------------------------------------------------------------------------------------------------
	if @docID>0 
	begin
		if @canEdit=1 
		begin
			------------------------------------Edit Document-----------------------------------------------------
			set @claID =1 --⁄«œÌ
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			update Letter set 
				Incommingdate = @docDate , Memo = @docSummery, 
				UserMemo = @customField1, UserMemo1 = @customField2, UserMemo2 = @customField3,
				ClassificationID = @claID, ToOrgID = @subjID
			where LetterID = @docID
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
			-------------------------------------Insert Document--------------------------------------------------
			set @claID =1 --⁄«œÌ
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @Year and SecretariatID = @SecID
			insert into Letter(IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,FromOrgID,UserID,
						ToOrgID,ClassificationID,UrgencyID,Memo,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,
						RegistrationDate,RegistrationTime,LastUpdate,SendStatusID,Finalized,
						UserMemo,UserMemo1,UserMemo2)
				 values(@indicatorID,@year,@secID,1,1,@docNo,@docDate,-1,0,
						@subjID,@claID,1,@docSummery,1,1,1,
						dbo.shamsi(getdate()),LEFT(RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7),5),getdate(),1,1,
						@customField1,@customField2,@customField3)
			SELECT @docID=SCOPE_IDENTITY()
			------------------------------------------------------------------------------------------------------
			set @result = 2
		end
		else
			set @result = -2
	end
	
	if @result>0
		if @docID>0
			if @FormID>0
			begin
				----------------------------------------------------------
				update Letter set UserTableID = @FormID	where LetterID = @docID
				
				insert into  LetterFieldValue(letterid,FieldID)
					select @docID,ID
					from Fields
					where tableid=@FormID and id not in (select FieldID from LetterFieldValue where Letterid=@docID)
				
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
					select 18,@FormField18 
				
				declare @FieldID int ,@ord int

				DECLARE cr CURSOR FOR  
					select ID,ROW_NUMBER() OVER (ORDER BY [Order]) AS Row from Fields where TableID = @FormID order by [order] 

				OPEN cr  
				FETCH NEXT FROM cr INTO @FieldID,@ord  

				WHILE @@FETCH_STATUS = 0  
				BEGIN  
					update LetterFieldValue set FieldValue = val from #tmpFields
					where ord=@ord  and FieldID = @FieldID and LetterID=@docNo
			
					FETCH NEXT FROM cr INTO @FieldID,@ord  
				END  
	
				CLOSE cr  
				DEALLOCATE cr  
				----------------------------------------------------------
			end
	select @result
GO

-----------------------------------------------
[Num]=56
---------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_Import_Document]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_Import_Document]
GO
create procedure [dbo].[sp_Import_Document] 
@canInsert bit,
@canEdit bit,
@year tinyint,
@secID tinyint,
@docNo nvarchar(50),
@docDate nvarchar(10),
@docSubject nvarchar(100),
@docSummery nvarchar(2000),
@classification nvarchar(50),
@customField1 nvarchar(255),
@customField2 nvarchar(255),
@customField3 nvarchar(255),
@FormID int,
@FormField1 nvarchar(255)=NULL,
@FormField2 nvarchar(255)=NULL,
@FormField3 nvarchar(255)=NULL,
@FormField4 nvarchar(255)=NULL,
@FormField5 nvarchar(255)=NULL,
@FormField6 nvarchar(255)=NULL,
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
@FormField18 nvarchar(255)=NULL
AS
	declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
	declare @docID int
	declare @claID tinyint
	declare @subjID int
	declare @indicatorID int
	set @docID = -1
    --------------------------------------------------------------------------------------------------------------	
	select @docID= LetterID From  Letter where IncommingNO = @docNo and MYear = @year and SecretariatID = @secID
	--------------------------------------------------------------------------------------------------------------
	if @docID>0 
	begin
		if @canEdit=1 
		begin
			------------------------------------Edit Document-----------------------------------------------------
			set @claID =1 --⁄«œÌ
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			update Letter set 
				Incommingdate = @docDate , Memo = @docSummery, 
				UserMemo = @customField1, UserMemo1 = @customField2, UserMemo2 = @customField3,
				ClassificationID = @claID, ToOrgID = @subjID
			where LetterID = @docID
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
			-------------------------------------Insert Document--------------------------------------------------
			set @claID =1 --⁄«œÌ
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @Year and SecretariatID = @SecID
			insert into Letter(IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,FromOrgID,UserID,
						ToOrgID,ClassificationID,UrgencyID,Memo,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,
						RegistrationDate,RegistrationTime,LastUpdate,SendStatusID,Finalized,
						UserMemo,UserMemo1,UserMemo2)
				 values(@indicatorID,@year,@secID,1,1,@docNo,@docDate,-1,0,
						@subjID,@claID,1,@docSummery,1,1,1,
						dbo.shamsi(getdate()),LEFT(RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7),5),getdate(),1,1,
						@customField1,@customField2,@customField3)
			SELECT @docID=SCOPE_IDENTITY()
			------------------------------------------------------------------------------------------------------
			set @result = 2
		end
		else
			set @result = -2
	end
	
	if @result>0
		if @docID>0
			if @FormID>0
			begin
				----------------------------------------------------------
				update Letter set UserTableID = @FormID	where LetterID = @docID
				
				insert into  LetterFieldValue(letterid,FieldID)
					select @docID,ID
					from Fields
					where tableid=@FormID and id not in (select FieldID from LetterFieldValue where Letterid=@docID)
				
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
					select 18,@FormField18 
				
				declare @FieldID int ,@ord int, @FTypeID tinyint,@LFVID int 

				DECLARE cr CURSOR FOR  
					select ID,fieldTypeID,ROW_NUMBER() OVER (ORDER BY [Order]) AS Row from Fields where TableID = @FormID order by [order] 

				OPEN cr  
				FETCH NEXT FROM cr INTO @FieldID,@FTypeID,@ord  

				WHILE @@FETCH_STATUS = 0  
				BEGIN
					select @LFVID = LetterFieldValueID from LetterFieldValue where FieldID = @FieldID and LetterID=@docID
					if @FTypeID = 5   
						update LetterFieldValue set FieldValue = (case when val IN('T','1','»·Â','true','yes') then 1 else 0 end) from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					if @FTypeID = 6
					begin
						declare @intval int, @refTblID int
						declare @strVal nvarchar(255)
						select @refTblID=ReferenceTableID from Fields where ID = @FieldID
						
						select @strVal = val from #tmpFields where ord = @ord 
						
						set @intval = 0
						
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						if @intval = 0 
							insert into ReferenceTableData(TableID,DataID,DataTitle)
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
GO

---------------------------------
[Num]=57
-------------------------------------------------------
ALTER procedure [dbo].[sp_Import_Document] 
@canInsert bit,
@canEdit bit,
@year tinyint,
@secID tinyint,
@docNo nvarchar(50),
@docDate nvarchar(10),
@docSubject nvarchar(100),
@docSummery nvarchar(2000),
@classification nvarchar(50),
@customField1 nvarchar(255),
@customField2 nvarchar(255),
@customField3 nvarchar(255),
@FormID int,
@FormField1 nvarchar(255)=NULL,
@FormField2 nvarchar(255)=NULL,
@FormField3 nvarchar(255)=NULL,
@FormField4 nvarchar(255)=NULL,
@FormField5 nvarchar(255)=NULL,
@FormField6 nvarchar(255)=NULL,
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
	declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
	declare @docID int
	declare @claID tinyint
	declare @subjID int
	declare @indicatorID int
	set @docID = -1
    --------------------------------------------------------------------------------------------------------------	
	select @docID= LetterID From  Letter where IncommingNO = @docNo and MYear = @year and SecretariatID = @secID
	--------------------------------------------------------------------------------------------------------------
	if @docID>0 
	begin
		if @canEdit=1 
		begin
			------------------------------------Edit Document-----------------------------------------------------
			set @claID =1 --⁄«œÌ
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			update Letter set 
				Incommingdate = @docDate , Memo = @docSummery, 
				UserMemo = @customField1, UserMemo1 = @customField2, UserMemo2 = @customField3,
				ClassificationID = @claID, ToOrgID = @subjID
			where LetterID = @docID
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
			-------------------------------------Insert Document--------------------------------------------------
			set @claID =1 --⁄«œÌ
			set @subjID = -1
			select @claID=ID from Classifications where Title = @classification
			select @subjID=ID from FromOrganizations where Title = @docSubject
			if @subjID<0
			begin 
				insert into FromOrganizations(Title,ParentID,IsActive,IsInnerOrg,Code) 
				values(@docSubject,-1/*4*/,1,0,(select MAX(CONVERT(int,code))+1 from FromOrganizations))
				SELECT @subjID=SCOPE_IDENTITY()
			end
			select @indicatorID = Max(indicatorID)+1 FROM Letter Where MYear = @Year and SecretariatID = @SecID
			insert into Letter(IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,FromOrgID,UserID,
						ToOrgID,ClassificationID,UrgencyID,Memo,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,
						RegistrationDate,RegistrationTime,LastUpdate,SendStatusID,Finalized,
						UserMemo,UserMemo1,UserMemo2)
				 values(@indicatorID,@year,@secID,1,1,@docNo,@docDate,-1,0,
						@subjID,@claID,1,@docSummery,1,1,1,
						dbo.shamsi(getdate()),LEFT(RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7),5),getdate(),1,1,
						@customField1,@customField2,@customField3)
			SELECT @docID=SCOPE_IDENTITY()
			------------------------------------------------------------------------------------------------------
			set @result = 2
		end
		else
			set @result = -2
	end
	
	if @result>0
		if @docID>0
			if @FormID>0
			begin
				----------------------------------------------------------
				update Letter set UserTableID = @FormID	where LetterID = @docID
				
				insert into  LetterFieldValue(letterid,FieldID)
					select @docID,ID
					from Fields
					where tableid=@FormID and id not in (select FieldID from LetterFieldValue where Letterid=@docID)
				
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
					select @LFVID = LetterFieldValueID from LetterFieldValue where FieldID = @FieldID and LetterID=@docID
					if @FTypeID = 5   
						update LetterFieldValue set FieldValue = (case when val IN('T','1','»·Â','true','yes') then 1 else 0 end) from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					if @FTypeID = 6
					begin
						declare @intval int, @refTblID int
						declare @strVal nvarchar(255)
						select @refTblID=ReferenceTableID from Fields where ID = @FieldID
						
						select @strVal = val from #tmpFields where ord = @ord 
						
						set @intval = 0
						
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						if @intval = 0 
							insert into ReferenceTableData(TableID,DataID,DataTitle)
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
GO
---------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_Import_Other_Fields]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_Import_Other_Fields]
GO
CREATE procedure [dbo].[sp_Import_Other_Fields] 
@year tinyint,
@secID tinyint,
@docNo nvarchar(50),
@FormID int,
@FiledsPage int,
@FormField1 nvarchar(255)=NULL,
@FormField2 nvarchar(255)=NULL,
@FormField3 nvarchar(255)=NULL,
@FormField4 nvarchar(255)=NULL,
@FormField5 nvarchar(255)=NULL,
@FormField6 nvarchar(255)=NULL,
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
	declare @result int --      1=edited      -1=cannot edit      2=inserted      -2=cannot insert
	declare @docID int
	declare @claID tinyint
	declare @subjID int
	declare @indicatorID int
	set @docID = -1
    --------------------------------------------------------------------------------------------------------------	
	select @docID= LetterID From  Letter where IncommingNO = @docNo and MYear = @year and SecretariatID = @secID
	--------------------------------------------------------------------------------------------------------------
		if @docID>0
			if @FormID>0
			begin
				----------------------------------------------------------
				CREATE TABLE #tmpFields
				(
					ord INT,
					val nvarchar(255)
				)

				INSERT INTO #tmpFields
					select 1+ 20*@FiledsPage,@FormField1 union 
					select 2+ 20*@FiledsPage,@FormField2 union
					select 3+ 20*@FiledsPage,@FormField3 union 
					select 4+ 20*@FiledsPage,@FormField4 union
					select 5+ 20*@FiledsPage,@FormField5 union 
					select 6+ 20*@FiledsPage,@FormField6 union
					select 7+ 20*@FiledsPage,@FormField7 union 
					select 8+ 20*@FiledsPage,@FormField8 union
					select 9+ 20*@FiledsPage,@FormField9 union 
					select 10+20*@FiledsPage,@FormField10 union
					select 11+20*@FiledsPage,@FormField11 union 
					select 12+20*@FiledsPage,@FormField12 union
					select 13+20*@FiledsPage,@FormField13 union 
					select 14+20*@FiledsPage,@FormField14 union
					select 15+20*@FiledsPage,@FormField15 union 
					select 16+20*@FiledsPage,@FormField16 union
					select 17+20*@FiledsPage,@FormField17 union 
					select 18+20*@FiledsPage,@FormField18 union
					select 19+20*@FiledsPage,@FormField19 union 
					select 20+20*@FiledsPage,@FormField20 
				
				declare @FieldID int ,@ord int, @FTypeID tinyint,@LFVID int 

				DECLARE cr CURSOR FOR  
					select ID,fieldTypeID,ROW_NUMBER() OVER (ORDER BY [Order]) AS Row from Fields where TableID = @FormID order by [order] 

				OPEN cr  
				FETCH NEXT FROM cr INTO @FieldID,@FTypeID,@ord  

				WHILE @@FETCH_STATUS = 0  
				BEGIN
					select @LFVID = LetterFieldValueID from LetterFieldValue where FieldID = @FieldID and LetterID=@docID
					if @FTypeID = 5   
						update LetterFieldValue set FieldValue = (case when val IN('T','1','»·Â','true','yes') then 1 else 0 end) from #tmpFields
						where ord=@ord  and LetterFieldValueID=@LFVID
					if @FTypeID = 6
					begin
						declare @intval int, @refTblID int
						declare @strVal nvarchar(255)
						select @refTblID=ReferenceTableID from Fields where ID = @FieldID
						
						select @strVal = val from #tmpFields where ord = @ord 
						
						set @intval = 0
						
						select @intval = dataID from ReferenceTableData 
						where TableID = @refTblID and  DataTitle = @strVal
						
						if @intval = 0 
							insert into ReferenceTableData(TableID,DataID,DataTitle)
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
GO
----------------------------------

[Num]=58
	if not exists (select * from sys.columns where name ='CanViewAllRecommites' and object_id=OBJECT_ID('users'))	
	alter table users
	add CanViewAllRecommites bit default 0 not null

GO
	if OBJECT_ID('sp_GetDispatchedRecommites') is not null
	drop procedure sp_GetDispatchedRecommites
GO
	create procedure [dbo].[sp_GetDispatchedRecommites](@OrgID INT, @FromMe BIT , @ForMe BIT,@type bit=0)
	AS
	BEGIN
		DECLARE @userID INT
		if @type=0
		begin

			SELECT @userID = ID  FROM Users WHERE FromOrgID = @OrgID
			SET @userID = ISNULL(@userID, 0)
			SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph,
				r.OrgID, r.UserID, usender.title + ' - ' + foSender.title + '  ' + foSender.ResponsibleStaffer  as SenderDesc
				, uReceiver.title + ' - ' + foReceiver.title + '  ' + foReceiver.ResponsibleStaffer  as ReceiverDesc
			  , (CASE WHEN r.OrgID = @OrgID THEN ISNULL(usender.title,'') + ' - ' + ISNULL(foSender.title,'') + '  ' + ISNULL(foSender.ResponsibleStaffer,'')
						ELSE ISNULL(uReceiver.title,'') + ' - ' + ISNULL(foReceiver.title,'') + '  ' + ISNULL(foReceiver.ResponsibleStaffer,'') end) AS TarafErja
			,l.UserMemo customField1,l.UserMemo1 customField2,l.UserMemo2 customField3,uSender.Title senderTitle, uReceiver.Title receiverTitle,r.RecommiteDate
			FROM recommites R
			INNER JOIN letter AS  l ON l.LetterID=r.LetterID
			left JOIN users as uSender ON r.UserID = usender.Id
			left JOIN FromOrganizations AS  foSender ON usender.FromOrgID = foSender.ID
			left JOIN FromOrganizations as foReceiver ON r.OrgID = foReceiver.ID
			left JOIN users as uReceiver  ON foReceiver.ID = uReceiver.FromOrgID
			WHERE	(r.OrgID= @OrgID AND @ForMe = 1) OR (r.UserID = @UserID AND @FromMe = 1)	
		end
		else
		begin
			SELECT @userID = ID  FROM Users WHERE FromOrgID = @OrgID
			SET @userID = ISNULL(@userID, 0)
			SELECT r.RecommiteID, R.LetterID, l.IndicatorID, l.Incommingdate, l.IncommingNO, r.Paraph,
				r.OrgID, r.UserID, usender.title + ' - ' + foSender.title + '  ' + foSender.ResponsibleStaffer  as SenderDesc
				, uReceiver.title + ' - ' + foReceiver.title + '  ' + foReceiver.ResponsibleStaffer  as ReceiverDesc
			  , (CASE WHEN r.OrgID = @OrgID THEN ISNULL(usender.title,'') + ' - ' + ISNULL(foSender.title,'') + '  ' + ISNULL(foSender.ResponsibleStaffer,'')
						ELSE ISNULL(uReceiver.title,'') + ' - ' + ISNULL(foReceiver.title,'') + '  ' + ISNULL(foReceiver.ResponsibleStaffer,'') end) AS TarafErja
			,l.UserMemo customField1,l.UserMemo1 customField2,l.UserMemo2 customField3,uSender.Title senderTitle, uReceiver.Title receiverTitle,r.RecommiteDate
			FROM recommites R
			INNER JOIN letter AS  l ON l.LetterID=r.LetterID
			left JOIN users as uSender ON r.UserID = usender.Id
			left JOIN FromOrganizations AS  foSender ON usender.FromOrgID = foSender.ID
			left JOIN FromOrganizations as foReceiver ON r.OrgID = foReceiver.ID
			left JOIN users as uReceiver  ON foReceiver.ID = uReceiver.FromOrgID
		end
	END
GO

[Num]=59
	if OBJECT_ID('SelectLetter') is not null
	drop procedure SelectLetter
GO

	Create PROCEDURE [dbo].[SelectLetter]    
	@where nvarchar(2000)     
	as     
	declare @sqlCommand nvarchar(4000)    
	set @sqlCommand='select Null as HasTasvir, l.*,     
	 ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS ClassificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS UserTitle,     
	 LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, LetterTemplate.Title AS TemplateTitle,      
	 FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTypeTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.IndicatorID  AnswerIndicatorID    
	 ,dbo.has_Page(L.letterid) has_Page /*Ranjbar*/
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
	 LEFT JOIN     Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID   
	 Left join LetterArchiveFolder ON L.LetterID = LetterArchiveFolder.LetterID   /*Ranjbar ID=13*/ 
	 left join LetterColor lc on l.LetterID=lc.LetterID 
	 '     
	 
	set @where=isnull(ltrim(rtrim(@where)),'')    
	if @where<>''     
	 set @sqlCommand=@sqlCommand+' where '+@where    
	 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '    
	exec sp_executesql @sqlCommand
GO
[Num]=60
	IF NOT EXISTS(SELECT * FROM ApplicationForms WHERE id=4 )
	INSERT INTO dbo.ApplicationForms( ID, Title )
	VALUES  ( 4,N'›—„ ÅÌÊ” ')
GO
	IF NOT EXISTS(select * FROM dbo.sys_AppMessage WHERE id =90)
	INSERT INTO dbo.sys_AppMessage
			( ID, FarsiMessage )
	VALUES  ( 90,N'ò·„Â ⁄»Ê— Õœ«ﬁ· »«Ìœ 8 ò«—ò — »«‘œ')
GO
	IF NOT EXISTS(SELECT * FROM sys.columns WHERE name='ChangeByAdmin' AND OBJECT_ID=OBJECT_ID('Users'))
	ALTER TABLE Users 
	ADD ChangeByAdmin BIT DEFAULT 0
GO
	IF NOT EXISTS(SELECT * FROM sys.columns WHERE name='BeginActiveDate' AND OBJECT_ID=OBJECT_ID('Users'))
	ALTER TABLE Users 
	ADD BeginActiveDate Char(10)
GO
	IF NOT EXISTS(SELECT * FROM sys.columns WHERE name='EndActiveDate' AND OBJECT_ID=OBJECT_ID('Users'))
	ALTER TABLE Users 
	ADD EndActiveDate Char(10)
GO
	IF OBJECT_ID('UserChange_pass')IS NOT NULL
	DROP  PROCEDURE UserChange_pass
GO
	CREATE  PROCEDURE UserChange_pass (@userID int,@newPass nvarchar(100) )
	AS
	update users
	set password=@newPass,
		ChangeByAdmin=0
	where id=@userid 
GO	