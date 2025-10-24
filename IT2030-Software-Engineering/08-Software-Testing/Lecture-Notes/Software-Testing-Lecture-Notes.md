# Lecture 08 - Software Testing

**Module:** IT2030 - Software Engineering  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:28:20

---

## Table of Contents

- [Lesson Learning Outcomes](#lesson-learning-outcomes)
- [Introduction to Software Testing](#introduction-to-software-testing)
- [Verification vs Validation](#verification-vs-validation)
- [Testing Process](#testing-process)
- [Test Case Designing](#test-case-designing)
- [Test Design Techniques](#test-design-techniques)
- [Black-Box Testing](#black-box-testing)
- [White-Box Testing](#white-box-testing)
- [Software Testing Types](#software-testing-types)
- [Summary](#summary)

---

## Lesson Learning Outcomes

By the end of this lecture, students will be able to:

- **Explain** the importance of software testing in ensuring software quality and user satisfaction
- **Distinguish** between verification and validation in the testing process
- **Apply** test design techniques such as Equivalence Partitioning (EP) and Boundary Value Analysis (BVA)
- **Analyse** code quality using white-box testing methods like statement and branch coverage
- **Compare** functional and non-functional testing types

---

## Introduction to Software Testing

### Software Development Life Cycle (SDLC)

```
1. Requirements Analysis  (Orange)
        │
        ▼
2. Design                 (Green)
        │
        ▼
3. Development            (Red)
        │
        ▼
4. Testing  ◄──── We are here
        │
        ▼
5. Maintenance            (Blue)
```

**Feedback loops exist between each phase**

---

### Why Software Testing Matters?

**Opening Scenario:**

Imagine you're booking an airline ticket. You pay, get a confirmation, but at the airport, they say **no ticket exists in your name**. You paid, but you can't board.

**Question:** Would you use this airline's website again?

---

### Famous Software Failure

**Heathrow International Airport Terminal 5 Baggage Handling System Failure (2008, UK)**

**Cause:**  
System not tested under real operational load

**Impact:**
- 40,000 bags lost or delayed
- 500 flights cancelled
- £16 million in costs
- Significant reputational damage for British Airways

---

### What is Software Testing?

**Definition:**  
Software Testing is the **process of evaluating a software application** to check whether it meets:

- **Specified requirements**  
  (Does it do what the client asked for?)
- **End-user needs**  
  (Is it useful, usable, and reliable for real users?)

---

### Purpose

- To ensure the software **behaves as intended**
- To **detect defects** before customers encounter them
- To improve **reliability, safety, and user satisfaction**

---

### Formal Definitions

**Myers (1979):**  
"Software Testing is the process of executing a program or system with the **intent of finding errors**"

**Dijkstra (1972):**  
"Program testing can be a very effective way to **show the presence of bugs**, but it is **hopelessly inadequate for showing their absence**"

---

### Real-World Examples

**Example 1: Mobile Banking Application**

The application processes transfers **correctly**, but the interface is so **confusing** that users accidentally send money to the **wrong account**.

**Why testing matters:**  
Meeting end-user needs involves ensuring the system is both **user-friendly** and **functionally correct**.

---

**Example 2: Online Exam System**

Students take an online exam, but after submitting their answers, they **disappear** due to a **server error**.

**Why testing matters:**  
Users expect their answers to be **safely recorded**; failing to do so **breaks trust**.

---

### Example Video

**Software Testing Introduction:**  
https://www.youtube.com/watch?v=TDynSmrzpXw

---

## Verification vs Validation

### Definitions

**Verification:**  
"Are we building the product **right**?"

**Example:**  
Did we build the chair **according to blueprint**?

---

**Validation:**  
"Are we building the **right** product?"

**Example:**  
Is the chair **comfortable to sit on**?

---

### Key Points

**Verification:**
- The software should **conform to its specifications**, including both functional and non-functional requirements

**Validation:**
- The software should **fulfil the user's actual needs**, even if they differ from the documented specification

---

### Comparison Table

| **Verification** | **Validation** |
|:---|:---|
| 1. It is the process to ensure whether we are developing the product **right** or not. (Whether we are developing it **according to the plans and specifications**) | 1. It is the process to test/check whether the product we developed is **correct**. Whether it **satisfies the client requirements**. |
| 2. It is a **static method** of checking the documents, designs, program code, database schemas and specifications. | 2. Is a **dynamic method** of testing the real product. |
| 3. **Inspections, reviews and walkthroughs** | 3. **Testing frameworks, testing strategies** are used. |
| 4. **Low-level activity** | 4. **High-level activity** |
| 5. It does **not involve code execution** | 5. It **involves code execution** |
| 6. **Low cost** compared to validation tests | 6. **Costly** compared to verification tests |

---

## Testing Process

### Testing Workflow

```
    Design test cases
           │
           ▼
    ┌──────────────┐
    │  Test Cases  │───────┐
    └──────┬───────┘       │
           │               │
           ▼               │
    Prepare test data      │
           │               │
           ▼               │
    ┌──────────────┐       │
    │  Test Data   │───┐   │
    └──────┬───────┘   │   │
           │           │   │
           ▼           │   │
    Run program        │   │
    with test data     │   │
           │           │   │
           ▼           │   │
    ┌──────────────┐   │   │
    │ Test Results │───┤   │
    └──────┬───────┘   │   │
           │           │   │
           │           ▼   ▼
           └─────► Compare results
                   to test cases
                        │
                        ▼
                   Test Reports
```

---

## Test Case Designing

### Sample Test Case Document

**Template:**

| Test Case ID | Test Title | Description | Preconditions | Test Steps | Test Data | Expected Output | Actual Output | Status |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| | | | | | | | | |

---

### Example: Testing Login UI

**Scenario:**

```
┌────────────────────────┐
│       LOGIN            │
├────────────────────────┤
│  [👤] Username         │
│  [🔒] ********         │
│                        │
│      [LOGIN]           │
│                        │
│  Forgot Your Password? │
│  Click here            │
└────────────────────────┘
```

**Test Cases:**
1. Enter **correct** username/password → Login success → Redirect to home page → **Pass**
2. Enter **wrong** password → Login success → **Fail**

---

### Detailed Test Case Example

**Test Case ID:** TC_1

**Test Title:** Verify login with valid credentials

**Description:**  
Ensure that a user can successfully log in using a valid username and valid password

**Preconditions:**
1. User must be registered
2. User must be on the login page

**Test Steps:**
1. Open the login page
2. Enter valid username
3. Enter valid password
4. Click the "Login" button

**Test Data:**
- Username: user1
- Password: Pw@123

**Expected Output:**  
User is successfully redirected to the homepage

**Actual Output:**  
(To be filled after execution)

**Status:**  
(To be filled after execution)

---

### Completed Test Case

After execution:

**Actual Output:**  
User is successfully redirected to the homepage

**Status:**  
Pass

---

## Test Design Techniques

### Two Main Categories

**1. Black-Box Testing (Functional Testing)**  
Focused on the system's **functionality** without examining its **internal code**

**2. White-Box Testing (Structural Testing)**  
Focused on the **internal structure** of the code

---

## Black-Box Testing

### Definition

Testing focuses on the software **functional requirements** and **input/output**.

**Module under test is treated as a Black Box**

---

### Diagram

```
   ┌─────────┐          ┌───────────┐          ┌─────────┐
   │ Inputs  │─────────►│ BLACK BOX │─────────►│ Outputs │
   └─────────┘          └───────────┘          └─────────┘
```

---

### Examples

**Example 1:**
```
Input: 2, 3
     │
     ▼
Add two numbers
     │
     ▼
Expected Output: 5
Actual Output: 5
```

**Example 2:**
```
Input: 5, 10
     │
     ▼
Add two numbers
     │
     ▼
Expected Output: 15
Actual Output: 15 ̶5̶  (crossed out 5)
```

---

## White-Box Testing

### Definition

Testing is based on the **structure of the program**.

In white box testing, **internal structure** of the program is taken into account.

**Characteristics:**
- The test data is derived from the **structure of the software**
- Should have **programming knowledge**

---

### Diagram

```
   ┌─────────┐          ┌───────────────┐          ┌─────────┐
   │ Inputs  │─────────►│  for(...) {   │─────────►│ Outputs │
   └─────────┘          │    if(...) {} │          └─────────┘
                        │  }            │
                        └───────────────┘
                        (Internal code visible)
```

---

## Black-Box vs White-Box Testing

| **Black Box Testing** | **White Box Testing** |
|:---|:---|
| The Internal Working of an application are **not required to be known** | Tester has **full knowledge** of the Internal workings of the application |
| Also known as **closed box testing, data driven testing and functional testing** | Also known as **clear box testing, structural testing or code-based testing** |
| Performed by **end users** and also by **testers and developers** | Normally done by **testers and developers** |
| This is the **least time consuming** and **least exhaustive** | The **most exhaustive** and **time-consuming** type of testing |

---

## Black-Box Testing Strategies

### Two Main Techniques

**1. Equivalence Partitioning**  
Focused on **dividing the input data into groups (partitions)** where test cases from one group are expected to **behave the same**.

**2. Boundary Value Analysis**  
Focused on testing **values at the boundaries** of input ranges, since **errors often occur at the edges**.

---

## Equivalence Partitioning

### Concept

Example of a function that takes a parameter "month".

**Valid range:** 1 to 12 (representing January to December)

This **valid range** is called a **partition**.

---

### Partitions

```
┌──────────┬──────────────────┬──────────┐
│  x < 1   │  1 ≤ x ≤ 12     │  12 < x  │
│(Invalid) │    (Valid)       │(Invalid) │
└──────────┴──────────────────┴──────────┘
```

In this example, there are **two** further partitions of **invalid ranges**.

---

### Test Case Selection

Test cases are chosen so that **each partition will be tested**.

```
     -2           5             17
      │           │              │
      ▼           ▼              ▼
┌──────────┬──────────────────┬──────────┐
│  x < 1   │  1 ≤ x ≤ 12     │  12 < x  │
└──────────┴──────────────────┴──────────┘
```

**Test values:**
- **-2** (tests x < 1)
- **5** (tests 1 ≤ x ≤ 12)
- **17** (tests 12 < x)

---

### Key Principle

In equivalence partitioning, **only one condition from each partition** needs to be tested.

**Assumption:**  
All conditions within a partition will be handled in the **same way** by the application.

**Benefit:**  
Equivalence partitioning is **effective** because it **reduces the number of tests** required.

---

### Activity

**Scenario:**  
In a Library, students can borrow books. There is a **limit** given for students on the number of books they can borrow at one time.

A student can borrow **2-5 books** at one time.

**Task:**  
With equivalence partitioning, identify the **test values** to check the borrowing limit of a student at one time.

---

## Boundary Value Analysis

### Concept

Equivalence Partitioning is usually **combined with Boundary Value Analysis**; it is **not used alone** for test case design.

**Boundary Value Analysis** tests values at the **edges of partitions** and the **smallest values just inside and outside** those edges.

---

### Example: Boundary Value Analysis

Example of a function that takes a parameter "month".

Valid range: **1 to 12** (representing January to December)

Test cases are **supplemented with boundary values**.

---

### Boundary Values

```
      0   1   2        11  12  13
      │   │   │         │   │   │
      ▼   ▼   ▼         ▼   ▼   ▼
┌──────────┬──────────────────┬──────────┐
│  x < 1   │  1 ≤ x ≤ 12     │  12 < x  │
└──────────┴──────────────────┴──────────┘
```

**Test values:**
- **Around lower boundary (1):** 0, 1, 2
- **Around upper boundary (12):** 11, 12, 13

---

### Activity

**Task:**  
Write test cases for an input box accepting numbers **between 1 and 1000** using Boundary Value Analysis

---

### Activity

**Scenario:**  
A text field accepts numbers from **1 to 100**.

**Task:**  
Using Equivalence Partitioning (EP) and Boundary Value Analysis (BVA), identify the test cases.

---

## White-Box Testing Strategies

### Coverage Types

1. **Statement Coverage**  
   Execute all statements at least once

2. **Branch (Decision/Edge) Coverage**  
   Execute each decision direction at least once

3. **Condition (Predicate) Coverage**  
   Execute each decision with all possible outcomes at least once

4. **Decision/Condition Coverage**  
   Execute all possible combinations of condition outcomes in each decision

5. **Multiple Condition Coverage**  
   Invoke each point of entry at least once, Execute all statements at least once

---

## Statement Coverage

### Definition

**Statement Coverage** in Testing refers to a white-box testing technique that measures the **percentage of executable statements** in the source code that have been **executed at least once** during testing.

**Goal:**  
The **minimum number of test cases** we need to execute **all the statements** in the program **at least once**.

---

### Formula

```
                    No of executed statements
Statement Coverage = ────────────────────────── × 100%
                    Total no of statements
```

---

### Example Code

Calculate the **number of minimum test cases** needed for **full statement coverage** for the given scenario.

```java
Printsum (int a, int b) {
    int result = a + b;
    If (result > 0)
        Print ("Positive", result);
    Else
        Print ("Negative", result);
}
```

---

### Step 1: Total Number of Statements

```java
1  Printsum (int a, int b) {
2      int result = a + b;
3      If (result > 0)
4          Print ("Positive", result);
5      Else
6          Print ("Negative", result);
7  }
```

**Total no of statements = 7**

---

### Step 2: Test Case 1 Execution

**Test Case 1:** if a=3, b=9

```java
1  ☑  Printsum (int a, int b) {
2  ☑      int result = a + b;
3  ☑      If (result > 0)
4  ☑          Print ("Positive", result);
5  ☑      Else
6  XX          Print ("Negative", result);
7  ☑  }
```

**No of executed statements = 5**

(Line 6 not executed - marked with XX)

---

### Step 3: Calculate Statement Coverage (TC1)

**Test Case 1:** if a=3, b=9

```
No of executed statements = 5
Total no of statements = 7

Statement coverage = 5/7 × 100 = 71%
```

---

### Step 4: Test Case 2 Execution

**Test Case 2:** if a=-2, b=-3

```java
1  ☑  Printsum (int a, int b) {
2  ☑      int result = a + b;
3  ☑      If (result > 0)
4  XX          Print ("Positive", result);
5  ☑      Else
6  ☑          Print ("Negative", result);
7  ☑  }
```

**No of executed statements = 6**

(Line 4 not executed - marked with XX)

---

### Step 5: Calculate Statement Coverage (TC2)

**Test Case 2:** if a=-2, b=-3

```
No of executed statements = 6
Total no of statements = 7

Statement coverage = 6/7 × 100 = 85%
```

---

### Overall Statement Coverage

**Conclusion:**

Overall, **all the statements** are fully covered by using the **two test cases**.

Therefore, the **overall statement coverage of 100%** can be achieved by the above two test cases.

---

### Activity

**Task:**  
Calculate the **number of minimum test cases** needed for **full statement coverage** for the given scenario.

```java
int f1(int x, int y) {
    while (x != y) {
        if (x > y)
            x = x - y;
        else
            y = y - x;
    }
    return x;
}
```

---

## Branch Coverage

### Definition

**Branch Coverage** (also called **Decision Coverage**) is a white-box testing technique that measures whether **each possible branch (true/false decision)** of control structures like `if`, `else`, `switch`, `loops` has been **executed at least once**.

**Goal:**  
The **minimum number of test cases** we need to execute **all the branches** in the program **at least once**.

---

### Formula

```
                 No of executed branches
Branch Coverage = ──────────────────────── × 100%
                 Total no of branches
```

---

## Control Flow Graph

### Components

**Node:**  
Represented by a solid blue circle (●)

**Edge:**  
Represented by an arrow (→)

---

### Node Types

**Simple Nodes:**  
Simple Statements

```
    ●
    │ ← One input
    │ ← One output
    ●
```

---

**Decision Nodes:**  
Decision Statements

```
       ●
      ╱ ╲ ← One input
     ╱   ╲ ← Two outputs
    ●     ●
```

---

### Example Code

Calculate the **number of minimum test cases** needed for **full branch coverage** for the given scenario.

```java
Printsum (Int a, Int b) {
    Int result = a + b;
    if (result > 0)
        Print ("Positive", result);
    else if (result < 0)
        Print ("Negative", result);
    else
        do nothing;
}
```

---

### Step 1: Control Flow Graph

```
Printsum (Int a, Int b) {        ●
    Int result = a+b;            │
    if(result>0)                 ●
        Print ("Positive");     ╱ ╲
                        (T)────●   ●────(F)
                               │   │
    else if (result<0)         │  ╱ ╲
        Print ("Negative");    │ ●   ●
                               │ │   │
    else                       │ │   │
        do nothing;            │ │   ●
}                              └─┴───┘
                                   │
                                   ●
```

---

### Step 2: Total Number of Branches

```
Total Number of Branches = 4

First if():
  - T (True)
  - F (False)

Else if():
  - T (True)
  - F (False)
```

---

### Step 3: Test Case 1 (a=3, b=5)

**Test case 1:** a=3, b=5

```
Control Flow Graph with path highlighted:
  (Start) → (result = a+b) → if(result>0) → T → Print("Positive") → (End)
```

**Path not shown in text, visualized in diagram**

---

### Step 4: Branch Coverage (TC1)

**Test case 1:** a=3, b=5

This test case covers the path/branch highlighted (first T branch).

```
branch coverage = 1/4 × 100 = 25%
```

```
Progress bar:
[████▒▒▒▒▒▒▒▒▒▒▒▒] 25%
0   25   50   75   100
```

---

### Step 5: Test Case 2 (a=-5, b=-8)

**Test case 2:** a=-5, b=-8

```
Control Flow Graph with path highlighted:
  (Start) → (result = a+b) → if(result>0) → F → else if(result<0) → T → Print("Negative") → (End)
```

This test case covers the path highlighted. **Two branches** are covered.

```
branch coverage = 2/4 × 100 = 50%
```

```
Progress bar:
[████████▒▒▒▒▒▒▒▒] 50%
0   25   50   75   100
```

---

### Step 6: Test Case 3 (a=0, b=0)

**Test case 3:** a=0, b=0

```
Control Flow Graph with path highlighted:
  (Start) → (result = a+b) → if(result>0) → F → else if(result<0) → F → do nothing → (End)
```

This test case covers the path highlighted. **Two branches** are covered.

```
branch coverage = 2/4 × 100 = 50%
```

```
Progress bar:
[████████▒▒▒▒▒▒▒▒] 50%
0   25   50   75   100
```

---

### Summary of All Test Cases

```
Test case 1: a=3, b=5     →  branch coverage = 1/4 × 100 = 25%
Test case 2: a=-5, b=-8   →  branch coverage = 2/4 × 100 = 50%
Test case 3: a=0, b=0     →  branch coverage = 2/4 × 100 = 50%
```

**By using minimum three test cases we can test all the branches.**

**Combined, these three test cases achieve 100% branch coverage.**

---

## Software Testing Types

### Two Main Categories

**1. Functional Testing**  
Tests the system's **functionalities** and ensures that it **behaves as expected**.

**2. Non-Functional Testing**  
Tests the system's **non-functional aspects** like **performance, security, usability, and reliability**.

---

## Functional Testing

### Types

**1. Unit Testing:**
- Individual program units or object classes are tested
- Unit testing should focus on testing the **functionality of objects or methods**

**2. Integration Testing:**
- Several individual units are integrated to create composite components
- Component testing should focus on testing **component interfaces**

**3. System Testing:**
- Some or all of the components in a system are integrated, and the system is tested **as a whole**
- System testing should focus on testing **component interactions**

**4. Acceptance Testing:**
- Customers test a system to decide whether or not it is **ready to be accepted** by the system developers and deployed in the customer environment
- Primarily for **custom systems**

---

## Non-Functional Testing

### Types

**1. Performance Testing:**
- Ensure that a software program or system meets specific **performance goals**, such as **response time** or **throughput**

**2. Volume Testing:**
- Ensure that a software program or system can handle a **large volume of data**
- **Example:** If the website is developed to handle traffic of 500 users, volume testing will determine whether the site can handle 500 users or not

**3. Security Testing:**
- Ensure that a software program or system is **secure from unauthorized access or attack**

---

**4. Compatibility Testing:**
- Ensure that a software program or system is **compatible** with other software programs or systems

**5. Usability Testing:**
- Ensure that a software program or system is **easy to use**

---

## Functional vs Non-Functional Testing

| **Feature** | **Functional Testing** | **Non-Functional Testing** |
|:---|:---|:---|
| **Definition** | Tests the system's functionalities and ensures that it behaves as expected. | Tests the system's non-functional aspects like performance, security, usability, and reliability. |
| **Objective** | Ensures that the application works as per the functional requirements. | Ensures that the system meets non-functional requirements like speed, scalability, and user experience. |
| **Focus Areas** | Verifies business logic, database operations, APIs, user interfaces, and system workflows. | Checks aspects such as performance, load handling, security, compatibility, and usability. |
| **Testing Techniques** | Includes Unit Testing, Integration Testing, System Testing, User Acceptance Testing (UAT). | Includes Performance Testing, Load Testing, Stress Testing, Security Testing, Usability Testing, etc. |
| **Outcome** | Determines whether the system meets functional requirements. | Determines how well the system performs under various conditions. |

---

## Summary

### Key Concepts

**Software Testing:**
- Process of evaluating software to ensure it meets requirements and user needs
- Essential for quality, reliability, and user satisfaction

**Verification vs Validation:**
- **Verification:** "Are we building the product right?" (Static, low-level, no code execution)
- **Validation:** "Are we building the right product?" (Dynamic, high-level, code execution)

**Test Design Techniques:**
- **Black-Box:** Focuses on functionality (EP, BVA)
- **White-Box:** Focuses on internal structure (Statement, Branch coverage)

---

### Black-Box Techniques

**Equivalence Partitioning (EP):**
- Divide inputs into partitions
- Test one value from each partition
- Reduces number of tests

**Boundary Value Analysis (BVA):**
- Test values at boundaries
- Test smallest values inside and outside edges
- Used with EP

---

### White-Box Techniques

**Statement Coverage:**
- Execute all statements at least once
- Formula: (Executed statements / Total statements) × 100%

**Branch Coverage:**
- Execute each decision direction at least once
- Formula: (Executed branches / Total branches) × 100%
- Uses Control Flow Graphs

---

### Testing Types

**Functional Testing:**
- Unit, Integration, System, Acceptance
- Tests what the system does

**Non-Functional Testing:**
- Performance, Volume, Security, Compatibility, Usability
- Tests how well the system performs

---

**End of Lecture 08**

**Thank You!**
