# Lecture 09 - Design Patterns – Part I

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:33:02

---

## Table of Contents

- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [What is a Design Pattern](#what-is-a-design-pattern)
- [Why Study Design Patterns](#why-study-design-patterns)
- [History of Design Patterns](#history-of-design-patterns)
- [Key Components of a Design Pattern](#key-components-of-a-design-pattern)
- [Design Patterns Classification](#design-patterns-classification)
- [Singleton Pattern](#singleton-pattern)
- [Observer Pattern](#observer-pattern)
- [Summary](#summary)

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- **Explain** the concept and importance of design patterns in software development
- **Identify** the key components of a design pattern
- **Describe** the structure and intent of the Singleton and Observer patterns
- **Illustrate** these two patterns with suitable real-world examples

---

## What is a Design Pattern?

### Definition

A **design pattern** is:

- A **proven solution** to a **common software design problem** in a **specific context**
- Provides a **reusable template** for solving recurring design issues
- Helps developers **communicate ideas clearly** using a **shared vocabulary**
- Inspired by **Christopher Alexander** (architect, 1977), and formalized in software by the **Gang of Four** (1994)

---

### Simplified Definition

A design pattern is:

- A **problem** that someone has **already solved**
- A **model or design** to use as a **guide**

**More formally:**  
"A **proven solution** to a **common problem** in a **specified context**."

---

### Real-World Examples

- **Blueprint** for a house
- **Manufacturing** templates

---

### Christopher Alexander's Definition

"Each pattern describes a **problem which occurs over and over again** in our environment, and then describes the **core of the solution** to that problem, in such a way that you can use this solution **a million times over**, without ever doing it the **same way twice**"

— Christopher Alexander

---

## Why Study Design Patterns?

### Benefits

- Provides software developers with a **toolkit** for handling problems that have **already been solved**
- Helps you **think** about how to solve a software problem

---

### Design Pattern Landscape

```
         Software Engineering
                  │
        ┌─────────┼─────────┐
        │         │         │
    Code Analysis Design   Agile Method
        │         │         │
    ┌───┴───┐  ┌──┴──┐  ┌──┴──┐
Refactoring  Patterns  TDD
    │          │        │
Behavioral  Creational Structural
    │          │        │
Observer   Singleton  Adapter
Strategy   Factory    Decorator
Command    Builder    Façade
Iterator              Proxy
Mediator
Template
```

---

## Why Do We Need Design Patterns?

### Key Reasons

**1. Proven Solution**
- Design patterns give **reliable solutions** to common problems
- Developers don't have to **reinvent the wheel**

**2. Reusable**
- Design patterns are **adaptable** and **not limited** to a single problem

**3. Expressive**
- Design patterns are an **elegant solution**

**4. Prevent the Need for Refactoring Code**
- Since the design pattern is already the **optimal solution** for the problem
- This can **avoid refactoring**

**5. Lower the Size of the Codebase**
- Each pattern enables **system changes** without full redesign
- Often uses **less code**

---

## History of Design Patterns

### Origins

**Christopher Alexander (Architect, 1977)**
- The idea of patterns came from **architecture**
- Used patterns in **building architecture**

---

### Software Adoption

**Before 1994:**
- People had been **informally using** recurring solutions

**1994:**
- The **Gang of Four (GoF)** made the concept **formal** and **widely known**
- Catalogued **23 patterns** in their book

---

## The Gang of Four (GoF)

### Book

**Title:**  
Design Patterns: Elements of Reusable Object-Oriented Software

**Year:** 1994

---

### Authors

Design patterns were popularized in software engineering by **four authors**:

1. **Erich Gamma**
2. **Richard Helm**
3. **Ralph Johnson**
4. **John Vlissides**

**Collectively known as:** The **Gang of Four (GoF)**

---

## Key Components of a Design Pattern

### Four Essential Elements

**1. Name**
- **Describes** the pattern
- Adds to **common terminology** for facilitating communication
- Not just sentence enhancers

**2. Problem**
- **Describes when** to apply the pattern
- **Answers:** What is the pattern trying to solve?

**3. Solution**
- Describes **elements, relationships, responsibilities, and collaborations** that make up the design

**4. Consequences**
- **Results** of applying the pattern
- **Benefits and Costs**
- **Subjective**, depending on concrete scenarios

---

## Design Patterns Classification

### Three Main Categories

```
┌─────────────────────────────────────────┐
│        DESIGN PATTERNS                  │
├──────────────┬──────────────┬───────────┤
│ CREATIONAL   │ STRUCTURAL   │BEHAVIORAL │
└──────────────┴──────────────┴───────────┘
```

---

### 1. Creational

**Deals with:**  
Object **creation** and **initialization**

**Provides:**  
Guidance about **which objects** are created for a **given situation**

---

### 2. Structural

**Deals with:**  
**Class and object composition**

**How to:**  
Assemble objects and classes into **larger structures**

---

### 3. Behavioral

**Deals with:**  
**Communication** between objects

**Focus:**  
How **responsibilities** are assigned between objects

---

## Design Patterns Classification

### Pattern Classification Summary

A Pattern can be classified as:

- **Creational** - Object creation
- **Structural** - Relationship between entities
- **Behavioral** - Communication between objects

---

### Complete Pattern Catalog

```
┌─────────────────────────────────────────────────────────┐
│              DESIGN PATTERNS                            │
├──────────────┬──────────────────┬──────────────────────┤
│ CREATIONAL   │   STRUCTURAL     │    BEHAVIORAL        │
├──────────────┼──────────────────┼──────────────────────┤
│ • Factory    │   • Adapter      │   • Observer     ★   │
│   Method ★   │   • Decorator ★  │   • Strategy     ★   │
│ • Builder    │   • Facade       │   • Command          │
│ • Abstract   │   • Proxy        │   • State            │
│   Factory    │                  │   • Chain of         │
│ • Singleton★ │                  │     Responsibility   │
│              │                  │   • Visitor          │
└──────────────┴──────────────────┴──────────────────────┘

★ = Covered in this lecture
```

---

## Singleton Pattern

### Category

**Creational Pattern**

---

## Singleton Design Pattern

### Visual Representation

```
       ┌───────────────┐
       │ Single Server │  ← Only ONE instance
       └───────┬───────┘
               │
    ┌──────────┼──────────┐
    │          │          │
    ▼          ▼          ▼
┌────────┐ ┌────────┐ ┌────────┐
│Client 1│ │Client 2│ │Client 3│  ← Multiple clients
└────────┘ └────────┘ └────────┘
           │
    ┌──────┴──────┐
    │  Multiple   │  ← Multiple components
    │ Components  │     all access the
    └─────────────┘     SAME instance
```

---

### Definition

The **Singleton design pattern** ensures that a class has **only one instance** during runtime and provides a **global access point**, allowing other classes to use its functionality **without the need to instantiate it multiple times**.

---

## Singleton Pattern

### Intent

**Ensure** a class has **only one instance** and provide a **global point of access** to it.

---

### Problem

**How can we guarantee** that **one and only one instance** of a class can be created?

---

### Solution

1. **Define a class** with a **private constructor**
2. The class **constructs a single instance of itself**
3. **Supply a static method** that returns a reference to the **single instance**

---

## Singleton: Basic Structure

### UML Class Diagram

```
┌─────────────────────────────┐
│       Singleton             │
├─────────────────────────────┤
│ - instance: Singleton   ────┼──┐
├─────────────────────────────┤  │
│ - Singleton()               │  │  Self-reference
│ + getInstance(): Singleton  │◄─┘  (creates and
└─────────────────────────────┘     returns itself)
```

---

### Key Points

**The Singleton class:**
- Declares the **static method** `getInstance` that returns the **same instance** of its own class

**The Singleton's constructor:**
- Should be **hidden** from the client code
- Calling the `getInstance` method should be the **only way** of getting the Singleton object

---

## How to Create a Singleton Class in Java?

### Step #1: Make the Constructor Private

**Purpose:**
- Start by declaring the constructor as **private**
- This **prevents other classes** from creating new objects of the Singleton class
- If the class has **more than one constructor**, mark **each one** as private

---

**Code Example:**

```java
public class Singleton {
    // Private constructor to prevent instantiation
    private Singleton() {}
}
```

---

### Step #2: Declare a Static Instance Variable

**Purpose:**
- A **private static** instance variable of the **same class**
- This is the **only instance** of the class

---

**Code Example:**

```java
public class SingletonClass {
    // Static instance variable
    private static SingletonClass instance;
}
```

---

### Step #3: Provide a Static Method to Get the Instance

**Purpose:**
- Declare a **static method** with the return type as an **object of this singleton class**

---

**Code Example:**

```java
public class SingletonClass {
    
    public static SingletonClass getInstance() {
        if (instance == null) {
            instance = new SingletonClass();
        }
        return instance;
    }
}
```

---

## Complete Example of a Singleton Class

### Full Implementation

```java
public class SingletonClass {
    
    // Static instance variable
    private static SingletonClass instance;
    
    // Private constructor to prevent instantiation
    private SingletonClass() {}
    
    // Public static method to get the instance
    public static SingletonClass getInstance() {
        if (instance == null) {
            instance = new SingletonClass();
        }
        return instance;
    }
}
```

---

## Example Usage

### How to Use It

```java
public class SingletonTest {
    public static void main(String[] args) {
        
        // Get the singleton instance
        Singleton obj1 = Singleton.getInstance();
        Singleton obj2 = Singleton.getInstance();
        
        // Check if both instances are the same
        System.out.println(obj1 == obj2);  // true
    }
}
```

---

### How It Works

**First call:**  
When you call `Singleton.getInstance()` for the **first time**, the object is created → `new Singleton()`

**Second call onwards:**  
It does **NOT** create a new object/instance, it returns the **same old object/instance**

**Result:**  
No matter how many times you call it, you always get the **same instance**.

---

## Real-World Examples

### Example 1: The President of a Country

A country can only have **one president** at a time, and whenever a decision needs to be made **by the president alone**.

The **president** in this example represents a **singleton**.

---

### Example 2: The Government

A country can have only **one official government**.

Regardless of the **personal identities** of the individuals who form governments, the title, **"The Government of Sri Lanka"**, is a **global point of access** that identifies the group of people in charge.

---

## Advantages and Disadvantages

### Advantages of Singleton Class

**1. Resource Effectiveness:**
- Saves resources by **reusing the same instance**

**2. Global Access of the Instance:**
- Provides a **global point of access** to the instance

**3. Thread Safety:**
- Can be implemented to ensure **safe concurrent access**

---

### Disadvantages of Singleton Class

**1. Difficulty in Testing:**
- Singleton classes can be **difficult to test** due to their **global state**

**2. Possibility of Tight Coupling:**
- Can lead to **tight coupling** between classes

**3. Potential for Excessive Use:**
- Excessive use of singletons can lead to **poor design** and **maintainability issues**

---

## Observer Pattern

### Category

**Behavioral Pattern**

---

## Definition

**Observer Pattern** defines a **one-to-many dependency** between objects so that when **one object changes state**, all of its **dependents are notified and updated automatically**.

---

## The Structure of Observer

### UML Class Diagram

```
┌─────────────────┐              ┌─────────────────┐
│    Subject      │              │    Observer     │
├─────────────────┤              ├─────────────────┤
│ + Attach()      │──────────────│ + Update()      │
│ + Detach()      │  observers * │                 │
│ + Notify()      │              │                 │
└────────┬────────┘              └────────▲────────┘
         │                                │
         │                                │
         ▼                                │
┌─────────────────┐              ┌───────┴─────────┐
│ConcreteSubject  │──────────────│ConcreteObserver │
├─────────────────┤   subject    ├─────────────────┤
│ - subjectState  │              │ - observerState │
│ + GetState()    │              │ + Update()      │
│ + SetState()    │              │                 │
└─────────────────┘              └─────────────────┘

Note: Notify() {
  For all o in observers {
    o->Update()
  }
}

Note: Update() {
  observerState = 
    subject->GetState()
}
```

---

## Real-World Examples of Observer Pattern

### Social Media Example

**Any social media platform**, such as **Facebook or Twitter**, can be a real-world example of an observer pattern.

**Scenario:**

```
     [Subject - User Posts]
              │
         "New Tweet"
              │
      ┌───────┼───────┐
      │       │       │
   Follow  Follow  Follow
      │       │       │
      ▼       ▼       ▼
    [🔔]    [🔔]    [🔔]
  Observer Observer Observer
  (Follower 1) (Follower 2) (Follower 3)
```

---

### How It Works

**When:**  
A person **updates their status**

**Then:**  
All their **followers get a notification**

**Additional Features:**
- A follower can **follow** or **unfollow** another person at **any point in time**
- Once **unfollowed**, a person will **not get notifications** from the subject in the future

---

## Components of Observer Design Pattern

### Four Main Components

**1. Subject:**
- Maintains a **list of observers**
- Provides **methods to add/remove** them
- **Notifies** them of state changes

**2. Observer:**
- Defines an **interface** with an `update()` method
- Ensures all observers receive **updates consistently**

**3. ConcreteSubject:**
- A **specific subject** that holds actual data
- On **state change**, it notifies **registered observers**

**4. ConcreteObserver:**
- **Implements** the observer interface
- **Reacts** to subject updates

---

## How Does the Observer Design Pattern Work?

### Example: Tsunami Warning System Class Diagram

```
┌─────────────────────┐              ┌─────────────────────┐
│   <<interface>>     │              │   <<interface>>     │
│      Subject        │              │      Observer       │
├─────────────────────┤       1    * ├─────────────────────┤
│ + addObserver()     │──────────────│ + update(message)   │
│ + removeObserver()  │              │                     │
│ + notifyObservers() │              │                     │
└──────────▲──────────┘              └──────────▲──────────┘
           │                                     │
           │                                     │
           │                           ┌─────────┴─────────┐
           │                           │                   │
┌──────────┴──────────┐      ┌─────────┴─────────┐ ┌──────┴────────┐
│TsunamiWarningSystem │      │    MobileApp      │ │ NewsChannel   │
├─────────────────────┤      ├───────────────────┤ ├───────────────┤
│ - observers: List   │      │ - message: String │ │- message:     │
│ - message: String   │      │ + update()        │ │  String       │
│ + addObserver()     │──────│ + display()       │ │+ update()     │
│ + removeObserver()  │      │                   │ │+ display()    │
│ + notifyObservers() │      │                   │ │               │
└─────────────────────┘      └───────────────────┘ └───────────────┘
  Concrete Subject           Concrete Observers
```

---

## Implementation - Subject Class

### Subject Interface

**Purpose:**  
The **"Subject" interface** outlines the **operations** a subject should support.

**Methods:**
- `addObserver` and `removeObserver` are for **managing the list of observers**
- `notifyObservers` is for **informing observers** about changes

---

### UML Diagram

```
┌─────────────────────┐
│   <<interface>>     │
│      Subject        │
├─────────────────────┤
│ + addObserver()     │
│ + removeObserver()  │
│ + notifyObservers() │
└─────────────────────┘
```

---

### Java Code

```java
public interface Subject {
    void addObserver(Observer observer);
    void removeObserver(Observer observer);
    void notifyObservers();
}
```

---

## Implementation - Observer Class

### Observer Interface

**Purpose:**  
The **"Observer" interface** defines a **contract** for objects that want to be **notified about changes** in the subject ("TsunamiWarningSystem" in this case).

It includes a method **`update`** that **concrete observers** must implement to **receive and handle updates**.

---

### UML Diagram

```
┌─────────────────────┐
│   <<interface>>     │
│      Observer       │
├─────────────────────┤
│ + update(message)   │
└─────────────────────┘
```

---

### Java Code

```java
public interface Observer {
    void update(String message);
}
```

---

## Implementation - ConcreteSubject (TsunamiWarningSystem)

### Purpose

**"TsunamiWarningSystem"** is the **concrete subject** implementing the **"Subject" interface**.

---

### Key Features

- It maintains a **list of observers** (`observers`)
- Provides **methods to manage** this list
- **`notifyObservers`** iterates through the observers and calls their **`update`** method, passing the current weather
- **`setMessage`** method updates the condition and **notifies observers** of the change

---

### UML Diagram

```
┌─────────────────────────┐
│ TsunamiWarningSystem    │
├─────────────────────────┤
│ - observers: List       │
│ - message: String       │
├─────────────────────────┤
│ + addObserver()         │
│ + removeObserver()      │
│ + notifyObservers()     │
└─────────────────────────┘
```

---

### Java Code - Interfaces

```java
import java.util.ArrayList;
import java.util.List;

// Observer interface
interface Observer {
    void update(String message);
}

// Subject interface
interface Subject {
    void addObserver(Observer observer);
    void removeObserver(Observer observer);
    void notifyObservers();
}
```

---

### Java Code - TsunamiWarningSystem Class

```java
// Concrete Subject
class TsunamiWarningSystem implements Subject {
    
    private List<Observer> observers = new ArrayList<>();
    private String message = "";
    
    @Override
    public void addObserver(Observer observer) {
        observers.add(observer);
    }
    
    @Override
    public void removeObserver(Observer observer) {
        observers.remove(observer);
    }
    
    @Override
    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update(message);
        }
    }
```

---

### Java Code - setMessage Method

```java
    public void setMessage(String newMessage) {
        this.message = newMessage;
        notifyObservers();
    }
}
```

---

### Alternative Approach

**Note:** We can use the `setMessage()` style, or `getMessage()` / `setMessage()` style as follows; **both are correct** as long as the subject updates its value and notifies the observers.

```java
public String getMessage() {
    return message;
}

public void setMessage(String newMessage) {
    this.message = newMessage;
    notifyObservers();
}
```

---

## Implementation - ConcreteObserver (MobileApp)

### Purpose

**"MobileApp"** is a **concrete observer** implementing the **"Observer" interface**.

---

### Key Features

- It has a **private field** `message` to store the latest message
- The **`update`** method sets the new message and calls the **`display`** method
- **`display`** prints the updated message to the console

---

### UML Diagram

```
┌─────────────────────┐
│     MobileApp       │
├─────────────────────┤
│ - message: String   │
├─────────────────────┤
│ + update()          │
│ + display()         │
└─────────────────────┘
```

---

### Java Code

```java
public class MobileApp implements Observer {
    
    private String message;
    
    @Override
    public void update(String message) {
        this.message = message;
        display();
    }
    
    private void display() {
        System.out.println("Mobile App: Message updated - " + message);
    }
}
```

---

## Implementation - ConcreteObserver (NewsChannel)

### Purpose

**"NewsChannel"** is another **concrete observer** similar to **"MobileApp"**.

It also implements the **"Observer" interface**, with a **similar structure** to "MobileApp".

---

### UML Diagram

```
┌─────────────────────┐
│    NewsChannel      │
├─────────────────────┤
│ - message: String   │
├─────────────────────┤
│ + update()          │
│ + display()         │
└─────────────────────┘
```

---

### Java Code

```java
public class NewsChannel implements Observer {
    
    private String message;
    
    @Override
    public void update(String message) {
        this.message = message;
        display();
    }
    
    private void display() {
        System.out.println("News Channel: Message updated - " + message);
    }
}
```

---

## Pros and Cons

### Pros

**1. Loose Coupling:**
- This design pattern allows **information or data transfer** to multiple objects **without any change** in the observer or subject classes

**2. Adheres to Loose Coupling Concept:**
- It adheres to the **loose coupling concept** among objects that communicate with each other

---

### Cons

**1. Increased Complexity:**
- The Observer pattern can **increase complexity** and potentially cause **efficiency issues** if it's not executed properly

**2. Random Update Sequence:**
- The fundamental shortcoming of this design pattern is that the **subscribers/observers are updated in a random sequence**

---

## Summary

### Key Concepts

**Design Patterns:**
- Proven solutions to common software design problems
- Provides reusable templates
- Helps communication with shared vocabulary
- Formalized by Gang of Four (1994)

**Pattern Components:**
- Name, Problem, Solution, Consequences

**Pattern Categories:**
- Creational (object creation)
- Structural (composition)
- Behavioral (communication)

---

### Singleton Pattern

**Purpose:**
- Ensure only one instance of a class
- Provide global access point

**Implementation:**
- Private constructor
- Private static instance variable
- Public static getInstance() method

**Real-World Examples:**
- President of a country
- Government

**Pros:**
- Resource efficiency, global access, thread safety

**Cons:**
- Testing difficulty, tight coupling, potential overuse

---

### Observer Pattern

**Purpose:**
- Define one-to-many dependency
- Notify all dependents when subject changes state

**Components:**
- Subject (maintains observers)
- Observer (defines update interface)
- ConcreteSubject (holds data, notifies)
- ConcreteObserver (reacts to updates)

**Real-World Examples:**
- Social media notifications
- Tsunami warning systems

**Pros:**
- Loose coupling, flexible data transfer

**Cons:**
- Increased complexity, random update order

---

**End of Lecture 09**

**Thank You!**
