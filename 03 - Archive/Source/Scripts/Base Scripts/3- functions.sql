
IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[ArchiveFolders]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ArchiveFolders]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[ArchiveID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ArchiveID]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[ArchivePlaces]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ArchivePlaces]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[delphiType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[delphiType]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[everyLike]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[everyLike]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Fasl]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Fasl]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[get_Number_Of_Letter_RelatedSecretariatID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[get_Number_Of_Letter_RelatedSecretariatID]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[GetSystemValue]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSystemValue]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[has_file]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[has_file]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[has_Page]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[has_Page]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[has_tifPage]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[has_tifPage]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[has_WordPage]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[has_WordPage]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[InnerNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[InnerNo]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Is_ParentId]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Is_ParentId]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[isLike]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[isLike]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[IsString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsString]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Letter_Archived]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Letter_Archived]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[MiladiLeapyear]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[MiladiLeapyear]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[newIndicatorid]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[newIndicatorid]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Number_Of_Inbox]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Number_Of_Inbox]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Number_Of_Week]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Number_Of_Week]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[NumberOfPage_ByMaxSize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[NumberOfPage_ByMaxSize]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[ParentId]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ParentId]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Recommite_DeadLine]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Recommite_DeadLine]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Recommite_FirstProceed]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Recommite_FirstProceed]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Recommite_FirstView]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Recommite_FirstView]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Recommite_has_done]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Recommite_has_done]
GO

IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'[dbo].[Recommites_by_indicator]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Recommites_by_indicator]
GO


CREATE FUNCTION [dbo].[ArchiveFolders] (@LetterID int,@UserID  tinyint)
RETURNS nvarchar(1000)
BEGIN
declare @result  nvarchar(1000)
set @result=''
SELECT   @result=@result +' , '+Title +' - '+ArchiveDate
FROM         LetterArchiveFolder
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result='»«Ìê«‰Ì œ—: '+substring(@result,4,1000)
return(@result)
end

GO


CREATE FUNCTION [dbo].[ArchiveID] (@Sid int,@fid  tinyint,@Myear tinyint,@page tinyint)
RETURNS varchar(20)
BEGIN
declare @result vaRCHAR(20)

if isnull(@fid,0)=0
SET @result=cast(@sid as varchar(8))+'/'+cast(@myear as char(2))+'/'+cast(@page as varchar(4))
else
SET @result=cast(@sid as varchar(8))+'-'+cast(@fid as varchar(2))++'/'+cast(@myear as char(2))+'/'+cast(@page as varchar(4))
return(@result)
END

 
GO




CREATE FUNCTION [dbo].[ArchivePlaces] (@LetterID int,@UserID  tinyint)  
RETURNS nvarchar(1000)
BEGIN
declare @result  nvarchar(1000)
set @result=''
SELECT   @result=@result +' , '+Place 
FROM         LetterArchiveFolder 
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result=substring(@result,4,1000)
return(@result)
end



GO 


CREATE FUNCTION [dbo].[delphiType] (@typeName varchar(100))  
RETURNS varchar(20) AS  
BEGIN 
Return
(case  
when  @typeName in ('int','bigint','smallint') then 'integer'
when  @typeName in ('tinyint') then 'integer'
when  @typeName in ('bit') then 'boolean'
when  @typeName in ('varchar','char','sysname','text','shamsiDate','tel','path','time') then 'string'
when  @typeName in ('nvarchar','ntext') then 'widestring'
when  @typeName in ('sql_variant') then 'variant'
when  @typeName in ('float') then 'real'  else @typeName	end)

END




GO 

CREATE FUNCTION [dbo].[everyLike](@fieldType varchar(50),@len int)
RETURNS  bit AS  
BEGIN 
 return case when @fieldType in('varchar','nvarchar','text') and @len>50 then 1 else 0 end
END





GO 

CREATE FUNCTION [dbo].[Fasl](@date char(10))
RETURNS varchar(50) AS  
BEGIN 
declare @m tinyint,@f tinyint
set @m=cast(substring(@date,6,2) as tinyint)
set @f=case when @m>1 then (@m-1)/3+1 else 1 end
return(case @f when 1 then '»Â«—' 
when 2 then ' «»” «‰'
when 3 then 'Å«ÌÌ“'
else '“„” «‰' end) 
END





GO 

create function [dbo].[get_Number_Of_Letter_RelatedSecretariatID](
@RelatedSecretariatID int)
returns int
begin
declare  @Number_Of_Letter int 
SELECT    @Number_Of_Letter= COUNT(*)  
FROM         Letter INNER JOIN
                      RelatedSecretariats ON Letter.ToOrgID = RelatedSecretariats.DestinationOrgID_inSource
