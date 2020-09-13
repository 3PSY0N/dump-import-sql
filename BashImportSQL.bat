@echo off

set TABLE_LIST=(table1 table2 table3 table4 table5)
set TABLE_NAME=tablename
set DB_USER=root

echo ----------
echo Import SQL DB
echo ----------

for %%t in %TABLE_LIST% do (
	echo Import table: %%t
	mysql -u %DB_USER% -p %TABLE_NAME% < %%t.sql
	echo.
)

echo ----------
echo Import Completed
echo ----------

pause;