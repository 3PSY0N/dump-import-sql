@echo off

set DB_USER=root
set TODAY_DATE=%date:~6,4%%date:~3,2%%date:~0,2%
set DEST_DIR=C:\fakeroot\
set TABLE_LIST=(Database mysql performance_schema information_schema)

echo ----------
echo Starting SQL Dump
echo ----------

FOR /F "tokens=*" %%D IN ('mysql -u %DB_USER% -e "SHOW DATABASES"') DO (
	echo Dump table: %%D
	mysqldump -u %DB_USER% %%D > %DEST_DIR%%TODAY_DATE%_%%D.sql
)


FOR %%t IN %TABLE_LIST% DO (
 	echo Del file: %%t
	del "%DEST_DIR%%TODAY_DATE%_%%t.sql" /s /f /q
)

echo ----------
echo Dump completed
echo ----------
