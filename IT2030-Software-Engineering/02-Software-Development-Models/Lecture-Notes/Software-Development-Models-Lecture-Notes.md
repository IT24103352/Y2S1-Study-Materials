# Lecture 02 - Software Development Models

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 02:58:34

---

## Table of Contents

- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [SDLC vs Software Process Models](#sdlc-vs-software-process-models)
- [Evolution of Software Process Models](#evolution-of-software-process-models)
- [Waterfall Model](#waterfall-model)
- [Iterative Waterfall Model](#iterative-waterfall-model)
- [V-Model](#v-model)
- [Prototyping Model](#prototyping-model)
- [Incremental Model](#incremental-model)
- [Spiral Model](#spiral-model)
- [Agile Model](#agile-model)
- [Scrum Framework](#scrum-framework)
- [Kanban Framework](#kanban-framework)
- [Model Comparison](#model-comparison)
- [How to Choose a Model](#how-to-choose-a-model)
- [Summary](#summary)

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- Explain the concept of the Software Development Life Cycle (SDLC)
- Differentiate between SDLC and Software Process Models
- Describe key characteristics, advantages, and limitations of various process models
- Identify suitable models for different types of software projects
- Apply understanding of process models to real-world scenarios

---

## SDLC vs Software Process Models

### What is SDLC (Software Development Life Cycle)?

SDLC is a **step-by-step process** used to develop software. It describes the **main phases** involved in creating a software product.

**Quick Question:** What are the phases in SDLC?

---

### What is a Software Process Model?

- A **Software Process Model** is a structured method or strategy that guides how the SDLC phases are carried out
- It provides a **framework or roadmap** for organizing and managing the tasks in SDLC

---

### Examples of Software Process Models

**Waterfall**
- Each phase is completed one after another

**Spiral**
- Combines design and prototyping in a repeated cycle

**Agile**
- Focuses on small, fast iterations with regular feedback

**DevOps**
- Integrates development and operations for continuous delivery

---

### How Are They Connected?

| **SDLC** | **Software Process Models** |
|:---|:---|
| Defines **what** phases to follow | Defines **how** to execute those phases |
| A general structure | A specific implementation |
| Same phases used across models | Each model organizes, iterates, or emphasizes phases differently |

---

### Example

**Waterfall model:**
- Executes SDLC **sequentially**

**Agile model:**
- Executes SDLC in **iterations** (sprints)

---

## Evolution of Software Process Models

### From Traditional to Modern Approaches

| **Model** | **Description** |
|:---|:---|
| **Waterfall Model** | Linear and phase-based development model |
| **V-Model** | Emphasizes validation and testing at each phase |
| **Incremental Model** | Software delivered in small parts or versions |
| **Spiral Model** | Iterative model with risk assessment in each cycle |
| **Prototyping Model** | Early versions built to refine requirements |
| **Agile (Scrum / Kanban)** | Iterative, collaborative, and flexible approach |

---

## Waterfall Model

### Definition

A **linear and step-by-step** process where each phase is completed before moving to the next.

---

### Phases

```
Requirements → Design → Implementation → Testing → Deployment → Maintenance
```

---

### Waterfall Model Flow

```
┌─────────────────────────┐
│  Requirement Analysis   │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│    System Design        │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│   Implementation        │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│      Testing            │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│     Deployment          │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│    Maintenance          │
└─────────────────────────┘
```

---

### Key Features

- Simple and easy to understand
- Each phase has clear goals and deliverables
- **Not suitable** for projects where requirements may change later

---

### Example

Used for systems like **Payroll** or **HR Management**, where the requirements are stable and well-defined.

---

### Best Use Case

When the project requirements are **clearly known in advance** and **unlikely to change**.

---

## Iterative Waterfall Model

### Definition

A **modified version** of the traditional Waterfall Model that allows **feedback and revisions** between phases.

---

### Key Features

- Follows the same step-by-step phases as the classic Waterfall (Requirements → Design → Implementation → Testing → Deployment)
- But now, teams can **go back to earlier phases** if needed
- Example: If problems are found during Testing, they can return to the Design phase to fix them

---

### Iterative Waterfall Model Flow

```
┌─────────────────────────┐
│    Requirements         │◄─────┐
└───────────┬─────────────┘      │
            │                     │
            ▼                     │
┌─────────────────────────┐      │
│       Design            │◄─────┤
└───────────┬─────────────┘      │
            │                     │
            ▼                     │
┌─────────────────────────┐      │
│   Implementation        │◄─────┤
└───────────┬─────────────┘      │
            │                     │
            ▼                     │
┌─────────────────────────┐      │
│      Testing            │──────┤
└───────────┬─────────────┘      │
            │                     │
            ▼                     │
┌─────────────────────────┐      │
│     Deployment          │──────┘
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│    Maintenance          │
└─────────────────────────┘
```

---

### Benefits

- This reduces the **rigid structure** of the original Waterfall model
- Allows for **corrections and improvements** before the final product is delivered
- **More flexible and realistic** for real-world projects where issues may only appear in later stages

---

### When to Use the Iterative Waterfall Model

This model is suitable when:

- Requirements are **mostly clear**, but some **minor changes** may be needed during development
- **Client feedback** is available at the end of each phase
- The project is a **medium-sized system** with moderate risk (not too complex, but not too simple either)

---

### Activity 1

Think of an example system (e.g., student record system).

**Questions:**
1. Would you use Waterfall or Iterative Waterfall for it?
2. Justify your answer with 1 reason.

---

## V-Model (Validation and Verification Model)

### Definition

The **V-Model** is a variation of the Waterfall Model that focuses on **testing at every stage** of development.

---

### Key Features

- **Development** happens on the **left side** of the "V"
- **Testing and validation** happen on the **right side**, matched to each development phase
- For every development step, there is a **corresponding test step**
- Example: Requirements → Acceptance Testing

---

### V-Model Diagram

```
        Verification Phase                    Validation Phase
               │                                     │
               │                                     │
    Requirement Gathering ←────────────→ Acceptance Testing
               │                                     │
               ▼                                     ▲
       System Analysis ←──────────────→ System Testing
               │                                     │
               ▼                                     ▲
      Software Design ←───────────────→ Integration Testing
               │                                     │
               ▼                                     ▲
       Module Design ←────────────────→ Unit Testing
               │                                     │
               └──────────────┬──────────────────────┘
                              │
                              ▼
                          Coding
```

---

### Why It's Useful

This model helps **catch errors early** by planning tests as soon as each phase begins.

---

### Common Use

Ideal for **safety-critical systems** like:

- Aerospace software
- Medical devices
- Automotive systems

---

## Prototyping Model

### Definition

A method where we build a **quick and rough version** of the system (a **prototype**) to show users early.

---

### How It Works

1. Gather basic requirements
2. Build a quick prototype
3. Show it to the user
4. Get feedback and improve it
5. Once users are happy → build the real system

---

### Why Use It?

- Helps **understand what the user really wants**
- **Saves time** by avoiding big mistakes
- Great for projects where **requirements are unclear** or may change

---

### Example

Making a **university mobile app**:
- Build a sample screen
- Get student feedback
- Improve it before full development

---

## Incremental Model

### Definition

In this model, the system is developed **step by step** in small parts called **increments**.

---

### Key Features

- The system is built and delivered in **smaller functional units**, not all at once
- Each increment **adds new features** to the system
- Every increment goes through the **entire SDLC:**
  - Requirements → Design → Implementation → Testing → Deployment
- User feedback from earlier increments can help improve future ones

---

### Why Use It?

It allows **early delivery** of useful features and supports **ongoing improvements**.

---

### When to Use the Incremental Model

Use this model when:

- Most requirements are known, but the full system needs to be developed in **phases**
- You need **quick delivery** of working features and **early user feedback**
- You want to **spread out the risk** across multiple stages of development

---

### Example: University Learning Management System (LMS)

The system can be built in increments like:

**Increment 1:** User Registration & Login  
**Increment 2:** Course Enrollment  
**Increment 3:** Assignment Submissions  
**Increment 4:** Viewing Grades & Reports

This way, each part is delivered, tested, and improved before moving to the next.

---

### Incremental Model Flow

```
System Requirements
        │
        ▼
┌───────────────────┐
│ Design &          │──→ Deliverable 1
│ Implementation    │
└────────┬──────────┘
         │              Iteration 1
         ▼
    ┌──────────┐
    │Validation│──→ Deliverable 1
    └────┬─────┘
         │              Iteration 2
         ▼
┌───────────────────┐
│ Design &          │──→ Deliverable 2
│ Implementation    │
└────────┬──────────┘
         │
         ▼
    ┌──────────┐       Iteration 3
    │Validation│──→ Deliverable 3
    └────┬─────┘
         │
         ▼
     Final Product
```

---

## Spiral Model

### Definition

The **Spiral Model** is a **risk-focused** and **iterative** software development approach.

It combines features of both the **Waterfall Model** and **Prototyping Model**.

---

### Structure

- Each **loop in the spiral** represents a phase of the project
- The project moves through these loops **repeatedly**, improving the product each time

---

### Structure of Each Spiral Loop

**1. Planning**
- Set goals, define system requirements
- Identify constraints and possible solutions

**2. Risk Analysis**
- Identify potential risks (e.g., cost, time, technical challenges)
- Analyze and take steps to reduce or eliminate those risks

**3. Engineering**
- Design, build, and test part of the system (a prototype or increment)

**4. Evaluation**
- Customer reviews the work done
- Based on feedback, the next loop (iteration) is planned

---

### When to Use the Spiral Model

Use this model when:

- The project is **large, complex, or high-risk**
- Requirements are **not fully known** at the beginning and may change over time
- The project needs **frequent reviews, testing, and updates**
- You want to **identify and reduce risks early**

---

### Example

**Defense or aerospace systems**, where:

- Mistakes can be very **costly or dangerous**
- Requirements often **change** as the system develops

---

### Spiral Model Diagram

```
                    CUMULATIVE COST ↑
                                    │
                                    │
    DETERMINE OBJECTIVES,           │      EVALUATE ALTERNATIVES
    ALTERNATIVES, CONSTRAINTS       │      IDENTIFY, RESOLVE RISKS
              ↓                     │              ↓
    ┌─────────────────────┐         │    ┌─────────────────────┐
    │       REVIEW         │         │    │   RISK ANALYSIS     │
    │                      │         │    │                     │
    │  • RQTS PLAN         │         │    │  • RISK ANALYSIS    │
    │  • LIFE CYCLE PLAN   │    ─────┼────│  • PROTOTYPE 1-3    │
    │  • DEVELOPMENT PLAN  │         │    │  • BENCHMARKS       │
    │  • INTEGRATION PLAN  │         │    │                     │
    └──────────┬───────────┘         │    └──────────┬──────────┘
               │                     │               │
               │   PLAN NEXT PHASES  │  PROGRESS     │
               │                     │  THROUGH      │
               │                     │  STEPS →      │
               │                     │               │
               └─────────────────────┼───────────────┘
                                    │
    ┌─────────────────────┐         │    ┌─────────────────────┐
    │                      │         │    │  DEVELOP, VERIFY    │
    │                      │         │    │  NEXT LEVEL PRODUCT │
    └─────────────────────┘         │    │                     │
                                    │    │  • DETAILED DESIGN  │
         COMMITMENT PARTITION       │    │  • CODE             │
                                    │    │  • UNIT TEST        │
                                    │    │  • INTEGRATION TEST │
                                    │    │  • ACCEPTANCE TEST  │
                                    │    │  • IMPLEMENTATION   │
                                    │    └─────────────────────┘
```

---

## Agile Model

### Definition

An **iterative and incremental** approach to software development that focuses on:

- Team collaboration
- Customer involvement and feedback
- Flexibility to change

---

### Key Features

- Software is built and delivered in **small usable parts** called **sprints** (usually 1-4 weeks)
- Each sprint delivers a **working product**
- Encourages **continuous improvement** and quick responses to change
- Based on the **Agile Manifesto (2001)** - values people and interactions over rigid processes

---

### Example Uses

- Mobile Applications
- Cloud-based SaaS Products

---

### Best For

Projects where requirements may **change frequently** and **fast delivery** is important.

---

## Agile and Its Common Frameworks

### Agile Philosophy

**Agile is not one specific method.**

It is a **philosophy** based on a set of values and principles (from the Agile Manifesto).

---

### Frameworks

To apply Agile in real projects, teams use different **frameworks or methods**.

The two most popular Agile frameworks are:

**Scrum**
- Focuses on working in **fixed-length cycles** called **sprints** (usually 2-4 weeks)

**Kanban**
- Focuses on **visualizing tasks** on a board and managing **continuous flow** of work

Each framework helps teams stay flexible, collaborate, and deliver faster.

---

## Scrum Framework

### Overview

- Uses **short, fixed-length cycles** called **sprints**
- Focuses on **teamwork, feedback, and continuous delivery**

---

### Key Roles

**Product Owner**
- Chooses what to build

**Scrum Master**
- Guides the team

**Team**
- Builds the product

---

### Main Elements

**Backlogs**
- Lists of work to do

**Increment**
- Working part of the product

---

### Key Meetings

- Sprint Planning
- Daily Stand-up
- Sprint Review
- Retrospective

---

## Kanban Framework

### Overview

A **visual method** to manage work using a **Kanban board**

Example: To Do → In Progress → Done

---

### Kanban Board Example

```
┌──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│  PRIORITIZED     │  WORK-IN-       │    VALIDATE      │    COMPLETE      │
│  BACKLOG         │  PROGRESS       │                  │                  │
│  (TO-DO LIST)    │                  │                  │                  │
├──────────────────┼──────────────────┼──────────────────┼──────────────────┤
│  [📝] Task 1     │  [📝] Task 4    │  [📝] Task 7    │  [✓] Task 10    │
│  [📝] Task 2     │  [📝] Task 5    │  [📝] Task 8    │  [✓] Task 11    │
│  [📝] Task 3     │  [📝] Task 6    │  [📝] Task 9    │  [✓] Task 12    │
│                  │                  │                  │                  │
└──────────────────┴──────────────────┴──────────────────┴──────────────────┘
```

---

### Key Features

- Focuses on **continuous delivery**
- **Limits Work In Progress (WIP)** to avoid overload
- **No fixed roles or time limits** (unlike Scrum)

---

### Best For

- DevOps, maintenance, and support teams that handle **ongoing tasks**

---

## Scrum vs Kanban

| **Scrum** | **Kanban** |
|:---|:---|
| Structured, sprint-based | Visual, flow-based |
| Defined roles (Product Owner, Scrum Master, Team) | No specific roles or timeboxes |
| Emphasizes ceremonies like Daily Standups, Retrospectives (Fixed ceremonies) | Focus on limiting Work In Progress (WIP) - Flexible task limits |

**Commonality:** Both focus on **fast feedback** and **incremental value delivery**

---

## Model Comparison

| **Model** | **Approach** | **Delivery Style** | **Best For** | **Drawbacks** |
|:---|:---|:---|:---|:---|
| **Waterfall** | Linear | One final delivery | Simple, well-defined projects | No feedback until the end |
| **Iterative Waterfall** | Phased + Feedback | One final delivery | Moderate complexity projects | Still limited flexibility |
| **V-Model** | Validation-based | One final delivery | Safety-critical systems (e.g. avionics) | Costly to fix late changes |
| **Prototyping** | Build quick model, get feedback, refine | Evolves through user feedback | Unclear or changing requirements | Prototype may be mistaken as final; scope creep |
| **Incremental** | Phased | Partial releases | Evolving requirements | Requires stable architecture upfront |
| **Spiral** | Risk-driven | Incremental | High-risk, large-scale projects | Complex and expensive |
| **Scrum (Agile)** | Sprint-based | Every sprint | Teams needing structure and roles | Rigid schedules and roles |
| **Kanban (Agile)** | Flow-based | Continuous | Maintenance and support workflows | May lack clear deadlines |

---

## How to Choose a Model?

| **Factor** | **Why It Matters** |
|:---|:---|
| **1. Fixed vs. Changing Requirements** | Stable requirements suit Waterfall; changing needs call for Agile or Spiral |
| **2. Project Size & Complexity** | Large, complex systems need Spiral or V-Model for structure and risk control |
| **3. Risk Level** | High-risk projects need risk assessment → Spiral is ideal |
| **4. Time to Market Requirements** | Need fast delivery? Choose Agile, Scrum, or Incremental |
| **5. Team Style** | Structured teams suit Scrum; flexible teams may prefer Kanban |
| **6. User Feedback** | If frequent feedback is critical, Agile-based models are most suitable |

---

## Activity

**Scenario:**  
You must rapidly deploy a nationwide **COVID-19 vaccination appointment system** while the pandemic is still spreading.

**Question:**  
Which SDLC model would you adopt to deliver usable features quickly, and why?

---

## SE2030 – Group Assignment Briefing

Your lecturer will guide you through the details of the group assignment, including:

- Assignment objectives
- Key milestones and deadlines
- Evaluation criteria and expectations

---

## References

### Textbooks

**Pressman & Maxim - Software Engineering: A Practitioner's Approach**
- Chapter 2: Software Process Models
- Chapter 4: Agile Development
- Chapter 12: Project Management and DevOps

**SWEBOK v3.0 – Guide to the Software Engineering Body of Knowledge**
- Chapter 2: Software Life Cycle Processes
- Chapter 3: Software Engineering Models and Methods

---

### Standards and Guidelines

- Agile Alliance - Agile Manifesto (2001)
- IEEE Software Engineering Standards – IEEE Std 730, IEEE Std 828

---

**End of Lecture 02**

**Thank You!**
