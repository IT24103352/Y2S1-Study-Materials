# Lecture 03 - SQL Joins

**Course:** IT2140 - Database Design and Development  
**Lecture:** 03  
**Topic:** SQL Joins  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:26:48

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Introduction to Joins](#introduction-to-joins)
- [INNER JOIN](#inner-join)
- [INNER JOIN with Conditions](#inner-join-with-conditions)
- [LEFT OUTER JOIN](#left-outer-join)
- [RIGHT OUTER JOIN](#right-outer-join)
- [Summary](#summary)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- Introduction to Joins
- Inner Join
- Outer Join (Left/Right)

---

## Learning Outcomes

At the end of this lecture students should be able to:

- **Write syntactically correct SQL join statements** to combine and retrieve data from multiple tables in an RDBMS

---

## Introduction to Joins

### Definition

**Joins** are used to **combine data from two or more tables** based on a **related column** (usually **Primary Key-Foreign Key relationship**).

---

## INNER JOIN

### Purpose

Combines rows from two tables where there is a **matching value** in the related columns.

Returns only the rows that have **matches in both tables**.

---

### Sample Tables

**Student Table:**

| **SID** | **Name** | **gpa** | **pid** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | 2.8 | IT |
| 1002 | Aruni | 3.8 | SE |
| 1003 | Surani | 2.5 | IT |

**Program Table:**

| **progId** | **years** | **OfferBy** |
|:---:|:---:|:---|
| BM | 3 | Curtin |
| IT | 4 | SLIIT |
| SE | 3 | SHU |

---

### Example Query

**Question:** Find names of students and their program offerings.

---

**Method 1: Using WHERE clause (Implicit Join)**

```sql
SELECT s.Name, p.OfferBy
FROM Student s, Program p
WHERE s.pid = p.progId;
```

---

**Method 2: Using INNER JOIN (Explicit Join)**

```sql
SELECT s.Name, p.OfferBy
FROM Student s INNER JOIN Program p
ON s.pid = p.progID;
```

---

**Result:**

| **Name** | **OfferBy** |
|:---|:---|
| Amal | Curtin |
| Nimali | SLIIT |
| Aruni | SHU |
| Surani | SLIIT |

---

## INNER JOIN with Conditions

### Purpose

Joins two tables based on a **certain condition** with additional **filtering**.

---

### Sample Tables

**Student Table:**

| **SID** | **Name** | **gpa** | **pid** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | 2.8 | IT |
| 1002 | Aruni | 3.8 | SE |
| 1003 | Surani | 2.5 | IT |

**Program Table:**

| **progId** | **years** | **OfferBy** |
|:---:|:---:|:---|
| BM | 3 | Curtin |
| IT | 4 | SLIIT |
| SE | 3 | SHU |

---

### Example Query

**Question:** Find the names of students who follow programs offered by SLIIT

---

**Method 1: Using WHERE clause**

```sql
SELECT s.Name
FROM student s, program p
WHERE s.pid = p.progId 
  AND OfferBy = 'SLIIT';
```

---

**Method 2: Using INNER JOIN with WHERE**

```sql
SELECT s.Name
FROM student s INNER JOIN program p 
ON s.pid = p.progId
WHERE OfferBy = 'SLIIT';
```

---

**Result:**

| **Name** |
|:---|
| Nimali |
| Surani |

---

## LEFT OUTER JOIN

### Definition

**Returns all rows** from the table on the **left-hand side** of join, with the **matching rows** in the table on the **right-hand side** of the join.

The result is **NULL** in the right side when there is **no match**.

---

### Sample Tables

**Student Table:**

| **SID** | **Name** | **gpa** | **pid** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | 2.8 | IT |
| 1002 | Aruni | 3.8 | SE |
| 1003 | Surani | 2.5 | IT |

**Program Table:**

| **progId** | **years** | **OfferBy** |
|:---:|:---:|:---|
| BM | 3 | Curtin |
| IT | 4 | SLIIT |

*Note: SE program is missing from Program table*

---

### Visual Representation

```
Student Table (LEFT)        Program Table (RIGHT)
┌─────────────┐             ┌─────────────┐
│   All rows  │             │  Matching   │
│   included  │◄────────────┤   rows      │
│             │             │   included  │
└─────────────┘             └─────────────┘
      │                           │
      │                           │
      └───────────┬───────────────┘
                  │
                  ▼
          Result includes:
          - All Student rows
          - NULL for unmatched Program data
```

---

### Example Query

**Question:** For all the students display the name and the offering institute

```sql
SELECT s.Name, p.OfferBy
FROM student s LEFT OUTER JOIN program p
ON s.pid = p.progId;
```

---

**Result:**

| **Name** | **OfferBy** |
|:---|:---|
| Amal | Curtin |
| Nimali | SLIIT |
| Aruni | NULL |
| Surani | SLIIT |

**Explanation:**
- Aruni follows SE program
- SE program doesn't exist in Program table
- Therefore, OfferBy is **NULL** for Aruni

---

## RIGHT OUTER JOIN

### Definition

**Returns all rows** from the table on the **right-hand side** of join, with the **matching rows** in the table on the **left-hand side** of the join.

The result is **NULL** in the left side when there is **no match**.

---

### Sample Tables

**Student Table:**

| **SID** | **Name** | **gpa** | **pid** |
|:---:|:---|:---:|:---:|
| 1000 | Amal | 3.2 | BM |
| 1001 | Nimali | 2.8 | IT |
| 1002 | Aruni | 3.8 | NULL |
| 1003 | Surani | 2.5 | IT |

**Program Table:**

| **progId** | **years** | **OfferBy** |
|:---:|:---:|:---|
| BM | 3 | Curtin |
| IT | 4 | SLIIT |
| SE | 3 | SHU |

*Note: No student is following SE program*

---

### Visual Representation

```
Student Table (LEFT)        Program Table (RIGHT)
┌─────────────┐             ┌─────────────┐
│  Matching   │             │   All rows  │
│   rows      │────────────►│   included  │
│   included  │             │             │
└─────────────┘             └─────────────┘
      │                           │
      │                           │
      └───────────┬───────────────┘
                  │
                  ▼
          Result includes:
          - All Program rows
          - NULL for unmatched Student data
```

---

### Example Query

**Question:** For all the programs display the offering institute and names of the students following

```sql
SELECT s.Name, p.OfferBy
FROM student s RIGHT OUTER JOIN program p
ON s.pid = p.progId;
```

---

**Result:**

| **Name** | **OfferBy** |
|:---|:---|
| Amal | Curtin |
| Nimali | SLIIT |
| Surani | SLIIT |
| NULL | SHU |

**Explanation:**
- SE program is offered by SHU
- No student is following SE program
- Therefore, Name is **NULL** for SHU

---

## Summary

### Join Types Comparison

| **Join Type** | **Description** | **Returns** |
|:---|:---|:---|
| **INNER JOIN** | Returns matching rows from both tables | Only matched rows |
| **LEFT OUTER JOIN** | Returns all rows from left table + matched rows from right | All left + NULL for unmatched right |
| **RIGHT OUTER JOIN** | Returns all rows from right table + matched rows from left | All right + NULL for unmatched left |

---

### Join Syntax Comparison

**INNER JOIN:**

```sql
-- Method 1: Implicit Join
SELECT columns
FROM table1, table2
WHERE table1.column = table2.column;

-- Method 2: Explicit Join
SELECT columns
FROM table1 INNER JOIN table2
ON table1.column = table2.column;
```

---

**LEFT OUTER JOIN:**

```sql
SELECT columns
FROM table1 LEFT OUTER JOIN table2
ON table1.column = table2.column;
```

---

**RIGHT OUTER JOIN:**

```sql
SELECT columns
FROM table1 RIGHT OUTER JOIN table2
ON table1.column = table2.column;
```

---

### Visual Summary

```
┌─────────────────────────────────────────┐
│         JOIN TYPES OVERVIEW             │
└─────────────────────────────────────────┘

INNER JOIN:
    Table A         Table B
    ┌─────┐         ┌─────┐
    │     │         │     │
    │  ┌──┴──┐   ┌──┴──┐  │
    │  │ Match│   │Match│  │
    └──┴──────┴───┴─────┴──┘
       (Only matched area)

LEFT OUTER JOIN:
    Table A         Table B
    ┌──────────┐    ┌─────┐
    │ All rows │    │     │
    │  ┌───┐   │ ┌──┴──┐  │
    │  │Match│  │ │Match│  │
    └──┴──────┴──┴─────┴──┘
    (All A + matched B)

RIGHT OUTER JOIN:
    Table A         Table B
    ┌─────┐    ┌──────────┐
    │     │    │ All rows │
    │  ┌──┴──┐ │   ┌───┐  │
    │  │Match│ │   │Match│ │
    └──┴─────┴─┴───┴──────┘
    (Matched A + all B)
```

---

### Key Points

✅ **INNER JOIN** - Only matching records from both tables

✅ **LEFT OUTER JOIN** - All records from left table + matching from right (NULL if no match)

✅ **RIGHT OUTER JOIN** - All records from right table + matching from left (NULL if no match)

✅ **Join Condition** - Usually based on Primary Key-Foreign Key relationship

✅ **Table Aliases** - Use aliases (s, p) for cleaner queries

✅ **Additional Conditions** - Can add WHERE clause for further filtering

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the courseweb

✅ Complete the **tutorial**

---

**End of Lecture 03**
