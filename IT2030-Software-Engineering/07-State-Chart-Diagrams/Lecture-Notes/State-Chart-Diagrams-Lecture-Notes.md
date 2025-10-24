# Lecture 07 - State-Chart (State-Machine) Diagram

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:25:01

---

## Table of Contents

- [Session Outcomes](#session-outcomes)
- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [What is a State](#what-is-a-state)
- [UML State Machine Diagram](#uml-state-machine-diagram)
- [State Diagram Symbols](#state-diagram-symbols)
- [States](#states)
- [Transitions](#transitions)
- [Events and Triggers](#events-and-triggers)
- [Composite States](#composite-states)
- [State Machine Diagram Guidelines](#state-machine-diagram-guidelines)
- [Summary](#summary)

---

## Session Outcomes

**Topics Covered:**

- Introduction to State Diagrams
- State Diagram symbols
- States
  - Simple states
  - Composite states
- Transitions
  - Call Event
  - Change Event
  - Time Event

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- **Define and explain** the concept of states, events, and transitions in UML state-machine diagrams
- **Differentiate** between simple states, composite states, and special states (initial and final) with examples
- **Identify and apply** different types of triggers (call, change, time events) and guard conditions in state transitions
- **Construct** state-machine diagrams to model dynamic behavior of objects in real-world scenarios such as seminars, alarms, and ATM systems
- **Evaluate and refine** state-machine diagrams by applying best practices and avoiding issues such as black-hole or miracle states

---

## What is a State?

### General Definition

**State** is a **particular condition** that someone or something is in at a **specific time**.

---

### Real-World Examples

**States of a Human Life:**
- Infant
- Child
- Teenager
- Adult
- Senior

**States of a Bulb:**
- Off
- On
- Broken

---

### Activity: Determine States

**Objects to analyze:**

**A Fan:**
- Off
- Low Speed
- Medium Speed
- High Speed

**A Car:**
- Parked
- Idling
- Moving
- Stopped

---

## What are the States of an Object?

### Object States

**Objects have states:**

```
    Active
      │
      ▼
    Idle
      │
      ▼
   Waiting
```

**Examples of object states:**
- Active (performing an operation)
- Idle (ready but not performing)
- Waiting (awaiting input or event)

---

## UML State Machine Diagram

### Definition

A **state machine diagram** models the **behavior of a single object**, specifying the **sequence of events** that an object goes through during its **lifetime**.

---

### Key Characteristics

- There is **only one** state machine diagram for a class
- A state diagram is typically drawn for **only the classes which contain significant dynamic behavior**

---

### Purpose

**State diagrams are used to:**
- Model the **lifecycle** of an object
- Show **state transitions** based on events
- Represent **complex behavior** that changes over time

---

## State Diagram Symbols

### Initial State

**Notation:**  
Solid filled circle (●)

**Purpose:**  
Represents the **starting point** of the state machine

```
  ●  ← Initial State
  │
  ▼
```

---

### Final State

**Notation:**  
Bull's-eye (circle within a circle) (◉)

**Purpose:**  
Represents the **end point** of the state machine

```
  ◉  ← Final State
```

---

### Simple State

**Notation:**  
Rounded rectangle with state name

```
┌─────────────────┐
│   State Name    │
└─────────────────┘
```

---

### State with Internal Activities

**Format:**

```
┌─────────────────────────┐
│   State Name            │
├─────────────────────────┤
│ entry / action          │
│ do / activity           │
│ exit / action           │
└─────────────────────────┘
```

---

### Transition

**Notation:**  
Arrow from one state to another

```
┌──────────┐        ┌──────────┐
│ State A  │───────▶│ State B  │
└──────────┘        └──────────┘
```

---

## States

### Simple State

**Definition:**  
A state that does not have substates (nested states)

---

### State Format

```
┌─────────────────────────┐
│   State Name            │
├─────────────────────────┤
│ entry / entry action    │
│ do / activity           │
│ exit / exit action      │
└─────────────────────────┘
```

---

### Internal Activities

**entry / action:**
- Executed when **entering** the state

**do / activity:**
- Ongoing activity performed **while** in the state

**exit / action:**
- Executed when **leaving** the state

---

### Example: ATM State

```
┌──────────────────────────────┐
│   Serving Customer           │
├──────────────────────────────┤
│ entry / readCard             │
│ exit / ejectCard             │
└──────────────────────────────┘
```

**Explanation:**
- When entering "Serving Customer" state → read the card
- When exiting "Serving Customer" state → eject the card

---

## Transitions

### Definition

A **transition** is a **relationship between two states** indicating that an object in the first state will perform certain actions and **enter the second state** when a specified **event occurs** and specified **conditions are satisfied**.

---

### Transition Notation

```
┌──────────┐   trigger [guard] / action   ┌──────────┐
│ Source   │──────────────────────────────▶│ Target   │
│ State    │                               │ State    │
└──────────┘                               └──────────┘
```

**Components:**
- **Trigger/Event:** What causes the transition
- **Guard Condition:** Optional condition that must be true
- **Action:** Optional action performed during transition

---

### Simple Transition Example

```
┌──────────┐                    ┌──────────┐
│  Idle    │─────insert card────▶│ Reading  │
└──────────┘                    └──────────┘
```

---

## Events and Triggers

### Types of Events

1. **Call Event** (Signal/Message)
2. **Change Event** (Condition)
3. **Time Event** (After duration)

---

## Call Event (Signal/Message)

### Definition

**Call Event** is triggered when the object **receives a message** (method call).

---

### Notation

```
message()
message(arguments)
```

---

### Examples

```
┌──────────┐                     ┌──────────┐
│  Idle    │──insertCard()──────▶│ Reading  │
└──────────┘                     └──────────┘

┌──────────┐                         ┌──────────┐
│ Waiting  │──processOrder(id)──────▶│Processing│
└──────────┘                         └──────────┘
```

---

## Change Event

### Definition

**Change Event** is triggered when a **condition becomes true**.

**Format:** `when(condition)`

---

### Notation

```
when(condition)
```

---

### Examples

**Example 1:**
```
when(T > 100°)
when(temperature exceeds 100°)
```

**Example 2:**
```
┌──────────┐                              ┌──────────┐
│ Heating  │──when(temp > 100)───────────▶│ Boiling  │
└──────────┘                              └──────────┘
```

---

## Time Event

### Definition

**Time Event** is triggered **after** a specified **time duration**.

**Format:** `after(time duration)`

---

### Notation

```
after(timespan)
```

---

### Examples

```
after(1 minute)
after(60 seconds)
after(5 hours)
```

**Example in diagram:**

```
┌──────────┐                          ┌──────────┐
│ Active   │──after(5 minutes)───────▶│ Timeout  │
└──────────┘                          └──────────┘
```

---

## Triggers with Guard Conditions

### Format

All triggers can have **guard conditions**. But these are **optional**.

---

### Notation

```
┌──────────────┐   trigger [guard]   ┌──────────────┐
│ Source State │────────────────────▶│ Target State │
└──────────────┘                     └──────────────┘
```

---

### General Formats

```
message() [Guard Condition]
message(arguments) [Guard Condition]
when(condition) [Guard Condition]
after(timespan) [Guard Condition]
```

---

### Example: Order Processing

```
                     ┌──────────────┐
                     │   Waiting    │
                     └───┬──────┬───┘
                         │      │
      receive order      │      │  receive order
      [amount > $25]     │      │  [amount <= $25]
                         │      │
                         ▼      ▼
              ┌───────────────┐  ┌──────────────┐
              │Confirm Credit │  │Cancel Order  │
              └───┬────────┬──┘  └──────────────┘
                  │        │
              approved  rejected
                  │        │
                  ▼        ▼
          ┌──────────┐  ┌──────────────┐
          │ Process  │  │Cancel Order  │
          │ Order    │  │              │
          └──────────┘  └──────────────┘
```

---

## Activity 01

**Scenario:**  
Draw a state machine diagram for the **Seminar class** during registration.

**Requirements:**
1. The seminar is first **proposed** and then **scheduled**
2. Then the Seminar will be **opened for enrollment** for the students. When enrollment starts, the **seat capacity is zero**
3. As the number of seats is **limited**, as long as the Seminar is **open for enrollment**, the remaining seats/size will be **updated** each time a student is **enrolled** in the seminar

**Task:** Draw the state machine diagram

---

## Activity 02

**Scenario:**  
Draw the State Diagram for a **Burglar Alarm**.

**Requirements:**
1. Burglar alarm is initially at the state of **resting**
2. Then by **setting** the alarm, burglar alarm state may be changed to the state **set**
3. When the alarm is **set**, it may be **turned off**. This will allow the alarm to be **resting**
4. While the alarm is **set** it can be **triggered**, which will make it **ring**
5. When the alarm is **ringing**, it can be **turned off**. Then the alarm will be **resting** again

**Note:** No need to model the final state.

**Task:** Draw a state diagram for the Burglar Alarm class

---

## Activity 03

**Scenario:**  
Draw the State Diagram for **Courseweb user login**.

**Requirements:**
1. You need to type a **valid username and password** to **login** to Courseweb
2. Once you are **logged in** you have access to **unit contents**
3. You can **logoff** once you have completed using the Courseweb
4. There is also a **timeout of 5 minutes** if you are **inactive** and you are **automatically logged off**

**Task:** Draw a state diagram for the Courseweb user class

---

## Composite State

### Definition

A **composite state** is a state that has **substates** (nested states).

**Substates** are in a separate compartment called **"Decomposition" compartment**.

---

### Example Structure

```
┌──────────────────────────────────┐
│     Serving Customer             │
├──────────────────────────────────┤
│  ┌─────────────────────────┐    │
│  │ Customer Authentication │    │
│  └───────────┬─────────────┘    │
│              │                   │
│              ▼                   │
│  ┌─────────────────────────┐    │
│  │     Transaction         │    │
│  └─────────────────────────┘    │
└──────────────────────────────────┘
```

---

## Composite State - Hidden Decomposition Indicator

### Purpose

In some cases, it is convenient to **hide the decomposition** of a composite state.

**Reasons:**
- There may be a **large number of states** nested inside
- They may simply **not fit** in the graphical space available

---

### Notation

The composite state may be represented by a **simple state graphic** with a special **"composite" icon**, usually in the **lower right-hand corner**.

```
┌──────────────────────────────┐
│   HiddenComposite            │
├──────────────────────────────┤
│ entry / start dial tone      │
│ exit / stop dial tone        │
│                          ⊕⊕ │  ← Hidden decomposition indicator
└──────────────────────────────┘
```

---

## Activity 04

**Scenario:**  
Draw a State Chart for the given **ATM**.

**Requirements - Part 1:**
1. ATM is initially **turned off**, it is in the **Off** state. After the power is turned on, ATM performs **startup action** and enters **Self Test** state
2. If the test is **unsuccessful**, ATM goes into **Out of Service** state, otherwise goes to the **Idle** state. In this state ATM waits for customer interaction
3. The ATM state changes from **Idle** to **Serving Customer** when the customer **inserts debit or credit card** in the ATM's card reader
4. On entering the **Serving Customer** state, the **entry action readCard** is performed. The state also has **exit action ejectCard** which releases customer's card on leaving the state, no matter what caused the transition out of the state

---

**Requirements - Part 2:**
5. **Serving Customer** state is a **composite state** with sequential substates:
   - **Customer Authentication**
   - **Selecting Transaction**
   - **Transaction**
   
   Customer Authentication and Transaction are **composite states** by themselves (shown with hidden decomposition indicator icon). These states follow in order within the composite state

6. **Serving Customer** state has a transition back to the **Idle** state after **transaction is completed**. While serving customer if **failure occurs** it will move into the **Out of Service** state. ATM machine can be **turned off** when it is in the **Idle** state

7. While in the **Out of Service** state when **maintenance is performed** it will move back to **Self Test** state

8. A transition from **Serving Customer** state back to the **Idle** state could be triggered by **cancel event** as the customer could **cancel transaction at any time**

**Task:** Draw the complete ATM state machine diagram

---

## State Machine Diagram Guidelines

### Best Practices

**Keep the diagram simple:**
- If it is too complex, perhaps it should be **broken down into separate diagrams**

---

### Common Issues to Avoid

**Question "Black-Hole" States:**
- A **black-hole state** is one that has **transitions into it** but **none out of it**
- This should be true **only of final states**

```
     ┌──────────┐
     │          │
────▶│Black-Hole│  ✗ No exits!
     │  State   │
     └──────────┘
```

---

**Question "Miracle" States:**
- A **miracle state** is one that has **transitions out of it** but **none into it**
- This should be true **only of start points**

```
     ┌──────────┐
     │ Miracle  │
     │  State   │────▶  ✗ No entries!
     └──────────┘
```

---

## Summary

### Key Concepts

**State Machine Diagrams:**
- Model **behavior of a single object**
- Show **sequence of events** during object's lifetime
- One diagram per class (for classes with significant behavior)

**States:**
- **Simple states** (no substates)
- **Composite states** (contain substates)
- **Special states:** Initial (●) and Final (◉)
- **Internal activities:** entry, do, exit

**Transitions:**
- Relationship between states
- Components: trigger, guard, action
- Format: `trigger [guard] / action`

---

### Event Types

**Call Event:**
- `message()`
- `message(arguments)`

**Change Event:**
- `when(condition)`

**Time Event:**
- `after(timespan)`

**All can have guard conditions (optional)**

---

### Guidelines

**Best Practices:**
- Keep diagrams simple
- Break down complex diagrams
- Avoid black-hole states (except final)
- Avoid miracle states (except initial)

---

## References

### Books

**UML 2 Bible**

**Learning UML 2.0**  
By Kim Hamilton, Russ Miles

**Chapter 15 - UML 2 Bible**

---

**End of Lecture 07**

**Thank You!**
