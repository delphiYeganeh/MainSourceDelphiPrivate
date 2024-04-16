
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTitle] [varchar](1000) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO

ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO


CREATE TABLE [dbo].[SubCategories](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[SubCategoryTitle] [varchar](1000) NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO

ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories]
GO


CREATE TABLE [dbo].[CompanyTypes](
	[CompanyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyTypeTitle] [varchar](200) NULL,
  CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[CompanySizes](
	[CompanySizeId] [int] IDENTITY(1,1) NOT NULL,
	[CompanySizeTitle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CompanySizes] PRIMARY KEY CLUSTERED 
(
	[CompanySizeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
	ALTER TABLE dbo.Customer
	ADD CategoryId INT ,
	 SubCategoryId INT,
	 CompanyTypeId INT,
	 CompanySizeId INT,
	 FreeField19 VARCHAR(1000),
	 FreeField20 VARCHAR(1000),
	 FreeField21 VARCHAR(1000),
	 FreeField22 VARCHAR(1000),
	 FreeField23 VARCHAR(1000),
	 FreeField24 VARCHAR(1000),
	 FreeField25 VARCHAR(1000),
	 FreeField26 VARCHAR(1000),
	 FreeField27 VARCHAR(1000),
	 FreeField28 VARCHAR(1000)

GO

Alter Procedure [dbo].[Select_Customer]        
(@likeWhere nvarchar(1000),@MarketerID int ,@GroupId int,@CityId int,@ProductId int,@CustomerStatusId int =1,@Top int =1000  
,@StateID  int  
,@ContactNumber nvarchar(100)  
,@Email   nvarchar(100)  
)        
As  


Declare @sqlCommand nvarchar(4000),@where nvarchar(1000)        
  Set @sqlCommand='  
      Update CustomerProduct set ContractFinished = 0  
        
      Update CustomerProduct set ContractFinished = 1 FROM CustomerProduct  
      INNER JOIN (  
      SELECT ProductID,CustomerID FROM [CONTRACT] GROUP BY ProductID,CustomerID  
      HAVING max(CONTRACT.EndDate) < dbo.Shamsi(GETDATE())  
       AND not ProductID IS NULL) t  
       ON (t.ProductID = CustomerProduct.ProductID AND t.CustomerID = CustomerProduct.CustomerID )               
       '  
    
  Exec sp_executesql @sqlCommand    
  SET @sqlCommand = ''  
  
Set @sqlCommand='SELECT  top '+cast(@top as varchar(10))+' isnull(CompanyName,'''')+''(''+isnull(PersonTitle,'''')+isnull('' - ''+Treater,'''')+'')''  as NickName      
,Customer.CustomerID, Customer.CustomerNo , cast(1 as bigint) as RowNo  /*  Row_Number() over (order  by insertdate desc )  as RowNo   */
,[PersonTitle],[Address],[Phone],[Notes],[CompanyName],Customer.CityID,Customer.GroupID,Customer.MarketerID           
,[IsActive],[SenderType],[Priority],[Treater],customer.[CompaginID],[PostalCode],[EmailAddress],[WorkPhone1]        
,[Website],[MobilePhone],[FaxNumber],[competitiveNote],Compagin.[CompaginTitle],[Insertdate],[LastUpdate],[CancelReasonID]        
,[CancelComment],[CancelDate],Customer.CustomerStatusID,UserTableLinkedID,CityTitle,GroupTitle,MarketerTitle      
,CustomerStatusTitle,(select max(Tododate) from followup where customerid=customer.customerid and donestatusid=2) latestFollowup      
,(select min(Tododate) from followup where customerid=customer.customerid and donestatusid=1) nextFollowup  
,FreeField01,FreeField02,FreeField03,FreeField04,FreeField05,FreeField06  
,FreeField07,FreeField08,FreeField09,FreeField10,FreeField11,FreeField12  
,FreeField13,FreeField14,FreeField15,FreeField16,FreeField17,FreeField18        
,dbo.fn_FinishedContractBycustomerId(customerid) FinishedContractProducts      

,CategoryId,SubCategoryId,CompanyTypeId,CompanySizeId,FreeField19,FreeField20,FreeField21,FreeField22,
FreeField23,FreeField24,FreeField25,FreeField26,FreeField27,FreeField28

/*,dbo.fn_FinishedContractBycustomerId_NEW(customerid) FinishedContractProducts    */ '

IF @ProductId = 0 
	SET @sqlCommand =@sqlCommand + ', '''' as ContractExpDate'
ELSE
	SET @sqlCommand =@sqlCommand + ', (SELECT isnull(MAX(EndDate),'''') FROM CONTRACT co WHERE ProductID = '+cast(@ProductId as varchar(3))+' AND co.CustomerID= Customer.CustomerID) as ContractExpDate'
Set @sqlCommand= @sqlCommand + ',dbo.fn_ProductByCustomerID(customerid) products,InnerPhone    
,''|''+dbo.fn_ProductIdByCustomerID(customerid)+''|'' ProductsID  
, cast(CustomerId as nvarchar)+''|''+isnull(PostalCode,'''')+''|''+isnull(CustomerNo,'''')+''|''+isnull(PersonTitle,'''')+''|''  
        + isnull(Treater,'''')+''|''+isnull(Address,'''')+''|''+isnull(Notes,'''')+''|''+isnull(CompanyName,'''')
        +''|''+isnull(Phone,'''')+''|''+isnull(CompetitiveNote,'''')+''|''+isnull(FaxNumber,'''')+''|''+isnull(WorkPhone1,'''')+''|''+isnull(MobilePhone,'''')  
  SearchStr  
 , ( isnull(Phone,'''')+''|''+isnull(FaxNumber,'''')+''|''+isnull(WorkPhone1,'''')+''|''+isnull(MobilePhone,'''')) SearchInt  
,city.stateid  
  
FROM Customer         
left join Marketer on Marketer.MarketerID=Customer.MarketerID        
left join Groups on Groups.GroupID=Customer.GroupID        
left join City on City.CityID=Customer.CityID        
left join CustomerStatus on CustomerStatus.CustomerStatusID=Customer.CustomerStatusID 
left join [Compagin] on  Compagin.[CompaginID] = Customer.CompaginID'        
        
Set @likeWhere=isnull(ltrim(rtrim(@likeWhere)),'')        
        
Set @where=''        
if @likeWhere<>''         
 set @where=@where+' where '+@likeWhere        
        
        
Set @where=Replace(@where,'˜','ß')        
        
if @MarketerID<>0         
  if @where<>''         
    set @where=@where+' and ('+cast(@MarketerID as varchar(3))+' in (select marketerid from followup where customerid =customer.customerid) or customer.Marketerid='+cast(@MarketerID as varchar(3))+' or '+cast(@MarketerID as varchar(3))+'=-1)'        
   else        
    set @where=@where+' where ('+cast(@MarketerID as varchar(3))+' in (select marketerid from followup where customerid =customer.customerid) or customer.Marketerid='+cast(@MarketerID as varchar(3))+' or '+cast(@MarketerID as varchar(3))+'=-1)'        
else        
  if @where<>''         
    Set @where=@where+' and (isnull(Customer.GroupID,0)<>17)'        
   else        
    Set @where=@where+' where (isnull(Customer.GroupID,0)<>17)'        
     
if @CustomerStatusId<>0         
  if @where<>''         
    Set @where=@where+' and Customer.CustomerStatusId='+cast(@CustomerStatusId as varchar(3))        
   else        
    Set @where=@where+' where Customer.CustomerStatusId='+cast(@CustomerStatusId as varchar(3))        
        
if @GroupId<>0         
  if @where<>''         
    Set @where=@where+' and isnull(Customer.GroupId,0)='+cast(@GroupId as varchar(3))        
   else        
    Set @where=@where+' where isnull(Customer.GroupId,0)='+cast(@GroupId as varchar(3))        
        
if @CityId<>0         
  if @where<>''         
    Set @where=@where+' and Customer.CityId='+cast(@CityId as varchar(10))        
   else        
    Set @where=@where+' where Customer.CityId='+cast(@CityId as varchar(10))        
        
if @ProductId<>0         
  if @where<>''         
    Set @where=@where+' and CustomerID in (SELECT CustomerID FROM  CustomerProduct WHERE ProductID = ' + cast(@ProductId as varchar(3))+')'        
   else        
    Set @where=@where+' where CustomerID in (SELECT CustomerID FROM  CustomerProduct WHERE ProductID = ' + cast(@ProductId as varchar(3))+')'        
  
if @StateID<>0         
  if @where<>''         
    Set @where=@where+' and (Customer.StateID  = ' + cast(@StateID  as varchar(3))+')'        
   else        
    Set @where=@where+' where (Customer.StateID = ' + cast(@StateID   as varchar(3))+')'        
  
if @Email<>''         
  if @where<>''         
    Set @where=@where+' and (Customer.EmailAddress  like ''%' + @Email+'%'')'        
   else        
    Set @where=@where+' where (Customer.EmailAddress like ''%' +@Email+'%'')'        
  
if @ContactNumber<>''         
  if @where<>''         
    Set @where=@where+' and ((Phone like ''%'+@ContactNumber+'%'') or (WorkPhone1 like ''%'+@ContactNumber+'%'') or '+  
       ' (MobilePhone like ''%'+@ContactNumber+'%'') or (FaxNumber like ''%'+@ContactNumber+'%'')  )'  
   else        
    Set @where=@where+' where ((Phone like ''%'+@ContactNumber+'%'') or (WorkPhone1 like ''%'+@ContactNumber+'%'') or '+  
      ' (MobilePhone like ''%'+@ContactNumber+'%'') or (FaxNumber like ''%'+@ContactNumber+'%'')  )'  
  
        
Set @sqlCommand=@sqlCommand+@where+' order  by insertdate desc '        
Exec sp_executesql @sqlCommand 
GO
