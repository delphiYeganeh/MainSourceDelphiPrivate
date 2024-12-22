

if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Accesses' and c.name='ID')                                                                                                                                                   
alter TABLE Accesses add ID  tinyint Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Accesses' and c.name='Title')                                                                                                                                                
alter TABLE Accesses add Title  nvarchar(50) Null                                                                                                                                                                                                              
else
alter TABLE Accesses alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='AccessType' and c.name='AccessTypeID')                                                                                                                                       
alter TABLE AccessType add AccessTypeID  tinyint Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='AccessType' and c.name='AccessTypeTitle')                                                                                                                                    
alter TABLE AccessType add AccessTypeTitle  nvarchar(50) Not Null default 0                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Actions' and c.name='FormTag')                                                                                                                                               
alter TABLE Actions add FormTag  tinyint Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Actions' and c.name='ID')                                                                                                                                                    
alter TABLE Actions add ID  int Not Null default 0                                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Actions' and c.name='Title')                                                                                                                                                 
alter TABLE Actions add Title  nvarchar(50) Null                                                                                                                                                                                                               
else
alter TABLE Actions alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ActionsAccess' and c.name='AccessID')                                                                                                                                        
alter TABLE ActionsAccess add AccessID  tinyint Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ActionsAccess' and c.name='ActionID')                                                                                                                                        
alter TABLE ActionsAccess add ActionID  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ActionsAccess' and c.name='FormTag')                                                                                                                                         
alter TABLE ActionsAccess add FormTag  tinyint Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ActionsAccess' and c.name='HasAccess')                                                                                                                                       
alter TABLE ActionsAccess add HasAccess  bit Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ActionType' and c.name='ActionTypeID')                                                                                                                                       
alter TABLE ActionType add ActionTypeID  int Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ActionType' and c.name='ActionTypeTitle')                                                                                                                                    
alter TABLE ActionType add ActionTypeTitle  nvarchar(50) Null                                                                                                                                                                                                  
else
alter TABLE ActionType alter column ActionTypeTitle  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='ID')                                                                                                                                                      
alter TABLE added add ID  int Not Null default 0                                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='Title')                                                                                                                                                   
alter TABLE added add Title  nvarchar(100) Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='ParentID')                                                                                                                                                
alter TABLE added add ParentID  int Not Null default 0                                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='Phone')                                                                                                                                                   
alter TABLE added add Phone  nvarchar(30) Null                                                                                                                                                                                                                 
else
alter TABLE added alter column Phone  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='Fax')                                                                                                                                                     
alter TABLE added add Fax  nvarchar(30) Null                                                                                                                                                                                                                   
else
alter TABLE added alter column Fax  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='Email')                                                                                                                                                   
alter TABLE added add Email  nvarchar(30) Null                                                                                                                                                                                                                 
else
alter TABLE added alter column Email  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='ResponsibleStaffer')                                                                                                                                      
alter TABLE added add ResponsibleStaffer  nvarchar(50) Not Null default 0                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='IsActive')                                                                                                                                                
alter TABLE added add IsActive  bit Null                                                                                                                                                                                                                       
else
alter TABLE added alter column IsActive  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='PreCode')                                                                                                                                                 
alter TABLE added add PreCode  nvarchar(50) Null                                                                                                                                                                                                               
else
alter TABLE added alter column PreCode  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='IsInnerOrg')                                                                                                                                              
alter TABLE added add IsInnerOrg  bit Not Null default 0                                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='Code')                                                                                                                                                    
alter TABLE added add Code  nvarchar(10) Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='added' and c.name='Number')                                                                                                                                                  
alter TABLE added add Number  int Not Null  default (0)                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ApplicationForms' and c.name='ID')                                                                                                                                           
alter TABLE ApplicationForms add ID  tinyint Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ApplicationForms' and c.name='Title')                                                                                                                                        
alter TABLE ApplicationForms add Title  nvarchar(50) Null                                                                                                                                                                                                      
else
alter TABLE ApplicationForms alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveCenter' and c.name='ArchiveCenterID')                                                                                                                                 
alter TABLE ArchiveCenter add ArchiveCenterID  int Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveCenter' and c.name='ArchiveCenterTitle')                                                                                                                              
alter TABLE ArchiveCenter add ArchiveCenterTitle  nvarchar(50) Not Null default 0                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveFolder' and c.name='FolderID')                                                                                                                                        
alter TABLE ArchiveFolder add FolderID  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveFolder' and c.name='ParentFolderID')                                                                                                                                  
alter TABLE ArchiveFolder add ParentFolderID  int Not Null default 0                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveFolder' and c.name='Title')                                                                                                                                           
alter TABLE ArchiveFolder add Title  nvarchar(100) Null                                                                                                                                                                                                        
else
alter TABLE ArchiveFolder alter column Title  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveFolder' and c.name='UserID')                                                                                                                                          
alter TABLE ArchiveFolder add UserID  int Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveFolder' and c.name='Notes')                                                                                                                                           
alter TABLE ArchiveFolder add Notes  nvarchar(500) Null                                                                                                                                                                                                        
else
alter TABLE ArchiveFolder alter column Notes  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ArchiveFolder' and c.name='Place')                                                                                                                                           
alter TABLE ArchiveFolder add Place  nvarchar(100) Null                                                                                                                                                                                                        
else
alter TABLE ArchiveFolder alter column Place  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Classifications' and c.name='ID')                                                                                                                                            
alter TABLE Classifications add ID  int Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Classifications' and c.name='Title')                                                                                                                                         
alter TABLE Classifications add Title  nvarchar(50) Null                                                                                                                                                                                                       
else
alter TABLE Classifications alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='DoneStatus' and c.name='DoneStatusID')                                                                                                                                       
alter TABLE DoneStatus add DoneStatusID  tinyint Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='DoneStatus' and c.name='DoneStatustitle')                                                                                                                                    
alter TABLE DoneStatus add DoneStatustitle  nvarchar(50) Not Null default 0                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='EmailsID')                                                                                                                                               
alter TABLE Emails add EmailsID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='Code')                                                                                                                                                   
alter TABLE Emails add Code  int Not Null default 0                                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='Subject')                                                                                                                                                
alter TABLE Emails add Subject  nvarchar(200) Not Null default 0                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='SendAddress')                                                                                                                                            
alter TABLE Emails add SendAddress  nvarchar(100) Null                                                                                                                                                                                                         
else
alter TABLE Emails alter column SendAddress  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='ReciveAddress')                                                                                                                                          
alter TABLE Emails add ReciveAddress  nvarchar(100) Null                                                                                                                                                                                                       
else
alter TABLE Emails alter column ReciveAddress  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='Memo')                                                                                                                                                   
alter TABLE Emails add Memo  image Null                                                                                                                                                                                                                        

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='AttachFile')                                                                                                                                             
alter TABLE Emails add AttachFile  image Null                                                                                                                                                                                                                  

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='AttachFileName')                                                                                                                                         
alter TABLE Emails add AttachFileName  nvarchar(50) Null                                                                                                                                                                                                       
else
alter TABLE Emails alter column AttachFileName  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='Status')                                                                                                                                                 
alter TABLE Emails add Status  smallint Null                                                                                                                                                                                                                   
else
alter TABLE Emails alter column Status  smallint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='DateEmail')                                                                                                                                              
alter TABLE Emails add DateEmail  nvarchar(10) Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='TimeEmail')                                                                                                                                              
alter TABLE Emails add TimeEmail  nvarchar(10) Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='IsAnswer')                                                                                                                                               
alter TABLE Emails add IsAnswer  bit Null                                                                                                                                                                                                                      
else
alter TABLE Emails alter column IsAnswer  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='IsReciveEmail')                                                                                                                                          
alter TABLE Emails add IsReciveEmail  bit Null                                                                                                                                                                                                                 
else
alter TABLE Emails alter column IsReciveEmail  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='UsersID')                                                                                                                                                
alter TABLE Emails add UsersID  int Not Null default 0                                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='IsRead')                                                                                                                                                 
alter TABLE Emails add IsRead  bit Null                                                                                                                                                                                                                        
else
alter TABLE Emails alter column IsRead  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='IsPersonal')                                                                                                                                             
alter TABLE Emails add IsPersonal  bit Null                                                                                                                                                                                                                    
else
alter TABLE Emails alter column IsPersonal  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='IsImportant')                                                                                                                                            
alter TABLE Emails add IsImportant  bit Null                                                                                                                                                                                                                   
else
alter TABLE Emails alter column IsImportant  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='IsSecret')                                                                                                                                               
alter TABLE Emails add IsSecret  bit Null                                                                                                                                                                                                                      
else
alter TABLE Emails alter column IsSecret  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Emails' and c.name='EmailNuFromDate')                                                                                                                                        
alter TABLE Emails add EmailNuFromDate  nvarchar(20) Null                                                                                                                                                                                                      
else
alter TABLE Emails alter column EmailNuFromDate  nvarchar(20)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ErrorMessage' and c.name='Errorid')                                                                                                                                          
alter TABLE ErrorMessage add Errorid  bigint Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ErrorMessage' and c.name='ErrorMessage')                                                                                                                                     
alter TABLE ErrorMessage add ErrorMessage  nvarchar(255) Null                                                                                                                                                                                                  
else
alter TABLE ErrorMessage alter column ErrorMessage  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ErrorMessage' and c.name='ErrorDate')                                                                                                                                        
alter TABLE ErrorMessage add ErrorDate  nvarchar(10) Null                                                                                                                                                                                                      
else
alter TABLE ErrorMessage alter column ErrorDate  nvarchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ErrorMessage' and c.name='UserCode')                                                                                                                                         
alter TABLE ErrorMessage add UserCode  int Null                                                                                                                                                                                                                
else
alter TABLE ErrorMessage alter column UserCode  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ErrorMessage' and c.name='FarsiMessage')                                                                                                                                     
alter TABLE ErrorMessage add FarsiMessage  nvarchar(255) Null                                                                                                                                                                                                  
else
alter TABLE ErrorMessage alter column FarsiMessage  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ErrorMessage' and c.name='ShowMessage')                                                                                                                                      
alter TABLE ErrorMessage add ShowMessage  bit Null  default (1)                                                                                                                                                                                                
else
alter TABLE ErrorMessage alter column ShowMessage  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Extention' and c.name='ExtentionID')                                                                                                                                         
alter TABLE Extention add ExtentionID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Extention' and c.name='ExtentionTitle')                                                                                                                                      
alter TABLE Extention add ExtentionTitle  nvarchar(200) Not Null default 0                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Extention' and c.name='Extention')                                                                                                                                           
alter TABLE Extention add Extention  varchar(5) Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Extention' and c.name='IsSystem')                                                                                                                                            
alter TABLE Extention add IsSystem  bit Not Null  default (0)                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FieldAccess' and c.name='FieldAccessID')                                                                                                                                     
alter TABLE FieldAccess add FieldAccessID  int Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FieldAccess' and c.name='FieldID')                                                                                                                                           
alter TABLE FieldAccess add FieldID  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FieldAccess' and c.name='UserID')                                                                                                                                            
alter TABLE FieldAccess add UserID  int Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FieldAccess' and c.name='AccessTypeID')                                                                                                                                      
alter TABLE FieldAccess add AccessTypeID  tinyint Not Null default 0                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='ID')                                                                                                                                                     
alter TABLE Fields add ID  int Not Null default 0                                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='FieldName')                                                                                                                                              
alter TABLE Fields add FieldName  nvarchar(50) Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='TableID')                                                                                                                                                
alter TABLE Fields add TableID  int Not Null  default ((1))                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='Description')                                                                                                                                            
alter TABLE Fields add Description  nvarchar(50) Null                                                                                                                                                                                                          
else
alter TABLE Fields alter column Description  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='IsWhere')                                                                                                                                                
alter TABLE Fields add IsWhere  bit Not Null  default ((1))                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='ISString')                                                                                                                                               
alter TABLE Fields add ISString  bit Not Null  default ((1))                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='IsLike')                                                                                                                                                 
alter TABLE Fields add IsLike  bit Not Null  default ((1))                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='EveryLike')                                                                                                                                              
alter TABLE Fields add EveryLike  bit Not Null  default ((0))                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='VisibleInGrid')                                                                                                                                          
alter TABLE Fields add VisibleInGrid  bit Not Null  default ((1))                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='isblob')                                                                                                                                                 
alter TABLE Fields add isblob  bit Null  default ((0))                                                                                                                                                                                                         
else
alter TABLE Fields alter column isblob  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='FieldTypeID')                                                                                                                                            
alter TABLE Fields add FieldTypeID  int Null                                                                                                                                                                                                                   
else
alter TABLE Fields alter column FieldTypeID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='ReferenceTableID')                                                                                                                                       
alter TABLE Fields add ReferenceTableID  int Null                                                                                                                                                                                                              
else
alter TABLE Fields alter column ReferenceTableID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='FieldGroupID')                                                                                                                                           
alter TABLE Fields add FieldGroupID  int Null                                                                                                                                                                                                                  
else
alter TABLE Fields alter column FieldGroupID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Fields' and c.name='isboolean')                                                                                                                                              
alter TABLE Fields add isboolean  bit Null                                                                                                                                                                                                                     
else
alter TABLE Fields alter column isboolean  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FieldType' and c.name='FieldTypeID')                                                                                                                                         
alter TABLE FieldType add FieldTypeID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FieldType' and c.name='FieldTypeTitle')                                                                                                                                      
alter TABLE FieldType add FieldTypeTitle  nvarchar(50) Not Null default 0                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='FollowUPID')                                                                                                                                           
alter TABLE FollowUp add FollowUPID  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='StartFollowUpID')                                                                                                                                      
alter TABLE FollowUp add StartFollowUpID  int Null                                                                                                                                                                                                             
else
alter TABLE FollowUp alter column StartFollowUpID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='FollowUPTypeID')                                                                                                                                       
alter TABLE FollowUp add FollowUPTypeID  int Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='DoneStatusID')                                                                                                                                         
alter TABLE FollowUp add DoneStatusID  tinyint Not Null  default ((1))                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='UserID')                                                                                                                                               
alter TABLE FollowUp add UserID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='Comment')                                                                                                                                              
alter TABLE FollowUp add Comment  nvarchar(255) Null                                                                                                                                                                                                           
else
alter TABLE FollowUp alter column Comment  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='ToDoDate')                                                                                                                                             
alter TABLE FollowUp add ToDoDate  char(10) Null                                                                                                                                                                                                               
else
alter TABLE FollowUp alter column ToDoDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='ToDoTime')                                                                                                                                             
alter TABLE FollowUp add ToDoTime  char(5) Null                                                                                                                                                                                                                
else
alter TABLE FollowUp alter column ToDoTime  char(5)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='DoneComment')                                                                                                                                          
alter TABLE FollowUp add DoneComment  nvarchar(255) Null                                                                                                                                                                                                       
else
alter TABLE FollowUp alter column DoneComment  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='HasAlarm')                                                                                                                                             
alter TABLE FollowUp add HasAlarm  bit Null                                                                                                                                                                                                                    
else
alter TABLE FollowUp alter column HasAlarm  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUp' and c.name='Letterid')                                                                                                                                             
alter TABLE FollowUp add Letterid  int Null  default ((0))                                                                                                                                                                                                     
else
alter TABLE FollowUp alter column Letterid  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUpType' and c.name='FollowUpTypeID')                                                                                                                                   
alter TABLE FollowUpType add FollowUpTypeID  int Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FollowUpType' and c.name='FollowUpTypeTitle')                                                                                                                                
alter TABLE FollowUpType add FollowUpTypeTitle  nvarchar(50) Not Null default 0                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='ID')                                                                                                                                          
alter TABLE FromOrganizations add ID  int Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='Title')                                                                                                                                       
alter TABLE FromOrganizations add Title  nvarchar(100) Null                                                                                                                                                                                                    
else
alter TABLE FromOrganizations alter column Title  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='ParentID')                                                                                                                                    
alter TABLE FromOrganizations add ParentID  int Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='Phone')                                                                                                                                       
alter TABLE FromOrganizations add Phone  nvarchar(30) Null                                                                                                                                                                                                     
else
alter TABLE FromOrganizations alter column Phone  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='Fax')                                                                                                                                         
alter TABLE FromOrganizations add Fax  nvarchar(30) Null                                                                                                                                                                                                       
else
alter TABLE FromOrganizations alter column Fax  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='Email')                                                                                                                                       
alter TABLE FromOrganizations add Email  nvarchar(30) Null                                                                                                                                                                                                     
else
alter TABLE FromOrganizations alter column Email  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='ResponsibleStaffer')                                                                                                                          
alter TABLE FromOrganizations add ResponsibleStaffer  nvarchar(50) Null                                                                                                                                                                                        
else
alter TABLE FromOrganizations alter column ResponsibleStaffer  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='IsActive')                                                                                                                                    
alter TABLE FromOrganizations add IsActive  bit Null  default (1)                                                                                                                                                                                              
else
alter TABLE FromOrganizations alter column IsActive  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='PreCode')                                                                                                                                     
alter TABLE FromOrganizations add PreCode  nvarchar(50) Null                                                                                                                                                                                                   
else
alter TABLE FromOrganizations alter column PreCode  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='IsInnerOrg')                                                                                                                                  
alter TABLE FromOrganizations add IsInnerOrg  bit Not Null  default (1)                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='Code')                                                                                                                                        
alter TABLE FromOrganizations add Code  nvarchar(50) Null  default (1)                                                                                                                                                                                         
else
alter TABLE FromOrganizations alter column Code  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='FromOrganizations' and c.name='UniqueID')                                                                                                                                    
alter TABLE FromOrganizations add UniqueID  bigint Null                                                                                                                                                                                                        
else
alter TABLE FromOrganizations alter column UniqueID  bigint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ImageData' and c.name='ImageDataID')                                                                                                                                         
alter TABLE ImageData add ImageDataID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ImageData' and c.name='Data')                                                                                                                                                
alter TABLE ImageData add Data  image Null                                                                                                                                                                                                                     

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ImageData' and c.name='FileName')                                                                                                                                            
alter TABLE ImageData add FileName  nvarchar(50) Null                                                                                                                                                                                                          
else
alter TABLE ImageData alter column FileName  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ImageData' and c.name='TableName')                                                                                                                                           
alter TABLE ImageData add TableName  nvarchar(50) Not Null default 0                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ImageData' and c.name='TableID')                                                                                                                                             
alter TABLE ImageData add TableID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ImageData' and c.name='Tag')                                                                                                                                                 
alter TABLE ImageData add Tag  int Null                                                                                                                                                                                                                        
else
alter TABLE ImageData alter column Tag  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='LetterID')                                                                                                                                               
alter TABLE Letter add LetterID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='IndicatorID')                                                                                                                                            
alter TABLE Letter add IndicatorID  int Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='MYear')                                                                                                                                                  
alter TABLE Letter add MYear  tinyint Not Null default 0                                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='SecretariatID')                                                                                                                                          
alter TABLE Letter add SecretariatID  int Not Null  default ((1))                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='Letter_Type')                                                                                                                                            
alter TABLE Letter add Letter_Type  int Not Null  default ((1))                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='letterformat')                                                                                                                                           
alter TABLE Letter add letterformat  int Not Null  default ((1))                                                                                                                                                                                               
else
alter TABLE Letter alter column letterformat  int Not Null                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='IncommingNO')                                                                                                                                            
alter TABLE Letter add IncommingNO  nvarchar(50) Null                                                                                                                                                                                                          
else
alter TABLE Letter alter column IncommingNO  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='Incommingdate')                                                                                                                                          
alter TABLE Letter add Incommingdate  nvarchar(10) Null                                                                                                                                                                                                        
else
alter TABLE Letter alter column Incommingdate  nvarchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='CenterNo')                                                                                                                                               
alter TABLE Letter add CenterNo  nvarchar(50) Null                                                                                                                                                                                                             
else
alter TABLE Letter alter column CenterNo  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='CenterDate')                                                                                                                                             
alter TABLE Letter add CenterDate  char(10) Null                                                                                                                                                                                                               
else
alter TABLE Letter alter column CenterDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='FromOrgID')                                                                                                                                              
alter TABLE Letter add FromOrgID  int Not Null  default ((-1))                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='ToOrgID')                                                                                                                                                
alter TABLE Letter add ToOrgID  int Not Null  default ((0))                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='Signerid')                                                                                                                                               
alter TABLE Letter add Signerid  nvarchar(50) Null                                                                                                                                                                                                             
else
alter TABLE Letter alter column Signerid  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='ClassificationID')                                                                                                                                       
alter TABLE Letter add ClassificationID  int Not Null  default ((1))                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UrgencyID')                                                                                                                                              
alter TABLE Letter add UrgencyID  int Not Null  default ((1))                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='Memo')                                                                                                                                                   
alter TABLE Letter add Memo  nvarchar(2000) Null                                                                                                                                                                                                               
else
alter TABLE Letter alter column Memo  nvarchar(2000)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='AttachTitle')                                                                                                                                            
alter TABLE Letter add AttachTitle  nvarchar(50) Null                                                                                                                                                                                                          
else
alter TABLE Letter alter column AttachTitle  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='NumberOfAttachPages')                                                                                                                                    
alter TABLE Letter add NumberOfAttachPages  smallint Null  default ((1))                                                                                                                                                                                       
else
alter TABLE Letter alter column NumberOfAttachPages  smallint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='NumberOfPage')                                                                                                                                           
alter TABLE Letter add NumberOfPage  tinyint Not Null  default ((1))                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='ReceiveTypeID')                                                                                                                                          
alter TABLE Letter add ReceiveTypeID  int Not Null  default ((1))                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UserID')                                                                                                                                                 
alter TABLE Letter add UserID  int Not Null  default ((0))                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='RetroactionNo')                                                                                                                                          
alter TABLE Letter add RetroactionNo  nvarchar(50) Null                                                                                                                                                                                                        
else
alter TABLE Letter alter column RetroactionNo  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UserMemo')                                                                                                                                               
alter TABLE Letter add UserMemo  nvarchar(255) Null                                                                                                                                                                                                            
else
alter TABLE Letter alter column UserMemo  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='RegistrationDate')                                                                                                                                       
alter TABLE Letter add RegistrationDate  char(10) Not Null default 0                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='RegistrationTime')                                                                                                                                       
alter TABLE Letter add RegistrationTime  varchar(5) Not Null default 0                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='FollowLetterNo')                                                                                                                                         
alter TABLE Letter add FollowLetterNo  nvarchar(50) Null                                                                                                                                                                                                       
else
alter TABLE Letter alter column FollowLetterNo  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='ToStaffer')                                                                                                                                              
alter TABLE Letter add ToStaffer  nvarchar(50) Null                                                                                                                                                                                                            
else
alter TABLE Letter alter column ToStaffer  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='SentLetterID')                                                                                                                                           
alter TABLE Letter add SentLetterID  int Null                                                                                                                                                                                                                  
else
alter TABLE Letter alter column SentLetterID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='TemplateID')                                                                                                                                             
alter TABLE Letter add TemplateID  int Null                                                                                                                                                                                                                    
else
alter TABLE Letter alter column TemplateID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='HeaderID')                                                                                                                                               
alter TABLE Letter add HeaderID  int Null                                                                                                                                                                                                                      
else
alter TABLE Letter alter column HeaderID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='LetterRecommites')                                                                                                                                       
alter TABLE Letter add LetterRecommites  nvarchar(500) Null                                                                                                                                                                                                    
else
alter TABLE Letter alter column LetterRecommites  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='PreCode')                                                                                                                                                
alter TABLE Letter add PreCode  nvarchar(50) Null                                                                                                                                                                                                              
else
alter TABLE Letter alter column PreCode  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='fromstaffer')                                                                                                                                            
alter TABLE Letter add fromstaffer  nvarchar(50) Null                                                                                                                                                                                                          
else
alter TABLE Letter alter column fromstaffer  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='Finalized')                                                                                                                                              
alter TABLE Letter add Finalized  bit Not Null  default ((1))                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='SendStatusID')                                                                                                                                           
alter TABLE Letter add SendStatusID  int Not Null  default ((1))                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='LastUpdate')                                                                                                                                             
alter TABLE Letter add LastUpdate  datetime Not Null  default (getdate())                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UserTableID')                                                                                                                                            
alter TABLE Letter add UserTableID  int Null                                                                                                                                                                                                                   
else
alter TABLE Letter alter column UserTableID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UniqueID')                                                                                                                                               
alter TABLE Letter add UniqueID  bigint Null                                                                                                                                                                                                                   
else
alter TABLE Letter alter column UniqueID  bigint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='Archived')                                                                                                                                               
alter TABLE Letter add Archived  bit Not Null  default ((0))                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='SubjectDescription')                                                                                                                                     
alter TABLE Letter add SubjectDescription  nvarchar(255) Null                                                                                                                                                                                                  
else
alter TABLE Letter alter column SubjectDescription  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='SubjectID')                                                                                                                                              
alter TABLE Letter add SubjectID  int Null                                                                                                                                                                                                                     
else
alter TABLE Letter alter column SubjectID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='LatestActionTypeID')                                                                                                                                     
alter TABLE Letter add LatestActionTypeID  int Null                                                                                                                                                                                                            
else
alter TABLE Letter alter column LatestActionTypeID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='LatestActionReason')                                                                                                                                     
alter TABLE Letter add LatestActionReason  nvarchar(255) Null                                                                                                                                                                                                  
else
alter TABLE Letter alter column LatestActionReason  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='DeadLineDate')                                                                                                                                           
alter TABLE Letter add DeadLineDate  char(10) Null                                                                                                                                                                                                             
else
alter TABLE Letter alter column DeadLineDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='ActionTypeID')                                                                                                                                           
alter TABLE Letter add ActionTypeID  int Not Null  default ((1))                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='UserTableID2')                                                                                                                                           
alter TABLE Letter add UserTableID2  int Null                                                                                                                                                                                                                  
else
alter TABLE Letter alter column UserTableID2  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Letter' and c.name='EmailNuFromDate')                                                                                                                                        
alter TABLE Letter add EmailNuFromDate  nvarchar(20) Null                                                                                                                                                                                                      
else
alter TABLE Letter alter column EmailNuFromDate  nvarchar(20)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='LetterArchiveID')                                                                                                                           
alter TABLE LetterArchiveFolder add LetterArchiveID  int Not Null default 0                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='ArchiveFolderID')                                                                                                                           
alter TABLE LetterArchiveFolder add ArchiveFolderID  int Not Null default 0                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='LetterID')                                                                                                                                  
alter TABLE LetterArchiveFolder add LetterID  int Not Null default 0                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='ArchiveDate')                                                                                                                               
alter TABLE LetterArchiveFolder add ArchiveDate  char(10) Not Null default 0                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='Page')                                                                                                                                      
alter TABLE LetterArchiveFolder add Page  int Null                                                                                                                                                                                                             
else
alter TABLE LetterArchiveFolder alter column Page  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='ArchiveNotes')                                                                                                                              
alter TABLE LetterArchiveFolder add ArchiveNotes  nvarchar(50) Null                                                                                                                                                                                            
else
alter TABLE LetterArchiveFolder alter column ArchiveNotes  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterArchiveFolder' and c.name='UserID')                                                                                                                                    
alter TABLE LetterArchiveFolder add UserID  int Not Null  default (0)                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='LetterDataID')                                                                                                                                       
alter TABLE LetterData add LetterDataID  int Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='LetterID')                                                                                                                                           
alter TABLE LetterData add LetterID  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='PageNumber')                                                                                                                                         
alter TABLE LetterData add PageNumber  tinyint Not Null  default (0)                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='Image')                                                                                                                                              
alter TABLE LetterData add Image  image Null                                                                                                                                                                                                                   

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='extention')                                                                                                                                          
alter TABLE LetterData add extention  tinyint Not Null  default (1)                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='Description')                                                                                                                                        
alter TABLE LetterData add Description  nvarchar(200) Null                                                                                                                                                                                                     
else
alter TABLE LetterData alter column Description  nvarchar(200)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='LastUpdate')                                                                                                                                         
alter TABLE LetterData add LastUpdate  datetime Null  default (getdate())                                                                                                                                                                                      
else
alter TABLE LetterData alter column LastUpdate  datetime  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='UniqueID')                                                                                                                                           
alter TABLE LetterData add UniqueID  bigint Null                                                                                                                                                                                                               
else
alter TABLE LetterData alter column UniqueID  bigint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterData' and c.name='ListItemsID')                                                                                                                                        
alter TABLE LetterData add ListItemsID  int Null                                                                                                                                                                                                               
else
alter TABLE LetterData alter column ListItemsID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='LetterFieldValueID')                                                                                                                           
alter TABLE LetterFieldValue add LetterFieldValueID  int Not Null default 0                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='LetterID')                                                                                                                                     
alter TABLE LetterFieldValue add LetterID  int Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='FieldID')                                                                                                                                      
alter TABLE LetterFieldValue add FieldID  int Not Null default 0                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='FieldValue')                                                                                                                                   
alter TABLE LetterFieldValue add FieldValue  nvarchar(2000) Null                                                                                                                                                                                               
else
alter TABLE LetterFieldValue alter column FieldValue  nvarchar(2000)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='uniqueID')                                                                                                                                     
alter TABLE LetterFieldValue add uniqueID  bigint Null                                                                                                                                                                                                         
else
alter TABLE LetterFieldValue alter column uniqueID  bigint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='LastUpdate')                                                                                                                                   
alter TABLE LetterFieldValue add LastUpdate  datetime Null  default (getdate())                                                                                                                                                                                
else
alter TABLE LetterFieldValue alter column LastUpdate  datetime  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='InsertUserID')                                                                                                                                 
alter TABLE LetterFieldValue add InsertUserID  int Not Null  default (0)                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFieldValue' and c.name='FormOrder')                                                                                                                                    
alter TABLE LetterFieldValue add FormOrder  tinyint Not Null  default (1)                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFormats' and c.name='Code')                                                                                                                                            
alter TABLE LetterFormats add Code  int Not Null default 0                                                                                                                                                                                                     

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterFormats' and c.name='Title')                                                                                                                                           
alter TABLE LetterFormats add Title  nvarchar(50) Null                                                                                                                                                                                                         
else
alter TABLE LetterFormats alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterRelation' and c.name='LetterRelationID')                                                                                                                               
alter TABLE LetterRelation add LetterRelationID  int Not Null default 0                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterRelation' and c.name='MainLetterID')                                                                                                                                   
alter TABLE LetterRelation add MainLetterID  int Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterRelation' and c.name='SubLetterID')                                                                                                                                    
alter TABLE LetterRelation add SubLetterID  int Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterRelation' and c.name='Ord')                                                                                                                                            
alter TABLE LetterRelation add Ord  tinyint Not Null  default (1)                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTemplate' and c.name='ID')                                                                                                                                             
alter TABLE LetterTemplate add ID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTemplate' and c.name='Document')                                                                                                                                       
alter TABLE LetterTemplate add Document  image Null                                                                                                                                                                                                            

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTemplate' and c.name='Title')                                                                                                                                          
alter TABLE LetterTemplate add Title  nvarchar(50) Null                                                                                                                                                                                                        
else
alter TABLE LetterTemplate alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTemplate' and c.name='validHeader')                                                                                                                                    
alter TABLE LetterTemplate add validHeader  smallint Null                                                                                                                                                                                                      
else
alter TABLE LetterTemplate alter column validHeader  smallint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTemplate' and c.name='TemplateGroupID')                                                                                                                                
alter TABLE LetterTemplate add TemplateGroupID  int Not Null  default (1)                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterText' and c.name='LetterID')                                                                                                                                           
alter TABLE LetterText add LetterID  int Null                                                                                                                                                                                                                  
else
alter TABLE LetterText alter column LetterID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterText' and c.name='LetterFormat')                                                                                                                                       
alter TABLE LetterText add LetterFormat  int Not Null  default (1)                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterText' and c.name='TypeText')                                                                                                                                           
alter TABLE LetterText add TypeText  ntext Null                                                                                                                                                                                                                

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterText' and c.name='Html')                                                                                                                                               
alter TABLE LetterText add Html  ntext Null                                                                                                                                                                                                                    

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTypes' and c.name='ID')                                                                                                                                                
alter TABLE LetterTypes add ID  int Not Null default 0                                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTypes' and c.name='Title')                                                                                                                                             
alter TABLE LetterTypes add Title  nvarchar(50) Null                                                                                                                                                                                                           
else
alter TABLE LetterTypes alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LetterTypes' and c.name='PreCode')                                                                                                                                           
alter TABLE LetterTypes add PreCode  nvarchar(10) Null                                                                                                                                                                                                         
else
alter TABLE LetterTypes alter column PreCode  nvarchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LifeTips' and c.name='id')                                                                                                                                                   
alter TABLE LifeTips add id  int Not Null default 0                                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='LifeTips' and c.name='title')                                                                                                                                                
alter TABLE LifeTips add title  nvarchar(150) Null                                                                                                                                                                                                             
else
alter TABLE LifeTips alter column title  nvarchar(150)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ListItems' and c.name='ListItemsID')                                                                                                                                         
alter TABLE ListItems add ListItemsID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ListItems' and c.name='ListID')                                                                                                                                              
alter TABLE ListItems add ListID  tinyint Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ListItems' and c.name='KeyValue')                                                                                                                                            
alter TABLE ListItems add KeyValue  int Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ListItems' and c.name='Title')                                                                                                                                               
alter TABLE ListItems add Title  nvarchar(50) Null                                                                                                                                                                                                             
else
alter TABLE ListItems alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ListItems' and c.name='Notes')                                                                                                                                               
alter TABLE ListItems add Notes  nvarchar(255) Null                                                                                                                                                                                                            
else
alter TABLE ListItems alter column Notes  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ListItems' and c.name='UsersID')                                                                                                                                             
alter TABLE ListItems add UsersID  int Null                                                                                                                                                                                                                    
else
alter TABLE ListItems alter column UsersID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='NewsID')                                                                                                                                                   
alter TABLE News add NewsID  int Not Null default 0                                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='Code')                                                                                                                                                     
alter TABLE News add Code  int Not Null default 0                                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='Title')                                                                                                                                                    
alter TABLE News add Title  nvarchar(300) Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='Memo')                                                                                                                                                     
alter TABLE News add Memo  nvarchar(3000) Null                                                                                                                                                                                                                 
else
alter TABLE News alter column Memo  nvarchar(3000)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='UrgenceisID')                                                                                                                                              
alter TABLE News add UrgenceisID  int Null  default ((1))                                                                                                                                                                                                      
else
alter TABLE News alter column UrgenceisID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='DateAnnounce')                                                                                                                                             
alter TABLE News add DateAnnounce  nvarchar(10) Null                                                                                                                                                                                                           
else
alter TABLE News alter column DateAnnounce  nvarchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='TimeAnnounce')                                                                                                                                             
alter TABLE News add TimeAnnounce  nvarchar(10) Null                                                                                                                                                                                                           
else
alter TABLE News alter column TimeAnnounce  nvarchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='DateExpire')                                                                                                                                               
alter TABLE News add DateExpire  nvarchar(10) Null                                                                                                                                                                                                             
else
alter TABLE News alter column DateExpire  nvarchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='News' and c.name='UserID')                                                                                                                                                   
alter TABLE News add UserID  int Not Null default 0                                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroup' and c.name='NewsGroupID')                                                                                                                                         
alter TABLE NewsGroup add NewsGroupID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroup' and c.name='Title')                                                                                                                                               
alter TABLE NewsGroup add Title  nvarchar(50) Not Null default 0                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroup' and c.name='Descript')                                                                                                                                            
alter TABLE NewsGroup add Descript  nvarchar(300) Null                                                                                                                                                                                                         
else
alter TABLE NewsGroup alter column Descript  nvarchar(300)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroup' and c.name='UsersID')                                                                                                                                             
alter TABLE NewsGroup add UsersID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroupUsers' and c.name='NewsGroupUsersID')                                                                                                                               
alter TABLE NewsGroupUsers add NewsGroupUsersID  int Not Null default 0                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroupUsers' and c.name='UsersID')                                                                                                                                        
alter TABLE NewsGroupUsers add UsersID  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsGroupUsers' and c.name='NewsGroupID')                                                                                                                                    
alter TABLE NewsGroupUsers add NewsGroupID  int Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsUsers' and c.name='NewsUsersID')                                                                                                                                         
alter TABLE NewsUsers add NewsUsersID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsUsers' and c.name='NewsID')                                                                                                                                              
alter TABLE NewsUsers add NewsID  int Not Null default 0                                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsUsers' and c.name='UsersID')                                                                                                                                             
alter TABLE NewsUsers add UsersID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsUsers' and c.name='IsRead')                                                                                                                                              
alter TABLE NewsUsers add IsRead  bit Null                                                                                                                                                                                                                     
else
alter TABLE NewsUsers alter column IsRead  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='NewsUsers' and c.name='NotShow')                                                                                                                                             
alter TABLE NewsUsers add NotShow  bit Null                                                                                                                                                                                                                    
else
alter TABLE NewsUsers alter column NotShow  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ParaphTemplate' and c.name='ParaphTemplateID')                                                                                                                               
alter TABLE ParaphTemplate add ParaphTemplateID  int Not Null default 0                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ParaphTemplate' and c.name='UserID')                                                                                                                                         
alter TABLE ParaphTemplate add UserID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ParaphTemplate' and c.name='OrderID')                                                                                                                                        
alter TABLE ParaphTemplate add OrderID  tinyint Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ParaphTemplate' and c.name='Title')                                                                                                                                          
alter TABLE ParaphTemplate add Title  nvarchar(50) Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ParaphTemplate' and c.name='Paraph')                                                                                                                                         
alter TABLE ParaphTemplate add Paraph  nvarchar(500) Not Null default 0                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='PhoneID')                                                                                                                                                 
alter TABLE Phone add PhoneID  int Not Null default 0                                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Code')                                                                                                                                                    
alter TABLE Phone add Code  int Not Null default 0                                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Title')                                                                                                                                                   
alter TABLE Phone add Title  nvarchar(50) Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='PersonName')                                                                                                                                              
alter TABLE Phone add PersonName  nvarchar(50) Null                                                                                                                                                                                                            
else
alter TABLE Phone alter column PersonName  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Tel1')                                                                                                                                                    
alter TABLE Phone add Tel1  nvarchar(20) Null                                                                                                                                                                                                                  
else
alter TABLE Phone alter column Tel1  nvarchar(20)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Tel2')                                                                                                                                                    
alter TABLE Phone add Tel2  nvarchar(20) Null                                                                                                                                                                                                                  
else
alter TABLE Phone alter column Tel2  nvarchar(20)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Mobile')                                                                                                                                                  
alter TABLE Phone add Mobile  nvarchar(20) Null                                                                                                                                                                                                                
else
alter TABLE Phone alter column Mobile  nvarchar(20)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Fax')                                                                                                                                                     
alter TABLE Phone add Fax  nvarchar(20) Null                                                                                                                                                                                                                   
else
alter TABLE Phone alter column Fax  nvarchar(20)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Email')                                                                                                                                                   
alter TABLE Phone add Email  nvarchar(50) Null                                                                                                                                                                                                                 
else
alter TABLE Phone alter column Email  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Internet')                                                                                                                                                
alter TABLE Phone add Internet  nvarchar(500) Null                                                                                                                                                                                                             
else
alter TABLE Phone alter column Internet  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Address')                                                                                                                                                 
alter TABLE Phone add Address  nvarchar(500) Null                                                                                                                                                                                                              
else
alter TABLE Phone alter column Address  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='ZipCode')                                                                                                                                                 
alter TABLE Phone add ZipCode  nvarchar(30) Null                                                                                                                                                                                                               
else
alter TABLE Phone alter column ZipCode  nvarchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='Descript')                                                                                                                                                
alter TABLE Phone add Descript  nvarchar(500) Null                                                                                                                                                                                                             
else
alter TABLE Phone alter column Descript  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='PhoneGroupID')                                                                                                                                            
alter TABLE Phone add PhoneGroupID  int Null                                                                                                                                                                                                                   
else
alter TABLE Phone alter column PhoneGroupID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='UsersID')                                                                                                                                                 
alter TABLE Phone add UsersID  int Not Null default 0                                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Phone' and c.name='IsPublic')                                                                                                                                                
alter TABLE Phone add IsPublic  bit Null                                                                                                                                                                                                                       
else
alter TABLE Phone alter column IsPublic  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='PhoneGroup' and c.name='PhoneGroupID')                                                                                                                                       
alter TABLE PhoneGroup add PhoneGroupID  int Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='PhoneGroup' and c.name='Code')                                                                                                                                               
alter TABLE PhoneGroup add Code  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='PhoneGroup' and c.name='Title')                                                                                                                                              
alter TABLE PhoneGroup add Title  nvarchar(50) Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='PhoneGroup' and c.name='UsersID')                                                                                                                                            
alter TABLE PhoneGroup add UsersID  int Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Receipt' and c.name='ReceiptID')                                                                                                                                             
alter TABLE Receipt add ReceiptID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Receipt' and c.name='Title')                                                                                                                                                 
alter TABLE Receipt add Title  nvarchar(50) Null                                                                                                                                                                                                               
else
alter TABLE Receipt alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Receipt' and c.name='Memo')                                                                                                                                                  
alter TABLE Receipt add Memo  nvarchar(2000) Null                                                                                                                                                                                                              
else
alter TABLE Receipt alter column Memo  nvarchar(2000)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Receipt' and c.name='Descript')                                                                                                                                              
alter TABLE Receipt add Descript  nvarchar(500) Null                                                                                                                                                                                                           
else
alter TABLE Receipt alter column Descript  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReceiveTypes' and c.name='ID')                                                                                                                                               
alter TABLE ReceiveTypes add ID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReceiveTypes' and c.name='Title')                                                                                                                                            
alter TABLE ReceiveTypes add Title  nvarchar(50) Null                                                                                                                                                                                                          
else
alter TABLE ReceiveTypes alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteData' and c.name='RecommiteDataID')                                                                                                                                 
alter TABLE RecommiteData add RecommiteDataID  int Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteData' and c.name='RecommiteID')                                                                                                                                     
alter TABLE RecommiteData add RecommiteID  int Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteData' and c.name='Image')                                                                                                                                           
alter TABLE RecommiteData add Image  image Null                                                                                                                                                                                                                

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteData' and c.name='extention')                                                                                                                                       
alter TABLE RecommiteData add extention  tinyint Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteData' and c.name='UniqueID')                                                                                                                                        
alter TABLE RecommiteData add UniqueID  bigint Null                                                                                                                                                                                                            
else
alter TABLE RecommiteData alter column UniqueID  bigint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='RecommiteID')                                                                                                                                        
alter TABLE ReCommites add RecommiteID  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='LetterID')                                                                                                                                           
alter TABLE ReCommites add LetterID  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='ID')                                                                                                                                                 
alter TABLE ReCommites add ID  smallint Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='Type')                                                                                                                                               
alter TABLE ReCommites add Type  tinyint Not Null  default ((1))                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='ParentId')                                                                                                                                           
alter TABLE ReCommites add ParentId  smallint Not Null  default ((0))                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='OrgID')                                                                                                                                              
alter TABLE ReCommites add OrgID  int Not Null default 0                                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='Paraph')                                                                                                                                             
alter TABLE ReCommites add Paraph  nvarchar(500) Null                                                                                                                                                                                                          
else
alter TABLE ReCommites alter column Paraph  nvarchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='RecommiteDate')                                                                                                                                      
alter TABLE ReCommites add RecommiteDate  varchar(10) Not Null default 0                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='UserID')                                                                                                                                             
alter TABLE ReCommites add UserID  int Not Null  default ((1))                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='IsCopy')                                                                                                                                             
alter TABLE ReCommites add IsCopy  bit Null                                                                                                                                                                                                                    
else
alter TABLE ReCommites alter column IsCopy  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='Proceeded')                                                                                                                                          
alter TABLE ReCommites add Proceeded  bit Not Null  default ((0))                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='ProceedDate')                                                                                                                                        
alter TABLE ReCommites add ProceedDate  varchar(10) Null                                                                                                                                                                                                       
else
alter TABLE ReCommites alter column ProceedDate  varchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='staffmemo')                                                                                                                                          
alter TABLE ReCommites add staffmemo  nvarchar(255) Null                                                                                                                                                                                                       
else
alter TABLE ReCommites alter column staffmemo  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='viewdate')                                                                                                                                           
alter TABLE ReCommites add viewdate  char(10) Null                                                                                                                                                                                                             
else
alter TABLE ReCommites alter column viewdate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='OrgStaff')                                                                                                                                           
alter TABLE ReCommites add OrgStaff  nvarchar(50) Null                                                                                                                                                                                                         
else
alter TABLE ReCommites alter column OrgStaff  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='DeadLineDate')                                                                                                                                       
alter TABLE ReCommites add DeadLineDate  char(10) Null                                                                                                                                                                                                         
else
alter TABLE ReCommites alter column DeadLineDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='LastUpdate')                                                                                                                                         
alter TABLE ReCommites add LastUpdate  datetime Null  default (getdate())                                                                                                                                                                                      
else
alter TABLE ReCommites alter column LastUpdate  datetime  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='UniqueID')                                                                                                                                           
alter TABLE ReCommites add UniqueID  bigint Null                                                                                                                                                                                                               
else
alter TABLE ReCommites alter column UniqueID  bigint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='ActionTypeID')                                                                                                                                       
alter TABLE ReCommites add ActionTypeID  int Null  default ((1))                                                                                                                                                                                               
else
alter TABLE ReCommites alter column ActionTypeID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='DeadLineToint')                                                                                                                                      
alter TABLE ReCommites add DeadLineToint  int Null                                                                                                                                                                                                             
else
alter TABLE ReCommites alter column DeadLineToint  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='IsAnswer')                                                                                                                                           
alter TABLE ReCommites add IsAnswer  bit Null                                                                                                                                                                                                                  
else
alter TABLE ReCommites alter column IsAnswer  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReCommites' and c.name='ISFollowup')                                                                                                                                         
alter TABLE ReCommites add ISFollowup  bit Null                                                                                                                                                                                                                
else
alter TABLE ReCommites alter column ISFollowup  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteTypes' and c.name='ID')                                                                                                                                             
alter TABLE RecommiteTypes add ID  tinyint Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteTypes' and c.name='Title')                                                                                                                                          
alter TABLE RecommiteTypes add Title  nvarchar(50) Null                                                                                                                                                                                                        
else
alter TABLE RecommiteTypes alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteTypes' and c.name='ReceiveMode')                                                                                                                                    
alter TABLE RecommiteTypes add ReceiveMode  bit Null                                                                                                                                                                                                           
else
alter TABLE RecommiteTypes alter column ReceiveMode  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RecommiteTypes' and c.name='InnerOrganize')                                                                                                                                  
alter TABLE RecommiteTypes add InnerOrganize  bit Null                                                                                                                                                                                                         
else
alter TABLE RecommiteTypes alter column InnerOrganize  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReferenceTableData' and c.name='ReferenceTableDataID')                                                                                                                       
alter TABLE ReferenceTableData add ReferenceTableDataID  int Not Null default 0                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReferenceTableData' and c.name='TableID')                                                                                                                                    
alter TABLE ReferenceTableData add TableID  int Not Null default 0                                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReferenceTableData' and c.name='DataID')                                                                                                                                     
alter TABLE ReferenceTableData add DataID  tinyint Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='ReferenceTableData' and c.name='DataTitle')                                                                                                                                  
alter TABLE ReferenceTableData add DataTitle  nvarchar(50) Not Null default 0                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RelatedSecretariats' and c.name='RelatedSecretariatID')                                                                                                                      
alter TABLE RelatedSecretariats add RelatedSecretariatID  int Not Null default 0                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RelatedSecretariats' and c.name='RelatedSecretariatTitle')                                                                                                                   
alter TABLE RelatedSecretariats add RelatedSecretariatTitle  nvarchar(50) Not Null default 0                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RelatedSecretariats' and c.name='DestinationOrgID_inSource')                                                                                                                 
alter TABLE RelatedSecretariats add DestinationOrgID_inSource  int Not Null default 0                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RelatedSecretariats' and c.name='DestinationSecID')                                                                                                                          
alter TABLE RelatedSecretariats add DestinationSecID  int Not Null default 0                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RelatedSecretariats' and c.name='DestinationServerIP')                                                                                                                       
alter TABLE RelatedSecretariats add DestinationServerIP  varchar(30) Null                                                                                                                                                                                      
else
alter TABLE RelatedSecretariats alter column DestinationServerIP  varchar(30)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='RelatedSecretariats' and c.name='DestinationServerDB')                                                                                                                       
alter TABLE RelatedSecretariats add DestinationServerDB  varchar(50) Null                                                                                                                                                                                      
else
alter TABLE RelatedSecretariats alter column DestinationServerDB  varchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Secretariats' and c.name='SecID')                                                                                                                                            
alter TABLE Secretariats add SecID  int Not Null default 0                                                                                                                                                                                                     
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Secretariats' and c.name='SecTitle')                                                                                                                                         
alter TABLE Secretariats add SecTitle  nvarchar(50) Null                                                                                                                                                                                                       
else
alter TABLE Secretariats alter column SecTitle  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Secretariats' and c.name='Precode')                                                                                                                                          
alter TABLE Secretariats add Precode  nvarchar(50) Null                                                                                                                                                                                                        
else
alter TABLE Secretariats alter column Precode  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Secretariats' and c.name='ServerID')                                                                                                                                         
alter TABLE Secretariats add ServerID  int Not Null  default (0)                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Secretariats' and c.name='ArchiveCenterID')                                                                                                                                  
alter TABLE Secretariats add ArchiveCenterID  int Not Null  default (0)                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='SendStatus' and c.name='SendStatusID')                                                                                                                                       
alter TABLE SendStatus add SendStatusID  int Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='SendStatus' and c.name='SendStatusTitle')                                                                                                                                    
alter TABLE SendStatus add SendStatusTitle  nvarchar(100) Not Null default 0                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Sentenses' and c.name='ID')                                                                                                                                                  
alter TABLE Sentenses add ID  int Not Null default 0                                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Sentenses' and c.name='SentenseName')                                                                                                                                        
alter TABLE Sentenses add SentenseName  nvarchar(50) Null                                                                                                                                                                                                      
else
alter TABLE Sentenses alter column SentenseName  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Sentenses' and c.name='SentensValue')                                                                                                                                        
alter TABLE Sentenses add SentensValue  nvarchar(255) Null                                                                                                                                                                                                     
else
alter TABLE Sentenses alter column SentensValue  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Settings' and c.name='UserID')                                                                                                                                               
alter TABLE Settings add UserID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Settings' and c.name='VariableId')                                                                                                                                           
alter TABLE Settings add VariableId  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Settings' and c.name='Value')                                                                                                                                                
alter TABLE Settings add Value  nvarchar(255) Null                                                                                                                                                                                                             
else
alter TABLE Settings alter column Value  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Settings' and c.name='description')                                                                                                                                          
alter TABLE Settings add description  nvarchar(50) Null                                                                                                                                                                                                        
else
alter TABLE Settings alter column description  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Subject' and c.name='SubjectID')                                                                                                                                             
alter TABLE Subject add SubjectID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Subject' and c.name='SubjectTitle')                                                                                                                                          
alter TABLE Subject add SubjectTitle  nvarchar(50) Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Subject' and c.name='IsActive')                                                                                                                                              
alter TABLE Subject add IsActive  bit Not Null  default (1)                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='sys_AppMessage' and c.name='ID')                                                                                                                                             
alter TABLE sys_AppMessage add ID  int Not Null default 0                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='sys_AppMessage' and c.name='FarsiMessage')                                                                                                                                   
alter TABLE sys_AppMessage add FarsiMessage  nvarchar(255) Null                                                                                                                                                                                                
else
alter TABLE sys_AppMessage alter column FarsiMessage  nvarchar(255)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='TableId')                                                                                                                                                
alter TABLE Tables add TableId  int Not Null default 0                                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='TableName')                                                                                                                                              
alter TABLE Tables add TableName  nvarchar(50) Null 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='Description')                                                                                                                                            
alter TABLE Tables add Description  nvarchar(50) Null 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='TableType')                                                                                                                                              
alter TABLE Tables add TableType  tinyint Null  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='TableCode')                                                                                                                                              
alter TABLE Tables add TableCode  varchar(50) Null                                                                                                                                                                                                             
else
alter TABLE Tables alter column TableCode  varchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='UserField1')                                                                                                                                             
alter TABLE Tables add UserField1  nvarchar(50) Null                                                                                                                                                                                                           
else
alter TABLE Tables alter column UserField1  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Tables' and c.name='UserField2')                                                                                                                                             
alter TABLE Tables add UserField2  nvarchar(50) Null                                                                                                                                                                                                           
else
alter TABLE Tables alter column UserField2  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='TemplateGroup' and c.name='TemplateGroupID')                                                                                                                                 
alter TABLE TemplateGroup add TemplateGroupID  int Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='TemplateGroup' and c.name='TemplateGroupTitle')                                                                                                                              
alter TABLE TemplateGroup add TemplateGroupTitle  nvarchar(100) Not Null default 0                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Urgenceis' and c.name='ID')                                                                                                                                                  
alter TABLE Urgenceis add ID  int Not Null default 0                                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Urgenceis' and c.name='Title')                                                                                                                                               
alter TABLE Urgenceis add Title  nvarchar(50) Null                                                                                                                                                                                                             
else
alter TABLE Urgenceis alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserAccArchive' and c.name='UserAccArchiveID')                                                                                                                               
alter TABLE UserAccArchive add UserAccArchiveID  int Not Null default 0                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserAccArchive' and c.name='SecID')                                                                                                                                          
alter TABLE UserAccArchive add SecID  int Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserAccArchive' and c.name='UserID')                                                                                                                                         
alter TABLE UserAccArchive add UserID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserAccArchive' and c.name='ArchiveCenterID')                                                                                                                                
alter TABLE UserAccArchive add ArchiveCenterID  int Not Null default 0                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserAccArchive' and c.name='ArchiveFolderID')                                                                                                                                
alter TABLE UserAccArchive add ArchiveFolderID  int Not Null default 0                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserAccArchive' and c.name='ISAccess')                                                                                                                                       
alter TABLE UserAccArchive add ISAccess  bit Null                                                                                                                                                                                                              
else
alter TABLE UserAccArchive alter column ISAccess  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserExtention' and c.name='UserExtentionID')                                                                                                                                 
alter TABLE UserExtention add UserExtentionID  int Not Null default 0                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserExtention' and c.name='UserId')                                                                                                                                          
alter TABLE UserExtention add UserId  int Not Null default 0                                                                                                                                                                                                   
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserExtention' and c.name='ExtentionID')                                                                                                                                     
alter TABLE UserExtention add ExtentionID  int Not Null default 0                                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserExtention' and c.name='ReaderApplication')                                                                                                                               
alter TABLE UserExtention add ReaderApplication  nvarchar(2000) Null                                                                                                                                                                                           
else
alter TABLE UserExtention alter column ReaderApplication  nvarchar(2000)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLog' and c.name='UserID')                                                                                                                                                
alter TABLE UserLog add UserID  int Not Null default 0
else
alter TABLE UserLog alter column UserID  int Not Null                                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLog' and c.name='FormID')                                                                                                                                                
alter TABLE UserLog add FormID  int Not Null  default ((1))
else
alter TABLE UserLog  alter column FormID  int Not Null   

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLog' and c.name='ActionID')                                                                                                                                              
alter TABLE UserLog add ActionID  int Not Null default 0                                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLog' and c.name='Time1')                                                                                                                                                 
alter TABLE UserLog add Time1  datetime Not Null  default (getdate())                                                                                                                                                                                          
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLog' and c.name='LetterID')                                                                                                                                              
alter TABLE UserLog add LetterID  int Null                                                                                                                                                                                                                     
else
alter TABLE UserLog alter column LetterID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLoginLogout' and c.name='UserLoginLogoutID')                                                                                                                             
alter TABLE UserLoginLogout add UserLoginLogoutID  int Not Null default 0                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLoginLogout' and c.name='UserID')                                                                                                                                        
alter TABLE UserLoginLogout add UserID  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLoginLogout' and c.name='IPAddress')                                                                                                                                     
alter TABLE UserLoginLogout add IPAddress  char(15) Null                                                                                                                                                                                                       
else
alter TABLE UserLoginLogout alter column IPAddress  char(15)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLoginLogout' and c.name='LoginTime')                                                                                                                                     
alter TABLE UserLoginLogout add LoginTime  datetime Not Null  default (getdate())                                                                                                                                                                              
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLoginLogout' and c.name='LogoutTime')                                                                                                                                    
alter TABLE UserLoginLogout add LogoutTime  datetime Not Null  default (getdate())                                                                                                                                                                             
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserLoginLogout' and c.name='isSafeLogout')                                                                                                                                  
alter TABLE UserLoginLogout add isSafeLogout  bit Not Null  default (0)                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='UserMessageID')                                                                                                                                     
alter TABLE UserMessage add UserMessageID  bigint Not Null default 0                                                                                                                                                                                           
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='To_')                                                                                                                                               
alter TABLE UserMessage add To_  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='Code')                                                                                                                                              
alter TABLE UserMessage add Code  int Null                                                                                                                                                                                                                     
else
alter TABLE UserMessage alter column Code  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='From_')                                                                                                                                             
alter TABLE UserMessage add From_  int Null                                                                                                                                                                                                                    
else
alter TABLE UserMessage alter column From_  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='MsgDate')                                                                                                                                           
alter TABLE UserMessage add MsgDate  varchar(10) Null                                                                                                                                                                                                          
else
alter TABLE UserMessage alter column MsgDate  varchar(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='MsgTime')                                                                                                                                           
alter TABLE UserMessage add MsgTime  varchar(6) Null                                                                                                                                                                                                           
else
alter TABLE UserMessage alter column MsgTime  varchar(6)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='Subject')                                                                                                                                           
alter TABLE UserMessage add Subject  nvarchar(50) Null                                                                                                                                                                                                         
else
alter TABLE UserMessage alter column Subject  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='Message')                                                                                                                                           
alter TABLE UserMessage add Message  text Null                                                                                                                                                                                                                 

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserMessage' and c.name='Status')                                                                                                                                            
alter TABLE UserMessage add Status  int Null                                                                                                                                                                                                                   
else
alter TABLE UserMessage alter column Status  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserNote' and c.name='UserNoteID')                                                                                                                                           
alter TABLE UserNote add UserNoteID  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserNote' and c.name='UserID')                                                                                                                                               
alter TABLE UserNote add UserID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserNote' and c.name='Note')                                                                                                                                                 
alter TABLE UserNote add Note  ntext Null                                                                                                                                                                                                                      

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserNote' and c.name='CreateDate')                                                                                                                                           
alter TABLE UserNote add CreateDate  char(10) Not Null default 0                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='Id')                                                                                                                                                      
alter TABLE Users add Id  int Not Null default 0                                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='Title')                                                                                                                                                   
alter TABLE Users add Title  nvarchar(50) Null                                                                                                                                                                                                                 
else
alter TABLE Users alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='UserName')                                                                                                                                                
alter TABLE Users add UserName  nvarchar(50) Null                                                                                                                                                                                                              
else
alter TABLE Users alter column UserName  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='PassWord')                                                                                                                                                
alter TABLE Users add PassWord  nvarchar(100) Null                                                                                                                                                                                                             
else
alter TABLE Users alter column PassWord  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='AccessID')                                                                                                                                                
alter TABLE Users add AccessID  tinyint Null                                                                                                                                                                                                                   
else
alter TABLE Users alter column AccessID  tinyint  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='FromOrgID')                                                                                                                                               
alter TABLE Users add FromOrgID  int Null                                                                                                                                                                                                                      
else
alter TABLE Users alter column FromOrgID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='DefualtSecretariatID')                                                                                                                                    
alter TABLE Users add DefualtSecretariatID  tinyint Not Null  default ((1))                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='IsSecretariantStaffer')                                                                                                                                   
alter TABLE Users add IsSecretariantStaffer  bit Null                                                                                                                                                                                                          
else
alter TABLE Users alter column IsSecretariantStaffer  bit  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='KartableGridInfo')                                                                                                                                        
alter TABLE Users add KartableGridInfo  image Null                                                                                                                                                                                                             

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='DabirGridInfo')                                                                                                                                           
alter TABLE Users add DabirGridInfo  image Null                                                                                                                                                                                                                

GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='EndActiveDate')                                                                                                                                           
alter TABLE Users add EndActiveDate  char(10) Null                                                                                                                                                                                                             
else
alter TABLE Users alter column EndActiveDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='BeginActiveDate')                                                                                                                                         
alter TABLE Users add BeginActiveDate  char(10) Null                                                                                                                                                                                                           
else
alter TABLE Users alter column BeginActiveDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='AlternativeUserID')                                                                                                                                       
alter TABLE Users add AlternativeUserID  int Null                                                                                                                                                                                                              
else
alter TABLE Users alter column AlternativeUserID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='AlternativeEndDate')                                                                                                                                      
alter TABLE Users add AlternativeEndDate  char(10) Null                                                                                                                                                                                                        
else
alter TABLE Users alter column AlternativeEndDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='AlternativebeginDate')                                                                                                                                    
alter TABLE Users add AlternativebeginDate  char(10) Null                                                                                                                                                                                                      
else
alter TABLE Users alter column AlternativebeginDate  char(10)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='HasSecureLetterAccess')                                                                                                                                   
alter TABLE Users add HasSecureLetterAccess  bit Not Null  default ((1))                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='SecondOrgID')                                                                                                                                             
alter TABLE Users add SecondOrgID  int Null                                                                                                                                                                                                                    
else
alter TABLE Users alter column SecondOrgID  int  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='eCartableGridInfo')                                                                                                                                       
alter TABLE Users add eCartableGridInfo  varchar(500) Null                                                                                                                                                                                                     
else
alter TABLE Users alter column eCartableGridInfo  varchar(500)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='eCartableTheme')                                                                                                                                          
alter TABLE Users add eCartableTheme  varchar(50) Null                                                                                                                                                                                                         
else
alter TABLE Users alter column eCartableTheme  varchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='Users' and c.name='Email')                                                                                                                                                   
alter TABLE Users add Email  nvarchar(100) Null                                                                                                                                                                                                                
else
alter TABLE Users alter column Email  nvarchar(100)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserSecretariats' and c.name='UserId')                                                                                                                                       
alter TABLE UserSecretariats add UserId  int Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserSecretariats' and c.name='SecId')                                                                                                                                        
alter TABLE UserSecretariats add SecId  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserShortCut' and c.name='userShortCutID')                                                                                                                                   
alter TABLE UserShortCut add userShortCutID  int Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserShortCut' and c.name='UserID')                                                                                                                                           
alter TABLE UserShortCut add UserID  int Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserShortCut' and c.name='keyText')                                                                                                                                          
alter TABLE UserShortCut add keyText  nvarchar(100) Not Null default 0                                                                                                                                                                                         
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserShortCut' and c.name='altKey')                                                                                                                                           
alter TABLE UserShortCut add altKey  char(1) Not Null default 0                                                                                                                                                                                                
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserSign' and c.name='UserID')                                                                                                                                               
alter TABLE UserSign add UserID  int Not Null default 0                                                                                                                                                                                                        
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserSign' and c.name='UserSign')                                                                                                                                             
alter TABLE UserSign add UserSign  image Not Null default 0                                                                                                                                                                                                    
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserTemplateGroup' and c.name='UserTemplateGroupID')                                                                                                                         
alter TABLE UserTemplateGroup add UserTemplateGroupID  int Not Null default 0                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserTemplateGroup' and c.name='TemplateGroupID')                                                                                                                             
alter TABLE UserTemplateGroup add TemplateGroupID  int Not Null default 0                                                                                                                                                                                      
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='UserTemplateGroup' and c.name='UserID')                                                                                                                                      
alter TABLE UserTemplateGroup add UserID  int Not Null default 0                                                                                                                                                                                               
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroup' and c.name='WorkGroupID')                                                                                                                                         
alter TABLE WorkGroup add WorkGroupID  int Not Null default 0                                                                                                                                                                                                  
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroup' and c.name='Title')                                                                                                                                               
alter TABLE WorkGroup add Title  nvarchar(50) Null                                                                                                                                                                                                             
else
alter TABLE WorkGroup alter column Title  nvarchar(50)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroup' and c.name='Descript')                                                                                                                                            
alter TABLE WorkGroup add Descript  nvarchar(300) Null                                                                                                                                                                                                         
else
alter TABLE WorkGroup alter column Descript  nvarchar(300)  Null
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroup' and c.name='UserID')                                                                                                                                              
alter TABLE WorkGroup add UserID  int Not Null default 0                                                                                                                                                                                                       
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroupOrg' and c.name='WorkGroupOrgID')                                                                                                                                   
alter TABLE WorkGroupOrg add WorkGroupOrgID  int Not Null default 0                                                                                                                                                                                            
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroupOrg' and c.name='FromOrgID')                                                                                                                                        
alter TABLE WorkGroupOrg add FromOrgID  int Not Null default 0                                                                                                                                                                                                 
GO
if not exists (select * from syscolumns c,sysobjects o
where o.id=c.id and o.name='WorkGroupOrg' and c.name='WorkGroupID')                                                                                                                                      
alter TABLE WorkGroupOrg add WorkGroupID  int Not Null default 0                                                                                                                                                                                               
GO
