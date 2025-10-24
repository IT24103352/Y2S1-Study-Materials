# Lecture 10 - Design Patterns – Part II

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 04:06:54

---

## Table of Contents

- [Behavioral: Strategy Pattern](#behavioral-strategy-pattern)
- [Creational: Factory Pattern](#creational-factory-pattern)
- [Structural: Decorator Pattern](#structural-decorator-pattern)
- [Summary](#summary)

---

## Behavioral: Strategy Pattern

### What is Strategy Pattern?

**Definition:**  
The **Strategy Design Pattern** is one of the **behavioral design patterns** in Object-Oriented Programming.

---

### Key Characteristics

**Category:**  
Belongs to **Behavioral Design Patterns**

**Purpose:**
- **Defines** a family of algorithms
- **Encapsulates** each one
- Makes them **interchangeable**

**Allows:**  
Algorithms to **vary independently** from the clients that use them

---

## Class Diagram of Strategy Design Pattern

### UML Structure

```
┌──────────┐
│  Client  │
└────┬─────┘
     │
     │ (uses)
     ▼
┌────────────────────────┐
│      Context           │
├────────────────────────┤
│ + setStrategy(param)   │
│ + execute()            │
└──────────┬─────────────┘
           │
           │ (aggregates)
           ▼
┌────────────────────────┐
│  <<interface>>         │
│     Strategy           │
├────────────────────────┤
│ + algorithm()          │
└──────────▲─────────────┘
           │
     ┌─────┴─────┐
     │           │
     │           │
┌────┴──────┐ ┌─┴──────────┐
│Concrete   │ │Concrete    │
│StrategyOne│ │StrategyTwo │
├───────────┤ ├────────────┤
│+algorithm()│ │+algorithm()│
└───────────┘ └────────────┘
```

---

## Key Concepts of Strategy Pattern

### 1. Defines a Family of Algorithms

**Definition:**  
A **family of algorithms** means several **different ways** to solve the **same type of problem**.

**Example: Sorting a list**
- Bubble Sort
- Quick Sort
- Merge Sort

All of these are **different algorithms** for the **same task** (sorting).

---

### 2. Encapsulates Each One

**Definition:**  
**Encapsulation** means wrapping each algorithm inside its **own class** so it is **separate from others**.

**Instead of:**  
Writing big if-else code

**We do:**  
Each sorting method is written in its **own class**

**Example:**
- BubbleSort class
- QuickSort class
- MergeSort class

---

### 3. Makes Them Interchangeable

**Key Point:**  
All follow a **common interface**, so they can be **swapped at runtime**.

**How it works:**
- Each algorithm follows a **common interface** (e.g., SortStrategy)
- We can **swap** one with another **at runtime** without changing the main code

---

## UML Class Diagram (Sorting Algorithms)

### Structure

```
┌────────────────────┐
│      Context       │
├────────────────────┤
│ + Contextinterface()│
└──────────┬─────────┘
           │
           │ (uses)
           ▼
┌────────────────────┐
│   SortStrategy     │
├────────────────────┤
│ + Sort()           │
└──────────▲─────────┘
           │
     ┌─────┼─────┐
     │     │     │
     │     │     │
┌────┴──┐ ┌┴───┐ ┌┴────────┐
│Bubble │ │Quick│ │Merge    │
│Sort   │ │Sort │ │Sort     │
├───────┤ ├─────┤ ├─────────┤
│+Sort()│ │+Sort()│ │+Sort()│
└───────┘ └─────┘ └─────────┘
```

---

### Classes

**Context:**  
Uses a Strategy object

**Strategy Interface:**  
Defines the method(s)

**Concrete Strategies:**  
Implement the interface

---

## Example 01: E-commerce Payment

### Scenario

Imagine you are building an **E-commerce platform**. After adding items to the cart, customers must **choose a payment method** to complete their purchase.

---

### Payment Methods Required

The system needs to support **multiple ways of payment:**

**1. Credit Card:**
- Customers enter their card details
- The system processes the transaction through a card gateway

**2. PayPal:**
- Customers log in with their PayPal account
- Authorize payment securely

**3. Bank Transfer:**
- Customers directly transfer the amount from their bank account using online banking

---

### Strategy Pattern Approach

**Customer:**  
Chooses payment method at checkout

**Strategies:**
- CreditCardPayment
- PayPalPayment
- BankTransferPayment

**Interface:**  
Each implements a common interface `PaymentStrategy`

**Context:**  
Shopping Cart → uses chosen payment strategy

---

## Traditional Approach (Without Strategy Pattern)

### Implementation

**Steps:**
1. Create a `ShoppingCart` class
2. Add a `checkout()` method inside ShoppingCart class
3. Put all the payment logic into one big method with several **if-else** or **switch** statements

---

### Code Example

```java
public class ShoppingCart {
    
    public void checkout(int amount, String paymentType) {
        if (paymentType.equalsIgnoreCase("CREDITCARD")) {
            System.out.println("Paid " + amount + " using Credit Card");
        } 
        else if (paymentType.equalsIgnoreCase("PAYPAL")) {
            System.out.println("Paid " + amount + " using PayPal");
        } 
        else if (paymentType.equalsIgnoreCase("BANK")) {
            System.out.println("Paid " + amount + " using Bank Transfer");
        } 
        else {
            System.out.println("Invalid payment method!");
        }
    }
}
```

---

### Usage

```java
public static void main(String[] args) {
    ShoppingCart cart = new ShoppingCart();
    
    cart.checkout(100, "CREDITCARD");  // Paid 100 using Credit Card
    cart.checkout(200, "PAYPAL");      // Paid 200 using PayPal
    cart.checkout(300, "BANK");        // Paid 300 using Bank Transfer
}
```

---

### Problems with This Approach

**Issues:**
- Payment logic **tied up** in long **if-else chains**
- **Hard to extend**
- **Tightly coupled**
- **Violates** good OOP principles

**Solution:**  
Use **Strategy Pattern** to separate each payment into its **own class** and keep Shopping Cart **clean and flexible**.

---

## Strategy Pattern - UML Class Diagram

### E-commerce Payment Example

```
┌──────────┐
│  Client  │
│          │
│ + main() │
└────┬─────┘
     │
     ▼
┌─────────────────────────┐
│    ShoppingCart         │
├─────────────────────────┤
│ + checkout(int amount)  │
└──────────┬──────────────┘
           │
           │ (uses)
           ▼
┌─────────────────────────┐
│  PaymentStrategyin      │
├─────────────────────────┤
│ + pay(int amount)       │
└──────────▲──────────────┘
           │
     ┌─────┼─────┐
     │     │     │
┌────┴─────┐ ┌──┴────┐ ┌─┴──────────┐
│CreditCard│ │PayPal │ │BankTransfer│
│Payment   │ │Payment│ │Payment     │
├──────────┤ ├───────┤ ├────────────┤
│+pay():void│ │+pay():│ │+pay():void │
│          │ │void   │ │            │
└──────────┘ └───────┘ └────────────┘
```

---

## Components of Strategy Design Pattern

### 1. Context

**Definition:**  
The **Context** is the **main class** that the client interacts with.

**Key Points:**
- It **doesn't implement** the algorithm itself
- But **keeps a reference** to a Strategy object and **uses it**

**Example:**  
Shopping Cart → It holds a reference to a **PaymentStrategy** and uses it during checkout

---

### Strategy Interface - ShoppingCart Code

```java
public class ShoppingCart {
    
    private PaymentStrategyin paymentStrategyin;
    
    // Set or switch the strategy at runtime
    public void setPaymentStrategyin(PaymentStrategyin paymentStrategyin) {
        this.paymentStrategyin = paymentStrategyin;
    }
    
    public void checkout(int amount) {
        if (paymentStrategyin == null) {
            throw new IllegalStateException("No payment method selected!");
        }
        paymentStrategyin.pay(amount);
    }
}
```

---

## 2. Strategy

### Definition

The **common interface** that all strategies must follow.

**Purpose:**
- It **defines a method** but **doesn't provide implementation**

---

### UML Diagram

```
┌─────────────────────────┐
│  PaymentStrategyin      │
├─────────────────────────┤
│ + pay(int amount)       │
└─────────────────────────┘
```

---

### Code

```java
public interface PaymentStrategyin {
    void pay(int amount);
}
```

**Example:**  
PaymentStrategy → Declares the method `pay(int amount)` but doesn't define **how** payment happens.

---

## 3. Concrete Strategies

### Definition

These are the **real classes** that **implement** the Strategy interface.

**Key Point:**  
Each one provides a **different version** of the algorithm.

---

### Examples

**CreditCardPayment:**  
Defines how to process payment using a credit card

**PayPalPayment:**  
Defines how to process payment via PayPal

**BankTransferPayment:**  
Defines how to process payment via bank transfer

---

### Code Examples

**CreditCardPayment:**

```java
public class CreditCardPayment implements PaymentStrategyin {
    
    @Override
    public void pay(int amount) {
        System.out.println("Paid " + amount + " using Credit Card");
    }
}
```

---

**PayPalPayment:**

```java
public class PayPalPayment implements PaymentStrategyin {
    
    @Override
    public void pay(int amount) {
        System.out.println("Paid " + amount + " using PayPal");
    }
}
```

---

**BankTransferPayment:**

```java
public class BankTransferPayment implements PaymentStrategyin {
    
    @Override
    public void pay(int amount) {
        System.out.println("Paid " + amount + " using Bank Transfer");
    }
}
```

---

## 4. Client

### Definition

The **end-user code** or the **application logic** that selects which strategy should be applied.

---

### Code Example

```java
public class Client {
    
    public static void main(String[] args) {
        ShoppingCart cart = new ShoppingCart();
        
        cart.setPaymentStrategyin(new CreditCardPayment());
        cart.checkout(100);
        
        cart.setPaymentStrategyin(new PayPalPayment());
        cart.checkout(200);
        
        cart.setPaymentStrategyin(new BankTransferPayment());
        cart.checkout(300);
    }
}
```

---

### Output

```
Paid 100 using Credit Card.
Paid 200 using PayPal.
Paid 300 using Bank Transfer.
```

---

## Practical Uses of Strategy Pattern

### When to Use

Use Strategy Pattern when there are **multiple interchangeable ways** to achieve the **same goal**, and you want to **switch easily at runtime**.

---

### Real-World Examples

**Payment Systems (E-commerce):**
- Credit Card, PayPal, Bank Transfer, Crypto

**Sorting Algorithms:**
- QuickSort, MergeSort, BubbleSort

**Compression Tools:**
- ZIP, RAR, GZIP

**Navigation Apps:**
- Fastest Route, Shortest Distance, Avoid Tolls

**Authentication:**
- Username/Password, OAuth, Biometric

**Game AI:**
- Aggressive, Defensive, Stealth attack behaviors

---

## Advantages of Strategy Pattern

### Benefits

**1. Eliminates Long if-else / switch statements**
- Each algorithm lives in its **own class**, so code is **cleaner**

**2. Easy to Extend**
- Add a new algorithm by **creating a new class** (no need to change old code)

**3. Runtime Flexibility**
- Change behavior (algorithm/strategy) **while the program is running**

**4. Follows OOP Principles**
- Supports **Open/Closed Principle** (add new code without modifying old code)
- Respects **Single Responsibility Principle** (separates business logic from algorithms)

**5. Improves Reusability**
- Strategies can be **reused** in other projects without depending on the context

---

## Disadvantages of Strategy Pattern

### Drawbacks

**1. More Classes to Manage**
- Each new algorithm = a **new class** → can increase project size

**2. Client Awareness Needed**
- The client (e.g., programmer or system) must **know which strategy to pick** and when

**3. Slightly More Complex Design**
- Compared to a simple if-else, setting up **interfaces and classes** takes extra effort

**4. Overhead for Small Problems**
- If only one or two algorithms exist and they **rarely change**, Strategy may feel like **over-engineering**

---

## Creational: Factory Pattern

### What is Factory Pattern?

**Definition:**  
A **Creational Design Pattern**

---

### Key Characteristics

**Purpose:**
- **Defines an interface** for creating objects
- **Subclasses/factory** decide which class to instantiate
- **Client code** depends only on **factory + interface**, not on concrete classes

---

## Why Use Factory Pattern?

### Benefits

**1. Hides object creation details**

**2. Reduces tight coupling** between client and classes

**3. Easy to add new product types** (Open/Closed Principle)

**4. Centralizes object creation logic**

**5. Makes client code cleaner & more readable**

---

## Factory Pattern

### Detailed Definition

The **Factory Pattern** is one of the **creational design patterns** in Object-Oriented Programming.

**It allows you to:**

1. **Defines** an interface for creating objects
2. **Let subclasses** decide which class to instantiate
3. **Client code** only depends on the **factory**, not the concrete classes

---

### Basic Structure

```
┌─────────────────────┐
│  <<interface>>      │
│      Shape          │
├─────────────────────┤
│ + draw(): void      │
└──────────▲──────────┘
           │
     ┌─────┼─────┐
     │     │     │
┌────┴──┐ ┌┴────┐ ┌┴─────────┐
│Circle │ │Square│ │Rectangle │
├───────┤ ├──────┤ ├──────────┤
│+draw()│ │+draw()│ │+draw()  │
│:void  │ │:void │ │:void     │
└───────┘ └──────┘ └──────────┘
    implements  implements  implements
```

---

## Example: Transport Management System

### Scenario

Imagine you are building a **Transport Management System** for a vehicle rental company.

Customers can **request different types of vehicles** based on their needs:

**Car:**  
For family or business trips

**Bike:**  
For quick deliveries or solo rides

**Truck:**  
For moving goods or heavy transport

---

## Factory Pattern Implementation

### 1. Define Common Interface

```
┌─────────────────────┐
│     Vehicle         │
├─────────────────────┤
│ + drive(): void     │
└─────────────────────┘
```

**Code:**

```java
public interface Vehicle {
    void drive();
}
```

---

### 2. Create Concrete Classes

**Car Class:**

```
┌─────────────────────┐
│       Car           │
├─────────────────────┤
│ + drive(): void     │
└─────────────────────┘
```

```java
public class Car implements Vehicle {
    
    @Override
    public void drive() {
        System.out.println("Driving a Car");
    }
}
```

---

**Bike Class:**

```
┌─────────────────────┐
│       Bike          │
├─────────────────────┤
│ + drive(): void     │
└─────────────────────┘
```

```java
public class Bike implements Vehicle {
    
    @Override
    public void drive() {
        System.out.println("Riding a Bike");
    }
}
```

---

**Truck Class:**

```
┌─────────────────────┐
│       Truck         │
├─────────────────────┤
│ + drive(): void     │
└─────────────────────┘
```

```java
public class Truck implements Vehicle {
    
    @Override
    public void drive() {
        System.out.println("Driving a Truck");
    }
}
```

---

### 3. Create a Factory Class

```java
public class VehicleFactory {
    
    public Vehicle createVehicle(String type) {
        if (type.equalsIgnoreCase("CAR")) {
            return new Car();
        } 
        else if (type.equalsIgnoreCase("BIKE")) {
            return new Bike();
        } 
        else if (type.equalsIgnoreCase("TRUCK")) {
            return new Truck();
        } 
        else {
            return null; // unknown vehicle type
        }
    }
}
```

---

### 4. Use Factory in Client (Context) Code

```java
public class Client {
    
    public static void main(String[] args) {
        VehicleFactory factory = new VehicleFactory();
        
        Vehicle v1 = factory.createVehicle("CAR");
        v1.drive();
        
        Vehicle v2 = factory.createVehicle("BIKE");
        v2.drive();
        
        Vehicle v3 = factory.createVehicle("TRUCK");
        v3.drive();
    }
}
```

---

## Practical Uses of Factory Pattern

### Real-World Applications

**UI Frameworks:**
- Creating buttons, dialogs (Java Swing, Android)

**Database Connections:**
- JDBC drivers

**File Parsers:**
- PDF, Word, Excel reader factories
- When you open a file, the factory chooses the correct parser (PDFParser, WordParser, ExcelParser)

**Games:**
- Enemies, weapons, power-ups

**Cross-platform apps:**
- Return Windows or Mac GUI elements

---

## Advantages of Factory Pattern

### Benefits

**1. Hides object creation details**

**2. Cleaner & more reusable code**

**3. Easy to extend** with new classes

**4. Promotes loose coupling**

---

## Disadvantages of Factory Pattern

### Drawbacks

**1. Adds extra classes** (factories + products)

**2. Slightly more complex design**

**3. If not used carefully**, it can lead to **"factory explosion"** (too many factories)

---

## Structural: Decorator Design Pattern

**(Self Study)**

---

## What is Decorator Pattern?

### Definition

**Category:**  
A **Structural Design Pattern**

---

### Key Characteristics

**Purpose:**
- **Attaches new behavior** to objects **dynamically at runtime**
- Works by **wrapping the original object** with a decorator object
- Provides **flexibility** without modifying the original class

---

## Class Diagram of Decorator Design Pattern

### UML Structure

```
┌──────────────┐
│  Component   │
├──────────────┤
│ + Operation()│
└──────▲───────┘
       │
   ┌───┴────────────────┐
   │                    │
┌──┴──────────┐   ┌─────┴────────┐
│Concrete     │   │  Decorator   │◄────┐
│Component    │   ├──────────────┤     │
├─────────────┤   │ - comp       │ (1) │
│+Operation() │   │+Operation()  │─────┘
└─────────────┘   └──────▲───────┘
                         │
            ┌────────────┴───────────┐
            │                        │
      ┌─────┴────────┐      ┌────────┴──────┐
      │Concrete      │      │Concrete       │
      │DecoratorA    │      │DecoratorB     │
      ├──────────────┤      ├───────────────┤
      │- addedStateA │      │+Operation()   │
      │+Operation()  │      │+addedBehavior()│
      └──────────────┘      └───────────────┘

Note: comp.Operation()
Note: decorator.Operation(); AddedBehavior()
```

---

## Example: Online Coffee Ordering

### Scenario

Imagine you are building an **online coffee ordering app**.

**Basic feature:**
- The customer can order a **basic coffee**

**Customization:**  
They can customize it with **add-ons** like:
- Milk
- Sugar

---

### Problem with Traditional Approach

**If we try to use inheritance**, we'd need **too many classes:**

- MilkCoffee
- SugarCoffee
- MilkSugarCoffee
- MilkSugarCreamCoffee
- etc...

**Solution:**  
Use **Decorator Pattern**

---

## Example: Online Coffee Ordering (Strategy)

### How Decorator Works

Using the **Decorator Pattern**, we start with a **SimpleCoffee** as the **base object**, and each add-on such as **Milk, Sugar, or Whipped Cream** is implemented as a **separate Decorator class**.

---

### Building a Custom Coffee

**When a customer wants a customized coffee**, for example with **milk and sugar**, we simply **wrap** the base coffee object with the **MilkDecorator** and then with the **SugarDecorator**, creating a chain like:

```
SimpleCoffee → MilkDecorator → SugarDecorator
```

---

### Advantage

This approach makes it **easy to mix and match add-ons dynamically**, without the need to create **dozens of separate subclasses** for every possible combination.

---

## Class Diagram - Coffee Example

### Structure

```
┌─────────────────────┐
│   <<interface>>     │  Component
│      Coffee         │  Interface
├─────────────────────┤
│ + getDescription()  │
│   : String          │
│ + getCost(): double │
└──────────▲──────────┘
           │
      ┌────┴─────────────────────┐
      │                          │
┌─────┴────────┐     ┌───────────┴──────┐
│SimpleCoffee  │     │CoffeeDecorator   │◄────┐
│(Concrete     │     │(Decorator        │     │
│Component)    │     │Interface)        │ (1) │
├──────────────┤     ├──────────────────┤─────┘
│+getDescription()│  │-decoratedCoffee  │
│+getCost()    │     │+getDescription() │
└──────────────┘     │+getCost()        │
                     └──────────▲───────┘
                                │
                    ┌───────────┴───────────┐
                    │                       │
           ┌────────┴────────┐     ┌────────┴────────┐
           │MilkDecorator    │     │SugarDecorator   │
           │(Concrete        │     │(Concrete        │
           │Decorator)       │     │Decorator)       │
           ├─────────────────┤     ├─────────────────┤
           │+getDescription()│     │+getDescription()│
           │+getCost()       │     │+getCost()       │
           └─────────────────┘     └─────────────────┘
```

---

## Component & Concrete Component

### Interface

```java
// Component
public interface Coffee {
    String getDescription();
    double getCost();
}
```

---

### Concrete Component

```java
// Concrete Component
public class SimpleCoffee implements Coffee {
    
    public String getDescription() {
        return "Simple Coffee";
    }
    
    public double getCost() {
        return 2.0;
    }
}
```

---

## Abstract Decorator

### Code

```java
// Decorator
public abstract class CoffeeDecorator implements Coffee {
    
    protected Coffee decoratedCoffee;
    
    public CoffeeDecorator(Coffee coffee) {
        this.decoratedCoffee = coffee;
    }
    
    public String getDescription() {
        return decoratedCoffee.getDescription();
    }
    
    public double getCost() {
        return decoratedCoffee.getCost();
    }
}
```

---

## Concrete Decorators

### Milk Decorator

```java
// Milk Decorator
public class MilkDecorator extends CoffeeDecorator {
    
    public MilkDecorator(Coffee coffee) {
        super(coffee);
    }
    
    public String getDescription() {
        return decoratedCoffee.getDescription() + ", Milk";
    }
    
    public double getCost() {
        return decoratedCoffee.getCost() + 0.5;
    }
}
```

---

### Sugar Decorator

```java
// Sugar Decorator
public class SugarDecorator extends CoffeeDecorator {
    
    public SugarDecorator(Coffee coffee) {
        super(coffee);
    }
    
    public String getDescription() {
        return decoratedCoffee.getDescription() + ", Sugar";
    }
    
    public double getCost() {
        return decoratedCoffee.getCost() + 0.2;
    }
}
```

---

## Client Code (Main)

### Usage Example

```java
public class Main {
    
    public static void main(String[] args) {
        Coffee coffee = new SimpleCoffee();
        System.out.println(coffee.getDescription() + " $" + coffee.getCost());
        
        coffee = new MilkDecorator(coffee);
        System.out.println(coffee.getDescription() + " $" + coffee.getCost());
        
        coffee = new SugarDecorator(coffee);
        System.out.println(coffee.getDescription() + " $" + coffee.getCost());
    }
}
```

---

## Practical Uses of Decorator Pattern

### Real-World Applications

**UI Components:**
- Adding **scrollbars, borders, colors** dynamically to windows or text fields

**Food Service:**
- Like in food places (coffee shops, pizza, ice cream)
- You start with a **base item** and add different **toppings or extras** dynamically

**Messaging Apps:**
- Add **encryption, compression, logging** as decorators to message objects

**Game Development:**
- Equip a character with **weapons, armor, or powers** without creating many subclasses

---

## Advantages of Decorator Pattern

### Benefits

**1. Add behavior at runtime**
- Wrap objects flexibly

**2. Avoids subclass explosion**
- No need for many classes

**3. Highly flexible**
- Combine multiple decorators in any order

**4. Reusable decorators**
- Same MilkDecorator can be used on any Coffee

---

## Disadvantages of Decorator Pattern

### Drawbacks

**1. More classes & objects**
- Each feature = a new class

**2. Debugging is harder**
- Behavior is spread across multiple wrappers

**3. Not always necessary**
- For simple problems, may overcomplicate the design

---

## Summary

### Key Concepts Covered

**Three Design Patterns:**

1. **Strategy Pattern** (Behavioral)
2. **Factory Pattern** (Creational)
3. **Decorator Pattern** (Structural)

---

### Strategy Pattern

**Purpose:**
- Define a family of algorithms
- Encapsulate each one
- Make them interchangeable at runtime

**Components:**
- Context, Strategy Interface, Concrete Strategies, Client

**Example:**
- E-commerce Payment (CreditCard, PayPal, BankTransfer)

**Benefits:**
- Eliminates long if-else chains
- Easy to extend
- Runtime flexibility
- Follows OOP principles

**Drawbacks:**
- More classes to manage
- Client awareness needed
- Slight complexity overhead

---

### Factory Pattern

**Purpose:**
- Define interface for creating objects
- Let subclasses decide which class to instantiate
- Client depends on factory, not concrete classes

**Example:**
- Vehicle Factory (Car, Bike, Truck)

**Benefits:**
- Hides object creation details
- Reduces tight coupling
- Easy to add new types
- Centralizes creation logic

**Drawbacks:**
- Extra classes
- Slight complexity
- Risk of factory explosion

---

### Decorator Pattern

**Purpose:**
- Attach new behavior to objects dynamically at runtime
- Wrap original object with decorator object
- Flexibility without modifying original class

**Components:**
- Component, Concrete Component, Decorator, Concrete Decorators

**Example:**
- Coffee Ordering (SimpleCoffee + Milk + Sugar decorators)

**Benefits:**
- Add behavior at runtime
- Avoids subclass explosion
- Highly flexible combinations
- Reusable decorators

**Drawbacks:**
- More classes and objects
- Debugging complexity
- Potential over-engineering for simple cases

---

**End of Lecture 10**

**Thank You!**
