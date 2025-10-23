# Lecture 13 - Time Series Analysis

**Module:** IT2120 - Probability and Statistics  
**Lecturer:** Ms. K. G. M. Lakmali  
**Department:** Information Technology  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-23  
**Current Time (UTC):** 16:03:11

---

## Table of Contents

- [Introduction](#introduction)
- [Discrete & Continuous Time Series](#discrete--continuous-time-series)
- [Objectives of Time Series Analysis](#objectives-of-time-series-analysis)
- [Components of Time Series](#components-of-time-series)
- [Time Series Analysis Methods](#time-series-analysis-methods)
- [Model Selection](#model-selection)
- [Additive Model](#additive-model)
- [Multiplicative Model](#multiplicative-model)

---

## Introduction

### Definition

A **time series** is a collection of observations made **sequentially in time**.

---

### Examples

**Common Time Series:**

- **Monthly inflation rates**
- **Daily temperature**
- **Annual sales of breads**
- **Annual birth rates**

---

## Discrete & Continuous Time Series

### Discrete Time Series

**Definition:**  
A time series is said to be **discrete** when observations are taken only at **specific time points**.

**Example:**
- Daily Temperature (measured once per day at specific time)

---

### Continuous Time Series

**Definition:**  
A time series is said to be **continuous** when observations are made **continuously in time**.

**Example:**
- Heart beat of a patient in every second (continuous monitoring)

---

### Important Note

In both cases, the **measured variable** can be either **discrete** or **continuous**.

**Examples:**
- Discrete variable: Number of customers (counts)
- Continuous variable: Temperature (measurements)

---

## Objectives of Time Series Analysis

### 1. Description

**Simple descriptive measures** of time series.

**Examples:**
- Trend
- Seasonality

---

### 2. Explanation

Use variation in **one time series** to **explain another**.

**Example:**  
Using advertising expenditure (one series) to explain sales (another series)

---

### 3. Forecasting (Most Important)

**Predict future values** based on past observations.

**Purpose:**
- Planning
- Decision making
- Resource allocation

---

### 4. Control

**Applicable in quality control**

**Purpose:**
- Monitor processes
- Detect anomalies
- Maintain standards

---

## Components of Time Series

A time series is made up of **one or more** of the following components:

---

### 1. Trend (T)

**Definition:**  
Measures the **average change** in the variable **per unit time**.

**Characteristics:**
- Long-term movement
- General direction (upward, downward, or stable)
- Smooth pattern over time

**Examples:**
- Population growth over decades
- GDP increase over years
- Inflation rate trend

---

### 2. Seasonality (S)

**Definition:**  
**Periodic variations** that recur with some degree of regularity **within a year or shorter**.

**Characteristics:**
- Regular pattern
- Repeats at fixed intervals
- Usually annual cycle

**Examples:**
- Ice cream sales (higher in summer)
- Heating costs (higher in winter)
- Retail sales (spikes during holidays)

---

### 3. Cyclical Variations (C)

**Definition:**  
**Recurring up and down movements** which are extended over **long period** (usually **2 years or more**).

**Characteristics:**
- Long-term oscillations
- Not fixed period
- Often tied to economic/business cycles

**Examples:**
- Economic recessions and expansions
- Real estate market cycles
- Stock market cycles

---

### 4. Irregular Variations (I)

**Definition:**  
**Random fluctuations**

**Characteristics:**
- Unpredictable
- No pattern
- Short-term variations
- Cannot be explained by other components

**Examples:**
- Natural disasters
- Sudden policy changes
- Unexpected events

---

## Time Series Analysis Methods

### Classical Methods

There are **two main classical methods** of analyzing time series data:

**1. Additive Model**

**2. Multiplicative Model**

---

### Other Classical Methods

**3. Curve Fitting**
- Fit a curve to the data

**4. Polynomial Models**
- Use polynomial equations

**5. Exponential Models**
- Use exponential functions

---

## Model Selection

### Decision Criteria

#### Additive Model

**Use when:**  
Magnitude of the **seasonal component is constant** over time.

**Visual Pattern:**
```
│     ╱╲    ╱╲    ╱╲
│    ╱  ╲  ╱  ╲  ╱  ╲
│   ╱    ╲╱    ╲╱    ╲
└────────────────────────
        Time

Constant amplitude of seasonal fluctuations
```

---

#### Multiplicative Model

**Use when:**  
Magnitude of the **seasonal component is increasing/decreasing** with time.

**Visual Pattern:**
```
│         ╱╲      
│       ╱╲  ╲╱╲   
│     ╱╲ ╲╱    ╲╱╲
│   ╱╲  ╲╱         
│  ╱  ╲╱           
└────────────────────────
        Time

Increasing amplitude of seasonal fluctuations
```

---

### When Model is Unclear

**Solution:**  
If the model **cannot be clearly identified**, **fit both models** and use **forecasts** to choose the **better model**.

**Comparison Methods:**
- Mean Absolute Error (MAE)
- Root Mean Squared Error (RMSE)
- Mean Absolute Percentage Error (MAPE)
- Forecast accuracy on validation set

---

## Additive Model

### Formula

```
Yₜ = T + S + C + I
```

**Where:**
- **Yₜ** = Observed value at time t
- **T** = Trend component
- **S** = Seasonal component
- **C** = Cyclical component
- **I** = Irregular component

---

### When to Use

Can be fitted **only when** magnitude of the **seasonal component is constant** over time.

---

### Characteristics

**Properties:**
- Components are **added** together
- Seasonal effect is **absolute** (constant units)
- Easier to interpret
- Suitable for stable seasonal patterns

**Example:**
```
If T = 100, S = +20 in summer, S = -20 in winter
Then: Summer Yₜ = 100 + 20 = 120
      Winter Yₜ = 100 - 20 = 80

Seasonal variation = ±20 units (constant)
```

---

## Multiplicative Model

### Formula

```
Yₜ = T × S × C × I
```

**Where:**
- **Yₜ** = Observed value at time t
- **T** = Trend component
- **S** = Seasonal component (as proportion)
- **C** = Cyclical component (as proportion)
- **I** = Irregular component (as proportion)

---

### When to Use

Can be fitted **only when** magnitude of the **seasonal component is increasing/decreasing** with time.

---

### Characteristics

**Properties:**
- Components are **multiplied** together
- Seasonal effect is **proportional** (percentage)
- More complex but more realistic for many series
- Suitable for growing/declining trends with seasonality

**Example:**
```
If T = 100, S = 1.2 in summer, S = 0.8 in winter
Then: Summer Yₜ = 100 × 1.2 = 120
      Winter Yₜ = 100 × 0.8 = 80

If later T = 200:
      Summer Yₜ = 200 × 1.2 = 240
      Winter Yₜ = 200 × 0.8 = 160

Seasonal variation grows with trend
```

---

## Comparison: Additive vs Multiplicative

### Visual Comparison

| **Aspect** | **Additive Model** | **Multiplicative Model** |
|:---|:---|:---|
| **Formula** | Yₜ = T + S + C + I | Yₜ = T × S × C × I |
| **Seasonal Pattern** | Constant amplitude | Varying amplitude |
| **Use Case** | Stable seasonal effect | Growing/shrinking seasonal effect |
| **Interpretation** | Absolute units | Proportional/percentage |
| **Example** | Temperature (°C) | Sales with growth |

---

### When Trend Increases

**Additive Model:**
```
Seasonal variation remains constant
│     ╱╲    ╱╲    ╱╲
│    ╱  ╲  ╱  ╲  ╱  ╲
│   ╱    ╲╱────╲╱────╲
│  ╱            ╱
│ ╱            ╱
└────────────────────────
Same peak-to-trough difference
```

**Multiplicative Model:**
```
Seasonal variation increases with trend
│            ╱╲      
│          ╱╲  ╲╱╲   
│        ╱╲ ╲╱    ╲╱╲
│      ╱╲  ╲╱         
│    ╱╲  ╲╱           
│   ╱  ╲╱             
└────────────────────────
Increasing peak-to-trough difference
```

---

## Summary

### Key Concepts

```
TIME SERIES ANALYSIS:
│
├── Definition
│   └── Sequential observations over time
│
├── Types
│   ├── Discrete (specific time points)
│   └── Continuous (continuous measurement)
│
├── Objectives
│   ├── Description
│   ├── Explanation
│   ├── Forecasting ★ (Most Important)
│   └── Control
│
├── Components
│   ├── Trend (T) - long-term direction
│   ├── Seasonality (S) - periodic patterns
│   ├── Cyclical (C) - long-term cycles
│   └── Irregular (I) - random variations
│
└── Classical Models
    ├── Additive: Yₜ = T + S + C + I
    │   └── Use when: Constant seasonal amplitude
    │
    └── Multiplicative: Yₜ = T × S × C × I
        └── Use when: Varying seasonal amplitude
```

---

### Model Selection Guide

```
START: Examine time series plot
   │
   ↓
Does seasonal amplitude change with level?
   │
   ├─→ NO → Use ADDITIVE Model
   │           Yₜ = T + S + C + I
   │
   └─→ YES → Use MULTIPLICATIVE Model
               Yₜ = T × S × C × I
   
If unclear → Fit BOTH models
           → Compare forecasts
           → Choose better one
```

---

### Key Formulas

**Additive Model:**
```
Yₜ = T + S + C + I
```

**Multiplicative Model:**
```
Yₜ = T × S × C × I
```

---

## Thank You!

**Good Luck for the Exam!**

---

**End of Lecture 13**

**Total Pages:** 12  
**Completion Status:** ✅ Complete
