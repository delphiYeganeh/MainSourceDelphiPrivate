
drop table #newDabir
drop table #ranjbar
use ranjbar
SELECT c.name cname,o.name oname,t.name tname,o.name+'.'+c.name+'('+t.name+')' f
 into #ranjbar
FROM  sysobjects o
INNER JOIN syscolumns c ON o.id = c.id
inner join systypes t on c.xtype=t.xtype
where o.type='u'
and t.name<>'sysname' 
and o.name<>'added'


use NewDabir
SELECT c.name cname,o.name oname,t.name tname,o.name+'.'+c.name+'('+t.name+')' f
into #NewDabir
FROM  sysobjects o
INNER JOIN syscolumns c ON o.id = c.id
inner join systypes t on c.xtype=t.xtype
where o.type='u'
and t.name<>'sysname' 
and o.name<>'added'



select 'ALTER TABLE '+r.oname+' ALTER COLUMN '+r.cname+' '+r.tname--,n.tname
from #ranjbar r
left join  #NewDabir n on n.oname=r.oname and n.cname=r.cname
where r.tname<>n.tname
order by r.oname