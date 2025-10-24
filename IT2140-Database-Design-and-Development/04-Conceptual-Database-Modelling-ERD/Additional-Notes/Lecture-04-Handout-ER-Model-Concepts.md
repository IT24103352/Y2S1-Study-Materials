# Lecture 04 Handout - ER Model Concepts

**Course:** IT2140 - Database Design and Development  
**Lecture:** 04 Handout  
**Topic:** ER Model - Entities, Attributes, and Relationships  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Department:** Information Technology  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Time (UTC):** 09:13:04

---

## Entities and Attributes

### 1. Entity

An entity is a thing in the real world with an independent existence.

**Examples:** student, employee, university, company

A collection of similar entities is called an entity set.

**Example:** all students in a university

**Diagram:**
```
┌──────────┐
│ Student  │
└──────────┘
```

---

### 2. Attributes

Attributes are properties that describes an entity.

**Example:** name, age and gender of a student

All entities in a given entity set have the same attributes.

**Diagram:**
```
        ┌──────────┐
        │ Student  │
        └─────┬────┘
              │
      ┌───────┼───────┐
      │       │       │
      ▼       ▼       ▼
   (name)  (age)  (gender)
```

---

### 3. Composite Attributes

Attributes that can be divided into smaller subparts which represent more basic attributes with independent meaning.

**Example:** address can have a street and a city

**Diagram:**
```
        ┌──────────┐
        │ Student  │
        └─────┬────┘
              │
      ┌───────┼───────┬──────────┐
      │       │       │          │
      ▼       ▼       ▼          ▼
   (name)  (age)  (gender)  (address)
                                 │
                            ┌────┴────┐
                            │         │
                            ▼         ▼
                        (street)   (city)
```

---

### 4. Multi-valued Attribute

Attribute that can hold different number of values for it at a time.

**Example:** a student can have multiple phone numbers such as his home phone and mobile phone

**Diagram:**
```
        ┌──────────┐
        │ Student  │
        └─────┬────┘
              │
      ┌───────┼───────┬──────────┬──────────┐
      │       │       │          │          │
      ▼       ▼       ▼          ▼          ▼
   (name)  (age)  (gender)  (address)  ╔════════╗
                                 │       ║ phone  ║
                            ┌────┴────┐  ╚════════╝
                            │         │  (double-lined
                            ▼         ▼   = multi-valued)
                        (street)   (city)
```

---

### 5. Key

A key is a minimal set of attributes whose values uniquely identify an entity in the set.

**Example:** student number and NIC

There could be more than one candidate keys. If so, one of those is assigned as the primary key.

**Diagram:**
```
        ┌──────────┐
        │ Student  │
        └─────┬────┘
              │
      ┌───────┼───────┬──────────┬──────────┬────────────┬──────────┐
      │       │       │          │          │            │          │
      ▼       ▼       ▼          ▼          ▼            ▼          ▼
   (name)  (age)  (gender)  (address)  ╔════════╗  (studentNo) (NIC)
                                 │       ║ phone  ║   ─────────  ───
                            ┌────┴────┐  ╚════════╝  (underlined
                            │         │              = key)
                            ▼         ▼
                        (street)   (city)
```

---

## Binary Relationships

### 1:1 Relationships

One entity from an entity set can be associated with at most one entity of another entity set and vice versa.

**Example:** a person entity and a passport entity

**Diagram:**
```
┌────────┐         ┌───────┐         ┌──────────┐
│ Person │────1────│ owns  │────1────│ Passport │
└───┬────┘         └───────┘         └─────┬────┘
    │                                      │
 ┌──┴──┐                              ┌────┴────────┐
 │     │                              │             │
 ▼     ▼                              ▼             ▼
(NIC) (name)                    (PassportNo)  (expiryDate)
 ───                             ───────────
(underlined)                    (underlined)
```

**Explanation:** A person owns only one passport. A given passport is owned by only one person.

---

### 1:N Relationships

One entity from entity set can be associated with more than one entities of another entity set. However an entity from latter entity set can be associated with at most one entity of the former.

**Example:** Department entity and employee entity

