# Lecture 06 - Schema Refinement

**Course:** IT2140 - Database Design and Development  
**Lecture:** 06  
**Topic:** Schema Refinement  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:30:49

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Why Schema Refinement](#why-schema-refinement)
- [Properties of Good Decomposition](#properties-of-good-decomposition)
- [Functional Dependencies](#functional-dependencies)
- [Computing Keys](#computing-keys-using-armstrong-axioms)
- [Normal Forms](#normal-forms)
- [Summary](#summary)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- Why schema refinement?
- Properties of good decomposition
- Functional dependencies
- Computing keys of relations
- Normalization and normal forms

---

## Learning Outcomes

By the end of this lecture, students should be able to:

- **Explain** the pitfalls of incorrect grouping of attributes in relations
- **Explain** the properties of a good decomposition
- **Compute** keys from a given set of FDs in a relation
- **Normalize** a given schema to BCNF

---

## Why Schema Refinement?

### Problem with Poor Conceptual Design

The relations resulted through the **logical database design** may not be very good if your **conceptual database design is not good**.

---

### Example of Poor Schema Design

**ER Diagram to Relational Mapping:**

```
         Employee (Entity)
              │
    ┌─────────┼─────────┐
    │         │         │
   eid     ename     salary
 (PK)    designation   did
                     dname
                   dlocation
              │
              ▼
┌──────────────────────────────────────────────────────┐
│                     Employee                         │
├──────┬───────┬────────────┬────────┬─────┬─────────┬─────────┤
│ eid  │ename │designation │ salary │ did │  dname  │location │
└──────┴───────┴────────────┴────────┴─────┴─────────┴─────────┘
```

**Question:** What is wrong with this schema?

---

## Why Schema Refinement? (Continued)

### Data Redundancy Issues

Schemas such as the previous slide lead to several **anomalies** while:
- **Inserting** data
- **Updating** data
- **Deleting** data
- **Wasting of space** due to redundancies of data

---

### Example Table with Redundancy

| **eid** | **Ename** | **Designation** | **Salary** | **did** | **dname** | **location** |
|:---:|:---|:---|:---:|:---:|:---|:---|
| 1000 | Ajith | Lecturer | 60000 | 1 | Academic | malabe |
| 1001 | Sunil | Executive | 45000 | 3 | Maintenance | Kandy |
| 1002 | Kamal | Lecturer | 75000 | 1 | Academic | malabe |
| 1003 | Piyumi | Manager | 50000 | 2 | Admin | metro |
| 1004 | Roshan | Lecturer | 35000 | 1 | Academic | malabe |
| 1005 | Nuwan | Lecturer | 80000 | 1 | Academic | malabe |
| 1006 | Jayamini | Assistant | 25000 | 2 | Admin | metro |
| 1007 | Nishani | Lecturer | 42000 | 1 | Academic | malabe |
| 1008 | Amal | Assistant | 28000 | 4 | ITSD | Matara |

**Question:** Can you spot where data are duplicated and issues may cause during insert/update & delete?

---

### Identified Redundancies

**Duplicated Data:**
- Department information (**did, dname, location**) is **repeated** for every employee in that department
- Examples:
  - Academic, malabe appears **5 times** (employees 1000, 1002, 1004, 1005, 1007)
  - Admin, metro appears **2 times** (employees 1003, 1006)

---

## Data Anomalies

### 1. Insertion Anomaly

**Problem 1: Inserting a new employee**
- Department information is **repeated**
- Must ensure that **correct department information** is inserted
- Risk of **inconsistent data** (e.g., typing "Malabe" vs "malabe")

**Problem 2: Inserting a department with no employees**
- **Impossible** since `eid` cannot be null
- Cannot store department information without an employee

---

### 2. Deletion Anomaly

**Problem:**
- Deleting the **last employee** from a department will lead to **losing information about the department**

**Example:**
- If employee 1008 (Amal) is deleted
- Information about ITSD department in Matara is **completely lost**

---

### 3. Update Anomaly

**Problem:**
- Updating the department's location needs to be done for **all employees** working for that department

**Example:**
- If Academic department moves from "malabe" to "metro"
- Must update **5 rows** (employees 1000, 1002, 1004, 1005, 1007)
- Risk of **inconsistency** if some rows are missed

---

## Solution: Decomposition

### Proper Decomposition

To solve the issues discussed previously, we should **decompose the relations** to **smaller relations**.

---

### Decomposed Tables

**Employee Table:**

| **eid** | **Ename** | **Designation** | **Salary** | **did** |
|:---:|:---|:---|:---:|:---:|
| 1000 | Ajith | Lecturer | 60000 | 1 |
| 1001 | Sunil | Executive | 45000 | 3 |
| 1002 | Kamal | Lecturer | 75000 | 1 |
| 1003 | Piyumi | Manager | 50000 | 2 |
| 1004 | Roshan | Lecturer | 35000 | 1 |
| 1005 | Nuwan | Lecturer | 80000 | 1 |
| 1006 | Jayamini | Assistant | 25000 | 2 |
| 1007 | Nishani | Lecturer | 42000 | 1 |
| 1008 | Amal | Assistant | 28000 | 4 |

**Department Table:**

| **did** | **dname** | **location** |
|:---:|:---|:---|
| 1 | Academic | malabe |
| 2 | Admin | metro |
| 3 | Maintenance | Kandy |
| 4 | ITSD | Matara |

---

### Benefits of Decomposition

✅ **No redundancy** - Department info stored once

✅ **No insertion anomaly** - Can insert department without employees

✅ **No deletion anomaly** - Deleting last employee doesn't lose department info

✅ **No update anomaly** - Update department location in one place

---

## Properties of Good Decomposition

### Warning

**Random decompositions** however, may introduce **new problems**.

---

### Two Properties to Ensure

Two properties that could be looked up to ensure that the relations resulted from decomposition are good:

1. **Loss-less join property**
2. **Dependency preserving property**

---

## 1. Loss-less Join Property

### Definition

The property enables **recovery of original relation** from a set of **smaller relations** resulted through decomposition.

**Test:**
- Suppose **S** is decomposed into **R₁** and **R₂**
- When we **join R₁ and R₂**, do we get **S**?
- If so, we say the decomposition is **loss-less**

---

### Example

**Original Relation S:**

| **S** | **P** | **D** |
|:---:|:---:|:---:|
| S1 | P1 | D1 |
| S2 | P2 | D2 |
| S3 | P1 | D3 |

---

**Decomposition:**

**R₁:**

| **S** | **P** |
|:---:|:---:|
| S1 | P1 |
| S2 | P2 |
| S3 | P1 |

**R₂:**

| **P** | **D** |
|:---:|:---:|
| P1 | D1 |
| P2 | D2 |
| P1 | D3 |

---

**Join R₁ ⋈ R₂:**

```sql
SELECT R1.S, R1.P, R2.D
FROM R1 JOIN R2 ON R1.P = R2.P;
```

**Result:**

| **S** | **P** | **D** |
|:---:|:---:|:---:|
| S1 | P1 | D1 |
| S1 | P1 | D3 |
| S2 | P2 | D2 |
| S3 | P1 | D1 |
| S3 | P1 | D3 |

**Problem:** Result has **5 rows** but original S had only **3 rows** ❌

**Conclusion:** This decomposition is **NOT loss-less**

---

## 2. Dependency Preserving Property

### Definition

Enables to **enforce any constraint** on the original relation simply by **enforcing some constraints** on each of the **smaller relation**.

**Goal:**
- All functional dependencies should be **preserved** after decomposition
- Can check constraints on individual relations without joining

---

## Schema Refinement Process

### Definition

**Schema refinement** can be considered a **systematic process** for analyzing a relational schema with the aim of:
- **Minimizing redundancies**
- **Minimizing insertion, deletion and update anomalies**

---

### Process

The process performs a series of tests called **normal form tests** to:
- Check whether the schemas meet certain **conditions**
- Decompose relations that are **unsatisfactory** into **smaller relations**

**Normalization** is based on **functional dependencies**

---

## Functional Dependency in General Terms

### Definition

**Functional dependency** is a relationship that exists when **one attribute uniquely determines another attribute**.

---

### Example

**Student Table:**
- Attributes: `id`, `name`, `age`

**Functional Dependency:**
- `id` attribute **uniquely identifies** the `name` attribute
- If we know the **student id**, we can tell the **student name** associated with it

**Notation:**
```
id → name
```

**In words:**
"name is functionally dependent on id"

---

### Key Point

**Redundancies** in relations are based on **functional dependencies**

---

## Functional Dependencies

### Mathematical Definition

A **functional dependency**, denoted by **X → Y**, where X and Y are **sets of attributes** in relation R, specifies the following constraint:

**Let t₁ and t₂ be tuples of relation R** for any given instance:

```
Whenever t₁[X] = t₂[X] then t₁[Y] = t₂[Y]
```

Where `tᵢ[X]` represents the values for X in tuple `tᵢ`

---

### Interpretation

**If two tuples have the same value for X, they must have the same value for Y**

---

### Example

**Relation:** Employee(eid, ename, salary)

**FD:** `eid → ename`

**Meaning:**
- If two tuples have the **same eid**, they must have the **same ename**
- In practice, this is always true because eid is unique (key)

---

## Activity: Functional Dependencies

### Your Turn

**Consider a person entity.**

With respect to attributes you know a person holds, write **three functional dependencies** that can exist in a person table.

**Exchange** what you have written with your peers.

**Question:** What have they written?

---

### Possible Answers

**Person Table:** `(NIC, name, address, dob, phone)`

**Possible FDs:**

1. `NIC → name, address, dob, phone`
2. `phone → NIC` (if phone is unique)
3. `NIC → age` (age is derived from dob)

---

## Keys and FDs

### Relationship Between Keys and FDs

A **key constraint** is a **special case of a FD** where:
- The attributes in the **key** play the role of **X**
- The set of **all attributes** play the role of **Y**

---

### Normalization and Keys

**Normalization process** analyzes schemas based on:
- **Keys**
- **Functional dependencies** among their attributes

**Thus, to start normalization** it is essential to **find keys** of a given relation.

---

### Attribute Closure

**Definition:**

**Attribute closure** of an attribute set X, denoted by **X⁺**, can be defined as **set of all attributes** which can be **functionally determined from it**.

**Key Test:**

```
If X⁺ = all attributes, then X is a key
```

---

## Computing Keys Using Armstrong Axioms

### Armstrong Axioms

**Attribute closure** could be computed using **Armstrong Axioms**.

**X, Y, Z** are sets of attributes:

---

### Three Basic Rules

**1. Reflexivity:**
```
If X ⊆ Y, then Y → X
```

**2. Augmentation:**
```
If X → Y, then XZ → YZ for any Z
```

**3. Transitivity:**
```
If X → Y and Y → Z, then X → Z
```

---

### Additional Rules

Couple of **additional rules** (that follow from Armstrong Axioms):

**4. Union:**
```
If X → Y and X → Z, then X → YZ
```

**5. Decomposition:**
```
If X → YZ, then X → Y and X → Z
```

---

## Computing Keys - Example

### Example Relation

**Consider a relation R(A, B, C, D)**, with the following set of functional dependencies over R:

```
F = {A → B, B → C, B → D}
```

---

### Computing A⁺ (Closure of A)

**Step-by-step:**

1. `A → A` (reflexivity rule)
2. `A → B` (given)
3. `A → B` and `B → C`, then `A → C` (transitivity)
4. `A → B` and `B → D`, then `A → D` (transitivity)
5. `A → ABCD` (union rule)

**Result:**
```
A⁺ = {A, B, C, D}
```

---

### Computing Other Closures

**B⁺:**
- `B → B` (reflexivity)
- `B → C` (given)
- `B → D` (given)
- `B⁺ = {B, C, D}`

**C⁺:**
- `C → C` (reflexivity)
- No other dependencies
- `C⁺ = {C}`

**D⁺:**
- `D → D` (reflexivity)
- No other dependencies
- `D⁺ = {D}`

---

### Conclusion

**Since A⁺ = {A, B, C, D} = all attributes**

**Therefore, A is the key** ✓

---

## Activity: Computing Keys

### Your Turn

**Consider a relation R(A, B, C, D, E)**, with the following set of functional dependencies over R:

```
{A → B, A → C, CD → E, B → D, E → A}
```

**Task:** Compute the keys for relation R.

---

### Solution

**Computing A⁺:**
1. `A → A` (reflexivity)
2. `A → B` (given)
3. `A → C` (given)
4. `A → B` and `B → D`, then `A → D` (transitivity)
5. `A → C` and `A → D`, we have `A → CD`
6. `A → CD` and `CD → E`, then `A → E` (transitivity)
7. `A⁺ = {A, B, C, D, E}` ✓ **A is a key**

**Computing E⁺:**
1. `E → A` (given)
2. `E → A` and `A → B`, then `E → B` (transitivity)
3. `E → A` and `A → C`, then `E → C` (transitivity)
4. `E → B` and `B → D`, then `E → D` (transitivity)
5. `E⁺ = {A, B, C, D, E}` ✓ **E is a key**

**Keys:** **A** and **E** are both candidate keys

---

## Revisit to Some Definitions

### Key Terminology

**1. Superkey:**
- Set of attributes **S** in relation **R** such that no two distinct tuples t₁ and t₂ will have `t₁[S] = t₂[S]`

**2. Key:**
- A key is a **superkey** with the additional property that **removal of any attributes** from the key will **not satisfy the key condition**

**3. Candidate Key:**
- Each **key** of a relation is called a **candidate key**

**4. Primary Key:**
- A **candidate key** is chosen to be the **primary key**

**5. Prime Attribute:**
- An attribute which is a **member of a candidate key**

**6. Nonprime Attribute:**
- An attribute which is **not prime**

---

## Normal Forms

### Definition

**Normal forms** refers to a series of **tests** performed on relational schemas to **improve their goodness**.

---

### Four Normal Forms

We discuss **four normal forms** namely:

1. **1st Normal Form (1NF)**
2. **2nd Normal Form (2NF)**
3. **3rd Normal Form (3NF)**
4. **Boyce Codd Normal Form (BCNF)**

---

### Test Process

**Test for each normal form** is performed in a **top-down fashion**.

```
1NF
 │
 ▼
2NF
 │
 ▼
3NF
 │
 ▼
BCNF
```

**The Normal form of a relation** refers to the **highest normal form condition** it meets.

---

## 1st Normal Form (1NF)

### Definition

A relation **R** is in **first normal form (1NF)** if **domains of all attributes** in the relation are **atomic** (simple & indivisible).

---

### Key Point

**1NF** is now considered to be **part of the formal definition** of a relation in the relational model since it:
- Allows only **atomic values**
- **Disallows multi-valued attributes**
- **Disallows composite attributes**

---

### Examples

**❌ NOT in 1NF:**

| **StudentID** | **Name** | **Phones** |
|:---:|:---|:---|
| 1001 | John | 0771234567, 0112345678 |

*Phones is multi-valued*

**✅ In 1NF:**

| **StudentID** | **Name** | **Phone** |
|:---:|:---|:---|
| 1001 | John | 0771234567 |
| 1001 | John | 0112345678 |

---

## 2nd Normal Form (2NF)

### Definition

A relation **R** is in **second normal form (2NF)** if **every nonprime attribute A** in R is **not partially dependent** on any key of R.

---

### Full Functional Dependency

**Second normal form (2NF)** is based on the concept of **full functional dependency**.

A functional dependency **X → Y** is a **full functional dependency** if **removal of any attribute A from X** means that the **dependency does not hold** any more.

---

### Partial Dependency

**Example:**

In a relation **R(A, B, C, D, E)** where **AB → {A, B, C, D, E}**

If `A → C`, then `A → C` is a **partial dependency** (not fully functional dependent)

**Why?**
- **AB** is the key
- But **A alone** can determine **C**
- **C** is partially dependent on the key **AB**

---

### Normalization to 2NF

**To normalize the relation to 2NF**, decomposition is performed as follows:

```
┌──────────────────────────────────┐
│              R                   │
├───┬───┬───┬───┬───┬───┐
│ A │ B │ C │ D │ E │ F │
└─┬─┴───┴─┬─┴─┬─┴───┴───┘
  │       │   │
  │ FD1   │   │ FD2
  │(Partial)  │(Partial)
  │       │   │
  ▼       │   ▼
 (C)      │  (D)
          │
          ▼
    Decompose
          │
    ┌─────┴─────┐
    │           │
    ▼           ▼
┌─────────────┐ ┌─────────┐
│  R1         │ │   R2    │
├───┬───┬───┬─┤ ├───┬─────┤
│ A │ B │ E │F│ │ B │  D  │
└───┴───┴───┴─┘ └───┴─────┘
│           │ │           │
└───────────┘ └───────────┘

    ┌─────────┐
    │   R3    │
    ├───┬─────┤
    │ A │  C  │
    └───┴─────┘
```

---

## Activity: 2NF Normalization

### Your Turn

**Given relation:**

```
EMP_PROJ(NIC, PNUM, HOURS, ENAME, PNAME, LOC)
```

**Functional Dependencies:**
- **FD1:** `NIC → ENAME`
- **FD2:** `PNUM → PNAME, LOC`
- **FD3:** `NIC, PNUM → HOURS`

**Primary Key:** `(NIC, PNUM)`

---

### Questions

1. **What normal form is the relation in?**
2. **If the relation is not in 2NF, normalize the relation to 2NF.**

---

### Solution

**Analysis:**

**Key:** `(NIC, PNUM)`

**Prime attributes:** `NIC, PNUM`

**Nonprime attributes:** `HOURS, ENAME, PNAME, LOC`

**Check for partial dependencies:**
- `NIC → ENAME` - **Partial dependency** ❌ (ENAME depends on part of key)
- `PNUM → PNAME, LOC` - **Partial dependency** ❌ (PNAME, LOC depend on part of key)
- `(NIC, PNUM) → HOURS` - **Full dependency** ✓

**Conclusion:** Relation is in **1NF** but **NOT in 2NF**

---

**Decomposition to 2NF:**

```sql
-- Remove partial dependencies

EMPLOYEE(NIC, ENAME)
  PRIMARY KEY (NIC)

PROJECT(PNUM, PNAME, LOC)
  PRIMARY KEY (PNUM)

WORKS_ON(NIC, PNUM, HOURS)
  PRIMARY KEY (NIC, PNUM)
  FOREIGN KEY (NIC) REFERENCES EMPLOYEE(NIC)
  FOREIGN KEY (PNUM) REFERENCES PROJECT(PNUM)
```

---

## 3rd Normal Form (3NF)

### Definition

A relation **R** is in **3rd normal form (3NF)** if:
- **R is in 2NF**, and
- **No nonprime attribute** is **transitively dependent** on any key

---

### Transitive Dependency

**Third normal form** is based on the concept of **transitive dependency**.

A functional dependency **X → Y** in a relational schema R is a **transitive dependency** if there is a set of **non-prime attributes Z** where both **X → Z** and **Z → Y** hold.

---

### Example

```
A → C → D
```

Where:
- **A** is the key
- **C** is a nonprime attribute
- **D** is a nonprime attribute
- **A → C** and **C → D**
- Therefore, **D** is **transitively dependent** on **A**

---

### Normalization to 3NF

**Decomposition:**

```
┌──────────────────────────────────┐
│              R                   │
├───┬───┬───┬───┬───┐
│ A │ B │ C │ D │ E │
└─┬─┴───┴─┬─┴─┬─┴───┘
  │       │   │
  │   Non-prime attributes
  │       │   │
  │       ▼   │
  │      (C)  │
  │       │   │
  │       │ Transitive
  │       │ dependency
  │       ▼   │
  │      (D)  │
  │           │
  ▼           ▼
 Decompose
          │
    ┌─────┴─────┐
    │           │
    ▼           ▼
┌─────────────┐ ┌─────────┐
│  R1         │ │   R2    │
├───┬───┬───┬─┤ ├───┬─────┤
│ A │ B │ C │E│ │ C │  D  │
└───┴───┴───┴─┘ └───┴─────┘
 Key: A         Key: C
```

---

## Activity: 3NF Normalization

### Your Turn

**Given relation:**

```
EMP_DEPT(ENAME, SSN, BDATE, ADD, DNUM, DNAME, DMGR)
```

**Visual Representation:**

```
┌────────────────────────────────────────────────────┐
│                  EMP_DEPT                          │
├───────┬─────┬───────┬──────┬──────┬───────┬───────┤
│ ENAME │ SSN │ BDATE │ ADD  │ DNUM │ DNAME │ DMGR  │
└───────┴──┬──┴───────┴──────┴──────┴───────┴───────┘
           │                    │
           │ FD1                │ FD2
           │                    │
           ▼                    ▼
      (ENAME, BDATE, ADD)  (DNAME, DMGR)
```

**Functional Dependencies:**
- **FD1:** `SSN → ENAME, BDATE, ADD, DNUM`
- **FD2:** `DNUM → DNAME, DMGR`

**Primary Key:** `SSN`

---

### Questions

1. **What normal form is the relation in?**
2. **If the relation is not in 3NF, normalize the relation to 3NF.**

---

### Solution

**Analysis:**

**Key:** `SSN`

**Prime attributes:** `SSN`

**Nonprime attributes:** `ENAME, BDATE, ADD, DNUM, DNAME, DMGR`

**Check for transitive dependencies:**
- `SSN → DNUM` (direct dependency)
- `DNUM → DNAME, DMGR` (dependency)
- Therefore, `SSN → DNUM → DNAME, DMGR` is a **transitive dependency** ❌

**Conclusion:** Relation is in **2NF** but **NOT in 3NF**

---

**Decomposition to 3NF:**

```sql
-- Remove transitive dependencies

EMPLOYEE(SSN, ENAME, BDATE, ADD, DNUM)
  PRIMARY KEY (SSN)
  FOREIGN KEY (DNUM) REFERENCES DEPARTMENT(DNUM)

DEPARTMENT(DNUM, DNAME, DMGR)
  PRIMARY KEY (DNUM)
```

---

## Boyce-Codd Normal Form (BCNF)

### Definition

A relation schema is in **Boyce-Codd Normal Form** if:

**Every nontrivial functional dependency X → A that holds in R, then X is a superkey of R**

---

### Simpler Interpretation

**For every functional dependency X → Y:**
- **X must be a superkey** (or the FD is trivial like A → A)

---

### Decomposition into BCNF

**Process:**

Consider relation **R** with FDs **F**.

**If X → Y violates BCNF**, decompose R:

```
┌──────────────────────┐
│          R           │
├───┬───┬───┬───┐
│ A │ B │ C │ D │
└─┬─┴───┴─┬─┴───┘
  │       │
  │  If D → B violates BCNF
  │  (D is not a superkey)
  │       │
  ▼       ▼
 Decompose
          │
    ┌─────┴─────┐
    │           │
    ▼           ▼
┌─────────────┐ ┌─────────┐
│  R1         │ │   R2    │
├───┬───┬─────┤ ├───┬─────┤
│ A │ C │  D  │ │ D │  B  │
└───┴───┴─────┘ └───┴─────┘
 Key: A         Key: D
```

---

## Activity: BCNF Normalization

### Your Turn

**Consider the following relational schema for R:**

```
R(A, B, C, D, E, F, G)
```

**Functional Dependencies:**

```
┌──────────────────────────────────────┐
│               R                      │
├───┬───┬───┬───┬───┬───┬───┐
│ A │ B │ C │ D │ E │ F │ G │
└───┴───┴───┴───┴───┴───┴───┘
  │   │       │       │   │
  │   │ FD4   │ FD2   │   │ FD3
  │   │       │       │   │
  │   └──────►C◄──────┘   │
  │ FD1       │            │
  └──────────►D            │
              │            │
              ▼            ▼
             (E,F)        (A)
```

**FD1:** `A → D`  
**FD2:** `AB → C`  
**FD3:** `G → A`  
**FD4:** `B → E, F`

**Primary Key:** `AB`

---

### Questions

1. **What normal form is the relation in?**
2. **If R is not in BCNF, convert it to BCNF.**

---

### Solution

**Analysis:**

**Key:** `AB`

**Check each FD:**

1. **A → D:** A is **not a superkey** ❌ Violates BCNF
2. **AB → C:** AB is **a superkey** ✓
3. **G → A:** G is **not a superkey** ❌ Violates BCNF
4. **B → E, F:** B is **not a superkey** ❌ Violates BCNF

**Conclusion:** Relation is **NOT in BCNF**

---

**Decomposition to BCNF:**

**Step 1:** Decompose based on `A → D`

```sql
R1(A, D)
  PRIMARY KEY (A)

R2(A, B, C, E, F, G)
  PRIMARY KEY (A, B)
```

**Step 2:** Decompose R2 based on `B → E, F`

```sql
R3(B, E, F)
  PRIMARY KEY (B)

R4(A, B, C, G)
  PRIMARY KEY (A, B)
```

**Step 3:** Decompose R4 based on `G → A`

```sql
R5(G, A)
  PRIMARY KEY (G)

R6(G, B, C)
  PRIMARY KEY (G, B)
```

---

**Final BCNF Relations:**

```sql
R1(A, D)       -- FD: A → D
R3(B, E, F)    -- FD: B → E, F
R5(G, A)       -- FD: G → A
R6(G, B, C)    -- FD: GB → C
```

---

## Activity: Complex BCNF Example

### Your Turn

**Given relation:**

```
PROPERTY(PROPERTY_ID, COUNTY_NAME, LOT#, AREA, PRICE, TAX_RATE)
```

**Visual Representation:**

```
┌───────────────────────────────────────────────────────────────┐
│                        PROPERTY                               │
├────────────┬──────────────┬───────┬───────┬────────┬──────────┤
│PROPERTY_ID │ COUNTY_NAME  │ LOT#  │ AREA  │ PRICE  │TAX_RATE  │
└─────┬──────┴──────┬───────┴───┬───┴───┬───┴────┬───┴─────┬────┘
      │             │           │       │        │         │
      │ FD1         │ FD2       │ FD3   │ FD4    │ FD5     │
      │             │           │       │        │         │
      ▼             ▼           ▼       ▼        ▼         ▼
   (All attrs) (PROPERTY_ID,  (TAX_  (PRICE) (AREA)
                 AREA,          RATE)
                PRICE,
               TAX_RATE)
```

**Functional Dependencies:**
- **FD1:** `PROPERTY_ID → COUNTY_NAME, LOT#, AREA, PRICE, TAX_RATE`
- **FD2:** `COUNTY_NAME, LOT# → PROPERTY_ID, AREA, PRICE, TAX_RATE`
- **FD3:** `COUNTY_NAME → TAX_RATE`
- **FD4:** `AREA → PRICE`
- **FD5:** `COUNTY_NAME → AREA` (seems incorrect in diagram, should be checked)

**Task:** Analyze and normalize to BCNF if needed.

---

## Summary

### Key Concepts

**1. Schema Refinement**
- Systematic process to eliminate redundancies and anomalies
- Based on functional dependencies

**2. Anomalies**
- **Insertion Anomaly** - Cannot insert data without other data
- **Deletion Anomaly** - Deleting data loses other information
- **Update Anomaly** - Must update multiple rows for consistency

**3. Decomposition Properties**
- **Loss-less join** - Can recover original relation
- **Dependency preserving** - Can enforce constraints on smaller relations

**4. Functional Dependencies**
- **X → Y** means X determines Y
- Used to identify redundancies

**5. Armstrong Axioms**
- **Reflexivity, Augmentation, Transitivity**
- Used to compute attribute closures
- Used to find keys

---

### Normal Forms Summary

| **Normal Form** | **Requirement** | **Key Issue Addressed** |
|:---|:---|:---|
| **1NF** | Atomic values | Multi-valued and composite attributes |
| **2NF** | 1NF + No partial dependencies | Partial dependencies on key |
| **3NF** | 2NF + No transitive dependencies | Transitive dependencies |
| **BCNF** | Every determinant is a superkey | All anomalies based on FDs |

---

### Normalization Process

```
Original Relation
       │
       │ Check 1NF
       ▼
    In 1NF?
    │    │
   Yes   No ──► Make atomic
    │
    │ Check 2NF
    ▼
    In 2NF?
    │    │
   Yes   No ──► Remove partial dependencies
    │
    │ Check 3NF
    ▼
    In 3NF?
    │    │
   Yes   No ──► Remove transitive dependencies
    │
    │ Check BCNF
    ▼
   In BCNF?
    │    │
   Yes   No ──► Make all determinants superkeys
    │
    ▼
  Done
```

---

### Key Formulas

**Attribute Closure:**
```
X⁺ = {all attributes that can be determined from X}
```

**Key Test:**
```
If X⁺ = all attributes in R, then X is a key
```

**BCNF Test:**
```
For every FD X → Y (non-trivial):
  X must be a superkey
```

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the courseweb

✅ Complete the **tutorial**

---

**End of Lecture 06**
