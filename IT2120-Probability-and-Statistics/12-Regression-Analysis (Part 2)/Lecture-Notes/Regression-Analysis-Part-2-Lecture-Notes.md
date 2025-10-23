# Lecture 12 - Regression Analysis (Part 2)

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

- [Multiple Linear Regression (MLR)](#multiple-linear-regression-mlr)
- [Matrix Formulation](#matrix-formulation)
- [Significance of Regression Coefficients](#significance-of-regression-coefficients)
- [Coefficient of Determination](#coefficient-of-determination)
- [Adjusted R²](#adjusted-r²)
- [Assumptions for MLR](#assumptions-for-mlr)
- [Exercise: House Price Prediction](#exercise-house-price-prediction)

---

## Multiple Linear Regression (MLR)

### Introduction

In majority of **real-world applications**, the response of an experiment can be predicted **more precisely** not on the basis of a **single independent variable** but on a **collection of such variables**.

---

### General Model

Let's say response variable **Y** can be predicted based on **k** independent variables.

Then the equation to predict Y can be written as follows:

```
Y = β₀ + β₁x₁ + β₂x₂ + ... + βₖxₖ + ε
```

**Where:**
- **Y** = Response variable (Dependent variable)
- **x₁, x₂, ..., xₖ** = Independent variables (Predictors)
- **β₀** = Intercept
- **β₁, β₂, ..., βₖ** = Regression coefficients
- **ε** = Random error term

---

## Matrix Formulation

### Setup

Accordingly, let's assume **sample size is n**.

Then multiple linear regression model to predict response variable Y based on k independent variables can be written in **matrix form** as follows:

```
Y = Xβ + ε
```

---

### Matrix Definitions

**Response Vector (Y):**
```
Y = [y₁]    (n × 1 matrix)
    [y₂]
    [⋮ ]
    [yₙ]
```

---

**Design Matrix (X):**
```
X = [1  x₁₁  x₁₂  ⋯  x₁ₖ]    (n × p matrix)
    [1  x₂₁  x₂₂  ⋯  x₂ₖ]
    [⋮   ⋮    ⋮   ⋱   ⋮ ]
    [1  xₙ₁  xₙ₂  ⋯  xₙₖ]

where p = k + 1
```

**Note:** The first column of 1's represents the intercept term.

---

**Coefficient Vector (β):**
```
β = [β₀]    (p × 1 matrix)
    [β₁]
    [⋮ ]
    [βₖ]
```

---

**Error Vector (ε):**
```
ε = [ε₁]    (n × 1 matrix)
    [ε₂]
    [⋮ ]
    [εₙ]
```

---

### Matrix Dimensions

- **Y** is an **n × 1** matrix
- **X** is an **n × p** matrix
- **β** is a **p × 1** matrix
- **ε** is an **n × 1** matrix

Where **p ≡ k + 1** (k predictors plus 1 intercept)

---

## Significance of Regression Coefficients

### Importance

**All the regression coefficients need to be significant** in the fitted model.

---

### Testing Methods

**1. P-values for Individual Coefficients:**
- Significance of regression coefficients can be tested using **p-values**
- Each coefficient has its own p-value

**2. Overall Model Significance:**
- Significance of the fitted regression model can be tested using the **p-value for the fitted regression model**
- Uses F-statistic

---

### Hypothesis Test for Individual Coefficients

**For each coefficient βᵢ:**

```
H₀: βᵢ = 0  (coefficient is not significant)
H₁: βᵢ ≠ 0  (coefficient is significant)
```

**Decision Rule:**
```
If p-value < α: Reject H₀ (coefficient is significant)
If p-value ≥ α: Do not reject H₀ (coefficient is not significant)
```

**Common significance levels:** α = 0.05, 0.01, or 0.001

---

## Coefficient of Determination (R²)

### Purpose

This explains **how well the model fitted for data**.

---

### Definition

This refers to the **proportion of the total variation** that is explained by the **linear regression of y on x variables**.

In other words, **R²** is the **percentage of variation of Y explained by the X variables** in the fitted model.

---

### Formula

```
R² = (SSR / SST) × 100
```

**Where:**
- **SSR** = Sum of Squares for Regression
- **SST** = Total Sum of Squares

---

### Range and Interpretation

```
0% ≤ R² ≤ 100%
```

**Interpretation:**
- **R² = 0%:** Model explains **none** of the variation
- **R² = 50%:** Model explains **half** of the variation
- **R² = 100%:** Model explains **all** of the variation
- **Higher R²:** Better fit

---

## Limitation of R²

### The Problem

The **R² value always increases** when you add **more independent variables** to the model, **even if those variables are completely irrelevant**.

**This is a major weakness of R²** as it can lead to **overfitting** of the model.

---

## Adjusted R²

### Solution

To address this issue, **Adjusted R²** can be used.

Thus, **Adjusted R²** will be used to evaluate the **true explanatory power** of the fitted model.

---

### Formula

```
Adjusted R² = 1 - [(1 - R²)(n - 1) / (n - p)]
```

**Where:**
- n = number of observations
- p = number of parameters (including intercept)

---

### Key Difference

**R² vs Adjusted R²:**

| **R²** | **Adjusted R²** |
|:---|:---|
| Always increases with more variables | Can decrease if variable doesn't improve model |
| Doesn't penalize complexity | Penalizes adding irrelevant variables |
| Can lead to overfitting | Helps prevent overfitting |
| Used for description | Used for model comparison |

---

## Assumptions for MLR

### ✓ Check Your Assumptions

Multiple Linear Regression relies on several key assumptions:

---

### 1. Linearity

**The model is linear in parameters.**

The relationship between Y and each X can be represented by a linear combination.

---

### 2. No Multicollinearity

**No multicollinearity among predictor variables**

**All the predictor variables are independent.**

**What is Multicollinearity?**
- When independent variables are highly correlated with each other
- Makes it difficult to determine individual effects
- Can be checked using:
  - Correlation matrix
  - Variance Inflation Factor (VIF)

---

### 3. Normality of Errors

**The residuals (errors) are assumed to be normally distributed** with zero mean and constant variance (σ²).

**Mathematically:**
```
ε ~ N(0, σ²)
```

**Check using:**
- Normal Q-Q plot
- Histogram of residuals
- Shapiro-Wilk test

---

### 4. Homoscedasticity (Constant Variance)

**Variance of residuals is constant** across all levels of X.

**Check using:**
- Residual vs Fitted plot
- Scale-Location plot
- Breusch-Pagan test

---

### 5. Independence (No Autocorrelation)

**No Autocorrelation among residuals**

**The residuals (εᵢ) are independent.**

**Check using:**
- Durbin-Watson test
- ACF plot (Autocorrelation Function)

---

## Exercise: House Price Prediction

### Problem Statement

A real estate company wants to predict **house prices** based on:
- **Size:** House size
- **Bedrooms:** Number of bedrooms
- **Age:** Age of the house
- **Distance:** Distance to nearest city

They have considered **100 randomly selected houses**.

---

### R Output

**Model Call:**
```r
lm(formula = Price ~ Size + Bedrooms + Age + Distance, data = house_data)
```

---

### Residuals Summary

```
   Min      1Q    Median     3Q      Max
-65.908 -19.891  -0.155  19.479  67.584
```

---

### Coefficients Table

|             | **Estimate** | **Std. Error** | **t value** | **Pr(>\|t\|)** | **Signif.** |
|:------------|:-------------|:---------------|:------------|:---------------|:------------|
| (Intercept) | 52.346063    | 9.328443       | 5.611       | 1.78e-07       | ***         |
| Size        | 0.148019     | 0.008327       | 17.776      | < 2e-16        | ***         |
| Bedrooms    | 14.892659    | 2.671995       | 5.574       | 2.12e-07       | ***         |
| Age         | -0.795337    | 0.192962       | -4.122      | 7.75e-05       | ***         |
| Distance    | -2.501393    | 0.417094       | -5.997      | 2.71e-08       | ***         |

**Significance codes:**
```
0 '***'  0.001 '**'  0.01 '*'  0.05 '.'  0.1 ' ' 1
```

---

### Model Summary Statistics

```
Residual standard error: 28.63 on 95 degrees of freedom
Multiple R-squared:  0.8316
Adjusted R-squared: 0.8245
F-statistic: 117.3 on 4 and 95 DF
P-value: < 2.2e-16
```

---

## Exercise Questions

### Question 1

**Write the equation for the fitted regression model.**

---

#### Solution 1

From the coefficients table:

```
Price = 52.346063 + 0.148019(Size) + 14.892659(Bedrooms) 
        - 0.795337(Age) - 2.501393(Distance)
```

**Or in cleaner form:**

```
Price = 52.35 + 0.15(Size) + 14.89(Bedrooms) - 0.80(Age) - 2.50(Distance)
```

---

### Question 2

**Check the significance of the regression coefficients in the fitted model.**

---

#### Solution 2

**Examining p-values at α = 0.05:**

| **Coefficient** | **p-value** | **Significant?** | **Interpretation** |
|:---|:---|:---|:---|
| Intercept | 1.78e-07 | ✓ Yes (***) | Highly significant |
| Size | < 2e-16 | ✓ Yes (***) | Highly significant |
| Bedrooms | 2.12e-07 | ✓ Yes (***) | Highly significant |
| Age | 7.75e-05 | ✓ Yes (***) | Highly significant |
| Distance | 2.71e-08 | ✓ Yes (***) | Highly significant |

**Conclusion:**  
**All coefficients are highly significant** (p < 0.001), indicated by '***'.

---

**Interpretation of Each Coefficient:**

1. **Size (0.148):** For every 1 unit increase in size, price increases by $0.148 thousand (holding other variables constant)

2. **Bedrooms (14.893):** Each additional bedroom increases price by $14.89 thousand (holding other variables constant)

3. **Age (-0.795):** For every year older, price decreases by $0.80 thousand (holding other variables constant)

4. **Distance (-2.501):** For every 1 unit farther from city, price decreases by $2.50 thousand (holding other variables constant)

---

### Question 3

**What is the coefficient of determination? Interpret the value.**

---

#### Solution 3

**From the output:**
```
Multiple R-squared:  0.8316
Adjusted R-squared: 0.8245
```

---

**Interpretation:**

**R² = 0.8316 (83.16%)**
- The model explains **83.16%** of the variation in house prices
- This indicates a **strong fit**
- 16.84% of variation is unexplained (due to other factors or random variation)

**Adjusted R² = 0.8245 (82.45%)**
- Adjusted for the number of predictors
- Slightly lower than R², which is expected
- Still indicates a **very good fit**
- The small difference suggests predictors are genuinely useful (not overfitting)

---

### Question 4

**Is the fitted regression model significant? Justify your answer.**

---

#### Solution 4

**From the output:**
```
F-statistic: 117.3 on 4 and 95 DF
P-value: < 2.2e-16
```

---

**Analysis:**

**Hypothesis Test:**
```
H₀: β₁ = β₂ = β₃ = β₄ = 0  (model is not significant)
H₁: At least one βᵢ ≠ 0     (model is significant)
```

**Test Statistic:**
- F-statistic = 117.3
- Degrees of freedom: 4 (numerator), 95 (denominator)

**P-value:**
- p < 2.2e-16 (extremely small)
- Much less than any reasonable α (0.05, 0.01, etc.)

---

**Conclusion:**

**Yes, the fitted regression model is highly significant.**

**Justification:**
1. **Extremely small p-value** (< 2.2e-16) indicates we should **reject H₀**
2. **Large F-statistic** (117.3) provides strong evidence against H₀
3. This means **at least one** (actually, all four) predictor variables have a significant relationship with house price
4. The model as a whole is **statistically meaningful** and useful for prediction

---

## Summary

### Key Concepts - Multiple Linear Regression

```
MULTIPLE LINEAR REGRESSION:
│
├── Model Formulation
│   ├── General: Y = β₀ + β₁x₁ + ... + βₖxₖ + ε
│   └── Matrix: Y = Xβ + ε
│
├── Significance Testing
│   ├── Individual coefficients (t-tests, p-values)
│   └── Overall model (F-test, p-value)
│
├── Model Evaluation
│   ├── R² (always increases with more variables)
│   └── Adjusted R² (penalizes unnecessary variables)
│
└── Assumptions
    ├── Linearity in parameters
    ├── No multicollinearity
    ├── Normality of errors
    ├── Homoscedasticity (constant variance)
    └── Independence (no autocorrelation)
```

---

### Matrix Form Summary

**Model:**
```
Y = Xβ + ε

where:
  Y: n×1 (responses)
  X: n×p (predictors with intercept)
  β: p×1 (coefficients)
  ε: n×1 (errors)
  p = k+1 (k predictors + 1 intercept)
```

---

### Key Formulas

**R²:**
```
R² = (SSR / SST) × 100
```

**Adjusted R²:**
```
Adjusted R² = 1 - [(1 - R²)(n - 1) / (n - p)]
```

---

### Interpretation Guidelines

**For Coefficients:**
- **Positive βᵢ:** Y increases as xᵢ increases
- **Negative βᵢ:** Y decreases as xᵢ increases
- **|βᵢ| large:** Strong effect
- **βᵢ ≈ 0:** Weak/no effect

**For Model Fit:**
- **R² > 0.7:** Generally good fit
- **R² > 0.9:** Excellent fit
- **Adjusted R² ≈ R²:** Good model (no overfitting)

---

## Thanks!

**Any questions?**

---

**End of Lecture 12**

**Total Pages:** 14  
**Completion Status:** ✅ Complete
