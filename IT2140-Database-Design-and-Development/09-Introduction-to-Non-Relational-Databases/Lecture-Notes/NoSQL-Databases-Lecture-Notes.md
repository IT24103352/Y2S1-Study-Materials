# Lecture 09 - Introduction to Non-Relational Databases (NoSQL)

**Course:** IT2140 - Database Design and Development  
**Lecture:** 09  
**Topic:** Introduction to Non-Relational Databases (NoSQL)  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:43:00

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Introduction to Non-Relational Databases](#introduction-to-non-relational-databases)
- [Why NoSQL](#why-nosql)
- [NoSQL Databases](#nosql-databases)
- [Who Uses NoSQL](#who-uses-nosql)
- [RDBMS vs NoSQL](#rdbms-vs-nosql)
- [CAP Theorem](#cap-theorem)
- [BASE Concept](#base-concept)
- [Types of Non-Relational Databases](#types-of-non-relational-databases)
- [Choosing NoSQL Databases](#choosing-nosql-databases)
- [Current Trends](#current-trends-in-nosql-databases)
- [Challenges](#challenges-in-non-relational-data-modelling)
- [References](#references)
- [Next Week](#what-you-have-to-do-by-next-week)

---

## Lecture Content

- Introduction to Non-Relational Databases
- Why NoSQL?
- NoSQL Databases
- Who uses NoSQL?
- RDBMS vs NoSQL
- CAP Theorem
- BASE Concept
- Types of Non-Relational Databases
- Choosing NoSQL databases
- Current Trends in NoSQL Databases
- Challenges in Non-Relational Data Modelling

---

## Learning Outcomes

At the end of this lecture students should be able to:

- **Differentiate** between relational and non-relational data models
- **Explain** the need for NoSQL and CAP concepts
- **Identify and describe** key types of non-relational databases
- **Discuss** current trends and challenges in data modeling for NoSQL systems

---

## Introduction to Non-Relational Databases

### Traditional Relational Databases

**Relational databases** use **tables, rows, and columns**; perfect for **structured data**.

---

### Modern Data Challenges

**Modern systems** need to handle:
- **Massive** data (Big Data)
- **Fast** data (real-time streams)
- **Varied** data (IoT, social media, unstructured)

---

### Non-Relational Databases (NoSQL)

**Non-Relational Databases (NoSQL)** emerged to handle:

**1. High scalability & availability**
- Handle millions of requests per second
- Distribute across multiple servers

**2. Flexible schema for unstructured data**
- No fixed table structure
- Dynamic attributes

**3. Distributed storage across clusters**
- Horizontal scaling
- Data replication

---

### Examples

**Popular NoSQL Databases:**
- **MongoDB** (Document)
- **Cassandra** (Column-family)
- **Redis** (Key-value)
- **Neo4j** (Graph)

---

## Why NoSQL?

### RDBMS Limitations

**Traditional RDBMS struggles with:**

**1. Large, distributed datasets**
- Vertical scaling (adding more CPU/RAM) has limits
- Expensive hardware upgrades

**2. Real-time and high-velocity data**
- INSERT/UPDATE operations can be slow
- Complex joins affect performance

**3. Dynamic or unstructured data models**
- Fixed schema makes changes difficult
- Requires ALTER TABLE for new fields

---

### Web Scale Solutions

**Web companies** (Google, Amazon, Facebook) built internal scalable systems:
- **Google:** BigTable
- **Amazon:** DynamoDB
- **Facebook:** Cassandra

---

### NoSQL Benefits

**NoSQL provides:**

✅ **Horizontal scaling** - add more servers instead of upgrading hardware

✅ **Replication** - data copied across multiple nodes for fault tolerance

✅ **Eventual consistency** - trade immediate consistency for availability

---

## NoSQL Databases

### Origin of the Term

**"NoSQL is an accidental term with no precise definition"**

**History:**
- First used at an **informal meetup in 2009** in San Francisco
- Presentations from:
  - Voldemort
  - Cassandra
  - Dynomite
  - HBase
  - Hypertable
  - CouchDB
  - MongoDB

*Source: [Sadalage & Fowler: NoSQL Distilled, 2012]*

---

### Humorous Interpretation

**Comic: "How to Write a CV"**

```
┌─────────────────────────────────────┐
│  Panel 1:                           │
│  Boss: "Do you have any expertise   │
│         in SQL?"                    │
│  Developer: "NO"                    │
├─────────────────────────────────────┤
│  Panel 2:                           │
│  [Pause]                            │
├─────────────────────────────────────┤
│  Panel 3:                           │
│  Boss: "Doesn't matter. Write:     │
│         'EXPERT IN NO SQL'"         │
└─────────────────────────────────────┘

Caption: "Leverage the NoSQL boom"
Credit: geek & poke
```

---

## NoSQL Databases - Definition

### Core Characteristics

**NoSQL:** Database technologies that are (mostly):

**1. Not using the relational model (nor the SQL language)**

**2. Designed to run on large clusters (horizontally scalable)**

**3. No schema** - fields can be freely added to any record

**4. Open source**

**5. Based on the needs of 21st century web estates**

*Source: [Sadalage & Fowler: NoSQL Distilled, 2012]*

---

### Other Characteristics (often true)

**Additional features:**

✅ **Easy replication support**
- Fault-tolerance
- Query efficiency

✅ **Simple API**
- RESTful interfaces
- Easy to integrate

✅ **Eventually consistent** (not ACID)
- Prioritizes availability over immediate consistency

---

## Who Uses NoSQL?

### Major Companies

**Leading tech companies using NoSQL:**

```
┌─────────────────────────────────────────┐
│  Google        LinkedIn      Adobe      │
│  [Google]      [LinkedIn]    [Adobe]    │
│                                          │
│  Twitter       Facebook      eBay       │
│  [Twitter]     [Facebook]    [eBay]     │
└─────────────────────────────────────────┘
```

**Use Cases:**
- **Google:** Search, BigTable
- **LinkedIn:** User profiles, connections
- **Twitter:** Real-time tweets, timelines
- **Facebook:** Social graph, messages
- **Adobe:** Document management
- **eBay:** Product catalog, transactions

---

## RDBMS vs NoSQL

### Comparison Table

| **Aspect** | **RDBMS** | **NoSQL** |
|:---|:---|:---|
| **Data Structure** | Structured and organized data | Unstructured or semi-structured data |
| **Query Language** | Structured Query Language (SQL) | No declarative query language |
| **Schema** | Schema centric (fixed schema) | Schema free (dynamic schema) |
| **Storage** | Data and its relationships are stored in separate tables | Distributed storage |
| **Relationships** | Complex data relationships | Very simple relationships |
| **Joins** | Extensive use of joins | Avoid joins |
| **Focus** | Database-centric | Application-centric or developer-centric |
| **Standards** | Well defined standards | Standards not yet evolved |

---

### Key Differences Summary

**RDBMS:**
- ✅ Strong consistency (ACID)
- ✅ Complex queries with joins
- ✅ Well-established standards
- ❌ Difficult to scale horizontally
- ❌ Fixed schema

**NoSQL:**
- ✅ High scalability
- ✅ Flexible schema
- ✅ High performance for simple queries
- ❌ Limited query capabilities
- ❌ Eventual consistency

---

## CAP Theorem

### Definition

**CAP Theorem** states that a distributed database system can guarantee **only TWO** of the following **three** properties:

**1. Consistency (C)**
**2. Availability (A)**
**3. Partition Tolerance (P)**

---

### Visual Representation

```
              Consistency (C)
                    ●
                   / \
                  /   \
                 /     \
                /  CA   \
               /  RDBMS  \
              /___________\
             /   ●     ●   \
            / CP    |   AP  \
           /MongoDB | CouchDB\
          /  HBase  |Cassandra\
         /   Redis  |DynamoDB \
        /           |   Riak   \
       ●─────────────────────●
  Availability (A)    Partition
                    Tolerance (P)
```

---

### Three Combinations

**CA (Consistency + Availability):**
- **RDBMS** (traditional databases)
- Not partition tolerant
- Works well in single-node or tightly coupled systems

**CP (Consistency + Partition Tolerance):**
- **MongoDB, HBase, Redis**
- May sacrifice availability during network partitions
- Ensures data consistency

**AP (Availability + Partition Tolerance):**
- **CouchDB, Cassandra, DynamoDB, Riak**
- Always available even during partitions
- Eventual consistency

---

### Detailed Explanations

**1. Consistency:**
- Data in the database **remains consistent** after the execution of an operation
- **Example:** After an update operation, all clients see the **same data**

**2. Availability:**
- System is **always on**
- Every request receives a response (success or failure)

**3. Partition Tolerance:**
- System continues to **function** even if the **communication among the servers is unreliable**
- Network failures don't bring down the system

---

## BASE Concept

### Definition

**BASE** is a vague term often used as **contrast to ACID**.

---

### Three Components

**1. Basically Available**
- The system **works basically all the time**
- **Partial features** can occur, but without **total system failure**
- Some parts may be unavailable, but core functionality works

**2. Soft state**
- The system is in **flux**, **non-deterministic state**
- **Changes occur all the time**
- Data may be in transition between nodes

**3. Eventual consistency**
- The system **will be in some consistent state**
- **At some time in future**
- Not immediately, but eventually all nodes will have the same data

---

### ACID vs BASE

| **ACID (RDBMS)** | **BASE (NoSQL)** |
|:---|:---|
| **A**tomicity | **B**asically Available |
| **C**onsistency | **S**oft state |
| **I**solation | **E**ventual consistency |
| **D**urability | |

**Trade-off:**
- **ACID** → Strong consistency, lower availability
- **BASE** → High availability, eventual consistency

---

## Types of Non-Relational Databases

### Four Main Types

| **Type** | **Description** | **Examples** |
|:---|:---|:---|
| **Key-value Stores** | Simplest NoSQL databases. Every single item in the database is stored as an attribute name (or "key"), together with its value | Riak, Voldemort, Redis |
| **Document Databases** | Pair each key with a complex data structure known as a document. Documents can contain many different key-value pairs, or key-array pairs, or even nested documents | MongoDB, ClusterPoint, CouchDB, MarkLogic |
| **Graph Stores** | Used to store information about networks, such as social connections | Neo4J, HyperGraphDB, OrientDB |
| **Wide-column Stores** | Optimized for queries over large datasets, and store columns of data together, instead of rows | Cassandra, HBase, BigTable |

---

## 1. Key-Value Stores

### Characteristics

**Simplest** NoSQL databases

**Structure:**
```
Key → Value
```

**Every single item** in the database is stored as:
- An **attribute name** (or "key")
- Together with its **value**

---

### Representatives

**Popular Key-Value Stores:**

**1. Riak**
- Distributed key-value store
- High availability

**2. Voldemort**
- Developed by LinkedIn
- Distributed storage

**3. Redis**
- In-memory data structure store
- Fast access
- Supports complex data types (lists, sets, hashes)

---

### Use Cases

**Best for:**
- Session storage
- Caching
- User profiles
- Shopping carts
- Preferences

**Example (Redis):**

```redis
SET user:1000:name "John Smith"
SET user:1000:email "john@example.com"
GET user:1000:name
→ "John Smith"
```

---

## 2. Document Databases

### Characteristics

**Pair each key** with a **complex data structure** known as a **document**.

**Documents can contain:**
- Many different **key-value pairs**
- **Key-array pairs**
- **Nested documents**

---

### Representatives

**Popular Document Databases:**

**1. MongoDB**
- Most popular document database
- JSON-like documents (BSON)
- Rich query language

**2. CouchDB**
- RESTful API
- Multi-version concurrency control

**3. MarkLogic**
- Enterprise-grade
- Built-in search

**4. ClusterPoint**
- Text search capabilities

---

### Example Document (MongoDB)

```json
{
  "_id": "1000",
  "name": "John Smith",
  "email": "john@example.com",
  "age": 30,
  "address": {
    "street": "123 Main St",
    "city": "Colombo",
    "country": "Sri Lanka"
  },
  "skills": ["Java", "Python", "MongoDB"],
  "projects": [
    {
      "name": "Project A",
      "role": "Developer",
      "duration": "6 months"
    }
  ]
}
```

---

### Use Cases

**Best for:**
- Content management systems (CMS)
- Blogging platforms
- E-commerce applications
- Real-time analytics
- Web analytics
- User profiles

---

## 3. Graph Databases

### Characteristics

**Used to store information about networks**, such as:
- Social connections
- Relationships between entities
- Network topology

**Structure:**
- **Nodes** (entities)
- **Edges** (relationships)
- **Properties** (attributes on nodes and edges)

---

### Representatives

**Popular Graph Databases:**

**1. Neo4j**
- Most popular graph database
- Cypher query language
- ACID compliant

**2. HyperGraphDB**
- Hypergraph model
- Complex relationships

**3. OrientDB**
- Multi-model (graph + document)
- SQL-like query language

---

### Example Use Case: Social Network

```
Nodes:
  (John) --[FRIEND]→ (Alice)
  (John) --[LIKES]→ (Post1)
  (Alice) --[WORKS_AT]→ (Company)
  (Post1) --[TAGGED]→ (Location)

Query (Cypher - Neo4j):
MATCH (user:Person)-[:FRIEND]->(friend:Person)
WHERE user.name = 'John'
RETURN friend.name
```

---

### Use Cases

**Best for:**
- Social networks (Facebook, LinkedIn)
- Recommendation engines
- Fraud detection
- Network and IT operations
- Knowledge graphs
- Routing information

---

## 4. Wide-Column Stores (Column-Family)

### Characteristics

**Optimized for queries over large datasets**

**Store columns of data together**, instead of rows

**Structure:**
- Row key
- Column families
- Columns within families
- Timestamps for versioning

---

### Representatives

**Popular Wide-Column Stores:**

**1. Cassandra**
- Developed by Facebook
- High availability
- Linear scalability

**2. HBase**
- Built on Hadoop
- Google BigTable clone
- Strong consistency

**3. BigTable**
- Google's original implementation
- Petabyte-scale

---

### Example Structure

**Traditional Row-Based:**

```
Row 1: [ID=1, Name=John, Age=30, City=Colombo]
Row 2: [ID=2, Name=Alice, Age=25, City=Kandy]
```

**Column-Family Based:**

```
Column Family: Personal
  Row 1: Name=John, Age=30
  Row 2: Name=Alice, Age=25

Column Family: Location
  Row 1: City=Colombo
  Row 2: City=Kandy
```

---

### Use Cases

**Best for:**
- Time-series data
- IoT data
- Heavy write volume
- Maintaining counters
- Logging and analytics
- Content management systems

**Example (Cassandra):**

```sql
CREATE TABLE user_activity (
  user_id UUID,
  timestamp TIMESTAMP,
  activity TEXT,
  PRIMARY KEY (user_id, timestamp)
);
```

---

## Reasons to Choose NoSQL Databases

### Two Main Reasons

**1. Improve Programmer Productivity**
- Use a database that **better matches** an application's needs
- Flexible schema allows rapid development
- Reduce impedance mismatch

**2. Improve Data Access Performance**
- Via some combination of:
  - **Handling larger data volumes**
  - **Reducing latency**
  - **Improving throughput**

---

## Choosing NoSQL Databases

### General Guidelines

It depends on the **system requirements**. Here are some general guidelines:

---

### Key-Value Databases

**Generally useful for:**
- Storing **session information**
- **User profiles**
- **Preferences**
- **Shopping cart data**

**Examples:** Redis, Riak, Voldemort

---

### Document Databases

**Generally useful for:**
- **Content management systems**
- **Blogging platforms**
- **Web analytics**
- **Real-time analytics**
- **E-commerce applications**

**Examples:** MongoDB, CouchDB, MarkLogic

---

### Column Family Databases

**Generally useful for:**
- **Content management systems**
- **Blogging platforms**
- **Maintaining counters**
- **Expiring usage**
- **Heavy write volume**

**Examples:** Cassandra, HBase, BigTable

---

### Graph Databases

**Very well suited to problem spaces** where we have **connected data** such as:
- **Social networks**
- **Spatial data**
- **Routing information** for goods and money
- **Recommendation engines**

**Examples:** Neo4j, OrientDB, HyperGraphDB

---

## Current Trends in NoSQL Databases

### Emerging Trends

**1. Multi-Model Databases**
- Support **multiple data types** (document + graph + key-value)
- **Example:** ArangoDB

**2. Serverless Databases**
- **Auto-scaling** NoSQL in the cloud
- Pay-per-use pricing
- **Examples:** Firebase, DynamoDB

**3. Integration with AI & Analytics**
- Real-time data pipelines
- Machine learning integration
- Stream processing

**4. Polyglot Persistence**
- Using **both SQL and NoSQL** in hybrid systems
- Different databases for different use cases
- Example: MySQL for transactions + MongoDB for product catalog

**5. Increased focus on data governance and consistency**
- Better tooling for data management
- Improved consistency models

---

## Challenges in Non-Relational Data Modelling

### Key Challenges

**1. Lack of standard query languages**
- Each NoSQL database has its own query syntax
- No universal standard like SQL

**2. Difficulty enforcing relationships**
- No foreign keys
- Application must maintain referential integrity

**3. Eventual consistency complicates real-time data**
- Data may be temporarily inconsistent
- Difficult for applications requiring immediate consistency

**4. Migration from relational to NoSQL**
- Requires **re-designing schema logic**
- Denormalization needed
- Complex transformation process

**5. Limited trained expertise and tooling**
- Fewer developers with NoSQL experience
- Less mature tooling compared to RDBMS

---

## Summary

### Key Concepts

**NoSQL Overview:**
- ✅ Emerged for **web-scale** applications
- ✅ **Horizontal scalability**
- ✅ **Flexible schema**
- ✅ **High availability**

**CAP Theorem:**
- Can only guarantee **2 out of 3**: Consistency, Availability, Partition Tolerance
- Different NoSQL databases make different trade-offs

**BASE:**
- Alternative to ACID
- Basically Available, Soft state, Eventual consistency

---

### Four Types of NoSQL

| **Type** | **Best For** | **Example** |
|:---|:---|:---|
| **Key-Value** | Session storage, caching | Redis |
| **Document** | CMS, e-commerce | MongoDB |
| **Graph** | Social networks, recommendations | Neo4j |
| **Column-Family** | Time-series, heavy writes | Cassandra |

---

### Decision Framework

```
┌─────────────────────────────────────┐
│  Choose NoSQL When:                 │
├─────────────────────────────────────┤
│  ✓ Massive scale (millions of ops)  │
│  ✓ Flexible/dynamic schema needed   │
│  ✓ Horizontal scaling required      │
│  ✓ High availability critical       │
│  ✓ Simple data relationships        │
└─────────────────────────────────────┘

┌─────────────────────────────────────┐
│  Stick with RDBMS When:             │
├─────────────────────────────────────┤
│  ✓ Complex transactions (ACID)      │
│  ✓ Complex joins required           │
│  ✓ Strong consistency needed        │
│  ✓ Well-defined schema              │
│  ✓ Established tools/expertise      │
└─────────────────────────────────────┘
```

---

### Comparison Summary

| **Feature** | **RDBMS** | **NoSQL** |
|:---|:---:|:---:|
| **Schema** | Fixed | Dynamic |
| **Scaling** | Vertical | Horizontal |
| **Consistency** | Strong (ACID) | Eventual (BASE) |
| **Queries** | SQL (complex joins) | Simple API |
| **Best for** | Structured data | Unstructured data |
| **Maturity** | High | Growing |

---

## References

### Academic Sources

**1. Sadalage, P. J., & Fowler, M. (2012)**
- *NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence*
- Addison-Wesley Professional

**2. Pramod Sadalage**
- *NoSQL Databases: An Overview*
- Available at: http://www.thoughtworks.com/insights/blog/nosql-databases-overview

---

## What You Have to Do by Next Week

✅ Try out the **self-test questions** on the course web

✅ Complete the **tutorial**

---

**End of Lecture 09**
