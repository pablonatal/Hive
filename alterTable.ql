-- Altaraciones de tablasimportadas en HIVE
-- 
--    hive -f s3://bucket-cliente-digital/workspace/ql/create/deleteTables.ql
-- ==========================================================================================

-- Rename 
ALTER TABLE aquacm.familias_tot RENAME TO aquacm.productos_tot;

-- CREATE TABLE test (a int, b int, c int);
 
-- First change column a's name to a1.
ALTER TABLE test CHANGE a a1 INT;
 
-- Next change column a1's name to a2, its data type to string, and put it after column b.
ALTER TABLE test CHANGE a1 a2 STRING AFTER b;
-- The new table's structure is:  b int, a2 string, c int.
 
-- Then change column c's name to c1, and put it as the first column.
ALTER TABLE test CHANGE c c1 INT FIRST;
-- The new table's structure is:  c1 int, b int, a2 string.

-- Add/Replace Columns
ALTER TABLE table_name [PARTITION partition_spec] ADD|REPLACE COLUMNS (col_name data_type [COMMENT col_comment], ...) [CASCADE|RESTRICT]








