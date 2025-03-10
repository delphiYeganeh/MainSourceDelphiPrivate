USE [ydabir]
GO
/****** Object:  StoredProcedure [dbo].[Web_Access]    Script Date: 02/17/2008 23:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Web_Access](@userid int,@Result varchar(100) output)
as
set @result=''
SELECT    @result=@result+case when hasaccess=1 then 
case ActionID 
when 1001 then 'Incomming' 
when 1002 then 'Outgoing' 
when 1026 then 'Draft' 
when 1060 then 'Inner' 
when 1058 then 'Drop_Attach' 
end+';'
else '' end
FROM         ActionsAccess INNER JOIN
                      Users ON ActionsAccess.AccessID = Users.AccessID
WHERE     (Users.Id = @userid) AND (ActionsAccess.ActionID IN (1001, 1002, 1026, 1058, 1060))



GO
/****** Object:  StoredProcedure [dbo].[web_ArchiveRecommite]    Script Date: 02/17/2008 23:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_ArchiveRecommite]
	(@RecommiteID 	[int],
	 @ArchiveFolderID 	[int],
	 @ArchiveDate 	[char](10),
	 @Page 	[int],
	 @ArchiveNotes 	[nvarchar](50),
	 @StaffMemo 	[nvarchar](255),
	 @LetterArchiveID 	[int] output)

AS 

declare @LetterId int

select @LetterId=LetterId from Recommites where RecommiteId=@RecommiteId

INSERT INTO [dbo].[LetterArchiveFolder] 
	 ( 
	 [ArchiveFolderID],
	 [LetterID],
	 [ArchiveDate],
	 [Page],
	 [ArchiveNotes]) 
 
VALUES 
	( 
	 @ArchiveFolderID,
	 @LetterID,
	 @ArchiveDate,
	 @Page,
	 @ArchiveNotes)

Update Recommites Set Proceeded=1, staffMemo=@StaffMemo where RecommiteId=@RecommiteId

set @LetterArchiveID=@@identity


GO
/****** Object:  StoredProcedure [dbo].[web_Get_LetterData_by_LetterDataID]    Script Date: 02/17/2008 23:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create proc [dbo].[web_Get_LetterData_by_LetterDataID]
(@LetterDataID int )
as
SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
FROM       LetterData 
INNER JOIN  Extention ON LetterData.extention = Extention.ExtentionID
WHERE     (LetterDataID = @LetterDataID)






GO
/****** Object:  StoredProcedure [dbo].[web_GetLetterArchiveHistory]    Script Date: 02/17/2008 23:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_GetLetterArchiveHistory]
(
	@letterId int,
	@userId int
)
AS

SELECT     dbo.LetterArchiveFolder.ArchiveDate, dbo.ArchiveFolder.*
FROM         dbo.ArchiveFolder INNER JOIN
                      dbo.LetterArchiveFolder ON dbo.ArchiveFolder.FolderID = dbo.LetterArchiveFolder.ArchiveFolderID
Where LetterId = @letterId and UserId=@userId
GO
/****** Object:  StoredProcedure [dbo].[web_GetLetterAttachment]    Script Date: 02/17/2008 23:34:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[web_GetLetterAttachment]
@letterID int 
as

SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
FROM       LetterData 
INNER JOIN  Extention ON LetterData.extention = Extention.ExtentionID
WHERE LetterID=@LetterID





GO
/****** Object:  StoredProcedure [dbo].[web_GetRecommiteById]    Script Date: 02/17/2008 23:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_GetRecommiteById]
(@recommiteId int )
AS

SELECT R.*,f.title+' - '+r.OrgStaff RecommiterTitle,IsInnerOrg 

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID

Where r.RecommiteId=@recommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_insert_AnswerLetter]    Script Date: 02/17/2008 23:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_insert_AnswerLetter]
	(
     @LetterID 	[int] output,
     @Indicator 	[int] output,
     @RecommiteId [int] output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @LetterFromOrgID int,
     @receivedLetterID int )

AS 
declare @ToOrgID int,@IndicatorID int ,@FromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [fromstaffer],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 2,--Letter_Type
	 2,--letterformat
	 @LetterFromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0 --Finalized
       )

select @letterid=max(letterid) from letter
select @Indicator = @IndicatorId

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت پيش نويس جواب نامه',@registrationdate,@UserID,0,0,@RecommiteId output
update letter
set SentLetterID=@letterid
where letterid=@receivedLetterID

GO
/****** Object:  StoredProcedure [dbo].[web_insert_DraftLetter]    Script Date: 02/17/2008 23:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[web_insert_DraftLetter]
	(@Indicator 	[int] output,
	 @LetterId int output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50))

AS 
declare @ToOrgID int,@IndicatorID int ,@FromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [fromstaffer],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 2,--Letter_Type
	 2,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0 --Finalized
       )

select @letterid=max(letterid) from letter
select @Indicator = @IndicatorID

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه پيش نويس',@registrationdate,@UserID,0,0,@RecommiteId output
							 
select @RecommiteId
GO
/****** Object:  StoredProcedure [dbo].[web_insert_innerLetter]    Script Date: 02/17/2008 23:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[web_insert_innerLetter]
	(@LetterID 	[int] output,
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @UserMemo 	[nvarchar](255))

AS 
declare @IndicatorID int ,@FromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)



select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(3,1,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Memo],
	 [UserID],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 3,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 3,--@ToOrgID,
	 @Memo,
	 @UserID,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 1 --Finalized
       )

select @letterid=max(letterid) from letter

declare @recommiteId int
exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'نامه داخلي',@registrationdate,@UserID,0,0,@recommiteId output

GO
/****** Object:  StoredProcedure [dbo].[web_Insert_LetterData]    Script Date: 02/17/2008 23:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[web_Insert_LetterData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint],
	 @description [nvarchar](200)='',
	 @image [image] = null)

AS INSERT INTO [dbo].[LetterData] 
	 (  [LetterID],
	 [PageNumber],
	 [extention],
	 [image],
	 [description]) 
 
VALUES 
	( @LetterID,
	 @PageNumber,
	 @extention,
	 @image,
	 @description)

set  @LetterDataID=@@identity



GO
/****** Object:  StoredProcedure [dbo].[web_insert_NewReCommite]    Script Date: 02/17/2008 23:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_insert_NewReCommite]
	(@LetterID 	[int],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @RecommiteId [int] output)
AS
declare @OrgStaff nvarchar(50),@NewID int

select top 1 @OrgStaff=ResponsibleStaffer       

from dbo.FromOrganizations 

WHERE             id         = @OrgID
SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE LetterID=@letterID and type=@type
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
             @NewID,
             @Type,
             @ParentId,
             @OrgID,
             @Paraph,
             @RecommiteDate,
             @UserID,
             @IsCopy,
             @Proceeded,
			 @OrgStaff )

select @RecommiteId = @@identity

GO
/****** Object:  StoredProcedure [dbo].[web_insert_ReceivedLetter]    Script Date: 02/17/2008 23:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[web_insert_ReceivedLetter]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint])
AS 
declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
	 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],IncommingNO ,
     Incommingdate,CenterNo,CenterDate,NumberOfPage ,ReceiveTypeID) 
 
VALUES 
	( 
	 @IndicatorID,	 @MYear,	 @SecretariatID,
	 1,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0, --Finalized
      @IncommingNO , @Incommingdate,@CenterNo,@CenterDate ,@NumberOfPage ,@ReceiveTypeID)

select @letterid=max(letterid) from letter

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,@RecommiteId output

select @Indicator = @IndicatorID

select @RecommiteId

GO
/****** Object:  StoredProcedure [dbo].[web_insert_sentLetter]    Script Date: 02/17/2008 23:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_insert_sentLetter]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint])
AS 
declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
	 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],
	 NumberOfPage ,ReceiveTypeID) 
 
VALUES 
	( 
	 @IndicatorID,	 @MYear,	 @SecretariatID,
	 2,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0, --Finalized
     @NumberOfPage ,@ReceiveTypeID)

select @letterid=max(letterid) from letter

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,@RecommiteId output

select @Indicator = @IndicatorID

select @RecommiteId

GO
/****** Object:  StoredProcedure [dbo].[web_ProceedRecommite]    Script Date: 02/17/2008 23:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_ProceedRecommite]
	
	(
		@recommiteId int
	)
	
AS
	Update Recommites Set Proceeded=1 where recommiteId=@recommiteId 
	/* SET NOCOUNT ON */

GO
/****** Object:  StoredProcedure [dbo].[web_Select_LetterReCommite]    Script Date: 02/17/2008 23:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[web_Select_LetterReCommite]	

(@letterID 	[int],@type tinyint)  AS 

SELECT R.*,f.title+' - '+r.OrgStaff RecommiterTitle,IsInnerOrg 

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID 

where Letterid=@letterID and type=@type 










