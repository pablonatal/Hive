Select * into tmp_combined  from 
(
    SELECT b.var1 FROM tmp_table1 b
    UNION ALL
    SELECT c.var1 FROM tmp_table2 c
    UNION ALL
    SELECT d.var1 FROM tmp_table3 d
    UNION ALL
    SELECT e.var1 FROM tmp_table4 e
    UNION ALL
    SELECT f.var1 FROM tmp_table5 f
    UNION ALL
    SELECT g.var1 FROM tmp_table6 g
    UNION ALL
    SELECT h.var1 FROM tmp_table7 h
) CombinedTable 



drop table temp.recibidos_06;
create table  temp.recibidos_04 as
select t1.*
from temp.recibidos_03 as t1
union all 
select t2.*
from temp.recibidos_02 as t2;
-- select count(1) from temp.recibidos_03
-- 870