--{Ranjbar 89.07.26 ID=147}
Raise
Select * from FromOrganizations

Select Top 200 ID , Title 
from FromOrganizations 
where  IsActive=1 
And ParentID= 4


Select Top 200 ID , Title 
from FromOrganizations 
where  IsActive=1 
And ParentID= 4 
And (isInnerOrg=1)
---------------------------------------------------------------------------
Update ArchiveFolder
Set ArchiveCenterID = 0
Where ArchiveCenterID is Null
GO

Update ArchiveFolder
Set UserID = 0
GO
---------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tr_Del_FromOrganizations]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [dbo].[Tr_Del_FromOrganizations]
GO

Create Trigger Tr_Del_FromOrganizations
On FromOrganizations
For Delete  
As
Declare @FromOrgID int
Select @FromOrgID = ID from Deleted
Print @FromOrgID
If @FromOrgID in (1,2,3)
Begin
   RaisError ('����� ����� ����� ��� ��� ���� ������� ���� �����', 16, 1)
   Rollback Transaction
End
GO
---------------------------------------------------------------------------
Select * from ArchiveFolder
Select * from ArchiveCeneter

Update ArchiveFolder
Set ArchiveCenterID = 0
Where ArchiveCenterID is Null
GO
Update ArchiveFolder
Set UserID = 0
GO
---------------------------------------------------------------------------
{Ranjbar 89.07.27 ID=}
---------------------------------------------------------------------------
insert_ArchiveFolder

Alter PROCEDURE [dbo].[Insert_ArchiveFolder]  
      (@FolderID  [int] output, @ParentFolderID [int] , @Title  [nvarchar](100) , @ArchiveCenterID int=-1 ,  
       @UserID  [int] , @Notes  [nvarchar](500), @Place nvarchar(100))   
AS 
INSERT INTO dbo.ArchiveFolder(ParentFolderID,Title,UserID,Notes,ArchiveCenterID ,Place)  
VALUES(@ParentFolderID,@Title,@UserID,@Notes,@ArchiveCenterID,@Place)  
Select @folderid= @@identity  
 
---------------------------------------------------------------------------
get_ArchiveFolder_byUserID

  
  
Create PROCEDURE [dbo].[get_ArchiveFolder_byUserID]  
@userID int,@SecID int =0,@ArchiveCenterID int = -1  
AS  
if @ArchiveCenterID<0  
SELECT      *  
FROM         ArchiveFolder  
WHERE     (UserID = @userID)  
else  
SELECT AF.*  
FROM ArchiveFolder AF  
Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID  
Where(UAA.SecID = @SecID)  
And(UAA.UserID = @userID)  
And(AF.ArchiveCenterID = @ArchiveCenterID)  
And(UAA.IsAccess = 1)  
  
  
  
Get_ArchiveFolder_ByAccess

  
  
  
Create PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess] @userID int , @SecID int  
AS  
declare  @ArchiveCenterID int  
  
SELECT @ArchiveCenterID=[ArchiveCenterID]  
  FROM  Secretariats  
where  SecID=@SecID  
  
  
SELECT AF.*  
FROM ArchiveFolder AF  
Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID  
Where(UAA.SecID = @SecID)  
And(UAA.UserID = @userID)  
And(AF.ArchiveCenterID = @ArchiveCenterID)  
And(UAA.IsAccess = 1)  

---------------------------------------------------------------------------

  

Alter Function dbo.GetSystemValue(@VariableName Nvarchar(50))  
Returns nvarchar(255)  
AS    
BEGIN   

/*Alter Function dbo.GetSystemValue(@varID int)  
Returns nvarchar(255)  
AS    
BEGIN   
   if not exists(select * from settings where variableid=@varID and userid = -1)  
      Return(0)  
   Return(select value from settings where variableid=@varID and userid = -1)  
END*/


   if not Exists(Select * from settings where VariableName = @VariableName And UserID = -1)  
      Return(0)  
   Return(Select Value from settings where VariableName=@VariableName And UserID = -1)  
END  
  
  
Select * from settings 
Where userid = -1 
  And VariableName = 'LetterFormulaPart1'

Delete from settings
---------------------------------------------------------------------------
--Get_All_Letter
  
Alter PROCEDURE [dbo].[Get_All_Letter]  
  
@Secretariatid int,      
@myear tinyint,      
@Letter_Type int,      
@LetterFormat int,      
@where nvarchar(2000),      
@top smallint ,      
@archiveFolderID int,      
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)   
@userid int     
As      
Declare @sqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)  
DECLARE @InnerNo NVARCHAR(500);      
declare @Delimeter char(1)      
set @Delimeter=dbo.GetSystemValue('LetterFormulaSeperator')--44      
set @InnerNo=case  dbo.GetSystemValue('LetterFormulaPart1') --35     
                   when 0 then ''      
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'      
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'      
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'      
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'      
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'      
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'      
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'      
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+      
      
             case  dbo.GetSystemValue('LetterFormulaPart2')--36      
                   when 0 then ''      
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'      
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'      
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'      
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'      
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'      
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'      
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'      
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+      
      
             case  dbo.GetSystemValue('LetterFormulaPart3')--37
                   when 0 then ''      
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'      
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'      
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'      
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'      
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'      
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'      
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'      
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+      
      
             case  dbo.GetSystemValue('LetterFormulaPart4')--38      
                   when 0 then ''      
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'      
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'      
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'      
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'      
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'      
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'      
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'      
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+      
      
             case  dbo.GetSystemValue('LetterFormulaPart5')--39      
                   when 0 then ''      
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                       
		   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'      
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'      
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'      
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'      
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'      
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'      
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+      
      
             case  dbo.GetSystemValue('LetterFormulaPart6')--40      
                   when 0 then ''      
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'      
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'      
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'      
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'      
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'      
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'      
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'      
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' 
             end      
      
IF len(@InnerNo)>5      
if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'      
   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)      
      
if @innerno<>''      
set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'      
else      
set @innerno='cast(indicatorid as nvarchar(500))'      
  
set @archiveLetter='select  l.LetterID  
from LETTER L  
LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid  
LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID  
LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID and uac.secid=L.SecretariatID  
where ISNULL(uac.UserID,'+cast(@userid as varchar(10))+')='+cast(@userid as varchar(10))+' and ISNULL(uac.ISAccess,1)=1'  
  
      
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,      
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,      
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,      
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,      
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,      
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,     
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@innerno+'  InnerNo,Letter.Archived      
,ActionTypeTitle     
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle     
,Letter.ReceiveTypeID , letter.ClassificationID   
    
FROM Letter left  JOIN      
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN      
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID      
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type      
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID      
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID      
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'      
            
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
      
   
if @ArchiveStatus=0      
 set @where=@where+' and archived=0'  
      
if @ArchiveStatus=1      
 set @where=@where+' and archived=1'   
      
set @archiveLetter=@archiveLetter+@where       
      
if @ArchiveStatus=2      
 begin      
   set @where=@where+' and      
       not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveFolder Where  
       LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID      
       and  (ArchiveFolder.UserID=0 or ArchiveFolder.Archivecenterid>0)  and Letterid =Letter.LetterID)  and archived=1'      
end      
  
     
if @archiveFolderID>0      
    set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'       
set @where=@where +' and Letter.letterid in ('+@archiveLetter+')'  
      
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '      
print @sqlcommand      
exec sp_executesql   @sqlCommand      
  


---------------------------------------------------------------------------
Select_Letter

  
CREATE PROCEDURE [dbo].[select_Letter]    
 @LetterID int      
AS    
Select Letter.*,title senderTitle , dbo.InnerNo(Letter.LetterID) as IndicatorInnerNo  
from Letter left JOIN    
     FromOrganizations ON Letter.ToOrgID = FromOrganizations.ID    
WHERE     
 LetterID=@LetterID  
  

---------------------------------------------------------------------------
  
  
Alter function [dbo].[InnerNo](@LetterID int)  
Returns nvarchar(200)  
begin  
declare @SecCode nvarchar(50),@MYear nchar(2), @IndicatorID nvarchar(10), @ToOrgCode  nvarchar(50),  
@FromOrgCode  nvarchar(50), @LetterTypCode  nvarchar(10),@result nvarchar(4000),@UserMemo nvarchar(255),  
@FromPrecode  nvarchar(50)  
  
SELECT  
@SecCode=ltrim(isnull(Secretariats.Precode,'')),  
@MYear=Letter.MYear,  
@IndicatorID=Letter.IndicatorID,  
@FromOrgCode= case when len(fromorg.code)>5  then  FromOrg.Code  else ltrim(isnull(fromorg.code,'')) end ,  
@ToOrgCode= case when len(Toorg.code)>5  then  Toorg.Code  else ltrim(isnull(Toorg.code,'')) end ,  
@LetterTypCode=ltrim(isnull(LetterTypes.PreCode,'')),  
@UserMemo=ltrim(isnull(Usermemo,'')),  
@FromPrecode=ltrim(isnull(fromorg.Precode,''))  
FROM         Letter  
INNER JOIN  FromOrganizations Toorg ON Letter.ToorgID = Toorg.ID  
INNER JOIN  FromOrganizations FromOrg ON Letter.FromOrgID = FromOrg.ID  
INNER JOIN  LetterTypes ON Letter.Letter_Type = LetterTypes.ID  
INNER JOIN  Secretariats ON Letter.SecretariatID = Secretariats.SecID  
WHERE     (Letter.LetterID = @LetterID)         
  
declare @Delimeter char(1)  
set @Delimeter=ltrim(dbo.GetSystemValue('LetterFormulaSeperator')) --44 
  
  
set @result=case  dbo.GetSystemValue('LetterFormulaPart1')--35  
                   when 0 then ''  
                   when 1 then @SecCode+@Delimeter  
                   when 2 then @MYear+@Delimeter  
                   when 3 then @IndicatorID+@Delimeter  
                   when 4 then @ToOrgCode+@Delimeter  
                   when 5 then @FromOrgCode+@Delimeter  
                   when 6 then @LetterTypCode+@Delimeter  
                   when 7 then @UserMemo+@Delimeter  
                   when 8 then @FromPrecode+@Delimeter end+  
  
             case  dbo.GetSystemValue('LetterFormulaPart2')--36  
                   when 0 then ''  
                   when 1 then @SecCode+@Delimeter  
                   when 2 then @MYear+@Delimeter  
                   when 3 then @IndicatorID+@Delimeter  
                   when 4 then @ToOrgCode+@Delimeter  
                   when 5 then @FromOrgCode+@Delimeter  
                   when 6 then @LetterTypCode+@Delimeter  
                   when 7 then @UserMemo+@Delimeter   
                   when 8 then @FromPrecode+@Delimeter end+  
  
             case  dbo.GetSystemValue('LetterFormulaPart3')--37  
                   when 0 then ''  
                   when 1 then @SecCode+@Delimeter  
                   when 2 then @MYear+@Delimeter  
                   when 3 then @IndicatorID+@Delimeter  
                   when 4 then @ToOrgCode+@Delimeter  
                   when 5 then @FromOrgCode+@Delimeter  
                   when 6 then @LetterTypCode+@Delimeter  
                   when 7 then @UserMemo+@Delimeter   
                   when 8 then @FromPrecode+@Delimeter end+  
  
             case  dbo.GetSystemValue('LetterFormulaPart4')--38  
                   when 0 then ''  
                   when 1 then @SecCode+@Delimeter  
                   when 2 then @MYear+@Delimeter  
                   when 3 then @IndicatorID+@Delimeter  
                   when 4 then @ToOrgCode+@Delimeter  
                   when 5 then @FromOrgCode+@Delimeter  
                   when 6 then @LetterTypCode+@Delimeter  
                   when 7 then @UserMemo+@Delimeter   
                   when 8 then @FromPrecode+@Delimeter end+  
  
             case  dbo.GetSystemValue('LetterFormulaPart5')--39  
                   when 0 then ''  
                   when 1 then @SecCode+@Delimeter  
                   when 2 then @MYear+@Delimeter  
                   when 3 then @IndicatorID+@Delimeter  
                   when 4 then @ToOrgCode+@Delimeter  
                   when 5 then @FromOrgCode+@Delimeter  
                   when 6 then @LetterTypCode+@Delimeter  
                   when 7 then @UserMemo+@Delimeter   
                   when 8 then @FromPrecode+@Delimeter end+  
  
             case  dbo.GetSystemValue('LetterFormulaPart6')--40  
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
  
  

---------------------------------------------------------------------------
select * 
from SysObjects
Where Name = 'GetSystemValue'

---------------------------------------------------------------------------
Get_LastIndicatorID

/*GetSystemValue ����� �����*/
Alter procedure [dbo].[Get_LastIndicatorID](@letter_type tinyint ,@SecretariatID int,@Myear int,  
@LetterFormat tinyint,@newIndicatorid int output)  
as  
declare @RecivedInd int ,@SentInd  int,@innerind int,@Docind int  
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=1   
  
Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=2   
  
  
 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=3  
  
 Select @Docind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=4  
  
  if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3   
    set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3  
  
  
  if @SentInd<dbo.GetSystemValue('BeginIndicator')--3   
    set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3  
  
  if @innerind<dbo.GetSystemValue('BeginIndicator')--3   
    set  @innerind=dbo.GetSystemValue('BeginIndicator')--3  
  
  
if @letter_type=3   
 begin  
  set @newIndicatorid=@innerind  
  return  
 end  
if @letter_type=4   
 begin  
  set @newIndicatorid=@docind  
  return  
 end  
  
  
 if dbo.GetSystemValue('UniqeIndicator')=0   --5 
  begin  
     if @SentInd>@RecivedInd  
        set @newIndicatorid=@SentInd  
       else  
        set @newIndicatorid=@RecivedInd  
  
  end  
  
 if dbo.GetSystemValue('UniqeIndicator')=1  --5
   begin  
    if @letter_type=1  
     set @newIndicatorid=@RecivedInd  
    if @letter_type=2  
     set @newIndicatorid=@SentInd  
   end  
  
 if dbo.GetSystemValue('UniqeIndicator')=2  --5
  begin  
   if @letter_type=2  
      set @newIndicatorid=2*(1+(@SentInd-1)/2)  
  
   if @letter_type=1  
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1  
  end  
  
 if dbo.GetSystemValue('UniqeIndicator')=3  --5
  begin  
   if @letter_type=1  
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)  
  
   if @letter_type=2  
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1  
  end  
  
  

