# Lecture 04 - Use Case Diagrams

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:10:31

---

## Table of Contents

- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [Requirements Specification](#requirements-specification)
- [What is a Use Case Diagram](#what-is-a-use-case-diagram)
- [Use Cases for Requirements Engineering](#use-cases-for-requirements-engineering)
- [Components of a Use Case Diagram](#components-of-a-use-case-diagram)
- [System](#system)
- [Actors](#actors)
- [Use Cases](#use-cases)
- [Relationships](#relationships)
- [Use Case Scenarios](#use-case-scenarios)
- [Use Case Specification Template](#use-case-specification-template)
- [Summary](#summary)

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- Introduction to requirement specification – Graphical Notations
- Identify and describe key components of use case diagrams
- Applying use case diagrams in real world applications and Construct use case diagrams for real-world software applications
- Develop detailed use case scenarios

---

## Requirements Specification

### Purpose

Document Requirements identified in requirements gathering and analysis.

---

### Using Graphical Notations

**Two main types:**

1. **Use Case Diagrams and Use Case Scenarios**
2. **Activity Diagrams**

---

## What is a Use Case Diagram?

### Use Case Model

**Purpose:**
- Graphically represent the proposed functionality of the new system
- Use Case Model captures the **functional requirements** of a system
- Help to demonstrate the **high-level behavior** of the proposed system to the clients

---

## Use Cases for Requirements Engineering

### Communication Tool

**Use case modelling supports Requirements Specification**

- Use cases act as a **means of communicating** with stakeholders about what the system is intended to do
- It is an excellent way to communicate to management, customers, and other non-development people:
  - **WHAT** a system will do when it is completed

---

### Important Note

**But...** it does not go into detail of **HOW** a system will do anything.

---

## Components of a Use Case Diagram

### Four Basic Components

To construct a Use Case diagram, there are **FOUR basic components:**

1. **System:** something that performs function(s)
2. **Actors:** the roles adopted by those participating
3. **Use Cases:** high level activities to be supported by the system
4. **Relationships / Links:** which actors are involved in which use cases (dependency, generalization, and association)

---

## System

### Definition

**System** is something which performs function(s).

---

### System Boundary

**System Boundary** represents the boundary between the (physical) system and the actors who interact with the (physical) system.

---

### Notation

```
┌─────────────────────────────────────┐
│                                     │
│      Inventory Management System    │  ← System Name
│                                     │
│   (Use cases appear inside here)    │
│                                     │
└─────────────────────────────────────┘
        ↑
    System Boundary (Rectangle)
```

---

### Example - Inventory Management System

```
        Inventory Manager                    Admin
              │                                │
              │                                │
    ┌─────────┴────────────────────────────────┴──────┐
    │    Inventory Management System                  │
    │                                                  │
    │         ┌──────────────┐                        │
    │         │ Login/Logout │                        │
    │         └──────────────┘                        │
    │                                                  │
    │         ┌──────────────┐                        │
    │         │ Place Order  │                        │
    │         └──────────────┘                        │
    │                                                  │
    └──────────────────────────────────────────────────┘
            │                                │
      (Association lines connect actors
       to use cases inside the system)
```

---

## Actors

### Definition

- A Use Case Diagram shows the **interaction between the system and entities external to the system**
- These external entities are referred to as **Actors**

---

### Actor Characteristics

**Actors represent roles** which may include:
- Human users
- External hardware
- Other systems

**Key Point:**
- Actors have **direct interactions** with the system

---

### Notation

```
    ┌─┐
    │O│  ← Actor
    └┬┘
     │
    / \
   ┌───┐
   │   │
   └───┘
    
  Actor Name
```

---

### Activity 01

**Task:** Identify Actors for a **Hotel Management system**

---

## Use Cases

### Definition

- A **Use Case** is a unit of behavior in the proposed system
- It represents a **unit of interaction** between a user and the proposed system

---

### Naming Convention

**Use case name** typically has a **verb-noun phrase**

---

### Notation

```
  ┌─────────────────┐
 (                   )
(   Reserve a Room   )  ← Use Case (Oval shape)
 (                   )
  └─────────────────┘
```

---

## How to Identify a Use Case?

### Questions to Ask

Consider what **each actor requires** of the system.

For each actor, human or not, ask yourself the following questions in order to figure out the relevant use cases:

1. What are the **primary tasks** the actor wants the system to perform?
2. Will the actor **create, store, change, remove, or read** data in the system?
3. Will the actor need to **inform the system** about sudden, external changes?
4. Does the actor need to be **informed** about certain occurrences in the system?
5. Will the actor perform a **system start-up or shutdown**?

---

### Activity 02

**Task:** Identify Use Cases for a **Hotel Management system**

---

## Relationships

### Main Types

Below mentioned are the **main types of relationships** used in use case diagrams:

```
                  Relationships
                       │
           ┌───────────┴───────────┐
           │                       │
    Actor Relationships    Use Case Relationships
           │                       │
      ┌────┴────┐         ┌────────┼────────┐
      │         │         │        │        │
Association  Generalization  Include  Extend  Generalization
```

---

## Actor to Use Case Relationships

### Association

**Definition:**  
Indicates that an **actor participates in** (i.e. communicates with) the use case.

---

### Notation

```
    Actor
      │
      │  ← Solid line (Association)
      │
      ▼
┌──────────┐
│ Use Case │
└──────────┘
```

---

### Example - University Registration System

```
  Student                           Administrator
     │                                    │
     │                                    │
  ┌──┴────────────────────────────────────┴───┐
  │   University Registration System          │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ Register into the system    │           │
  │  └────────────────────────────┘           │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ Sign-on to the system       │           │
  │  └────────────────────────────┘           │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ Browse course catalog       │           │
  │  └────────────────────────────┘           │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ Add course(s) to cart       │           │
  │  └────────────────────────────┘           │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ Place order for enrollment  │           │
  │  └────────────────────────────┘           │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ View pending orders         │           │
  │  └────────────────────────────┘           │
  │                                            │
  │  ┌────────────────────────────┐           │
  │  │ Approve order/enroll student│           │
  │  └────────────────────────────┘           │
  │                                            │
  └────────────────────────────────────────────┘

(Student connects to multiple use cases)
(Administrator connects to relevant administrative use cases)
```

---

### Activity 03

**Task:** Draw the Actors and Associations for a **Hotel Management System**

---

## Actor to Actor Relationships

### Generalization

**Concept:**
- Actor Generalization is drawn from the concept of **inheritance** in Object Oriented Programming

**Characteristics:**
- A **child actor Inherits** all of the characteristics and behavior of the parent actor
- Can **add, modify, or ignore** any of the characteristics and behaviors of the parent actor

---

### Notation

```
    Child Actor
         │
         │  ← Solid line with hollow triangle
         ▼
    Parent Actor
```

---

### Example - Actor Generalization

```
              Administrator
                    △
                    │  (Generalization - hollow triangle)
                    │
                 Manager
                    △
                    │
                    │
                Attendant
```

**Hierarchy:**
- **Administrator** (most rights)
- **Manager** (inherits from Administrator + own rights)
- **Attendant** (inherits from Manager + own rights)

---

### Quick Question

**Who has the most rights in the system?**

**Answer:** Administrator (top of the hierarchy)

---

### Example - Hotel Management System

```
                 Manager
                    △
                    │
                    │
              Receptionist         Guest
                    │                │
                    │                │
         ┌──────────┴────────────────┴─────┐
         │  Hotel Management System        │
         │                                 │
         │  ┌─────────────────────┐        │
         │  │ Search Available    │        │
         │  │ Rooms               │        │
         │  └─────────────────────┘        │
         │                                 │
         │  ┌─────────────────────┐        │
         │  │ Assign Rooms        │        │
         │  └─────────────────────┘        │
         │                                 │
         │  ┌─────────────────────┐        │
         │  │ Calculate Bills     │        │
         │  └─────────────────────┘        │
         │                                 │
         │  ┌─────────────────────┐        │
         │  │ Approve Discounts   │        │
         │  └─────────────────────┘        │
         │                                 │
         └─────────────────────────────────┘
```

---

### More Examples - Library Management System

```
     System Admin
          △
          │
      Librarian
          △
          │
   Library Assistant
          △
          │
    Staff Member
          △
          │
   Student Member
          △
          │
       Guest
```

**Hierarchy shows progressive access rights from Guest (least) to System Admin (most)**

---

## Include Relationship

### Definition

- The **base use case explicitly incorporates** the behavior of another use case at a location specified in the base
- The **included use case never stands alone**. It only occurs as a part of some larger base that includes it

---

### Notation

```
┌──────────────┐
│  Use Case A  │  ← Base use case
└──────┬───────┘
       │
       │  <<include>>  (dashed arrow)
       │
       ▼
┌──────────────┐
│  Use Case B  │  ← Included use case
└──────────────┘
```

---

### Purpose

Enables us to **avoid describing the same flow of events several times** by putting the common behavior in a use case of its own.

---

### Example - ATM System

```
      Customer
          │
    ┌─────┼─────────────────┐
    │     │                 │
    ▼     ▼                 ▼
┌─────────────┐  ┌─────────────┐  ┌─────────────┐
│  Withdraw   │  │  Transfer   │  │  Check      │
│  Money      │  │  Money      │  │  Balance    │
└──────┬──────┘  └──────┬──────┘  └──────┬──────┘
       │                │                │
       │  <<include>>   │  <<include>>   │  <<include>>
       │                │                │
       └────────────────┼────────────────┘
                        ▼
                 ┌─────────────┐
                 │  Validate   │
                 │  User       │
                 └─────────────┘
```

**All three operations include the common "Validate User" use case**

---

### Activity 04

**Scenario:**  
Learning Management System

A guest can search for available courses and view their details. If the guest wants to attend a workshop, they must register in the system to proceed.

**Task:** Draw the use case diagram showing the include relationship.

---

### Include Relationship - More Examples

**Learning Management System**

```
       Guest                    Registered User
         │                            △
         │                            │
         │                            │
    ┌────┴────────────────────────────┴────┐
    │  Learning Management System          │
    │                                      │
    │  ┌────────────────┐                  │
    │  │ Search Item    │                  │
    │  └────────────────┘                  │
    │                                      │
    │  ┌────────────────┐                  │
    │  │ View Details   │                  │
    │  └────────────────┘                  │
    │                                      │
    │  ┌────────────────┐                  │
    │  │ Attend         │                  │
    │  │ Workshops      │──┐               │
    │  └────────────────┘  │               │
    │                      │ <<include>>   │
    │  ┌────────────────┐  │               │
    │  │ Buy a Course   │──┤               │
    │  └────────────────┘  │               │
    │                      │               │
    │  ┌────────────────┐  │               │
    │  │ Sit For Exam   │──┤               │
    │  └────────────────┘  │               │
    │                      │               │
    │                      ▼               │
    │              ┌────────────────┐      │
    │              │ Register       │──┐   │
    │              └────────────────┘  │   │
    │                                  │   │
    │                           <<include>>│
    │                                  │   │
    │                                  ▼   │
    │                      ┌────────────────┐
    │                      │ Check Deposit  │
    │                      └────────────────┘
    └──────────────────────────────────────┘
```

---

## Extend Relationship

### Definition

- The **base use case implicitly incorporates** the behavior of another use case at certain points called **extension points**
- The **base use case may stand alone**, but under certain conditions its behavior may be extended by the behavior of another use case

---

### Notation

```
      Actor
        │
        │
        ▼
  ┌───────────────┐
  │  Use Case A   │  ← Base use case (mandatory/regular behavior)
  │               │
  │ Ext.P: X=0    │  ← Extension Point with condition
  └───────────────┘
        △
        │
        │  <<extend>>  (dashed arrow points TO base)
        │
  ┌───────────────┐
  │  Use Case B   │  ← Extended use case (optional behavior)
  └───────────────┘
```

---

### Example - University Enrollment

```
      Actor
        │
        │
        ▼
  ┌──────────────────┐
  │  Enroll In Uni.  │
  │                  │
  │  Ext. Point:     │
  │  foreign stu     │
  └──────────────────┘
        △
        │
        │  <<extend>>
        │
  ┌──────────────────┐
  │  Perform Visa    │
  │  Check           │
  └──────────────────┘
```

**When a student enrolls in the university, they perform a visa check if he/she is a foreign student.**

---

### Activity 05

**Scenario:**  
"Research Rabbit" is one of the popular systems for undergraduate students to find supervisors for their research interests.

- Any user can search groups that are available
- If they are interested in knowing more information, they could request more details of the research group
- When they search, if an interested research area isn't available, they can suggest the research area to the system
- Then the user can submit an expression of interest (EOI) to the system to proceed with finding the research and the supervisor
- If EOI is not properly filled, the system will reject the request of the user
- Also, for successful EOIs, provide the prospect registration link

**Task:** Draw the use case diagram.

---

### More Examples - SLIIT Library System

```
       Guest              Student Member
         │                      △
         │                      │
    ┌────┴──────────────────────┴────┐
    │  SLIIT Library System          │
    │                                │
    │  ┌─────────────────────┐       │
    │  │ Search Item         │       │
    │  │                     │       │
    │  │ Ext.P: If not found │       │
    │  └─────────────────────┘       │
    │          △                     │
    │          │                     │
    │          │ <<extend>>          │
    │  ┌─────────────────────┐       │
    │  │ Suggest add item    │       │
    │  │ to library          │       │
    │  └─────────────────────┘       │
    │                                │
    │  ┌─────────────────────┐       │
    │  │ Borrow Book         │       │
    │  │                     │───┐   │
    │  │ Ext.P: Overdue books│   │   │
    │  └─────────────────────┘   │   │
    │          │                 │   │
    │          │ <<include>>     │   │
    │          │                 │   │
    │          ▼                 │   │
    │  ┌─────────────────────┐   │   │
    │  │ Validate Member     │   │   │
    │  └─────────────────────┘   │   │
    │                            │   │
    │          △                 │   │
    │          │                 │   │
    │          │ <<extend>>      │   │
    │  ┌─────────────────────┐   │   │
    │  │ Calculate Fine      │   │   │
    │  └─────────────────────┘   │   │
    │                                │
    └────────────────────────────────┘
```

---

## Generalization Relationship

### Use Case Generalization

**Definition:**
- The **child use case inherits** the behavior and meaning of the parent use case
- The child may **add to or override** the behavior of its parent

---

### Notation

```
┌──────────────────┐
│ Child Use Case   │
└─────────┬────────┘
          │
          │  ← Solid line with hollow triangle
          ▼
┌──────────────────┐
│ Parent Use Case  │
└──────────────────┘
```

---

### Example - Payment System

```
      Customer
          │
          │
          ▼
    ┌─────────────┐
    │ Make Payment│  ← Parent Use Case
    └──────△──────┘
           │
    ┌──────┼───────┬──────┐
    │      │       │      │
    │      │       │      │
┌────┴──┐ ┌┴────┐ ┌┴──────┴┐
│Pay via│ │Pay  │ │Pay via │  ← Child Use Cases
│Paypal │ │via  │ │EFT     │
│       │ │Card │ │        │
└───────┘ └─────┘ └────────┘
```

---

### Activity 06 - Student Enrollment System

**Scenario:**  
"St John York University" is a famous UK based university that supports students who seek postgraduate courses in UK.

- Any person can search for available postgraduate by giving their age, current qualification, area of study, and study level
- This search can be extended to two types: research programs and taught programs
- In searching, if the user needs, the system will show the enrollment requirements including language requirement
- Registered student can book a discussion with the counselors based on their expertise areas
- Counselors may categorize into three types according to their expertise areas: IT, business, and science
- Additionally, a registered student has access to all the features available to a normal user

**Task:** Draw the complete use case diagram.

---

## Relationship Summary

### Kinds of Use Case Relationships

| **Relationship** | **Function** | **Notation** |
|:---|:---|:---|
| **Association** | The communication path between an actor and a use case that it participates in | ────── (solid line) |
| **Extend** | The insertion of additional behavior into a base use case that does not know about it | <<extend>> (dashed arrow) |
| **Include** | The insertion of additional behavior into a base use case that explicitly describes the insertion | <<include>> (dashed arrow) |
| **Use Case Generalization** | A relationship between a general use case and a more specific use case that inherits and adds features to it | ──────▷ (solid line with hollow triangle) |

---

### Activity 07 - Self Study

**Scenario:**  
"Dirgayu" is an application for patients' management.

- Registered nurse can admit patient through the system
- When admitting the patient, system needs vaccination details to complete the process
- If foreign patient, system needs a valid passport to proceed with admitting procedure
- Once completed the admitting process, system will show causality ward number and send e-card to the ward
- Medical officer who assigned to that ward can check e-card to proceed with the medical appointment
- He can enter details to the system according to severity level
- Medical record can be categorized to severe redline and low risk blue line
- Medical officer can do all the tasks which registered nurse can do

**Task:** Draw a partial use case diagram for the given case study.

---

## Use Case Scenarios

### Definition

A **Scenario** is a formal description of the **flow of events** that occur during the execution of a Use Case instance.

**Purpose:**
- It defines the **specific sequence of events** between the system and the external Actors

---

### Main Scenario

There is usually a **Main scenario**, which describes what happens when everything goes to plan.

**Characteristics:**
- Written under the assumption that everything is okay
- No errors or problems occur
- Leads directly to the desired outcome of the use-case

---

### Alternative Scenarios

Other scenarios describe what happens when **variations** to the Main scenario arise, often leading to different outcomes.

---

### Flow of Events Should Include

- **How and when** the use case starts and ends
- **When** the use case interacts with the actors
- **What objects** are exchanged
- The **basic flow** and
- **Alternative flows (exceptional)** of the behavior

---

## Use Case Specification Template

### Template Structure

**Use Case Sample Template includes:**

1. Use Case ID and name
2. Characteristic Information
   - Goal in Context
   - Scope
   - Level
3. Pre-Conditions
4. Primary Actor
5. Main Success Scenario Steps
6. Extensions
7. Optional Information

---

### Detailed Template Fields

| **Field** | **Description** |
|:---|:---|
| **Number** | Unique use case number |
| **Name** | Brief noun-verb phrase |
| **Summary** | Brief summary of use case major actions |
| **Priority** | 1-5 (1=lowest priority, 5=highest priority) |
| **Preconditions** | What needs to be true before use case "executes" |
| **Postconditions** | What will be true after the use case successfully "executes" |
| **Primary Actor(s)** | Primary actor name(s) |
| **Secondary Actor(s)** | Secondary actor name(s) |
| **Trigger** | The action that causes this use case to begin |

---

### Main Scenario Format

| **Step** | **Action** |
|:---|:---|
| This is the "main success scenario" or "happy path" | |
| Step # | Description of steps in successful use case "execution" |
| | This should be in a "system-user-system, etc." format |

---

### Extensions Format

| **Branching Action** | **Step** |
|:---|:---|
| Step # | Alternative paths that the use case may take |

---

### Open Issues

| **Issue #** | **Description** |
|:---|:---|
| | Issues regarding the use case that need resolution |

---

## Use Case Specification Template - Example

### Example: Withdraw Money

**Use Case Diagram:**

```
  Bank Customer
       │
       │
       ▼
 ┌──────────────┐
 │  Withdraw    │
 │  Money       │
 └──────────────┘
```

---

### Specification Table

| **Field** | **Value** |
|:---|:---|
| **Number** | 1 |
| **Name** | Withdraw Money |
| **Summary** | User withdraws money from one of his/her accounts |
| **Priority** | 5 |
| **Preconditions** | User has logged into ATM |
| **Postconditions** | User has withdrawn money and received a receipt |
| **Primary Actor(s)** | Bank Customer |
| **Trigger** | User has chosen to withdraw money |

---

### Main Scenario

| **Step** | **Action** |
|:---|:---|
| 1 | System displays account types |
| 2 | User chooses account type |
| 3 | System asks for amount to withdraw |
| 4 | User enters amount |
| 5 | System debits user's account and dispenses money |
| 6 | User removes money |
| 7 | System prints and dispenses receipt |
| 8 | User removes receipt |
| 9 | System displays closing message and dispenses user's ATM card |
| 10 | System displays welcome message |
| 11 | User removes card |

---

### Extensions

| **Step** | **Branching Action** |
|:---|:---|
| 5a | System notifies user that account funds are insufficient |
| 5b | System gives current account balance |
| 5c | System exits option |

---

### Open Issues

| **Issue #** | **Description** |
|:---|:---|
| 1 | Should the system ask if the user wants to see the balance? |

---

## Activity 08

**Task:** Write a Use Case Scenario for **"Borrowing a Book"**

You could consider the process given below as the manual system procedure:

- The member identifies him or herself to the librarian and indicates which books they wish to borrow
- If it is acceptable for them to borrow these books (i.e. they are not marked "for reference only", or the number of books on loan to the customer is less than some predetermined maximum), then the books are loaned to the customer for a specified loan period
- The member's loan record is updated to reflect the loaned books
- The library's card index system is updated to show who has borrowed the books

---

## Activity Sample Answer - Borrow a Book

### Basic Information

| **Field** | **Value** |
|:---|:---|
| **Number** | 1 |
| **Name** | Borrow a book |
| **Summary** | User borrows a specific book |
| **Preconditions** | User has access to the system |
| **Postconditions** | User gets the confirmation |
| **Primary Actor(s)** | Library User |
| **Trigger** | User has chosen to borrow a book |

---

### Main Scenario

| **Step** | **Action** |
|:---|:---|
| 1 | User logs in to the system |
| 2 | User scans the ISBN of the book |
| 3 | System checks the validity of the request |
| 4 | System shows the summary of the request with the user's membership details |
| 5 | User confirms the request summary |
| 10 | System displays the confirmation message |

---

### Extensions

| **Step** | **Branching Action** |
|:---|:---|
| 1a | System notifies login details are invalid, exits |
| 1b | System notifies invalid membership, exits |
| 2a | System cannot read ISBN, ask the user to enter the ISBN manually |
| 3a | System notifies the title is for "Reference Only", exits |
| 3b | System notifies the user has exceeded the number of books he can borrow, exits |
| 5a | User Cancels the request, system exits |

---

## Summary

### Key Concepts

**Use Case Diagrams:**
- Visual representation of functional requirements
- Four main components: System, Actors, Use Cases, Relationships

**Actors:**
- External entities that interact with the system
- Can be human users, hardware, or other systems
- Actor generalization shows inheritance hierarchy

**Use Cases:**
- Unit of behavior/interaction
- Named with verb-noun phrases
- Represent high-level functionality

---

### Relationships

**Association:**
- Actor participates in use case

**Include:**
- Common behavior extracted to avoid repetition
- Included use case never stands alone

**Extend:**
- Optional behavior added under certain conditions
- Base use case can stand alone

**Generalization:**
- Inheritance relationship between actors or use cases

---

### Use Case Scenarios

**Purpose:**
- Formal description of flow of events
- Main scenario (happy path)
- Extensions (alternative flows)

**Components:**
- Preconditions and postconditions
- Step-by-step actions
- Branching actions for exceptions

---

## References

### Books

**Writing Effective Use Cases**  
By Dr. Alistair Cockburn

**UML 2 Bible**

---

**End of Lecture 04**

**Thank You!**