WHERE     ((RelatedSecretariats.RelatedSecretariatID = @RelatedSecretariatID) AND Letter.SendStatusID=2 and letterformat=1)


set @Number_Of_Letter=isnull(@Number_Of_Letter,0)
return(@Number_Of_Letter)
end



GO 

CREATE FUNCTION [dbo].[GetSystemValue](@varID int)
RETURNS nvarchar(255)  AS  
BEGIN 
if not exists(select * from settings where variableid=@varID and userid=-1)
 return(0)


 return(select value from settings where variableid=@varID and userid=-1)
END


GO 

CREATE FUNCTION [dbo].[has_file](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     LetterDataID
FROM         LetterData
WHERE     LetterID=@LetterID and extention>3)
set @res=1
else
set @res=0
return(@res)

END


 

GO 



CREATE FUNCTION [dbo].[has_Page](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit
if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention in (1,2))
set @res=1
else
set @res=0
return(@res)

END



GO 
CREATE FUNCTION [dbo].[has_tifPage](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention in (1,2))
set @res=1
else
set @res=0
return(@res)

END


GO 
create FUNCTION [dbo].[has_WordPage](@LetterID int)
RETURNS bit AS  
BEGIN 
declare @res bit

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention=3)
set @res=1
else
set @res=0
return(@res)

END


 

GO 


CREATE function [dbo].[InnerNo](@LetterID int)
  returns nvarchar(200)
begin
declare @SecCode nvarchar(50),@MYear nchar(2), @IndicatorID nvarchar(10), @ToOrgCode  nvarchar(50),
@FromOrgCode  nvarchar(50), @LetterTypCode  nvarchar(10),@result nvarchar(4000),@UserMemo nvarchar(255),
@FromPrecode  nvarchar(50)

SELECT
@SecCode=ltrim(isnull(Secretariats.Precode,'')),
@MYear=Letter.MYear,
@IndicatorID=Letter.IndicatorID,
@FromOrgCode= case when len(fromorg.code)>5  then  FromOrg.Code  else ltrim(isnull(fromorg.Precode,'')) end ,
@ToOrgCode= case when len(Toorg.code)>5  then  Toorg.Code  else ltrim(isnull(Toorg.Precode,'')) end ,
@LetterTypCode=ltrim(isnull(LetterTypes.PreCode,'')),
@UserMemo=ltrim(isnull(Usermemo,'')),
@FromPrecode=ltrim(isnull(fromorg.Precode,''))
FROM         Letter
INNER JOIN  FromOrganizations Toorg ON Letter.FromOrgID = Toorg.ID
INNER JOIN  FromOrganizations FromOrg ON Letter.FromOrgID = FromOrg.ID
INNER JOIN  LetterTypes ON Letter.Letter_Type = LetterTypes.ID
INNER JOIN  Secretariats ON Letter.SecretariatID = Secretariats.SecID
WHERE     (Letter.LetterID = @LetterID)

declare @Delimeter char(1)
set @Delimeter=ltrim(dbo.GetSystemValue(44))


set @result=case  dbo.GetSystemValue(35)
                   when 0 then ''
                   when 1 then @SecCode+@Delimeter
                   when 2 then @MYear+@Delimeter
                   when 3 then @IndicatorID+@Delimeter
                   when 4 then @ToOrgCode+@Delimeter
                   when 5 then @FromOrgCode+@Delimeter
                   when 6 then @LetterTypCode+@Delimeter
                   when 7 then @UserMemo+@Delimeter
                   when 8 then @FromPrecode+@Delimeter end+

             case  dbo.GetSystemValue(36)
                   when 0 then ''
                   when 1 then @SecCode+@Delimeter
                   when 2 then @MYear+@Delimeter
                   when 3 then @IndicatorID+@Delimeter
                   when 4 then @ToOrgCode+@Delimeter
                   when 5 then @FromOrgCode+@Delimeter
                   when 6 then @LetterTypCode+@Delimeter
                   when 7 then @UserMemo+@Delimeter 
                   when 8 then @FromPrecode+@Delimeter end+

             case  dbo.GetSystemValue(37)
                   when 0 then ''
                   when 1 then @SecCode+@Delimeter
                   when 2 then @MYear+@Delimeter
                   when 3 then @IndicatorID+@Delimeter
                   when 4 then @ToOrgCode+@Delimeter
                   when 5 then @FromOrgCode+@Delimeter
                   when 6 then @LetterTypCode+@Delimeter
                   when 7 then @UserMemo+@Delimeter 
                   when 8 then @FromPrecode+@Delimeter end+

             case  dbo.GetSystemValue(38)
                   when 0 then ''
                   when 1 then @SecCode+@Delimeter
                   when 2 then @MYear+@Delimeter
                   when 3 then @IndicatorID+@Delimeter
                   when 4 then @ToOrgCode+@Delimeter
                   when 5 then @FromOrgCode+@Delimeter
                   when 6 then @LetterTypCode+@Delimeter
                   when 7 then @UserMemo+@Delimeter 
                   when 8 then @FromPrecode+@Delimeter end+

             case  dbo.GetSystemValue(39)
                   when 0 then ''
                   when 1 then @SecCode+@Delimeter
                   when 2 then @MYear+@Delimeter
                   when 3 then @IndicatorID+@Delimeter
                   when 4 then @ToOrgCode+@Delimeter
                   when 5 then @FromOrgCode+@Delimeter
                   when 6 then @LetterTypCode+@Delimeter
                   when 7 then @UserMemo+@Delimeter 
                   when 8 then @FromPrecode+@Delimeter end+

             case  dbo.GetSystemValue(40)
                   when 0 then ''
                   when 1 then @SecCode+@Delimeter
                   when 2 then @MYear+@Delimeter
                   when 3 then @IndicatorID+@Delimeter
                   when 4 then @ToOrgCode+@Delimeter
                   when 5 then @FromOrgCode+@Delimeter
                   when 6 then @LetterTypCode+@Delimeter
                   when 7 then @UserMemo+@Delimeter 
                   when 8 then @FromPrecode+@Delimeter end

