@echo off

set TODAY_DATE=%date:~6,4%%date:~3,2%%date:~0,2%
set REMOVE_LIST=(performance_schema information_schema)
set DEST_DIR=C:\fakeroot\
set DB_USER=root

echo ----------
echo Starting SQL Dump
echo ----------

:: Add -p and your password after %DB_USER% if needed.
FOR /F "tokens=*" %%D IN ('mysql -u %DB_USER% -e "SHOW DATABASES"') DO (
	echo Dump table: %%D
	mysqldump -u %DB_USER% %%D > %DEST_DIR%%TODAY_DATE%_%%D.sql
	echo.
)

FOR %%t IN %REMOVE_LIST% DO (
 	echo Del file: %%t
	del "%DEST_DIR%%TODAY_DATE%_%%t.sql" /s /f /q
	echo.
)

echo ----------
echo Dump completed
echo ----------

pause;
