# Lecture 02 - SQL-DDL Statements and Single Table Queries

**Course:** IT2140 - Database Design and Development  
**Lecture:** 02  
**Topic:** SQL-DDL Statements and Single Table Queries  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:14:55

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Introduction to SQL](#introduction-to-sql)
- [Data Definition Language (DDL)](#data-definition-language-ddl)
- [Data Manipulation Language (DML)](#data-manipulation-language-dml)
- [SELECT Clause](#select-clause)
- [Clauses and Operators](#clauses-and-operators-used-with-select)
- [Aggregation](#aggregation)
- [Grouping](#grouping-group-by-clause)
- [Summary](#summary)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- Introduction to SQL
- Data definition language
- Data manipulation language

---

## Learning Outcomes

At the end of this lecture students should be able to:

- **Write syntactically correct SQL statements** to create and modify relations in a RDBMS
- **Write syntactically correct SQL statements** to answer user defined queries in a RDBMS

---

## Introduction to SQL

### History

**SQL** - Initially called **SEQUEL** (for **S**tructured **E**nglish **QUE**ry **L**anguage)

**Development:**
- Developed for an experimental relational database system called **System R**

**Standardization:**
- A joint effort between **ANSI** (American National Standard Institute) and **ISO** (International Standards Organization) led to a standard version of SQL in **1986** (SQL1, SQL-86, etc.)
- Major revisions have been proposed and **SQL2** (also called **SQL-92**) has subsequently been developed

---

## SQL: Review

SQL is a **comprehensive database language**:

### Components

1. **Data Definition Language (DDL)**
   - Creating and modifying database structures

2. **Data Manipulation Language (DML)**
   - Inserting, updating, deleting, and querying data

3. **Facilities for security & authorization**
   - User access control

4. **Facilities for transaction processing**
   - ACID properties

5. **Facilities for embedding SQL in general purpose languages**
   - Embedded SQL

---

## Data Definition Language (DDL)

### Definition

**DDL** is the subset of SQL that supports the **creation, deletion and modifications** for **tables and views**.

**Constraints** can be defined on the tables.

---

### Common Constraints

| **Constraint** | **Purpose** |
|:---|:---|
| **Not Null** | Ensure that column doesn't have null values |
| **Unique** | Ensure that column doesn't have duplicate values |
| **Primary key** | Defines the primary key |
| **Foreign key** | Defines a foreign key |
| **Default** | Defines a default value for a column (When no values are given) |
| **Check** | Validates data in a column |

---

## Creating a Table - Example

### SQL Statement

```sql
CREATE TABLE STUDENT
(
    studentid INTEGER PRIMARY KEY,
    sName VARCHAR(30) NOT NULL,
    nic CHAR(10) UNIQUE,
    gpa FLOAT,
    progId VARCHAR(10) DEFAULT 'IT',
    CONSTRAINT student_prog_fk FOREIGN KEY (progId)
        REFERENCES programs(id) 
        ON DELETE SET DEFAULT 
        ON UPDATE CASCADE,
    CONSTRAINT gpa_ck CHECK (gpa <= 4.0)
);
```

---

### Explanation

**Column Definitions:**

- `studentid INTEGER PRIMARY KEY` - Primary key constraint
- `sName VARCHAR(30) NOT NULL` - Not null constraint
- `nic CHAR(10) UNIQUE` - Unique constraint
- `gpa FLOAT` - No constraint
- `progId VARCHAR(10) DEFAULT 'IT'` - Default value constraint

**Table Constraints:**

- `student_prog_fk` - Foreign key constraint
  - References `programs(id)`
  - `ON DELETE SET DEFAULT` - Sets to default value when referenced row is deleted
  - `ON UPDATE CASCADE` - Updates when referenced row is updated
- `gpa_ck` - Check constraint (gpa must be ≤ 4.0)

---

## Modifications to Tables

### ALTER Commands

Used to **alter the definition** of the object

---

### Examples

**Adding a new column to a table:**

```sql
ALTER TABLE student ADD age INT;
```

**Adding a new constraint to a column:**

```sql
ALTER TABLE student ADD CONSTRAINT chk_age CHECK (age > 18);
```

**Removing a column from a table:**

```sql
ALTER TABLE student DROP COLUMN age;
```

---

### DROP Commands

Used for **dropping objects**

**Example - Deleting a table:**

```sql
DROP TABLE Employee;
```

---

## Data Manipulation Language (DML)

### Definition

**DML** is the subset of SQL that allows users to write statements to:
- **Insert** rows
- **Delete** rows
- **Modify** rows
- **Display** rows

---

### Inserting Rows

**Syntax:**

```sql
INSERT INTO table_name VALUES (value1, value2, ...);
```

```sql
INSERT INTO table_name(column1, column2, ...) VALUES (value1, value2, ...);
```

---

**Examples:**

```sql
INSERT INTO student VALUES (1000, 'Amal', '123456789V', 3.2, 'BM');
```

```sql
INSERT INTO student(studentId, sName, nic) 
VALUES (1001, 'Nimali', '234567890V');
```

---

**Resulting Table:**

| **StudentID** | **SName** | **nic** | **gpa** | **progId** |
|:---:|:---|:---|:---:|:---:|
| 1000 | Amal | 123456789V | 3.2 | BM |
| 1001 | Nimali | 234567890V | Null | IT |

---

## Data Manipulation Language (DML) (Continued)

### Deleting Rows

**Syntax:**

```sql
DELETE FROM table_name WHERE condition;
```

**Example:**

```sql
DELETE FROM student WHERE studentId = 1000;
```

---

### Updating Rows

**Syntax:**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

**Example:**

```sql
UPDATE student
SET gpa = 2.8
WHERE studentId = 1001;
```

---

## SELECT Clause

### Definition

**Select clause** in SQL is the **basic statement** for **retrieving information** from a database.

---

### Basic Form

```sql
SELECT <attributes>
FROM <one or more relations>
WHERE <conditions>;
```

---

### Example

**Query:** Display ids of all students whose gpa is above 3.0

```sql
SELECT StudentId 
FROM student 
WHERE gpa > 3.0;
```

---

## Clauses and Operators Used with SELECT

### Overview

- **LIKE** operator
- **IS [NOT] NULL** operator
- **DISTINCT** operator
- **BETWEEN** operator
- **ORDER BY** clause
- **Joins** (inner & outer)
- **Nested query** (IN/SOME/ANY, ALL), [NOT] EXISTS
- **Aggregate functions**
- **GROUP BY HAVING** clauses

---

## LIKE Operator

### Purpose

Used for **matching patterns**

---

### Syntax

```sql
<string> LIKE <pattern>
```

**Pattern may contain two special symbols:**

- `%` = any sequence of characters
- `_` = any single character

---

### Example

**Student Table:**

| **StudentID** | **Name** | **gpa** | **progId** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | Null | IT |
| 1002 | Aruni | 3.0 | SE |
| 1003 | Surani | 2.5 | IT |

**Query:** Find students whose name starts with 'A'

```sql
SELECT Name 
FROM student 
WHERE Name LIKE 'A%';
```

**Result:**

| **Name** |
|:---|
| Amal |
| Aruni |

---

## IS [NOT] NULL Operator

### Purpose

**IS NULL:** Used to check whether attribute value is **null**

---

### Example

**Student Table:**

| **StudentID** | **Name** | **gpa** | **progId** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | Null | IT |
| 1002 | Aruni | 3.0 | SE |
| 1003 | Surani | 2.5 | IT |
| 1004 | Imali | Null | BM |

**Query:** Find studentIDs of the students who have not completed a semester yet

```sql
SELECT studentId
FROM student
WHERE gpa IS NULL;
```

**Result:**

| **StudentID** |
|:---:|
| 1001 |
| 1004 |

---

## DISTINCT Operator

### Purpose

In a table, a column may contain **many duplicate values**.

**Duplicates in results** can be eliminated using **DISTINCT** operator.

---

### Example

**Student Table:**

| **StudentID** | **Name** | **gpa** | **progId** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | Null | IT |
| 1002 | Aruni | 3.0 | SE |
| 1003 | Surani | 2.5 | IT |
| 1004 | Imali | Null | BM |

---

**Query 1 (Without DISTINCT):**

```sql
SELECT progId
FROM student;
```

**Result:**

| **ProgId** |
|:---:|
| BM |
| IT |
| SE |
| IT |
| BM |

---

**Query 2 (With DISTINCT):**

```sql
SELECT DISTINCT progId
FROM student;
```

**Result:**

| **ProgId** |
|:---:|
| BM |
| IT |
| SE |

---

## BETWEEN Operator

### Purpose

Used to check whether attribute value is **within a range**

---

### Example

**Student Table:**

| **StudentID** | **Name** | **gpa** | **progId** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | Null | IT |
| 1002 | Aruni | 3.8 | SE |
| 1003 | Surani | 2.5 | IT |
| 1004 | Imali | 4.0 | BM |

**Query:** Find the students who will be obtaining a first class (3.7 ≤ gpa ≤ 4.0)

```sql
SELECT studentID
FROM student
WHERE gpa BETWEEN 3.7 AND 4.0;
```

**Result:**

| **StudentID** |
|:---:|
| 1002 |
| 1004 |

---

## ORDER BY Clause

### Purpose

Used to **order results** based on a given field

**Ordering** is **ascending (ASC)**, unless you specify the **DESC** keyword

---

### Example

**Student Table:**

| **StudentID** | **Name** | **gpa** | **progId** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | 2.8 | IT |
| 1002 | Aruni | 3.8 | SE |
| 1003 | Surani | 2.5 | IT |
| 1004 | Imali | 4.0 | BM |

**Query:** Display the student names and gpa's in the ascending order of gpa's

```sql
SELECT Name, gpa
FROM student
ORDER BY gpa;
```

**Result:**

| **Name** | **gpa** |
|:---|:---:|
| Surani | 2.5 |
| Nimali | 2.8 |
| Amal | 3.2 |
| Aruni | 3.8 |
| Imali | 4.0 |

---

## Aggregation

### Definition

An **aggregate function** summarizes the results of an expression over a **number of rows**, returning a **single value**.

---

### Common Aggregate Functions

- **SUM** - Sum of values
- **COUNT** - Count of rows
- **AVG** - Average of values
- **MIN** - Minimum value
- **MAX** - Maximum value

---

## Aggregation (Example)

### Example

**Student Table:**

| **StudentID** | **Name** | **gpa** | **progId** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | 2.8 | IT |
| 1002 | Aruni | 3.8 | SE |
| 1003 | Surani | 2.5 | BM |
| 1004 | Imali | 4.0 | IT |

**Query:** Find the average, minimum, maximum gpa of students

```sql
SELECT AVG(gpa), MIN(gpa), MAX(gpa)
FROM student;
```

**Result:**

| **AVG(gpa)** | **MIN(gpa)** | **MAX(gpa)** |
|:---:|:---:|:---:|
| 3.26 | 2.5 | 4.0 |

---

## Grouping (GROUP BY Clause)

### Purpose

**Groups the data** in tables and produces a **single summary row** for each group.

Grouping is done based on **values in a given field**.

---

### Rules When Using GROUP BY

**When using group by:**

1. Each item in the **SELECT list** must be **single valued per group**

2. **SELECT clause** may only contain:
   - Column names
   - Aggregate functions
   - Constants
   - An expression involving combinations of the above

3. **All column names** in SELECT list must appear in the **GROUP BY clause** unless the name is used only in the **aggregate function**

---

## Grouping (Example)

### Example

**Student Table:**

| **SID** | **CID** | **Grade** |
|:---:|:---:|:---:|
| 1000 | DBII | A |
| 1001 | DBII | A |
| 1002 | DBII | C |
| 1000 | SEI | B |
| 1002 | SPD | C |

**After grouping by CID:**

| **SID** | **CID** | **Grade** |
|:---:|:---:|:---:|
| 1000 | DBII | A |
| 1000 | SEI | B |
| 1001 | DBII | A |
| 1002 | DBII | C |
| 1002 | SPD | C |

**Query:** Count the number of students who has followed each module

```sql
SELECT CID, COUNT(SID)
FROM Student
GROUP BY CID;
```

**Result:**

| **CID** | **Count(SID)** |
|:---:|:---:|
| DBII | 3 |
| SEI | 1 |
| SPD | 1 |

---

## HAVING Clause

### Purpose

Used to **apply conditions on the groupings**

---

### Example

**Student Table:**

| **SID** | **CID** | **Grade** |
|:---:|:---:|:---:|
| 1000 | DBII | A |
| 1001 | DBII | A |
| 1002 | DBII | C |
| 1000 | SEI | B |
| 1002 | SPD | C |

**Query:** Find courses which are followed by more than two students

```sql
SELECT CID, COUNT(SID)
FROM course
GROUP BY CID
HAVING COUNT(SID) > 2;
```

**Result:**

| **CID** | **Count(SID)** |
|:---:|:---:|
| DBII | 3 |

---

## Summary

### SQL Query Structure

**Complete SQL Query Syntax:**

```sql
SELECT <attribute-list>
FROM <table-list>
[WHERE <condition>]
[GROUP BY <group attribute(s)>]
[HAVING <group condition>]
[ORDER BY <attribute list>];
```

---

### Key Points

✅ **DDL** - Create, alter, drop database objects

✅ **DML** - Insert, update, delete, select data

✅ **Constraints** - Enforce data integrity

✅ **Operators** - LIKE, IS NULL, DISTINCT, BETWEEN

✅ **ORDER BY** - Sort results

✅ **Aggregate Functions** - SUM, COUNT, AVG, MIN, MAX

✅ **GROUP BY** - Group data for aggregation

✅ **HAVING** - Filter grouped data

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the courseweb

✅ Complete the **tutorial**

---

**End of Lecture 02**