while charindex('  ',@result)<>0
  begin
   Set @result=replace(@result,'  ',' ')
   Set @result=replace(@result,'/ ','/')
   Set @result=replace(@result,' /','/')
  end 

set @result=replace(ltrim(rtrim(@result)),@Delimeter+@Delimeter,@Delimeter)
set @result=replace(@result,@Delimeter+@Delimeter,@Delimeter)


if substring(@result,len(@result),1)=@Delimeter
   set @result=substring(@result,1,len(@result)-1)

if substring(@result,1,1)=@Delimeter
   set @result=substring(@result,2,len(@result)-1)


return(@result)
end


GO 


CREATE   FUNCTION [dbo].[Is_ParentId] (@ChildID int,@ParentID int)
RETURNS bit AS
BEGIN

 declare @PI int,@CurID int,@stoper int
if @childid=@parentid return(1)
if @ParentID<5 return(1)
 set @CurID=@ChildID
set @stoper=1
 while @CurID<>0 and @stoper<4
   begin
    select @PI=ParentID from FromOrganizations where id=@CurID
    if @PI=@ParentID return(1)  else set @CurID=@PI
   set @stoper=@stoper+1
   end
return(0)
END




GO 

CREATE FUNCTION [dbo].[isLike](@fieldType varchar(50))
RETURNS  bit AS  
BEGIN 
 return case when @fieldType in ('float','int','bit','money','bigint','datetime') then 0 else 1 end
END




GO 

CREATE FUNCTION [dbo].[IsString](@fieldType varchar(50))
RETURNS bit  AS
BEGIN
return case when @fieldType in ('float','int','bit','money','bigint') then 0 else 1 end
END



GO 
create function [dbo].[Letter_Archived](@letterID int )
returns bit
begin
if exists(SELECT     *
FROM         LetterArchiveFolder INNER JOIN
                      ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
WHERE     (ArchiveFolder.UserID = 0) AND (LetterArchiveFolder.LetterID =@letterID ))
return(1)

return(0)
end






GO 



CREATE FUNCTION [dbo].[MiladiLeapyear](@y int)
RETURNS int AS
BEGIN
     if ((@y%4=0) and (@y%100<>0)) or ((@y%100=0) and ((@y/100)%4=0))
return 1

return 0

END

GO








CREATE FUNCTION [dbo].[newIndicatorid](@letter_type int,@LetterFormat int,@myear int,@SecretariatID int)
RETURNS int AS  
BEGIN
declare @RecivedInd int ,@SentInd  int,@innerind int,@newIndicatorid int

Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=1 

Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=2 


 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=3

  if @RecivedInd<dbo.GetSystemValue(3)
    set  @RecivedInd=dbo.GetSystemValue(3)


  if @SentInd<dbo.GetSystemValue(3) 
    set  @SentInd=dbo.GetSystemValue(3)

  if @innerind<dbo.GetSystemValue(3) 
    set  @innerind=dbo.GetSystemValue(3)


if @letter_type=3 
  return(@innerind)
  

 if dbo.GetSystemValue(5)=0
  begin
     if @SentInd>@RecivedInd 
        set @newIndicatorid=@SentInd
       else
        set @newIndicatorid=@RecivedInd

  end

 if dbo.GetSystemValue(5)=1
   begin
    if @letter_type=1 
     set @newIndicatorid=@RecivedInd
    if @letter_type=2
     set @newIndicatorid=@SentInd
   end

 if dbo.GetSystemValue(5)=2
  begin
   if @letter_type=2
      set @newIndicatorid=2*(1+(@SentInd-1)/2)

   if @letter_type=1
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1
  end

 if dbo.GetSystemValue(5)=3
  begin
   if @letter_type=1
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)

   if @letter_type=2
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1
  end
