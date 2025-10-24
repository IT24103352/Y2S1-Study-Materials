# Lecture 01 - Introduction to DBMS, Database Design Process and Data-Intensive Applications

**Course:** IT2140 - Database Design and Development  
**Lecture:** 01  
**Topic:** Introduction to DBMS, Database Design Process and Data-Intensive Applications  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:12:17

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [What is Data vs Information](#what-is-data-vs-information)
- [What is a Database and DBMS](#what-is-a-database-and-dbms)
- [Database System Environment](#database-system-environment)
- [Database Approach vs File Processing System](#database-approach-vs-file-processing-system)
- [Advantages of Database Approach](#advantages-of-database-approach)
- [Database Design](#database-design)
- [Database Design Process](#database-design-process)
- [Database Hosting](#database-hosting)
- [Data-Intensive Applications](#data-intensive-applications)
- [Homework](#homework)

---

## Lecture Content

- Define key database-related terminologies
- Introduction to databases, DBMS and their benefits
- Database design process
- Data-intensive applications

---

## Learning Outcomes

By the end of this lecture, students will be able to:

- **Explain** what is a database and a DBMS
- **Identify** situations where using a database would be beneficial
- **Explain** the database design process
- **Identify** the importance of DBMSs in data-intensive applications

---

## What is Data vs Information?

### Data

**Data** refers to **raw, unprocessed facts or values** that, on their own, may not carry meaning. It can be in the form of **numbers, text, images, or symbols**.

---

### Information

**Information** is **data that has been processed, organized, or structured** in a way that makes it **meaningful and useful**.

---

### Transformation Process

```
┌─────────────────┐
│  Data: Raw Facts│
│                 │
│  John 85 IT101  │
└────────┬────────┘
         │
         │ Processing
         │ (Q+85+□)
         │
         ▼
┌─────────────────────────┐
│  INFORMATION            │
│  Processed and          │
│  meaningful data        │
│                         │
│  John scored 85 in IT101│
└─────────────────────────┘
```

---

## What is a Database and DBMS?

### Database

A **database** is a **collection of related data**.

---

### Database Management System (DBMS)

A **database management systems (DBMS)** is a **general-purpose software system** that facilitates the processes of:

- **Defining** databases
- **Constructing** databases
- **Manipulating** databases
- **Sharing** databases among various users and applications

---

### Question

**What do you understand by defining, constructing, manipulating and sharing databases?**

---

### Visual Representation

#### Database Structure

```
                    ┌─────────────┐
                    │  DATABASE   │
                    │             │
       ┌────────────┤   (Central  ├────────────┐
       │            │   Storage)  │            │
       │            └─────────────┘            │
       │                                       │
       ▼                                       ▼
┌─────────────┐                         ┌─────────────┐
│   Student   │                         │   Course    │
│   (ID Card) │                         │ Registration│
│             │                         │  (Document) │
└─────────────┘                         └─────────────┘
       │                                       │
       │            ┌─────────────┐            │
       └────────────┤  DATABASE   ├────────────┘
                    │             │
                    └──────┬──────┘
                           │
              ┌────────────┴────────────┐
              ▼                         ▼
       ┌─────────────┐           ┌─────────────┐
       │ Exam Results│           │  Computer   │
       │   (Grade A) │           │   Access    │
       │             │           │   (Cloud)   │
       └─────────────┘           └─────────────┘
```

---

#### DBMS Architecture

```
   ┌──────┐
   │ User │
   └───┬──┘
       │
       │ Queries/Requests
       ▼
┌──────────────────┐
│      DBMS        │
│  (Database       │
│   Management     │
│   System)        │◄──── Application
└────────┬─────────┘
         │
         │ Data Operations
         ▼
    ┌─────────┐
    │Database │
    │  (Data  │
    │ Storage)│
    └─────────┘
```

---

## Question for Students

**Can you identify one real-world place or system where databases are used?**

For each example, explain:

1. **What kind of data is stored?**
2. **Who uses the data?**
3. **Why a database is necessary in that context?**

---

## Database System Environment

A **database system environment** normally can be considered to have **five major parts**:

### 1. Hardware
- Physical devices (servers, storage devices, network equipment)

### 2. Software
- DBMS software, operating systems, applications

### 3. People
- Database administrators, developers, end users

### 4. Procedures
- Instructions and rules for using the database system

### 5. Data
- The actual information stored in the database

---

## Database Approach vs File Processing System

### Key Differences

**Database system** offers:

1. **Self-describing nature**
   - Metadata is stored along with data

2. **Insulation between programs and data**
   - Data abstraction

3. **Support of multiple views of the data**
   - Different users see different perspectives

4. **Sharing of data and multiuser transaction processing**
   - Concurrent access

5. **Security and access levels**
   - Controlled access to data

---

## Advantages of Database Approach

### 1. Data Independence
- **Application programs** are independent of the way the data is **structured and stored**

### 2. Efficient Data Access
- Make the data retrieval **efficient** using sophisticated techniques to store and access data

### 3. Enforcing Integrity
- Provide capabilities to **define and enforce constraints**
- **Example:** Data type for a name should be string

### 4. Restricting Unauthorized Access
- Allows only **authorized users** to access data

### 5. Providing Backup and Recovery
- Protects users from the effect of **system failures**

### 6. Concurrent Access
- **Simultaneous access** of data by different users

---

## Database Design

### Why is Database Design Important?

**Without careful planning** you may create a database that:

❌ Contains **unnecessary data** which occupies storage space

❌ **Omits data** required to create critical reports

❌ Takes a **considerable time** to respond to user questions

❌ Produces results that are **incorrect or inconsistent**

❌ Is **unable to accommodate changes** in the user's requirements

---

### Consequences

⚠️ **A poorly designed database will require more time in the long-term!**

---

## Database Design Process

There are **six main phases** of the process to develop a database:

### Phase 1: Requirement Collection and Analysis

### Phase 2: Conceptual Database Design

### Phase 3: Logical Database Design

### Phase 4: Schema Refinement

### Phase 5: Physical Database Design

### Phase 6: Security Design

---

## Step 1: Requirement Collection and Analysis

### Goals of Requirements Analysis

The goals of the requirements analysis are to:

1. **Determine the data requirements** of the database in terms of objects

2. **Identify and describe** the information about these objects

3. **Identify the relationships** among these objects

4. **Identify different transactions** that will be performed on the database

5. **Identify performance, integrity, security or administrative constraints** to be imposed on the database

6. **Identify design and implementation constraints** if any
   - Example: specific technologies, hardware and software, programming languages, policies, standards, etc.

---

### Information Gathering Methods

Information needed for the requirements analysis can be gathered in several ways:

#### 1. Review of Existing Documents

- Become familiar with the organization/activity you need to model
- Review existing documentation:
  - Existing forms and reports
  - Written guidelines
  - Job descriptions
  - Personal narratives

#### 2. Interviews with End Users

- Organize individual/group meetings with end users
- Use visual aids:
  - Blackboard
  - Flip chart
  - Overhead transparencies
- Record information gathered from interviews

#### 3. Review of Existing Automated Systems

- Review system design specifications and documentation
- Applicable if the organization already has an automated system

---

## Step 2: Conceptual Database Design

The information gathered in the **requirements analysis phase** is used to create a:

**High-level description** of the data in a **conceptual data model** or **Semantic Data Model**.

**Example:** ER Model (Entity-Relationship Model)

---

## Step 3: Logical Database Design

In this step:

1. We **determine the DBMS** to implement the database
2. We also determine the **data model**

**Process:**
- Utilize the **conceptual schema** created in the previous step
- **Convert** it into a schema of a particular data model
  - Example: **Relational Data Model**

*Note: We will cover this in the next two lectures.*

---

## Step 4: Schema Refinement

The schema created by the **logical database design phase** is further **refined** for potential problems such as:

- **Redundancies**
- Other structural issues

---

## Step 5: Physical Database Design

In this step:

- **Performance criteria** are taken into consideration
- Further enhancements to the schema
- **Creation of indexes** are considered

---

## Step 6: Security Design

### Process

1. Different **user groups** and their **roles** are identified

2. Appropriate **levels of access** are then provided to the data

3. Ensuring that users have access to **only the necessary data**

---

### Example: Bank

| **User Role** | **Access Level** |
|:---|:---|
| **Customer** | Read access |
| **Teller** | Read/Update (limited) |
| **Manager** | Read/Update (full) |

---

## Database Hosting

### Definition

**Database hosting** defines **where and how** a database is:
- Deployed
- Stored
- Accessed

---

### Selection Criteria

Selecting the appropriate hosting type depends on:

1. **Scalability**
2. **Cost**
3. **Security**
4. **Performance**

---

## Types of Database Hosting

### 1. On-Premise Hosting

- Database hosted on local servers
- Organization maintains full control

### 2. Cloud Hosting

- Database hosted on cloud infrastructure
- Managed by cloud service providers

---

## Cloud Database Types

```
                ┌─────────────────────┐
                │   Cloud Database    │
                │                     │
                │  AWS   Azure  GCP   │
                └──────────┬──────────┘
                           │
              ┌────────────┴────────────┐
              │                         │
              ▼                         ▼
    ┌─────────────────┐       ┌─────────────────┐
    │ DBaaS           │       │ Self-managed    │
    │ (Fully Managed) │       │                 │
    │                 │       │                 │
    │  [Hand holding  │       │  [Person with   │
    │   database]     │       │   server rack]  │
    └─────────────────┘       └─────────────────┘
```

---

## Examples of Cloud Databases

| **Cloud Database Type** | **Examples** |
|:---|:---|
| **Relational Cloud Databases** | AWS RDS, Azure SQL Database, Google Cloud SQL |
| **NoSQL Cloud Databases** | MongoDB Atlas, AWS DynamoDB, Google Firestore, Azure Cosmos DB |

---

## Think-Pair-Share Activity

### Topic: Cloud Databases - Advantages and Challenges

**Activity Instructions:**

1. **Think** (Individual): Consider the advantages and challenges of cloud databases

2. **Pair** (Groups of 2): Discuss your thoughts with a partner

3. **Share** (Class): Present your findings to the class

---

## Data-Intensive Applications

### What are Data-Intensive Applications?

**Characteristics:**

1. **Focus on handling large volumes of data** rather than performing complex computations

2. **Involve extensive data storage, retrieval, and processing**

3. **Require fast and consistent access** to data

4. **Must be scalable** to handle growing data and user loads

5. **Common in systems** with real-time access and multiple concurrent users

6. **Depend heavily** on reliable databases and DBMSs for performance and stability

---

## Examples of Data-Intensive Applications

| **Domain** | **Example Application** | **Types of Data Handled** |
|:---|:---|:---|
| **Social Media** | Facebook, Instagram | Posts, images, comments, likes, user profiles |
| **E-Commerce** | Amazon, eBay | Product listings, transactions, user carts, reviews |
| **Banking** | Online banking apps | Customer info, transactions, loan history, statements |
| **Education** | Learning Management Systems (LMS), like Moodle | Grades, courses, materials, attendance |
| **Search Engines** | Google, Bing | Crawled pages, user queries, ranking metadata |

---

## Why is a DBMS Critical for Data-Intensive Applications?

| **DBMS Feature** | **How It Helps** |
|:---|:---|
| **Data Storage & Retrieval** | Efficient storage of huge volumes of structured data |
| **Indexing** | Fast lookups and search operations |
| **Transactions & Concurrency** | Handles simultaneous users and operations safely |
| **Security & Access Control** | Ensures authorized access to sensitive data |
| **Backup & Recovery** | Prevents data loss in case of failure |
| **Query Optimization** | Speeds up processing of complex queries |
| **Scalability (esp. in Cloud)** | Supports growth in data, users, and workloads dynamically |

---

## Homework Question

**Task:**

Identify and describe **five (5) modern technologies** used in data-intensive applications.

For each technology, include:

1. **The name of the technology**
2. **Its purpose or function**
3. **One real-world example where it is used**

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the course web

✅ Try out the **tutorial** and bring the answers to the class

---

**End of Lecture 01**
