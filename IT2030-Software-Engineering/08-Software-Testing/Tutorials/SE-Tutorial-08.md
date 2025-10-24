# Tutorial 08 - Software Testing

**Module:** IT2030 - Software Engineering  
**Department:** Information Technology, Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 04:01:36

---

## Activity 01: Tax Calculation System Testing

### Business Requirements

Using Boundary Value Analysis and Equivalence Partitioning test design techniques, identify the optimum set of test cases for testing the business requirement given below.

A system that is designed to work out the tax to be paid should check the following requirements:

- If the salary of an employee is **less than Rs. 50,000**, then he/she is **not taxed**.
- If the salary of an employee is **greater than or equal to Rs. 50,000 and less than Rs. 200,000**, then he/she is **taxed at 10%**.
- If the salary of an employee is **greater than or equal to Rs. 200,000 and less than Rs. 400,000**, then he/she is **taxed at 15%**.
- If the salary of an employee is **greater than or equal to Rs. 400,000**, then he/she is **taxed at 25%**.

---

### Task

Identify the optimum set of test cases using:
- Equivalence Partitioning (EP)
- Boundary Value Analysis (BVA)

---

## Activity 02: Code Coverage Analysis

### Question 1: Statement Coverage

What is the percentage of statement coverage that can be achieved for the given code if the test case is `x=10`?

```c
Void testme (int x) {
    for (int j=0; j<2; j++) {
        if (x==j) {
            printf ("Good\n");
        }
    }
    return x;
}
```

---

### Question 2: Branch Coverage

Calculate the minimum number of test cases needed for full branch coverage for the given code.

```java
public static void printSum(int a, int b) {
    int result = a + b;
    while (result != 0) {
        if (result > 0) {
            System.out.println("Positive: " + result);
            result--;
        }
        else {
            System.out.println("Negative: " + result);
            result++;
        }
    }
    System.out.println("Zero: 0");
}
```

---

**End of Tutorial 08**
