Use ydabir

update recommites

set orgid=5

where orgid not in  (select id from fromorganizations)

