# Lecture 01 - Introduction to Statistics

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

- [Applications of Statistics](#applications-of-statistics)
- [Definition of Statistics](#definition-of-statistics)
- [Terminologies](#terminologies)
- [Types of Variables](#types-of-variables)
- [Measurement Scales](#measurement-scales)
- [Areas of Statistics](#areas-of-statistics)
- [Introduction to R Software](#introduction-to-r-software)

---

## Applications of Statistics

Statistics can be applied in any field. Following are some examples for such applications:

- **Engineering and Sciences**
- **Medical Sciences**
- **Education**
- **Business Analytics**
- **Social Sciences**
- **Machine Learning**
- **Quality Control**
- **Actuarial Sciences**

---

## Definition of Statistics

### Oxford: A Dictionary of Statistics

**Statistics** is the study of the collection, analysis, interpretation, presentation, and organization of data.

### Head First Statistics

**Statistics** are numbers that summarize raw facts and figures in some meaningful way.

---

### Key Concepts

- **Statistics is the study of uncertainty.**
- We need statistics to **identify the variability in data.**

---

## Terminologies

### Population

**Definition:**  
A collection of set of individuals or objects where researcher is interested about drawing inferences.

**Characteristics:**
- Population can be **finite** or **infinite**
- If you are going to collect data from **all the individuals** in the population, then it is known as a **census**

---

### Sample

**Definition:**  
A **subset of the population**.

**Characteristics:**
- If you are going to collect data from **a part of the population** (sample), then it is known as a **sample survey**

**Diagram:**
```
┌────────────────────────┐
│                        │
│      Population        │
│      (Large Circle)    │
│                        │
└──────────┬─────────────┘
           │
           ↓
    ┌──────────────┐
    │              │
    │   Sample     │
    │ (Small Circle)│
    │              │
    └──────────────┘
```

---

### Variable

**Definition:**  
A **characteristic/property** of each individual in the population or a sample.

**Examples:**
- Age
- Gender
- Temperature

**Notation:**  
We usually use **upper case letters (capital letters)** to denote variables.

---

### Data (Singular)

**Definition:**  
The **value of the variable** associated with one element of a population or sample.

**Characteristics:**
- This value may be a **number**, a **word**, or a **symbol**

---

### Parameter

**Definition:**  
A **summary characteristic** about the individuals in the **population**.

**Characteristics:**
- Parameter is always related with the **population**

**Examples:**
- Population mean (μ)
- Population variance (σ²)
- Population proportion (P)

---

### Statistic

**Definition:**  
A **summary characteristic** about the individuals in the **sample**.

**Characteristics:**
- Statistic is always related with the **sample**

**Examples:**
- Sample mean (x̄)
- Sample variance (S²)
- Sample proportion (p)

---

### Experiment

**Definition:**  
An **experiment** is a planned activity whose results yield a set of data.

---

## Example

**Scenario:**  
A researcher is interested in finding the average weight of a first year student in SLIIT. He collected data from all first year students in computing faculty.

| Component | Answer |
|:---|:---|
| **Population** | All the first year students in SLIIT |
| **Sample** | All first year students in computing faculty |
| **Variable** | Weight |
| **Summary Characteristic** | Average Weight |
| **Type** | Statistic |
| **Type of Survey** | Sample survey |

---

## Types of Variables

### Overview

```
                    Type of Variables
                            │
        ┌───────────────────┴───────────────────┐
        │                                       │
   Qualitative Variables              Quantitative Variables
        │                                       │
   ┌────┴────┐                            ┌────┴────┐
   │         │                            │         │
Nominal  Ordinal                    Continuous  Discrete
Variables Variables                 Variables   Variables
```

---

### Qualitative/Attribute/Categorical Variables

**Definition:**  
A variable that **categorizes and describes** an element.

**Examples:**
- Hair color
- Gender
- Marital status
- Highest education qualification

---

### Quantitative/Numerical Variables

**Definition:**  
A variable that **quantifies** an element.

**Examples:**
- Marks for statistics
- Age
- Temperature
- Time taken to travel to SLIIT from home

---

## Qualitative Variables (Detailed)

### Nominal Variables

**Definition:**  
Categories are **not naturally ordered**.

**Examples:**
- Gender
- Hair Color
- Marital Status

---

### Ordinal Variables

**Definition:**  
Categories are **naturally ordered**.

**Examples:**
- Satisfaction Rating
- Pain Severity
- Highest education qualification

---

## Quantitative Variables (Detailed)

### Discrete Variables

**Definition:**  
Distance between two values exists.

**Examples:**
- Age in years
- Number of children in a family
- Number of accidents in a junction within an hour

---

### Continuous Variables

**Definition:**  
This will contain **any value within a given range**.

**Examples:**
- Temperature
- Heart beat of a patient

---

## Measurement Scales

### Hierarchy of Measurement Scales

```
┌────────────────────────────────────────────┐
│  RATIO DATA                                │
│  Highest Level                             │
│  Strongest forms of measurement            │
│  - Differences between measurements        │
│  - True zero exists                        │
└────────────────────────────────────────────┘
                    ↑
┌────────────────────────────────────────────┐
│  INTERVAL DATA                             │
│  Higher Level                              │
│  - Differences between measurements        │
│  - No true zero                            │
└────────────────────────────────────────────┘
                    ↑
┌────────────────────────────────────────────┐
│  ORDINAL DATA                              │
│  - Ordered Categories                      │
│  - Rankings, order, or scaling             │
└────────────────────────────────────────────┘
                    ↑
┌────────────────────────────────────────────┐
│  NOMINAL DATA                              │
│  Lowest Level                              │
│  Weakest form of measurement               │
│  - Categories (no ordering or direction)   │
└────────────────────────────────────────────┘
```

---

## Interval Scale vs. Ratio Scale

| **Interval Scale** | **Ratio Scale** |
|:---|:---|
| In this scale, variables can be **added and subtracted**. But **ratio and multiplication is not possible**. | Including **ratio and multiplication** of variables it has all characteristics of an interval scale. |
| Can calculate **mean, median and mode**.<br>Difference between variables can be evaluated. | Can calculate **mean, median and mode**.<br>Difference between variables can be evaluated. |
| **Does not have a true zero point**.<br>(Eg: Temperature can be below zero degree Celsius and negative)<br>Can consider both **positive & negative numbers** | **True zero point exist**.<br>(Eg: Weight cannot be zero or below zero)<br>Can consider only **positive numbers** |
| **Examples:**<br>- Temperature in Celsius<br>- Temperature in Fahrenheit<br>- pH Value | **Examples:**<br>- Height<br>- Weight<br>- Temperature in Kelvin<br>- Number of sales<br>- Income of an individual<br>- Heart Rate |

---

## Areas of Statistics

### Overview

```
                      Statistics
                          │
        ┌─────────────────┴─────────────────┐
        │                                   │
  Descriptive Statistics          Inferential Statistics
                                            │
                                  ┌─────────┴─────────┐
                                  │                   │
                           Hypothesis Testing   Parameter Estimation
```

---

### Descriptive Statistics

**Also known as:**
- Preliminary analysis
- Explanatory analysis

**Purpose:**  
This will give you a **rough idea** about the behavior of data. It describes how each of the variables behave.

**Two Methods:**
1. **Graphical Methods**
2. **Numerical Methods**

---

### Inferential Statistics

**Definition:**  
Drawing **conclusions** about population parameters by using sample statistics.

**Two Main Areas:**
1. **Parameter Estimation**
2. **Hypothesis Testing**

---

## Statistical Packages

### Why Use Statistical Packages?

- You can analyze data **easily and precisely**
- Provides powerful computational tools
- Enables complex statistical analysis

---

### Common Statistical Packages

- **SPSS**
- **SAS**
- **Minitab**
- **R**
- **E-views**
- **Matlab**

**In this module:**  
We will discuss how to analyze data by using **R**

---

## Introduction to R Software

### Key Features

```
┌────────────────────────────────────────┐
│  R SOFTWARE CHARACTERISTICS            │
├────────────────────────────────────────┤
│  ✓ Independent and Open source         │
│  ✓ Initially developed at University   │
│    of Auckland in the mid-1990s        │
│  ✓ Distributed under GNU license       │
│  ✓ Developed by user community         │
│  ✓ Available on: Linux, Windows, Mac   │
│  ✓ Latest Version: 4.4.2 (2024)        │
│  ✓ Terminal and GUI available          │
│  ✓ IDEs: R Studio, Rattle              │
└────────────────────────────────────────┘
```

---

### R Software Details

**Initial Development:**
- Developed at **University of Auckland** in the **mid-1990s**

**License:**
- Distributed under the **GNU open software license**

**Development:**
- Developed by the **user community**

**Platforms:**
- **Linux**
- **Windows**
- **Mac**

**Latest Version:**
- **4.4.2** - Released in **2024**

**Interfaces:**
- **Terminal** available
- **GUI** available

**IDEs for R:**
- **R Studio**
- **Rattle**

---

## Summary

### Key Concepts Covered

```
LECTURE 01 SUMMARY:
│
├── Statistics Applications
│   └── Engineering, Medical, Business, ML, etc.
│
├── Definitions
│   ├── Population vs Sample
│   ├── Variable, Data, Parameter, Statistic
│   └── Experiment
│
├── Types of Variables
│   ├── Qualitative (Nominal, Ordinal)
│   └── Quantitative (Discrete, Continuous)
│
├── Measurement Scales
│   ├── Nominal
│   ├── Ordinal
│   ├── Interval
│   └── Ratio
│
├── Areas of Statistics
│   ├── Descriptive Statistics
│   └── Inferential Statistics
│
└── R Software Introduction
    └── Open source statistical package
```

---

## Thank You!

**Any Questions?**

---

**End of Lecture 01**

**Total Pages:** 28  
**Completion Status:** ✅ Complete
