# Lecture 08 - Relational Algebra

**Course:** IT2140 - Database Design and Development  
**Lecture:** 08  
**Topic:** Relational Algebra  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:38:53

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Introduction to Formal Query Languages](#introduction-to-formal-query-languages)
- [Unary Operators](#unary-operators)
- [Set Operators](#set-operators)
- [Binary Operators](#binary-operators)
- [Outer Joins](#outer-joins)
- [Aggregate Functions](#aggregate-functions)
- [Grouping](#grouping)
- [Summary](#summary)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- Introduction to relational algebra
- Unary operators
- Set operations
- Binary operators
- Aggregate functions and grouping

---

## Learning Outcomes

At the end of this lecture students should be able to:

- **Write relational algebra statements** to cater a given user query

---

## Introduction to Formal Query Languages

### What is Relational Algebra?

**Relational algebra** is the **set of operations** defined in relational model for **manipulating relational databases**.

---

### Purpose

**Relational algebra** is used as the **basis** for:
- **Implementing** relational database management systems (RDBMS)
- **Optimizing** relational database management systems (RDBMS)

---

### Relationship with SQL

The concepts of **relational algebra** are **incorporated** in **Structured Query Language (SQL)** for RDBMS.

---

## Introduction to Formal Query Languages (Continued)

### Operators in Relational Algebra

Relational algebra consists of a number of operators such as:

**1. Unary operators**
- Operate on a **single relation**

**2. Set operators**
- Based on **set theory**

**3. Binary operators**
- Operate on **two tables**

**4. Aggregate functions**
- Can **summarize data**

---

### Key Property

These operators can:
- Operate on **one or more relations**
- Produce a **new relation**
- The new relation can be **further manipulated** using relational algebra

---

## Unary Operators

### The PROJECT Operator (π)

**Symbol:** π (Pi)

**Purpose:**
- Selects **certain columns** from the table
- **Discards** the other columns
- **Duplicate rows are eliminated**

---

### Syntax

```
π <attribute_list> (Relation)
```

---

### Example

**EMP Table:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |
| 999887777 | Alicia Zelaya | 25000 | 4 |
| 987654321 | Jennifer Wallace | 43000 | 1 |
| 666884444 | Ramesh Narayan | 38000 | 2 |
| 453453453 | Joyce English | 25000 | 4 |

---

**Operation:**

```
π Name, Salary (EMP)
```

**Result:**

| **Name** | **Salary** |
|:---|:---:|
| John Smith | 30000 |
| Franklin Wong | 40000 |
| Alicia Zelaya | 25000 |
| Jennifer Wallace | 43000 |
| Ramesh Narayan | 38000 |
| Joyce English | 25000 |

**Note:** Only **Name** and **Salary** columns are selected

---

## The SELECT Operator (σ)

**Symbol:** σ (Sigma)

**Purpose:**
- Used to **select a subset of tuples** from a relation
- That **satisfies a selection condition**

---

### Selection Condition

The **selection condition** = **boolean expression** with a set of clauses:

**Connected by:**
- **AND**
- **OR**
- **NOT** boolean operators

**Comparison operators:**
- `=`, `<`, `>`, `≥`, `≤`, `≠`

---

### Syntax

```
σ <condition> (Relation)
```

---

### Example 1: Simple Condition

**EMP Table:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |
| 999887777 | Alicia Zelaya | 25000 | 4 |
| 987654321 | Jennifer Wallace | 43000 | 1 |
| 666884444 | Ramesh Narayan | 38000 | 2 |
| 453453453 | Joyce English | 25000 | 4 |

---

**Operation:**

```
σ Dno=5 (EMP)
```

**Result:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |

---

### Example 2: Salary Condition

**Operation:**

```
σ Salary≥40000 (EMP)
```

**Result:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 333445555 | Franklin Wong | 40000 | 5 |
| 987654321 | Jennifer Wallace | 43000 | 1 |

---

### Example 3: Compound Condition (AND)

**Operation:**

```
σ Dno=5 AND Salary≥30000 (EMP)
```

**Result:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 333445555 | Franklin Wong | 40000 | 5 |

---

## The RENAME Operator (ρ)

**Symbol:** ρ (Rho)

**Purpose:**
- Several relational algebra operators are applied **one after another**
- This could be done by **nesting** relational operators
- OR applied **one operation at a time** and creating **intermediate relations**
- For the latter case, a **name should be given** to the intermediate relation

---

### Syntax

**Option 1: Using arrow (←)**

```
NewRelation ← operation (Relation)
```

**Option 2: Using ρ**

```
ρ NewRelation (operation (Relation))
```

---

### Example: Nested Operations

**Nested version:**

```
π Name, Salary (σ Dno=5 (EMP))
```

**With intermediate relation:**

```
Dep5_emps ← σ Dno=5 (EMP)
RES ← π Name, Salary (Dep5_emps)
```

**OR using ρ:**

```
ρ Dep5_emps (σ Dno=5 (EMP))
RES ← π Name, Salary (Dep5_emps)
```

---

## Renaming Attributes

### Purpose

Renaming method can also be used for **renaming attributes** in the intermediate and result relations.

---

### Example

**Method 1:**

```
Temp ← σ Dno=5 (EMP)
ρ R(full_name, sal) (π Name, Salary (Temp))
```

**Method 2:**

```
ρ R(Full_name, sal) (π Name, Salary (σ Dno=5 (EMP)))
```

---

## Set Operators

### Union Compatibility

**Definition:**

Two relations **R** & **S** are said to be **union-compatible** if the following holds:

1. **Degree of R & S are equal** (same number of attributes)
2. **Corresponding fields** of R & S, taken from **left to right**, have the **same domains**

---

### Three Set Operations

Three operations can be performed on two **union-compatible** relations R & S:

1. **Union**
2. **Intersection**
3. **Set Difference**

---

## UNION Operator (∪)

### Definition

The result of this operation, denoted by **R ∪ S**, is a relation that includes tuples that are **either in R or S (or both)**.

---

### Example

**Relation R:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |

**Relation S:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 999887777 | Alicia Zelaya | 25000 | 4 |
| 453453453 | Joyce English | 25000 | 4 |

---

**Operation:**

```
R ∪ S
```

**Result:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |
| 999887777 | Alicia Zelaya | 25000 | 4 |
| 453453453 | Joyce English | 25000 | 4 |

**Note:** All unique tuples from both relations

---

## INTERSECTION Operator (∩)

### Definition

The result of this operation, denoted by **R ∩ S**, is a relation that includes tuples **common to R and S**.

---

### Example

**Relation R:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |
| 666884444 | Ramesh Narayan | 38000 | 2 |

**Relation S:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 333445555 | Franklin Wong | 40000 | 5 |
| 453453453 | Joyce English | 25000 | 4 |

---

**Operation:**

```
R ∩ S
```

**Result:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 333445555 | Franklin Wong | 40000 | 5 |

**Note:** Only tuples present in **both** R and S

---

## SET DIFFERENCE Operator (−)

### Definition

The result of this operation, denoted by **R − S**, is a relation that includes **all tuples in R that are not in S**.

---

### Example

**Relation R:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |
| 666884444 | Ramesh Narayan | 38000 | 2 |

**Relation S:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 333445555 | Franklin Wong | 40000 | 5 |
| 453453453 | Joyce English | 25000 | 4 |

---

**Operation:**

```
R − S
```

**Result:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 666884444 | Ramesh Narayan | 38000 | 2 |

**Note:** Tuples in R **but not in** S

---

## Binary Operators

### CARTESIAN PRODUCT (×)

**Symbol:** × (Cross)

**Purpose:**
- **Cartesian product** (also known as **cross product**)
- Combines **every tuple** from one relation with **every tuple** from the other relation

---

### Example

**EMP Table:**

| **ID** | **Name** | **Dno** |
|:---|:---|:---:|
| 123456789 | John Smith | 5 |
| 666884444 | Ramesh Narayan | 4 |
| 987654321 | Jennifer Wallace | 4 |

**DEPT Table:**

| **Dnumber** | **Dname** |
|:---:|:---|
| 1 | HQ |
| 4 | Research |
| 5 | Finance |

---

**Operation:**

```
EMP × DEPT
```

**Result:**

| **ID** | **Name** | **Dno** | **Dnumber** | **Dname** |
|:---|:---|:---:|:---:|:---|
| 123456789 | John Smith | 5 | 1 | HQ |
| 123456789 | John Smith | 5 | 4 | Research |
| 123456789 | John Smith | 5 | 5 | Finance |
| 666884444 | Ramesh Narayan | 4 | 1 | HQ |
| 666884444 | Ramesh Narayan | 4 | 4 | Research |
| 666884444 | Ramesh Narayan | 4 | 5 | Finance |
| 987654321 | Jennifer Wallace | 4 | 1 | HQ |
| 987654321 | Jennifer Wallace | 4 | 4 | Research |
| 987654321 | Jennifer Wallace | 4 | 5 | Finance |

**Note:** 3 tuples × 3 tuples = **9 tuples**

---

## EQUI JOIN (⋈)

**Symbol:** ⋈ (Join)

**Purpose:**
- The **join operator** combines **related two tuples** from two relations into **single tuple**
- With **equi join**, the comparison operator used for joining is **'='**

---

### Key Property

**Results** of an equi join would have **one or more pairs of attributes** that have **identical values** in every tuple.

---

### Syntax

```
R ⋈ condition S
```

---

### Example

**EMP Table:**

| **ID** | **Name** | **Dno** |
|:---|:---|:---:|
| 123456789 | John Smith | 5 |
| 666884444 | Ramesh Narayan | 4 |
| 987654321 | Jennifer Wallace | 4 |

**DEPT Table:**

| **Dnumber** | **Dname** |
|:---:|:---|
| 1 | HQ |
| 4 | Research |
| 5 | Finance |

---

**Operation:**

```
EMP ⋈ Dno=Dnumber DEPT
```

**Result:**

| **ID** | **Name** | **Dno** | **Dnumber** | **Dname** |
|:---|:---|:---:|:---:|:---|
| 123456789 | John Smith | 5 | 5 | Finance |
| 666884444 | Ramesh Narayan | 4 | 4 | Research |
| 987654321 | Jennifer Wallace | 4 | 4 | Research |

**Note:** **Dno** and **Dnumber** both appear with **same values** (redundant)

---

## NATURAL JOIN (⋈)

**Symbol:** ⋈ or * (asterisk)

**Purpose:**
- **Natural join** is a join similar to the **equi join**
- But **removes the second redundant attribute** from the results of an equi join

---

### Requirement

**Natural join** requires that the **two join attributes have the same name** in both relations.

---

### Example

**EMP Table:**

| **ID** | **Name** | **Dno** |
|:---|:---|:---:|
| 123456789 | John Smith | 5 |
| 666884444 | Ramesh Narayan | 4 |
| 987654321 | Jennifer Wallace | 4 |

**DEPT Table:**

| **Dno** | **Dname** |
|:---:|:---|
| 1 | HQ |
| 4 | Research |
| 5 | Finance |

**Note:** Both tables have **Dno** attribute

---

**Operation:**

```
EMP * DEPT
```

or

```
EMP ⋈ DEPT
```

**Result:**

| **ID** | **Name** | **Dno** | **Dname** |
|:---|:---|:---:|:---|
| 123456789 | John Smith | 5 | Finance |
| 666884444 | Ramesh Narayan | 4 | Research |
| 987654321 | Jennifer Wallace | 4 | Research |

**Note:** **Dno** appears only **once** (redundant column removed)

---

## Outer Joins

### Problem with Regular Joins

**Join operation:**
- **Ignores** the non-matching tuples
- Join attributes with **null values** are also **eliminated**

**Some queries require these tuples**

---

### Solution: Three Outer Join Operators

**1. Left outer join**

**2. Right outer join**

**3. Full outer join**

---

## LEFT OUTER JOIN (⟕)

**Symbol:** ⟕

**Purpose:**

Outer join between relation R and S (R ⟕ S):

1. Provides **all combinations of tuples** in R and S that are **equal** on their join attribute
2. Also **returns tuples in R** that have **no matching tuples in S**

---

### Example

**Employee Table:**

| **Name** | **EmpID** | **Dept** |
|:---|:---:|:---|
| Harry | 3415 | Finance |
| Sally | 2241 | Sales |
| George | 3401 | Finance |
| Harriet | 2202 | Sales |

**Dept Table:**

| **DeptName** | **Mgr** |
|:---|:---|
| Sales | Harriet |

---

**Operation:**

```
Employee ⟕ DeptName=DeptName Dept
```

**Result:**

| **Name** | **EmpID** | **Dept** | **DeptName** | **Mgr** |
|:---|:---:|:---|:---|:---|
| Harry | 3415 | Finance | Null | Null |
| Sally | 2241 | Sales | Sales | Harriet |
| George | 3401 | Finance | Null | Null |
| Harriet | 2202 | Sales | Sales | Harriet |

**Note:**
- **All rows from Employee** (left table) are included
- Rows with **no match in Dept** have **NULL** values for DeptName and Mgr

---

## RIGHT OUTER JOIN (⟖)

**Symbol:** ⟖

**Purpose:**

Outer join between relation R and S (R ⟖ S):

1. Provides **all combinations of tuples** in R and S that are **equal** on their join attribute
2. Also **returns tuples in S** that have **no matching tuples in R**

---

### Example

**Employee Table:**

| **Name** | **EmpID** | **Dept** |
|:---|:---:|:---|
| Harry | 3415 | Finance |
| Sally | 2241 | Sales |
| George | 3401 | Finance |
| Harriet | 2202 | Sales |

**Dept Table:**

| **DeptName** | **Mgr** |
|:---|:---|
| Sales | Harriet |
| Production | Charles |

---

**Operation:**

```
Employee ⟖ DeptName=DeptName Dept
```

**Result:**

| **Name** | **EmpID** | **Dept** | **DeptName** | **Mgr** |
|:---|:---:|:---|:---|:---|
| Sally | 2241 | Sales | Sales | Harriet |
| Harriet | 2202 | Sales | Sales | Harriet |
| Null | Null | Null | Production | Charles |

**Note:**
- **All rows from Dept** (right table) are included
- **Production** department has **no matching employees**, so Name, EmpID, Dept are **NULL**

---

## FULL OUTER JOIN (⟗)

**Symbol:** ⟗

**Purpose:**

**Full outer join** in effect **combines the results** of the **left** and **right** outer joins.

---

### Example

**Employee Table:**

| **Name** | **EmpID** | **DeptName** |
|:---|:---:|:---|
| Harry | 3415 | Finance |
| Sally | 2241 | Sales |
| George | 3401 | Finance |
| Harriet | 2202 | Sales |

**Dept Table:**

| **DeptName** | **Mgr** |
|:---|:---|
| Sales | Harriet |
| Production | Charles |

---

**Operation:**

```
Employee ⟗ DeptName=DeptName Dept
```

**Result:**

| **Name** | **EmpID** | **Dept** | **DeptName** | **Mgr** |
|:---|:---:|:---|:---|:---|
| Harry | 3415 | Finance | Null | Null |
| Sally | 2241 | Sales | Sales | Harriet |
| George | 3401 | Finance | Null | Null |
| Harriet | 2202 | Sales | Sales | Harriet |
| Null | Null | Null | Production | Charles |

**Note:**
- **All rows from both tables** are included
- **Unmatched rows** have **NULL** values in corresponding columns

---

## Aggregate Functions

### Definition

**Aggregate functions** are used in **simple statistical queries** that **summarize information** from tuples in a relation.

---

### Common Functions

**Common functions applied include:**

- **SUM**
- **AVERAGE**
- **MAXIMUM**
- **MINIMUM**
- **COUNT**

---

### Syntax

```
ℱ <function_list> (R)
```

**Symbol:** ℱ (Script F)

---

### Example

**EMP Table:**

| **ID** | **Name** | **Salary** |
|:---|:---|:---:|
| 123456789 | John Smith | 30000 |
| 333445555 | Franklin Wong | 40000 |
| 999887777 | Alicia Zelaya | 25000 |

---

**Operation:**

```
ℱ Count ID, Average Salary (EMP)
```

**Result:**

| **Count** | **Average** |
|:---:|:---:|
| 3 | 31666.67 |

**Calculation:**
- Count: **3 employees**
- Average: (30000 + 40000 + 25000) / 3 = **31666.67**

*Note: The slide shows 47500 which seems incorrect. Correct average = 31666.67*

---

## Grouping

### Definition

A **commonly used** feature of aggregate functions is **grouping tuples** in a relation by the **value of some of their attributes** and then applying **aggregate functions independently** for each group.

---

### Syntax

```
<grouping_attribute> ℱ <function_list> (R)
```

---

### Example

**EMP Table:**

| **ID** | **Name** | **Salary** | **Dno** |
|:---|:---|:---:|:---:|
| 123456789 | John Smith | 30000 | 5 |
| 333445555 | Franklin Wong | 40000 | 5 |
| 999887777 | Alicia Zelaya | 25000 | 4 |
| 987654321 | Jennifer Wallace | 43000 | 1 |
| 666884444 | Ramesh Narayan | 38000 | 2 |
| 453453453 | Joyce English | 25000 | 4 |

---

**Operation:**

```
Dno ℱ Count ID, Average Salary (EMP)
```

**Result:**

| **Dno** | **Count** | **Average Salary** |
|:---:|:---:|:---:|
| 1 | 1 | 43000 |
| 2 | 1 | 38000 |
| 4 | 2 | 25000 |
| 5 | 2 | 35000 |

---

**Explanation:**

**Department 1:**
- Count: 1
- Average: 43000

**Department 2:**
- Count: 1
- Average: 38000

**Department 4:**
- Count: 2
- Average: (25000 + 25000) / 2 = 25000

**Department 5:**
- Count: 2
- Average: (30000 + 40000) / 2 = 35000

---

## Summary

### Relational Algebra Operators

**1. Unary Operators**

| **Operator** | **Symbol** | **Purpose** |
|:---|:---:|:---|
| **Project** | π | Select specific columns |
| **Select** | σ | Select rows based on condition |
| **Rename** | ρ | Rename relations and attributes |

---

**2. Set Operators**

| **Operator** | **Symbol** | **Purpose** |
|:---|:---:|:---|
| **Union** | ∪ | All tuples in R or S |
| **Intersection** | ∩ | Tuples common to R and S |
| **Set Difference** | − | Tuples in R but not in S |

**Requirement:** Relations must be **union-compatible**

---

**3. Binary Operators**

| **Operator** | **Symbol** | **Purpose** |
|:---|:---:|:---|
| **Cartesian Product** | × | All combinations of tuples |
| **Equi Join** | ⋈ | Join with = condition (keeps duplicate columns) |
| **Natural Join** | * or ⋈ | Join with = condition (removes duplicate columns) |

---

**4. Outer Joins**

| **Operator** | **Symbol** | **Purpose** |
|:---|:---:|:---|
| **Left Outer Join** | ⟕ | All from left + matches from right |
| **Right Outer Join** | ⟖ | All from right + matches from left |
| **Full Outer Join** | ⟗ | All from both tables |

---

**5. Aggregate Functions**

| **Function** | **Purpose** |
|:---|:---|
| **COUNT** | Count number of tuples |
| **SUM** | Sum of values |
| **AVG** | Average of values |
| **MAX** | Maximum value |
| **MIN** | Minimum value |

**Symbol:** ℱ

**With Grouping:** `<attribute> ℱ <functions> (R)`

---

### Operator Precedence

**Order of evaluation (highest to lowest):**

1. **σ, π, ρ** (Unary operators)
2. **×, ⋈** (Cartesian product and Join)
3. **∩** (Intersection)
4. **∪, −** (Union and Set difference)

---

### Equivalent SQL

| **Relational Algebra** | **SQL Equivalent** |
|:---|:---|
| `π A, B (R)` | `SELECT DISTINCT A, B FROM R` |
| `σ condition (R)` | `SELECT * FROM R WHERE condition` |
| `R ∪ S` | `SELECT * FROM R UNION SELECT * FROM S` |
| `R ∩ S` | `SELECT * FROM R INTERSECT SELECT * FROM S` |
| `R − S` | `SELECT * FROM R EXCEPT SELECT * FROM S` |
| `R × S` | `SELECT * FROM R CROSS JOIN S` |
| `R ⋈ condition S` | `SELECT * FROM R JOIN S ON condition` |
| `R * S` | `SELECT * FROM R NATURAL JOIN S` |
| `ℱ COUNT(*) (R)` | `SELECT COUNT(*) FROM R` |
| `A ℱ SUM(B) (R)` | `SELECT A, SUM(B) FROM R GROUP BY A` |

---

### Key Concepts

✅ **Relational Algebra** - Formal query language for relational databases

✅ **Closed System** - Operations produce new relations

✅ **Composable** - Operations can be nested

✅ **Foundation of SQL** - SQL based on relational algebra

✅ **Query Optimization** - DBMS uses relational algebra for optimization

✅ **Set-based** - Operates on sets of tuples

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the course web

✅ Complete the **tutorial**

---

**End of Lecture 08**
