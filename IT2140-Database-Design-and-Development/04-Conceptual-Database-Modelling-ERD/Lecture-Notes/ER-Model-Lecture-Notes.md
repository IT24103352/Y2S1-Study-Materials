# Lecture 04 - Conceptual Database Modeling - ER Model

**Course:** IT2140 - Database Design and Development  
**Lecture:** 04  
**Topic:** Conceptual Database Modeling - ER Model  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:33:27

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Conceptual Database Design](#conceptual-database-design)
- [ER Notation](#er-notation)
- [Entity](#entity)
- [Attributes](#attributes)
- [Relationships](#relationships)
- [Cardinality](#cardinality)
- [Participation Constraints](#participation-constraints)
- [Weak Entity](#weak-entity)
- [EER Model](#eer-model)
- [Summary](#summary)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- Conceptual modelling using ER diagrams

---

## Learning Outcomes

By the end of this lecture, students should be able to:

- **Draw an ER diagram** for a given scenario

---

## Conceptual Database Design

### Process

**Step 1: Requirements Analysis**
- The result of the requirement analysis step is a **concisely written set of users' requirements**

**Step 2: Conceptual Database Design**
- Once requirements analysis is completed, the next step is to create a **conceptual database schema** for the database
- Uses a **high-level conceptual data model**
- This step is called **conceptual database design**

---

### ER Model

**Entity-Relationship (ER) model** is a **high-level conceptual data model**.

---

## ER Notation

### Symbols and Meanings

| **Symbol** | **Meaning** |
|:---|:---|
| Rectangle | **ENTITY** |
| Double Rectangle | **WEAK ENTITY** |
| Diamond | **RELATIONSHIP** |
| Double Diamond | **IDENTIFYING RELATIONSHIP** |
| Oval | **ATTRIBUTE** |
| Oval with underlined text | **KEY ATTRIBUTE** |
| Double-lined Oval | **MULTIVALUED ATTRIBUTE** |
| Oval with sub-ovals | **COMPOSITE ATTRIBUTE** |
| Dotted Oval | **DERIVED ATTRIBUTE** |
| Double line | **TOTAL PARTICIPATION** of E₂ in R |
| 1:N label | **CARDINALITY RATIO** 1:N for E₁:E₂ in R |
| (min, max) | **STRUCTURAL CONSTRAINT** on participation of E in R |

---

## Entity

### Definition

An **entity** is an **object in the real world** with an **independent existence**.

**Examples:**
- Place
- Person
- Car
- House
- Company
- Job
- University

---

### Entity Set

A **collection of similar entities** is called an **entity set**.

---

### Graphical Representation

**Rectangle**

**Naming Convention:**
- First letter of each word in the entity name is **uppercase**
- Example: `Student`
- Normally an entity is named using a **'noun'** or **'noun phrase'**

```
┌──────────┐
│ Student  │
└──────────┘
```

---

## Attributes

### Definition

An **entity is described** using a set of **attributes**.

---

### Graphical Representation

**Oval**

**Example:** Staff has 3 attributes

```
        ┌─────────┐
        │  Staff  │
        └────┬────┘
             │
    ┌────────┼────────┐
    │        │        │
    ▼        ▼        ▼
  (name)  (id)    (salary)
```

---

## Example Scenarios

### BOC Network

**Scenario:**
BOC is the largest bank network having over 5,000 branches and over 500,000 customers. Customers can open accounts in any bank branch.

**Task:**
- Identify **Entities**
- Identify at least **3 attributes per entity**

---

### SLIIT Student Registration

**Scenario:**
New students are required to produce their national ID card number, name, address, age, date of birth and gender during the registration process. They are also required to select the degree program of their choice. The programs are selected based on the entry criteria, specialty, duration, fees etc.

**Questions:**
- **Entity?**
- **Attributes?**

---

## Entity Set - Example

### Transformation from Entity Set to ER Diagram

**Conceptual View:**

```
┌─────────────────────┐
│  Employee Entity    │
│  Set                │
│                     │
│  e1 ───► salary     │
│  e1 ───► name       │
│  e2 ───► age        │
│  e2 ───► id         │
│  e3                 │
│  e4                 │
│  e5                 │
│  e6                 │
│  ...                │
└─────────────────────┘
```

**ER Diagram:**

```
           ┌──────────┐
           │ Employee │
           └─────┬────┘
                 │
    ┌────────────┼────────────┐
    │            │            │
    ▼            ▼            ▼
  (Salary)     (Age)        (Id)
                             (Name)
```

**Example:** name, id, age & salary are attributes in Employee entity

---

## Domain of an Attribute

### Definition

The **domain of an attribute** specifies the **set of possible values** that the attribute can have.

---

### Examples

**Age:**
- Domain: Integer values from **0 - 120**

**Name:**
- Domain: **20 character string**

---

## Composite Attribute

### Definition

An attribute that **can be divided into smaller subparts**.

---

### Graphical Representation

```
      (Address)
          │
    ┌─────┼─────┐
    │     │     │
    ▼     ▼     ▼
  (No) (Street) (City)
```

**Composite attribute is shown with sub-attributes connected to it**

---

## Activity: Library Database

### Your Turn!

**Think about the library database.**

**Tasks:**
1. Identify **entities**
2. Identify **attributes**
3. Identify **domain of attributes**

---

## Multi-Valued Attributes

### Definition

**Attributes containing multiple values** are called **multi-valued attributes**.

---

### Graphical Representation

**Double-lined oval**

```
      ╔═════════╗
      ║ Skills  ║
      ╚═════════╝
```

---

### Your Turn!

Give an example for a **multi-valued attribute** in library database.

---

## Derived Attributes

### Definition

Attributes whose values can be **calculated (derived) from other attributes** are called **derived attributes**.

---

### Graphical Representation

**Dotted-line oval**

```
   ┌ ─ ─ ─ ─ ┐
      Age
   └ ─ ─ ─ ─ ┘
```

**Example:**
- **Age** is derived from **date of birth** and **current date**

---

## Key Attributes

### Definition

An attribute whose value is **unique** for each entity in the entity set.

---

### Graphical Representation

**Oval with underlined text**

```
Employee Entity Set:
┌─────────────────────┐
│  e1 ───► salary     │
│  e1 ───► age        │
│  e1 ───► name       │
│  e2 ───► ──────     │  ← Unique identifier
│          │  id  │     │
│          └──────┘     │
│  e3                 │
│  e4                 │
│  ...                │
└─────────────────────┘

ER Diagram:
   ┌────────┐
   │   id   │  ← Underlined
   └────────┘
```

---

## Primary Key

### Definition

- There can be **multiple key attributes** called **candidate keys** in a single entity
- A **single candidate key** is designated as the **primary key**

---

## Composite Key

### Definition

Sometimes, a **group of attributes** make up the key. This is called a **composite key**.

---

### Example

**Table:**

| **ST_ID + Unit_ID** | **Marks** |
|:---|:---:|
| IT1601 IT103 | 85 |
| IT1601 IT104 | 78 |
| IT1602 IT103 | 72 |
| IT1603 IT104 | 82 |

**Composite key = (ST_ID + Unit_ID)**

Neither ST_ID alone nor Unit_ID alone is unique, but the **combination** is unique.

---

## Super Key

### Definition

Any **set of attributes** that uniquely identify a tuple is called the **superkey** of a relation.

---

### Example

**Student (SID, Name, Address, Contact, GPA)**

**Question:** What is the minimal set of attributes that uniquely identify the relation?

**Answer:**
- **SID** = Primary Key (minimal set)
- **(SID + Name)** = Is this unique? **Yes**, but **NOT the minimal set** → Super Key

---

## Activity: Student-Course Scenario

### Your Turn!

**Scenario:**
Students should enroll for courses. Student need to provide studentID number, name, address, date of birth, gender, contact number when he/she is going to register for a course. University keeps track of course number, course name, offering faculty, duration and course fee of each course.

**Question:** How do you represent this scenario?

---

### Initial ER Diagram (Without Relationship)

```
┌─────────┐                    ┌────────┐
│ Student │                    │ Course │
└────┬────┘                    └───┬────┘
     │                             │
 ┌───┴───────────┐         ┌───────┴────────┐
 │               │         │                │
(studentID) (name)       (courseNo)  (coursename)
(address)   (dob)        (faculty)   (duration)
(phone)     (gender)     (fee)
```

**Problem:** How do we find the course name of the student IT160001?

**Solution:** We need a **relationship**!

---

## Relationship

### Definition

An **association among two or more entities**.

**Collection of similar relationships** = **relationship set**

---

### Graphical Representation

Shown as a **diamond** connecting the associated entities, labelled with the name of the relationship.

**Naming Convention:**
- Normally a relationship is named using a **'verb'** or **'verb phrase'**

```
┌─────────┐         ┌──────────┐         ┌────────┐
│ Student │─────────│  Enrolls │─────────│ Course │
└─────────┘         └──────────┘         └────────┘
```

---

## Degree of a Relationship

### Definition

**Degree of a relationship** is the **number of participating entities**.

---

### Types

**Binary Relationship:**
- Relationship with **two participants**
- Degree / Number of Entities = **2**

**Ternary Relationship:**
- Relationship with **three participants**
- Degree / Number of Entities = **3**

**Quaternary Relationship:**
- Relationship with **four participants**
- Degree / Number of Entities = **4**

---

## Ternary Relationships

### Definition

Relationship with **three participants**

---

### Example: Works_In

**Scenario:** Each employee can work at most in one department at a single location

**ER Diagram:**

```
┌───────────┐
│ Employees │
└─────┬─────┘
      │  ssn (underlined)
      │  name
      │  lot
      │
      ▼
┌──────────┐
│ works_In │
└─────┬────┘
      │
   ┌──┴──┐
   │     │
   ▼     ▼
┌──────────┐  ┌──────────────┐
│ Location │  │ Departments  │
└──────────┘  └──────────────┘
  (name)         did (underlined)
                 dname
                 budget
```

---

### Instance Diagram

```
Employees           Location          Departments
┌─────────┐        ┌────────┐        ┌─────────┐
│ 12-233  │        │ Rome   │        │   D10   │
│ 12-354  │────────│ London │────────│   D12   │
│ 12-243  │        │ Paris  │        │   D13   │
│ 12-299  │        └────────┘        └─────────┘
└─────────┘
```

---

## Cardinality

### Definition

The **cardinality ratio** for a binary relationship specifies the **number of relationship instances** that an entity can participate in.

---

### Three Types of Cardinality Ratios

**1. One-to-One (1:1)**

**2. One-to-Many (1:N)**

**3. Many-to-Many (N:M)**

---

## One-to-One Relationship (1:1)

### Example

**Scenario:** An employee manages at most one department. A department can have one manager managing it.

```
┌──────────┐         ┌─────────┐         ┌────────────┐
│ Employee │────1────│ Manages │────1────│ Department │
└──────────┘         └─────────┘         └────────────┘
```

---

### Your Turn!

Think about the **Library database** and give an example of a **1:1 relationship**.

---

## One-to-Many Relationship (1:N)

### Example

**Scenario:** An employee works in at most one department.

This is a **one-to-many** (or **many-to-one**) relationship.

```
┌──────────┐         ┌──────────┐         ┌────────────┐
│ Employee │────N────│ Works_In │────1────│ Department │
└──────────┘         └──────────┘         └────────────┘
```

**Interpretation:**
- **Many** employees work in **one** department
- **One** department has **many** employees

---

### Your Turn!

Think about the **Library database** and give an example of a **1:N relationship**.

---

## Many-to-Many Relationship (N:M)

### Example

**Scenario:** An employee can work on several projects. A project can have many employees working on it.

```
┌──────────┐         ┌──────────┐         ┌─────────┐
│ Employee │────N────│ Works_On │────M────│ Project │
└──────────┘         └──────────┘         └─────────┘
```

**Interpretation:**
- **Many** employees work on **many** projects
- **Many** projects have **many** employees

---

### Your Turn!

Think about the **Library database** and give an example of a **N:M relationship**.

---

## Recursive Relationship

### Concept

**Have you formed your project groups?**

**What is the structure?**
- **Leader** and **members**
- **1** leader : **N** members

**Key Point:**
- Both **leader** and **members** are **students**
- **1** : **N** relationship **within the same entity**

---

### Example 1: Student Groups

**Scenario:** Student leads set of students in group assignments.

```
           ┌─────────┐
     ┌─────│ Student │─────┐
     │     └─────────┘     │
     │                     │
  1 Leader            N Members
     │                     │
     └──────┬──────────────┘
            │
       ┌────▼────┐
       │  Leads  │
       └─────────┘
```

---

### Example 2: Employee Supervision

**Scenario:** In most companies, each employee (except the CEO) is supervised by another employee.

**Incorrect Diagram (crossed out with X):**

```
┌──────────┐         ┌───────────┐         ┌──────────┐
│ Employee │─────────│ Supervises│─────────│ Employee │
└──────────┘         └───────────┘         └──────────┘
     ❌ WRONG - Two separate entities shown
```

**Correct Diagram:**

```
           ┌──────────┐
     ┌─────│ Employee │─────┐
     │     └──────────┘     │
     │                      │
  1 Manager          N Subordinates
     │                      │
     └──────┬───────────────┘
            │
      ┌─────▼──────┐
      │ Supervises │
      └────────────┘
```

---

## Activity: Career Progression

### Your Turn!

**Scenario:**

Rosell, 23 years old, a diploma holder joined the 'ABC' company as a management trainee. She joined the Production department on 01/01/2005.

When Rosell successfully completed her Commerce degree, she was promoted as Finance Executive and transferred to the Finance department from 02/02/2006.

Considering her MBA qualification, the management of the company promoted her as Assistant Manager Business Development and transferred to the Business Development department with effect from 03/03/2008.

**Question:** How would you model this scenario?

---

## Descriptive Attributes

### Definition

Used to **record information about the relationship** rather than any one of the participating entities.

---

### Example

**Scenario:** Nimal works in accounts dept **since 2008**

```
┌──────────┐         ┌──────────┐         ┌────────────┐
│ Employee │────N────│ Works_In │────1────│ Department │
└──────────┘         └─────┬────┘         └────────────┘
                           │
                           ▼
                        (since)
```

**"since"** is a **descriptive attribute** of the **Works_In relationship**.

---

### Instance Diagram

```
Employees           Work_in (since)      Departments
┌─────────┐        ┌─────────────┐      ┌───────────┐
│  e011   │────────│  1/2/99     │──────│    HR     │
│  e022   │────┬───│  1/2/09     │──┬───│   Sales   │
│  e033   │    │   │  1/5/01     │  │   │ Marketing │
│  e044   │    └───│  1/2/07     │──┘   └───────────┘
└─────────┘        │  1/3/05     │
                   └─────────────┘
```

**Example:**
- Employee **e022** works in **HR** since **1/2/09**
- Employee **e022** also works in **Sales** since **1/5/01**

---

## ER Diagram Example

### Student-Course-Class Diagram

```
┌─────────┐         ┌──────────────┐         ┌────────┐
│ Student │────N────│ Is registered│────1────│ Course │
└─────────┘         └──────────────┘         └────────┘
     │
     │
     N
     │
     ▼
┌───────────┐
│ Is taking │
└─────┬─────┘
      │
      M
      │
      ▼
┌─────────┐
│  Class  │
└─────────┘
```

**Note:** Relationships are typically labelled as **verbs** or **names of aggregation type**

---

## Activity: Practice

### Your Turn!!!

**Steps to create an ER diagram:**

1. **Identify the entities** → nouns
2. **Identify the relationships** → verbs
3. **Determine Cardinality** (1:1, 1:N, N:M)
4. **Determine Participation** (total / partial)

---

## Restrictions - Constraints

### Question

**What is the criteria to become a student at SLIIT?**

**Answer:**
- **Register for a degree**
- **Mandatory/compulsory**

**Conclusion:**
- Student **MUST** be registered in a degree
- This is a **Restriction** - **Constraint**

**Question:** How do we present this information in the database?

**Answer:** Using **Participation Constraints**

---

## Example Constraint

**Statement:** Student must be registered in a degree.

```
┌─────────┐         ┌──────────────┐         ┌────────┐
│ Student │═════N═══│ Is registered│────1────│ Degree │
└─────────┘         └──────────────┘         └────────┘
    (Double line indicates TOTAL participation)
```

---

## Participation Constraints

### Definition

**Participating constraint** specifies whether the **existence of an entity depends on** its being **related to another entity** via the relationship type.

---

### Types

**1. Total Participation (Double Line)**
- Entity **must** participate in the relationship
- Existence depends on the relationship

**2. Partial Participation (Single Line)**
- Entity **may or may not** participate in the relationship
- Existence is independent

---

## Participation Constraints - Example

### Employee-Department

**Scenario:**
- If we specify that an employee **must always work** for a department
- Then we say that the relationship "works in" is in **total participation** from employee entity to department entity

```
┌──────────┐         ┌──────────┐         ┌────────────┐
│ Employee │═════N═══│ Works_In │────1────│ Department │
└──────────┘         └──────────┘         └────────────┘
  (Total)                                    (Partial)
```

**Interpretation:**
- **Employee must work in a department** (Total - double line)
- **Department may or may not have employees** (Partial - single line)

---

## Partial Participation

### Definition

If the relationship is **not in total participation**, then it is known as **partial**.

---

### Example

**From Department to Employee:**
- Department **may or may not** have Employees
- Therefore, **partial participation**

---

## Activity: Student Participation

### Question

```
┌─────────┐         ┌──────────────┐         ┌────────┐
│ Student │────N────│ Is registered│────1────│ Course │
└─────────┘         └──────────────┘         └────────┘
     │
     │
     N
     │
     ▼
┌───────────┐
│ Is taking │
└─────┬─────┘
      │
      N
      │
      ▼
┌─────────┐
│  Class  │
└─────────┘
```

**Question:** What is the **Participation Constraint** for **Student**?

---

## Weak Entity

### Motivating Scenario

**Questions:**
- Are your parents employed?
- Does the company cover **THE CHILDREN'S** medical insurance?
- How do you claim your medical bills?
  - Can you get it reimbursed or through your parents?
- Is the same coverage given to children after resignation?

**Conclusion:** Children's insurance depends on parents' employment!

---

## Weak Entity - Example

```
┌──────────┐         ╔══════════╗         ╔═══════════╗
│ Employee │────1────║  covers  ║════N════║ Dependent ║
└─────┬────┘         ╚══════════╝         ╚═════┬═════╝
      │              (Double diamond)            │
      ▼              (Identifying                ▼
    (id)             relationship)          ┌ ─ ─ ─ ┐
  (underlined)                                name
                                             └ ─ ─ ─ ┘
                                            (Dotted underline
                                             = Partial key)
                                                │
                                                ▼
                                              (age)

Strong entity                              Weak entity
                                          (Double-lined box)
```

---

## Weak Entity - Definition

### Characteristics

**Some entities can't exist on its own:**

1. Its **existence is dependent** on another entity
   - Cannot exist without the entity with which it has a relationship

2. It **inherits part of the primary key** from the entity to which it is related

3. **Entity types without any key attributes** is called **weak entity types**

---

## Weak Entity - Rules

### Key Points

**1. Partial Keys:**
- The attributes in the **weak entity** participating in the key are called **partial keys**

**2. Owner Entity:**
- The **owner entity** and the **weak entity** participate in an **identifying relationship**

**3. Cardinality:**
- The cardinality of the identifying relationship is either **one-to-one** or **one-to-many** from owner entity to weak entity

**4. Total Participation:**
- The **weak entity must have total participation** in the identifying relationship

---

## Example - Weak Entity: ATM Transactions

```
┌─────────┐         ╔═════════════╗         ╔══════════════╗
│   ATM   │────1────║ facilitates ║════N════║ Transactions ║
└────┬────┘         ╚═════════════╝         ╚══════┬═══════╝
     │              (Double diamond)                │
     ▼                                              ▼
  (atmID)                                      ┌ ─ ─ ─ ─ ┐
(underlined)                                    transac#
                                               └ ─ ─ ─ ─ ┘
     │                                         (Dotted underline
     ▼                                          = Partial key)
  (address)
     │                                              │
     ▼                                              ▼
   (since)                                      (amount)
                                                    │
                                                    ▼
                                                  (type)
```

**Explanation:**
- **Transactions** cannot exist without **ATM**
- **transac#** is a partial key
- Combined with **atmID**, it forms the complete key

---

## EER Model

### Definition

**Enhanced Entity-Relationship (EER) Model**

The ER model has been **enhanced** by adding several new concepts leading to the development of the **EER model**.

---

### Important Extensions

**1. Specialization:**
- The process of **defining a set of subclasses** of an entity type
- Example: Employee → Permanent employee

**2. Generalization:**
- The process of **identifying commonalities** between entity types and **grouping them as super-classes**

---

## EER Model - ISA Relationships

### Purpose

In many cases an entity type has **numerous subgroupings or subtypes** of its entities that are **meaningful** and need to be **represented explicitly** because of their **significance to the database application**.

---

### Example

**Entities** that are members of the **EMPLOYEE** entity type may be **distinguished further** into:
- Contract employees
- Permanent employees

Such **subtypes** could be represented in EER diagrams using **'ISA' relationships**.

---

## ISA Relationships - Diagram

```
           ┌──────────┐
           │ Employee │
           └─────┬────┘
                 │
              (eId) - underlined
              (ename)
              (age)
                 │
                 ▼
              ┌─────┐
              │ ISA │
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
┌──────────────────┐  ┌──────────────────┐
│ Permanent        │  │ Contract         │
│ Employee         │  │ Employee         │
└────────┬─────────┘  └────────┬─────────┘
         │                     │
         ▼                     ▼
     (salary)            (Hours_rate)
                         (Hours_worked)
```

---

### Key Points

**Note:**

1. The **subclasses may have their own attributes and relationships**

2. **Every entity in the subclass** is also an **employee entity** and has **all of the attributes** of Employees entity

3. Thus **attributes of the permanent employee** include:
   - All attributes of **employee entity**
   - Plus those of **permanent employee**

---

## Overlapping Constraint

### Definition

**Overlapping constraint** determines whether **two subclasses are allowed to contain the same entity**.

---

### Example 1: Disjoint Subclasses

**Question:** Can an employee E be a **permanent employee** and a **contract employee**?

**Answer:** Probably **not**.

**Therefore:** The permanent employee subclass and the contract employee subclass are **disjoint**.

---

### Example 2: Overlapping Subclasses

**Question:** Can a person P in a university environment be a **student** and a **faculty member** at the same time?

**Answer:** **Yes**, it is possible (e.g., graduate teaching assistant).

**Notation:** We denote this by writing **"student overlaps faculty member"**.

**Default:** In absence of such a statement we **assume that the subclasses are disjoint**.

---

## Overlapping Constraint - Diagrams

### Disjoint (Default)

```
           ┌──────────┐
           │ Employee │
           └─────┬────┘
              (eId) - underlined
              (ename)
              (age)
                 │
                 ▼
              ┌─────┐
              │ ISA │
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
┌──────────────────┐  ┌──────────────────┐
│ Permanent        │  │ Contract         │
│ Employee         │  │ Employee         │
└──────────────────┘  └──────────────────┘
     (salary)          (Hours_rate)
                       (Hours_worked)

       (Disjoint - default)
```

---

### Overlapping

```
           ┌──────────┐
           │  Person  │
           └─────┬────┘
              (NIC) - underlined
              (name)
              (age)
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
       (GPA)              (salary)

   Student overlaps faculty member
```

---

## Covering Constraint

### Definition

**Covering constraints** determine whether the **entities in the subclasses collectively include all entities** in the super class.

---

### Example 1: Total Specialization (Covers)

**Question:** Does every employee entity e, belong to one of its subclasses (i.e. permanent employee or contract employee)?

**Answer:** **Yes**

**Notation:** We denote this by writing **"permanent employee and contract employee covers employee"**.

**Also known as:** **Total specialization**

---

### Example 2: Partial Specialization (No Cover)

**Question:** Does every person p in a university environment belong to either student sub class or the faculty member sub class?

**Answer:** Probably **not** (e.g., administrative staff).

**Therefore:** There is **no covering constraint** associated with the hierarchy.

**Also known as:** **Partial specialization**

---

## Covering Constraint - Diagrams

### Total Specialization

```
           ┌──────────┐
           │ Employee │
           └─────┬────┘
              (eId) - underlined
              (ename)
              (age)
                 │
                 ▼
              ┌─────┐
              │ ISA │
              └──┬──┘
                 │
        ┌────────┴────────┐
        │                 │
        ▼                 ▼
┌──────────────────┐  ┌──────────────────┐
│ Permanent        │  │ Contract         │
│ Employee         │  │ Employee         │
└──────────────────┘  └──────────────────┘
     (salary)          (Hours_worked)

Permanent employee and contract employee
            covers employee
```

---

### Partial Specialization

```
           ┌──────────┐
           │  Person  │
           └─────┬────┘
              (NIC) - underlined
              (name)
              (age)
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
       (GPA)              (salary)

    (No covering constraint)
```

---

## Summary

### Key Concepts

**Entity:**
- Object in real world with independent existence
- Represented by **rectangle**

**Attributes:**
- Describe entities
- Types: Simple, Composite, Multi-valued, Derived
- **Key attribute** uniquely identifies entity

**Relationships:**
- Association among entities
- Represented by **diamond**
- Types: Binary, Ternary, Quaternary

**Cardinality:**
- 1:1, 1:N, N:M

**Participation:**
- Total (double line)
- Partial (single line)

**Weak Entity:**
- Depends on another entity
- Has partial key
- Represented by **double rectangle**

**EER Concepts:**
- ISA relationships
- Specialization/Generalization
- Overlapping constraint (disjoint vs overlapping)
- Covering constraint (total vs partial specialization)

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the course web

✅ Try out the **tutorial** and bring the answers to the class

---

**End of Lecture 04**