---------------------------------------------------------------------------

newIndicatorid

/*GetSystemValue ����� �����*/
Alter Function dbo.NewIndicatorID(@letter_type int,@LetterFormat int,@myear int,@SecretariatID int)  
RETURNS int AS    
BEGIN  
declare @RecivedInd int ,@SentInd  int,@innerind int,@newIndicatorid int  
  
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=1   
  
Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=2   
  
  
 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat  
 and SecretariatID=@SecretariatID and letter_type=3  
  
  if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3  
    set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3  
  
  
  if @SentInd<dbo.GetSystemValue('BeginIndicator')--3   
    set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3  
  
  if @innerind<dbo.GetSystemValue('BeginIndicator')--3   
    set  @innerind=dbo.GetSystemValue('BeginIndicator')--3  
  
  
if @letter_type=3   
  return(@innerind)  
    
  
 if dbo.GetSystemValue('UniqeIndicator')=0  --5
  begin  
     if @SentInd>@RecivedInd   
        set @newIndicatorid=@SentInd  
       else  
        set @newIndicatorid=@RecivedInd  
  
  end  
  
 if dbo.GetSystemValue('UniqeIndicator')=1  --5
   begin  
    if @letter_type=1   
     set @newIndicatorid=@RecivedInd  
    if @letter_type=2  
     set @newIndicatorid=@SentInd  
   end  
  
 if dbo.GetSystemValue('UniqeIndicator')=2  --5
  begin  
   if @letter_type=2  
      set @newIndicatorid=2*(1+(@SentInd-1)/2)  
  
   if @letter_type=1  
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1  
  end  
  
 if dbo.GetSystemValue('UniqeIndicator')=3  --5
  begin  
   if @letter_type=1  
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)  
  
   if @letter_type=2  
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1  
  end  
return(@newIndicatorid)   
END  

---------------------------------------------------------------------------
Select * from Recommites

Get_LetterAction_By_LetterID 

  
Alter PROCEDURE dbo.Get_LetterAction_By_LetterID @LetterID int  
AS  
BEGIN  

SET NOCOUNT ON  
SELECT LetterID, LatestActionTypeID, LatestActionReason  
FROM Letter  
WHERE (LetterID = @LetterID)  

END  
  
  

---------------------------------------------------------------------------
GetList 

CREATE PROCEDURE [dbo].[GetList](@ListID int)  
AS   
SELECT * --KeyValue, Title, Notes  
FROM ListItems
Where ListID = 7

@ListID  

---------------------------------------------------------------------------
Select Archived from Letter
---------------------------------------------------------------------------
Alter PROCEDURE [dbo].[Get_All_Letter]    
    
@Secretariatid int,        
@myear tinyint,        
@Letter_Type int,        
@LetterFormat int,        
@where nvarchar(2000),        
@top smallint ,        
@archiveFolderID int,        
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)     
@userid int       
As        
Declare @sqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)    
DECLARE @InnerNo NVARCHAR(500);        
declare @Delimeter char(1)        
set @Delimeter=dbo.GetSystemValue('LetterFormulaSeperator')--44        
set @InnerNo=case  dbo.GetSystemValue('LetterFormulaPart1') --35       
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart2')--36        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart3')--37  
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart4')--38        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart5')--39        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                         
     when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart6')--40        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+'   
             end        
        
IF len(@InnerNo)>5        
if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'        
   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)        
        
if @innerno<>''        
set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'        
else        
set @innerno='cast(indicatorid as nvarchar(500))'        
    
set @archiveLetter='select  l.LetterID    
from LETTER L    
LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid    
LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID    
LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID and uac.secid=L.SecretariatID    
where ISNULL(uac.UserID,'+cast(@userid as varchar(10))+')='+cast(@userid as varchar(10))+' and ISNULL(uac.ISAccess,1)=1'    
    
        
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,        
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,        
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,        
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,        
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,        
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,       
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@innerno+'  InnerNo,Letter.Archived        
,ActionTypeTitle       
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle       
,Letter.ReceiveTypeID , letter.ClassificationID     
      
FROM Letter left  JOIN        
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN        
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID        
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type        
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID        
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID        
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'        
              
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
        
------------------
if @ArchiveStatus=0   --����    
   Set @where=@where+' and archived=0'    
        
if @ArchiveStatus=1  --(����� ��� (������ ���
   Set @where=@where+' and archived=1'     
        
Set @archiveLetter=@archiveLetter+@where         
        
if @ArchiveStatus=2 --(����� ���� ���� ���� (������ ����       
begin        
   Set @where=@where+' and        
       not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveFolder Where    
       LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID        
       and  (ArchiveFolder.UserID=0 or ArchiveFolder.Archivecenterid>0)  and Letterid =Letter.LetterID)  and archived=1'        
end        
------------------
       
if @ArchiveFolderID>0        
    set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'         
set @where=@where +' and Letter.letterid in ('+@archiveLetter+')'    
        
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '        
print @sqlcommand        
exec sp_executesql   @sqlCommand   

---------------------------------------------------------------------------
/*Ranjbar ��� ����� ����� ���� ��� ����� ��� ��*/

Alter PROCEDURE [dbo].[Get_All_Letter]    
    
@Secretariatid int,        
@myear tinyint,        
@Letter_Type int,        
@LetterFormat int,        
@where nvarchar(2000),        
@top smallint ,        
@archiveFolderID int,        
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)     
@userid int       
As        
Declare @sqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)    
DECLARE @InnerNo NVARCHAR(500);        
declare @Delimeter char(1)        
Declare @ArchivedText Nvarchar(2000)

set @Delimeter=dbo.GetSystemValue('LetterFormulaSeperator')--44        
set @InnerNo=case  dbo.GetSystemValue('LetterFormulaPart1') --35       
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart2')--36        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart3')--37  
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart4')--38        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart5')--39        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                         
     when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart6')--40        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+'   
             end        
        
IF len(@InnerNo)>5        
if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'        
   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)        
        
if @innerno<>''        
set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'        
else        
set @innerno='cast(indicatorid as nvarchar(500))'        
    
set @archiveLetter='select  l.LetterID    
from LETTER L    
LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid    
LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID    
LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID and uac.secid=L.SecretariatID    
where ISNULL(uac.UserID,'+cast(@userid as varchar(10))+')='+cast(@userid as varchar(10))+' and ISNULL(uac.ISAccess,1)=1'    
    
        
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,        
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,        
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,        
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,        
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,        
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,       
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@innerno+'  InnerNo,Letter.Archived        
,ActionTypeTitle       
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle       
,Letter.ReceiveTypeID , letter.ClassificationID     
      
FROM Letter left  JOIN        
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN        
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID        
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type        
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID        
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID        
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'        
              
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
        
----
if @ArchiveStatus=0   --����    
   Set @where=@where+' And Archived=0 '    

Set @ArchivedText = ' Exists (SELECT LetterArchiveFolder.letterID 
                              FROM LetterArchiveFolder,ArchiveFolder 
                              Where(Letterid =Letter.LetterID)        
                                And(ArchiveFolder.UserID=0 or ArchiveFolder.Archivecenterid>0)  
                                And(LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID) )  
                      And Archived=1  '        
if @ArchiveStatus=1  --(����� ��� (������ ���
   /*Ranjbar ID=155*/
   --Set @where = @where+' and Archived=1'     
   Set @where=@where+' And ' + @ArchivedText
        
Set @ArchiveLetter=@ArchiveLetter+@where         
        
if @ArchiveStatus=2 --(����� ���� ���� ���� (������ ����       
   Set @where=@where+' And Not ' + @ArchivedText        

----
       
if @ArchiveFolderID>0        
    set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'         
set @where=@where +' and Letter.letterid in ('+@archiveLetter+')'    
        
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '        
print @sqlcommand        
exec sp_executesql   @sqlCommand 

-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 3  
---------------------------------------------------------------------------
Select * From FromOrganizations Where IsInnerOrg=1 And IsActive = 1
---------------------------------------------------------------------------
GetUserLogout_status

Select * from UserLoginLogout  
  
Drop PROCEDURE [dbo].[GetUserLogout_status]  
  
CREATE PROCEDURE [dbo].[GetUserLogout_status]( @UserID [int],@logout Bit output, @IsSafeLogout  bit output)  
AS  
  
declare @LogoutTime datetime  
set @logout=0  
set @isSafeLogout=0  

Select Top 1 @LogoutTime=LogoutTime,@isSafeLogout=isSafeLogout  
from UserLoginLogout  
where userid=@UserID  
order by UserLoginLogoutID desc  

if @LogoutTime is null set @logout=1  
if @isSafeLogout=1  
   Set @logout=1  
else  
   if DATEDIFF(second, @LogoutTime,getdate())>60  
      Set @logout=1  
  
---------------------------------------------------------------------------
Select * from Accesses
Select Count(ID) as AccessCount from Users Where AccessID = 3
---------------------------------------------------------------------------
Select * from ArchiveFolder
---------------------------------------------------------------------------
Insert_NewActionsAccess

/*CREATE PROCEDURE [dbo].[insert_newActionsAccess]    
AS    
    
Delete from ActionsAccess   
where Str(Formtag)+ActionID not in (Select str(Formtag)+ID from Actions)    
    
INSERT INTO dbo.ActionsAccess(AccessID,ActionID,FormTag,HasAccess)      
SELECT Accesses.ID,  Actions.ID,Actions.FormTag,1     
FROM Accesses,Actions     
Where Str(Accesses.ID)+Actions.ID not in (Select str(Accesses.ID)+ActionID from dbo.ActionsAccess)    
*/  
Create Procedure dbo.Insert_NewActionsAccess  
AS    
    
Delete from ActionsAccess   
where Str(Formtag) not in (Select Str(FormTag) from Actions)        
And RTrim(ActionID) not in (Select RTrim(ID) from Actions)   
  
/*���� ������*/        
INSERT INTO [dbo].[ActionsAccess]( [AccessID],[ActionID],[FormTag],[HasAccess])             
SELECT Acc.ID,A.ID,A.FormTag,1            
FROM Accesses Acc,Actions A           
where (Str(A.formtag)+LTrim(RTrim(A.ID))+ Str(Acc.ID) not in     
      (Select Str(AAC.formtag)+LTrim(RTrim(AAC.ActionID))+ Str(AAC.AccessID) From ActionsAccess AAC) )  
---------------------------------------------------------------------------
delete from Actions  
delete from ActionsAccess  
---------------------------------------------------------------------------
Select * from UserSecretariats
Select * from ArchiveCenter
Select * from ArchiveFolder


--Get_ArchiveFolder_ByAccess
Alter PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess] @userID int , @SecID int  
AS  
declare  @ArchiveCenterID int  
  
SELECT @ArchiveCenterID=[ArchiveCenterID]  
FROM  Secretariats  
where  SecID=@SecID  
  
SELECT AF.*  
FROM ArchiveFolder AF , UserAccArchive UAA  
Where(UAA.SecID = @SecID)  
And(UAA.UserID = @userID)  
And(AF.ArchiveCenterID = @ArchiveCenterID)  
--And(AF.UserID = @ArchiveCenterID * 10000)  
And(UAA.IsAccess = 1)  
And(UAA.ArchiveFolderID = AF.FolderID)  

---------------------------------------------------------------------------

--Delete from UserAccArchive

Insert into UserAccArchive(UserID,SecID,ArchiveFolderID,IsAccess)

Select US.UserID, S.SecID ,AF.FolderID,1
From Secretariats S ,ArchiveFolder AF,UserSecretariats US, Users U
Where(S.SecID = US.SecID)
  And(AF.ArchiveCenterID > 0)
  And(AF.ArchiveCenterID = S.ArchiveCenterID)
  And(not Exists(Select * 
                 From UserAccArchive 
                 Where UserID = us.UserID 
                   And SecID = S.SecID 
                   And ArchiveFolderID = AF.FolderID) ) 
GO
---------------------------------------------------------------------------
get_ArchiveFolder_byUserID

  
  
Alter PROCEDURE [dbo].[get_ArchiveFolder_byUserID]  
@userID int,@SecID int =0,@ArchiveCenterID int = -1  
AS  
if @ArchiveCenterID<0  --����� ��� �� �������
SELECT      *  
FROM         ArchiveFolder  
WHERE     (UserID = @userID)  
else  
SELECT AF.*  --����� ��� �� ��������
FROM ArchiveFolder AF  
Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID  
Where(UAA.SecID = @SecID)  
And(UAA.UserID = @userID)  
And(AF.ArchiveCenterID = @ArchiveCenterID)  
And(UAA.IsAccess = 1)  

---------------------------------------------------------------------------
Sp_Sel_UserAccArchive

  
Alter Procedure [dbo].[Sp_Sel_UserAccArchive] @SecID int , @userID int  
As  
  
Select UAA.*  
From UserAccArchive UAA ,Secretariats Sec ,Users U   
Where(UAA.SecID = @SecID)  
 And(UAA.UserID = @userID)  
And(UAA.SecID = Sec.SecID)
And(UAA.UserID = U.ID)
  
Exec [dbo].[Sp_Sel_UserAccArchive] 4,1  
---------------------------------------------------------------------------
Select * from Actions
Select * from Accesses
Select * from ActionsAccess Where AccessID = 8
Select Count(AccessID)AccessCount from ActionsAccess Where AccessID = 6 And HasAccess = 1

---------------------------------------------------------------------------
Get_ArchiveFolder_ByAccess
--------------------------------------------------------------------------
Select * from ActionsAccess
Select * from Accesses
Select * from Actions
Select * from ApplicationForms

Delete from Actions

Select AA.* 
from ActionsAccess AA , Accesses A , Actions Ac , ApplicationForms AF
Where AA.ActionID = Ac.ID
  And AA.AccessID = A.ID
And AA.FormTag = AF.ID

---------------------------------------------------------------------------


CREATE PROCEDURE [dbo].[Get_All_Letter]    
    
@Secretariatid int,        
@myear tinyint,        
@Letter_Type int,        
@LetterFormat int,        
@where nvarchar(2000),        
@top smallint ,        
@archiveFolderID int,        
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)     
@userid int       
As        
Declare @sqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)    
DECLARE @InnerNo NVARCHAR(500);        
declare @Delimeter char(1)        
Declare @ArchivedText Nvarchar(2000)

set @Delimeter=dbo.GetSystemValue('LetterFormulaSeperator')--44        
set @InnerNo=case  dbo.GetSystemValue('LetterFormulaPart1') --35       
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart2')--36        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart3')--37  
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart4')--38        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart5')--39        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                         
     when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart6')--40        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+'   
             end        
        