return(@newIndicatorid) 
END




GO 

CREATE  function [dbo].[Number_Of_Inbox](@SecretariatID int, @LetterFormat tinyint,@OrgID int,
@Proceeded bit,@myear tinyint,@Letter_Type int)
returns int

begin

return( SELECT count(Letter.letterID)
FROM ReCommites
INNER JOIN Letter  ON ReCommites.LetterID = Letter.LetterID
where (Letter.myear= @myear)
and (SecretariatID=@SecretariatID or @SecretariatID=0)
and (LetterFormat =@LetterFormat or  @LetterFormat=0)
and (OrgID =@OrgID )
and (Proceeded = @Proceeded)
and ( Letter_Type=@Letter_Type or @Letter_Type=0))

end




GO 
CREATE FUNCTION [dbo].[Number_Of_Week] (@D datetime)
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


CREATE FUNCTION [dbo].[NumberOfPage_ByMaxSize] (@letterID int ,@MaxSize int)
RETURNS int AS
BEGIN
declare @result int
set @result=-1
select top 1 @result=Pagenumber
from letterdata ld
where (select sum(datalength(image)) from letterData where letterid=@letterID and pagenumber<=ld.Pagenumber)<=1000*@MaxSize
order by Pagenumber desc
return(@result)
END




GO 



CREATE FUNCTION [dbo].[ParentId] (@ID int)
RETURNS int AS
BEGIN
 declare @i int,@PI int,@CurID int
 set @i=0
 set @CurID=@id
 while @i<10
   begin
    select @PI=ParentID from FromOrganizations where id=@CurID
    if @PI=1 return(@CurID)   else set @CurID=@PI

    set @i=@i+1
   end
return(@PI)
END




GO

CREATE  FUNCTION [dbo].[Recommite_DeadLine](@RecommiteID int,@today char(10))
RETURNS int AS
BEGIN
declare @letterid int, @deadlinedate char(10),@parentID int,@proceeded bit

select @parentID=id ,@letterid=letterid,@proceeded=proceeded,@deadlinedate=deadlinedate from recommites where  RecommiteID=@RecommiteID

if @proceeded=1
select @deadlinedate=min(deadlinedate)
from recommites
where letterid=@LetterID and Parentid=@ParentID and proceeded=0

if isnull(@deadlinedate,'')='' return(null)

return(dbo.ShamsiDatediff(@today,@deadlinedate))
END


GO
CREATE  FUNCTION [dbo].[Recommite_FirstProceed](@RecommiteID int)
RETURNS  varchar(10) AS
BEGIN

declare @result char(10)
declare @id int,@letterid int
select @id=id,@Letterid=Letterid
from [ReCommites]
where (RecommiteID=@RecommiteID )

select @result=Proceeddate from  ReCommites
where Letterid=@Letterid and parentid=@id

set @result=isnull(@result,'-')
return(@result)
END




GO


CREATE  FUNCTION [dbo].[Recommite_FirstView](@RecommiteID 	[int])
RETURNS  varchar(10) AS
BEGIN
declare @result char(10)
declare @id int,@letterid int
select @id=id,@Letterid=Letterid
from [ReCommites]
where (RecommiteID=@RecommiteID )

select @result=Viewdate from  ReCommites
where Letterid=@Letterid and parentid=@id

set @result=isnull(@result,'-')
return(@result)
END



GO

CREATE function [dbo].[Recommite_has_done](@RecommiteID int)
returns tinyint
begin
declare   @LetterID int, @ID int, @Type int

SELECT     @LetterID=LetterID, @ID=ID,@Type=Type
FROM         ReCommites
WHERE     (RecommiteID = @RecommiteID)
declare @all int ,@done int

if exists (select *
from  ReCommites
WHERE     LetterID=@LetterID and Type=@Type and id>@id and proceeded=0)  return(2)

return(1)

end




GO


CREATE  FUNCTION [dbo].[Recommites_by_indicator](@LetterID int )
RETURNS nvarchar(500) AS
BEGIN


declare @res nvarchar(500)
set @res=''

SELECT       @res=@res+','+FromOrganizations.Title+'  '+recommitedate
FROM         ReCommites  INNER JOIN
                      FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID
WHERE     (ReCommites.LetterID = @LetterID)

if @res<>'' set @res=substring(@res,2,len(@res)-1)

return(@res)

END





