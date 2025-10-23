# Lecture 04 - Random Variables & Probability Distributions

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

- [Random Variables](#random-variables)
- [Discrete Random Variables](#discrete-random-variables)
- [Probability Distributions](#probability-distributions)
- [Expected Value & Variance](#expected-value--variance)
- [Covariance](#covariance)
- [Joint Probability Mass Function](#joint-probability-mass-function)
- [Discrete Probability Distributions](#discrete-probability-distributions)
  - [Bernoulli Distribution](#bernoulli-distribution)
  - [Binomial Distribution](#binomial-distribution)
  - [Poisson Distribution](#poisson-distribution)
- [Poisson Approximation](#poisson-approximation)

---

## Random Variables

### Definition

**Formal Definition:**  
A **random variable (r.v.)** is a function defined on a sample space (S), that associates a real number, X(ω) = x, with each outcome ω in S.

**Simple Definition:**  
A random variable is a **mapping between all the outcomes in the sample space** with a **set of real numbers**.

---

### Notation

Random variables are denoted by using **capital letters** (e.g., X, Y, Z).

---

### Diagram: Random Variable as a Function

```
     Sample Space (S)               Real Numbers (R)
    ┌──────────────┐                     
    │              │                     
    │      ω       │ ────X(ω)───→   x ───────────→
    │              │                     
    └──────────────┘                     
         (S)                            (R)
```

**Explanation:**
- Left: Abstract sample space (S) containing outcome ω
- Arrow: Function X(ω) mapping outcome to real number
- Right: Real number line (R) with value x

---

## Types of Random Variables

```
              Random Variables
                     │
        ┌────────────┴────────────┐
        │                         │
  Discrete Random          Continuous Random
    Variables                   Variables
```

---

## Discrete Random Variables

### Definition

A random variable is said to be **discrete**, if it can assume only **distinct values**.

**OR**

In other words, it can assume only **countable number of values**.

---

### Examples

#### Example 1: Coin Toss

**Experiment:**  
Toss a coin 5 times. Let X be the number of heads appeared.

**Random Variable:**
```
X = {0, 1, 2, 3, 4, 5}
```

---

#### Example 2: Rolling a Die

**Experiment:**  
Roll a die twice. Let X be the number of times 4 comes up.

**Random Variable:**
```
X = {0, 1, 2}
```

---

#### Example 3: Two Coins

**Experiment:**  
Suppose we toss two coins. Assume that all the outcomes are equally likely (fair coins). Let Y be the number of heads appeared.

**Random Variable:**
```
Y = {0, 1, 2}
```

---

## Probability Distributions

### Definition

**Formal Definition:**  
The set of all ordered pairs **(x, Pr(X = x))** of a discrete r.v. (X), is known as the **probability distribution**.

**Also Known As:**  
This is also known as the **probability mass function (p.m.f.)** and is denoted by **P_X(x)**.

**Simple Definition:**  
All the **possible values** of a discrete random variable with their **corresponding probability values** is known as probability distribution.

---

## Properties

### Notation
```
P_X(x) refers to P(X = x)
```

---

### Properties of Probability Distribution

**1. Non-Negative:**
```
P_X(x) ≥ 0  for all x
```

The probability distribution function is always **non-negative**.

---

**2. Sum to One:**
```
Σ(all x) P_X(x) = 1
```

---

**3. Cumulative Distribution Function (c.d.f.):**

The cumulative distribution function (c.d.f.) F of the random variable X is defined by:

```
F_X(x) = Pr(X ≤ x)
```

---

## Example: Two Coins

**Problem:**  
Suppose we toss two coins. Assume that all the outcomes are equally likely (fair coins). Let Y be the number of heads appeared.

**Probability Distribution:**

| Y | 0 | 1 | 2 |
|:---|:---|:---|:---|
| **Pr(Y = y)** | 1/4 | 2/4 | 1/4 |
| **F_Y(y) = Pr(Y ≤ y)** | 1/4 | 3/4 | 1 |

---

## Expected Value & Variance

### Expected Value (Mean)

**Definition:**  
This is same as **mean** of the random variable.

Let X be a discrete random variable with p.m.f. P_X(x). Then the **expected value** of X, denoted by **E(X)**, is defined by:

```
E(X) = Σ(all x) x × Pr(X = x)
```

---

### Variance

**Definition:**  
The **variance** of a random variable X is defined by:

```
V(X) = E[(X - E(X))²]
     = E(X²) - [E(X)]²
```

---

## Properties of Expected Value

Let X & Y be two random variables. Then:

**1. Constant:**
```
E(c) = c
```

**2. Function of X:**
```
E[g(X)] = Σ(all x) g(x) × Pr(X = x)
```

**3. Addition with Constant:**
```
E[g(X) + c] = E[g(X)] + c
```

**4. Multiplication by Constant:**
```
E[c × g(X)] = c × E[g(X)]
```

**5. Sum of Random Variables:**
```
E[X + Y] = E[X] + E[Y]
```

---

## Properties of Variance

Let X & Y be two random variables. Then:

**1. Variance of Constant:**
```
V(c) = 0
```

**2. Addition with Constant:**
```
V[g(X) + c] = V[g(X)]
```

**3. Multiplication by Constant:**
```
V[c × g(X)] = c² × V[g(X)]
```

**4. Sum of Random Variables:**
```
V[X + Y] = V[X] + V[Y] + 2Cov(X,Y)
```

**5. Difference of Random Variables:**
```
V[X - Y] = V[X] + V[Y] - 2Cov(X,Y)
```

**6. Independent Variables:**
```
If X & Y are independent, then Cov(X,Y) = 0
```

---

## Covariance

### Definition

**Covariance** is a measure of how the changes in one variable are associated with the changes in second variable. In other words, how **two random variables vary together**.

**Formula:**
```
Cov(X,Y) = E{[X - E(X)] × [Y - E(Y)]}
         = E(XY) - E(X) × E(Y)
```

---

## Examples

### Example 1: Two Coins (Expected Value & Variance)

**Problem:**  
Suppose we toss two coins. Assume that all the outcomes are equally likely (fair coins). Let Y be the number of heads appeared. Find E(Y) and Var(Y).

**Probability Distribution:**

| Y | 0 | 1 | 2 |
|:---|:---|:---|:---|
| **Pr(Y = y)** | 0.25 | 0.5 | 0.25 |

**Solution:**

**Expected Value:**
```
E(Y) = Σ(all y) y × Pr(Y = y)
     = (0 × 0.25) + (1 × 0.5) + (2 × 0.25)
     = 0 + 0.5 + 0.5
     = 1
```

**Expected Value of Y²:**
```
E(Y²) = Σ(all y) y² × Pr(Y = y)
      = (0² × 0.25) + (1² × 0.5) + (2² × 0.25)
      = (0 × 0.25) + (1 × 0.5) + (4 × 0.25)
      = 0 + 0.5 + 1
      = 1.5
```

**Variance:**
```
Var(Y) = E(Y²) - [E(Y)]²
       = 1.5 - 1²
       = 1.5 - 1
       = 0.5
```

---

### Example 2: Smallpox Vaccine

**Problem:**  
To find out the prevalence of smallpox vaccine use, a researcher inquired into the number of times a randomly selected 200 people aged 16 and over in an African village had been vaccinated. He obtained the following figures:
- Never: 16 people
- Once: 30
- Twice: 58
- Three times: 51
- Four times: 38
- Five times: 7

Assuming these proportions continue to hold exhaustively for the population of that village, what is the expected number of times those people in the village had been vaccinated, and what is the standard deviation?

---

### Example 3: Independent Random Variables

**Problem:**  
Let X and Y be two independent random variables. Suppose that we know:
```
Var(2X - Y) = 6
Var(X + 2Y) = 9
```

Find Var(X) and Var(Y).

---

## Joint Probability Mass Function

### Definition

If discrete random variables X and Y are defined on the same sample space (S), then their **Joint probability mass function (Joint p.m.f.)** is given by:

```
P(x, y) = P(X = x and Y = y)
```

---

### Conditions

**1. Range:**
```
0 ≤ P(x, y) ≤ 1
```

**2. Sum to One:**
```
Σ(all x) Σ(all y) P(x, y) = 1
```

---

### Example: Ballpoint Pens

**Problem:**  
Two ballpoint pens are selected at random from a box that contains:
- 3 blue pens
- 2 red pens
- 3 green pens

Let X is the number of blue pens selected, and Y is the number of red pens selected. Find the joint p.m.f. (P(x, y)) of X and Y.

---

## Discrete Probability Distributions

```
    Discrete Probability Distributions
                  │
    ┌─────────────┼─────────────┐
    │             │             │
Bernoulli     Binomial      Poisson
Distribution  Distribution  Distribution
```

---

## Conditions for Discrete Distributions

| **Bernoulli Distribution** | **Binomial Distribution** | **Poisson Distribution** |
|:---|:---|:---|
| Only two possible outcomes (Success & Failure) | For each trial, only two possible outcomes (Success & Failure) | For each trial, only two possible outcomes (Success & Failure) |
| Only one trial | No. of trials (n) are fixed | Trials (n) is large |
| | Probability of success (p) is constant for each & every trial | The occurrences are independent of each other |
| | Trials are independent | [Assume that the numbers of occurrences in disjoint intervals] |
| **Example:** Tossing a coin once | **Example:** Tossing a coin 10 (n) times | **Example:** Number of defects in a lot |

---

## Discrete Distributions Summary

### Bernoulli Distribution

**Random Variable:**  
X = Getting the success

**Notation:**
```
X ~ Bernoulli(p)
```

**Probability Mass Function (p.m.f.):**
```
P_X(x) = p^x × (1-p)^(1-x)
```

**Expected Value:**
```
E(X) = p
```

**Variance:**
```
V(X) = p(1-p)
```

---

### Binomial Distribution

**Random Variable:**  
X = The number of successes in n number of trials

**Notation:**
```
X ~ Bin(n, p)
```

**Probability Mass Function (p.m.f.):**
```
P_X(x) = C(n,x) × p^x × (1-p)^(n-x)  ;  x = 0, 1, 2, ..., n

where C(n,x) = n! / (x!(n-x)!)
```

**Expected Value:**
```
E(X) = np
```

**Variance:**
```
V(X) = np(1-p)
```

---

### Poisson Distribution

**Random Variable:**  
X = The number of occurrences for a given rate of occurrence (λ)

**Notation:**
```
X ~ Poisson(λ)
```

**Probability Mass Function (p.m.f.):**
```
P_X(x) = (e^(-λ) × λ^x) / x!  ;  x = 0, 1, 2, ...
```

**Expected Value:**
```
E(X) = λ
```

**Variance:**
```
V(X) = λ
```

---

## Binomial Distribution

### Key Points

- An **expansion** of the Bernoulli distribution
- Each trial has a **Bernoulli distribution**

---

### Examples

#### Example 1: Defective Screws

**Problem:**  
It is known that screws produced by a certain machine will be defective with probability 0.01 independently of each other. If we randomly pick 10 screws produced by this machine, what is the probability that:

1. Exactly six screws will be defective?
2. At most 3 screws will be defective?
3. At least 2 screws will be defective?
4. What is the expected number of defectives?
5. What is the variance of defectives?

---

#### Example 2: Seed Germination

**Problem:**  
Fifty seeds were planted and it is known that the probability of any seed germinating is 0.4. Assuming that the seeds have no other factors in germinating, find the following probabilities:

1. More than 12 seeds germinate.
2. More than 15 but fewer than 30 seeds germinate.

---

## Poisson Distribution

### Example: Typographical Errors

**Problem:**  
Suppose that, on average, in every two pages of a book there is one typographical error. What is the probability of at least one error on a certain page of the book?

---

## Poisson Approximation

### When to Use

If **X ~ Bin(n, p)**, then X can be approximated with a **Poisson distribution** with the rate parameter (λ) being equal to **np** if:
- **p is quite small** (usually p < 0.1)
- **n is large** (usually n ≥ 50)

**Approximation:**
```
X ~ Bin(n, p) ≈ Poisson(λ = np)

when p < 0.1 and n ≥ 50
```

---

### Example: Adverse Drug Reaction

**Problem:**  
If the probability that an individual suffers an adverse reaction from a particular drug is known to be 0.001, determine the probability that out of 2000 individuals:
- (a) Exactly three
- (b) More than two individuals will suffer an adverse reaction

**Given:**
- n = 2000
- p = 0.001
- λ = np = 2000 × 0.001 = 2

**Use Poisson approximation:**
```
X ~ Poisson(λ = 2)
```

---

## Summary

### Key Formulas

**Expected Value:**
```
E(X) = Σ(all x) x × P(X = x)
```

**Variance:**
```
V(X) = E(X²) - [E(X)]²
```

**Covariance:**
```
Cov(X,Y) = E(XY) - E(X) × E(Y)
```

---

### Discrete Distributions

| Distribution | Notation | p.m.f. | E(X) | V(X) |
|:---|:---|:---|:---|:---|
| **Bernoulli** | X ~ Bernoulli(p) | p^x(1-p)^(1-x) | p | p(1-p) |
| **Binomial** | X ~ Bin(n,p) | C(n,x)p^x(1-p)^(n-x) | np | np(1-p) |
| **Poisson** | X ~ Poisson(λ) | e^(-λ)λ^x / x! | λ | λ |

---

## Thanks!

**Any questions?**

---

**End of Lecture 04**

**Total Pages:** 28  
**Completion Status:** ✅ Complete
