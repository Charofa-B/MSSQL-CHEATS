
## NON-SELECT QUERY
*  ##### [CREATE](#create)
*  ##### [IDENTITY](#identity)
*  ##### [PRIMARY KEY](#primarykey)
*  ##### [FOREIGN KEY](#foreignkey)
*  ##### [ALTER](#alter)
*  ##### [UPDATE](#update)
*  ##### [DROP](#indexs)
*  ##### [TRUNCATE](#trancate)
*  ##### [DELETE](#delete)

<br><br><br>

### [CREATE](#create)

```sql
CREATE DATABASE DatabaseName
```

```sql
CREATE TABLE TableName(
    Id INT,
    Name VARCHAR(/*max length*/)
)
```

<br><br>

### [IDENTITY](#identity)
Make the id serial (created automatcly)

```sql
CREATE TABLE TableName(
    Id INT IDENTITY(1,1) NOT NULL, --"NOT NULL" make the field required
    Name VARCHAR(/*max length*/)
)
```

### [PRIMARY KEY](#primarykey)

Create the table with the primary key
```sql
CREATE TABLE TableName(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
)
```
```sql
CREATE TABLE TableName(
    Id INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT PK_name PRIMARY KEY (Id)
)
```

<br>

Add `primary key` to existing Table
```sql
ALTER TABLE TableName ADD CONSTRAINT PK_name PRIMARY KEY (column); 
```

<br>

Delete `primary key` from existing Table
```sql
ALTER TABLE TableName DROP CONSTRAINT PK_name; 
```

<br>

Change `primary key` from one to another column in existing Table

```sql
ALTER TABLE TableName DROP CONSTRAINT PK_name; 
```
```sql
ALTER TABLE TableName ADD CONSTRAINT PK_name PRIMARY KEY (column); 
```


<br><br>

### [FOREIGN KEY](#foreignkey)

###### Note:
the foreign key column can be null 

<br>

Create the table with the foreign key
```sql
CREATE TABLE TableName(
    Id INT IDENTITY(1,1) FOREIGN KEY,
)
```
```sql
CREATE TABLE TableName(
    Id INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT FK_name FOREIGN KEY (Id)
)
```

<br>

Add `foreign key` to existing Table
```sql
ALTER TABLE TableName ADD CONSTRAINT FK_name FOREIGN KEY (column); 
```

<br>

Delete `foreign key` from existing Table
```sql
ALTER TABLE TableName DROP CONSTRAINT FK_name; 
```

<br>

Change `foreign key` from one to another column in existing Table

```sql
ALTER TABLE TableName DROP CONSTRAINT FK_name; 
```
```sql
ALTER TABLE TableName ADD CONSTRAINT FK_name FOREIGN KEY (column); 
```

<br><br>

### [ALTER](#alter)

ALTER: alwayes use it for update tables description

<br>

Make column not null
```sql
ALTER TABLE TableName ALTER COLUMN /*ColumnName*/ NOT NULL;
```
<br>

Update column type
```sql
ALTER TABLE TableName ALTER COLUMN /*ColumnName*/ /*new type*/;
```
<br>

Add column
```sql
ALTER TABLE TableName ADD /*ColumnName*/ /*type*/;
```

<br>

Drop column
```sql
ALTER TABLE /*TableName*/ DROP COLUMN /*column name*/; 
```
###### Note:
Cannot delete column with index or depending on other table

### [UPDATE](#update)

Update the table data
```sql
UPDATE TABLE /*TableName*/ SET COLUMN=/*Data*/ WHERE /*Condetion*/; 
```

<br><br>

### [DROP](#indexs)

```sql
DROP TABLE /*TableName*/; 
```
<br>

```sql
DROP DATABASE /*DatabaseName*/; 
```
<br><br>

### [TRUNCATE](#trancate)
Clear the table rows
```sql
TRUNCATE TABLE /*DatabaseName*/; 
```

<br><br>

### [DELETE](#delete)

Delete specefic row from table
```sql
DELETE FROM /*TableName*/ WHERE /*Condition*/;
```