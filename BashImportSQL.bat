@echo off

set FILE_LIST=(file1 file2 file3 file4)
set DB_NAME=database_name
set DB_USER=root

echo ----------
echo Import SQL DB
echo ----------

for %%t in %FILE_LIST% do (
	echo Import table: %%t
	mysql -u %DB_USER% -p %DB_NAME% < %%t.sql
	echo.
)

echo ----------
echo Import Completed
echo ----------

pause;