IF len(@InnerNo)>5        
if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'        
   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)        
        
if @innerno<>''        
set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'        
else        
set @innerno='cast(indicatorid as nvarchar(500))'        
    
set @archiveLetter='select  l.LetterID    
from LETTER L    
LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid    
LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID    
LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID and uac.secid=L.SecretariatID    
where ISNULL(uac.UserID,'+cast(@userid as varchar(10))+')='+cast(@userid as varchar(10))+' and ISNULL(uac.ISAccess,1)=1'    
    
        
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,        
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,        
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,        
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,        
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,        
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,       
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@innerno+'  InnerNo,Letter.Archived        
,ActionTypeTitle       
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle       
,Letter.ReceiveTypeID , letter.ClassificationID     
      
FROM Letter left  JOIN        
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN        
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID        
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type        
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID        
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID        
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'        
              
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
        
----
if @ArchiveStatus=0   --����    
   Set @where=@where+' And Archived=0 '    

Set @ArchivedText = ' Exists (SELECT LetterArchiveFolder.letterID 
                              FROM LetterArchiveFolder,ArchiveFolder 
                              Where(Letterid =Letter.LetterID)        
                                And(ArchiveFolder.UserID=0 or ArchiveFolder.Archivecenterid>0)  
                                And(LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID) )  
                      And Archived=1  '        
if @ArchiveStatus=1  --(����� ��� (������ ���
   /*Ranjbar ID=155*/
   --Set @where = @where+' and Archived=1'     
   Set @where=@where+' And ' + @ArchivedText
        
Set @ArchiveLetter=@ArchiveLetter+@where         
        
if @ArchiveStatus=2 --(����� ���� ���� ���� (������ ����       
   Set @where=@where+' And Not ' + @ArchivedText        

----
       
if @ArchiveFolderID>0        
    set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'         
set @where=@where +' and Letter.letterid in ('+@archiveLetter+')'    
        
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '        
print @sqlcommand        
exec sp_executesql   @sqlCommand 

-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 3


GO

---------------------------------------------------------------------------
SetSystemSetting

Create Procedure [dbo].[SetSystemSetting] @VariableName varchar(50),@Value nvarchar(255)  
AS  
Exec SetUserSetting -1 ,@VariableName ,@Value  

--  Exec SetUserSetting -1 ,'DayInWeekForBackup' ,20
-----

SetUserSetting
  
CREATE PROCEDURE [dbo].[SetUserSetting] @UserID  int ,@VariableName varchar(50),@Value nvarchar(255)  
AS

if not Exists(select * from Settings WHERE (UserID = @UserID) AND (VariableName = @VariableName))  
   Insert Into Settings(UserID,VariableName,Value) values(@UserID,@VariableName,@Value)  

Update Settings   
Set Value = @Value  
Where (UserID = @UserID) AND (VariableName = @VariableName)  
   

---------------------------------------------------------------------------
Select * from Settings Where VariableName = 'UniqeIndicator' or VariableName = 'DayInWeekForBackup' 

declare @P1 nvarchar(510)
set @P1=N'0'
exec GetSystemSetting 'UniqeIndicator', @P1 output
select @P1
----------
Declare @P1 nvarchar(510)
Set @P1=N'0'
Exec GetSystemSetting 'DayInWeekForBackup', @P1 output
Select @P1
---------------------------------------------------------------------------
if Exists(Select * From Settings Where VariableID = 99 And UserID = -1 And VariableName Is null)
   Update Settings Set VariableName = '99' Where VariableID = 99
GO
---------------------------------------------------------------------------
Select TOP 1000 ID, Title, ResponsibleStaffer,Code 
from FromOrganizations
where  ParentID= :ParentID 
order by Title


Select TOP 1000 ID, (Case When RTrim(ResponsibleStaffer)='-' or RTrim(ResponsibleStaffer)='_' then RTrim(Title) else RTrim(Title)+' _ '+RTrim(ResponsibleStaffer) end) AS Title, ResponsibleStaffer,Code 
from FromOrganizations
where  ParentID= :ParentID 
order by Title


Case RTrim(ResponsibleStaffer)='-' then RTrim(Title) else RTrim(Title)+' _ '+RTrim(ResponsibleStaffer) end

---------------------------------------------------------------------------
SELECT *  
FROM ArchiveFolder  
WHERE(UserID = 1)
And(ArchiveCenterID = -1)
---------------------------------------------------------------------------
/*����� ������� ���� �� ���� ������� ������ �� ���� ������� ������*/
Declare @UserID int
Declare @FaxExtention Nvarchar(5)
Declare @FaxDirectory Nvarchar(200)
Declare @FaxCartableOrgID int
Declare @FaxUpdatePriod int
Declare @FaxUpdate int

Select @FaxExtention     = Value From Settings Where UserID = -1 And VariableName = 'FaxExtention'
Select @FaxDirectory     = Value From Settings Where UserID = -1 And VariableName = 'FaxDirectory'
Select @FaxCartableOrgID = Value From Settings Where UserID = -1 And VariableName = 'FaxCartableOrgID'
Select @FaxUpdatePriod   = Value From Settings Where UserID = -1 And VariableName = 'FaxUpdatePriod'
Select @FaxUpdate        = Value From Settings Where UserID = -1 And VariableName = 'FaxUpdate'

Delete From Settings Where UserID <> -1 And VariableName in ('FaxExtention','FaxDirectory',
                     'FaxCartableOrgID','FaxUpdatePriod','FaxUpdate')

Declare Cur_Users Cursor 
For
Select ID From Users

Open Cur_Users 
Fetch Cur_Users into @UserID
While @@Fetch_Status = 0 
begin
   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@FaxExtention,'FaxExtention') 

   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@FaxDirectory+'\','FaxDirectory') 

   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@FaxCartableOrgID,'FaxCartableOrgID') 

   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@FaxUpdatePriod,'FaxUpdatePriod') 

   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@FaxUpdate,'FaxUpdate')

   Fetch Next from Cur_Users into @UserID
end

Close Cur_Users
Deallocate Cur_Users

Delete From Settings Where UserID = -1 And VariableName in ('FaxExtention','FaxDirectory',
                     'FaxCartableOrgID','FaxUpdatePriod','FaxUpdate')
GO
---------------------------------------------------------------------------
Create procedure [dbo].[Get_LastIndicatorID](@letter_type tinyint ,@SecretariatID int,@Myear int,    
@LetterFormat tinyint,@newIndicatorid int output)    
as

declare @RecivedInd int ,@SentInd  int,@innerind int,@Docind int    

/*����� ����� ���� ��� �����*/    
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat    
 and SecretariatID=@SecretariatID and letter_type=1     

/*����� ����� ���� ��� �����*/        
Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat    
 and SecretariatID=@SecretariatID and letter_type=2     
    
 /*����� ����� ���� ��� �����*/    
 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat    
 and SecretariatID=@SecretariatID and letter_type=3    
    
 /*����� ����� ���� ��� �����*/
 Select @Docind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat    
 and SecretariatID=@SecretariatID and letter_type=4    

/*������� - ���� � ��������� ���� ���� ��� �����*/    
if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3     
   set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3    
    
/*������� - ���� � ��������� ���� ���� ��� �����*/        
if @SentInd<dbo.GetSystemValue('BeginIndicator')--3     
   set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3 
   
/*������� - ���� � ��������� ���� ���� ��� �����*/            
if @innerind<dbo.GetSystemValue('BeginIndicator')--3     
   set @innerind=dbo.GetSystemValue('BeginIndicator')--3    
    
/*���� �����*/    
if @letter_type=3     
begin    
  set @newIndicatorid=@innerind    
  return    
end    

/*���� �����*/  
if @letter_type=4     
begin    
  set @newIndicatorid=@docind    
  return    
end    
    
/*����� ���� ����� � ����� ������ ����*/    
if dbo.GetSystemValue('UniqeIndicator')=0   --5   
begin    
   if @SentInd > @RecivedInd    
      set @newIndicatorid=@SentInd    
   else    
      set @newIndicatorid=@RecivedInd        
end    

/*����� ���� ����� � ����� ���� � ����� ����*/    
if dbo.GetSystemValue('UniqeIndicator')=1  --5  
begin    
   if @letter_type=1    
      set @newIndicatorid=@RecivedInd    
   if @letter_type=2    
      set @newIndicatorid=@SentInd    
end    

/*����� ���� ��� ����� ���  � ����� ��� ����*/    
if dbo.GetSystemValue('UniqeIndicator')=2  --5  
begin    
   if @letter_type=2    
      set @newIndicatorid=2*(1+(@SentInd-1)/2)    
    
   if @letter_type=1    
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1    
end    

/*����� ���� ��� ����� ���  � ����� ��� ����*/    
if dbo.GetSystemValue('UniqeIndicator')=3  --5  
begin    
   if @letter_type=1    
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)    
    
   if @letter_type=2    
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1    
end    
---------------------------------------------------------------------------
Select S.* 
from Secretariats S , UserSecretariats Us
Where US.UserID = 1
And S.SecID = US.SecID

---------------------------------------------------------------------------
Alter Table dbo.ReCommites Alter column Paraph nvarchar(3000) Null
GO

---------------------------------------------------------------------------
Declare @UserID int
Declare @MaxLetter int

Select @MaxLetter = Value From Settings Where UserID = -1 And VariableName = 'MaxLetterToShow'

Declare Cur_Users Cursor 
For
Select ID From Users

Open Cur_Users 
Fetch Cur_Users into @UserID
While @@Fetch_Status = 0 
begin
   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@MaxLetter,'MaxLetterInDabir') 

   Insert Into Settings(UserID, VariableId, Value, VariableName)
   Values(@UserID,Null,@MaxLetter,'MaxLetterInKartable')

   Fetch Next from Cur_Users into @UserID
end

Close Cur_Users
Deallocate Cur_Users
Go

Delete from Settings 
Where RTrim(VariableName) = 'MaxLetterToShow'

GO
---------------------------------------------------------------------------

/* ����� ����� ����� ��� ���� ��

CREATE PROCEDURE [dbo].[Get_DraftLetter_count] @Myear tinyint,@SecretariatID int ,@Count int output    
AS  
Select @Count = Count(*)  
from Letter  
where Myear=@Myear 
And letterformat=2 --�������
And SecretariatID=@SecretariatID
And Finalized=1  
Set @Count=IsNull(@Count,0)
{Ranjbar 89.09.28 ID=262}*/
Alter PROCEDURE [dbo].[Get_DraftLetter_�Count] @Myear tinyint,@SecretariatID int,@UserID int ,@Count int output    
AS  

Declare @HasSecureLetterAccess Tinyint
Select @HasSecureLetterAccess = HasSecureLetterAccess From Users Where ID = @UserID   --1=����� ��������

Select @Count = Count(*)  
from Letter  
where Myear=@Myear 
And letterformat=2 /*�������*/
And SecretariatID=@SecretariatID
And Finalized=1
--Ranjbar ǐ� ����� �������� ��� ��� ��� ���� �� �� ������ ��� �� ��� ������� ��� ��� ���� ��� ��� ��� ���� �����  
And (@HasSecureLetterAccess = 1 or UserID=@UserID)

Set @Count=IsNull(@Count,0)
---------------------------------------------------------------------------
CREATE  PROCEDURE [dbo].[sp_inbox]  
@SecretariatID int,  
@LetterFormat tinyint,  
@OrgID int,  
@Proceeded bit,  
@Type tinyint,@myear tinyint,@date tinyint,@ArchiveFolderID int ,@where nvarchar(1000),  
@userID int,@Letter_Type int,@DeadLine int,@orderClause varchar(50)=' rc.recommitedate desc,l.indicatorid desc',  
@top int=100  
as  
declare        
@sql nvarchar (4000),        
@rw nvarchar(2000),        
@Today char(10),        
@Proceed bit, -- @Proceed  
@todayToint varchar(10),    
@Mytoday Nvarchar(10)  
        
select @today=dbo.shamsi(getdate())        
        
set @Proceed=@Proceeded  

set @RW='WHERE   (RC.Finallized=1) and (Rc.OrgID = '+  
cast(@OrgID as varchar(10))+') AND (Rc.Proceeded = '+cast(@Proceeded as varchar(2))+')  
'  
if @myear>0  set @rw=@rw+'  and  L.myear='+cast(@myear as varchar(10))        
  
        
if @LetterFormat>0 set @rw=@rw+' and (l.LetterFormat ='+cast( @LetterFormat as varchar(2))+')'        
else set @rw=@rw+' and (l.LetterFormat in (1,2))'        
        
        
if @letter_Type>0        
set @rw=@rw+' AND (l.letter_Type = '+cast(@Letter_Type as varchar(2))+')'        
        
if @type>0        
      set @rw=@rw+' AND (Rc.Type = '+cast(@Type as varchar(2))+')'        
      
if @ArchiveFolderID>0        
set @rw=@rw+' AND (ArchiveFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'        
        
if @date<>0        
begin        
 declare @dw tinyint,@bdate char(10),@edate char(10)        
  set @dw=datepart(dw,Getdate())    
