alter PROCEDURE [get_NewOrgID]
 (@isInner bit, @NewID [int] output)
AS 
 select @NewID=isnull(max(id),0)+1 from  FromOrganizations

if @NewID=1 
select @NewID=isnull(max(id),0)+1 from  FromOrganizations

GO