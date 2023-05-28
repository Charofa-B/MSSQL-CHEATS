## INDEXS
* #### [CLUSTRED INDEX vs NOT CLUSTRED INDEX](clustred)
* #### [CREATE INDEX](#createindex)
* #### [CREATE MULTI COLUMN INDEX](#createmulticolumnindex)
* #### [DELETE INDEX](#deleteindex)
* #### [INCLUDE](#include)

### [CLUSTRED INDEX vs NOT CLUSTRED INDEX](clustred)
#### CLUSTRED INDEX
The physical concept of which the data is stored
#### NON CLUSTRED INDEX
object to improve the query performence

### INDEX
we use index (NON CLUSTRED INDEX) to optimize our database usage 
<br>
index (NON CLUSTRED INDEX) use it to like array to improves the performance of queries by providing quick access to data
<br>
primary key has alredy index

<br><br>

### [CREATE INDEX](#createindex)
```sql
CREATE INDEX /*INDEX-NAME*/ ON /*TableName*/(/*ColumnName*/);
```

<br><br>

### [CREATE MULTI COLUMN INDEX](#createmulticolumnindex)
```sql
CREATE INDEX /*INDEX-NAME*/ ON /*TableName*/(/*ColumnName*/, /*ColumnName*/);
```

<br><br>

### [DELETE INDEX](#deleteindex)
```sql
DROP INDEX /*INDEX-NAME*/ ON /*TableName*/;
```

<br><br>

### [INCLUDE](#include)
```sql
CREATE INDEX /*INDEX-NAME*/ ON /*TableName*/(/*ColumnName*/) INCLUDE (/*ColumnName*/);
```