# Lecture 07 - Sampling Distributions

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

- [Simple Random Sampling (SRS)](#simple-random-sampling-srs)
- [Statistic](#statistic)
- [Sampling Distributions](#sampling-distributions)
- [Sampling Distribution of the Mean](#sampling-distribution-of-the-mean)
- [Central Limit Theorem](#central-limit-theorem)
- [Examples](#examples)

---

## Simple Random Sampling (SRS)

### Definition

This is **starting point** for all probability sampling designs.

---

### Key Characteristics

**1. Equal Probability:**
- Each unit in the **population (N)** has **same chance** of being selected to the **sample (n)**

**2. Sampling Methods:**
- Sampling may be done **with** or **without** replacement
  - **SRSWR** = Simple Random Sampling With Replacement
  - **SRSWOR** = Simple Random Sampling Without Replacement

**3. Precision:**
- Generally, **SRSWOR** yields **more precise results** and is **operationally more convenient**

**4. Statistical Properties:**
- SRS is a set of **independent and identically distributed (iid)** observable random variables

---

## Statistic

### Definition

A **function of observable r.v.s** that **does not depend on any unknown parameters** is called a **statistic**.

---

### Example

**Sample Mean:**
```
X̄ = (X₁ + X₂ + ... + Xₙ) / n
```

The sample mean is a statistic because it is calculated from observable data (X₁, X₂, ..., Xₙ) and does not depend on unknown population parameters.

---

## Sampling Distributions

### Definition

The **probability distribution of a statistic** is known as a **sampling distribution**.

---

### Key Concept

- A statistic (like X̄) is itself a random variable
- Therefore, it has its own probability distribution
- This distribution is called the **sampling distribution**

---

## Sampling Distribution of the Mean

### General Case (Any Distribution)

Let **X₁, X₂, ..., Xₙ** be a random sample of size n from a population with mean **μ** and variance **σ²**.

Then:

**Expected Value of Sample Mean:**
```
E(X̄) = μ
```

**Variance of Sample Mean:**
```
V(X̄) = σ²/n
```

**Standard Error:**
```
SE(X̄) = σ/√n
```

---

### Standard Error (SE)

**Definition:**  
The **standard deviation** of a sampling distribution of a statistic is called the **Standard Error (SE)**.

**Important Note:**  
Although the r.v.s are identically distributed, a **specific distribution type is not needed** for these results to hold.

---

## Sampling Distribution of the Mean (Normal Population)

### When Population is Normal

Let **X₁, X₂, ..., Xₙ** be a random sample of size n from a **Normal population** with mean **μ** and variance **σ²**.

Then:

```
X̄ ~ N(μ, σ²/n)
```

**In other words:**
- The sample mean follows a **Normal distribution**
- With mean = **μ** (same as population mean)
- With variance = **σ²/n** (population variance divided by sample size)

---

## Examples

### Example 1: Beverage Bottles

**Problem:**  
A particular brand of drink has an average of 12 ounces per can. As a result of randomness, there will be small variations in how much liquid each bottle really contains. It has been observed that the amount of liquid in these bottles is normally distributed with σ = 0.8 ounce. A sample of 10 bottles of this brand of soda is randomly selected from a large lot of bottles, and the amount of liquid, in ounces, is measured in each. Find the probability that the sample mean will be within 0.5 ounce of 12 ounces.

**Given:**
- Population mean: μ = 12 ounces
- Population standard deviation: σ = 0.8 ounces
- Sample size: n = 10
- Population distribution: Normal

**Find:** Pr(11.5 < X̄ < 12.5)

**Solution:**

Since the population is normally distributed:
```
X̄ ~ N(12, 0.8²/10)
X̄ ~ N(12, 0.064)
X̄ ~ N(12, (0.253)²)
```

Standard error:
```
SE = σ/√n = 0.8/√10 = 0.253
```

We need to find:
```
Pr(11.5 < X̄ < 12.5)
```

Standardizing:
```
Z = (X̄ - μ) / SE
```

For X̄ = 11.5:
```
Z₁ = (11.5 - 12) / 0.253 = -1.98
```

For X̄ = 12.5:
```
Z₂ = (12.5 - 12) / 0.253 = 1.98
```

Therefore:
```
Pr(11.5 < X̄ < 12.5) = Pr(-1.98 < Z < 1.98)
```

---

### Example 2: Hybrid Cars

**Problem:**  
A company that manufactures cars claims that the gas mileage for its new line of hybrid cars, on the average, is 60 miles per gallon (mpg) with a standard deviation of 4 mpg. A random sample of 16 cars yielded a mean of 57 miles per gallon. If the company's claim is correct, what is the probability that the sample mean is less than or equal to 57 mpg? What assumptions did you make?

**Given:**
- Population mean: μ = 60 mpg (claimed)
- Population standard deviation: σ = 4 mpg
- Sample size: n = 16
- Sample mean observed: x̄ = 57 mpg

**Find:** Pr(X̄ ≤ 57)

**Assumptions:**
1. The gas mileage follows a normal distribution (or use CLT if n is large enough)
2. Random sampling
3. The population standard deviation is known and accurate

**Solution:**

Sampling distribution of X̄:
```
X̄ ~ N(60, 4²/16)
X̄ ~ N(60, 1)
```

Standard error:
```
SE = σ/√n = 4/√16 = 1
```

Standardizing:
```
Z = (X̄ - μ) / SE
Z = (57 - 60) / 1
Z = -3
```

Therefore:
```
Pr(X̄ ≤ 57) = Pr(Z ≤ -3)
```

This is a very small probability, suggesting that if the company's claim is correct, observing a sample mean of 57 or less would be extremely unlikely.

---

## Central Limit Theorem

### Statement

Let **X₁, X₂, ..., Xₙ** be a **large random sample** of size n from a population with mean **μ** and variance **σ²**.

Then:

```
X̄ ~ N(μ, σ²/n)
```

approximately, as n becomes large.

---

### Key Points

**1. Sample Size Requirement:**
- A **rule of thumb** is that the sample size n must be **at least 30**

**2. Distribution Independence:**
- Central Limit Theorem can be applied **regardless of the distribution of the population**
- The population does **NOT** need to be normal
- This is what makes CLT so powerful!

**3. Approximation:**
- As n increases, the approximation becomes better
- For n ≥ 30, the approximation is generally considered good

---

### Importance

The Central Limit Theorem is one of the most important theorems in statistics because:

1. **Universality:** Works for any population distribution
2. **Practical:** Enables inference even when population distribution is unknown
3. **Foundation:** Forms the basis for many statistical procedures

---

## Summary

### Key Formulas

**Sampling Distribution of the Mean:**
```
E(X̄) = μ
V(X̄) = σ²/n
SE(X̄) = σ/√n
```

**When Population is Normal:**
```
X̄ ~ N(μ, σ²/n)  for any n
```

**Central Limit Theorem:**
```
X̄ ~ N(μ, σ²/n)  approximately, when n ≥ 30
(regardless of population distribution)
```

---

### Key Concepts

```
SAMPLING DISTRIBUTIONS:
│
├── Simple Random Sampling (SRS)
│   ├── Equal probability selection
│   ├── With/without replacement
│   └── Independent and identically distributed (iid)
│
├── Statistic
│   └── Function of observable r.v.s
│
├── Sampling Distribution
│   └── Probability distribution of a statistic
│
├── Sampling Distribution of Mean
│   ├── E(X̄) = μ
│   ├── V(X̄) = σ²/n
│   └── SE(X̄) = σ/√n
│
└── Central Limit Theorem
    ├── Works for any population distribution
    ├── n ≥ 30 (rule of thumb)
    └── X̄ ~ N(μ, σ²/n) approximately
```

---

### When to Use What

**If Population is Normal:**
```
X̄ ~ N(μ, σ²/n)  for ANY sample size n
```

**If Population is NOT Normal:**
```
Use CLT if n ≥ 30
Then X̄ ~ N(μ, σ²/n) approximately
```

**If Population is NOT Normal AND n < 30:**
```
Cannot assume X̄ is normally distributed
Need different methods or more information about population distribution
```

---

## Thanks!

**Any questions?**

---

**End of Lecture 07**

**Total Pages:** 11  
**Completion Status:** ✅ Complete
