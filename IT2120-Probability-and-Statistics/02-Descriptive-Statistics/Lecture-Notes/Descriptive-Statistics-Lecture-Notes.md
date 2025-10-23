# Lecture 02 - Descriptive Statistics

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

- [Introduction to Descriptive Statistics](#introduction-to-descriptive-statistics)
- [Graphical Methods](#graphical-methods)
- [Histograms](#histograms)
- [Box Plots](#box-plots)
- [Numerical Methods](#numerical-methods)
- [Measures of Central Tendency](#measures-of-central-tendency)
- [Measures of Dispersion](#measures-of-dispersion)
- [Measures of Relative Dispersion](#measures-of-relative-dispersion)

---

## Introduction to Descriptive Statistics

### What is Descriptive Statistics?

- This is also known as **preliminary analysis**
- This will give you an idea about the **behavior of data**
- It describes how **each of the variables** in your analysis behave

---

### Two Methods of Analysis

There are two methods that you can use under exploratory analysis:

1. **Graphical Methods**
2. **Numerical Methods**

**Note:** Each method depends on the **type of data** available.

---

## Graphical Methods

### Overview

- You can use graphical methods to analyze both **categorical** and **numerical** variables
- **Type of graph** you use depends on the **type of data** available

---

### Graphical Methods by Variable Type

```
                    Variable Type
                          │
        ┌─────────────────┴─────────────────┐
        │                                   │
  One Categorical                    One Numerical
     Variable                           Variable
        │                                   │
   ┌────┼────┐                         ┌────┼────┐
   │    │    │                         │    │    │
  Bar  Pie  One-way                Histogram Box Stem-and-
Charts Charts Frequency                     Plot  Leaf
              Tables                              Plot
```

---

### For One Categorical Variable

1. **Bar Charts**
2. **Pie Charts**
3. **One-way Frequency Tables**

---

### For One Numerical Variable

1. **Histograms**
2. **Box Plots**
3. **Stem and Leaf Plots**

---

## Histograms

### Definition and Purpose

A histogram is a graphical representation of the distribution of numerical data.

---

### Steps to Create a Histogram

#### Step 1: Divide Data into Classes

- First, divide the given data set into suitable number of **classes (intervals/categories)** which have the **same width**

#### Step 2: Obtain Frequency Distribution

- Classes with their **frequencies (counts)** is called a **frequency distribution**

#### Step 3: Set Up Axes

- **Y-axis:** Frequency, relative frequency, or percentages
- **X-axis:** Classes of the variable

#### Step 4: Draw Bars

- In histograms, each bar will represent each class
- **Length of the bar** will be proportional to the **frequency** of respective class
- In histograms, bars are drawn **adjacent** with each other (**No gaps** between two bars)

---

### Example: Creating a Histogram

**Dataset:**

| 78 | 74 | 82 | 66 | 91 | 71 | 64 | 88 | 55 | 80 |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| 51 | 74 | 82 | 75 | 16 | 78 | 84 | 79 | 71 | 83 |

---

#### Step 1: Calculate Range

```
Range = Max - Min
      = 91 - 16
      = 75
```

---

#### Step 2: Determine Class Width

- Divide the range into required number of classes
- **Most of the time:** suitable value for number of classes will be between **5-10**

**Example (using 8 classes):**
```
Class Width = 75 / 8
            = 9.375
            ≈ 10
```

**Note:** Classes can be selected by fixing the class width as well.

---

#### Step 3: Create Frequency Distribution

| Class | Frequency |
|:---|:---|
| 14.5-24.5 | 1 |
| 24.5-34.5 | 0 |
| 34.5-44.5 | 0 |
| 44.5-54.5 | 1 |
| 54.5-64.5 | 2 |
| 64.5-74.5 | 5 |
| 74.5-84.5 | 9 |
| 84.5-94.5 | 2 |

---

#### Step 4: Histogram Visualization

```
Histogram of Marks

Frequency
    9│         ███
     │         ███
     │         ███
    5│     ███ ███
     │     ███ ███
    2│ ███ ███ ███ ███
    1│ ███ ███ ███ ███ ███
    0│ ███ ███ ███ ███ ███ ███ ███ ███
     └─────────────────────────────────── Marks
      20  30  40  50  60  70  80  90
```

---

## Box Plots

### What is a Box Plot?

A box plot (or box-and-whisker plot) is a graphical representation that displays the distribution of data based on a five-number summary.

---

### Requirements for Box Plot

To draw a box plot, it is necessary to identify:

1. **Five Number Summary**
2. **Outliers** for the variable

---

### Five Number Summary

1. **Minimum**
2. **Q₁** (First Quartile)
3. **Q₂** (Median - Second Quartile)
4. **Q₃** (Third Quartile)
5. **Maximum**

**Method:** Use **Linear Interpolation** to find the quartiles

---

## Outliers

### Definition

Before drawing the box plot, we should identify the **potential outliers**.

---

### Identifying Outliers

A limit should be defined for the accepted range of values:

```
Upper Bound = Q₃ + 1.5 × IQR
Lower Bound = Q₁ - 1.5 × IQR

where:
  IQR = Interquartile Range = Q₃ - Q₁
```

**Outlier Rule:**  
Values **outside this range** are considered as outliers and marked with **asterisks (*)**.

---

### Components of a Box Plot

- **Q₁, Median, Q₃** are marked as a **box**
- **Minimum and maximum values** which are **not outliers**, will be **end points** for **whiskers** of the box plot

---

### Example: Box Plot

**Dataset:**

| 78 | 74 | 82 | 66 | 91 | 71 | 64 | 88 | 55 | 80 |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| 51 | 74 | 82 | 75 | 16 | 78 | 84 | 79 | 71 | 83 |

---

#### Box Plot Visualization

```
Marks
  
  *  ← Outlier (16)
  
  ├───┤
  │   │
  │   │  ← Upper Whisker (91)
  ┌───┐
  │   │
  │───│  ← Q₃ (≈82)
  │   │
  │───│  ← Median/Q₂ (≈74)
  │   │
  │───│  ← Q₁ (≈68)
  └───┘
  │   │
  │   │  ← Lower Whisker (51)
  ├───┤
  
  15  20  40  60  80
```

---

## Numerical Methods

### Overview

- Numerical methods are applied **only for numerical variables**
- These methods **summarize the variable into a single value**

---

### Four Main Sections

Numerical methods have measurements under four main sections:

1. **Measures of Central Tendency**
2. **Measures of Dispersion**
3. **Measures of Skewness**
4. **Measures of Kurtosis**

---

## Measures of Central Tendency

### Purpose

- This gives an idea about the **location of the data** as a whole

---

### Three Main Measurements

1. **Mean**
2. **Median**
3. **Mode**

---

### Other Location Measurements

- **Percentiles**
- **Deciles**
- **Quartiles**

---

## Mean

### Types of Means

There are different types of means:

- **Arithmetic mean**
- **Geometric mean**
- **Harmonic mean**

**Note:** Only the **arithmetic mean** is discussed in this course (referred to as "the mean").

---

### Population Mean (μ)

**Formula:**

For a population with **N** elements (x₁, x₂, ..., xₙ):

```
μ = Σ(i=1 to N) xᵢ / N
```

where:
- μ = population mean
- N = population size
- xᵢ = individual values

---

### Sample Mean (x̄)

**Formula:**

For a sample with **n** elements (x₁, x₂, ..., xₙ):

```
x̄ = Σ(i=1 to n) xᵢ / n
```

where:
- x̄ = sample mean
- n = sample size
- xᵢ = individual values

---

### Important Note

**In a question, if not specified, consider the data are coming from a sample.**

---

### Examples

#### Example 1.2 (revisited)

**Problem:**  
Find the mean "marks for FCS" of each student at SLIIT Metro.

**Dataset:**

| 78 | 74 | 82 | 66 | 91 | 71 | 64 | 88 | 55 | 80 |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| 51 | 74 | 82 | 75 | 16 | 78 | 84 | 79 | 71 | 83 |

---

#### Example 1.3 (revisited)

**Problem:**  
A load of aluminum sheets were purchased to construct a temporary shed. Twenty such sheets were examined for surface flaws. Find the mean number of flaws in a sheet.

**Frequency Distribution:**

| Number of flaws | Frequency |
|:---|:---|
| 0 | 4 |
| 1 | 3 |
| 2 | 5 |
| 3 | 2 |
| 4 | 4 |
| 5 | 1 |
| 6 | 1 |

---

## Mode

### Definition

- A value with the **highest frequency** in a data set

---

### Properties

- There can be **multiple modes** in a data set
- If **all the data values are different**, the data set has **no mode**

---

## Measures of Dispersion

### Purpose

This gives an idea about the **dispersion/spread** of the data as a whole.

---

### Three Main Measurements

1. **Range** (Max - Min)
2. **IQR** (Q₃ - Q₁)
3. **Variance & Standard Deviation** (√Variance)

---

### Characteristics

- **Range** is more suitable for **small data sets**
- **Range** and **Variance** are highly **sensitive to outliers**
- **IQR** is **not sensitive to outliers**

---

## Variance & Standard Deviation

### What is Variance?

- A measurement of **dispersion/spread** of the data
- Describes how the data has **dispersed around its mean**
- **Sensitive to outliers** (Not robust for outliers)

---

### Population Variance (σ²)

**Formula:**

For a population with **N** elements (x₁, x₂, ..., xₙ):

```
σ² = Σ(i=1 to N) (xᵢ - μ)² / N

where:
  σ² = population variance
  μ  = population mean
  N  = population size
```

---

### Sample Variance (s²)

**Formula:**

For a sample with **n** elements (x₁, x₂, ..., xₙ):

```
s² = Σ(i=1 to n) (xᵢ - x̄)² / (n-1)

where:
  s² = sample variance
  x̄  = sample mean
  n  = sample size
```

**Important:** Note the divisor is **(n-1)**, not **n**.

---

### Important Note

**In a question, if not specified, consider the data are coming from a sample.**

---

### Standard Deviation (SD)

**Definition:**  
Standard deviation (SD) is the **square root of the variance**.

**Formulas:**

```
Population SD:  σ = √σ²
Sample SD:      s = √s²
```

---

## Measures of Relative Dispersion

### Coefficient of Variation (CV)

**Definition:**  
The **Coefficient of Variation (CV)** is the most popular relative measure of dispersion that indicates the magnitude of variation relative to the magnitude of the mean.

**Formula:**

```
CV = (sd / x̄) × 100

where:
  CV = Coefficient of Variation (%)
  sd = standard deviation
  x̄  = mean
```

**Purpose:**  
Allows comparison of variability between datasets with different units or scales.

---

## Comprehensive Example

**Problem:**

A sample of 25 plastic hinges was subjected to repeated stress cycles until failure. The number of cycles which each survived is given below:

**Dataset:**
```
72, 35, 63, 67, 87, 71, 64, 47, 60, 81, 39, 52, 57, 74, 43,
55, 37, 83, 48, 91, 53, 44, 94, 65, 75
```

---

### Tasks

**1.** Find five number summary.

**2.** Find mode, mean, variance & sd.

**3.** Calculate relative dispersion for the data set.

**4.** Draw the box plot.

**5.** Comment on the distribution of data.

---

## Summary

### Key Concepts Covered

```
DESCRIPTIVE STATISTICS:
│
├── Graphical Methods
│   ├── For Categorical Variables
│   │   ├── Bar Charts
│   │   ├── Pie Charts
│   │   └── Frequency Tables
│   │
│   └── For Numerical Variables
│       ├── Histograms
│       ├── Box Plots
│       └── Stem-and-Leaf Plots
│
└── Numerical Methods
    ├── Measures of Central Tendency
    │   ├── Mean (x̄, μ)
    │   ├── Median (Q₂)
    │   └── Mode
    │
    ├── Measures of Dispersion
    │   ├── Range
    │   ├── IQR (Q₃ - Q₁)
    │   ├── Variance (s², σ²)
    │   └── Standard Deviation (s, σ)
    │
    └── Measures of Relative Dispersion
        └── Coefficient of Variation (CV)
```

---

## Important Formulas Summary

### Central Tendency

```
Sample Mean:        x̄ = Σxᵢ / n
Population Mean:    μ = Σxᵢ / N
```

### Dispersion

```
Sample Variance:    s² = Σ(xᵢ - x̄)² / (n-1)
Population Variance: σ² = Σ(xᵢ - μ)² / N

Standard Deviation:  s = √s²  or  σ = √σ²
```

### Relative Dispersion

```
Coefficient of Variation: CV = (s/x̄) × 100
```

### Outlier Detection

```
Upper Bound = Q₃ + 1.5 × IQR
Lower Bound = Q₁ - 1.5 × IQR
IQR = Q₃ - Q₁
```

---

## Thanks!

**Any questions?**

---

**End of Lecture 02**

**Total Pages:** 25  
**Completion Status:** ✅ Complete
