# Lecture 11 - Regression Analysis

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

- [Introduction to Numerical Variables](#introduction-to-numerical-variables)
- [Paired vs Unpaired Variables](#paired-vs-unpaired-variables)
- [Dependent and Independent Variables](#dependent-and-independent-variables)
- [Methods to Identify Relationships](#methods-to-identify-relationships)
- [Scatter Plots](#scatter-plots)
- [Types of Relationships](#types-of-relationships)
- [Correlation](#correlation)
  - [Correlation Coefficient](#correlation-coefficient)
  - [Hypothesis Testing for Correlation](#hypothesis-testing-for-correlation)
- [Regression Analysis](#regression-analysis)
  - [Simple Linear Regression Model](#simple-linear-regression-model)
  - [Parameter Estimation](#parameter-estimation)
  - [ANOVA Table](#anova-table)
  - [Coefficient of Determination](#coefficient-of-determination)
  - [Regression Assumptions](#regression-assumptions)

---

## Introduction to Numerical Variables

### What are Numerical Variables?

Examples of **numerical variables** include:

- **Weight**
- **Height**
- **Temperature**
- etc.

---

## Paired vs Unpaired Variables

### Example: Comparison

| | **Paired Variables** | | **Unpaired Variables** | |
|:---|:---|:---|:---|:---|
| **ID_No** | **Age (Females)** | **Systolic BP** | **Age of Females** | **Systolic BP of Males** |
| 001 | 45 | 151 | 45 | 149 |
| 002 | 25 | 138 | 25 | 150 |
| 003 | 48 | 143 | 48 | 138 |
| 004 | 37 | 140 | 37 | 142 |
| 005 | 24 | 136 | 24 | 139 |

---

### Key Differences

**Paired Variables:**
- Data from the **same individual** or **matched pairs**
- Each row represents measurements on the **same subject**

**Unpaired Variables:**
- Data from **different individuals** or **independent groups**
- No natural pairing between observations

---

## Dependent and Independent Variables

### Visual Example: "How Light Affects Plant Growth"

```
        ☀️ Light (Independent Variable)
         │
         ↓
    🌱 Plant Growth (Dependent Variable)
```

---

### Definitions

**Dependent Variable:**
- The variable we **wish to explain**
- Also called: Response variable, Outcome variable
- Denoted by: **Y**

**Independent Variable:**
- The variable we **use to explain** the dependent variable
- Also called: Predictor variable, Explanatory variable
- Denoted by: **X**

---

## Methods to Identify Relationships

Basically, we will learn **three main methods**:

### 1. Scatter Plot (Graphical Method)
- Visual representation of relationship

### 2. Correlation
- Numerical measure of relationship strength

### 3. Regression Analysis
- Mathematical modeling of relationship

---

## Scatter Plots

### Example: Age vs Systolic Blood Pressure

**Data:**

| Age | Systolic BP |
|:---|:---|
| 63 | 151 |
| 70 | 149 |
| 74 | 164 |
| 82 | 157 |
| 60 | 144 |
| 44 | 130 |
| 80 | 157 |
| 71 | 160 |
| 71 | 121 |
| 41 | 125 |

---

### Scatter Plot Visualization

```
Systolic Blood Pressure

170│                  •
160│            •  •
150│        •
140│   •  •
130│ •
120│       •
   └─────────────────────────
    40  50  60  70  80  90
              Age
```

**Observation:** The scatter plot shows a general **positive trend** between age and systolic blood pressure.

---

## Types of Relationships

### Linear Relationships

#### 1. Positive Linear Relationship

```
Y│        ••••
 │      ••
 │    ••
 │  ••
 │••
 └────────────── X
```

**Characteristics:**
- As X increases, Y increases
- Points cluster around an upward-sloping line

---

#### 2. Negative Linear Relationship

```
Y│••
 │  ••
 │    ••
 │      ••
 │        ••••
 └────────────── X
```

**Characteristics:**
- As X increases, Y decreases
- Points cluster around a downward-sloping line

---

### Non-Linear Relationships

#### 1. Inverted U-Shape (Quadratic)

```
Y│    ••••
 │  •      •
 │ •        •
 │•          •
 └────────────── X
```

---

#### 2. Exponential Curve

```
Y│          ••
 │        ••
 │      ••
 │    ••
 │  ••
 └────────────── X
```

---

## Strength of Relationships

### Strong Relationships

```
Y│    ╱╱╱╱╱
 │   ╱••••╱
 │  ╱••••╱
 │ ╱••••╱
 │╱••••╱
 └────────────── X
```

**Characteristics:**
- Points cluster **tightly** around the line
- Narrow spread
- Strong predictive ability

---

### Weak Relationships

```
Y│  ╱        ╱
 │ ╱  •  •  ╱
 │╱ • • • • ╱
 │  •  •  •
 │ •  • •
 └────────────── X
```

**Characteristics:**
- Points are **scattered** around the line
- Wide spread
- Weak predictive ability

---

## No Relationship

### Scenario 1: Horizontal Pattern

```
Y│  • • •
 │• • • • •
 │  • • •
 │• • • • •
 │  • • •
 └────────────── X
```

---

### Scenario 2: Random Scatter

```
Y│  •    •
 │   • •   •
 │ •   •
 │   •   • •
 │ •   •
 └────────────── X
```

**Characteristics:**
- No clear pattern
- Cannot predict Y from X

---

## Correlation

### Definition

**Correlation** measures the **strength** and **direction** of the **linear relationship** between two numerical variables.

---

### Properties

- Correlation is a value **between -1 and +1**
- Denoted by:
  - **ρ** (rho) for **population** correlation
  - **r** for **sample** correlation

**Also Known As:**  
Pearson product-moment correlation coefficient

---

## Correlation Coefficient

### Sample Correlation Coefficient (r)

**Formula:**

```
r = [n(Σxy) - (Σx)(Σy)] / √{[n(Σx²) - (Σx)²][n(Σy²) - (Σy)²]}
```

**Where:**
- n = number of observations
- x = values of independent variable
- y = values of dependent variable

---

## Interpretation of Correlation Values

### r = -1

```
Perfect Negative Linear Relationship
```

- All points lie **exactly** on a downward-sloping line

---

### r = 0

```
No Linear Relationship
```

- No linear association between variables
- **Note:** May still have non-linear relationship

---

### r = +1

```
Perfect Positive Linear Relationship
```

- All points lie **exactly** on an upward-sloping line

---

### General Guidelines

| **r value** | **Interpretation** |
|:---|:---|
| **-1.0 to -0.7** | Strong negative relationship |
| **-0.7 to -0.3** | Moderate negative relationship |
| **-0.3 to 0.0** | Weak negative relationship |
| **0.0** | No linear relationship |
| **0.0 to 0.3** | Weak positive relationship |
| **0.3 to 0.7** | Moderate positive relationship |
| **0.7 to 1.0** | Strong positive relationship |

---

## Exercise: Age and Blood Pressure

### Problem

In the pursuit of finding whether the age is related with systolic blood pressure of females, the following data were observed from 10 randomly selected females between ages 40 and 82.

**Data:**

| Age | Systolic BP |
|:---|:---|
| 63 | 151 |
| 70 | 149 |
| 74 | 164 |
| 82 | 157 |
| 60 | 144 |
| 44 | 130 |
| 80 | 157 |
| 71 | 160 |
| 71 | 121 |
| 41 | 125 |

**Task:** Calculate the correlation coefficient.

---

## Hypothesis Testing for Correlation

### Test for Zero Correlation

A hypothesis test can be carried out to find whether the **population correlation is zero**.

**Hypotheses:**
```
H₀: ρ = 0
H₁: ρ ≠ 0
```

---

### Test Statistic

Under **H₀**:

```
T = (r√(n-2)) / √(1-r²) ~ t_{n-2}
```

**Where:**
- r = sample correlation coefficient
- n = sample size
- t_{n-2} = t-distribution with (n-2) degrees of freedom

---

### Decision Rule

**Reject H₀** if the calculated t-value falls in the rejection region at the chosen significance level.

**Interpretation:**
- If we reject H₀, there is **significant linear relationship**
- If we fail to reject H₀, there is **no significant linear relationship**

---

## Regression Analysis

### Definition

The process of finding a **mathematical equation** that **best fits the noisy data** is known as **regression analysis**.

---

### Scope of This Chapter

- **Simple Linear Regression model**
- **Multiple Linear Regression model**

---

### Primary Usage

The **primary usage** of a regression model is **prediction**.

---

## Simple Linear Regression Model

### Population Model

```
Y = α + βX + ε
```

**Where:**
- **Y** = Dependent variable (Response)
- **X** = Independent variable (Predictor)
- **α** = y-intercept
- **β** = Regression coefficient (Slope)
- **ε** = Random error

---

### Important Notes

- This model is defined for **population data**
- Should be **careful when making predictions outside the observed range** (extrapolation)

---

## Parameter Estimation

### Challenge

**α** and **β** in the regression model are **population characteristics** which **cannot be measured straightaway**.

**Solution:**  
They should be **estimated** by using **sample data**.

---

### Estimated Regression Model

```
ŷ = â + b̂X
```

**Where:**
- **ŷ** = Predicted value of Y
- **â** = Estimate of α (y-intercept)
- **b̂** = Estimate of β (slope)

---

### Estimation Formulas

**Slope (b̂):**

```
b̂ = [Σxᵢyᵢ - nx̄ȳ] / [Σxᵢ² - nx̄²]
```

**Intercept (â):**

```
â = ȳ - b̂x̄
```

**Where:**
- x̄ = mean of X
- ȳ = mean of Y
- n = sample size

---

## Significance of Regression Coefficient

### Purpose

A hypothesis test can be carried out to find whether the true slope (β) is actually zero.

**This is the same as testing whether the regression model is significant.**

---

### Method

An **ANOVA table** is used to evaluate the test statistic for this test.

---

## ANOVA Table

### Structure

| **Model** | **Df (Degrees of Freedom)** | **Sum of Squares (SS)** | **Mean Sum of Square (MSS)** | **F Statistic** | **P Value** |
|:---|:---|:---|:---|:---|:---|
| **Regression** | 1 | SSR | MSSR | F Statistic | |
| **Error / Residual** | n-2 | SSE | MSSE | | |
| **Total** | n-1 | SST | | | |

---

### Formulas

**Sum of Squares:**

```
SSR = Σ(ŷᵢ - ȳ)²     (Sum of Squares for Regression)
SSE = Σ(yᵢ - ŷᵢ)²     (Sum of Squares for Error)
SST = Σ(yᵢ - ȳ)²     (Total Sum of Squares)
```

**Relationship:**
```
SST = SSR + SSE
```

---

**Mean Sum of Squares:**

```
MSSR = SSR / 1
MSSE = SSE / (n-2)
```

---

**F Statistic:**

```
F Statistic = MSSR / MSSE
```

---

**P Value:**

```
P value = Pr(F > F_cal)
```

---

### Interpretation

**If P-value < α:**
- Reject H₀
- The regression model is **significant**
- β is **significantly different from zero**

**If P-value ≥ α:**
- Do not reject H₀
- The regression model is **not significant**
- β is **not significantly different from zero**

---

## Coefficient of Determination (R²)

### Definition

One way to measure the **strength of the relationship** between the response variable (y) and the predictor variable (x) is to calculate the **coefficient of determination**.

---

### Interpretation

This refers to the **proportion of the total variation** that is explained by the **linear regression** of y on x.

In other words, **R²** is the **percentage of variation of Y explained by the X variable** in the fitted model.

---

### Formula

```
R² = (SSR / SST) × 100
```

**Where:**
- SSR = Sum of Squares for Regression
- SST = Total Sum of Squares

---

### Range

```
0% ≤ R² ≤ 100%
```

**Interpretation:**
- **R² = 0%:** X explains **none** of the variation in Y
- **R² = 100%:** X explains **all** of the variation in Y
- **Higher R²:** Better fit of the model

---

## Regression Assumptions

### ✓ Check Your Assumptions

The validity of regression analysis depends on the following assumptions:

---

### 1. Linearity

**The model is linear in parameters**

The relationship between X and Y can be adequately represented by a straight line.

---

### 2. Zero Mean Error

```
E(εᵢ) = 0
```

**Mean of residuals is zero**

---

### 3. Constant Variance (Homoscedasticity)

```
V(εᵢ) = σ²
```

**Variance of residuals is constant**

The spread of residuals should be approximately the same across all values of X.

---

### 4. Normality

**The residuals (εᵢ) are normally distributed**

Check using:
- Normal Q-Q plot
- Histogram of residuals
- Normality tests (e.g., Shapiro-Wilk)

---

### 5. Independence

**The residuals (εᵢ) are independent**

No autocorrelation between errors.

---

## Important Reminder

### 📝 Don't Forget...

> **Remember that, neither correlation nor regression imply any causation between variables.**

---

### Explanation

**Correlation ≠ Causation**

Just because two variables are correlated or have a regression relationship does **not** mean that one **causes** the other.

**Possible explanations for correlation:**
1. X causes Y
2. Y causes X
3. A third variable causes both X and Y
4. Pure coincidence

---

## Summary

### Key Concepts

```
REGRESSION ANALYSIS:
│
├── Correlation
│   ├── Measures strength and direction
│   ├── r ranges from -1 to +1
│   └── Hypothesis test: H₀: ρ = 0
│
├── Simple Linear Regression
│   ├── Model: Y = α + βX + ε
│   ├── Estimated: ŷ = â + b̂X
│   ├── Parameter estimation formulas
│   └── Prediction tool
│
├── Model Evaluation
│   ├── ANOVA Table
│   ├── F-test for significance
│   └── R² (Coefficient of Determination)
│
└── Assumptions
    ├── Linearity
    ├── E(ε) = 0
    ├── Constant variance
    ├── Normality
    └── Independence
```

---

### Key Formulas

**Correlation:**
```
r = [n(Σxy) - (Σx)(Σy)] / √{[n(Σx²) - (Σx)²][n(Σy²) - (Σy)²]}
```

**Regression Coefficients:**
```
b̂ = [Σxᵢyᵢ - nx̄ȳ] / [Σxᵢ² - nx̄²]
â = ȳ - b̂x̄
```

**Coefficient of Determination:**
```
R² = (SSR / SST) × 100
```

**F Statistic:**
```
F = MSSR / MSSE
```

---

## Thanks!

**Any questions?**

---

**End of Lecture 11**

**Total Pages:** 30  
**Completion Status:** ✅ Complete
