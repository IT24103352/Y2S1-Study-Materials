# Lecture 05 - ER and EER to Relational Model Mapping

**Course:** IT2140 - Database Design and Development  
**Lecture:** 05  
**Topic:** ER and EER to Relational Model Mapping  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:25:30

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Logical Database Design](#logical-database-design)
- [The Relational Model](#the-relational-model)
- [Mapping Entities and Attributes](#mapping-entities-and-attributes)
- [Mapping Binary Relationships](#mapping-binary-relationships)
- [Mapping N-ary Relationships](#mapping-n-ary-relationships)
- [Mapping ISA Relationships](#mapping-isa-relationships)
- [Summary](#summary)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- ER/EER to relational mapping

---

## Learning Outcomes

By the end of this lecture, students should be able to:

- **Convert a complex ER/EER model** to the relational model

---

## Logical Database Design

### Process Overview

**Step 1: Conceptual Database Design**
- Create ER/EER diagram

**Step 2: Logical Database Design**
- Once we finished the step of **conceptual database design**, we next **select a DBMS** to implement our database design
- We then **convert the conceptual database design** into a **database schema** in the data model of the chosen DBMS

---

### Historical Context

**Before 1970:**
- Most database systems were based on two older data models:
  - **Hierarchical model**
  - **Network model**

**1970:**
- **Relational model** introduced by **Codd** in 1970

**Today:**
- Leading DBMS products nowadays are based on the **relational model**

---

## The Relational Model

### Advantages

The major advantage of relational model is its **simplicity in data representation**.

---

### Key Concepts

**1. Relational Database:**
- A **collection of relations** with **distinct relation names**

**2. Relation:**
- The main construct representing data in the relational model
- A relation consists of:
  - **Relational schema**
  - **Relational instance**

---

## The Relational Model (Continued)

### Relational Schema

**Definition:**
- The relational schema **describes the columns** for a relation

**Example:**

```
Students(sid: string, name: string, login: string, age: integer, gpa: real)
```

**Schema specifies:**
- Relation's **name**
- **Name** of each field
- **Domain** of each field

---

### Relational Instance

**Definition:**
- An **instance of a relation** is a **set of tuples** (also called **records**)
- Each tuple has the **same number of fields** as the relation schema

**Visualization:**
- A relation instance can be thought of as a **table**
- Each tuple is a **row**
- All rows have the **same number of fields**

---

### Example Instance

| **sid** | **name** | **login** | **age** | **gpa** |
|:---|:---|:---|:---:|:---:|
| 53831 | Madayan | madayan@music | 11 | 1.8 |
| 53832 | Guldu | guldu@music | 12 | 2.0 |
| 53688 | Smith | smith@ee | 18 | 3.2 |
| 53650 | Smith | smith@math | 19 | 3.8 |

---

## Mapping Entities and Attributes

### Activity

**Go through page 1 of the Lecture 05 handout.**

**Map the entity below to relational model.**

---

### ER Diagram

```
              ┌────────┐
              │  Car   │
              └───┬────┘
                  │
      ┌───────────┼───────────┐
      │           │           │
      ▼           ▼           ▼
 ┌─────────┐  ┌──────┐   ┌───────┐
 │vehicleID│  │regNo │   │ model │
 └─────────┘  └──┬───┘   └───────┘
   (PK)          │           │
                 │           ▼
           ┌─────┴─────┐  ┌──────┐
           │           │  │ year │
           ▼           ▼  └──────┘
      ┌─────────┐ ┌────────┐
      │province │ │ number │
      └─────────┘ └────────┘
           │
           ▼
      ╔═══════╗
      ║ color ║
      ╚═══════╝
    (Multi-valued)
```

**Attributes:**
- **vehicleID** (Primary Key - underlined)
- **regNo** (Composite attribute)
  - province
  - number
- **color** (Multi-valued - double-lined oval)
- **model** (Simple attribute)
- **year** (Simple attribute)

---

### Mapping Rules

**Rule 1: Entity → Relation**
- Each entity becomes a relation (table)

**Rule 2: Simple Attributes → Columns**
- Simple attributes become columns

**Rule 3: Primary Key**
- Key attribute becomes primary key

**Rule 4: Composite Attributes**
- Use only leaf attributes as columns

**Rule 5: Multi-valued Attributes**
- Create separate relation

---

### Relational Schema

**Car Relation:**

```
Car(vehicleID, province, number, model, year)
```

**Color Relation (for multi-valued attribute):**

```
Car_Color(vehicleID, color)
  PRIMARY KEY (vehicleID, color)
  FOREIGN KEY (vehicleID) REFERENCES Car(vehicleID)
```

---

### Activity

**Compare what you have written with your peer.**

---

## Mapping Binary Relationships

### Activity

**Go through page 1 of the handout 2.**

**Now let's map the following ER diagram to relational model**

---

### ER Diagram: Library System

```
┌──────────┐         ┌───────────┐         ┌────────────┐
│ Section  │────1────│ Headed by │────1────│ Librarian  │
└─────┬────┘         └───────────┘         └──────┬─────┘
      │                                           │
  SectionNo (PK)                                id (PK)
      name                                       name
      │                                          phone
      │
      │ 1
      │
      ▼
┌───────────┐
│  belongs  │
└─────┬─────┘
      │
      │ N
      │
      ▼
┌──────────┐
│   Copy   │
└─────┬────┘
      │
   ISBN (PK)
   publisher
     title
      │
      │ N
      │
      ▼
┌────────────┐
│ Rented by  │
└──────┬─────┘
       │
       │ M
       │
       ▼
┌──────────┐
│  Member  │
└─────┬────┘
      │
   memNo (PK)
     name
    address
```

---

### Mapping Rules for Relationships

**Rule 1: 1:1 Relationship**
- Add foreign key to **either** side
- Choose side with **total participation** if exists

**Rule 2: 1:N Relationship**
- Add foreign key to the **N side** (many side)

**Rule 3: N:M Relationship**
- Create a **new relation** for the relationship
- Include foreign keys from **both** participating entities
- Primary key = combination of both foreign keys

---

### Relational Schema

**Entities:**

```sql
Section(SectionNo, name)
  PRIMARY KEY (SectionNo)

Librarian(id, name, phone)
  PRIMARY KEY (id)

Copy(ISBN, publisher, title, SectionNo)
  PRIMARY KEY (ISBN)
  FOREIGN KEY (SectionNo) REFERENCES Section(SectionNo)

Member(memNo, name, address)
  PRIMARY KEY (memNo)
```

**Relationships:**

```sql
-- Headed by (1:1) - merged into Librarian
Librarian(id, name, phone, SectionNo)
  PRIMARY KEY (id)
  FOREIGN KEY (SectionNo) REFERENCES Section(SectionNo)

-- belongs (1:N) - foreign key in Copy (already shown above)

-- Rented by (N:M) - new relation
Rental(ISBN, memNo, rental_date)
  PRIMARY KEY (ISBN, memNo)
  FOREIGN KEY (ISBN) REFERENCES Copy(ISBN)
  FOREIGN KEY (memNo) REFERENCES Member(memNo)
```

---

## Activity: Complex ER Diagram

### Task

**Map the ER diagram to relational model**

---

### ER Diagram: Company Database

```
┌──────────────┐
│   EMPLOYEE   │
└──────┬───────┘
       │
   Ssn (PK)
   Name (Composite: Fname, Minit, Lname)
   Bdate
   Address
   Salary
   Sex
       │
       │ N            ┌─────────────┐
       ├──────────────│  WORKS_FOR  │
       │              └──────┬──────┘
       │                     │ 1
       │                     ▼
       │              ┌─────────────┐
       │              │ DEPARTMENT  │
       │              └──────┬──────┘
       │                     │
       │                  Name (PK)
       │                  Number (PK)
       │                  Locations (Multi-valued)
       │                  Number_of_employees (Derived)
       │                     │
       │ 1                   │ 1
       ├─────────────────────┤
       │      MANAGES        │
       │   (Start_date)      │
       │                     │
       │                     │
       │                     │ 1
       │                     ▼
       │              ┌─────────────┐
       │              │  CONTROLS   │
       │              └──────┬──────┘
       │                     │ N
       │                     ▼
       │              ┌─────────────┐
       │              │   PROJECT   │
       │              └──────┬──────┘
       │                     │
       │                  Name (PK)
       │                  Number (PK)
       │                  Location
       │                     │
       │ M                   │ N
       ├─────────────────────┤
       │     WORKS_ON        │
       │     (Hours)         │
       │                     │
       │
       │ 1 (Supervisor)
       ├──────────────────┐
       │   SUPERVISION    │
       │                  │
       └──────────────────┘
          N (Supervisee)
       │
       │ 1
       ▼
╔═══════════════╗
║   DEPENDENT   ║  (Weak Entity)
╚═══════╬═══════╝
        │
     Name (Partial Key)
     Sex
     Birth_date
     Relationship
```

---

### Relational Schema (Company Database)

**Solution:**

```sql
-- Entities
EMPLOYEE(Ssn, Fname, Minit, Lname, Bdate, Address, Salary, Sex, Dno, Super_ssn)
  PRIMARY KEY (Ssn)
  FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber)
  FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn)

DEPARTMENT(Dnumber, Dname, Mgr_ssn, Mgr_start_date)
  PRIMARY KEY (Dnumber)
  FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn)

DEPT_LOCATIONS(Dnumber, Dlocation)
  PRIMARY KEY (Dnumber, Dlocation)
  FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)

PROJECT(Pnumber, Pname, Plocation, Dnum)
  PRIMARY KEY (Pnumber)
  FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber)

-- Relationships
WORKS_ON(Essn, Pno, Hours)
  PRIMARY KEY (Essn, Pno)
  FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn)
  FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber)

-- Weak Entity
DEPENDENT(Essn, Dependent_name, Sex, Bdate, Relationship)
  PRIMARY KEY (Essn, Dependent_name)
  FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn)
```

---

## Mapping N-ary Relationships

### Definition

**N-ary relationship** is mapped into a **"Relationship" relation** and **foreign keys**.

---

### ER Diagram

```
┌────────┐
│   A    │
└───┬────┘
    │ pkA (PK)
    │ a
    │
    │    ┌────────┐
    │    │   B    │
    │    └───┬────┘
    │        │ pkB (PK)
    │        │ b
    │        │
    └────────┼────────┐
             │        │
             ▼        │
        ┌────────┐   │
        │   R    │◄──┘
        └────┬───┘
             │
             │
        ┌────┴────┐
        │         │
        ▼         ▼
   ┌────────┐  ┌────────┐
   │   C    │  │   D    │
   └───┬────┘  └───┬────┘
       │           │
    pkC (PK)    pkD (PK)
       c            d
```

---

### Mapping Rule

**Create a new relation R with:**
- Foreign keys referencing **all participating entities**
- Primary key = **combination of all foreign keys**
- Any attributes of the relationship

---

### Relational Schema

```sql
A(pkA, a)
  PRIMARY KEY (pkA)

B(pkB, b)
  PRIMARY KEY (pkB)

C(pkC, c)
  PRIMARY KEY (pkC)

D(pkD, d)
  PRIMARY KEY (pkD)

R(pkA, pkB, pkC, pkD)
  PRIMARY KEY (pkA, pkB, pkC, pkD)
  FOREIGN KEY (pkA) REFERENCES A(pkA)
  FOREIGN KEY (pkB) REFERENCES B(pkB)
  FOREIGN KEY (pkC) REFERENCES C(pkC)
  FOREIGN KEY (pkD) REFERENCES D(pkD)
```

---

## Mapping ISA Relationships

### Overview

There are **four different options** for mapping ISA relationships:

**Multi-relation options:**
- **Option 1**
- **Option 2**

**Single-relation options:**
- **Option 3**
- **Option 4**

**Each option** is suitable for **specific situations**.

---

## ISA Mapping – Option 1

### Rules

**1. Create a relation for the superclass**
- With its attributes
- Primary key of the superclass becomes the primary key of the relation

**2. Create separate relations for the subclasses**
- With their attributes
- Primary key of the superclass is also primary key of each subclass
- They are also foreign keys referring to the primary key of the relation created for the super class

---

### When to Use

**Option 1 works for all constraints:**
- ✅ Disjoint
- ✅ Overlapping
- ✅ Total
- ✅ Partial

---

### EERD Diagram

```
           ┌──────────┐
           │  Person  │
           └─────┬────┘
                 │
              NIC (PK)
               name
                age
                 │
                 ▼
              ┌─────┐
              │ ISA │
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
    ┌─────────┐       ┌────────────────┐
    │ Student │       │ Faculty member │
    └─────────┘       └────────────────┘
       GPA                 salary
```

---

### Relational Schema

```sql
Person(NIC, name, age)
  PRIMARY KEY (NIC)

Student(NIC, gpa)
  PRIMARY KEY (NIC)
  FOREIGN KEY (NIC) REFERENCES Person(NIC)

Faculty_member(NIC, salary)
  PRIMARY KEY (NIC)
  FOREIGN KEY (NIC) REFERENCES Person(NIC)
```

---

### Visual Representation

```
┌─────────────────────────┐
│       Person            │
├───────┬──────┬──────────┤
│  NIC  │ name │   age    │
│ (PK)  │      │          │
└───┬───┴──────┴──────────┘
    │
    │ FK
    │
    ├──────────────────────────┐
    │                          │
    ▼                          ▼
┌─────────────────┐    ┌─────────────────────┐
│    Student      │    │  Faculty_member     │
├───────┬─────────┤    ├───────┬─────────────┤
│  NIC  │   gpa   │    │  NIC  │   salary    │
│(PK,FK)│         │    │(PK,FK)│             │
└───────┴─────────┘    └───────┴─────────────┘
```

---

## ISA Mapping – Option 1 (Scenarios)

### Think About Storage

**Question:** How would you store information of following people?

---

#### Scenario 1: Partial Specialization

**A person who is NOT a student or a faculty member** (i.e., when the ISA relationship is partial)

**Solution:**
- Insert tuple in **Person** table only
- No tuples in Student or Faculty_member tables

```sql
Person: (NIC='123', name='John', age=25)
Student: (empty)
Faculty_member: (empty)
```

---

#### Scenario 2: Disjoint Constraint

**A person who is a student but NOT a faculty member** (i.e., disjoint)

**Solution:**
- Insert tuple in **Person** table
- Insert tuple in **Student** table
- No tuple in Faculty_member table

```sql
Person: (NIC='456', name='Mary', age=20)
Student: (NIC='456', gpa=3.5)
Faculty_member: (empty)
```

---

#### Scenario 3: Overlapping Constraint

**A person who is BOTH a student and a faculty member** (i.e., overlapping classes)

**Solution:**
- Insert tuple in **Person** table
- Insert tuple in **Student** table
- Insert tuple in **Faculty_member** table

```sql
Person: (NIC='789', name='Alice', age=28)
Student: (NIC='789', gpa=3.8)
Faculty_member: (NIC='789', salary=50000)
```

---

## ISA Mapping – Option 2

### Rules

**1. Create separate relations for all the subclasses**
- With their **own attributes**
- Plus the **attributes of the superclass**

**2. Primary key of the superclass**
- Becomes primary key of the subclasses

---

### Constraint

**The ISA relationship MUST be total** (i.e., subclasses must **cover** the super class)

---

### EERD Diagram

```
           ┌──────────┐
           │  Person  │
           └─────┬────┘
                 │
              NIC (PK)
               name
                age
                 │
                 ▼
              ┌─────┐
              │ ISA │ (Total)
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
    ┌─────────┐       ┌────────────────┐
    │ Student │       │ Faculty member │
    └─────────┘       └────────────────┘
       GPA                 salary
```

---

### Relational Schema

```sql
Student(NIC, name, age, gpa)
  PRIMARY KEY (NIC)

Faculty_member(NIC, name, age, salary)
  PRIMARY KEY (NIC)
```

**Note:** No separate relation for **Person** superclass

---

### Visual Representation

```
┌─────────────────────────────────┐
│         Student                 │
├───────┬──────┬──────┬───────────┤
│  NIC  │ name │ age  │    gpa    │
│ (PK)  │      │      │           │
└───────┴──────┴──────┴───────────┘

┌─────────────────────────────────┐
│      Faculty_member             │
├───────┬──────┬──────┬───────────┤
│  NIC  │ name │ age  │  salary   │
│ (PK)  │      │      │           │
└───────┴──────┴──────┴───────────┘
```

---

## ISA Mapping – Option 2 (Scenarios)

### Think About Storage

**Question:** How would you store information of following people?

---

#### Scenario 1: Partial Specialization

**A person who is NOT a student or a faculty member** (i.e., when the ISA relationship is partial)

**Problem:** ❌ **CANNOT BE STORED**

**Reason:** No Person table exists, and option 2 requires **total specialization**

---

#### Scenario 2: Disjoint Constraint

**A person who is a student but NOT a faculty member** (i.e., disjoint)

**Solution:**
- Insert tuple in **Student** table only

```sql
Student: (NIC='456', name='Mary', age=20, gpa=3.5)
Faculty_member: (empty)
```

---

#### Scenario 3: Overlapping Constraint

**A person who is BOTH a student and a faculty member** (i.e., overlapping classes)

**Problem:** ❌ **DATA REDUNDANCY**

**Solution:**
- Insert tuple in **Student** table
- Insert tuple in **Faculty_member** table
- **Redundancy:** name and age stored twice

```sql
Student: (NIC='789', name='Alice', age=28, gpa=3.8)
Faculty_member: (NIC='789', name='Alice', age=28, salary=50000)
```

---

## ISA Mapping – Option 3

### Rules

**1. Create a single relation**
- Including attributes of the **superclass**
- Plus attributes of **all subclasses**

**2. Include an attribute named "type"**
- For specifying which subclass the entity belongs to (if any)

**3. Primary key of the superclass**
- Becomes primary key of the relation

---

### Constraints

**The specialization/generalization relationship MUST be disjoint**

**Good if:**
- Subclasses have **few attributes**

---

### EERD Diagram

```
           ┌──────────┐
           │  Person  │
           └─────┬────┘
                 │
              NIC (PK)
               name
                age
                 │
                 ▼
              ┌─────┐
              │ ISA │ (Disjoint)
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
    ┌─────────┐       ┌────────────────┐
    │ Student │       │ Faculty member │
    └─────────┘       └────────────────┘
       GPA                 salary
```

---

### Relational Schema

```sql
Person(NIC, name, age, gpa, salary, type)
  PRIMARY KEY (NIC)
```

**Note:** All attributes in **one table**

---

### Visual Representation

```
┌───────────────────────────────────────────────────────┐
│                      Person                           │
├───────┬──────┬──────┬──────┬─────────┬───────────────┤
│  NIC  │ name │ age  │ gpa  │ salary  │     type      │
│ (PK)  │      │      │      │         │ (S/F/NULL)    │
└───────┴──────┴──────┴──────┴─────────┴───────────────┘
```

---

## ISA Mapping – Option 3 (Scenarios)

### Think About Storage

**Question:** How would you store information of following people?

---

#### Scenario 1: Partial Specialization

**A person who is NOT a student or a faculty member** (i.e., when the ISA relationship is partial)

**Solution:**
- Insert tuple with **gpa = NULL**, **salary = NULL**, **type = NULL**

```sql
Person: (NIC='123', name='John', age=25, gpa=NULL, salary=NULL, type=NULL)
```

---

#### Scenario 2: Disjoint Constraint

**A person who is a student but NOT a faculty member** (i.e., disjoint)

**Solution:**
- Insert tuple with **salary = NULL**, **type = 'S'** (Student)

```sql
Person: (NIC='456', name='Mary', age=20, gpa=3.5, salary=NULL, type='S')
```

---

#### Scenario 3: Overlapping Constraint

**A person who is BOTH a student and a faculty member** (i.e., overlapping classes)

**Problem:** ❌ **CANNOT BE STORED PROPERLY**

**Reason:** Option 3 is for **disjoint** constraints only. Cannot indicate membership in both subclasses with a single "type" value.

---

## ISA Mapping – Option 4

### Rules

**1. Create a single relation**
- Including attributes of the **superclass**
- Plus attributes of **all subclasses**

**2. Include Boolean attributes**
- To indicate which subclass each tuple belongs to

**3. Primary key of the superclass**
- Becomes primary key of the relation

---

### Constraints

**This relation allows overlapping constraints** for specialization/generalization relationship

---

### EERD Diagram

```
           ┌──────────┐
           │  Person  │
           └─────┬────┘
                 │
              NIC (PK)
               name
                age
                 │
                 ▼
              ┌─────┐
              │ ISA │ (Overlapping)
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
    ┌─────────┐       ┌────────────────┐
    │ Student │       │ Faculty member │
    └─────────┘       └────────────────┘
       GPA                 salary
```

---

### Relational Schema

```sql
Person(NIC, name, age, gpa, salary, student, faculty)
  PRIMARY KEY (NIC)
```

**Note:**
- **student** = Boolean attribute (TRUE/FALSE)
- **faculty** = Boolean attribute (TRUE/FALSE)

---

### Visual Representation

```
┌──────────────────────────────────────────────────────────────────┐
│                          Person                                  │
├───────┬──────┬──────┬──────┬─────────┬───────────┬──────────────┤
│  NIC  │ name │ age  │ gpa  │ salary  │  student  │   faculty    │
│ (PK)  │      │      │      │         │ (Boolean) │  (Boolean)   │
└───────┴──────┴──────┴──────┴─────────┴───────────┴──────────────┘
```

---

## ISA Mapping – Option 4 (Scenarios)

### Think About Storage

**Question:** How would you store information of following people?

---

#### Scenario 1: Partial Specialization

**A person who is NOT a student or a faculty member** (i.e., when the ISA relationship is partial)

**Solution:**
- Insert tuple with **student = FALSE**, **faculty = FALSE**

```sql
Person: (NIC='123', name='John', age=25, gpa=NULL, salary=NULL, 
         student=FALSE, faculty=FALSE)
```

---

#### Scenario 2: Disjoint Constraint

**A person who is a student but NOT a faculty member** (i.e., disjoint)

**Solution:**
- Insert tuple with **student = TRUE**, **faculty = FALSE**

```sql
Person: (NIC='456', name='Mary', age=20, gpa=3.5, salary=NULL, 
         student=TRUE, faculty=FALSE)
```

---

#### Scenario 3: Overlapping Constraint

**A person who is BOTH a student and a faculty member** (i.e., overlapping classes)

**Solution:** ✅ **CAN BE STORED**
- Insert tuple with **student = TRUE**, **faculty = TRUE**

```sql
Person: (NIC='789', name='Alice', age=28, gpa=3.8, salary=50000, 
         student=TRUE, faculty=TRUE)
```

---

## Summary

### Mapping Rules Overview

**1. Entity → Relation**
- Entity name → Table name
- Attributes → Columns
- Primary key → Primary key

**2. Relationships**

| **Cardinality** | **Mapping Strategy** |
|:---|:---|
| **1:1** | Foreign key on either side (prefer total participation side) |
| **1:N** | Foreign key on N side |
| **N:M** | New relation with both foreign keys |

**3. Multi-valued Attributes**
- Create separate relation

**4. Composite Attributes**
- Use only leaf attributes

**5. Derived Attributes**
- Usually not stored (calculated when needed)

**6. N-ary Relationships**
- New relation with all foreign keys

---

### ISA Mapping Options Comparison

| **Option** | **Relations** | **Constraints** | **Use When** | **Pros** | **Cons** |
|:---:|:---|:---|:---|:---|:---|
| **1** | Superclass + Subclasses | All (Disjoint/Overlap, Total/Partial) | General purpose | Flexible, No redundancy | More tables, Joins needed |
| **2** | Subclasses only | **Total** only | Subclasses cover all | Fewer tables | No partial, Redundancy if overlapping |
| **3** | Single relation with "type" | **Disjoint** only | Few subclass attributes | Single table, Simple | NULL values, No overlapping |
| **4** | Single relation with Booleans | All (allows **Overlapping**) | Overlapping subclasses | Handles overlapping | NULL values, More columns |

---

### Decision Tree for ISA Mapping

```
Start
  │
  ├─ Is specialization TOTAL?
  │  │
  │  ├─ YES ──► Are subclasses DISJOINT?
  │  │          │
  │  │          ├─ YES ──► Few attributes? ──► YES ──► Option 3
  │  │          │                            │
  │  │          │                            └─ NO ──► Option 2
  │  │          │
  │  │          └─ NO (Overlapping) ──► Option 4
  │  │
  │  └─ NO (Partial) ──► Are subclasses OVERLAPPING?
  │                      │
  │                      ├─ YES ──► Option 4
  │                      │
  │                      └─ NO ──► Few attributes? ──► YES ──► Option 3
  │                                                  │
  │                                                  └─ NO ──► Option 1
  │
  └─ Default (Most Flexible) ──► Option 1
```

---

### Key Concepts

✅ **Relational Model** - Tables with rows and columns

✅ **Entity Mapping** - Entity → Table, Attributes → Columns

✅ **Relationship Mapping** - Depends on cardinality (1:1, 1:N, N:M)

✅ **Multi-valued Attributes** - Separate table

✅ **Composite Attributes** - Use leaf attributes only

✅ **ISA Relationships** - 4 options based on constraints

✅ **Foreign Keys** - Maintain referential integrity

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the courseweb

✅ Complete the **tutorial**

---

**End of Lecture 05**
