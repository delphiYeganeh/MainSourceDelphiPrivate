declare @db1 varchar(50) ,@db2 varchar(50),@sql varchar(4000)
set @db1='loancash'
set @db2='new_cash'

set @sql=

'select '''+@db1+' - '+@db2+''' db ,name objectname,'''' fieldname,type
from '+@db1+'..sysobjects
where  name not in (
select name from '+@db2+'..sysobjects)
union
select '''+@db2+' - '+@db1+''',name,'''',type
from '+@db2+'..sysobjects
where  name not in (
select name from '+@db2+'..sysobjects)
union
select '''+@db1+' - '+@db2+''' db,o.name ,c.name,''Field'' type
from '+@db1+'..sysobjects o , '+@db1+'..syscolumns c
where o.type=''u'' and c.id=o.id and
o.name+''.''+c.name not in (select o.name+''.''+c.name from '+@db2+'..sysobjects o , '+@db2+'..syscolumns c
where c.id=o.id)
and o.name in (select name from '+@db2+'..sysobjects)
union
select '''+@db2+' - '+@db1+''',o.name ,c.name,''Field'' type
from '+@db2+'..sysobjects o , '+@db2+'..syscolumns c
where o.type=''u'' and c.id=o.id and
o.name+''.''+c.name not in (select o.name+''.''+c.name from '+@db1+'..sysobjects o , '+@db1+'..syscolumns c
where c.id=o.id)
and o.name in (select name from '+@db1+'..sysobjects)'

exec(@sql)

