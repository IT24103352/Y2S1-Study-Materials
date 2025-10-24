# Lecture 03 - Modern Software Development - Agile

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:03:32

---

## Table of Contents

- [Content Overview](#content-overview)
- [Traditional vs Modern Methodologies](#traditional-vs-modern-methodologies)
- [Why Agile](#why-agile)
- [Agile's Role in Different Domains](#agiles-role-in-different-domains)
- [Plan-based vs Agile Development](#plan-based-vs-agile-development)
- [What is Agile](#what-is-agile)
- [Agile Methodologies and Practices](#agile-methodologies-and-practices)
- [SCRUM Framework](#scrum-framework)
- [SCRUM Roles](#scrum-roles)
- [SCRUM Artifacts](#scrum-artifacts)
- [SCRUM Activities](#scrum-activities)
- [Summary](#summary)

---

## Content Overview

**Topics Covered:**

- Traditional vs Modern Methodologies
- Why Agile?
- Agile's Role in Different Domains
- Agile Development Methodologies
- SCRUM

---

## Traditional vs Modern Methodologies

### Traditional Way

**Characteristics:**
- High Cost
- Changes are not acceptable
- Can detect errors only in the latter part of the SDLC
- Less or no iterations
- Lack of transparency

---

### Modern Way

**Focus on:**
- Highest Value
- High Quality
- Shortest Time

---

## Why Agile?

**Key Point:**  
Agile approaches' emphasis on **adaptability, teamwork, and iterative development** has led to their widespread adoption in the domains of:

- Software Engineering (SE)
- Computer Science (CS)
- Computer Science and Network Engineering (CSNE)

**All these domains come under Information Technology**

---

## Plan-based vs Agile Development

### Plan-based Development

```
┌──────────────────────────┐
│ Requirements Engineering │
└────────────┬─────────────┘
             │
             ▼
    ┌────────────────────┐
    │   Requirements     │
    │   Specification    │
    └─────────┬──────────┘
              │
              ▼
┌──────────────────────────┐
│ Design and Implementation│◄───────┐
└────────────┬─────────────┘        │
             │                       │
             │                       │
             └───────────────────────┘
          Requirements change requests
```

**Characteristics:**
- Sequential phases
- Formal requirements specification
- Change requests require going back to earlier phases

---

### Agile Development

```
┌──────────────────────────┐
│ Requirements Engineering │◄───────┐
└────────────┬─────────────┘        │
             │                       │
             ▼                       │
┌──────────────────────────┐        │
│ Design and Implementation│────────┘
└──────────────────────────┘

(Continuous feedback loops)
```

**Characteristics:**
- Iterative cycles
- Continuous integration of requirements and implementation
- Rapid feedback and adaptation

---

## Agile's Role in Different Domains

### Software Engineering (SE)

**Why Agile fits SE:**
- Because of their **iterative nature** and emphasis on **continuous integration and delivery**, agile approaches are especially well-suited for SE

---

### Computer Science (CS)

**Applications in CS:**
- Agile concepts can be used in CS for a variety of projects, such as:
  - System design
  - Research
  - Algorithm development
- Encouraging **cooperation and flexibility**

---

### Computer Science and Network Engineering (CSNE)

**Value for CSNE:**
- Agile's **adaptability** makes it valuable for CSNE projects, which often involve:
  - Complex network infrastructure
  - Require flexibility in design and implementation

---

## What is Agile?

### Definition

**Agile Software Development** is an umbrella term for a set of methods and practices based on the **Values and Principles** expressed in the **Agile Manifesto**.

**Agile Manifesto** is a formal proclamation of:
- **4 key Values**
- **12 Principles**

---

## 4 Key Values

### Core Values

1. **Individuals and Interactions**
2. **Working Software**
3. **Customer Collaboration**
4. **Responding to Change**

---

### 4 Key Values vs Traditional

| **In Agile** | **In Traditional Ways** |
|:---|:---|
| 1. Individuals and Interactions | Over Process and Tools |
| 2. Working Software | Over Comprehensive Documentation |
| 3. Customer Collaboration | Over Contract Negotiation |
| 4. Responding to Change | Over Following Plan |

---

## Agile Methodologies and Practices

### Common Agile Approaches

- **Scrum**
- **Kanban**
- **eXtreme Programming (XP)**
- **Test Driven Development (TDD)**
- **Pair Programming**
- **Behavior Driven Development (BDD)**
- **Lean Software Development**

---

## SCRUM Framework

### What is SCRUM?

**SCRUM** is an Agile approach for developing innovative products and services.

---

### Key Components

**Roles:**
- There are many roles involved (SCRUM Roles)

**Process:**
- We have to start the process by creating the **Product Backlog**

**Elements:**
- Includes components as **roles, activities, and artifacts**

---

## SCRUM Roles

### Overview

**SCRUM Development efforts** consist of one or more SCRUM teams.

Each made up of SCRUM roles:
- **Product Owner**
- **Scrum Master**
- **Development Team**

**Note:** There can be other roles when using SCRUM, but the SCRUM Framework requires only the three listed here.

---

### Scrum Team Structure

```
        Product Owner
             │
             │
             ▼
        Development Team ◄──────┐
             │                  │
             │                  │
             ▼                  │
        Scrum Master ───────────┘
             │
             │
             └──────► (Continuous cycle)
```

---

### Product Owner

**Responsibilities:**

- The **Empowered central point** of product leadership
- Responsible for **deciding which features and functionalities** to build
- **Maintains and Communicates** to all the other participants
- **Client's representative**
- **Decide on release date and content**
- **Accept or Reject Work Results**

---

### Scrum Master

**Responsibilities:**

- Helps everyone involved **understand and embrace SCRUM** values and practices
- **Represents Management** to the Project
- **Shield the team** from external interferences
- Takes **leadership role in removing** impediments

**Important Note:**  
The ScrumMaster has **no authority to exert control** over the team, so this role is **not the same as the traditional role of project manager**.

---

### Development Team

**Characteristics:**

- The development team **self-organizes** to determine the best way to accomplish the goal set out by the product owner
- **Cross Functional**
- **Work Collaboratively**
- **Share Responsibilities**

---

### User/Stakeholders

**Definition:**
- Individuals who will **use the product** or have a **stake in its outcome**

---

## SCRUM Artifacts

### Three Main Artifacts

1. **Product Backlog**
2. **Sprint Backlog**
3. **Burn Down Charts**

---

## Product Backlog

### Overview

Using SCRUM, we always do the **most valuable work first**.

**Definition:**  
The product backlog is a **prioritized list of work** for the development team that comes from the product plan and its requirements.

---

### Ways to Store Product Backlog

There are many ways to store the product backlog:

- As a collection of **index cards or post-its on the wall**
- In **Excel**
- Write as **user stories**

---

### Product Backlog Characteristics

**Priority:**
- Product Backlog items are placed in the **correct sequence**
- **High Value items** appear at the top of the product backlog
- **Lower-valued items** appear towards the bottom

**Dynamic Nature:**
- The Product backlog is a **constantly evolving artifact**

---

### Product Backlog Structure

```
┌─────────────────────────────────────┐
│         HIGH PRIORITY               │
│                                     │
│  ┌──────────────────────────────┐  │
│  │       Release 1              │  │  ← Items are (mostly) prioritized
│  │  • High-value features       │  │
│  │  • Critical requirements     │  │
│  └──────────────────────────────┘  │
│                                     │
│  ┌──────────────────────────────┐  │
│  │       Release 2              │  │  ← Might prioritize features
│  │  • Medium-value features     │  │     based on targeted
│  │  • Secondary requirements    │  │     product roadmap
│  └──────────────────────────────┘  │
│                                     │
│  ┌──────────────────────────────┐  │
│  │       Release 3              │  │  ← Little or no effort
│  │  • Lower-priority features   │  │     prioritizing items
│  │  • Future enhancements       │  │     within future releases
│  └──────────────────────────────┘  │
│                                     │
│         LOW PRIORITY                │
└─────────────────────────────────────┘
```

---

## User Story

### Definition

**User Story:**  
A concise description of a **functionality that will be valuable** to users of the system.

---

### Characteristics

- User stories are a **convenient format** for expressing the desired business value for many types of product backlog items
- User stories are crafted in a way that makes them **understandable to both business and technical people**

---

### User Story Template

```
As a <user role>
I want to <goal>
So that <benefit>
```

**Breakdown:**
- **As** who
- **I want** what
- **So that** why

---

### Writing User Stories

**Example – Online Banking System**

**User Story 1:**  
As a **Customer** I want to **view account summary online** so that **I do not have to wait till the month end to view the statement**.

**User Story 2:**  
As an **Employee** I want to **add new customers online** so that **it saves my time**.

**User Story 3:**  
As a **User** I want to **update profile details** so that **my details are up-to-date**.

---

### Activity 01

**Task:**  
Write 5 detailed User Stories for **Library Management System**

**Example:**  
As a **member** I want to **view my borrowing history** so that **I can easily get the details of the books referred**.

---

### Activity 02

**Compare these User Stories**

| **A** | **B** |
|:---|:---|
| As a recruiter I want to review resumes from applicants to one of her ads. | As a recruiter I want to manage the ads she has placed. |

**Analysis Question:** Which user story is better and why?

---

**Compare these User Stories**

| **A** | **B** |
|:---|:---|
| As a user I want to have my previous orders stored in the database so they will be there permanently | As a repeat customer I want to access old orders so that I can quickly purchase the same order again. |

**Analysis Question:** Which user story is better and why?

---

**Compare these User Stories**

| **A** | **B** |
|:---|:---|
| As a driver I want to find the store with the shortest drive time so I can get there quickly. | As a driver I want to find directions to a store in Google Maps so I can get there quickly. |

**Analysis Question:** Which user story is better and why?

---

## Sprint and Sprint Backlog

### Sprint

**Definition:**  
In Scrum, work is performed in **iterations or cycles** of up to a **calendar month** called **sprints**.

---

### Sprint Backlog

**Before starting a Sprint:**
- The Team should come up with a **Sprint backlog**

**Definition:**  
The sprint backlog (release backlog) is a **list of user stories** identified by the Scrum team to be **completed during the sprint**.

**Relationship:**
- This is a **subset of Product backlog** user stories defined only for a particular sprint

---

## Sprint Burn Down Chart

### Definition

A **burn down chart** is a graphical representation of **work left to do vs time**.

---

### Components

**Vertical Axis:**
- The **outstanding work (or backlog)** is often on the vertical axis

**Horizontal Axis:**
- **Time** along the horizontal

**Purpose:**
- It is a run chart of outstanding work
- Useful for **predicting when all of the work will be completed**

---

### Burn Down Chart Example

```
% Remaining
100% ┤
     │
     │ ╲
     │  ╲  Ideal Burndown
     │   ╲
     │    ╲
 50% ┤     ╲
     │      ╲        Late Project (Red)
     │       ╲      ╱
     │        ╲    ╱
     │         ╲  ╱
     │     Advance Project (Green)
  0% ┤──────────╲╱─────────────────────
     └──────────────────────────────────
     Day 1    Day N           Final Day
                  Time
```

**Legend:**
- **Black Line:** Ideal burndown
- **Green Line:** Advanced project (delivering more than expected to date) - Recovered and delivered early
- **Red Line:** Late project - eventually recovered

---

### Activity 03

**Scenario:**  
A well-known project that supports many platforms has **120 tasks** to complete within **5 days**.

**Tasks:**
1. Calculate **Ideal Burn Down Velocity**
2. According to the actual work completed (shown in table), Calculate the **Actual Burn Down Velocity**
3. Mention which is the **most performed day**
4. Mention which is the **least performed day**

| **Days** | 01 | 02 | 03 | 04 | 05 |
|:---|:---|:---|:---|:---|:---|
| **Tasks** | 20 | 50 | 0 | 20 | 30 |

---

## SCRUM Activities

### Four Main Activities

1. **Sprint Planning**
2. **Daily Scrum**
3. **Sprint Review**
4. **Sprint Retrospective**

---

## Sprint Planning

### Purpose

A product backlog may represent **many weeks or months** of work, which is much more than can be completed in a single short sprint.

**During sprint planning:**
- The **product owner and development team** agree on a **sprint goal** that defines what the upcoming sprint is supposed to achieve

---

### Sprint Characteristics

```
┌─────────┬─────────┬─────────┬─────────┐
│Sprint 1 │Sprint 2 │Sprint 3 │Sprint 4 │
└─────────┴─────────┴─────────┴─────────┘
  ◄────────────────────────────────────►
           Timeboxed

  ◄────────────────────────────────────►
        Consistent length

    Short duration: 1 week to 1 calendar month
```

---

### Inside Each Sprint

```
┌─────────────────────────────────────┐
│         Sprint Box                   │
│                                      │
│  • No goal-altering changes          │
│  • Agreed-upon definition of done    │
│                                      │
│  ┌──────────────────────────────┐   │
│  │   Sprint Execution Cycle     │   │
│  │                              │   │
│  │   ┌────────┐                 │   │
│  │   │INSPECT │                 │   │
│  │   └───┬────┘                 │   │
│  │       │                      │   │
│  │       ▼                      │   │
│  │   ┌────────┐                 │   │
│  │   │ ADAPT  │                 │   │
│  │   └────────┘                 │   │
│  └──────────────────────────────┘   │
└─────────────────────────────────────┘
```

---

## Daily Scrum

### Overview

**Frequency:**  
Each day of the sprint, at the **same time**, the development team members hold a meeting.

**Duration:**  
**15 minutes** Daily Scrum

**Cycle:**  
**Every 24 hours**

---

### Three Key Questions

**Discussing about the scrum:**

✅ **What did I accomplish** since the last daily scrum?

✅ **What do I plan to work on** by the next daily scrum?

✅ **What are the obstacles or impediments** that are preventing me from making progress?

---

## Sprint Review

### Purpose

Near the end of the sprint, the team conducts two important **inspect and adapt activities:**
- Sprint review
- Sprint retrospective

---

### Key Points

**Transparency:**
- The sprint review provides a **transparent look** at the current state of the product

**Importance:**
- Sprint Review is **one of the most important loops** in the scrum framework

---

## Sprint Retrospective

### Purpose

**Inside the timebox of the retrospective**, teams are free to:

- **Examine** what's happening
- **Analyze** the way they work
- **Identify** ways to improve
- **Make plans** to implement these improvements

---

### Importance

It is important because it gives teams the **chance to customize scrum** to their unique circumstances.

---

### Activity 04

**Question:**  
What is the primary goal of the **Sprint Review**?

1. To plan the next Sprint
2. **To inspect the Increment and adapt the Product Backlog if needed**
3. To assign new tasks to team members
4. To conduct a retrospective on team performance

---

### Activity 05

**Question:**  
What is the purpose of the **Sprint Retrospective**?

1. To review the product increment and get feedback from the stakeholder
2. To plan the work for the next sprint and prioritize the product backlog
3. **To inspect the team's performance and identify improvements for the next sprint**
4. To coordinate the work across multiple teams and align on the product vision

---

## Summary

### Key Concepts Covered

**Traditional vs Modern:**
- Traditional: High cost, rigid, late error detection
- Modern: High value, quality, shortest time

**Agile Philosophy:**
- 4 Key Values (Individuals, Working Software, Customer Collaboration, Responding to Change)
- Iterative and adaptive approach

**SCRUM Framework:**
- Roles: Product Owner, Scrum Master, Development Team
- Artifacts: Product Backlog, Sprint Backlog, Burn Down Charts
- Activities: Sprint Planning, Daily Scrum, Sprint Review, Sprint Retrospective

**User Stories:**
- Template: As a [role] I want to [goal] so that [benefit]
- Focus on value and clarity

---

## References

### Books

**Rubin, K.S. (2013)**  
Essential scrum: A practical guide to the most popular agile process.  
Upper Saddle River, NJ: Addison-Wesley.

---

### Online Resources

**"What is Scrum?"**  
Scrum.org, 2017.  
Available: https://www.scrum.org/resources/what-is-scrum/

**"What is Agile Software Development?"**  
Agile Alliance, 2017.  
Available: https://www.agilealliance.org/agile101/

---

**End of Lecture 03**

**Thank You!**
