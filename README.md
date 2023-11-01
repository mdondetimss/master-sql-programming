# master-sql-programming

![]([https://github.com/mdondetimss/master-sql-programming/blob/main/sql-git.png))

## ALIAS------AS 

---
**Description:**
- SQL aliases are used to give a table, or a column in a table, a temporary name.
- Aliases are often used to make column names more readable.
- An alias only exists for the duration of that query.
- An alias is created with the AS keyword.

---

### Example:
An Alias is created with **AS** keyword  SELECT Column_name AS alias_name  FROM table_name;

---
>**_NOTE:_ Reference table**

```sql
create table readme(id int(6), name varchar(15), address varchar(20),mobile bigint(10));,
create table emp(emp_id int(6), emp_name varchar(15), emp_address varchar(20), emp_mobile bigint(10));

```

---
```sql
SELECT id AS empid, name AS empname FROM readme;
```
#### Output:-
empid |  empname
------------- | -------------
1 | mani
2 | krishna
3 | pawan
4 | raju

## Group By
#### -->Group By Column

 ---
**Description:**
- The **GROUP BY** statement rows that have same value into summary rows, like  

---

### Example:
**SELECT Column_name(s) FROM table_name WHERE condition Group By   column_name(s) ORDER BY column_name(s);**

```sql
SELECT count(id),mobile FROM readme GROUP BY address ORDER BY COUNT(id) asc;
```
#### Output:-
count(id) | mobile
------------- | -------------
1 | 8919860226
1 | 8919070226
2 | 8271936479
2 | 9785241638

#### -->HAVING
 ---
**Description:**
- The **HAVING** clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

---
### Example:
**SELECT Column_name(s) FROM table_name WHERE condition Group By column_name(s)  Having condition  ORDER BY column_name(s);**

```sql
SELECT count(id),mobile FROM readme GROUP BY addressHAVING count(id) >= 2;
```
#### Output:-

count(id) |  mobile
------------- | -------------
2 | 8271936479
2 | 9785241638

## ORDER BY
#### -->ORDER BY (ASC) or ORDER BY (DES)

---
**Description:**
- The **ORDER BY** keyword is used to sort the result-set in ascending or descending order.

---

The order by keyword is used to sort the result-set in ascending or descending order
### Example:
**SELECT column1, column2,.. FROM table_name ORDER BY column1, column2.... ASC/DES ;**


```sql
SELECT * FROM readme ORDER BY address asc;
```

#### Output:-

id | name | address | mobile
------ | ------ | ------ | -------------
1 |      mani |   BVRM  |  8919860226
4 |      raju |   BZA   |  9785241638
6 |      hari |   BZA   |  9786441638
3 |      pawan|   HYD   |  8271936479
5 |      ram  |   HYD   |  9871936479
2 |    krishna|   vizag |  8919070226


## JOINS
#### -->INNER JOIN

---
**Description:**
- The **ORDER BY** keyword is used to sort the result-set in ascending or descending order.

---

This keyword selects that have matching values in both tables 
### Example:
**SELECT column_name(s) FROM table1 INNERJOIN table ON table1.column_name= table2.column_name;**

```sql
SELECT emp.emp_name,emp.emp_id FROM emp INNER JOIN readme ON emp.emp_name=readme.name;
```

#### Output:-

emp_name|  emp_id
----------- | ------ 
mani |         105
krishna|      104
pawan |      103
raju |          102
ram |          101
hari |          106

#### -->LEFT JOIN
---
**Description:**
- The **LEFT JOIN** keyword returns all records from the left table (table1) and the matching    records from the right table (table2).
- The result is 0 records from the right side, if there is no match.

---

### Example:
**SELECT column_name(s) FROM table1 LEFTJOIN table2;**

```sql
SELECT emp.emp_mobile FROM emp LEFT JOIN readme ON emp.emp_name = readme.name;
```

#### Output:-

emp_mobile | address
-------------|--------------
9871936479 | HYD
9786441638 | BZA
9785241638 | BZA
8271936479 | HYD
8919070226 | vizag
8919860226 | BVRM

#### -->RIGHT JOIN

---
**Description:**
- The **RIGHT JOIN** keyword returns all records from the right table (table2), and the      matching records from the left table (table1).
- The result is 0 records from the left side, if there is no match.

---
### Example:
**SELECT column_name(s) FROM table1 RIGHTJOIN table2 ON table1.column_name=table2.column_name;**

```sql
SELECT emp.emp_mobile,readme.address FROM emp right JOIN readme ON emp.emp_name = readme.name;
```

#### Output:-

emp_mobile | address
-----------|--------------
8919860226 | BVRM
8919070226 | vizag
8271936479 | HYD
9785241638 | BZA
9871936479 | HYD
9786441638 | BZA
NULL       | DELHI
    
#### -->FULL JOIN
### Example:
**SELECT column_name(s) FROM table1 FULL OUTERJOIN table2 ON table1.column_name=table2.column_name WHERE condition;**

## FUNCTIONS
#### -->AVG()
---
**Description:**
- The AVG() function returns the average value of a numeric column. 

---

```sql
SELECT COUNT(column_name) FROM table_name WHERE condition;
```

### Example:
**SELECT AVG(column_name) FROM table_name WHERE condition**


#### -->SUM()

---
**Description:**
- The SUM() function returns the total sum of a numeric column. 

---

### Example:
**SELECT SUM(column_name) FROM table_name WHERE condition**

```sql
SELECT SUM(column_name) FROM table_name WHERE condition;
```

#### -->COUNT()

---
**Description:**
- The COUNT() function returns the number of rows that matches a specified criterion.

---
### Example:
**SELECT (Prodduct ID) FROM Products**
```sql
SELECT COUNT(column_name) FROM table_name WHERE condition;
```

#### -->MIN()

---
**Description:**
- The MIN() function returns the smallest value of the selected column. 

---
### Example:
**SELECT MIN(column_name) FROM table_name WHERE condition**
```sql
SELECT MIN(column_name) FROM table_name WHERE condition;
```
#### -->MAX()
---
**Description:**
- The MAX() function returns the largest value of the selected column. 

---
### Example:
**SELECT MAX(column_name) FROM table_name WHERE condition**
```sql
SELECT MAX(column_name) FROM table_name WHERE condition;
```
## WHERE
#### -->LIKE
---
**Description:**
- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

---
### Example:
**SELECT column1,column2 FROM table_name WHERE column LIKE pattern**

```sql
SELECT * FROM emp WHERE emp_name LIKE 'r%';
```
#### Output:-
emp_id | emp_name | emp_address | emp_mobile
-------- | -------------| ----------------|--------------
101|ram|HYD|9871936479
102|raju|BZA|9785241638

#### -->IN
---
**Description:**
- The **LIKE** operator is used in a WHERE clause to search for a specified pattern in a column.

---
### Example:
**SELECT column_name(s) FROM table_name WHERE column_name IN (value1, value2);**

```sql
SELECT * FROM emp WHERE emp_address IN ('HYD','BVRM');
```

#### Output:-
emp_id | emp_name | emp_address | emp_mobile
-------|----------|-------------|----------------
101	| ram	| HYD	| 9871936479
103	| pawan	| HYD	| 8271936479
105	| mani	| BVRM	| 8919860226

#### -->BETWEEN

---
**Description:**
- The **BETWEEN** operator selects values within a given range. The values can be numbers, text, or dates.

---
### Example:
**SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;**

```sql
SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;

```

#### -->ANY	

---
**Description:**
- The **ANY** and **ALL** operators allow you to perform a comparison between a single column value and a range of other values.
- **ANY** means that the condition will be true if the operation is true for any of the values in the range.

---

### Example:
**SELECT column_name(s) FROM table_name WHERE column_name operator ANY (SELECT column_name FROM table_name WHERE condition);**

```sql
SELECT emp_mobile,emp_id
FROM emp
WHERE emp_address = ANY (SELECT address FROM readme WHERE name = "mani" );

```
#### Output:- 
emp_mobile |  emp_id
-------------- |-------
8919860226 | 105


#### -->EXISTS

---
**Description:**
- The **EXISTS** operator is used to test for the existence of any record in a subquery.
- The  **EXISTS** operator returns TRUE if the subquery returns one or more records.

---
### Example:
**SELECT column_name(s) FROM table_name WHERE EXISTS SELECT column_name FROM table_name WHERE condition);**

```sql
SELECT emp_mobile,emp_id
FROM emp
WHERE EXISTS (select name from readme where address = "vizag");

```
#### output:-
emp_mobile | emp_id
-------------|------------
9871936479 | 101
9786441638 | 106
9785241638 | 102
8271936479 | 103
8919070226 | 104
8919860226 | 105

#### -->ALL
---
**Description:**
- Here **ALL** means all records are equal to given record 

---


### Example: 
**SELECT ALL column_name(s) FROM table_name WHERE condition;**
```sql
SELECT ALL emp_name FROM emp WHERE emp_id = 101;

```
#### output:-
emp_name |  emp_address
------------- | --------------
ram | HYD

#### -->AND
---
**Description:**
- The **AND** operator displays a record if all the conditions separated by AND are TRUE.

---

### Example: 
**SELECT column1,column2 FROM table_name WHERE condition1 AND condition2 AND condition3;**
>**_NOTE:_ below querry both conditions are true it given output otherwise false**

```sql
SELECT * FROM emp WHERE emp_name='hari' AND emp_address='BZA';

```
#### output:-
emp_id | emp_name | emp_address | emp_mobile
--------|--------------|---------------|---------------
106 | hari | BZA | 9786441638

#### -->OR
---
**Description:**
- The OR operator displays a record if any of the conditions separated by OR is TRUE.


---
### Example: 
**SELECT column1,column2 FROM table_name WHERE condition1 OR condition2 OR condition3;**

```sql
SELECT * FROM emp WHERE emp_name='hari' AND emp_address='BZ';

```
#### output:-
emp_id | emp_name | emp_address | emp_mobile
--------|--------------|---------------|---------------
106 | hari | BZA | 9786441638

#### -->NOT
---
**Description:**
- The NOT operator displays a record if the condition(s) is NOT TRUE.

---
### Example: 
**SELECT column1,column2 FROM table_name WHERE NOT condition;**
```sql
SELECT * FROM emp WHERE not emp_name ='hari';

```

#### output:-
emp_id | emp_name | emp_address | emp_mobile
--------|--------------|---------------|---------------
101 | ram | HYD | 9871936479
102 | raju | BZA | 9785241638
103 | pawan | HYD | 8271936479
104 | krishna | vizag | 8919070226
105 | mani | BVRM | 8919860226

