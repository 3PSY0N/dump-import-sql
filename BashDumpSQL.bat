@echo off

set TODAY_DATE=%date:~6,4%%date:~3,2%%date:~0,2%
set TABLE_LIST=(table1 table2 table3 table4 table5)
set DEST_DIR=C:\fakeroot\

echo ----------
echo Starting SQL Dump
echo ----------

for %%t in %TABLE_LIST% do (
	echo Dump table: %%t
	mysqldump -u root %%t > %DEST_DIR%%%t_%TODAY_DATE%.sql
	echo.
)

pause;