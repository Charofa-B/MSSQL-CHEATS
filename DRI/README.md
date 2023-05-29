## [DRI](#dri)
* ##### [GLOBAL VARIABLE](#global-variable)
* ##### [FUNCTION](#function)
* ##### [PROCEDURE](#procedure)
* ##### [VIEW](#view)

<br><br><br>

### [GLOBAL VARIABLE](#global-variable)
Used for many cases see the website [link](href='https://learn.microsoft.com/en-us/sql/t-sql/language-elements/variables-transact-sql?view=sql-server-ver16')

<br><br>

### [FUNCTION](#function)
* Must return result or table
* Cannot call function within it
* Can call it with select

<br>

When we dont use table within function we add `SCHEMABINDING` to improve perforence
```sql
CREATE OR ALTER FUNCTION /*FunctionName*/(/*@varName1 Type*/,/*@varName1 Type*/)
RETURNS /*The returns type*/ WITH SCHEMABINDING
AS 
BEGIN
   --Your action  
   RETURN /*var*/;
END
```
##### Build in Function
There is many build functions visit this [link](href='https://learn.microsoft.com/en-us/sql/t-sql/functions/functions?view=sql-server-ver16') 



<br><br>

### [PROCEDURE](#procedure)
* return No-result, 1-result, multiple-result
* Run mutliple rows
* Has output procedure
* Can call function within it
* Cannot call it within select
* It s almost like `void function`

#### Runing the procedures
Unlike the `Functions` the procedure need to run by the following camand
```sql
EXEC /*ProcedureName*/ /*@varName1 Type*/, /*@varName2 Type*/;
```

```sql
CREATE OR ALTER PROCEDURE /*ProcedureName*/(/*@varName1 Type*/,/*@varName2 Type*/)
AS
BEGIN

--Your action 

END;
```

**Note**: You can add `output` aragument to procedure to return value to this output variable  
```sql
CREATE OR ALTER PROCEDURE /*ProcedureName*/(/*@varName1 Type*/,/*@OutputvarName Type*/ OUTPUT)
AS
BEGIN
--Your action
END;
```
In the execution part
```sql
DECLARE /*OutputvarName TYPE*/;

EXEC /*ProcedureName*/ /*@varName1 Type*/, /*OutputvarName*/ OUTPUT;
```
**Now** The `OutputvarName` stored the value that returns from the `Procedure`

<br><br>

### [VIEW](#view)
* Virtual table that is derived from one or more tables or other views in the database
* It is a saved SQL query with an associated name, and it does not store any data itself.
* Provide a way to simplify complex queries
* Can be used in SELECT, INSERT, UPDATE, and DELETE statements, just like tables
* Can have security permissions applied, allowing you to control access to specific columns or rows
```sql
CREATE OR ALTER VIEW /*ViewName*/
AS
--Your select action
```
Add clustred index to view
```sql
CREATE UNIQUE CLUSTERED INDEX /*INDEX-NAME*/ ON /*VIEW-NAME*/(Id);
```