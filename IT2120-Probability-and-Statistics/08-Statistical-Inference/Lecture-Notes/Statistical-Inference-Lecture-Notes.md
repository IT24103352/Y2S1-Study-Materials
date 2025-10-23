# Lecture 08 - Statistical Inference

**Module:** IT2120 - Probability and Statistics  
**Lecturer:** Ms. K. G. M. Lakmali  
**Department:** Information Technology  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-23

---

## Table of Contents

- [Statistical Inference](#statistical-inference)
- [Parameter Estimation](#parameter-estimation)
- [Hypothesis Testing](#hypothesis-testing)
  - [Major Steps](#major-steps-under-hypothesis-testing)
  - [Defining Hypothesis](#defining-hypothesis)
  - [Test Statistic](#test-statistic)
  - [Rejection Region](#rejection-region)
  - [P-value Approach](#p-value-approach)
  - [Errors in Hypothesis Testing](#errors-in-hypothesis-testing)

---

## Statistical Inference

### Introduction

In most researches, we collect data through a **sample survey** over a **census**.

**Statistical inference** is used when sample survey is conducted over a census.

---

### Definition

**Inference (Oxford University Press):**  
A conclusion reached on the basis of evidence and reasoning.

**Statistical Inference:**  
Drawing conclusions about **population parameters** by using **sample statistics**.

---

## Structure of Statistical Inference

```
              Statistical Inference
                      │
        ┌─────────────┴─────────────┐
        │                           │
  Parameter Estimation        Hypothesis Testing
        │
  ┌─────┴─────┐
  │           │
Point      Interval
Estimation  Estimation
```

---

## Parameter Estimation

### Introduction

- In **distribution theory** we assumed that distribution parameters are **known**
- But **practically** they should be **found** or **estimated**
- If estimated parameters are **wrong**, all calculated probabilities will be **inaccurate**

---

### Two Methods of Estimation

**1. Point Estimation**
- Gives a **single estimated value** for the parameter

**2. Interval Estimation**
- Gives a **range of values (interval)** as the estimate

---

### Estimation Methods

- There are **many** point and interval estimation methods with their **own criteria** for use
- Some **interval estimates** will be discussed later in this chapter

---

## Hypothesis Testing

### Definition

**Hypothesis (Oxford University Press):**  
A supposition or proposed explanation made on the basis of limited evidence as a starting point for further investigation.

**Hypothesis Testing:**  
Hypothesis testing is all about checking whether **assumptions (research hypothesis)** are correct.

**Important:** These assumptions should be regarding **population parameters**.

---

## Major Steps under Hypothesis Testing

**Step 1:** Define the hypothesis (H₀ & H₁)

**Step 2:** Test statistic and its distribution

**Step 3:** Define the significance level (α)

**Step 4:** Define the rejection region

**Step 5:** Conduct the test (Calculate test statistic value)

**Step 6:** Conclusion

---

### Important Notes

- There are **various cases** under hypothesis testing
- The **test statistic** that you should use **depends on the case**
- In this session, we will discuss the **hypothesis testing for one population mean**

---

## Types of Hypothesis Testing

```
                  Hypothesis Testing
                         │
        ┌────────────────┴────────────────┐
        │                                 │
   One Population                   Two Populations
        │                                 │
  ┌─────┼─────┐                    ┌──────┴──────┐
  │     │     │                    │             │
Mean Variance Proportion     Two Independent  Two Dependent
  │
  ├── Population variance known
  │
  └── Population variance unknown
      │
      ├── Large Sample (n ≥ 30)
      └── Small Sample (n < 30)
```

**For more details:** http://goo.gl/4wegg

---

## Defining Hypothesis

### Key Points

- The assumption should be **clearly stated** in order to test
- **Two statements** are used:
  - **Null hypothesis (H₀)**
  - **Alternative hypothesis (H₁ or Hₐ)**
- H₀ and H₁ can be considered as **opposites** of each other
- The statement with the **equal (=)** should **always** come to H₀
- Usually if a **claim** is made, it is selected for **H₁**

---

## Three Possible Hypotheses

### 1. Two-Tailed Hypothesis

```
H₀: μ = a
H₁: μ ≠ a

Two-tailed Hypothesis
```

---

### 2. One-Tailed Hypothesis (Left-Tailed)

```
H₀: μ = a
H₁: μ < a

One-tailed Hypothesis
```

---

### 3. One-Tailed Hypothesis (Right-Tailed)

```
H₀: μ = a
H₁: μ > a

One-tailed Hypothesis
```

---

## Examples

### Example 1: Coin Tossing

In a coin tossing experiment, it should be found whether:

**(a)** It's a fair coin or not.

**(b)** It's biased in favor of heads.

**(c)** It's biased in favor of tails.

---

### Example 2: Hybrid Cars

A company that manufactures cars claims that the gas mileage for its new line of hybrid cars, on the average, is 60 miles per gallon (mpg) with a standard deviation of 4 mpg. It was also found out that the mpg was normally distributed. A random sample of 16 cars yielded a mean of 57 miles per gallon. Is the company's claim about the mean gas mileage per gallon of its cars, correct?

---

## Test Statistic

### Definition

**Recap:**  
A function of observable r.v.s that does not depend on any unknown parameters is called a **statistic**.

**Test Statistic:**
- A **test statistic** is a quantity associated with the **sample**
- The test statistic will depend on the **parameter of interest** as well as the **characteristics of the population**
- We assume that the assumption (H₀) is **correct** and find a **sampling distribution** for the test statistic

---

## Test Statistic & Distribution

### To Test Population Mean (μ)

```
        To Test Population Mean (μ)
                   │
        ┌──────────┴──────────┐
        │                     │
    σ² known            σ² unknown
        │                     │
        │              ┌──────┴──────┐
        │              │             │
        │           n ≥ 30         n < 30
        │              │             │
        ↓              ↓             ↓
   Z ~ N(0,1)      Z ~ N(0,1)   T ~ t_{n-1}
```

---

### Formulas

**When σ² is known:**
```
Z = (x̄ - μ) / (σ/√n) ~ N(0,1)
```

**When σ² is unknown and n ≥ 30:**
```
Z = (x̄ - μ) / (s/√n) ~ N(0,1)
```

**When σ² is unknown and n < 30:**
```
T = (x̄ - μ) / (s/√n) ~ t_{n-1}
```

---

## Test Statistic for μ (When σ² Known)

### Theory

**Recap:**  
Let X₁, ..., Xₙ be a random sample of size n from a Normal population with mean μ and variance σ².

Then:
```
X̄ ~ N(μ, σ²/n)
```

**Standardization:**
```
(X̄ - μ) / (σ/√n) ~ N(0,1)
```

---

### Under the Null Hypothesis

If the hypothesis is:
```
H₀: μ = μ₀  vs.  H₁: μ ≠ μ₀
```

Then under H₀:
```
(X̄ - μ₀) / (σ/√n) ~ N(0,1)
```

---

## Rejection Region

### For Two-Tailed Hypothesis

```
         ╱───────────────────────╲
        ╱                         ╲
       ╱                           ╲
      │   α/2                 α/2   │
    ──┼────────────────────────────┼──
      │                            │
  -Z_{α/2}                     Z_{α/2}
    (α1)                         (α2)

or

  -t_{(n-1),α/2}            t_{(n-1),α/2}
```

**Rejection Rule:**
```
Reject H₀ if Z_cal ≥ α2
       OR if Z_cal ≤ α1
```

---

### For One-Tailed Hypothesis (Left-Tailed)

```
H₀: μ = a
H₁: μ < a
```

```
         ╱───────────────────────╲
        ╱                         ╲
       ╱                           ╲
      │ α                           │
    ──┼─────────────────────────────
      │
  -Z_α or -t_{(n-1),α}
      (α1)
```

**Rejection Rule:**
```
Reject H₀ if Z_cal < α1
```

---

### For One-Tailed Hypothesis (Right-Tailed)

```
H₀: μ = a
H₁: μ > a
```

```
         ╱───────────────────────╲
        ╱                         ╲
       ╱                           ╲
      │                         α  │
    ──┼─────────────────────────────
                                 │
                          Z_α or t_{(n-1),α}
                               (α1)
```

**Rejection Rule:**
```
Reject H₀ if Z_cal > α1
```

---

## Example 2: Complete Solution

### Step 1: Define Hypotheses

```
H₀: μ = 60
H₁: μ ≠ 60

Two-tailed hypothesis
```

---

### Step 2: Test Statistic

Under H₀:
```
Z = (x̄ - 60) / (σ/√n) ~ N(0,1)
```

---

### Step 3: Significance Level

Consider **5% level of significance** (α = 0.05)

---

### Step 4: Rejection Region

```
         ╱───────────────────────╲
        ╱                         ╲
       ╱                           ╲
      │ α=.05/2             α=.05/2│
    ──┼────────────────────────────┼──
      │                            │
  -Z_{0.025}                  Z_{0.025}
  = -1.96                      = 1.96
```

**Critical Value:**
```
Z_{0.025} = 1.96
```

**Rejection Rule:**
```
Reject H₀ if Z_cal > Z_{0.025}
       OR if Z_cal < -Z_{0.025}
```

---

### Step 5: Conduct the Test

**Given:**
- x̄ = 57
- σ = 4
- n = 16

**Calculate:**
```
Z_cal = (x̄ - 60) / (σ/√n)
      = (57 - 60) / (4/√16)
      = -3 / 1
      = -3
```

---

### Step 6: Conclusion

Since:
```
Z_cal = -3 < -1.96 = Z_{0.025}
```

We **reject H₀** at 5% level of significance.

**Therefore:**  
We can conclude that company's claim about the mean gas mileage per gallon of its cars is **incorrect**.

---

## P-value Approach

### Definition

**P-value:**  
The probability of obtaining a test statistic which is **more extreme** than observed test statistic value given when **H₀ is true**.

---

### How to Calculate P-value

```
                 P value
                    │
     ┌──────────────┼──────────────┐
     │              │              │
Pr(|TS| > |TS_cal|)  Pr(TS > TS_cal)  Pr(TS < TS_cal)
     │              │              │
     ↓              ↓              ↓
Two-tailed      H₁: μ > a      H₁: μ < a
Hypothesis
```

---

### Decision Rule

**For any test:**

```
If p-value ≤ significance level (α)  →  Reject H₀

If p-value > significance level (α)  →  Do not Reject H₀
```

---

### Properties of P-value

- P-value is a measure of the **strength of evidence** in the data **against H₀**
- This is the **smallest value** of α for which H₀ can be rejected
- P-value represents the **actual risk** of committing Type I error
- P-value also known as **observed significance level**

---

## Errors in Hypothesis Testing

### Types of Errors

| **Statistical Decision** | **True State of the Null Hypothesis** | |
|:---|:---|:---|
| | **H₀ is True** | **H₀ is False** |
| **Reject H₀** | **Type I Error** | Correct |
| **Do not Reject H₀** | Correct | **Type II Error** |

---

### Probabilities

**Type I Error:**
```
Pr(Type I Error) = Pr(Reject H₀ | H₀ true) = α
```

**Type II Error:**
```
Pr(Type II Error) = Pr(Do not Reject H₀ | H₀ false) = β
```

---

### Interpretation

**Type I Error (α):**
- **False Positive**
- Rejecting a true null hypothesis
- Significance level controls this error

**Type II Error (β):**
- **False Negative**
- Failing to reject a false null hypothesis
- Power of the test = 1 - β

---

## Summary

### Hypothesis Testing Process

```
HYPOTHESIS TESTING STEPS:
│
├── 1. Define Hypotheses (H₀ & H₁)
│   ├── Two-tailed: H₁: μ ≠ a
│   ├── Left-tailed: H₁: μ < a
│   └── Right-tailed: H₁: μ > a
│
├── 2. Choose Test Statistic
│   ├── σ² known: Z = (x̄-μ)/(σ/√n)
│   ├── σ² unknown, n≥30: Z = (x̄-μ)/(s/√n)
│   └── σ² unknown, n<30: T = (x̄-μ)/(s/√n)
│
├── 3. Set Significance Level (α)
│
├── 4. Determine Rejection Region
│   └── Based on critical values
│
├── 5. Calculate Test Statistic
│
└── 6. Make Decision
    ├── Traditional: Compare with critical value
    └── P-value: Compare p-value with α
```

---

### Key Formulas

**Test Statistics for Population Mean:**
```
Z = (x̄ - μ₀) / (σ/√n)    when σ² known
Z = (x̄ - μ₀) / (s/√n)    when σ² unknown, n ≥ 30
T = (x̄ - μ₀) / (s/√n)    when σ² unknown, n < 30
```

**Decision Rules:**
```
Traditional: Compare calculated value with critical value
P-value: If p-value ≤ α, reject H₀
```

**Errors:**
```
Type I Error: α = Pr(Reject H₀ | H₀ true)
Type II Error: β = Pr(Do not Reject H₀ | H₀ false)
```

---

## Thanks!

**Any questions?**

---

**End of Lecture 08**

**Total Pages:** 27  
**Completion Status:** ✅ Complete
