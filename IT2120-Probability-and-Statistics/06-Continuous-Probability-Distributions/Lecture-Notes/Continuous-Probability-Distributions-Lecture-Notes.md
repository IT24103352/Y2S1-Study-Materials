# Lecture 06 - Continuous Probability Distributions

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

- [Continuous Random Variables](#continuous-random-variables)
- [Probability Distributions](#probability-distributions)
- [Probability Density Function (PDF)](#probability-density-function-pdf)
- [Continuous Probability Distributions](#continuous-probability-distributions)
  - [Uniform Distribution](#uniform-distribution)
  - [Exponential Distribution](#exponential-distribution)
  - [Normal Distribution](#normal-distribution)
- [Standard Normal Distribution](#standard-normal-distribution)
- [Approximating Discrete Distributions](#approximating-discrete-distributions)
  - [Binomial to Normal](#binomial-to-normal)
  - [Poisson to Normal](#poisson-to-normal)

---

## Random Variables

### Types of Random Variables

```
              Random Variables
                     │
        ┌────────────┴────────────┐
        │                         │
  Discrete Random          Continuous Random
    Variables                   Variables
```

---

## Continuous Random Variables

### Definition

A random variable is said to be **continuous**, if it can take **any value within a range**.

---

### Key Characteristics

- Continuous data are frequently **measured** in some way rather than **counted**
- If X is a continuous random variable, **Pr(X = a) = 0** for any value of a

**Important:** For continuous random variables, probability at a single point is always zero.

---

### Examples

**Examples of Continuous Random Variables:**

- **Temperature**
- **Heart beat of a patient**
- **Rainfall**
- **Waiting time for a bus**

---

## Probability Distributions

### Key Differences from Discrete Distributions

- For **continuous random variables**, the probability distribution **cannot be presented in a tabular form**
- Probability distribution function of a continuous random variable is known as **probability density function (pdf)**
- The **area under the p.d.f.** gives probability values

---

## Probability Density Function (PDF)

### Definition

The function **f_X(x)** is a **probability density function** for the continuous random variable X, defined over the set of real numbers (ℝ), if:

---

### Properties of PDF

**1. Non-Negative:**
```
f_X(x) ≥ 0  for all x ∈ ℝ
```

**2. Total Area Equals One:**
```
∫_{-∞}^{∞} f_X(x) dx = 1
```

**3. Probability Over an Interval:**
```
Pr(a < X < b) = ∫_a^b f_X(x) dx
```

---

## Properties of Continuous Random Variables

Let X be a continuous random variable with a p.d.f. (f_X(x)), defined over the set of real numbers (ℝ).

---

### Cumulative Distribution Function (c.d.f.)

```
F_X(x) = Pr(X ≤ x) = ∫_{-∞}^x f_X(x) dx
```

---

### Expected Value

```
E[g(x)] = ∫_{-∞}^{∞} g(x) f_X(x) dx
```

---

### Variance

```
V[g(x)] = E[g(x)²] - {E[g(x)]}²
```

---

## PDF Example

### Problem

Suppose that the error in the reaction temperature, in °C, for a controlled laboratory experiment is a continuous random variable X having the probability density function:

```
f_X(x) = { cx²     if -1 < x < 2
         { 0       otherwise
```

**Tasks:**

**1.** Find the value of c

**2.** Find Pr(0 < X ≤ 1)

**3.** Find the expected value and the variance

**4.** Find the c.d.f.

---

## Continuous Probability Distributions

```
    Continuous Probability Distributions
                   │
    ┌──────────────┼──────────────┐
    │              │              │
 Uniform      Exponential      Normal
Distribution  Distribution  Distribution
```

---

## Uniform Distribution

### Definition

This is one of the **simplest probability distributions** in statistics.

Let X is a continuous random variable taking values in the range of **a** and **b** follows a uniform distribution. Then it can be represented as follows:

```
X ~ U(a, b)
```

---

### Probability Density Function

```
f(x) = { 1/(b-a)   if a ≤ x ≤ b
       { 0         otherwise
```

---

### Expected Value and Variance

**Expected Value:**
```
E(X) = (b + a) / 2
```

**Variance:**
```
V(X) = (b - a)² / 12
```

---

### Standard Uniform Distribution

A uniform distribution where **a = 0** and **b = 1**, called as **standard uniform distribution**.

**For Standard Uniform:**
```
E(X) = 1/2
V(X) = 1/12
```

---

### Uniform Distribution - Example

**Problem:**  
It is given that arrival time of an elevator follows uniform distribution where it takes 0 to 50 seconds to come from one floor to another floor.

**1.** What is the probability that this elevator arrives within 30 seconds?

**2.** Find the expected arrival time of the elevator?

**3.** What is the variance?

---

## Continuous Distributions Summary

### Exponential Distribution

**Description:**
- The distribution is usually used to **model life times**
- There is a **link to the Poisson distribution**

**Notation:**
```
X ~ Exp(λ)
```

**Probability Density Function:**
```
f_X(x) = { λe^(-λx)   if x > 0
         { 0          otherwise
```

**Expected Value:**
```
E(X) = 1/λ
```

**Variance:**
```
V(X) = 1/λ²
```

---

### Normal Distribution / Gaussian Distribution

**Description:**
- This is **most commonly used** distribution
- This is **bell shaped** distribution and **perfectly symmetric** around μ

**Notation:**
```
X ~ N(μ, σ²)
```

**Probability Density Function:**
```
f_X(x) = (1/(σ√(2π))) × exp[-(x-μ)²/(2σ²)]  ;  -∞ < x < ∞
```

**Expected Value:**
```
E(X) = μ
```

**Variance:**
```
V(X) = σ²
```

---

## Exponential Distribution

### Applications

Widely used in **waiting line (or queuing) theory** to model the **length of time between arrivals** in process.

**Examples:**
- Duration between two customers at Bank ATMs
- To model patients entering to an accident ward

---

### Exponential Distribution - Visualization

```
PDF of Exp(10)

E(10)
0.20│ •
    │  •
    │   •
0.15│    •
    │     •
0.10│      •••
    │         •••
0.05│            •••••
    │                 •••••••
0.00│________________________•••••••••••
    0    5   10   15   20   25   30
                     X
```

**Shape:** Exponentially decreasing curve starting at λ when x=0

---

### Exponential Distribution - Example

**Problem:**  
The time, in hours, during which an electrical generator is operational is a random variable that follows an exponential distribution with a mean of 160. What is the probability that a generator of this type will be operational for:

**1.** Less than 40 hours?

**2.** Between 60 and 160 hours?

**3.** More than 200 hours?

---

## Standard Normal Distribution

### Definition

Normal distribution with **μ = 0** and **σ² = 1** is known as the **Standard Normal Distribution**.

---

### Why Use Standard Normal?

- Evaluating probabilities with Normal requires **complex integration**
- To simplify the procedure, **statistical tables** are defined
- But, tables for each combination of μ and σ² **cannot be created**
- So, tables are **only for the standard normal distribution**

---

## Normal → Standard Normal

### Standardization Formula

If **X ~ N(μ, σ²)**, then:

```
Z = (X - μ) / σ  ~  N(0, 1)
```

where:
- Z = standard normal variable
- μ = mean of X
- σ = standard deviation of X

---

## Normal Distribution - Examples

### Example 1: Standard Normal

**Problem:**  
For Z ~ N(0, 1), calculate Pr(Z ≥ 1.13)

---

### Example 2: General Normal

**Problem:**  
For X ~ N(5, 4), calculate Pr(-2.5 < X < 1.13)

---

### Example 3: Application

**Problem:**  
The actual marks for FCS of Metro students revealed that they were normally distributed with a mean mark of 45 and a standard deviation of 22. What is the probability that a randomly chosen student will pass? (Assume that pass mark is 45)

---

## Approximating Binomial Probabilities Using Normal Distribution

### When to Use

For **X ~ Bin(n, p)** this approximation can be used if:
- **n is large**
- **p is moderate**

**General Rule:**
```
np > 5  AND  n(1-p) > 5
```

---

### Approximation

Can be approximated with a r.v. with a distribution:

```
X ~ Bin(n, p)  ≈  Y ~ N(np, np(1-p))

where:
  Mean = np
  Variance = np(1-p)
```

---

### Continuity Correction

A **continuity correction** is needed because a **discrete distribution** is approximated with a **continuous distribution**.

---

## Continuity Correction

If **X ~ Bin(n, p)** is approximated with a r.v. **Y ~ N(np, np(1-p))**, then:

**1. Less Than or Equal:**
```
Pr(X ≤ a) = P(Y < a + 0.5)
```

**2. Greater Than or Equal:**
```
Pr(X ≥ a) = P(Y > a - 0.5)
```

**3. Strictly Less Than:**
```
Pr(X < a) = P(Y < a - 0.5)
```

**4. Strictly Greater Than:**
```
Pr(X > a) = P(Y > a + 0.5)
```

**5. Exactly Equal:**
```
Pr(X = a) = P(a - 0.5 < Y < a + 0.5)
```

---

## Example: Binomial to Normal Approximation

**Problem:**  
Suppose that a sample of n = 1,600 tires of the same type are obtained at random from an ongoing production process in which 8% of all such tires produced are defective. What is the probability that in such a sample 150 or fewer tires will be defective?

**Given:**
- n = 1,600
- p = 0.08
- X = number of defective tires

**Check conditions:**
```
np = 1600 × 0.08 = 128 > 5 ✓
n(1-p) = 1600 × 0.92 = 1472 > 5 ✓
```

**Use Normal approximation:**
```
X ~ Bin(1600, 0.08) ≈ N(128, 117.76)
```

---

## Approximating Poisson Probabilities Using Normal Distribution

### When to Use

If **X ~ Poisson(λ)** then if **λ is greater than 20**, the approximation can be used.

---

### Approximation

Can be approximated with a r.v. with a distribution:

```
X ~ Poisson(λ)  ≈  Y ~ N(λ, λ)

where:
  Mean = λ
  Variance = λ
```

---

### Continuity Correction

A **continuity correction** is needed because a **discrete distribution** is approximated with a **continuous distribution** (just as in the case of the Binomial to Normal approximation).

---

## Example: Poisson to Normal Approximation

**Problem:**  
The annual number of earthquakes registering at least 2.5 on the Richter Scale and having an epicenter within 40 miles of downtown Memphis follows a Poisson distribution with mean 22.5. What is the probability that at least 25 such earthquakes will strike next year?

**Given:**
- X ~ Poisson(λ = 22.5)
- λ = 22.5 > 20 ✓

**Use Normal approximation:**
```
X ~ Poisson(22.5) ≈ N(22.5, 22.5)
```

**Find:** Pr(X ≥ 25)

---

## Summary

### Key Formulas for Continuous Distributions

| Distribution | Notation | PDF | E(X) | V(X) |
|:---|:---|:---|:---|:---|
| **Uniform** | X ~ U(a,b) | 1/(b-a) for a≤x≤b | (b+a)/2 | (b-a)²/12 |
| **Exponential** | X ~ Exp(λ) | λe^(-λx) for x>0 | 1/λ | 1/λ² |
| **Normal** | X ~ N(μ,σ²) | (1/(σ√(2π)))e^(-(x-μ)²/(2σ²)) | μ | σ² |

---

### Standardization

```
If X ~ N(μ, σ²), then Z = (X - μ)/σ ~ N(0, 1)
```

---

### Approximations

**Binomial to Normal:**
```
X ~ Bin(n,p) ≈ N(np, np(1-p))  if np>5 and n(1-p)>5
```

**Poisson to Normal:**
```
X ~ Poisson(λ) ≈ N(λ, λ)  if λ>20
```

**Remember:** Use continuity correction for discrete to continuous approximations!

---

### Continuity Correction Quick Reference

```
Pr(X ≤ a) → Pr(Y < a + 0.5)
Pr(X ≥ a) → Pr(Y > a - 0.5)
Pr(X < a) → Pr(Y < a - 0.5)
Pr(X > a) → Pr(Y > a + 0.5)
Pr(X = a) → Pr(a - 0.5 < Y < a + 0.5)
```

---

## Thanks!

**Any questions?**

---

**End of Lecture 06**

**Total Pages:** 26  
**Completion Status:** ✅ Complete
