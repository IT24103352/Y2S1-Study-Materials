# LECTURE 5 - Introduction to Supervised Learning

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-10-23

---

## Table of Contents

- [What is Supervised Learning?](#what-is-supervised-learning)
- [Linear Regression](#linear-regression)
- [Logistic Regression](#logistic-regression)
- [K-Nearest Neighbors (KNN)](#k-nearest-neighbors-knn)
- [Decision Trees (CART)](#decision-trees-cart)
- [Support Vector Machines (SVM)](#support-vector-machines-svm)

---

## What is Supervised Learning?

### Definition

**Supervised learning** is a type of machine learning where a model is trained on a **labeled dataset**, meaning the input data is paired with the correct output.

**Goal:**  
The model learns the **mapping** between inputs and outputs so it can make **accurate predictions** on new, unseen data.

---

### Key Characteristics

```
┌──────────────────────────────────────────┐
│  📊 Labeled Data                         │
│  - Each training example has input + output│
│  - Example: (features, label)             │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│  🎯 Learning from Examples               │
│  - Model learns patterns from data        │
│  - Generalizes to new situations          │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│  🔮 Prediction                           │
│  - Makes predictions on unseen data       │
│  - Uses learned patterns                  │
└──────────────────────────────────────────┘
```

---

### Types of Supervised Learning

**Two Main Categories:**

1. **Classification** - Predict discrete categories
   - Binary: Pass/Fail, Yes/No
   - Multi-class: Type A/B/C/D

2. **Regression** - Predict continuous values
   - House prices
   - Temperature
   - Stock prices

---

## Linear Regression

### Overview

**Definition:**  
Linear regression is perhaps one of the most well-known and well-understood algorithms in statistics and machine learning.

**Key Concept:**  
A linear model assumes a **linear relationship** between input variables (x) and output variable (y).

**More specifically:**  
y can be calculated from a **linear combination** of the input variables (x).

---

### Types of Linear Regression

#### 1. Simple Linear Regression
**When:**  
There is a **single input variable** (x)

**Use Case:**  
Finding relationship between two variables

**Examples:**
- Relationship between height and weight
- Study hours vs exam score
- Age vs salary

---

#### 2. Multiple Linear Regression
**When:**  
There are **multiple input variables**

**Use Case:**  
Multiple factors affecting outcome

**Examples:**
- House price based on: size, location, age, bedrooms
- Student performance based on: study hours, attendance, sleep

---

### Training Method

**Ordinary Least Squares (OLS):**
- Most common technique
- Also called: **Least Squares Regression**
- Minimizes the sum of squared errors

---

## Simple Linear Regression - Details

### Visual Understanding

#### Scatter Plot Example:
```
Height vs Weight Relationship:

Weight (kg)
    200 │                    ●
        │              ●
    150 │          ●      ●
        │      ●     ●
    110 │  ●
        └──────────────────────── Height (ft)
         62  65  68  71  74
```

**Key Insight:**  
As height increases, weight tends to increase (positive correlation)

---

### Finding the Best Fit Line

#### Multiple Possible Lines:
```
         ●              Five different lines
    ●         ●         can fit the data
         ●        ●     
    ●         ●         Which one is best?
```

#### Best Fit Line Selection:
```
         ●              Orange line = Best fit
    ●    ───  ●         Minimizes total error
         ●──────●       
    ●    ───     ●      
```

**Core Idea:**  
Obtain a line where **total prediction error** (for all data points) is as **small as possible**.

---

### Mathematical Model

#### Simple Linear Regression Equation:

```
y = β₀ + β₁x + ε

where:
  y  = dependent variable (what we predict)
  x  = independent variable (what we know)
  β₀ = intercept (y-value when x=0)
  β₁ = slope (change in y per unit change in x)
  ε  = error term (noise/randomness)
```

#### Goal:
Choose values of **β₀** and **β₁** that **minimize the error**.

---

### Multiple Linear Regression Equation

**With k independent variables:**

```
y = β₀ + β₁x₁ + β₂x₂ + β₃x₃ + ... + βₖxₖ + ε

where:
  y      = dependent variable
  x₁...xₖ = independent variables
  β₀     = intercept
  β₁...βₖ = coefficients for each variable
  ε      = error term
```

**Example:**
```
House Price = β₀ + β₁(Size) + β₂(Location Score) + 
              β₃(Age) + β₄(Bedrooms) + ε
```

---

### Visualization in 2D and 3D

#### Simple Linear Regression (2D):
```
y
│    ●
│  ●   ●
│●   ●   ●
│──────────── x
(Line in 2D plane)
```

#### Multiple Linear Regression (3D with 2 variables):
```
        z
        │    
        │  ●  (Plane in 3D space)
        │●  ●
       ╱│╲  ●
      ╱ │ ╲
     ╱  │  ╲
    x───┼───y
```

**With 2 variables:** Creates a **plane** in 3D space  
**With more variables:** Creates a **hyperplane** in higher dimensions

---

## Coefficient of Determination (R²)

### What is R²?

**Definition:**  
R² explains the **fraction of variation** explained by the estimated model.

**In simple words:**  
How much of the variation in data is captured by this model?

---

### Formula

```
R² = (TSS - SSE) / TSS

where:
  TSS = Total Sum of Squares = Σ(yᵢ - ȳ)²
  SSE = Sum of Squares of Error = Σ(yᵢ - ŷᵢ)²

  yᵢ = actual value
  ȳ  = mean of actual values
  ŷᵢ = predicted value
```

---

### Interpretation

| R² Value | Meaning | Interpretation |
|----------|---------|----------------|
| **1.0** | Perfect fit | Model explains 100% of variation |
| **0.9** | Excellent | Model explains 90% of variation |
| **0.7** | Good | Model explains 70% of variation |
| **0.5** | Moderate | Model explains 50% of variation |
| **0.2** | Poor | Model explains only 20% of variation |
| **0.0** | No fit | Model explains 0% of variation |

**Example:**
```
R² = 0.85

Meaning: The model explains 85% of the variance in the data.
The remaining 15% is due to factors not in the model or random noise.
```

---

## Making Predictions

### Prediction Process

#### Step 1: Given Input
```
Height = 71 feet (input value)
```

#### Step 2: Apply Model
```
         ●              Point on line = prediction
    ●    │  ●           
         ↑──────●       Vertical line from x to line
    ●    │       ●      gives predicted y-value
         71
```

#### Step 3: Get Prediction
```
Predicted Weight = 165 kg
```

---

### Prediction Error

**Reality:**  
There is **always** a prediction error.

```
         ●              
    ●    │  ●           } Error (difference between
         ├──────●         actual and predicted)
    ●    ●       ●      
         71

Actual Weight:    160 kg
Predicted Weight: 165 kg
Error:            5 kg
```

**Why Errors Occur:**
- Model is simplified version of reality
- Unmeasured factors affect outcome
- Random variation/noise in data
- Measurement errors

---

## Logistic Regression

### Motivation: Qualitative (Categorical) Responses

**Problem:**  
What about when the response variable is **categorical** (qualitative)?

---

### Examples of Categorical Responses

#### Dichotomous/Binary Responses (Two classes):
```
Examples:
- Yes / No
- True / False
- Good / Bad
- Pass / Fail
- Spam / Not Spam
- Fraud / Legitimate
```

#### Multi-class Responses:
```
Examples:
- Low / Medium / High
- Class 01 / Class 02 / Class 03 / Class 04
- Red / Green / Blue
- Grade A / B / C / D / F
```

---

### Why Not Use Linear Regression?

**Problem:**  
When we have a **dichotomous variable** (two-level categorical variable, e.g., Yes/No) as the response, we **cannot use linear regression** for predictions.

---

### Linear vs Logistic Regression Comparison

```
LINEAR REGRESSION (Wrong for Binary):
Y-axis
│ Y=1  ●  ●  ●  ●
│      ╱
│     ╱  ●  ●
│    ╱
│ Y=0 ●  ●         Problem: Line goes
└────────────── X   below 0 and above 1!

LOGISTIC REGRESSION (Correct):
Y-axis
│ Y=1  ●  ●  ●  ●
│      ╭────
│     ╱  ●  ●     S-curve stays
│    ╱            between 0 and 1
│ Y=0 ●  ●
└────────────── X
```

**Key Difference:**
- Linear: Straight line (can go beyond [0,1])
- Logistic: S-curve (bounded between [0,1])

---

## Logistic Regression Model

### What We Calculate

**Output:**  
The **probability** of belonging to a category.

**Example:**
```
P(Pass) = 0.85

Interpretation: 85% probability of passing
```

---

### Why Not Use Linear Model?

**Linear model:**
```
y = β₀ + β₁x₁ + β₂x₂ + ... + βₚxₚ
```

**Problems:**
1. ❌ Output can be negative
2. ❌ Output can be greater than 1
3. ❌ Not suitable for probabilities (must be between 0 and 1)

**Solution:**  
Use the **Sigmoid function** to transform output.

---

### Sigmoid Function

#### Formula:
```
S(x) = 1 / (1 + e⁻ˣ)
```

#### Properties:
```
┌────────────────────────────────┐
│  When x → +∞:  S(x) → 1        │
│  When x = 0:   S(x) = 0.5      │
│  When x → -∞:  S(x) → 0        │
└────────────────────────────────┘
```

#### Graph Shape:
```
S(x)
1.0 │         ╭────────
    │       ╱
0.5 │     ╱
    │   ╱
0.0 │╭──
    └─────────────── x
        S-shaped curve
```

---

### Complete Logistic Regression Model

**Put linear model inside sigmoid function:**

```
P = S(y) = 1 / (1 + e⁻ʸ)

where:
  y = β₀ + β₁x₁ + β₂x₂ + ... + βₚxₚ

Therefore:
  P = 1 / (1 + e⁻⁽β₀ + β₁x₁ + β₂x₂ + ... + βₚxₚ⁾)
```

**Result:**  
Output P is always between 0 and 1 ✅

---

### Logit Transformation

**We can show that:**

```
log(P / (1-P)) = β₀ + β₁x₁ + β₂x₂ + ... + βₚxₚ
```

**Where:**
- `log(P / (1-P))` is called the **Logit**
- Also called: **log-odds**

**Interpretation:**
```
P / (1-P) = Odds

Example:
  P = 0.8 (80% probability of passing)
  Odds = 0.8/0.2 = 4
  Meaning: 4 times more likely to pass than fail
```

---

### Parameter Estimation

**Method:**  
Parameters are estimated using **Maximum Likelihood Estimation (MLE)**.

**Process:**
1. Find parameter values that maximize the likelihood
2. Likelihood = probability of observing the data given parameters
3. Iterative optimization algorithm

---

### Making Predictions

**Process:**

#### Step 1: Calculate Score
```
y = β₀ + β₁x₁ + β₂x₂ + ... + βₚxₚ
```

#### Step 2: Calculate Probability
```
P = 1 / (1 + e⁻ʸ)
```

#### Step 3: Apply Cutoff
```
If P ≥ cutoff → Assign to Class 1
If P < cutoff → Assign to Class 2
```

---

### Cutoff Value

**Common Cutoff:** 0.5 (50%)

```
Example:
  P ≥ 0.5 → Assign to "Pass"
  P < 0.5 → Assign to "Fail"
```

**But cutoff can be changed based on situation:**

| Scenario | Cutoff | Reason |
|----------|--------|--------|
| **Medical diagnosis** | Lower (0.3) | Don't want to miss sick patients |
| **Spam filter** | Higher (0.7) | Don't want false positives |
| **Credit approval** | Medium (0.5) | Balance risk |

**Trade-off:**
- Lower cutoff → More false positives, fewer false negatives
- Higher cutoff → Fewer false positives, more false negatives

---

## K-Nearest Neighbors (KNN)

### Prerequisites: Euclidean Distance

#### In 2D Space:

```
        (x₂, y₂)
          ●
         ╱│
        ╱ │ y₂-y₁
     d ╱  │
      ╱   │
     ●────┘
  (x₁, y₁)  x₂-x₁

d = √((x₂-x₁)² + (y₂-y₁)²)
```

**Definition:**  
Measures the **straight-line distance** between two points in Euclidean space.

---

#### In 3D Space:

```
         z
         │    Q(x₂,y₂,z₂)
         │   ●
         │  ╱
         │ ╱ d
         │╱
        ╱●───── y
       ╱ P(x₁,y₁,z₁)
      x

d = √((x₂-x₁)² + (y₂-y₁)² + (z₂-z₁)²)
```

---

#### In n-Dimensional Space:

**General Formula:**
```
d = √(Σᵢ₌₁ⁿ (xᵢ - yᵢ)²)

where:
  n = number of dimensions
  xᵢ, yᵢ = coordinates in dimension i
```

---

## KNN Algorithm - Example

### Dataset

**Scenario:**  
Predict **Weight** for observation 11 using **Height** and **Age**.

| ID | Height | Age | Weight |
|----|--------|-----|--------|
| 1  | 5.0    | 45  | 77 kg  |
| 2  | 5.11   | 26  | 47 kg  |
| 3  | 5.6    | 30  | 55 kg  |
| 4  | 5.9    | 34  | 59 kg  |
| 5  | 4.8    | 40  | 72 kg  |
| 6  | 5.8    | 36  | 60 kg  |
| 7  | 5.3    | 19  | 40 kg  |
| 8  | 5.8    | 28  | 60 kg  |
| 9  | 5.5    | 23  | 45 kg  |
| 10 | 5.6    | 32  | 58 kg  |
| **11** | **5.5** | **38** | **?** |

---

### Step-by-Step Process

#### Step 1: Plot the Data

```
Height (ft)
  6.0 │        4
      │      6  8  3,10
  5.5 │    9  11*
      │  7
  5.0 │1
  4.5 │5
      │
  4.0 └────────────────── Age (years)
       20   30   40

* = New point (ID 11)
```

---

#### Step 2: Calculate Distances

**Calculate distance from point 11 to ALL other points:**

```
Distance from ID 11 to:
  ID 1:  √((5.5-5.0)² + (38-45)²)  = 7.02
  ID 2:  √((5.5-5.11)² + (38-26)²) = 12.01
  ID 3:  √((5.5-5.6)² + (38-30)²)  = 8.00
  ID 4:  √((5.5-5.9)² + (38-34)²)  = 4.12
  ID 5:  √((5.5-4.8)² + (38-40)²)  = 2.14 ← Closest
  ID 6:  √((5.5-5.8)² + (38-36)²)  = 2.06 ← 2nd closest
  ID 7:  √((5.5-5.3)² + (38-19)²)  = 19.00
  ID 8:  √((5.5-5.8)² + (38-28)²)  = 10.00
  ID 9:  √((5.5-5.5)² + (38-23)²)  = 15.00
  ID 10: √((5.5-5.6)² + (38-32)²)  = 6.01
```

---

#### Step 3: Select K Nearest Neighbors

**For k=3, select 3 closest points:**

```
Height (ft)
  6.0 │        4
      │      6  8  3,10
  5.5 │    9  11*
      │  7      ⭕ ← Circle shows
  5.0 │1 ⭕         k=3 neighbors
  4.5 │5 ⭕
      │
  4.0 └────────────────── Age (years)
       20   30   40

Selected neighbors: ID 1, 5, 6
(Points within red circle)
```

**Ranking:**
1. ID 5 (distance = 2.14)
2. ID 6 (distance = 2.06)
3. ID 1 (distance = 7.02)

---

#### Step 4: Make Prediction (Regression)

**For regression:**  
Calculate the **average** of the k neighbors.

```
Weight of ID 11 = (Weight₁ + Weight₅ + Weight₆) / 3
                = (77 + 72 + 60) / 3
                = 209 / 3
                = 69.67 kg
```

**Final Prediction:** Weight ≈ **70 kg**

---

### KNN for Classification

**Modified Dataset:**

| ID | Height | Age | Class |
|----|--------|-----|-------|
| 1  | 5.0    | 45  | A     |
| 2  | 5.11   | 26  | A     |
| 3  | 5.6    | 30  | B     |
| 4  | 5.9    | 34  | C     |
| 5  | 4.8    | 40  | B     |
| 6  | 5.8    | 36  | A     |
| 7  | 5.3    | 19  | C     |
| 8  | 5.8    | 28  | A     |
| 9  | 5.5    | 23  | B     |
| 10 | 5.6    | 32  | C     |
| **11** | **5.5** | **38** | **?** |

---

#### Step 4: Make Prediction (Classification)

**Same k=3 nearest neighbors:**
- ID 1 → Class A
- ID 5 → Class B
- ID 6 → Class A

**Voting:**
```
Class A: 2 votes
Class B: 1 vote
Class C: 0 votes
```

**Prediction:**  
ID 11 belongs to **Class A** (most frequent class)

---

### Choosing Optimal K

**Hyperparameter:** The value of k

```
┌──────────────────────────────────────┐
│  Small k (e.g., k=1)                 │
│  - More sensitive to noise           │
│  - Overfitting risk                  │
│  - Less smooth decision boundary     │
└──────────────────────────────────────┘

┌──────────────────────────────────────┐
│  Large k (e.g., k=100)               │
│  - Less sensitive to noise           │
│  - Underfitting risk                 │
│  - Smoother decision boundary        │
└──────────────────────────────────────┘

┌──────────────────────────────────────┐
│  Optimal k (found by validation)     │
│  - Balance between bias and variance │
│  - Use cross-validation              │
│  - Try different values              │
└──────────────────────────────────────┘
```

**Common Approaches:**
- Try k = √n (where n = number of samples)
- Use cross-validation to test k = 1, 3, 5, 7, 9, ...
- Choose k that gives best validation accuracy

---

## Decision Trees (CART)

### What is a Decision Tree?

**Definition:**  
A **non-parametric supervised learning** technique that creates a tree of multiple decision rules derived from data features.

**Characteristics:**
- ✅ One of the most easy to understand algorithms
- ✅ Most explainable machine learning method
- ✅ Fundamental component of Random Forest
- ✅ One of the most powerful ML algorithms

---

### Two Types

#### 1. Classification Trees
**Use:** Predict **categorical** outcomes

**Examples:**
- Pass/Fail
- Yes/No/Maybe
- Disease Type A/B/C

---

#### 2. Regression Trees
**Use:** Predict **continuous** outcomes

**Examples:**
- House prices
- Temperature
- Salary

---

## Structure of Classification Tree

### Tree Components

```
┌──────────────────────────┐
│      Root Node           │ ← All training data
│  (Training Dataset)      │
└────────┬─────────────────┘
         │
      ┌──▼──┐ Decision Rule
      │     │ (e.g., Age < 30?)
      │     │
   ┌──▼──┐  └──┬──┐
   │Internal│   │Internal│ ← Subgroups
   │ Node  │   │ Node   │
   └──┬───┘   └──┬───┘
      │           │
  ┌───▼──┐    ┌──▼──┐
  │Leaf  │    │Leaf │ ← Final Decision
  │Node  │    │Node │
  └──────┘    └─────┘
  Class 1     Class 2
```

---

### Node Definitions

#### Root Node
```
┌──────────────────────────────────┐
│  WHAT: First node                │
│  CONTAINS: Entire training set   │
│  PURPOSE: Starting point         │
└──────────────────────────────────┘
```

#### Internal Node
```
┌──────────────────────────────────┐
│  WHAT: Decision point            │
│  CONTAINS: Subset of data        │
│  PURPOSE: Split into subgroups   │
│  RULE: If condition then branch  │
└──────────────────────────────────┘
```

#### Leaf Node
```
┌──────────────────────────────────┐
│  WHAT: Terminal node             │
│  CONTAINS: Final subset          │
│  PURPOSE: Make prediction        │
│  OUTPUT: Class label or value    │
└──────────────────────────────────┘
```

---

## How Decision Trees Work

### Recursive Partitioning

**Process:**
1. Start with all data (root node)
2. Find best feature and threshold to split
3. Create two (or more) child nodes
4. Repeat for each child node
5. Stop when stopping criterion met

**Stopping Criteria:**
- Maximum depth reached
- Minimum samples per node
- All samples in node are same class
- No further improvement possible

---

### Key Concept: Purity/Homogeneity

**Goal:**  
Split nodes to create **pure** (homogeneous) subgroups.

#### High Purity (Good):
```
Node A: [●●●●●●●●] All Class 1
Homogeneity = 100%
```

#### Low Purity (Bad):
```
Node B: [●●●○○○●●] Mixed classes
Homogeneity = 62.5%
```

#### Example:
```
Node with 10 samples:
- Distribution 9/1  → High purity ✅
- Distribution 8/2  → Good purity ✅
- Distribution 5/5  → Low purity ❌
```

---

### Finding Best Split

**Question:**  
How do we choose the best attribute and threshold value to split?

**Answer:**  
Use algorithms that measure **purity** (or **impurity**):

1. **CART algorithm:** Gini Index
2. **ID3 algorithm:** Information Gain  
3. **C4.5 algorithm:** Gain Ratio

---

## Gini Index (Gini Impurity)

### What is Gini Index?

**Definition:**  
A measure of how **mixed** or **impure** a dataset is.

**Range:**
- **0** = Pure dataset (all samples same class)
- **1** = Completely impure dataset (mixed classes)

**Interpretation:**
```
Lower Gini = Better split
Higher Gini = Worse split
```

---

### Formula

**Two equivalent formulas:**

#### Formula 1 (More common):
```
Gini Impurity = 1 - Σ(p(i)²)

where:
  p(i) = probability of class i
  Σ = sum over all classes
```

#### Formula 2:
```
Gini Impurity = 1 - Σ(p(i) × (1 - p(i)))
```

**Both give same result!**

---

### Example Calculation

#### Given:
```
p(Yes) = 0.3
p(No)  = 0.7
```

#### Using Formula 1:
```
Gini = 1 - (0.3)² - (0.7)²
     = 1 - 0.09 - 0.49
     = 0.42
```

#### Using Formula 2:
```
Gini = 1 - (0.3 × 0.7) - (0.7 × 0.3)
     = 1 - 0.21 - 0.21
     = 0.58

Wait, this doesn't match!
Let me recalculate:

Gini = (0.3 × (1-0.3)) + (0.7 × (1-0.7))
     = (0.3 × 0.7) + (0.7 × 0.3)
     = 0.21 + 0.21
     = 0.42 ✓
```

**Interpretation:**  
45% chance of misclassifying a randomly selected sample.

---

## Complete Example: Best Split Selection

### Dataset

| Age | Gender | Income | Credit Score | Buys_Insurance |
|-----|--------|--------|--------------|----------------|
| 20  | Male   | High   | Excellent    | Yes            |
| 25  | Female | High   | Fair         | No             |
| 30  | Male   | High   | Excellent    | Yes            |
| 35  | Female | Medium | Excellent    | Yes            |
| 40  | Male   | Low    | Fair         | No             |
| 45  | Female | Low    | Poor         | No             |

**Task:**  
Determine the best feature to use as root node.

---

### Step 1: Calculate Gini for Target

```
Buys_Insurance distribution:
  Yes: 3/6 = 0.5
  No:  3/6 = 0.5

Gini(Target) = 1 - (0.5)² - (0.5)²
             = 1 - 0.25 - 0.25
             = 0.5
```

---

### Step 2: Calculate Gini for Each Feature

#### Feature: Age

| Age | Buys_Insurance |
|-----|----------------|
| 20  | Yes            |
| 25  | No             |
| 30  | Yes            |
| 35  | Yes            |
| 40  | No             |
| 45  | No             |

```
Probabilities:
  p(Age=20) = 1/6 = 0.17
  p(Age=25) = 1/6 = 0.17
  p(Age=30) = 1/6 = 0.17
  p(Age=35) = 1/6 = 0.17
  p(Age=40) = 1/6 = 0.17
  p(Age=45) = 1/6 = 0.17

Gini(Age) = 1 - 6×(0.17)²
          = 1 - 6×0.0289
          = 1 - 0.1734
          = 0.83
```

---

#### Feature: Gender

| Gender | Buys_Insurance |
|--------|----------------|
| Male   | Yes            |
| Female | No             |
| Male   | Yes            |
| Female | Yes            |
| Male   | No             |
| Female | No             |

```
Probabilities:
  p(Male)   = 3/6 = 0.5
  p(Female) = 3/6 = 0.5

Gini(Gender) = 1 - (0.5)² - (0.5)²
             = 1 - 0.25 - 0.25
             = 0.5
```

---

#### Feature: Income

| Income | Buys_Insurance |
|--------|----------------|
| High   | Yes            |
| High   | No             |
| High   | Yes            |
| Medium | Yes            |
| Low    | No             |
| Low    | No             |

```
Probabilities:
  p(High)   = 3/6 = 0.5
  p(Medium) = 1/6 = 0.17
  p(Low)    = 2/6 = 0.33

Gini(Income) = 1 - (0.5)² - (0.17)² - (0.33)²
             = 1 - 0.25 - 0.0289 - 0.1089
             = 0.61
```

---

#### Feature: Credit Score

| Credit Score | Buys_Insurance |
|--------------|----------------|
| Excellent    | Yes            |
| Fair         | No             |
| Excellent    | Yes            |
| Excellent    | Yes            |
| Fair         | No             |
| Poor         | No             |

```
Probabilities:
  p(Excellent) = 3/6 = 0.5
  p(Fair)      = 2/6 = 0.33
  p(Poor)      = 1/6 = 0.17

Gini(Credit Score) = 1 - (0.5)² - (0.33)² - (0.17)²
                   = 1 - 0.25 - 0.1089 - 0.0289
                   = 0.61
```

---

### Step 3: Select Best Feature

**Summary of Gini Values:**

| Feature | Gini Impurity |
|---------|---------------|
| Age | 0.83 |
| Gender | 0.5 |
| **Income** | **0.61** ⬅ |
| **Credit Score** | **0.61** ⬅ |

**Decision:**  
Select **Income** or **Credit Score** as root node (both tied with lowest Gini = 0.61).

**Rule:**  
Lower Gini = Better split!

---

## Structure of Regression Tree

### Example Tree

```
                Root Node
               age < 57?
              ╱         ╲
           Yes           No
          ╱               ╲
      5.6              emergent_country=yes?
     100%              ╱                 ╲
                    Yes                  No
                   ╱                      ╲
          hours >= 32?              hours >= 34?
          ╱         ╲               ╱  |  |  |  ╲
        No          Yes           /   |  |  |   \
       ╱             ╲           /    |  |  |    \
     4.1            7.7        3.2  3.5 5.0 6.8  8.2
     60%            40%        17% 15% 27% 13%  27%
```

**Key Difference:**  
- Classification tree: Leaf nodes contain **class labels**
- Regression tree: Leaf nodes contain **numerical values**

---

### Splitting Criterion for Regression

**Method:** Reduction in Variance

**Formula:**
```
Variance = Σ(yᵢ - ȳ)² / n

Goal: Choose split that minimizes variance in child nodes
```

**Process:**
1. Calculate variance of parent node
2. Try all possible splits
3. Calculate weighted variance of children
4. Choose split with maximum variance reduction

---

## Support Vector Machines (SVM)

### Real-World Analogy: The Street

**Imagine:**  
A wide city street at dawn/dusk, with tall buildings on both sides.

```
│Building│  ╔════════╗  │Building│
│        │  ║ Street ║  │        │
│        │  ║        ║  │        │
│ Cars   │  ║  Road  ║  │  Cars  │
│        │  ║        ║  │        │
│        │  ╚════════╝  │        │
```

**Street divides:**
- Cars on left side
- Cars on right side
- Buildings on sides

---

### Translation to ML

**In ML world:**

```
● = Red dots (left side objects)
● = Green dots (right side objects)
─ = Street → Decision boundary
╎ = Margins

Goal: Find the widest "street" (margin) 
      that separates red and green dots
```

**SVM = "Road Machine"**
- Finds decision boundary
- Separates different classes
- Maximizes the margin

---

### Key Concepts

#### 1. Hyperplane

**Definition:**  
An (n-1)-dimensional subspace for an n-dimensional space.

**Examples:**

```
2D Space (plane):
  Hyperplane = 1D = LINE
  ●●●
      │
  ────┤────  ← Line separates
      │
     ●●●

3D Space (cube):
  Hyperplane = 2D = PLANE
     ●●●
    ╱───╲
   ╱  P  ╲  ← Plane separates
  ╱───────╲
 ●●●
```

---

#### 2. Separating Hyperplane

**Definition:**  
A hyperplane that correctly separates two classes.

```
     ●●●
         ──────  Line 1
    ●●●
        ────────  Line 2
   ●●●
       ──────────  Line 3

     ○○○

All three lines are separating hyperplanes!
(They all correctly separate red and green)
```

**Question:**  
Which one is best?

---

#### 3. Margin

**Definition:**  
The **perpendicular distance** from the hyperplane to the **nearest data point** on either side.

```
     ●●●
     ╎╎╎
     ╎│╎  ← Margins (dashed lines)
────────── ← Hyperplane (solid line)
     ╎│╎
     ╎╎╎
     ○○○
```

**Calculation:**
1. Draw hyperplane
2. Calculate perpendicular distance from hyperplane to each point
3. Smallest distance = Margin

---

#### 4. Support Vectors

**Definition:**  
The data points that lie **exactly on the margin**.

```
     ●●●
     ●╎╎  ← Support vector (red)
────────── ← Decision boundary
     ╎○╎  ← Support vector (green)
     ○○○
```

**Why important?**
- These points **define** the hyperplane
- Remove other points → hyperplane stays same
- Remove support vector → hyperplane changes!

---

## SVM in Linear Separable Cases

### The Problem

**Observation:**  
Infinite lines exist to separate red and green dots.

```
     ●●●
        ─────  Line 1
      ─────    Line 2
    ─────      Line 3
  ─────        Line 4
     ○○○

Which one should we choose?
```

---

### SVM Solution

**Two-step optimization:**

#### Step 1: Constraint
```
Only consider SEPARATING hyperplanes
(hyperplanes that classify both classes correctly)
```

#### Step 2: Optimization
```
Among separating hyperplanes,
pick the one that MAXIMIZES the margin
```

**Result:**  
Unique optimal hyperplane with maximum margin!

---

### Why Maximum Margin?

**Benefits:**
- ✅ Better generalization to new data
- ✅ More robust to noise
- ✅ Lower risk of overfitting

```
Small Margin (Bad):          Large Margin (Good):
●●●                          ●●●
  │                             ╎│╎
──┼──                         ───┼───
  │                             ╎│╎
○○○                          ○○○

Sensitive to noise           Robust to noise
```

---

## SVM in Non-Linearly Separable Cases

### The Real-World Problem

**Reality:**  
Datasets are probably **never linearly separable**.

```
     ●●●
   ●   ●  ○
  ●  ○  ●
     ○●○

No straight line can perfectly separate!
```

**Challenge:**  
The condition of "100% correctly classified" will never be met.

---

### Two Solutions

#### 1. Soft Margin
```
Tolerate one or few misclassified points
Allow some errors to find better overall boundary
```

#### 2. Kernel Trick
```
Find non-linear decision boundary
Transform data to higher dimension
```

---

## Soft Margin

### Two Types of Tolerated Misclassifications

#### Type 1: Wrong Side of Boundary, But Within Margin
```
●●●
●╎│╎  ← Red dot on wrong side
────○── ← Decision boundary
╎│╎○
○○○

Misclassified but close to boundary
```

#### Type 2: Wrong Side of Boundary AND Wrong Side of Margin
```
●●●
╎│╎
────○●─── ← Red dot far on wrong side
╎│╎○
○○○

Severely misclassified
```

---

### Soft Margin Visualization

```
Linear Not Separable (Case 1):
●●●
●╎│╎  ← Tolerated error
──────
╎│╎○
○○○

Linear Not Separable (Case 2):
●●●
╎●│╎  ← Multiple errors tolerated
──●───
╎│○╎
○○○
```

**Trade-off:**  
Balance between:
- Maximizing margin
- Minimizing misclassifications

---

### Soft Margin Parameter (C)

```
Large C:
- Less tolerance for errors
- Smaller margin
- Risk of overfitting

Small C:
- More tolerance for errors
- Larger margin
- Risk of underfitting
```

---

## Kernel Trick

### Motivation

**Problem:**  
Data not linearly separable in original space.

```
Original Space (2D):
   ●  ○
  ● ○ ●
   ○  ●

No line can separate!
```

**Solution:**  
Transform to **higher-dimensional space** where it becomes separable.

---

### How Kernel Trick Works

**Process:**
1. Take existing features
2. Apply transformations
3. Create new features
4. Find separator in new space

**Example:**
```
Original: x₁, x₂
Transform: x₁², x₂², x₁×x₂, ...
New features help SVM find non-linear boundary
```

---

### Common Kernels

#### 1. Linear Kernel
```
K(x, y) = x · y

Decision Boundary: ────── (straight line)
```

#### 2. Polynomial Kernel
```
K(x, y) = (x · y + c)ᵈ

Decision Boundary: ∿∿∿∿ (curved)
```

#### 3. RBF (Radial Basis Function) Kernel
```
K(x, y) = exp(-γ ||x-y||²)

Decision Boundary: ⊗⊗⊗ (complex shapes)
```

---

### Kernel Comparison

```
LINEAR KERNEL:                POLYNOMIAL KERNEL:
●●●                          ●●●
────── Straight line         ╭───╮ Curved boundary
○○○                          ○○○

RBF KERNEL:
●●●
╭─╮  Complex, flexible
│○│  boundary
╰─╯
○○○
```

**Choosing Kernel:**
- Linear: When data is linearly separable
- Polynomial: When curved boundary needed
- RBF: When complex, non-linear patterns exist

---

## Summary

### Supervised Learning Algorithms Covered

```
1️⃣  LINEAR REGRESSION
    - For continuous output
    - Assumes linear relationship
    - Simple and interpretable

2️⃣  LOGISTIC REGRESSION
    - For binary classification
    - Uses sigmoid function
    - Outputs probabilities

3️⃣  K-NEAREST NEIGHBORS (KNN)
    - Instance-based learning
    - No training phase
    - Simple but computationally expensive

4️⃣  DECISION TREES (CART)
    - Rule-based learning
    - Easy to interpret
    - Can handle non-linear relationships
    - Uses Gini Index for splits

5️⃣  SUPPORT VECTOR MACHINES (SVM)
    - Maximum margin classifier
    - Effective in high dimensions
    - Uses kernels for non-linearity
    - Soft margin for non-separable data
```

---

## Key Takeaways

### When to Use Each Algorithm

| Algorithm | Best For | Pros | Cons |
|-----------|----------|------|------|
| **Linear Regression** | Continuous output, linear relationships | Simple, interpretable | Assumes linearity |
| **Logistic Regression** | Binary classification | Probability output, fast | Linear decision boundary |
| **KNN** | Small datasets, no training time | Simple, no assumptions | Slow prediction, sensitive to scale |
| **Decision Trees** | Non-linear patterns, interpretability | Easy to understand, handles non-linearity | Prone to overfitting |
| **SVM** | High-dimensional data, complex boundaries | Effective with kernels, robust | Computationally expensive, hard to tune |

---

## Comparison Matrix

### Algorithm Characteristics

```
┌────────────────────────────────────────────────┐
│  INTERPRETABILITY:                             │
│  Decision Trees > Logistic > Linear > KNN > SVM│
└────────────────────────────────────────────────┘

┌────────────────────────────────────────────────┐
│  TRAINING SPEED:                               │
│  KNN > Linear > Logistic > Trees > SVM        │
└────────────────────────────────────────────────┘

┌────────────────────────────────────────────────┐
│  PREDICTION SPEED:                             │
│  Linear > Logistic > Trees > SVM > KNN        │
└────────────────────────────────────────────────┘

┌────────────────────────────────────────────────┐
│  HANDLING NON-LINEARITY:                       │
│  SVM > Trees > KNN > Logistic > Linear        │
└────────────────────────────────────────────────┘
```

---

## Thank You!

### Course Information
- **Module:** IT2011 - Artificial Intelligence and Machine Learning
- **Lecture:** 5 - Introduction to Supervised Learning
- **Lecturer:** Dr. Lakmini Abeywardhana
- **Institution:** SLIIT - Sri Lanka Institute of Information Technology
- **Faculty:** Faculty of Computing
- **Academic Year:** Year 02, Semester 01
- **Student:** IT24103352
- **Date:** 2025-10-23

---

### Next Steps

**What's Coming:**
- Lecture 6: Unsupervised Learning Algorithms
- Lecture 7: Neural Networks and Deep Learning

**Recommended Practice:**
1. ✅ Implement each algorithm in Python
2. ✅ Compare performance on different datasets
3. ✅ Experiment with hyperparameters
4. ✅ Build intuition through visualization

---

**End of Lecture 5**

**Total Pages:** 76  
**Completion Status:** ✅ Fully converted to Markdown
