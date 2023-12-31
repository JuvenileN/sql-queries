//The SQL query to create a database is:
CREATE DATABASE database_name;

//The SQL query to create a table is:
CREATE TABLE table_name (
  column1 data_type,
  column2 data_type);

//The SQL query to insert data into a table is:
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value);

//The SQL query to select data from a table is:
SELECT * FROM table_name;

//The SQL query to select data from a column in a table is:
SELECT column1, column2, ...
FROM table_name;

//The SQL query to select DISTINCT syntax:
SELECT DISTINCT column1, column2, ...
FROM table_name;

//WHERE Syntax;
SELECT column1, column2, ...
FROM table_name
WHERE condition;

//AND Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

//OR Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

//NOT Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

//ORDER BY Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

//IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

//IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

//UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

//DELETE Syntax
DELETE FROM table_name WHERE condition;

//The SQL SELECT TOP Clause
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;


//LIMIT
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

//MIN() Syntax
SELECT MIN(column_name)
FROM table_name
WHERE condition;

//MAX() Syntax
SELECT MAX(column_name)
FROM table_name
WHERE condition;

//COUNT() Syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

//AVG() Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;

//SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;

//LIKE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
-- LIKE Operator	Description
-- WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
-- WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
-- WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
-- WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
-- WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
-- WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
-- WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"

//SQL Wildcards
-- LIKE Operator	Description
-- WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
-- WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
-- WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
-- WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
-- WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
-- WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
-- WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"

//IN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

-- or:

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

//BETWEEN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

ALIASES
//Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;

//Alias Table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;

//SQL Joins

(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

//INNER JOIN Syntax
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

//LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;


//FULL OUTER JOIN Syntax
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;


//RIGHT JOIN Syntax
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

//Self Join Syntax
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

//UNION Syntax
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

//UNION ALL Syntax
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

//GROUP BY Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

//HAVING Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

//EXISTS Syntax
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

//ANY Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);

//ALL Syntax With SELECT
SELECT ALL column_name(s)
FROM table_name
WHERE condition;

ALL Syntax With WHERE or HAVING
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
  (SELECT column_name
  FROM table_name
  WHERE condition);

//SELECT INTO Syntax
Copy all columns into a new table:
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

//Copy only some columns into a new table:
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

//INSERT INTO SELECT Syntax
Copy all columns from one table to another table:
INSERT INTO table2
SELECT * FROM table1
WHERE condition;

//Copy only some columns from one table into another table:
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

//CASE Syntax
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

//Stored Procedure Syntax
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;

//Execute a Stored Procedure
EXEC procedure_name;

//The SQL BACKUP DATABASE Statement
BACKUP DATABASE databasename
TO DISK = 'filepath';

//The SQL DROP DATABASE Statement
DROP DATABASE databasename;

//The SQL BACKUP DATABASE Statement
BACKUP DATABASE databasename
TO DISK = 'filepath';
