# Bash-Dump-SQL

**How to use ?**

For Windows

- **BashImportSQL.bat**

1. Edit **FILE_LIST** by your files name.
2. Edit **DB_NAME** by your db name.
3. Replace **DB_USER** by your db user (must be the user with all privileges)
4. Add *-p* and your *password* after **%DB_USER%** if needed.

- **BashDumpSQL.bat**

1. Edit **REMOVE_LIST** if you want to remove databases from dump operation.
2. Edit **DEST_DIR** with the desired output path.
3. Edit **DB_NAME** by your db name.
4. Add *-p* and your *password* after **%DB_USER%** if needed.


Open CMD and launch the file.
