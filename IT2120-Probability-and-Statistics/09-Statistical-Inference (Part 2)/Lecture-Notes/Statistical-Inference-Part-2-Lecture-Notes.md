# Lecture 09 - Statistical Inference (Part 2)

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

- [Confidence Intervals](#confidence-intervals)
- [Introduction](#introduction)
- [Interval Estimation](#interval-estimation)
- [Confidence Level](#confidence-level)
- [Confidence Intervals for Population Mean](#confidence-intervals-for-population-mean)
- [Examples](#examples)

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

## Introduction

### Limitations of Point Estimates

**Key Issues:**

1. **Variability:**
   - Estimates will differ from the true parameter values by **varying amounts** depending on the samples obtained

2. **No Reliability Measure:**
   - Point estimates **do not convey any measure of reliability**

**Example:**  
If we estimate μ = 50, we don't know how confident we should be in this estimate.

---

## Interval Estimation

### Definition

**Interval estimation** states that a population parameter is within **two values (an interval)** with a certain probability (**Confidence Level**).

**Also Known As:**  
Interval Estimation is also known as **Confidence Interval**.

---

### Properties of a Good Interval Estimate

For a good interval estimate:

**1. High Probability:**
- The **probability** that the parameter is within the interval should be **high**

**2. Small Width:**
- The **length** of the interval should be **small**

**Trade-off:**  
These two properties often conflict - higher confidence requires wider intervals.

---

## Confidence Level

### Definition

A **confidence level** for the interval should be defined first.

**Formula:**
```
Confidence Level = 1 - α
```

where **α** is the significance level discussed in hypothesis testing.

---

### Common Confidence Levels

| Confidence Level | α | α/2 |
|:---|:---|:---|
| **90%** | 0.10 | 0.05 |
| **95%** | 0.05 | 0.025 |
| **99%** | 0.01 | 0.005 |

---

## Confidence Interval Notation

### General Form

Let **L** and **U** be the lower and upper confidence limits for a parameter **θ** based on a random sample X₁, ..., Xₙ.

**Key Points:**
- Both **L** and **U** are **functions of the sample**
- We can write the interval estimate of θ as:

```
Pr(L ≤ θ ≤ U) = 1 - α
```

---

### Interpretation

**Correct Interpretation:**  
We are **(1 - α)% confident** that the true parameter θ is located in the interval **(L, U)**.

**Important Note:**  
The parameter θ is fixed (not random), but the interval (L, U) is random because it depends on the sample.

---

### Scope of This Lecture

In this session, we will discuss **confidence intervals for population mean (μ) only**.

---

## Confidence Intervals for Population Mean

### Decision Tree

```
                    CI for μ
                       │
          ┌────────────┴────────────┐
          │                         │
      σ² known                  σ² unknown
          │                         │
          ↓                    ┌────┴────┐
    Use Z-interval             │         │
                            n ≥ 30    n < 30
                               │         │
                               ↓         ↓
                         Use Z-interval  Use t-interval
```

---

### Case 1: Population Variance Known (σ² known)

**Confidence Interval:**
```
(x̄ - Z_{α/2}(σ/√n), x̄ + Z_{α/2}(σ/√n))
```

**Components:**
- x̄ = sample mean
- Z_{α/2} = critical value from standard normal distribution
- σ = population standard deviation (known)
- n = sample size

---

### Case 2: Population Variance Unknown, Large Sample (n ≥ 30)

**Confidence Interval:**
```
(x̄ - Z_{α/2}(s/√n), x̄ + Z_{α/2}(s/√n))
```

**Components:**
- x̄ = sample mean
- Z_{α/2} = critical value from standard normal distribution
- s = sample standard deviation (estimate of σ)
- n = sample size

**Note:** Use **s** instead of **σ**, but still use **Z** distribution due to large sample.

---

### Case 3: Population Variance Unknown, Small Sample (n < 30)

**Confidence Interval:**
```
(x̄ - t_{(n-1),α/2}(s/√n), x̄ + t_{(n-1),α/2}(s/√n))
```

**Components:**
- x̄ = sample mean
- t_{(n-1),α/2} = critical value from t-distribution with (n-1) degrees of freedom
- s = sample standard deviation
- n = sample size

**Note:** Must use **t-distribution** instead of **Z-distribution** for small samples.

---

## Summary of Formulas

### Confidence Interval for Population Mean (μ)

| **Case** | **Condition** | **Formula** | **Distribution** |
|:---|:---|:---|:---|
| **1** | σ² known | (x̄ - Z_{α/2}(σ/√n), x̄ + Z_{α/2}(σ/√n)) | Standard Normal (Z) |
| **2** | σ² unknown, n ≥ 30 | (x̄ - Z_{α/2}(s/√n), x̄ + Z_{α/2}(s/√n)) | Standard Normal (Z) |
| **3** | σ² unknown, n < 30 | (x̄ - t_{(n-1),α/2}(s/√n), x̄ + t_{(n-1),α/2}(s/√n)) | t-distribution |

---

## Example: Hybrid Cars

### Problem

A company that manufactures cars claims that the gas mileage for its new line of hybrid cars, has a standard deviation of 4 mpg. It was also found out that the mpg was normally distributed. A random sample of 16 cars yielded a mean of 57 miles per gallon. What is the interval estimation for the population mean at a 95% confidence level?

---

### Given Information

- **Population standard deviation:** σ = 4 mpg (known)
- **Distribution:** Normal
- **Sample size:** n = 16
- **Sample mean:** x̄ = 57 mpg
- **Confidence level:** 95%

---

### Solution

#### Step 1: Identify the Case

Since **σ² is known**, we use **Case 1**.

---

#### Step 2: Determine α

```
Confidence Level = 1 - α = 0.95
α = 0.05
α/2 = 0.025
```

---

#### Step 3: Find Critical Value

```
Z_{α/2} = Z_{0.025} = 1.96
```

(From standard normal table)

---

#### Step 4: Calculate Standard Error

```
SE = σ/√n
   = 4/√16
   = 4/4
   = 1
```

---

#### Step 5: Calculate Margin of Error

```
ME = Z_{α/2} × (σ/√n)
   = 1.96 × 1
   = 1.96
```

---

#### Step 6: Construct Confidence Interval

**Lower Limit:**
```
L = x̄ - Z_{α/2}(σ/√n)
  = 57 - 1.96
  = 55.04
```

**Upper Limit:**
```
U = x̄ + Z_{α/2}(σ/√n)
  = 57 + 1.96
  = 58.96
```

---

#### Step 7: Final Answer

**95% Confidence Interval:**
```
(55.04, 58.96)
```

**Interpretation:**  
We are **95% confident** that the true mean gas mileage for all hybrid cars is between **55.04 mpg** and **58.96 mpg**.

---

## Key Concepts Summary

### Confidence Interval Components

```
CONFIDENCE INTERVAL STRUCTURE:
│
├── Point Estimate (x̄)
│   └── Center of the interval
│
├── Margin of Error
│   ├── Critical Value (Z or t)
│   └── Standard Error (σ/√n or s/√n)
│
└── Confidence Level (1-α)
    └── Probability that interval contains true parameter
```

---

### Width of Confidence Interval

The **width** of a confidence interval is affected by:

**1. Confidence Level:**
- Higher confidence → Larger critical value → Wider interval

**2. Sample Size (n):**
- Larger n → Smaller standard error → Narrower interval

**3. Population Variability (σ or s):**
- Greater variability → Larger standard error → Wider interval

**Formula for Width:**
```
Width = 2 × (Critical Value) × (Standard Error)
```

---

### Choosing Between Z and t

```
Decision Tree:
│
Is σ known?
├── Yes → Use Z
└── No → Is n ≥ 30?
    ├── Yes → Use Z (with s)
    └── No → Use t
```

---

## Comparison: Confidence Intervals vs Hypothesis Testing

| **Aspect** | **Confidence Intervals** | **Hypothesis Testing** |
|:---|:---|:---|
| **Purpose** | Estimate parameter | Test claim about parameter |
| **Output** | Range of plausible values | Decision (reject or not reject H₀) |
| **Information** | Shows precision of estimate | Shows statistical significance |
| **Interpretation** | "We are X% confident..." | "We reject/do not reject..." |

---

### Relationship

**Connection:**
- A 95% confidence interval contains all values that would **not be rejected** in a two-tailed test at α = 0.05
- If a hypothesized value is **outside** the confidence interval, we would **reject** H₀ at that significance level

---

## Summary

### Key Formulas

**Confidence Interval for μ:**
```
Case 1 (σ known):
CI = x̄ ± Z_{α/2}(σ/√n)

Case 2 (σ unknown, n ≥ 30):
CI = x̄ ± Z_{α/2}(s/√n)

Case 3 (σ unknown, n < 30):
CI = x̄ ± t_{(n-1),α/2}(s/√n)
```

---

### Common Critical Values

**Standard Normal (Z):**
```
90% CI: Z_{0.05} = 1.645
95% CI: Z_{0.025} = 1.96
99% CI: Z_{0.005} = 2.576
```

**t-distribution:** Values depend on degrees of freedom (n-1)

---

### Interpretation Template

**For a (1-α)% confidence interval (L, U):**

"We are **(1-α)% confident** that the true population mean (μ) lies between **L** and **U**."

**What this means:**
- If we repeated this process many times, approximately (1-α)% of the intervals would contain the true μ
- The specific interval we calculated either contains μ or it doesn't (we just don't know which)

---

## Thanks!

**Any questions?**

---

**End of Lecture 09**

**Total Pages:** 11  
**Completion Status:** ✅ Complete
