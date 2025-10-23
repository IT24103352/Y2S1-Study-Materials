# Lecture 10 - Chi Squared Tests

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

- [Introduction to Chi-Squared Tests](#introduction-to-chi-squared-tests)
- [Test for Association](#test-for-association)
  - [Hypothesis and Test Statistic](#hypothesis-and-test-statistic)
  - [Procedure](#procedure)
  - [Important Rules](#important-rules)
  - [Example](#example-test-for-association)
- [Goodness of Fit Test](#goodness-of-fit-test)
  - [Hypothesis and Test Statistic](#hypothesis-and-test-statistic-1)
  - [Procedure](#procedure-1)
  - [Examples](#examples-goodness-of-fit)

---

## Introduction to Chi-Squared Tests

### When to Use Chi-Squared Tests

Chi-squared tests are used for:

- **Discrete data**
- **Categorical data**

---

## Types of Chi-Squared Tests

```
           Chi Squared Tests
                  │
        ┌─────────┴─────────┐
        │                   │
  Goodness of           Test for
    Fit Test          Association
```

---

## Test for Association

### Purpose

> **Used to find whether two factors are independent.**

---

### Hypothesis and Test Statistic

#### Hypotheses

```
H₀: The factors are independent.
H₁: The factors are not independent.
```

---

#### Test Statistic

Under **H₀**:

```
X² = Σᵢ₌₁ⁿ Σⱼ₌₁ᵐ [(Oᵢⱼ - Eᵢⱼ)² / Eᵢⱼ] ~ χ²_{d.f.}
```

**Where:**
- **Oᵢⱼ** = Observed frequency for cell ij
- **Eᵢⱼ** = Expected frequency for cell ij
- **d.f.** = (No. of rows - 1) × (No. of columns - 1)

---

#### Expected Frequency Formula

```
Eᵢⱼ = (Row Total × Column Total) / Grand Total
```

---

### Decision Rule

**Reject H₀ if:**
```
X²_cal > X²_{df, α%}  (critical value)
```

---

### Procedure

#### Test Steps

**1. Find the expected frequencies for each cell**
   - Calculate using the formula above

**2. Calculate test statistic value**
   - Use the chi-squared formula

**3. Conclusion**
   - Compare calculated test statistic value with critical value
   - Give the conclusion

---

## Important Rules for Expected Frequencies

### Rule 01

**All expected counts should be greater than 5.**

---

### Rule 02

**All expected counts should be greater than 1 AND at least 80% of the cells should have expected count which is greater than or equal to 5.**

---

### Solution if Rules are Violated

**If not, categories can be joined.**

Combine adjacent categories to increase expected frequencies.

---

## Example: Test for Association

### Problem

The following table gives a classification according to religious affiliation and marital status for 500 randomly selected individuals. For α = 1%, test the null hypothesis that marital status and religious affiliation are independent.

#### Data Table

| | **Religious Affiliation** | | | | |
|:---|:---|:---|:---|:---|:---|
| **Marital Status** | **A** | **B** | **C** | **None** | **D** |
| **Single** | 39 | 19 | 12 | 18 | 28 |
| **Married** | 172 | 61 | 44 | 70 | 37 |

---

### Solution Steps

#### Step 1: State the Hypotheses

```
H₀: Marital status and religious affiliation are independent
H₁: Marital status and religious affiliation are not independent
```

---

#### Step 2: Calculate Row and Column Totals

| | **A** | **B** | **C** | **None** | **D** | **Row Total** |
|:---|:---|:---|:---|:---|:---|:---|
| **Single** | 39 | 19 | 12 | 18 | 28 | 116 |
| **Married** | 172 | 61 | 44 | 70 | 37 | 384 |
| **Column Total** | 211 | 80 | 56 | 88 | 65 | **500** |

---

#### Step 3: Calculate Expected Frequencies

For each cell:
```
Eᵢⱼ = (Row Total × Column Total) / Grand Total
```

**Example for Single-A cell:**
```
E₁₁ = (116 × 211) / 500 = 48.952
```

**Complete Expected Frequency Table:**

| | **A** | **B** | **C** | **None** | **D** |
|:---|:---|:---|:---|:---|:---|
| **Single** | 48.952 | 18.56 | 12.992 | 20.416 | 15.08 |
| **Married** | 162.048 | 61.44 | 43.008 | 67.584 | 49.92 |

---

#### Step 4: Calculate Chi-Squared Statistic

```
X² = Σ [(Oᵢⱼ - Eᵢⱼ)² / Eᵢⱼ]
```

For each cell, calculate:
```
(O - E)² / E
```

Sum all values to get X²_cal.

---

#### Step 5: Determine Degrees of Freedom

```
d.f. = (rows - 1) × (columns - 1)
     = (2 - 1) × (5 - 1)
     = 1 × 4
     = 4
```

---

#### Step 6: Find Critical Value

For α = 0.01 and d.f. = 4:
```
X²_{4, 0.01} = 13.277  (from chi-squared table)
```

---

#### Step 7: Make Decision

Compare X²_cal with critical value:
```
If X²_cal > 13.277: Reject H₀
If X²_cal ≤ 13.277: Do not reject H₀
```

---

#### Step 8: Conclusion

State whether marital status and religious affiliation are independent based on the test result.

---

## Goodness of Fit Test

### Purpose

> **Used to find whether a set of discrete or categorical data follows a specified distribution.**

---

## Hypothesis and Test Statistic

### Hypotheses

```
H₀: The data are consistent with the specified distribution.
H₁: At least one category deviates from the specified distribution.
```

---

### Test Statistic

Under **H₀**:

```
X² = Σᵢ₌₁ⁿ [(Oᵢ - Eᵢ)² / Eᵢ] ~ χ²_{d.f.}
```

**Where:**
- **Oᵢ** = Observed frequency for cell i
- **Eᵢ** = Expected frequency for cell i

---

### Degrees of Freedom

```
d.f. = No. of classes - No. of parameters estimated - 1
```

**Parameters estimated:**
- For uniform distribution: 0 parameters
- For Poisson distribution: 1 parameter (λ)
- For normal distribution: 2 parameters (μ, σ)

---

### Decision Rule

**Reject H₀ if:**
```
X²_cal > X²_{df, α%}  (critical value)
```

---

## Procedure

### Test Steps

**1. Find the expected frequencies for each category**
   - Based on the specified distribution

**2. Calculate test statistic value**
   - Use the chi-squared formula

**3. Conclusion**
   - Compare calculated test statistic value with critical value
   - Give the conclusion

---

## Examples: Goodness of Fit

### Example 1: Fair Die Test

#### Problem

A die is rolled 60 times and the face values are recorded. The results are as follows:

| **Up Face** | 1 | 2 | 3 | 4 | 5 | 6 |
|:---|:---|:---|:---|:---|:---|:---|
| **Frequency** | 8 | 11 | 5 | 12 | 15 | 9 |

Is the die balanced? Test using α = 0.05.

---

#### Solution

**Step 1: State the Hypotheses**
```
H₀: The die is balanced (uniform distribution)
H₁: The die is not balanced
```

**Step 2: Calculate Expected Frequencies**

For a fair die, each face should appear equally:
```
Eᵢ = n / k = 60 / 6 = 10  for all faces
```

| **Up Face** | 1 | 2 | 3 | 4 | 5 | 6 |
|:---|:---|:---|:---|:---|:---|:---|
| **Observed** | 8 | 11 | 5 | 12 | 15 | 9 |
| **Expected** | 10 | 10 | 10 | 10 | 10 | 10 |

---

**Step 3: Calculate Chi-Squared Statistic**

```
X² = Σ [(Oᵢ - Eᵢ)² / Eᵢ]
   = (8-10)²/10 + (11-10)²/10 + (5-10)²/10 + (12-10)²/10 + (15-10)²/10 + (9-10)²/10
   = 4/10 + 1/10 + 25/10 + 4/10 + 25/10 + 1/10
   = 60/10
   = 6.0
```

---

**Step 4: Determine Degrees of Freedom**

```
d.f. = k - p - 1
     = 6 - 0 - 1  (no parameters estimated)
     = 5
```

---

**Step 5: Find Critical Value**

For α = 0.05 and d.f. = 5:
```
X²_{5, 0.05} = 11.070  (from chi-squared table)
```

---

**Step 6: Make Decision**

```
X²_cal = 6.0 < 11.070 = X²_{5, 0.05}
```

**Do not reject H₀** at 5% significance level.

---

**Step 7: Conclusion**

There is **insufficient evidence** to conclude that the die is not balanced. The die appears to be **fair**.

---

### Example 2: Poisson Distribution Test

#### Problem

The number of accidents in a month observed over a period of 10 years is given below:

| **No. of accidents** | 0 | 1 | 2 | 3 | 4 | 5 | 6 | ≥7 |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| **Frequency** | 41 | 40 | 22 | 10 | 6 | 0 | 1 | 0 |

Is the data following a Poisson distribution? Test using α = 0.05.

---

#### Solution Steps

**Step 1: State the Hypotheses**
```
H₀: The data follows a Poisson distribution
H₁: The data does not follow a Poisson distribution
```

---

**Step 2: Estimate Parameter (λ)**

Calculate sample mean:
```
λ̂ = Σ(xᵢ × fᵢ) / Σfᵢ

Total observations = 41+40+22+10+6+0+1+0 = 120

λ̂ = (0×41 + 1×40 + 2×22 + 3×10 + 4×6 + 5×0 + 6×1 + 7×0) / 120
  = (0 + 40 + 44 + 30 + 24 + 0 + 6 + 0) / 120
  = 144 / 120
  = 1.2
```

---

**Step 3: Calculate Expected Frequencies**

For Poisson distribution with λ = 1.2:
```
P(X = k) = (e^(-λ) × λ^k) / k!
Eₖ = n × P(X = k) = 120 × P(X = k)
```

Calculate for each value:
- E₀ = 120 × P(X=0) = 120 × e^(-1.2) × 1.2⁰ / 0! = 36.14
- E₁ = 120 × P(X=1) = 120 × e^(-1.2) × 1.2¹ / 1! = 43.37
- E₂ = 120 × P(X=2) = ...
- etc.

---

**Step 4: Check Expected Frequency Rules**

Combine categories if any Eᵢ < 5.

---

**Step 5: Calculate Chi-Squared Statistic**

```
X² = Σ [(Oᵢ - Eᵢ)² / Eᵢ]
```

---

**Step 6: Determine Degrees of Freedom**

```
d.f. = k - p - 1
     = (number of classes after combining) - 1 - 1
     (1 parameter λ was estimated)
```

---

**Step 7: Make Decision and Conclusion**

Compare with critical value and conclude.

---

### Example 3: Normal Distribution Test

#### Problem

The grades of students in a class of 51 are given in the following table. Test the hypothesis that the grades are normally distributed with a mean of 75 and a standard deviation of 8. Use α = 0.05.

| **Range** | 0-59.5 | 59.5-69.5 | 69.5-79.5 | 79.5-89.5 | 89.5-100 |
|:---|:---|:---|:---|:---|:---|
| **No. of students** | 8 | 11 | 5 | 12 | 15 |

---

#### Solution Steps

**Step 1: State the Hypotheses**
```
H₀: Grades are N(75, 8²)
H₁: Grades are not N(75, 8²)
```

---

**Step 2: Calculate Expected Frequencies**

For each interval, calculate:
```
P(a < X < b) = Φ((b-μ)/σ) - Φ((a-μ)/σ)
Eᵢ = n × P(interval i) = 51 × P(interval i)
```

**Example for first interval (0-59.5):**
```
P(X < 59.5) = Φ((59.5-75)/8) = Φ(-1.9375) ≈ 0.0262
E₁ = 51 × 0.0262 = 1.34
```

Calculate similarly for all intervals.

---

**Step 3: Check Expected Frequency Rules**

Combine intervals if necessary (especially first interval with E < 5).

---

**Step 4: Calculate Chi-Squared Statistic**

```
X² = Σ [(Oᵢ - Eᵢ)² / Eᵢ]
```

---

**Step 5: Determine Degrees of Freedom**

```
d.f. = k - p - 1
     = (number of classes after combining) - 0 - 1
     (0 parameters estimated, μ and σ were given)
```

---

**Step 6: Make Decision and Conclusion**

Compare with X²_{df, 0.05} and conclude.

---

## Summary

### Chi-Squared Tests Overview

```
CHI-SQUARED TESTS:
│
├── Test for Association
│   ├── Purpose: Test independence of two factors
│   ├── H₀: Factors are independent
│   ├── Test Statistic: X² = Σ[(O-E)²/E]
│   └── d.f. = (r-1)(c-1)
│
└── Goodness of Fit Test
    ├── Purpose: Test if data follows specified distribution
    ├── H₀: Data consistent with distribution
    ├── Test Statistic: X² = Σ[(O-E)²/E]
    └── d.f. = k - p - 1
```

---

### Key Formulas

**Test Statistic:**
```
X² = Σ [(Observed - Expected)² / Expected]
```

**Expected Frequency (Association):**
```
Eᵢⱼ = (Row Total × Column Total) / Grand Total
```

**Degrees of Freedom:**
```
Association: d.f. = (r-1)(c-1)
Goodness of Fit: d.f. = k - p - 1
```

---

### Decision Rule

**For all chi-squared tests:**
```
Reject H₀ if X²_cal > X²_{df, α}
```

---

### Important Rules for Expected Frequencies

**Rule 1:** All expected counts > 5

**Rule 2:** All expected counts > 1 AND at least 80% of cells have expected count ≥ 5

**Solution:** Combine categories if rules violated

---

## Thanks!

**Any questions?**

---

**End of Lecture 10**

**Total Pages:** 18  
**Completion Status:** ✅ Complete
