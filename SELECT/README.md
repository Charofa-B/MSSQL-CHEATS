## [SELECT QUERY](#select-query)
* ##### [VARIABLE](#variable)
* ##### [AND](#and)
* ##### [LIKE](#like)
* ##### [ORDER BY](#order-by)
* ##### [DISC/ASC](#disc-asc)
* ##### [GROUP BY](#group-by)
* ##### [HAVING](#having)
* ##### [DISTINCT](#distinct)
* ##### [JOIN](#join)
* ##### [CASE](#case)
* ##### [IF](#if)

<br><br><br>

### [VARIABLE](#variable)

```sql
DECLARE @VAR /*TYPE*/ = /*Value*/;
```

### [AND](#and)
```sql
SELECT * FROM Players WHERE Name='' AND Age='';
```


<br><br>

### [LIKE](#like)
use it to detect column with some rules simuler to `Regular Expression` with specific symbols

###### Percentage ( % )

```sql
SELECT * FROM Players WHERE Name LIKE 'b%'; --Return each row has name start with "b"
```

```sql
SELECT * FROM Players WHERE Name LIKE '%b%'; --Return each row has name containes "b"
```

```sql
SELECT * FROM Players WHERE Name LIKE '%b'; --Return each row has name ends with "b"
```

###### Underscore ( _ )
```sql
SELECT * FROM Players WHERE Name LIKE '__b'; --Return each row has name with length of 3  and ending with "b"
```

```sql
SELECT * FROM Players WHERE Name LIKE 'b_'; --Return each row has name with length of 2  and ending with "b"
```


<br><br>

### [ORDER BY](#order-by)

```sql
SELECT * FROM Players ORDER BY Level;
```

<br><br>

### [DISC/ASC](#disc-asc)

DISC : From the lower to higher 
```sql
SELECT * FROM Players ORDER BY Level DISC;
```

ASC : From the higher to lower
```sql
SELECT * FROM Players ORDER BY Level ASC;
```

<br><br>



### [GROUP BY](#group-by)
 
```sql
SELECT Rank, COUNT(*) AS PlayersNumber FROM Players GROUP BY Rank;
```

<br><br>


### [HAVING](#having)

Get the groups that with specefic condiction  
```sql
SELECT Rank, COUNT(*) AS PlayersNumber FROM Players GROUP BY Rank HAVING COUNT(*)>2; -- Return each group that count of rows more then 2
```

<br><br>



### [DISTINCT](#distinct)
```sql
SELECT DISTINCT Name FROM Players; --Get All Names with out repetation
```

<br><br>


### [JOIN](#join)


<br>

#### INNER JOIN

| Player | Monsters |
|--------|----------|
| Not null | Not null |
| Not null | Not null |

```sql
SELECT Player.Name, Monsters.Name FROM 
Player INNER JOIN Monsters
ON Player.Id = Monsters.OwnerID; 
```

<br>



#### LEFT JOIN

| Player | Monsters |
|--------------|--------------|
| Not null | Not null |
| Not null | Null |

```sql
SELECT Player.Name, Monsters.Name FROM 
Player LEFT JOIN Monsters
ON Player.Id = Monsters.OwnerID; 
```


<br>



#### RIGHT JOIN

| Player | Monsters |
|--------------|--------------|
| Not null | Not null |
| Null | Not Null |

<br>

Add costum names with `join` for column and for table's name  
```sql
SELECT P.Name AS N'Player', M.Name AS N'Monster' FROM 
Plyer AS P RIGHT OUTER JOIN Monsters AS M
ON P.Id = M.OwnerID; 
```

<br>

#### FULL JOIN

| Player | Monsters |
|--------|----------|
| Not null | Null |
| Null | Not null |
| Not Null | Not null |

```sql
SELECT Player.Name, Monsters.Name FROM 
Player FULL JOIN Monsters
ON Player.Id = Monsters.OwnerID; 
```
<br><br>

### [CASE](#case)

similar to switch case case use to return value from condition 
```cs
SELECT /*ColumnName*/, 
CASE  
      WHEN /*Condition*/ THEN /*Value*/
      WHEN /*Condition*/ THEN /*Value*/
      ELSE /*default Value*/

END AS /*New column name*/

FROM /*Table name*/;
```

<br><br>

### [IF](#if)

```sql
if(/*Condition*/)
   BEGIN;
      /*action*/
   END;
```