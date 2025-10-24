# Lecture 06 - Sequence Diagrams

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:21:41

---

## Table of Contents

- [Content Overview](#content-overview)
- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [What is Behavioral Modeling](#what-is-behavioral-modeling)
- [What is a Sequence Diagram](#what-is-a-sequence-diagram)
- [Why Interaction Diagrams](#why-interaction-diagrams)
- [Main Characteristics](#main-characteristics)
- [Participants](#participants)
- [Lifelines and Activation Bars](#lifelines-and-activation-bars)
- [Messages](#messages)
- [Object Stereotypes](#object-stereotypes)
- [Interaction Fragments](#interaction-fragments)
- [Evaluation](#evaluation)
- [Summary](#summary)

---

## Content Overview

**Topics Covered:**

- Explain behavioral modeling in UML
- Describe purpose and components of sequence diagrams
- Main characteristics of sequence diagram
  - Frame
  - Actors
  - Objects/Stereotypes/Lifeline/Activation Bar
  - Messages (Asynchronous/Synchronous/Self)
  - Fragments (Ref/Loop/Opt/Alt)
- Construct sequence diagram for real world scenario
- Evaluate the correctness of interaction diagrams

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- **Explain** behavioral modeling in UML
- **Describe** the purpose and key components of sequence diagrams
- **Differentiate** message types and interaction fragments
- **Draw** sequence diagrams for real-world scenarios
- **Evaluate** the correctness of sequence diagrams

---

## How Would You Explain a Conversation?

**Question:** How would you explain a conversation sequence with a friend?

**Possible approaches:**
- Time Line?
- Messages?
- Flow charts?

---

## What is Behavioral Modeling?

### Definition

**Behavioral model** shows how the system **behaves in response to events**

---

### Interaction Diagrams

We model behavior of software using **Interaction diagrams**

**Two main types in UML interaction diagrams:**

1. **Sequence Diagrams** (time-ordered interactions)
2. **Communication Diagrams** (Collaborative interactions)

---

## Use Case Scenario to Interaction Diagram

### Example: Online Banking System - Check Balance

**Use Case Scenario:**

**Actor:** Customer

**Scenario (Main Flow):**
1. Customer requests account balance
2. System retrieves balance from the database
3. System shows balance to the customer

---

### Corresponding Sequence Diagram

```
   Customer      :BankUI    :BankController    :BankDB
      │              │              │              │
      │              │              │              │
      ├──requestBalance()───►│              │              │
      │              │              │              │
      │              ├──requestBalance()───►│              │
      │              │              │              │
      │              │              ├──getBalance()────►│
      │              │              │              │
      │              │              │◄──returnBalance()──┤
      │              │              │              │
      │              │◄──showBalance()──────┤              │
      │              │              │              │
```

---

## Why Interaction Diagrams?

### Purpose

- **Understand object collaborations**
- Provide **time-sequenced view** of interactions
- Aid **requirement validation** & design refinement
- **Bridge use cases to design**

---

## Sequence Diagram

### Definition

**Interaction diagram** which emphasizes on **time ordering of messages**

---

### Two Dimensions

```
    Participants (Actors/Objects) →
    
Time    Customer    :BankUI    :BankController    :BankDB
  ↓        │           │              │              │
           │           │              │              │
           ├─requestBalance()───►│              │              │
           │           │              │              │
           │           ├─requestBalance()───►│              │
           │           │              │              │
           │           │              ├─getBalance()────►│
           │           │              │              │
           │           │              │◄─returnBalance()──┤
           │           │              │              │
           │           │◄─showBalance()──────┤              │
           │           │              │              │
```

---

## Main Characteristics of Sequence Diagram

### Key Components

1. **Frame:** Unit of observable exchange of information between different objects
2. **Participants:**
   - Actors
   - Objects
3. **Lifelines & Activation Bars**
4. **Messages**
5. **Fragments**

---

### Annotated Example: Amount Withdrawal

```
┌─────────────────────────────────────────────────────────┐
│ SD : Amount withdrawal                      ← Frame     │
├─────────────────────────────────────────────────────────┤
│                                                         │
│   Customer    :BankUI  :BankController  :BankDB        │
│     (Actor)   (Object)    (Object)     (Object)        │
│      │           │            │            │            │
│      │           │            │            │ ← Lifeline │
│      ├─withdraw(amount)──►│            │            │   │
│      │           │            │            │            │
│      │           ├─withdraw(amount)──►│            │    │
│      │           │            │            │            │
│      │           │            ├─getBalance()──►│        │
│      │           │            │            │            │
│      │           │            │◄─returnBalance()┤       │
│      │           │            │            ▌ ← Activation│
│      │           │            │            │     Bar    │
│      │           │  ┌─────────────────────┼────┐        │
│      │           │  │ alt                 │    │        │
│      │           │  │ [sufficient balance]│    │ ← Fragment
│      │           │  │                     │    │        │
│      │           │  │  ├─withdraw(amount)─►│   │        │
│      │           │  │  │                  │   │        │
│      │           │  │  │◄─returnStatus────┤   │        │
│      │           │  │  │                  │   │        │
│      │           │  │◄─showSuccess()──────┘   │        │
│      │           │  ├─────────────────────────┤        │
│      │           │  │ [Insufficient balance]  │        │
│      │           │  │                         │        │
│      │           │  │◄─showErrorMessage()─────┘        │
│      │           │  └─────────────────────────┘        │
│      │           │            │            │            │
└─────────────────────────────────────────────────────────┘
```

---

## Participants

### Actors

**Definition:**  
External human users/external HW/services who send or receive messages

**Examples:**
- Customer
- Authentication Service
- Payment Gateway

---

### Objects

**Definition:**  
Instance of a class which interact with each other and actors.

**Two types of objects:**

1. **Named object**
   - Format: `ObjectName : ClassName`
   - Example: `AndrewCart : ShoppingCart`

2. **Anonymous object**
   - Format: `: ClassName`
   - Example: `: Order`

---

## Lifelines and Activation Bars

### Lifelines

**Definition:**  
Each participant has corresponding lifeline. **Vertical dotted line** representing the **time that an object exists**

---

### Notation

```
   Customer         :OrderUI
      │                │
      │ ← Lifeline     │ ← Lifeline
      │                │
      ⋮                ⋮
```

---

### Activation Bar

**Definition:**  
Participants' **activeness** is visible through the **activation bar**

---

### Example

```
   Customer         :OrderUI
      │                │
      ├─requestItem()──►│
      ▌                ▌  ← Activation Bars
      │                │     (thin rectangles)
      │                │
```

---

## Messages

### Definition

**Messages** are used to illustrate **communication between different active objects** of a sequence diagram

---

### Message Passing

**Message Passing:**  
Invocation of a method in one object, by another method that belongs to a different object.

**Example:**

```
  :OrderController      :OrderDB
         │                  │
         ├─requestOrderDetails()──►│
         │                  │
         │◄─────return───────┤
```

When OrderController object sends a message to OrderDB, it requests OrderDB to execute one of its own methods (requestOrderDetails())

---

### Types of Messages

| **Type** | **Description** | **Symbol** |
|:---|:---|:---|
| **Asynchronous Message** | The sender does not wait for the receiver to finish processing the message (for any return values), it continues immediately | ─────────► (solid line, open arrowhead) |
| **Synchronous Message** | When the sender waits until the receiver has finished processing the message | ─────────▶ (solid line, filled arrowhead) |
| **Return Message** | Usually shows the return value (e.g., balance, success, error) | ┄┄┄┄┄┄┄► (dashed line, open arrowhead, labeled "return") |
| **Self Message** | When one method calling another method belonging to the same object (message to the same lifeline) | ╮ (arrow loops back) │ ╰─self call |

---

### Message Example Diagram

```
Customer    :OrderUI   :OrderController   :OrderDB
   │            │              │              │
   ├─requestDetails()──►│              │              │
   │ (async)     │              │              │
   │            ├─requestOrderDetails()──►│              │
   │            │ (sync)         │              │
   │            │              ├─getOrderDetails()──►│
   │            │              │ (sync)          │
   │            │              │◄─────return─────┤
   │            │              │  (return)       │
   │            │              ├─verify()──╮     │
   │            │              │◄──────────╯     │
   │            │              │  (self)         │
   │            │◄────return────┤              │
   │            │   (return)    │              │
```

---

## Activity 1

**Scenario:** User logs into an online banking system

**Given:**
1. **Actor:** User
2. **Objects:** LoginPage, AuthService, Database
3. **Steps:**
   - Enter credentials (username, password)
   - Validate
   - Response

**Task:** Draw a basic sequence diagram for the above scenario

---

## Object Stereotypes

### Definition

**Stereotypes** differentiate the **roles** that classes/objects can play.

---

### Three Main Stereotypes

| **Type** | **Description** | **Symbol** | **Example** |
|:---|:---|:---|:---|
| **Boundary Objects** | Objects in the boundary of the system which the actors act upon | ⊕│ (circle with left bar) | `:OrderUI` |
| **Controller Objects** | Objects which control and coordinate other objects | ⊕↻ (circle with top arrow) | `:OrderController` |
| **Entity Objects** | Objects which represent information and behavior in the application domain | ⊕▁ (circle with bottom line) | `:Order` |

---

### Example with Stereotypes

```
┌────────────────────────────────────────────────────┐
│ SD: balanceInquiry                                 │
├────────────────────────────────────────────────────┤
│                                                    │
│         ┌──────────────System──────────────┐      │
│         │                                  │      │
│ Customer  :BankUI  :BankController  :BankDB│      │
│    │       ⊕│        ⊕↻              ⊕▁    │      │
│    │        │         │               │    │      │
│    │     Boundary  Controller      Entity  │      │
│    │                                        │      │
│    ├─requestBalance()──►│         │        │      │
│    │        │         │               │    │      │
│    │        ├─requestBalance()──►│        │      │
│    │        │         │               │    │      │
│    │        │         ├─getBalance()──►│   │      │
│    │        │         │               │    │      │
│    │        │         │◄─returnBalance()┤  │      │
│    │        │         │               │    │      │
│    │        │◄─showBalance()──┘        │   │      │
│    │        │         │               │    │      │
│         └──────────────────────────────────┘      │
└────────────────────────────────────────────────────┘
```

---

## Rules of Stereotypes

### Valid Communications (OK ✓)

- **Actor ↔ Boundary Object**
- **Boundary Object ↔ Controller Object**
- **Controller Object ↔ Controller Object**
- **Controller Object ↔ Entity Object**

---

### Invalid Communications (Not OK ✗)

- **Actor ↔ Controller Object**
- **Actor ↔ Entity Object**
- **Boundary Object ↔ Boundary Object**
- **Boundary Object ↔ Entity Object**
- **Entity Object ↔ Entity Object**

---

### Visual Summary

```
     OK ✓                    Not OK ✗
     
Actor ↔ Boundary         Actor ↔ Controller
Boundary ↔ Controller    Actor ↔ Entity
Controller ↔ Controller  Boundary ↔ Boundary
Controller ↔ Entity      Boundary ↔ Entity
                        Entity ↔ Entity
```

---

## Activity 2

**Scenario:** "Inquire Book status" by identifying stereotypes

**Brief Description:** Borrower inquires about availability of a book

**Actor:** Library Member

**Flow of Events:**
1. Library member clicks "SearchBook" option in the Library UI by giving the Book ID
2. Then LibraryController class will call SearchBook method in the Book class
3. Then the system will send book status to the library member
4. Next, the library member clicks reserve option in the UI and the LibraryController will call Reserve Book function of Book class
5. Finally, Book class will send the reserve status to the library member

**Task:** Draw a basic sequence diagram with stereotypes

---

## Interaction Fragments

### Purpose

**Fragments** help to show **more complex interactions** in sequence diagram mainly **logic and control**

---

### Fragment Types (TAGS)

- **REF** - reference
- **ALT** - alternative
- **OPT** - optional
- **LOOP** - loop/iteration
- **PAR** - parallel

**These interaction fragments and operators greatly enhance the ability of sequence diagrams.**

---

## Reference Fragment (REF Tag)

### Definition

**Reference to another interaction diagram.**

**Purpose:**
- Helps you to **manage a large diagram** by splitting, and potentially reusing, a collection of interactions

---

### Example

**Diagram 1: SelectBlogAccountType**

```
┌────────────────────────────────────────┐
│ sd SelectBlogAccountType               │
├────────────────────────────────────────┤
│                                        │
│ Administrator  UI:AccountCreationUI    │
│      │               │                 │
│      ├─CreateNewBlogAccount()──►│      │
│      │               │                 │
│      ├─SelectBlogAccountType(type)►│   │
│      │               │                 │
└────────────────────────────────────────┘
```

**Diagram 2: Using REF**

```
┌────────────────────────────────────────┐
│                                        │
│ Administrator  UI:AccountCreationUI    │
│      │               │                 │
│      │  ┌───────────────────────┐     │
│      │  │ ref                   │     │
│      │  │                       │     │
│      │  │ SelectBlogAccountType │     │
│      │  │                       │     │
│      │  └───────────────────────┘     │
│      │               │                 │
│      ├─EnterAuthorDetails()──►│        │
│      │               │                 │
└────────────────────────────────────────┘
        ↑
    REF fragment
```

---

## Activity 3: REF Tag

**Scenario:**  
Customer needs to log in to the system to purchase an e-ticket for cinema.

**Flow:**
1. Successfully logged customers request movie details via MovieUI and the request will pass to the MovieManager
2. Then MovieManager requests the details from the MovieDB and passes to the customer
3. Then customer can request to book with MovieID and MovieManager generates the ticket and sends to the customer
4. Then, the MovieManager updates the seat count via the SeatInfo class

**Given:** Assume that the logging process is already designed and you have to use it in your diagram.

**Task:** Draw a sequence diagram using REF tag

---

## Alternative Fragment (ALT Tag)

### Definition

**Fragment with two or more alternatives to execute with guard conditions**

**Characteristics:**
- **One time, one** of the alternatives will be true
- Or else there will be an **else clause** to execute

---

### Notation

```
┌────────────────────────────┐
│ alt                        │
├────────────────────────────┤
│ [guard condition]          │
│                            │
├────────────────────────────┤
│ [guard condition]          │
│                            │
├────────────────────────────┤
│ [else]                     │
│                            │
└────────────────────────────┘
```

---

### Example: ALT Fragment - Login

```
Customer   :LoginUI  :LoginCtrl    :DB
   │           │          │          │
   ├─login(UN,Pwd)──►│          │          │
   │           │          │          │
   │           ├─login(UN,Pwd)──►│          │
   │           │          │          │
   │           │          ├─Request(UN,Pwd)►│
   │           │          │          │
   │           │          │◄───Details───┤
   │           │          │          │
   │           │          ├─validate()─╮
   │           │          │◄───────────╯
   │           │          │          │
   │           │  ┌───────┼──────────────┐
   │           │  │ alt   │          │   │
   │           │  │ [valid login]    │   │
   │           │  │       │          │   │
   │           │  │◄─successful msg──┤   │
   │           │  │       │          │   │
   │           │  ├───────┼──────────────┤
   │           │  │ [Invalid login]  │   │
   │           │  │       │          │   │
   │           │  │◄─ask to relogin──┤   │
   │           │  │       │          │   │
   │           │  └───────┼──────────────┘
```

---

## Optional Fragment (OPT Tag)

### Definition

**Handle a single condition situation.** This looks like an alt that offers only one interaction.

**If the guard condition fails, the behavior is simply skipped**

---

### Notation

```
┌────────────────────────────┐
│ opt                        │
├────────────────────────────┤
│ [guard condition]          │
│                            │
│ (actions if true)          │
│                            │
└────────────────────────────┘
```

---

### Example: OPT Fragment - Payment

```
Actor    :App    :PaymentGateway    :Bank
  │        │              │            │
  ├─Purchase()──►│              │            │
  │        │              │            │
  │  ┌─────┼──────────────┼────────────┐
  │  │ opt │              │            │
  │  │ [giftwrapping]     │            │
  │  │     │              │            │
  │  ├─ChoseGiftWrap()►│              │            │
  │  │     │              │            │
  │  └─────┼──────────────┼────────────┘
  │        │              │            │
  │  ┌─────┼──────────────┼────────────┐
  │  │ alt │              │            │
  │  │ [Pay with Card]    │            │
  │  │     │              │            │
  │  ├─EnterCardDetails()►│              │            │
  │  │     │              │            │
  │  │     ├─PaywithCard()──►│            │
  │  │     │              │            │
  │  │     │              ├─UpdateBank()►│
  │  │     │              │            │
  │  ├─────┼──────────────┼────────────┤
  │  │ [Pay with Cash]    │            │
  │  │     │              │            │
  │  ├─CashPayment()──►│              │            │
  │  │     │              │            │
  │  └─────┼──────────────┼────────────┘
```

---

## Activity 04

**Scenario:**  
"ABC" cinema has an eTicket booking system.

**Flow:**
1. Customer can request a particular movie details via MovieUI and the request will pass to the MovieManager
2. Then MovieManager requests the details from the MovieDB and passes the results to the customer
3. **Only if the requested movie is available**, the customer can request to book with MovieID and MovieManager generates the ticket and sends to the customer

**Task:** Draw a sequence diagram to the above scenario

---

## LOOP Fragment (Loop Tag)

### Definition

**Represent a repetitive sequence with guard condition.**

---

### Special Conditions

The guard condition in a loop fragment can have two other special conditions tested against:

- **minimum iterations (min int)**
- **maximum iterations (max int)**

**When the guard condition becomes false, the loop ends.**

---

### Example: Loop Fragment - Login Attempts

```
Student    :UI    :StudentAdmin    :DB
   │         │            │          │
   │  ┌──────┼────────────┼──────────┐
   │  │ loop (1,3) [Incorrect Pwd]   │ ← Min/Max & Guard
   │  │      │            │          │
   │  ├─login(UN,Pwd)──►│            │          │
   │  │      │            │          │
   │  │      ├─login(UN,Pwd)──►│          │
   │  │      │            │          │
   │  │      │            ├─Check(UN,Pwd)►│
   │  │      │            │          │
   │  │      │            │◄───result───┤
   │  │      │            │          │
   │  └──────┼────────────┼──────────┘
             │            │          │
```

**Annotations:**
- **(1,3)** = Min 1 iteration, Max 3 iterations
- **[Incorrect Pwd]** = Guard condition
- Loop continues while password is incorrect, up to 3 times

---

## Activity 05

**Scenario:**  
"ABC" cinema has an eTicket booking system.

**Flow:**
1. Customer can request a particular movie details via MovieUI and the request will pass to the MovieManager
2. Then MovieManager requests the details from the MovieDB and passes the results to the customer
3. Only if the requested movie is available, the customer can request to book with MovieID and MovieManager generates the ticket and sends to the customer
4. **In the same way, customer can make any number of requests for eTickets for different movies**

**Task:** Draw a sequence diagram (use LOOP fragment)

---

## Evaluation

### How Do You Evaluate Your Sequence Diagram?

**Checklist:**

✓ Are **all actors & objects** included?

✓ Are **messages well-ordered**?

✓ Does it **reflect real scenario**?

✓ Is it **readable and reusable**?

---

## Errors and Consequences

### Common Errors

**Errors:**
- **Missing messages** → miscommunication
- **Wrong logic in fragment** → incorrect flow

**Consequences:**
- Leads to **expensive redesign** in later SDLC stages

---

## Summary

### Key Learnings

**Behavioral modeling in UML:**
- Shows system response to events
- Uses interaction diagrams

**Sequence Diagrams:**
- Time-ordered interactions
- Main components: Frame, Actors, Objects, Lifelines, Activation Bars, Messages, Fragments

**Participants:**
- Actors (external entities)
- Objects (instances with stereotypes: Boundary, Controller, Entity)

**Messages:**
- Asynchronous (don't wait)
- Synchronous (wait for response)
- Return (dashed arrow)
- Self (loop to same object)

**Fragments:**
- REF (reference to another diagram)
- ALT (alternative paths with guards)
- OPT (optional with single guard)
- LOOP (repetition with min/max/guard)

**Evaluation:**
- Check completeness, ordering, realism, readability

---

## References

### Books and Standards

**Sommerville**  
Software Engineering, 10th edition, Pearson Education Limited, 2016

**Russ Miles, Kim Hamilton**  
Learning UML 2.0, O'Reilly Media, Inc, 2009

**IEEE Computer Society**  
SWEBOK: Guide to the Software Engineering Body of Knowledge, IEEE Computer Society Publications, 2014

**UML 2 Bible**  
Chapters 8 & 9

**Craig Larman**  
Applying UML and Patterns: Chapter 15

**The Elements of UML 2.0 Style**  
Chapter 7

---

**End of Lecture 06**

**Thank You!**