**Diagram:**
```
┌────────────┐         ┌──────┐         ┌──────────┐
│ Department │────1────│ has  │────N────│ Employee │
└──────┬─────┘         └──────┘         └─────┬────┘
       │                                      │
   ┌───┴───┐                             ┌────┴────┐
   │       │                             │         │
   ▼       ▼                             ▼         ▼
(deptNo) (dname)                       (eNo)    (ename)
 ──────                                 ───
(underlined)                          (underlined)
```

**Explanation:** Department has many employees. A given employee belongs to only one department.

---

### M:N Relationship

One entity from an entity set can be associated with more than one entity from another set and vice versa.

**Example:** student entity and course entity

**Diagram:**
```
┌─────────┐         ┌─────────────┐         ┌────────┐
│ Student │────N────│ Enroll for  │────M────│ Course │
└────┬────┘         └─────────────┘         └───┬────┘
     │                                          │
  ┌──┴──┐                                   ┌───┴────┐
  │     │                                   │        │
  ▼     ▼                                   ▼        ▼
(sNo) (gpa)                               (CID)   (cname)
```

**Explanation:** Student can enroll for many courses. A given course can have many students enrolled.

---

### Descriptive Attributes

Descriptive attributes describes the relationships. They could be used to store information about relationships.

**Example:** enrollment information (date & intake)

**Diagram:**
```
┌─────────┐         ┌─────────────┐         ┌────────┐
│ Student │────N────│ Enroll for  │────M────│ Course │
└─────────┘         └──────┬──────┘         └────────┘
                           │
                      ┌────┴─────┐
                      │          │
                      ▼          ▼
              (enrolledDate) (intake)
```

---

### Participation Constraints

**Total Participation:**
When each entity in the entity set occurs in at least one relationship in that relationship set.

**Example:** A department must be managed by an employee

**Partial Participation:**
When each entity in the entity set may not occur in at least one relationship in that relationship set.

**Example:** An employee may or may not manage a department

**Diagram:**
```
┌──────────┐         ┌────────┐         ┌────────────┐
│ Employee │────1────│ manage │────1────│ Department │
└──────────┘         └────────┘         └────────────┘
     │                                        │
  ┌──┴──┐                                 ┌──┴───┐
  │     │                                 │      │
  ▼     ▼                                 ▼      ▼
(eNo) (ename)                           (dNo) (dname)
 ───                                     ───
```

---

## Special Entities & Relationships

### Weak Entity

An Entity that do not have key attributes of its own is called a weak entity.

A weak entity can be identified uniquely only by considering some of its attributes in conjunction with the primary key of another entity.

**Example:** A course can have many assessments such as mid-term test, final exam and assignments. Each assessment is uniquely identified with reference to the course its associated with (ex: DMS final exam, OOP assignment).

**Diagram:**
```
┌────────┐         ╔════════╗         ╔════════════╗
│ Course │────1────║  has   ║════N════║ Assessment ║
└───┬────┘         ╚════════╝         ╚══════┬═════╝
    │              (double-lined)            │
 ┌──┴───┐          (identifying         ┌────┴────┐
 │      │           relationship)        │         │
 ▼      ▼                                ▼         ▼
(cId) (cName)                          (name)   (weight)
 ───                                   (partial key)
(underlined)

Note: Assessment is double-lined rectangle (weak entity)
```

---

### Ternary Relationships

A ternary relationship is when three entities participate in the relationship.

**Example:** In a supermarket an employee takes an order from a customer

**Diagram:**
```
      ┌──────────┐
      │ Employee │
      └─────┬────┘
            │
         ┌──┴──┐
         │     │
         ▼     ▼
       (eId) (eName)
        ───
            │
            │
            ▼
       ┌────────┐
       │ place  │◄────────────┐
       └───┬────┘             │
           │                  │
           │ (datetime)       │
           │                  │
           ▼                  │
      ┌────────┐         ┌────────┐
      │ Order  │         │Customer│
      └───┬────┘         └───┬────┘
          │                  │
       ┌──┴──┐            ┌──┴───┐
       │     │            │      │
       ▼     ▼            ▼      ▼
     (oId) (value)      (cId) (cName)
      ───                ───
```

---

**End of Lecture 04 Handout**
