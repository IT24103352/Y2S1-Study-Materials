# Lecture 05 - Activity Diagrams

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:17:20

---

## Table of Contents

- [Content Overview](#content-overview)
- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [What is an Activity Diagram](#what-is-an-activity-diagram)
- [When to Use Activity Diagrams](#when-to-use-activity-diagrams)
- [Elements of an Activity Diagram](#elements-of-an-activity-diagram)
- [Initial and Final Nodes](#initial-and-final-nodes)
- [Action Node](#action-node)
- [Transition](#transition)
- [Decision Node](#decision-node)
- [Merge Node](#merge-node)
- [Call Action/Sub Activity](#call-action-sub-activity)
- [Forks and Joins](#forks-and-joins)
- [Iteration](#iteration)
- [Common Mistakes](#common-mistakes)
- [Partitioning](#partitioning)
- [Summary](#summary)

---

## Content Overview

**Topics Covered:**

- Introduction
- Elements of Activity diagram
- Partitioning an activity diagram
- Applying activity diagrams in real world applications

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- Define activity diagrams and explain their purpose in **modeling workflows and system behavior**
- Identify the main elements of an activity diagram, including **actions, transitions, decision/merge nodes, forks/joins, and swimlanes**
- Differentiate between **branching, merging, forking, and joining** in activity diagrams
- **Interpret** activity diagrams to describe the flow of activities for a given business or system process
- **Create accurate** activity diagrams from textual scenarios, applying correct UML notation

---

## What is an Activity Diagram?

### Definition

An **Activity Diagram** models:

- **Activities** of a system
- **Dependencies** between activities
- **Represents Workflows**

---

### Example: Order Workflow

```
       Users
         │
         ▼
  ┌──────────────────┐
  │ Put Order Online │
  └────────┬─────────┘
           │
           ▼
  ┌──────────────────────┐
  │ Choose Payment Type  │
  └──────┬───────────┬───┘
         │           │
    ┌────┴───┐  ┌───┴────┐
    │        │  │        │
    ▼        │  ▼        │
Credit Card  │  Phone/Fax│
Paypal       │  Order    │
    │        │  │        │
    │        │  ▼        │
    │        │ Invoice   │
    │        │  │        │
    │        │  ▼        │
    │        │  Pay      │
    │        │  │        │
    ▼        │  ▼        │
  Submit     │ Get Payment
    │        │  │        │
    └────────┴──┴────────┘
             │
             ▼
    Order Process System
             │
        ┌────┴────┐
        │         │
        ▼         ▼
   Send License  Confirm
   Information    Order
```

---

## When to Use Activity Diagrams?

### Common Use Cases

- **Modeling business processes**
- **Analyzing system functionality** to identify the use cases
- **Analyzing individual use cases** in detail
- **Clarifying concurrency issues**

---

## A Simple Activity Diagram

### Basic Flow Example

```
      ●  ← Start Node
      │
      ▼
┌─────────────┐
│ Data Entry  │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│ Processing  │
└──────┬──────┘
       │
       ▼
┌─────────────────┐
│ Generate Output │
└────────┬────────┘
         │
         ▼
        ◉  ← End Node
```

---

## Elements of an Activity Diagram

### Main Components

**Action:**
- Simple Action
- Call Action

**Transition**

**Controls:**
- Initial/Start
- Final/End

**Nodes:**
- Decision/Branch
- Merge
- Fork
- Join

---

## Initial and Final Nodes

### Definition

Represent the **beginning and end** of a diagram respectively.

---

### Notations

**Initial/Start Node - Filled Circle**

```
  ●  ← Start Node
```

**Final/End Node - Bull's-eye (Circle within circle)**

```
  ◉  ← End Node
```

---

## Action Node

### Definition

- An **action** is some task which needs to be done
- Each action can be **followed by another action**
- An **activity** is a **sequence of actions**

---

### Notation

**Represented with a rounded rectangle**

```
┌──────────────────┐
│ Generate Report  │  ← Action Node (rounded rectangle)
└──────────────────┘
```

---

### Naming Convention

**Text in the action box should represent an activity:**
- **Verb phrase** in **present tense**

**Examples:**
- "Generate Report"
- "Validate Membership"
- "Process Payment"

---

## Transition

### Definition

- **Activity/Action nodes** are connected by **Transitions**
- Also known as a **control flow/directed flow/edge**
- When the execution of the node completes, execution proceeds to the node found on the **output flow**

---

### Notation

```
┌──────────────┐        ┌──────────────┐
│ First Action │───────▶│Second Action │
└──────────────┘        └──────────────┘
       ↑                       ↑
   Action Node            Transition (Arrow)
```

---

## Activity Diagrams: Example

### DVD Rental System

```
      ●  Start Node
      │
      │  Transition
      ▼
┌────────────────────┐
│ Validate           │  ← Action State
│ Membership         │
└─────────┬──────────┘
          │  Transition
          ▼
┌────────────────────┐
│ Issue DVD(s)       │  ← Action State
└─────────┬──────────┘
          │  Transition
          ▼
┌────────────────────┐
│ Take Payment       │  ← Action State
└─────────┬──────────┘
          │  Transition
          ▼
         ◉  End Node
```

---

## Activity 1

**Scenario:**  
Draw an activity diagram for becoming a registered member of the **CA-Sri Lanka Learning Management System**.

**Process:**
1. To become a registered member, a student must first **upload a copy of their National Identity Card**
2. Then, a few **registration forms** need to be filled out to proceed
3. A **deposit of 3,000** must be paid to the bank, and the **payment slip** should be uploaded to the system
4. The system will then **generate an ID** and display it on the screen

---

## Decision Node

### Definition

A **Decision** represents a **conditional flow of control:**

- The alternatives are **mutually exclusive**
- Similar to **IF/ELSE statements** in programming languages like C/C++/Java

---

### Notation

**A Decision/Branch is represented by:**

- A **diamond** at the branch point
- A **guard expression** for each possibility

```
       │
       ▼
      ◇  ← Decision Node (Diamond)
     ╱ ╲
    ╱   ╲
   ▼     ▼
[Guard  [Guard
Expression] Expression]
```

---

### Decision Node Characteristics

**Decision/Branch points:**

- Each branch **must have a guard condition**
- The flow of control flows down the **single path** where the branch condition is **true**
- There is **no limit** on the number of branches each branch point may have

---

### Example: Order Processing

```
       ●
       │
       ▼
┌──────────────┐
│Receive Order │
└──────┬───────┘
       │
       ▼
      ◇
     ╱ ╲
    ╱   ╲
[order    [order
rejected]  accepted]
   │          │
   ▼          ▼
┌──────┐  ┌──────┐
│Close │  │Fill  │
│Order │  │Order │
└──┬───┘  └───┬──┘
   │          │
   └────┬─────┘
        ▼
        ◉
```

---

### Multiple Branches: Examples

```
              │
              ▼
             ◇
           ╱ │ ╲
          ╱  │  ╲
         ╱   │   ╲
[It's a  [It's a  [It's
 bird]    plane]  Superman]
```

**Alternative notation using [else]:**

```
      ◇
     ╱ ╲
    ╱   ╲
[specific    [else]
condition]
```

---

## Merge Node

### Definition

- A **merge point** is used to merge the flow of control from **two or more branch points** back together
- The **UML equivalent** of **ENDIF** in pseudo code, or **"}"** in C/C++/Java

---

### Notation

**The diamond is optional:**

```
    ╲     ╱
     ╲   ╱
      ╲ ╱
       ◇  ← Merge Node (Diamond)
       │
       ▼
```

---

### Example: DVD Rental with Merge

```
       ●
       │
       ▼
┌────────────────────┐
│ Validate           │
│ Membership         │
└─────────┬──────────┘
          │
          ▼
         ◇
        ╱ ╲
       ╱   ╲
[Valid      [Else]
Member]
   │          │
   ▼          ▼
┌──────┐  ┌──────────┐
│Issue │  │Call      │
│DVDs  │  │Police    │
└──┬───┘  └────┬─────┘
   │           │
   │     ┌─────┴─────┐
   │     │           │
   ▼     ▼           │
┌──────────┐         │
│Take      │         │
│Payment   │         │
└────┬─────┘         │
     │               │
     └───────┬───────┘
             ▼
            ◇  ← Merge Node
             │
             ▼
            ◉
```

---

## Activity 2

**Scenario:**  
Flight Booking in Qatar Airways

**Requirements:**
1. To book a ticket, a guest must first **become a member**
2. Members can book tickets in either **Economy Class** or **Business Class**
3. **Economy Class** includes a baggage allowance of **30 KG**
   - If they need more, they can pay for extra baggage and get an additional **10 KG**
4. **Business Class** includes **40 KG** of baggage by default
5. All members must **fill out a mandatory information form** and select a **travel date**
6. If a flight is **available** on the selected date, they can **book the ticket**
7. If **not**, they can **cancel the process** and exit the official website

---

## Call Action / Sub Activity

### Definition

**Sub activity** is an activity that is defined in **more detail on another activity diagram**.

---

### Notation

**It is indicated by a rake-style symbol (trident icon) within the action symbol.**

```
┌───────────────────┐
│                   │
│ Confirm Order     │
│      ⚏          │  ← Rake symbol indicates sub-activity
└───────────────────┘
```

---

### Example

```
Main Activity:
┌──────────────┐
│ Choose Menu  │
└──────┬───────┘
       │
       ▼
┌──────────────────┐
│ Choose Menu Item │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ Confirm Order    │
│       ⚏         │  ← Sub-activity
└──────────────────┘

Sub-Activity Detail (ConfirmOrder):
┌─────────────────────────┐
│ Provide Payment Details │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│ Provide Shipment Details│
└─────────────────────────┘
```

---

## Forks and Joins

### Definition

**Forks and joins** are used to show activities that can occur **at the same time (in parallel)**.

---

### Important Note

- This does **not** mean that the activities must occur **concurrently** in the finished software system
- It means that the **order of execution** of the activities can be **whatever is convenient** for the implementation

---

## Fork

### Definition

A **fork** is when a **single flow of control** splits into **two or more parallel (concurrent) flows of control**.

**Represents a split in the flow of control.**

---

### Notation

```
┌──────────────┐
│  Activity1   │
└──────┬───────┘
       │
       ▼
    ═══════  ← Fork Node (thick horizontal bar)
     │   │
     │   │
     ▼   ▼
┌────────┐ ┌────────┐
│Activity│ │Activity│
│   2    │ │   3    │
└────────┘ └────────┘
```

---

### Fork vs Branch

**Key Difference:**

- Unlike a **branch point**, the control flows down **all forked paths**
- With a **branch point**, the control flows down **only one path**

---

### Example: Making Coffee

```
       ●
       │
       ▼
┌──────────────────┐
│ Making Coffee    │
└────────┬─────────┘
         │
         ▼
      ═══════  ← Fork
       │   │
       │   │
       ▼   ▼
┌───────────┐  ┌─────────────┐
│  Adding   │  │  Steaming   │
│  Coffee   │  │  Milk       │
└───────────┘  └─────────────┘
```

---

## Join

### Definition

A **join** is when **two or more flows of control** merge into a **single flow of control**.

**Represents the merging of multiple flows of control back into one.**

---

### Important Rule

**Every fork must have a join associated with it.**

---

### Notation

```
┌────────────┐    ┌────────────┐
│ Concurrent │    │ Concurrent │
│  Action 1  │    │  Action 2  │
└──────┬─────┘    └──────┬─────┘
       │                 │
       │                 │
       └────────┬────────┘
                ▼
             ═══════  ← Join Node (thick horizontal bar)
                │
                ▼
         ┌──────────────┐
         │   Activity   │
         └──────────────┘
```

---

### Terminology

- A **flow of control** is also known as a **thread**
- A **synchronization bar** is used to model forking and joining and is modeled as a **thick horizontal or vertical bar**

---

### Fork and Join - Complete Example

```
       ●
       │
       ▼
┌──────────────┐
│   Activity   │
└──────┬───────┘
       │
       ▼
    ═══════  ← Fork Node
     │   │
     │   │
     ▼   ▼
┌────────┐ ┌────────┐
│Concur- │ │Concur- │
│rent    │ │rent    │
│Action1 │ │Action2 │
└────┬───┘ └───┬────┘
     │         │
     └────┬────┘
          ▼
       ═══════  ← Join Node
          │
          ▼
    ┌──────────┐
    │ Activity │
    └──────────┘
```

---

### Fork and Join - Example 1

**Scenario: Dinner Preparation**

```
       ●
       │
       ▼
┌──────────────────────┐
│ Buy Food and Drinks  │
└──────────┬───────────┘
           │
           ▼
        ═══════  ← Fork
         │   │
         │   │
         ▼   ▼
┌─────────────┐  ┌──────────────┐
│Cook Dinner  │  │Open Wine     │
│             │  │Bottle        │
└──────┬──────┘  └──────┬───────┘
       │                │
       └────────┬───────┘
                ▼
             ═══════  ← Join
                │
                ▼
         ┌────────────┐
         │Have Dinner │
         └─────┬──────┘
               │
               ▼
              ◉
```

---

### Fork and Join - Example 2

**Scenario: DVD Rental with Parallel Processing**

```
       ●
       │
       ▼
┌──────────────────┐
│ Validate Member  │
└────────┬─────────┘
         │
         ▼
        ◇
       ╱ ╲
      ╱   ╲
[valid     [else]
member]
   │          │
   ▼          ▼
═══════   ┌──────────┐
 │   │    │ Cancel   │
 │   │    │ Order    │
 │   │    └────┬─────┘
 ▼   ▼         │
┌────┐ ┌─────┐ │
│Upd │ │Issue│ │
│DVD │ │DVD  │ │
│Stat│ │     │ │
└─┬──┘ └──┬──┘ │
  │       │    │
  └───┬───┘    │
      ▼        │
   ═══════     │
      │        │
      ▼        │
┌──────────┐   │
│Take      │   │
│Payment   │   │
└────┬─────┘   │
     │         │
     └────┬────┘
          ▼
         ◉
```

---

## Activity 3

**Scenario:**  
Enrolling in University

**Requirements:**
1. Candidates who wish to register for university have to **fill out enrolment forms** and submit them promptly
2. The forms that are being **incorrectly filled will be rejected**
3. The candidates who submitted **properly filled forms** are being **enrolled**
4. The enrolled candidates then have to:
   - **Register for a seminar**
   - **Make payments** for initial tuition
5. **Meanwhile**, they have to **attend a university overview presentation** as a start
6. Then, only students can **start classes**

---

## Iteration

### Using Asterisk Notation

An **asterisk** inside an action state indicates that it may need to be **performed more than once**.

**Purpose:**
- This notation is used to show **iteration**, without the unnecessary details of a loop construct
- The next action state does **not occur** until the loop is finished

---

### Example with Asterisk

```
       ●
       │
       ▼
┌────────────────────┐
│ Validate           │
│ Membership         │
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│ Issue DVD      *   │  ← Asterisk indicates iteration
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│ Take Payment       │
└─────────┬──────────┘
          │
          ▼
         ◉
```

---

## Iteration - Alternative Method

### Using Decision Node

The use of the **asterisk** to represent an iteration will **not highlight:**
- The loop termination conditions
- Number of repetitions

**Therefore**, use of a **Decision Node** to represent an iteration would be **ideal**.

---

### Example with Decision Node

```
       ●
       │
       ▼
┌────────────────────┐
│ Validate           │
│ Membership         │
└─────────┬──────────┘
          │
          ▼
     ┌────────────┐
     │ Issue DVD  │◄─────┐
     └─────┬──────┘      │
           │             │
           ▼             │
          ◇              │
         ╱ ╲             │
        ╱   ╲            │
[need more  [else]       │
  DVD]                   │
     │                   │
     └───────────────────┘
           │
           ▼
    ┌─────────────┐
    │Take Payment │
    └──────┬──────┘
           │
           ▼
          ◉
```

---

## Common Mistakes

### Mistake 1: Incorrect Use of Fork/Merge

**Problem:**
- Using a **fork** when a **branch** is needed
- Using a **merge point** when a **join** is needed

---

### Incorrect Example ❌

```
┌──────────────────┐
│ Request Service  │
└────────┬─────────┘
         │
         ▼
      ═══════  ← Fork (INCORRECT - should be decision)
       │   │
       │   │
       ▼   ▼
    ┌────┐ ┌──────────┐
    │Pay │ │Take Order│
    └─┬──┘ └────┬─────┘
      │         │
      └────┬────┘
           ▼
          ◇  ← Merge (INCORRECT - should be join)
           │
           ▼
    ┌──────────────┐
    │Deliver Order │
    └──────────────┘
```

**Why it's wrong:**
- The **fork** means that the flow of control goes down **both paths**
- The **merge point** indicates a merging of **divergent paths, not flows**

---

### Mistake 2: Loops Without Guard Conditions

**Problem:**
- Guard conditions should be **mentioned** in loops

---

### Incorrect Example ❌

```
       ●
       │
       ▼
┌──────────────┐
│ ActionState1 │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ ActionState2 │◄────┐
└──────┬───────┘     │
       │             │
       ▼             │
┌──────────────┐     │
│ ActionState3 │─────┘  (Missing guard condition!)
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ ActionState4 │
└──────┬───────┘
       │
       ▼
      ◉
```

**Correct approach:** Use a decision node with guard conditions for loops.

---

## Activity 4

**Scenario:**  
Develop a software system for a client

**Requirements:**
1. **Project Manager (PM)** first gathers the requirements
2. **UI Engineer (UIE)** develops the prototype
3. **PM** shows the prototype to client
4. Till the client is satisfied, **UIE** modifies the prototype
5. Client **signs off the prototype**
6. Once the client is satisfied:
   - **UIE** develops the UI screens
   - **Software Engineer (SE)** develops the system
   (These happen **in parallel**)
7. Once both (system and UI development) are done, **SE** integrates the system
8. **PM** delivers the system to client
9. Client **signs off the delivery**

---

## Partitioning

### Definition

An **activity partition** is an activity group for actions that have **some common characteristic**.

**Partitions often correspond to:**
- Organizational units
- Business actors in a business model

---

## Partitions: SwimLanes

### Definition

Activity partition may be shown using a **SwimLane notation:**

- With **two, usually parallel lines**, either horizontal or vertical
- A **name labeling the partition** in a box at one end

---

### Horizontal Swimlanes

```
┌─────────────────────────────────────┐
│         Customer                    │
├─────────────────────────────────────┤
│  ┌──────────┐                       │
│  │ Action   │                       │
│  └────┬─────┘                       │
│       │                             │
└───────┼─────────────────────────────┘
        │
        ▼
┌───────┼─────────────────────────────┐
│       │      Order Dept             │
├───────┼─────────────────────────────┤
│       ▼                             │
│  ┌──────────┐                       │
│  │ Action   │                       │
│  └──────────┘                       │
└─────────────────────────────────────┘
```

---

### Vertical Swimlanes

```
┌─────────────┬─────────────────────┐
│  Customer   │    Order Dept       │
├─────────────┼─────────────────────┤
│┌──────────┐ │                     │
││ Action   │ │                     │
│└────┬─────┘ │                     │
│     │       │                     │
│     └───────┼─────►               │
│             │  ┌──────────┐       │
│             │  │ Action   │       │
│             │  └──────────┘       │
└─────────────┴─────────────────────┘
```

---

## Sub Partitioning in SwimLanes

### Example: Department Hierarchy

**Order department** is a subclass of the **Department class**.

```
┌─────────────────────────────────────────────┐
│  Department «attribute»                     │
├──────────────────┬──────────────────────────┤
│  Customer        │    Order Dept            │
│  «external»      │                          │
├──────────────────┼──────────────────────────┤
│ ┌──────────┐     │                          │
│ │ Action   │     │                          │
│ └────┬─────┘     │                          │
│      │           │                          │
│      └───────────┼─────►                    │
│                  │  ┌──────────┐            │
│                  │  │ Action   │            │
│                  │  └──────────┘            │
└──────────────────┴──────────────────────────┘
```

---

## Activity 5

**Scenario:**  
Develop a software system for a client (with swimlanes)

**Requirements:**
1. **Project Manager (PM)** first gathers the requirements
2. **UI Engineer (UIE)** develops the prototype
3. **PM** shows the prototype to client
4. Till the client is satisfied, **UIE** modifies the prototype
5. Once the client is satisfied, **signs off the prototype**
6. **UIE** develops the UI screens while **Software Engineer (SE)** develops the system
7. Once both (system and UI development) are done, **SE** integrates the system
8. **PM** delivers the system to client
9. **Client** signs off the delivery

**Task:** Draw with appropriate swimlanes for each actor.

---

## Activity 6: Order Processing System

**Scenario:**  
Order Processing System with multiple departments

**Requirements:**
1. Once the order is **received** by the **customer service department**, several other departments operate on various activities to complete the order
2. The **fulfillment department** should:
   - Fill the order (prepare goods to deliver)
   - Deliver the order to customer
3. **Meanwhile**, as soon as the order is received, **customer service department** works on sending an **invoice** to the customer
4. The **finance department** will handle the **payments** from the customer
   - The shop operates on **credit basis**
   - Therefore, receiving payments is **not mandatory** prior to the delivery of the goods
5. **Customer service department** can **close the order** only after completing **all the above activities**

**Task:** Draw with swimlanes for: Customer Service, Fulfillment, and Finance departments.

---

## Activity Diagram Notations

### Complete Notation Summary

```
    ●  ← Initial Node
    │
    ▼
   ◇  ← Decision Node
   │╲
   │ ╲ (loop back)
   │  │
   │  ▼
   │ ┌──────────┐
   │ │  Action  │
   │ └────┬─────┘
   │      │
   │      ▼
   │   ═══════  ← Fork Node
   │    │   │
   │    ▼   ▼
   │  ┌───┐ ┌───┐
   │  │Act│ │Act│
   │  └─┬─┘ └─┬─┘
   │    │     │
   │    └──┬──┘
   │       ▼
   │    ═══════  ← Join Node
   │       │
   └───────┼─────►
           ▼
          ◇  ← Merge Node
           │
           ▼
     ┌──────────┐
     │  Action  │
     └────┬─────┘
          │
          ▼
         ◉  ← Activity Final Node
```

---

## Summary

### Key Concepts

**Activity Diagrams:**
- Model workflows and system behavior
- Show dependencies between activities
- Represent business processes

**Basic Elements:**
- Start/End Nodes (● and ◉)
- Actions (rounded rectangles)
- Transitions (arrows)

**Control Flow:**
- Decision/Merge (diamonds) - branching
- Fork/Join (thick bars) - parallelism
- Guard conditions for branches
- Iteration (asterisk or decision loop)

**Advanced Features:**
- Sub-activities (rake symbol)
- Swimlanes for partitioning by actor/department
- Sub-partitions for hierarchies

---

### Best Practices

**Do:**
- Use guard conditions on all decision branches
- Match every fork with a join
- Use swimlanes to show responsibilities
- Use clear, verb-based action names

**Don't:**
- Confuse forks with decisions
- Confuse joins with merges
- Forget guard conditions in loops
- Mix flows and paths incorrectly

---

## References

### Books

**The Unified Modeling Language Reference Manual**  
James Rumbaugh, Ivar Jacobson, et al

**UML Distilled: A Brief Guide to the Standard Object Modeling Language**  
Martin Fowler, Kendall Scott

**Applying UML and Patterns: An Introduction to Object-Oriented Analysis and Design and the Unified Process**  
Craig Larman

**The Complete UML Training Course, Student Edition**  
Grady Booch, et al

**UML Explained**  
Kendall Scott

---

**End of Lecture 05**

**Thank You...!!!**
