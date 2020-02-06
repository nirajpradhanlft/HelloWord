select * from Employee;-- List columns in all tables whose name is like 'TableName'
SELECT 
    TableName = tbl.table_schema + '.' + tbl.table_name, 
    ColumnName = col.column_name, 
    ColumnDataType = col.data_type
FROM INFORMATION_SCHEMA.TABLES tbl
INNER JOIN INFORMATION_SCHEMA.COLUMNS col 
    ON col.table_name = tbl.table_name
    AND col.table_schema = tbl.table_schema

WHERE tbl.table_type = 'base table' and tbl.table_name like '%TableName%'
