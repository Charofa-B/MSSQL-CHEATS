CREATE DATABASE TEST123

ON PRIMARY
(
    NAME = N'TEST123',
    FILENAME = N'/home/achraf/Documents/cheat-sheets/mssql/PAges/TEST123.mdf',
    SIZE = 4096KB, FILEGROWTH = 1024KB
),
(
    NAME = N'TEST123_1',
    FILENAME = N'/home/achraf/Documents/cheat-sheets/mssql/PAges/TEST123_1.mdf',
    SIZE = 4096KB, FILEGROWTH = 1024KB
)

LOG ON 
(
    NAME = N'TEST123_log',
    FILENAME = N'/home/achraf/Documents/cheat-sheets/mssql/PAges/TEST123_log.mdf',
    SIZE = 1024KB, FILEGROWTH = 10%
)

GO