--Ranjbar    
  ---select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@date     
  Set @Mytoday = Cast(1300+@myear as nvarchar)+ Substring(@Today,5,6)    
  select @bdate=begindate,@edate=Enddate from HistoryDateList(@Mytoday ,@dw) where id=@date     
--//    
        
 set @rw=@rw+' AND (RC.RecommiteDate between '''+@bdate+''' and '''+@edate+''')'        
end        
        
if @SecretariatID>0        
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'        
else        
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'        
        
        
set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))        
        
if @DeadLine between -1 and 30        
 set @rw=@rw+' AND ('+        
case when @Proceed=1 then 'case when ChildRecommite.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'+@todayToint+') else    
'''+@todayToint+''' end '        
else  'ISNULL(RC.DeadLineToint ,'+@todayToint+') ' end+' -'+@todayToint+' )<= '+cast(@DeadLine as varchar(5))        
        
        
set @sql=' SELECT top '+cast(@top as varchar(5))+' L.LetterID,L.SignerID, L.IndicatorID, L.MYear,l.subjectid, L.SecretariatID, L.Letter_Type,   
L.letterformat, L.IncommingNO, L.Incommingdate,   
L.ClassificationID,        
L.UrgencyID, L.Memo, L.Tostaffer,l.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, L.RetroactionNo,   
L.UserMemo, L.RegistrationDate,        
l.toorgid,l.fromorgid,L.FollowLetterNo, L.LetterRecommites,l.finalized,l.CenterNo,l.CenterDate,l.templateID,l.headerID,        
l.registrationTime,l.fromstaffer,l.sendStatusID,L.LastUpdate,L.UserTableID,        
DBO.INNERNO(L.Letterid)  InnerNo, PRC.OrgID,  RC.ParentId,  RC.Paraph, RC.RecommiteDate,  RC.Proceeded,        
 RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,        
case when fo.title is null then 0 else 1 end IsInner, isnull(FO.Title,TTO.title) RecommiterTitle,tto.title sendertitle,rc.recommiteid,        
 rc.id,    
RC.StaffMemo,  
isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy        
,dbo.has_Page(l.letterid) has_Page,        
dbo.has_WordPage(l.letterid) has_WordPage,        
dbo.has_file(l.letterid) has_file,'''' FirstView,'+        
'isnull('+        
case when @Proceed=1 then 'ChildRecommite.DeadLineToint' else 'RC.DeadLineToint' end+'-'+@todayToint+',0) DeadLineDays,'+  
case when @Proceed=1 then 'ChildRecommite.ViewDate' else 'RC.ViewDate' end+','+  --??? ?? ????? ??  
case when @Proceed=1 then 'ChildRecommite.DeadLineDate ' else  'RC.Deadlinedate  ' end+' DeadLineDate ,'+  
case when @Proceed=1 then 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '   else ''' ''' end +' ChildParaph ,'+  
case when @Proceed=1 then 'RecommitedOrg.Title '   else ''' ''' end +' ChildOrg , '+        
case when @Proceed=1 then ' case when rc.ActionTypeID=5 then 5 else ChildRecommite.ActionTypeID end '  else  ' RC.ActionTypeID'   end +' ActionTypeID   
'+       
      
', (Select  Count(R.RecommiteID)        
From ReCommites R       
Inner join Letter on Letter.LetterID = R.LetterID      
Inner join FromOrganizations on R.OrgID = FromOrganizations.ID      
Where R.LetterID = L.LetterID '+      
' And R.OrgID = '+Cast(@OrgID as varchar) +      
' Having Count(R.RecommiteID) > 1 ) as UserRecomCount  ' +      
' , RC.IsAnswer , RC.ISFollowup ' +      
      
'FROM ReCommites RC        
INNER JOIN Letter L ON RC.LetterID = L.LetterID        
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID        
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type        
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID        
left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID         
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '+        
case when @Proceed=1 then '        
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type =   
RC.type         
left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID '        
else '' end        
        
if @archiveFolderID<>0          
set @sql=@sql+'         
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Rc.RecommiteID '        
        
set @sql=@sql+@rW        
        
        
set @where=isnull(ltrim(rtrim(@where)),'')        
if (@where<>'')         
select @sql=@sql+' and '+@where        
        
if isnull(ltrim(@orderClause),'')=''         
 set @orderClause=' rc.recommitedate desc,l.indicatorid desc'        
              
        
set @sql=@sql+' order by '+@orderClause        
exec sp_executesql  @sql        
PRINT @sql    
  

------------------------------------------------------------------
  
  
Alter Procedure [dbo].[AnswerLetter]( @LetterID int,@AnswerLetterID int,@Today char(10))  
As  

--���� ���� SentLetterID ���� ���� ���� ���� ��� ���� �� ����  
UPDATE Letter 
SET SentLetterID = @AnswerLetterID
WHERE LetterID=@LetterID  

DECLARE @Letterformat int   
Select @letterFormat=letterFormat from letter  
WHERE LetterID=@LetterID  
    
if @letterFormat=1  --���� ����
begin  
   UPDATE ReCommites  
   SET Proceeded=1, ProceedDate = @today,IsAnswer=1 --Ranjbar ID=258 
   WHERE (Proceeded=0) AND (LetterID=@LetterID)  
  
   UPDATE ReCommites SET ActionTypeID=5 WHERE  (LetterID=@LetterID)  
   update letter set LatestActionTypeID=5 where letterid=@letterid  
end  

---------------------------------------------------------------------------

/*FirstView ����� ������� ���� ���� �������*/
Alter PROCEDURE [dbo].[Sp_Inbox]  
@SecretariatID int,  
@LetterFormat tinyint,  
@OrgID int,  
@Proceeded bit,  
@Type tinyint,@myear tinyint,@date tinyint,@ArchiveFolderID int ,@where nvarchar(1000),  
@userID int,@Letter_Type int,@DeadLine int,@orderClause varchar(50)=' rc.recommitedate desc,l.indicatorid desc',  
@top int=100  
as  
declare        
@sql nvarchar (4000),        
@rw nvarchar(2000),        
@Today char(10),        
@Proceed bit, -- @Proceed  
@todayToint varchar(10),    
@Mytoday Nvarchar(10)  
        
select @today=dbo.shamsi(getdate())        
        
set @Proceed=@Proceeded  
  
set @RW='WHERE   (RC.Finallized=1) and (Rc.OrgID = '+  
cast(@OrgID as varchar(10))+') AND (Rc.Proceeded = '+cast(@Proceeded as varchar(2))+')  
'  
if @myear>0  set @rw=@rw+'  and  L.myear='+cast(@myear as varchar(10))        
  
        
if @LetterFormat>0 set @rw=@rw+' and (l.LetterFormat ='+cast( @LetterFormat as varchar(2))+')'        
else set @rw=@rw+' and (l.LetterFormat in (1,2))'        
        
        
if @letter_Type>0        
set @rw=@rw+' AND (l.letter_Type = '+cast(@Letter_Type as varchar(2))+')'        
        
if @type>0        
      set @rw=@rw+' AND (Rc.Type = '+cast(@Type as varchar(2))+')'        
      
if @ArchiveFolderID>0        
set @rw=@rw+' AND (ArchiveFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'        
        
if @date<>0        
begin        
 declare @dw tinyint,@bdate char(10),@edate char(10)        
  set @dw=datepart(dw,Getdate())    
--Ranjbar    
  ---select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@date     
  Set @Mytoday = Cast(1300+@myear as nvarchar)+ Substring(@Today,5,6)    
  select @bdate=begindate,@edate=Enddate from HistoryDateList(@Mytoday ,@dw) where id=@date     
--//    
        
 set @rw=@rw+' AND (RC.RecommiteDate between '''+@bdate+''' and '''+@edate+''')'        
end        
        
if @SecretariatID>0        
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'        
else        
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'        
        
        
set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))        
        
if @DeadLine between -1 and 30        
 set @rw=@rw+' AND ('+        
case when @Proceed=1 then 'case when ChildRecommite.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'+@todayToint+') else    
'''+@todayToint+''' end '        
else  'ISNULL(RC.DeadLineToint ,'+@todayToint+') ' end+' -'+@todayToint+' )<= '+cast(@DeadLine as varchar(5))        
        
        
set @sql=' SELECT top '+cast(@top as varchar(5))+' L.LetterID,L.SignerID, L.IndicatorID, L.MYear,l.subjectid, L.SecretariatID, L.Letter_Type,   
L.letterformat, L.IncommingNO, L.Incommingdate,   
L.ClassificationID,        
L.UrgencyID, L.Memo, L.Tostaffer,l.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, L.RetroactionNo,   
L.UserMemo, L.RegistrationDate,        
l.toorgid,l.fromorgid,L.FollowLetterNo, L.LetterRecommites,l.finalized,l.CenterNo,l.CenterDate,l.templateID,l.headerID,        
l.registrationTime,l.fromstaffer,l.sendStatusID,L.LastUpdate,L.UserTableID,        
DBO.INNERNO(L.Letterid)  InnerNo, PRC.OrgID,  RC.ParentId,  RC.Paraph, RC.RecommiteDate,  RC.Proceeded,        
 RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,        
case when fo.title is null then 0 else 1 end IsInner, isnull(FO.Title,TTO.title) RecommiterTitle,tto.title sendertitle,rc.recommiteid,        
 rc.id,    
RC.StaffMemo,  
isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy        
,dbo.has_Page(l.letterid) has_Page,        
dbo.has_WordPage(l.letterid) has_WordPage,        
dbo.has_file(l.letterid) has_file,/*'''' FirstView,*/'+        
'isnull('+        
case when @Proceed=1 then 'ChildRecommite.DeadLineToint' else 'RC.DeadLineToint' end+'-'+@todayToint+',0) DeadLineDays,'+  
case when @Proceed=1 then 'ChildRecommite.ViewDate' else 'RC.ViewDate' end+','+    
case when @Proceed=1 then 'ChildRecommite.DeadLineDate ' else  'RC.Deadlinedate  ' end+' DeadLineDate ,'+  
case when @Proceed=1 then 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '   else ''' ''' end +' ChildParaph ,'+  
case when @Proceed=1 then 'RecommitedOrg.Title '   else ''' ''' end +' ChildOrg , '+        
case when @Proceed=1 then ' case when rc.ActionTypeID=5 then 5 else ChildRecommite.ActionTypeID end '  else  ' RC.ActionTypeID'   end +' ActionTypeID   
'+       
      
', (Select  Count(R.RecommiteID)        
From ReCommites R       
Inner join Letter on Letter.LetterID = R.LetterID      
Inner join FromOrganizations on R.OrgID = FromOrganizations.ID      
Where R.LetterID = L.LetterID '+      
' And R.OrgID = '+Cast(@OrgID as varchar) +      
' Having Count(R.RecommiteID) > 1 ) as UserRecomCount  ' +      
' , RC.IsAnswer , RC.ISFollowup ' +      
      
'FROM ReCommites RC        
INNER JOIN Letter L ON RC.LetterID = L.LetterID        
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID        
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type        
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID        
left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID         
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '+        
case when @Proceed=1 then '        
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type =   
RC.type         
left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID '        
else '' end        
        
if @archiveFolderID<>0          
set @sql=@sql+'         
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Rc.RecommiteID '        
        
set @sql=@sql+@rW        
        
        
set @where=isnull(ltrim(rtrim(@where)),'')        
if (@where<>'')         
select @sql=@sql+' and '+@where        
        
if isnull(ltrim(@orderClause),'')=''         
 set @orderClause=' rc.recommitedate desc,l.indicatorid desc'        
              
        
set @sql=@sql+' order by '+@orderClause        
exec sp_executesql  @sql        
PRINT @sql    
  


---------------------------------------------------------------------------
Update Settings
Set [Value] = 1
Where VariableName = 'DeleteUserFolder'
And UserID <> -1
GO
---------------------------------------------------------------------------
Update Settings Set [Value] = 0 Where VariableName = 'DeleteUserFolder' And UserID <> -1
GO

---------------------------------------------------------------------------

---------------------------------------------------------------------------
/*ID=190*/
/*PageNumber ����� ��� ����*/

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
---------------------------------------------------------------------------
/*ID=190*/
/*LetterData ���� ���� PageNumber ���� ���� ������ �� ����� ���� �� ����*/
/*Ranjbar*/

Declare @LetterID int
Declare @NextLetterID int
Declare @PageNumber int
Set @PageNumber = 0

Declare Cr_LetterData1 Cursor  
For
Select LetterID 
from LetterData
Where Extention in (1,2)
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
---------------------------------------------------------------------------
if Exists(Select * from Settings Where variableID = 50 And UserID = -1)
Update Settings Set [Value]=0 Where variableID = 50 And UserID = -1
GO
---------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[InnerNoFormat]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[InnerNoFormat]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE function [dbo].[InnerNoFormat](@SenderTableName varchar(100),@ReceiverTableName varchar(100))
returns varchar(1000)
as
begin
DECLARE @InnerNo NVARCHAR(500), @Delimeter char(1)        

set @Delimeter=dbo.GetSystemValue('LetterFormulaSeperator')--44        
set @InnerNo=case  dbo.GetSystemValue('LetterFormulaPart1') --35       
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart2')--36        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart3')--37  
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart4')--38        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart5')--39        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                         
     when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+' end+        
        
             case  dbo.GetSystemValue('LetterFormulaPart6')--40        
                   when 0 then ''        
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'        
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'        
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'        
                   when 4 then 'case when len('+@SenderTableName+'.Code)>5 then '+@SenderTableName+'.PreCode else '+@SenderTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 5 then 'case when len('+@ReceiverTableName+'.Code)>5 then '+@ReceiverTableName+'.PreCode else '+@ReceiverTableName+'.Code end +'''+@Delimeter+'''+'        
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'        
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'        
                   when 8 then 'isnull('+@ReceiverTableName+'.Precode,'''')+'''+@Delimeter+'''+'   
             end        
        
IF len(@InnerNo)>5        
if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'        
   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)        
        
if @innerno<>''        
set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'        
else        
set @innerno='cast(indicatorid as nvarchar(500))'  
return @InnerNo
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-----------------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_All_Letter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Get_All_Letter]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


/*InnerNo ����� ����*/
CREATE PROCEDURE [dbo].[Get_All_Letter]    
    
@Secretariatid int,        
@myear tinyint,        
@Letter_Type int,        
@LetterFormat int,        
@where nvarchar(2000),        
@top smallint ,        
@archiveFolderID int,        
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)     
@userid int       
As        
Declare @sqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)    
DECLARE @InnerNo NVARCHAR(500);     
Declare @ArchivedText Nvarchar(2000)     
  
set @InnerNo=dbo.InnerNoFormat('sender','Deliver')        
    
set @archiveLetter='select  l.LetterID    
from LETTER L    
LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid    
LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID    
LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID and uac.secid=L.SecretariatID    
where ISNULL(uac.UserID,'+cast(@userid as varchar(10))+')='+cast(@userid as varchar(10))+' and ISNULL(uac.ISAccess,1)=1'    
    
        
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,        
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,        
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,        
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,        
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,        
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,       
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@InnerNo+'  InnerNo,Letter.Archived        
,ActionTypeTitle       
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle       
,Letter.ReceiveTypeID , letter.ClassificationID     
      
FROM Letter left  JOIN        
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN        
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID        
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type        
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID        
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID        
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'        
              
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
        
----
if @ArchiveStatus=0   --����    
   Set @where=@where+' And Archived=0 '    

Set @ArchivedText = ' Exists (SELECT LetterArchiveFolder.letterID 
                              FROM LetterArchiveFolder,ArchiveFolder 
                              Where(Letterid =Letter.LetterID)        
                                And(ArchiveFolder.UserID=0 or ArchiveFolder.Archivecenterid>0)  
                                And(LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID) )  
                      And Archived=1  '        
if @ArchiveStatus=1  --(����� ��� (������ ���
   /*Ranjbar ID=155*/
   --Set @where = @where+' and Archived=1'     
   Set @where=@where+' And ' + @ArchivedText
        
Set @ArchiveLetter=@ArchiveLetter+@where         
        
if @ArchiveStatus=2 --(����� ���� ���� ���� (������ ����       
   Set @where=@where+' And Not ' + @ArchivedText        

----
       
if @ArchiveFolderID>0        
    set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'         
set @where=@where +' and Letter.letterid in ('+@archiveLetter+')'    
        
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '        
print @sqlcommand        
exec sp_executesql   @sqlCommand 

-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 3

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-----------------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sp_Inbox]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sp_Inbox]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


/*InnerNo ����� ����*/
CREATE PROCEDURE [dbo].[Sp_Inbox]  
@SecretariatID int,  
@LetterFormat tinyint,  
@OrgID int,  
@Proceeded bit,  
@Type tinyint,@myear tinyint,@date tinyint,@ArchiveFolderID int ,@where nvarchar(1000),  
@userID int,@Letter_Type int,@DeadLine int,@orderClause varchar(50)=' rc.recommitedate desc,l.indicatorid desc',  
@top int=100  
as  
declare        
@sql nvarchar (4000),        
@rw nvarchar(2000),        
@Today char(10),        
@Proceed bit, -- @Proceed  
@todayToint varchar(10),    
@Mytoday Nvarchar(10)  
        
select @today=dbo.shamsi(getdate())        
        
set @Proceed=@Proceeded  
DECLARE @InnerNo NVARCHAR(500);    
set @InnerNo=dbo.InnerNoFormat('TTO','Receiver')   
  
set @RW='WHERE   (RC.Finallized=1) and (Rc.OrgID = '+  
cast(@OrgID as varchar(10))+') AND (Rc.Proceeded = '+cast(@Proceeded as varchar(2))+')  
'  
if @myear>0  set @rw=@rw+'  and  L.myear='+cast(@myear as varchar(10))        
  
if @LetterFormat>0 set @rw=@rw+' and (l.LetterFormat ='+cast( @LetterFormat as varchar(2))+')'        
else set @rw=@rw+' and (l.LetterFormat in (1,2))'        
        
if @letter_Type>0        
set @rw=@rw+' AND (l.letter_Type = '+cast(@Letter_Type as varchar(2))+')'        
        
if @type>0        
      set @rw=@rw+' AND (Rc.Type = '+cast(@Type as varchar(2))+')'        
      
if @ArchiveFolderID>0        
set @rw=@rw+' AND (ArchiveFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'        
        
if @date<>0        
begin        
 declare @dw tinyint,@bdate char(10),@edate char(10)        
  set @dw=datepart(dw,Getdate())    
--Ranjbar    
  ---select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@date     
  Set @Mytoday = Cast(1300+@myear as nvarchar)+ Substring(@Today,5,6)    
  select @bdate=begindate,@edate=Enddate from HistoryDateList(@Mytoday ,@dw) where id=@date     
--//    
        
 set @rw=@rw+' AND (RC.RecommiteDate between '''+@bdate+''' and '''+@edate+''')'        
end        
        
if @SecretariatID>0        
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'        
else        
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'        
        
set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))        
        
if @DeadLine between -1 and 30        
 set @rw=@rw+' AND ('+        
case when @Proceed=1 then 'case when ChildRecommite.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'+@todayToint+') else    
'''+@todayToint+''' end '        
else  'ISNULL(RC.DeadLineToint ,'+@todayToint+') ' end+' -'+@todayToint+' )<= '+cast(@DeadLine as varchar(5))        
        
set @sql=' SELECT top '+cast(@top as varchar(5))+' L.LetterID,L.SignerID, L.IndicatorID, L.MYear,l.subjectid, L.SecretariatID, L.Letter_Type,   
L.letterformat, L.IncommingNO, L.Incommingdate,   
L.ClassificationID,        
L.UrgencyID, L.Memo, L.Tostaffer,l.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, L.RetroactionNo,   
L.UserMemo, L.RegistrationDate,        
l.toorgid,l.fromorgid,L.FollowLetterNo, L.LetterRecommites,l.finalized,l.CenterNo,l.CenterDate,l.templateID,l.headerID,        
l.registrationTime,l.fromstaffer,l.sendStatusID,L.LastUpdate,L.UserTableID,        
'+@InnerNo+' InnerNo, PRC.OrgID,  RC.ParentId,  RC.Paraph, RC.RecommiteDate,  RC.Proceeded,        
 RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,        
case when fo.title is null then 0 else 1 end IsInner, isnull(FO.Title,TTO.title) RecommiterTitle,tto.title sendertitle,rc.recommiteid,        
 rc.id,    
RC.StaffMemo,  
isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy        
,dbo.has_Page(l.letterid) has_Page,        
dbo.has_WordPage(l.letterid) has_WordPage,        
dbo.has_file(l.letterid) has_file, '+        
'isnull('+        
case when @Proceed=1 then 'ChildRecommite.DeadLineToint' else 'RC.DeadLineToint' end+'-'+@todayToint+',0) DeadLineDays,'+  
case when @Proceed=1 then 'ChildRecommite.ViewDate' else 'RC.ViewDate' end+','+    
case when @Proceed=1 then 'ChildRecommite.DeadLineDate ' else  'RC.Deadlinedate  ' end+' DeadLineDate ,'+  
case when @Proceed=1 then 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '   else ''' ''' end +' ChildParaph ,'+  
case when @Proceed=1 then 'RecommitedOrg.Title '   else ''' ''' end +' ChildOrg , '+        
case when @Proceed=1 then ' case when rc.ActionTypeID=5 then 5 else ChildRecommite.ActionTypeID end '  else  ' RC.ActionTypeID'   end +' ActionTypeID   
'+       
      
', (Select  Count(R.RecommiteID)        
From ReCommites R       
Inner join Letter on Letter.LetterID = R.LetterID      
Inner join FromOrganizations on R.OrgID = FromOrganizations.ID      
Where R.LetterID = L.LetterID '+      
' And R.OrgID = '+Cast(@OrgID as varchar) +      
' Having Count(R.RecommiteID) > 1 ) as UserRecomCount  ' +      
' , RC.IsAnswer , RC.ISFollowup ' +      
      
'FROM ReCommites RC        
INNER JOIN Letter L ON RC.LetterID = L.LetterID        
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID        
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type        
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID        
left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID         
left JOIN FromOrganizations Receiver ON Receiver.ID = L.FromOrgID         
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '+        
case when @Proceed=1 then '        
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type =   
RC.type         
left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID '        
else '' end        
        
if @archiveFolderID<>0          
set @sql=@sql+'         
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Rc.RecommiteID '        
        
set @sql=@sql+@rW        
        
set @where=isnull(ltrim(rtrim(@where)),'')        
if (@where<>'')         
select @sql=@sql+' and '+@where        
        
if isnull(ltrim(@orderClause),'')=''         
 set @orderClause=' rc.recommitedate desc,l.indicatorid desc'        

set @sql=@sql+' order by '+@orderClause        
exec sp_executesql  @sql        
PRINT @sql    

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


-----------------------------------------------------------------------------------
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

if Exists(Select * from sysindexes Where Name = 'IX_Settings_UserID_VariableName' And ID = object_id(N'[dbo].[Settings]'))
   Drop Index Settings.IX_Settings_UserID_VariableName
GO
if Exists(Select * from sysindexes Where Name = 'IX_Settings_UserID_VariableId' And ID = object_id(N'[dbo].[Settings]'))
   Drop Index Settings.IX_Settings_UserID_VariableId
GO

CREATE NONCLUSTERED INDEX IX_Settings_UserID_VariableName ON dbo.Settings
	(
	UserID,
	VariableName
	) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Settings_UserID_VariableId ON dbo.Settings
	(
	UserID,
	VariableId
	) ON [PRIMARY]
GO
COMMIT
GO
-----------------------------------------------------------------------------------
/*��� ������ ��� ������*/
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

if Exists(Select * from sysindexes Where Name = 'ind_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.ind_idx
GO
if Exists(Select * from sysindexes Where Name = 'myear_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.myear_idx
GO
if Exists(Select * from sysindexes Where Name = 'secid_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.secid_idx
GO
if Exists(Select * from sysindexes Where Name = 'letter_type_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.letter_type_idx
GO
if Exists(Select * from sysindexes Where Name = 'letterformat_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.letterformat_idx
GO
if Exists(Select * from sysindexes Where Name = 'incommingno_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.incommingno_idx
GO
if Exists(Select * from sysindexes Where Name = 'registrationdate_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.registrationdate_idx
GO
if Exists(Select * from sysindexes Where Name = 'fromorgid_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.fromorgid_idx
GO
if Exists(Select * from sysindexes Where Name = 'ToOrgid_idx' And ID = object_id(N'[dbo].[Letter]'))
   DROP INDEX dbo.Letter.ToOrgid_idx
GO
COMMIT
GO
---------------------------------------------------------------------------
Alter procedure [dbo].[Get_LastIndicatorID](@letter_type tinyint ,@SecretariatID int,@Myear int,      
@LetterFormat tinyint,@newIndicatorid int output)      
as  
  
declare @RecivedInd int ,@SentInd  int,@innerind int,@DocInd int      
  


/*����� ����� ���� ��� �����*/      
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
 and SecretariatID=@SecretariatID and letter_type=1       
  
/*����� ����� ���� ��� �����*/          
Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
 and SecretariatID=@SecretariatID and letter_type=2       
      
 /*����� ����� ���� ��� �����*/      
 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
 and SecretariatID=@SecretariatID and letter_type=3      
      
 /*����� ����� ���� ��� �����*/  
 Select @Docind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
 and SecretariatID=@SecretariatID and letter_type=4      
--------
/*������� - ���� � ��������� ���� ���� ��� �����*/      
if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3      
      
/*������� - ���� � ��������� ���� ���� ��� �����*/          
if @SentInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3   
     
/*������� - ���� � ��������� ���� ���� ��� �����*/              
if @innerind<dbo.GetSystemValue('BeginIndicator')--3       
   set @innerind=dbo.GetSystemValue('BeginIndicator')--3      
--------
/*���� �����*/      
if @letter_type=3       
begin      
  set @newIndicatorid=@innerind      
  return      
end      
  
/*���� �����*/    
if @letter_type=4       
begin      
  set @newIndicatorid=@docind      
  return      
end      
--------      
/*����� ���� ����� � ����� ������ ����*/      
if dbo.GetSystemValue('UniqeIndicator')=0   --5     
begin      
   if @SentInd > @RecivedInd      
      set @newIndicatorid=@SentInd      
   else      
      set @newIndicatorid=@RecivedInd          
end      
  
/*����� ���� ����� � ����� ���� � ����� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=1  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=@RecivedInd      
   if @letter_type=2      
      set @newIndicatorid=@SentInd      
end      
  
/*����� ���� ��� ����� ���  � ����� ��� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=2  --5    
begin      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd-1)/2)      
      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1      
end      
  
/*����� ���� ��� ����� ���  � ����� ��� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=3  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)      
      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1      
end   
GO

---------------------------------------------------------------------------

Alter procedure [dbo].[Get_LastIndicatorID](@letter_type Tinyint ,@SecretariatID int,@Myear int,      
                @LetterFormat Tinyint,@newIndicatorid int Output)      
As  
  
Declare @RecivedInd int ,@SentInd  int,@InnerInd int,@DocInd int      
Declare @UniqueIndSec int , @UniqueIndSecID int
Declare @TempIndicatorID int

--������ ����� ���� �� ��������� ��� �� �������� ���� ��� 
Set @UniqueIndSec = dbo.GetSystemValue('UniqueIndSec')
if @UniqueIndSec = -1  /* -1: Active , 0: InActive */
begin
   Set @UniqueIndSecID = dbo.GetSystemValue('UniqueIndSecID')
   if @UniqueIndSecID <> 0 
      Set @SecretariatID = @UniqueIndSecID
end
---

/*����� ����� ���� ��� �����*/      
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
       And SecretariatID=@SecretariatID and letter_type=1       
if @UniqueIndSec = -1 /* -1: Active , 0: InActive */
begin
   /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
   Select @TempIndicatorID = isnull(Max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          /*And SecretariatID=@SecretariatID*/ And letter_type=1       
   if @TempIndicatorID > @RecivedInd 
      Set @RecivedInd = @TempIndicatorID
end
  
/*����� ����� ���� ��� �����*/
Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
       And SecretariatID=@SecretariatID and letter_type=2       
if @UniqueIndSec = -1 /* -1: Active , 0: InActive */
begin
   /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
   Select @TempIndicatorID = isnull(max(indicatorID),0)+1 from Letter where myear=@myear And LetterFormat=@LetterFormat      
          /*And SecretariatID=@SecretariatID*/ And letter_type=2       
   if @TempIndicatorID > @SentInd 
      Set @SentInd = @TempIndicatorID
end
      
 /*����� ����� ���� ��� �����*/
Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
       And SecretariatID=@SecretariatID and letter_type=3
if @UniqueIndSec = -1 /* -1: Active , 0: InActive */
begin
   /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
   Select @TempIndicatorID = isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
       /*And SecretariatID=@SecretariatID*/ and letter_type=3       
   if @TempIndicatorID > @innerind 
      Set @innerind = @TempIndicatorID
end      
      
 /*����� ����� ���� ��� �����*/  
Select @DocInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
       And SecretariatID=@SecretariatID and letter_type=4
if @UniqueIndSec = -1 /* -1: Active , 0: InActive */
begin
   /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
   Select @TempIndicatorID = isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
       /*And SecretariatID=@SecretariatID*/ and letter_type=4       
   if @TempIndicatorID > @DocInd 
      Set @DocInd = @TempIndicatorID
end      
--------
/*������� - ���� � ��������� ���� ���� ��� �����*/      
if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3      
      
/*������� - ���� � ��������� ���� ���� ��� �����*/          
if @SentInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3   
     
/*������� - ���� � ��������� ���� ���� ��� �����*/              
if @innerind<dbo.GetSystemValue('BeginIndicator')--3       
   set @innerind=dbo.GetSystemValue('BeginIndicator')--3      
--------
/*���� �����*/      
if @letter_type=3       
begin      
  set @newIndicatorid=@innerind      
  return      
end      
  
/*���� �����*/    
if @letter_type=4       
begin      
  set @newIndicatorid=@DocInd      
  return      
end      
--------      
/*����� ���� ����� � ����� ������ ����*/      
if dbo.GetSystemValue('UniqeIndicator')=0   --5     
begin      
   if @SentInd > @RecivedInd      
      set @newIndicatorid=@SentInd      
   else      
      set @newIndicatorid=@RecivedInd          
end      
  
/*����� ���� ����� � ����� ���� � ����� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=1  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=@RecivedInd      
   if @letter_type=2      
      set @newIndicatorid=@SentInd      
end      
  
/*����� ���� ��� ����� ���  � ����� ��� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=2  --5    
begin      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd-1)/2)      
      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1      
end      
  
/*����� ���� ��� ����� ���  � ����� ��� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=3  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)      
      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1      
end   
GO
---------------------------------------------------------------------------
Alter procedure [dbo].[Get_LastIndicatorID](@letter_type Tinyint ,@SecretariatID int,@Myear int,      
                @LetterFormat Tinyint,@newIndicatorid int Output)      
As  
  
Declare @RecivedInd int ,@SentInd  int,@InnerInd int,@DocInd int      
Declare @UniqueIndSec int , @UniqueIndSecID int
Declare @TempIndicatorID int

--����� ���� ��� ����� ��������� ���� ����� �������� ��
Set @UniqueIndSec = dbo.GetSystemValue('UniqueIndSec')
if @UniqueIndSec = 0  /* -1: Active , 0: InActive */   
begin

   /*����� ����� ���� ��� �����*/ 
   Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=1       

   /*����� ����� ���� ��� �����*/
   Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=2

   /*����� ����� ���� ��� �����*/
   Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=3

   /*����� ����� ���� ��� �����*/  
   Select @DocInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
          And SecretariatID=@SecretariatID and letter_type=4
end
   else
   begin    
      /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
      Select @RecivedInd = isnull(Max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
                /*And SecretariatID=@SecretariatID*/ And letter_type=1       

      /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
      Select @SentInd = isnull(max(indicatorID),0)+1 from Letter where myear=@myear And LetterFormat=@LetterFormat      
                /*And SecretariatID=@SecretariatID*/ And letter_type=2

      /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
      Select @innerind = isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
             /*And SecretariatID=@SecretariatID*/ and letter_type=3       

      /*���� ����� ��ѐ���� ����� ��������� ����� �������� ��*/
      Select @DocInd = isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat      
             /*And SecretariatID=@SecretariatID*/ and letter_type=4       
end  
    
--------
/*������� - ���� � ��������� ���� ���� ��� �����*/      
if @RecivedInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @RecivedInd=dbo.GetSystemValue('BeginIndicator')--3      
      
/*������� - ���� � ��������� ���� ���� ��� �����*/          
if @SentInd<dbo.GetSystemValue('BeginIndicator')--3       
   set  @SentInd=dbo.GetSystemValue('BeginIndicator')--3   
     
/*������� - ���� � ��������� ���� ���� ��� �����*/              
if @innerind<dbo.GetSystemValue('BeginIndicator')--3       
   set @innerind=dbo.GetSystemValue('BeginIndicator')--3      
--------
/*���� �����*/      
if @letter_type=3       
begin      
  set @newIndicatorid=@innerind      
  return      
end      
  
/*���� �����*/    
if @letter_type=4       
begin      
  set @newIndicatorid=@DocInd      
  return      
end      
--------      
/*����� ���� ����� � ����� ������ ����*/      
if dbo.GetSystemValue('UniqeIndicator')=0   --5     
begin      
   if @SentInd > @RecivedInd      
      set @newIndicatorid=@SentInd      
   else      
      set @newIndicatorid=@RecivedInd          
end      
  
/*����� ���� ����� � ����� ���� � ����� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=1  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=@RecivedInd      
   if @letter_type=2      
      set @newIndicatorid=@SentInd      
end      
  
/*����� ���� ��� ����� ���  � ����� ��� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=2  --5    
begin      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd-1)/2)      
      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1      
end      
  
/*����� ���� ��� ����� ���  � ����� ��� ����*/      
if dbo.GetSystemValue('UniqeIndicator')=3  --5    
begin      
   if @letter_type=1      
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)      
      
   if @letter_type=2      
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1      
end   
GO
---------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[GetList](@ListID int)  
 AS  
  
SELECT     KeyValue, Title, Notes  
FROM         ListItems  
where ListID=7  
   
Update ListItems
Set Title = '�������� ��� ������'
Where ListID=7 And KeyValue=1
GO
Update ListItems
Set Title = '�������� ��� ������'
Where ListID=7 And KeyValue=2
GO
---------------------------------------------------------------------------
/*Ranjbar ID=273  ���� ������ �� ��� ������ ���� ����� ������ ���� ��� ����� �������*/

if Not Exists(Select * from Actions Where FormTag = 8 And ID = 'ARecommiteList')
   Insert into Actions(FormTag,ID,Title) values(8,'ARecommiteList','���� ������� ���� �ǁ')
GO

---------------------------------------------------------------------------
Update Classifications
Set Title = LTrim(RTrim(Title)) 
GO
Update Urgenceis
Set Title = LTrim(RTrim(Title)) 
GO
Update ReceiveTypes
Set Title = LTrim(RTrim(Title)) 
GO
---------------------------------------------------------------------------
--����� ���
Update Settings
Set variableName = 'SentDraftIsCopy'
Where variableName = 'DefaultIsCopy'
GO
Update Settings
Set variableName = 'InnerIsCopy'
Where variableName = 'DefaultInnerCopy'
GO
---------------------------------------------------------------------------
Select * from LetterFormats
---------------------------------------------------------------------------
--���� ������ �� ������ �������� ����
if (Select IsSecretariantStaffer from Users Where ID = @UserID) = 0  
begin
   if 1=1  --����� ������ ���� ��� ���
      Set @Where = @Where + ' And (Letter.FromOrgID = ' + 2 + 
          ' Or  Letter.Letterid in (Select ReCommites.LetterID From ReCommites  where OrgID = ' + 2 + '))'    
   else  --����� ������ ���� ��� ��� �  ��� ������ ���
      Set @Where = @Where + ' And (dbo.Is_ParentId(letter.FromOrgID,' + 2 + ')=1 
          Or Letter.Letterid in (Select ReCommites.LetterID From ReCommites where dbo.Is_ParentId(orgid,' + 2 + ')=1) )'    
end
---------------------------------------------------------------------------
dbo.Is_ParentId(orgid, + Recfromid + )=1)
  
Create Function [dbo].[Is_ParentId] (@ChildID int,@ParentID int)  
RETURNS bit 
AS  
BEGIN  
  
declare @PI int,@CurID int,@stoper int  

if @childid=@parentid 
   return(1)  

if @ParentID<5 
   return(1)  

set @CurID=@ChildID  
set @stoper=1  
while @CurID<>0 and @stoper<4  
begin  
   select @PI=ParentID from FromOrganizations where id=@CurID  
   if @PI=@ParentID 
      Return(1)  
   else 
      Set @CurID=@PI  
   set @stoper=@stoper+1  
end  
Return(0)  

END  
---------------------------------------------------------------------------
Select * 
from FromOrganizations
Where ParentID = 2
or ParentID in (Select ID 
                from FromOrganizations
                Where ParentID = 2
                or ParentID in (Select ID from FromOrganizations Where ParentID = 2))
---------------------------------------------------------------------------
Select * from FromOrganizations Where Id in (5,13,19,23,24,34)
---------------------------------------------------------------------------

/*Ranjbar ���� ���� ����� ��� ���� ��� �� ���� �������*/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Get_Subset_OrgID]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[Get_Subset_OrgID]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/*Ranjbar ���� ���� ����� ��� ���� ��� �� ���� �������*/
CREATE Function dbo.Get_Subset_OrgID(@OrgID int)
Returns @ReturnTable TABLE (OrgID int)
As
begin

Declare @LocalTable1 TABLE (OrgID int)
Declare @LocalTable2 TABLE (OrgID int)

Insert into @LocalTable1(OrgID)
Select @OrgID as ID 
Union
Select ID from FromOrganizations Where ParentID = @OrgID And IsInnerOrg = 1

Insert into @LocalTable2(OrgID)
Select OrgID From @LocalTable1 

While @@ROWCOUNT > 0
--While (Select Count(*) from @LocalTable2) > 0
begin   
   Insert into @ReturnTable(OrgID)
   Select OrgID from @LocalTable1 

   Delete From @LocalTable1  

   Insert into @LocalTable1(OrgID)
   Select ID from FromOrganizations Where IsInnerOrg = 1 And ParentID in (Select OrgID From @LocalTable2)  
   
   Delete From @LocalTable2

   Insert into @LocalTable2(OrgID)
   Select OrgID from @LocalTable1
end

Return
end

--Select * from dbo.Get_Subset_OrgID(2)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
---------------------------------------------------------------------------
����


/*InnerNo ����� ����*/        
Create Procedure [dbo].[Get_All_Letter]            
            
@SecretariatID int,                
@Myear tinyint,                
@Letter_Type int,                
@LetterFormat int,                
@Where nvarchar(2000),                
@Top smallint ,                
@ArchiveFolderID int,                
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)             
@UserID int               
As                
Declare @SqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)            
Declare @InnerNo nvarchar(500)             
Declare @ArchivedText nvarchar(2000)             
          
set @InnerNo=dbo.InnerNoFormat('Sender','Deliver')                
            
set @ArchiveLetter='Select  l.LetterID            
from LETTER L            
LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid            
LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID            
LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID and uac.secid=L.SecretariatID            
where ISNULL(uac.UserID,'+cast(@userid as varchar(10))+')='+cast(@userid as varchar(10))+' and ISNULL(uac.ISAccess,1)=1'            
            
                
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,                
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,                
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,                
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,                
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,               
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@InnerNo+'  InnerNo,Letter.Archived                
,ActionTypeTitle               
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle               
,Letter.ReceiveTypeID , letter.ClassificationID             
              
FROM Letter left  JOIN                
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN                
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type                
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID                
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID                
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'                
                      
if @archiveFolderID>0                
   Set @sqlCommand=@sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '                
                
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '                
                      
set @where=isnull(ltrim(rtrim(@where)),'')                
if @where <>'' set @where =' and '+@where                
                
if @Letter_Type<>0                
   Set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'                
                
if @Secretariatid<>0                
   Set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'                
                
if @Myear<>0                
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'                
                      
if @LetterFormat<>0                
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'                
                
----        
if @ArchiveStatus = 0   --����            
   Set @where=@where+' And Archived=0 '            
        
Set @ArchivedText = ' Exists (SELECT LetterArchiveFolder.LetterID         
                              FROM LetterArchiveFolder , ArchiveFolder         
                              Where(LetterID = Letter.LetterID)                
                                And(ArchiveFolder.UserID=0 or ArchiveFolder.ArchivecenterID > 0)  --And(/*ArchiveFolder.UserID=0 or*/ ArchiveFolder.ArchivecenterID > -1)        
                                And(LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID) )          
                      And Archived=1  '                
if @ArchiveStatus = 1  --(����� ��� (������ ���        
   /*Ranjbar ID=155*/        
   --Set @where = @where+' and Archived=1'             
   Set @where = @where + ' And ' + @ArchivedText        
                
Set @ArchiveLetter=@ArchiveLetter+@where                 
                
if @ArchiveStatus = 2 --(����� ���� ���� ���� (������ ����               
   Set @where = @where + ' And Not ' + @ArchivedText                  
----   
                                                            
if @ArchiveFolderID>0                
    Set @where=@where+' and (archiveFolderID = ' + Cast(@archiveFolderID as varchar(5)) + ')'                 
      
set @where=@where + ' and Letter.letterid in (' + @ArchiveLetter+')'            
                
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid Desc '                
print @sqlcommand                
exec sp_executesql   @sqlCommand         
        
-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 8 
---------------------------------------------------------------------------

/*����� ���� ��� ����� ���*/        
Alter Procedure [dbo].[Get_All_Letter]            
            
@SecretariatID int,                
@Myear tinyint,                
@Letter_Type int,                
@LetterFormat int,                
@Where nvarchar(2000),                
@Top smallint ,                
@ArchiveFolderID int,                
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)             
@UserID int               
As                
Declare @SqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)            
Declare @InnerNo nvarchar(500)             
          
set @InnerNo=dbo.InnerNoFormat('Sender','Deliver')                
                            
set @sqlCommand=
'SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,                
Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,                
Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,                
Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                
Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,                
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,               
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@InnerNo+'  InnerNo,Letter.Archived                
,ActionTypeTitle               
,Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle               
,Letter.ReceiveTypeID , letter.ClassificationID             
              
FROM Letter left  JOIN                
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN                
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type                
Inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID                
Inner join Secretariats on Secretariats.Secid=Letter.SecretariatID                
left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'                
                      
if @archiveFolderID > 0                
   Set @sqlCommand = @sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '                
                
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '                
                      
set @where = isnull(ltrim(rtrim(@where)),'')                
if @where <> '' 
   Set @where = ' And ' + @where                
                
if @Letter_Type <> 0                
   Set @where=@where + ' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'                
                
if @Secretariatid <> 0                
   Set @where=@where + ' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'                
                
if @Myear<>0                
  set @where=@where + ' And (myear = '+Cast(@myear as varchar(5))+')'                
                      
if @LetterFormat <> 0                
  set @where=@where + ' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'                
                
----
Set @ArchiveLetter=
    'Select  L.LetterID            
    From Letter L            
    Left Join LetterArchiveFolder laf ON laf.Letterid = L.letterid            
    Left Join Archivefolder af  on laf.ArchiveFolderID = af.FolderID            
    Left Join UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID   --����� ������ �� �������         
    Where ISNULL(uac.UserID,' + cast(@userid as varchar(10))+')=' + Cast(@userid as varchar(10)) +
    ' And ISNULL(uac.ISAccess,1)=1 ' 
      
Set @ArchiveLetter = @ArchiveLetter + @Where 

if @ArchiveStatus = 0   --���� ��� ����
   Set @where=@where+' And Archived = 0 '            
                                            
if @ArchiveStatus = 1  --����� ��� �� �������� ��� ������
   /*Ranjbar ID=155 And ID=313*/
   --Set @where = @where + ' And Archived = 1 ' 
   Set @where = @where + ' And Archived = 1 
       And Letter.LetterID = (Select Top 1 L.LetterID            
                               From Letter L            
                               Inner Join LetterArchiveFolder laf ON laf.Letterid = L.letterid And L.LetterID = Letter.LetterID           
                               Inner Join Archivefolder af  on laf.ArchiveFolderID = af.FolderID            
                               Inner Join UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID   --����� ������ �� �������         
                               Where ISNULL(uac.UserID,' + cast(@userid as varchar(10))+')=' + Cast(@userid as varchar(10)) +
                               ' And ISNULL(uac.ISAccess,1)=1 )'
   ---//
                             
if @ArchiveStatus=2   --����� ���� ���� ���� �� �������� ��� ������
begin    
   Set @Where = @Where + ' And not Exists 
                          (SELECT  LetterArchiveFolder.LetterID 
                           FROM LetterArchiveFolder,ArchiveFolder 
                           Where LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID    
                             --And (ArchiveFolder.UserID = 0 or ArchiveFolder.Archivecenterid > 0) /*Ranjbar ID=155 And ID=313*/  
                             And(ArchiveFolder.ArchivecenterID > -1)
                             ---//  
                             And(Letterid =Letter.LetterID) )  
                             And Archived = 1 '    
end

Set @Where = @Where + ' And Letter.letterid in (' + @ArchiveLetter + ')' 

----   

--������ �����                                                            
if @ArchiveFolderID>0                
    Set @Where=@where+' And (archiveFolderID = ' + Cast(@archiveFolderID as varchar(5)) + ')'                 

Set @sqlCommand=@sqlCommand+@where + ' Order By IndicatorID Desc '                
Print @sqlcommand                
Exec sp_executesql   @sqlCommand         
        
-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 8  
---------------------------------------------------------------------------
/*���� ����*/
SET IDENTITY_INSERT YDabir_RoginSanat2..ArchiveFolder ON
GO
insert into YDabir_RoginSanat2..ArchiveFolder(FolderID, ParentFolderID, Title, UserID, Notes, Place, ArchiveCenterID)
Select FolderID, ParentFolderID, Title, UserID, Notes, Place, ArchiveCenterID 
from YDabir_RoginSanat..ArchiveFolder 
Where FolderID not in (Select FolderID from YDabir_RoginSanat2..ArchiveFolder)
GO
SET IDENTITY_INSERT YDabir_RoginSanat2..ArchiveFolder off
GO
------
/*���� ����*/
Select 'Union Select '+Cast(FolderID as Nvarchar(50)) + ',' +
       Cast(ParentFolderID as Nvarchar(50)) + ',' +
       ''''+ RTrim(Title)+'''' + ',' +
       Cast(UserID as Nvarchar(50))+','+
       (Case When LTrim(RTrim(Notes)) <> '' then  ''''+RTrim(Notes)+'''' else 'Null' end) + ',' +
       (Case When LTrim(RTrim(Place)) <> '' then  ''''+RTrim(Place)+'''' else 'Null' end) + ',' +
       Cast(ArchiveCenterID as Nvarchar(50)) 
from YDabir_RoginSanat..ArchiveFolder 
Where FolderID not in (Select FolderID from YDabir_RoginSanat2..ArchiveFolder)
------
SET IDENTITY_INSERT ArchiveFolder ON
GO
Insert into ArchiveFolder(FolderID, ParentFolderID, Title, UserID, Notes, Place, ArchiveCenterID)
      Select 273,0,'������',0,'������ ��������','0',0
Union Select 281,273,'����',0,Null,Null,0
Union Select 283,273,'������',0,Null,Null,0
Union Select 285,281,'���� ���',0,Null,Null,0
Union Select 286,281,'�� ��� �����',0,Null,Null,0
Union Select 287,286,' ��� 17 � 18',0,Null,Null,0
Union Select 288,273,'���',0,Null,Null,0
Union Select 289,288,'�������',0,Null,Null,0
Union Select 299,286,' ��� 20 � 21',0,'������ ������� ����� ���',Null,0
Union Select 300,286,' ��� 14',0,'���ј� �� ������ ������� ������ ��� ��� ����� �����','������',0
Union Select 301,0,'������',14,Null,Null,-1
Union Select 302,287,'Condensate storage tanks',0,Null,Null,0
Union Select 306,0,'Phase 15,16south  Pars',17,'Utilty unit 123,124,132,188',Null,0
Union Select 307,306,'Document and Drawing',17,'Utility 123,124,132,188',Null,0
Union Select 316,302,'�������',16,Null,Null,0
Union Select 318,302,'��������',16,Null,Null,0
Union Select 319,309,'�������',16,Null,Null,0
Union Select 320,309,'������',16,Null,Null,0
Union Select 321,309,'��������',16,Null,Null,0
Union Select 322,310,'�������',16,Null,Null,0
Union Select 323,310,'������',16,Null,Null,0
Union Select 324,310,'��������',16,Null,Null,0
Union Select 325,311,'�������',16,Null,Null,0
Union Select 326,311,'������',16,Null,Null,0
Union Select 327,311,'��������',16,Null,Null,0
Union Select 328,312,'�������',16,Null,Null,0
Union Select 329,312,'������',16,Null,Null,0
Union Select 330,312,'��������',16,Null,Null,0
Union Select 331,314,'�������',16,Null,Null,0
Union Select 332,314,'������',16,Null,Null,0
Union Select 333,314,'�������',16,Null,Null,0
Union Select 334,313,'�������',16,Null,Null,0
Union Select 335,313,'������',16,Null,Null,0
Union Select 336,313,'��������',16,Null,Null,0
Union Select 337,315,'�������',16,Null,Null,0
Union Select 338,315,'������',16,Null,Null,0
Union Select 339,315,'��������',16,Null,Null,0
Union Select 341,340,'��� ����� �����',16,Null,Null,0
Union Select 342,340,'���� ����',16,Null,Null,0
Union Select 343,340,'������',16,Null,Null,0
Union Select 344,341,'�������',16,Null,Null,0
Union Select 345,341,'������',16,Null,Null,0
Union Select 346,341,'��������',16,Null,Null,0
Union Select 347,342,'�������',16,Null,Null,0
Union Select 348,342,'������',16,Null,Null,0
Union Select 349,342,'��������',16,Null,Null,0
Union Select 350,343,'�������',16,Null,Null,0
Union Select 351,343,'������',16,Null,Null,0
Union Select 352,343,'��������',16,Null,Null,0
Union Select 354,288,'������',4,Null,Null,0
Union Select 355,288,'����� ���',4,Null,Null,0
Union Select 356,340,'������� ����� ����',4,Null,Null,0
Union Select 357,340,'��� � ��� ����-POGC',4,Null,Null,0
Union Select 358,356,'�������',4,Null,Null,0
Union Select 359,356,'������',4,Null,Null,0
Union Select 360,357,'�������',4,Null,Null,0
Union Select 361,357,'������',4,Null,Null,0
Union Select 363,0,'������',19,Null,Null,-1
Union Select 364,302,'������ ����� �� ���������� ����',18,Null,Null,0
Union Select 365,364,'������',18,Null,Null,0
Union Select 367,364,'������� ���� ������',18,Null,Null,0
Union Select 368,364,'������ ���� ������',18,Null,Null,0
Union Select 369,364,'������ ����� ����',18,Null,Null,0
Union Select 370,364,'������� ����� ����',18,Null,Null,0
Union Select 371,364,'������ ����� ���',18,Null,Null,0
Union Select 372,364,'������� ����� ���',18,Null,Null,0
Union Select 374,364,'������� ���� ��� ���� ��',18,Null,Null,0
Union Select 375,364,'������ ���� ��� ���� ��',18,Null,Null,0
Union Select 376,364,'������� ���� ��ю�',18,Null,Null,0
Union Select 378,340,'������� ����� ����',16,Null,Null,0
Union Select 379,378,'�������',16,Null,Null,0
Union Select 380,378,'������',16,Null,Null,0
Union Select 381,378,'��������',16,Null,Null,0
Union Select 382,288,'������',16,Null,Null,0
Union Select 383,288,'����',16,Null,Null,0
GO
SET IDENTITY_INSERT ArchiveFolder OFF
GO

/*���� ������ �� ��� ������� ���� ����� �������*/
Delete from UserAccArchive
GO
Insert into UserAccArchive(UserID,SecID,ArchiveFolderID,IsAccess)
Select US.UserID, S.SecID ,AF.FolderID,1
From Secretariats S ,ArchiveFolder AF,UserSecretariats US
Where(S.SecID = US.Secid) 
and AF.ArchiveCenterID > -1 /*�������� ��������*/
and not Exists(Select * From UserAccArchive 
Where UserID = us.UserID And SecID =s.SecID And  ArchiveFolderID=AF.FolderID)
GO
---------------------------------------------------------------------------
/*����� �� ���� ����� �����*/
Alter Trigger Update_LetterRecommites on dbo.ReCommites 
For Insert, Update, Delete
AS
Declare @LetterID int,@ActionTypeID tinyint ,@Paraph nvarchar(500)

Select @letterid=LetterID , @actionTypeID = ActionTypeID
From Inserted

if @letterid is null
Select @LetterID=LetterID
From Deleted

Select Top 1 @paraph = IsNull(Paraph,'') 
from Recommites
where letterid=@Letterid
Order by recommitedate Desc , recommiteid Desc 

Update Letter
Set LetterRecommites =CAST(dbo.Recommites_by_indicator(LetterID)+
'����� �����: ' + @paraph AS NVARCHAR(500)) , latestActionTypeid = @actionTypeID
Where LetterID = @LetterID

GO
Update Letter
Set LetterRecommites = Replace(LetterRecommites,'AI??? ?C?C?:','����� �����:')
GO

---------------------------------------------------------------------------
Update Settings Set Value = (Case When Value = 0 then -1 else 0 end)  Where VariableName = 'ReciveIsCopy'
GO
Select * from Settings Where VariableName = 'ReciveIsCopy'
GO
---------------------------------------------------------------------------
Select * from recommites Where letterID in (Select top 100 LetterID letter Order By LetterID Desc)
---------------------------------------------------------------------------
  
/*@Where nvarchar(4000) �� @Where nvarchar(2000) ����� ��*/          
Alter Procedure [dbo].[Get_All_Letter]              
              
@SecretariatID int,                  
@Myear tinyint,                  
@Letter_Type int,                  
@LetterFormat int,                  
@Where nvarchar(4000),                  
@Top smallint ,                  
@ArchiveFolderID int,                  
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)               
@UserID int                 
As                  
Declare @SqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)              
Declare @InnerNo nvarchar(500)               
            
set @InnerNo=dbo.InnerNoFormat('Sender','Deliver')                  
                              
set @sqlCommand=  
'SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,                  
Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,                  
Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,                  
Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                  
Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,                  
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,                 
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@InnerNo+'  InnerNo,Letter.Archived                  
,ActionTypeTitle                 
,Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle                 
,Letter.ReceiveTypeID , letter.ClassificationID               
                
FROM Letter left  JOIN                  
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN                  
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                  
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type                  
Inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID                  
Inner join Secretariats on Secretariats.Secid=Letter.SecretariatID                  
left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'                  
                        
if @archiveFolderID > 0                  
   Set @sqlCommand = @sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '                  
                  
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '                  
                        
set @where = isnull(ltrim(rtrim(@where)),'')                  
if @where <> ''   
   Set @where = ' And ' + @where                  
                  
if @Letter_Type <> 0                  
   Set @where=@where + ' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'                  
                  
if @Secretariatid <> 0                  
   Set @where=@where + ' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'                  
                  
if @Myear<>0                  
  set @where=@where + ' And (myear = '+Cast(@myear as varchar(5))+')'                  
                        
if @LetterFormat <> 0                  
  set @where=@where + ' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'                  
                  
----  
Set @ArchiveLetter=  
    'Select  L.LetterID              
    From Letter L              
    Left Join LetterArchiveFolder laf ON laf.Letterid = L.letterid              
    Left Join Archivefolder af  on laf.ArchiveFolderID = af.FolderID              
    Left Join UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID   --����� ������ �� �������           
    Where ISNULL(uac.UserID,' + cast(@userid as varchar(10))+')=' + Cast(@userid as varchar(10)) +  
    ' And ISNULL(uac.ISAccess,1)=1 '   
        
Set @ArchiveLetter = @ArchiveLetter + @Where   
  
if @ArchiveStatus = 0   --���� ��� ����  
   Set @where=@where+' And Archived = 0 '              
                                              
if @ArchiveStatus = 1  --����� ��� �� �������� ��� ������  
   /*Ranjbar ID=155 And ID=313*/  
   --Set @where = @where + ' And Archived = 1 '   
   Set @where = @where + ' And Archived = 1   
       And Letter.LetterID = (Select Top 1 L.LetterID              
                               From Letter L              
                               Inner Join LetterArchiveFolder laf ON laf.Letterid = L.letterid And L.LetterID = Letter.LetterID             
                               Inner Join Archivefolder af  on laf.ArchiveFolderID = af.FolderID              
                               Inner Join UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID   --����� ������ �� �������           
                               Where ISNULL(uac.UserID,' + cast(@userid as varchar(10))+')=' + Cast(@userid as varchar(10)) +  
                               ' And ISNULL(uac.ISAccess,1)=1 )'  
   ---//  
                               
if @ArchiveStatus=2   --����� ���� ���� ���� �� �������� ��� ������  
begin      
   Set @Where = @Where + ' And not Exists   
                          (SELECT  LetterArchiveFolder.LetterID   
                           FROM LetterArchiveFolder,ArchiveFolder   
                           Where LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID      
                             --And (ArchiveFolder.UserID = 0 or ArchiveFolder.Archivecenterid > 0) /*Ranjbar ID=155 And ID=313*/    
                             And(ArchiveFolder.ArchivecenterID > -1)  
                             ---//    
                             And(Letterid =Letter.LetterID) )    
                             And Archived = 1 '      
end  
  
Set @Where = @Where + ' And Letter.letterid in (' + @ArchiveLetter + ')'   
  
----     
  
--������ �����                                                              
if @ArchiveFolderID > 0                  
    Set @Where=@where+' And (archiveFolderID = ' + Cast(@archiveFolderID as varchar(5)) + ')'                   
  
Set @sqlCommand=@sqlCommand+@where + ' Order By IndicatorID Desc '                  
Print @sqlcommand                  
Exec sp_executesql   @sqlCommand           
          
-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 8                  

---------------------------------------------------------------------------
Declare  @SubsetFromOrgTable Table(OrgID int)
Insert into @SubsetFromOrgTable(OrgID)
Select Distinct OrgID from dbo.Get_Subset_OrgID(1)
Select * From @SubsetFromOrgTable
---------------------------------------------------------------------------
/*@Where nvarchar(4000) �� @Where nvarchar(2000) ����� ��
� ǐ� ����� ������ �������� �����*/          
Alter Procedure [dbo].[Get_All_Letter]              
              
@SecretariatID int,                  
@Myear tinyint,                  
@Letter_Type int,                  
@LetterFormat int,                  
@Where nvarchar(4000),                  
@Top smallint ,                  
@ArchiveFolderID int,                  
@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all)               
@UserID int                 
As                  
Declare @SqlCommand nvarchar(4000) , @archiveLetter nvarchar(4000)              
Declare @InnerNo nvarchar(500)               
            
set @InnerNo=dbo.InnerNoFormat('Sender','Deliver')                  
                              
set @sqlCommand=  
'SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,                  
Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,                  
Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,                  
Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,                  
Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,                  
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file, Letter.SubjectID,                 
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@InnerNo+'  InnerNo,Letter.Archived                  
,ActionTypeTitle                 
,Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle                 
,Letter.ReceiveTypeID , letter.ClassificationID               
                
FROM Letter left  JOIN                  
FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN                  
FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID                  
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type                  
Inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID                  
Inner join Secretariats on Secretariats.Secid=Letter.SecretariatID                  
left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'                  
                        
if @archiveFolderID > 0                  
   Set @sqlCommand = @sqlCommand+' Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '                  
                  
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '                  
                        
set @where = isnull(ltrim(rtrim(@where)),'')                  
if @where <> ''   
   Set @where = ' And ' + @where                  
                  
if @Letter_Type <> 0                  
   Set @where=@where + ' And (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'                  
                  
if @Secretariatid <> 0                  
   Set @where=@where + ' And (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'                  
                  
if @Myear<>0                  
  set @where=@where + ' And (myear = '+Cast(@myear as varchar(5))+')'                  
                        
if @LetterFormat <> 0                  
  set @where=@where + ' And (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'                  
                  
----  
Set @ArchiveLetter=  
    'Select  L.LetterID              
    From Letter L              
    Left Join LetterArchiveFolder laf ON laf.Letterid = L.letterid              
    Left Join Archivefolder af  on laf.ArchiveFolderID = af.FolderID              
    Left Join UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID   --����� ������ �� �������           
    Where ISNULL(uac.UserID,' + cast(@userid as varchar(10))+')=' + Cast(@userid as varchar(10)) +  
    ' And ISNULL(uac.ISAccess,1)=1 '   
        
Set @ArchiveLetter = @ArchiveLetter + @Where   
  
if @ArchiveStatus = 0   --���� ��� ����  
   Set @where=@where+' And Archived = 0 '              
                                              
if @ArchiveStatus = 1  --����� ��� �� �������� ��� ������  
   /*Ranjbar ID=155 And ID=313*/  
   --Set @where = @where + ' And Archived = 1 '   
   Set @where = @where + ' And Archived = 1   
       And Letter.LetterID = (Select Top 1 L.LetterID              
                               From Letter L              
                               Inner Join LetterArchiveFolder laf ON laf.Letterid = L.letterid And L.LetterID = Letter.LetterID             
                               Inner Join Archivefolder af  on laf.ArchiveFolderID = af.FolderID              
                               Inner Join UserAccArchive uac on uac.ArchiveFolderID = af.FolderID and uac.secid=L.SecretariatID   --����� ������ �� �������           
                               Where ISNULL(uac.UserID,' + cast(@userid as varchar(10))+')=' + Cast(@userid as varchar(10)) +  
                               ' And ISNULL(uac.ISAccess,1)=1 )'  
   ---//  
                               
if @ArchiveStatus=2   --����� ���� ���� ���� �� �������� ��� ������  
begin      
   Set @Where = @Where + ' And not Exists   
                          (SELECT  LetterArchiveFolder.LetterID   
                           FROM LetterArchiveFolder,ArchiveFolder   
                           Where LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID      
                             --And (ArchiveFolder.UserID = 0 or ArchiveFolder.Archivecenterid > 0) /*Ranjbar ID=155 And ID=313*/    
                             And(ArchiveFolder.ArchivecenterID > -1)  
                             ---//    
                             And(Letterid =Letter.LetterID) )    
                             And Archived = 1 '      
end  
  
Set @Where = @Where + ' And Letter.letterid in (' + @ArchiveLetter + ')'   
  
----     
  
--������ �����                                                              
if @ArchiveFolderID > 0                  
    Set @Where=@where+' And (archiveFolderID = ' + Cast(@archiveFolderID as varchar(5)) + ')' 
--

--ǐ� ����� ������ �������� ���� �����
Declare @IsSecretariantStaffer bit
Set @IsSecretariantStaffer = (Select IsNull(IsSecretariantStaffer,0) from Users Where ID = @UserID)
if @IsSecretariantStaffer = 0
begin
   Declare @UserFromOrgID int
   Set @UserFromOrgID = (Select IsNull(FromOrgID,0) from Users Where ID = @UserID) 
   if @UserFromOrgID > 0
   begin
      Create Table #SubsetFromOrgTable(OrgID int null)
      insert into #SubsetFromOrgTable(OrgID)
      Select OrgID from dbo.Get_Subset_OrgID(@UserFromOrgID)
      --���� �� ���� @Where ����� ������� �� ���� ����� ��� ��� �� �� �����
   end
end
--
  
Set @SqlCommand = @SqlCommand + @Where + ' Order By IndicatorID Desc '                  
Print @sqlcommand                  
Exec Sp_ExecuteSql   @sqlCommand           
 
if @IsSecretariantStaffer = 0   
   Drop table #SubsetFromOrgTable      

-- Exec Get_All_Letter 1, 89, 0, 1, N'', 100, 0, 2, 8

---------------------------------------------------------------------------
/*Ranjbar ���� ���� ����� ��� ���� ��� �� ���� �������*/  
Alter Function dbo.Get_Subset_OrgID(@OrgID int)  
Returns @ReturnTable Table (OrgID int)  
As  
begin  

Insert into @ReturnTable(OrgID)
Values(@OrgID)
While @@RowCount > 0
begin
   Insert into @ReturnTable(OrgID)   
   Select ID from FromOrganizations Where ParentID in (Select OrgID from @ReturnTable) And not ID in (Select OrgID from @ReturnTable)  
end

/*
��� ���
Declare @LocalTable1 TABLE (OrgID int)  
Declare @LocalTable2 TABLE (OrgID int)  
  
Insert into @LocalTable1(OrgID)  
Select @OrgID as ID   
Union  
Select ID from FromOrganizations Where ParentID = @OrgID  --And IsInnerOrg = 1  
  
Insert into @LocalTable2(OrgID)  
Select OrgID From @LocalTable1   
  
While @@ROWCOUNT > 0  
begin     
   Insert into @ReturnTable(OrgID)  
   Select OrgID from @LocalTable1   
  
   Delete From @LocalTable1    
  
   Insert into @LocalTable1(OrgID)  
   Select ID from FromOrganizations Where ParentID in (Select OrgID From @LocalTable2)   --And IsInnerOrg = 1
     
   Delete From @LocalTable2  
  
   Insert into @LocalTable2(OrgID)  
   Select OrgID from @LocalTable1  
end */
  
Return 
end  
  
--Select * from dbo.Get_Subset_OrgID(2)
---------------------------------------------------------------------------
2,1,0,"��� �����","",
3,1,3,"�������","",
4,1,1,"������ ��","",
5,2,0,"������","",
6,2,1,"����","",
7,3,1,"����","",
8,3,2,"��� ����","",
9,3,3,"��� ���","",
10,4,0,"��� ���� ��","",
11,4,1,"�����","",
12,4,2,"�����","",
13,4,3,"�����","",
14,4,4,"���ј","",
15,5,0,"���� �� ����  ��� ��� ����","",
16,5,1,"���� �� ����  ��� ���� ��� ����","",
17,5,2,"���� �� ����  ��� ��� ����","",
18,5,3,"���� �� ����  ��� ��� ����","",
19,5,4,"���� �� ����  ��� ��� ����","",
20,5,5,"���� �� ����  ���� ��� ����","",
21,5,6,"���� �� ����  ���/��� �� ��� ��� ����","",
22,5,7,"���� �� ����  ���� ���� ��� ����","",
23,5,8,"���� �� ����  ����� ��� ����","",
24,5,9,"���� �� ����  ����� ����� ","",
25,5,10,"���� �� ����  ����� ����� �����","",
26,5,11,"���� ���� �� ��� ����� ��� �����","",
27,6,0,"����","",
28,6,1,"������ ���� ��","",
29,6,2,"������ �����","",
30,6,3,"������ ���","",
31,7,0,"���� ��� ����","",
32,7,1,"���� ��� ����� ��� ","",
33,7,2,"����� ���� ���� ���� ","",
34,7,3,"��� ���� ��","1",1
---------------------------------------------------------------------------
����� ���� ���� ���� ��� (���� ������ ��� ����)

/*
Select Incommingdate,RegistrationDate,*
from Letter
Where Letter_Type = 1 
And(Incommingdate > RegistrationDate)
And(Incommingdate > '1389/10/01')
*/

Update Letter
Set Incommingdate = RegistrationDate ,  RegistrationDate = Incommingdate
Where Letter_Type = 1 
And(Incommingdate > RegistrationDate)
And(Incommingdate > '1389/10/01')

GO

Update Letter
Set Letter_Type = 2 , UserMemo = IncommingNo , IncommingNo = Null
Where Letter_Type = 1 
And(IncommingNo like '%� �%') or (IncommingNo like '%� �%')or (IncommingNo like '%��� �%')

GO
---------------------------------------------------------------------------
Delete from listitems Where listid = 7
GO
Insert into listitems(ListiD,Keyvalue,Title,notes,usersID)
Select 7,0,'���� ��� ����',NULL,NULL
union
Select 7,1,'�������� ��� ������',NULL,NULL
union
Select 7,2,'�������� ��� ������',NULL,NULL
union
Select 7,3,'��� ���� ��',1,1
---------------------------------------------------------------------------
/*Jpg ����� ������ �� ���� ��� �� ���� */
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
ALTER TABLE dbo.LetterData ADD
	IsCorrectedImage bit NULL
GO
COMMIT
GO
----------------------------------------------------------
Select Top 20 * 
from LetterData
Where Extention = 1
And IsCorrectedImage is null
Order By LetterDataID Desc

Select Count(LetterDataID) from LetterData Where Extention in (1,2) And IsCorrectedImage is null

Select * 
from LetterData
Where Extention = 1
And IsCorrectedImage = 1

if exists( Select Name from dbo.syscolumns Where Name = 'IsCorrectedImage' And object_name(object_id('LetterData'))='LetterData' ) Select 1 else select 0

---------------------------------------------------------------------------

---------------------------------------------------------------------------

---------------------------------------------------------------------------

---------------------------------------------------------------------------

---------------------------------------------------------------------------

---------------------------------------------------------------------------

---------------------------------------------------------------------------

---------------------------------------------------------------------------

