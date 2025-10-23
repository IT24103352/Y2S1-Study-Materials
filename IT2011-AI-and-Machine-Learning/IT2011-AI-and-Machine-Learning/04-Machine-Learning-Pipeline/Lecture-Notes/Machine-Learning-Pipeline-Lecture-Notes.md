# LECTURE 4 - Machine Learning Pipeline

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-10-23

---

## Learning Objectives

By the end of this lecture, you will be able to:

1. ✅ **Understand** the key steps in a Machine Learning project
2. ✅ **Apply** various preprocessing techniques on data
3. ✅ **Evaluate** ML models using appropriate metrics

---

## Table of Contents

- [Overview of Machine Learning Pipeline](#overview-of-machine-learning-pipeline)
- [Key Stages in ML Pipeline](#key-stages-in-ml-pipeline)
- [Steps in ML Project](#steps-in-ml-project)
- [Problem Definition](#problem-definition)
- [Data Collection](#data-collection)
- [Data Preprocessing](#data-preprocessing)
- [Feature Engineering](#feature-engineering)
- [Model Selection](#model-selection)
- [Model Training](#model-training)
- [Model Evaluation](#model-evaluation)
- [Deployment](#deployment)
- [Further Resources](#further-resources)

---

## Overview of Machine Learning Pipeline

### Definition and Importance

**What is a Machine Learning Pipeline?**

A Machine Learning Pipeline is a **sequence of steps** that transforms raw data into valuable predictions using machine learning techniques.

**Purpose:**
It helps automate and streamline:
- ✅ Data flow
- ✅ Model building
- ✅ Evaluation
- ✅ Deployment

**Why Important?**
- Ensures reproducibility
- Automates repetitive tasks
- Standardizes workflows
- Reduces errors
- Facilitates collaboration

---

## Key Stages in the ML Pipeline

### Pipeline Overview Table

| Stage | What Happens | Key Activities |
|-------|-------------|----------------|
| **1. Data Collection** | Gather raw data from sources like sensors, websites, databases, files | - Identify data sources<br>- Extract data<br>- Store data |
| **2. Data Preprocessing** | Clean, fix, and format the data (remove nulls, encode text, scale numbers) | - Handle missing values<br>- Remove outliers<br>- Normalize/standardize |
| **3. Feature Engineering** | Create and transform features that help the model learn better | - Select features<br>- Create new features<br>- Reduce dimensions |
| **4. Model Selection** | Choose the right algorithm (e.g., decision tree, logistic regression) | - Evaluate algorithms<br>- Consider constraints<br>- Select best fit |
| **5. Model Training** | Teach the model to learn from the data using the selected algorithm | - Split data<br>- Train model<br>- Tune hyperparameters |
| **6. Model Evaluation** | Measure how well the model performs using test data (accuracy, error metrics) | - Test on unseen data<br>- Calculate metrics<br>- Validate results |
| **7. Model Deployment** | Make the model available in the real world (e.g., in an app or website) | - Package model<br>- Deploy to production<br>- Monitor performance |

---

## Steps in a Machine Learning Project

### Visual Workflow

```
┌─────────────────────────────────────────────────────────┐
│                                                         │
│  1️⃣  Problem Definition                                 │
│         ↓                                               │
│  2️⃣  Data Collection                                    │
│         ↓                                               │
│  3️⃣  Data Preprocessing                                 │
│         ↓                                               │
│  4️⃣  Feature Engineering                                │
│         ↓                                               │
│  5️⃣  Model Selection                                    │
│         ↓                                               │
│  6️⃣  Training                                           │
│         ↓                                               │
│  7️⃣  Evaluation                                         │
│         ↓                                               │
│  8️⃣  Deployment                                         │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

## Knowledge Discovery Process (Cyclical)

### Process Diagram

```
        DATA DOMAIN                    KNOWLEDGE DOMAIN
             │                                │
         ┌───▼───┐                       ┌───▼───┐
         │ Data  │                       │Knowledge│
         └───┬───┘                       └───┬───┘
             │                               │
             ▼                               ▼
    Problem Specification          Result Exploitation
             │                               │
             ▼                               ▼
    Problem Understanding              Evaluation
             │                               │
             ▼                               ▼
    Data Preprocessing    ────────►    Data Mining
             │                               │
             └───────────────────────────────┘
                    (Iterative Cycle)
```

**Key Characteristics:**
- **Iterative process** - not linear
- Feedback loops between stages
- Continuous improvement
- Domain knowledge integration
- Result exploitation informs future data collection

---

## 1. Problem Definition

### Three Critical Components

```
┌──────────────────────────────────────────┐
│  🧠  UNDERSTANDING DOMAIN                │
│                                          │
│  - What industry/field?                  │
│  - What are the constraints?             │
│  - What data is available?               │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│  🎯  IDENTIFYING BUSINESS OBJECTIVE      │
│                                          │
│  - What problem needs solving?           │
│  - What is the success metric?           │
│  - What is the impact?                   │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│  ✅  DETERMINING ML TASK TYPE            │
│                                          │
│  - Classification or Regression?         │
│  - Supervised or Unsupervised?           │
│  - What algorithm family?                │
└──────────────────────────────────────────┘
```

### Examples of Problem Definition

#### Example 1: Student Performance Prediction
```
Domain: Education
Objective: Predict which students will fail
ML Task: Binary Classification (Pass/Fail)
Success Metric: Accuracy > 85%
```

#### Example 2: House Price Prediction
```
Domain: Real Estate
Objective: Estimate house selling price
ML Task: Regression (continuous value)
Success Metric: Mean Absolute Error < $10,000
```

#### Example 3: Customer Segmentation
```
Domain: E-commerce
Objective: Group customers by behavior
ML Task: Unsupervised Clustering
Success Metric: Silhouette score > 0.6
```

---

## 2. Data Collection

### Data Types

#### Structured Data
**Characteristics:**
- Tabular format
- Easily searchable
- Organized in rows and columns
- Predefined schema

**Examples:**
- Databases (SQL tables)
- CSV files
- Excel spreadsheets
- JSON with consistent structure

**Advantages:**
✅ Easy to analyze  
✅ Quick to query  
✅ Ready for ML algorithms  

---

#### Unstructured Data
**Characteristics:**
- Free-form format
- No predefined structure
- Requires preprocessing

**Examples:**
- Social media posts
- Emails
- Images
- Audio files
- Video files
- Text documents

**Challenges:**
⚠️ Requires extensive preprocessing  
⚠️ Harder to analyze  
⚠️ Larger storage needs  

---

### Sources of Data

#### 1. APIs (Application Programming Interfaces)
```python
Examples:
- Twitter API (social media data)
- OpenWeatherMap (weather data)
- Google Maps API (location data)
- Alpha Vantage (stock market data)
```

#### 2. Databases
```
SQL Databases:
- MySQL
- PostgreSQL
- Oracle

NoSQL Databases:
- MongoDB (document store)
- Cassandra (wide-column store)
- Redis (key-value store)
```

#### 3. Files
```
Common Formats:
- CSV (Comma-Separated Values)
- Excel (.xlsx, .xls)
- JSON (JavaScript Object Notation)
- XML (eXtensible Markup Language)
- Parquet (columnar storage)
```

---

### Data Acquisition Tools

#### Web Scraping
**Tools:**
- **BeautifulSoup** (Python) - Parse HTML/XML
- **Scrapy** (Python) - Web crawling framework
- **Selenium** (Browser automation)

**Use Case:**
```python
# Example: Scraping product prices from e-commerce site
from bs4 import BeautifulSoup
import requests

url = "https://example.com/products"
response = requests.get(url)
soup = BeautifulSoup(response.content, 'html.parser')
prices = soup.find_all('span', class_='price')
```

---

#### API Clients
**Tools:**
- **Postman** - API testing and development
- **Python Requests** - HTTP library
- **cURL** - Command-line tool

**Use Case:**
```python
# Example: Getting weather data
import requests

api_key = "your_api_key"
city = "Colombo"
url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&appid={api_key}"

response = requests.get(url)
weather_data = response.json()
```

---

#### ETL Tools (Extract, Transform, Load)
**Tools:**
- **Apache NiFi** - Data flow automation
- **Talend** - Data integration platform
- **Airbyte** - Open-source data integration

**Purpose:**
- Extract data from multiple sources
- Transform it into usable format
- Load it into target database/warehouse

---

## 3. Data Preprocessing

### Overview

**Definition:**
Raw data is often messy. Before using it in a machine learning model, we need to clean, fix, and prepare it. This process is called **data preprocessing**.

**Key Activities:**
- ✅ Cleaning data
- ✅ Handling missing values
- ✅ Encoding categorical features
- ✅ Normalization/Standardization

---

### Four Main Categories of Preprocessing

```
┌────────────────────────────────────────────┐
│  1️⃣  DATA CLEANING                         │
│  Remove errors, handle missing values      │
└────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────┐
│  2️⃣  DATA INTEGRATION                      │
│  Combine data from multiple sources        │
└────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────┐
│  3️⃣  DATA TRANSFORMATION                   │
│  Normalize, scale, encode                  │
└────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────┐
│  4️⃣  DATA REDUCTION                        │
│  Reduce volume while preserving integrity  │
└────────────────────────────────────────────┘
```

**Source:** [Illinois CS412 - Data Preprocessing](https://hanj.cs.illinois.edu/cs412/bk3/03.pdf#page=4,25)

---

## Steps in Data Preprocessing

### 1. Handling Missing Data

**Problem:**
Sometimes a value may be missing (e.g., temperature not recorded, age not provided)

#### Solutions:

**Method 1: Fill with Statistical Measures**
```python
# Fill with mean
df['age'].fillna(df['age'].mean(), inplace=True)

# Fill with median (better for outliers)
df['salary'].fillna(df['salary'].median(), inplace=True)

# Fill with mode (most frequent value)
df['city'].fillna(df['city'].mode()[0], inplace=True)
```

**Method 2: Fill with Constant**
```python
# Fill with zero
df['score'].fillna(0, inplace=True)

# Fill with "unknown" or "missing"
df['country'].fillna('Unknown', inplace=True)
```

**Method 3: Drop Missing Data**
```python
# Drop rows with any missing values
df.dropna(inplace=True)

# Drop rows where specific column is missing
df.dropna(subset=['important_column'], inplace=True)

# Drop column if too many missing values
if df['column'].isnull().sum() > 0.5 * len(df):
    df.drop('column', axis=1, inplace=True)
```

**When to Use Each Method:**
| Method | When to Use | Example |
|--------|-------------|---------|
| **Mean/Median** | Numerical data, few missing | Age, salary, temperature |
| **Mode** | Categorical data | City, color, category |
| **Constant (0)** | When zero is meaningful | Count, quantity |
| **"Unknown"** | Categorical, preserve info about missing | Country, status |
| **Drop Row** | Few missing rows, critical columns | Customer ID missing |
| **Drop Column** | >50% missing, not important | Optional survey questions |

---

### 2. Converting Categorical Data

**Problem:**
Machines work with numbers, not words. We need to convert categories like "Yes"/"No" or "Male"/"Female" into numbers.

#### Common Methods:

#### Method 1: Label Encoding
```python
from sklearn.preprocessing import LabelEncoder

# Convert Yes/No to 1/0
encoder = LabelEncoder()
df['passed'] = encoder.fit_transform(df['passed'])
# "Yes" → 1, "No" → 0
```

#### Method 2: One-Hot Encoding
```python
import pandas as pd

# Convert Country to separate columns
df = pd.get_dummies(df, columns=['country'])
# Creates: country_UK, country_India, country_USA with 0/1 values
```

#### Method 3: Target Encoding
```python
# Replace categories with mean of target variable
mean_salary_by_dept = df.groupby('department')['salary'].mean()
df['dept_encoded'] = df['department'].map(mean_salary_by_dept)
```

---

### Encoding Types Comparison

| Encoding Type | How It Works | Best Used For | Pros | Cons / Caution |
|--------------|--------------|---------------|------|----------------|
| **Label Encoding** | Assigns a unique number to each category (e.g., Yes → 1, No → 0) | **Ordinal data** (e.g., Low, Medium, High) | ✅ Simple<br>✅ Memory-efficient | ⚠️ Implies order even when not present<br>❗ Use only if order matters |
| **One-Hot Encoding** | Creates a new column for each category with binary 0/1 | **Nominal data** (unordered, e.g., Country, Color) | ✅ No false ranking<br>✅ Easy to understand | ⚠️ Can create many columns<br>⚠️ High-cardinality issues |
| **Target Encoding** | Replaces category with average value of target variable | **High-cardinality features** (e.g., Product ID, Zip Code) | ✅ Efficient for large feature sets<br>✅ Reduces dimensions | ⚠️ Risk of overfitting<br>❗ Use regularization or cross-validation |

---

### 3. Scaling the Data

**Problem:**
Imagine "Age" ranges from 10–80 but "Marks" range from 0–10. The machine may give more attention to bigger numbers.

**Solution:**
Scaling ensures all features are treated equally.

#### Method 1: Min-Max Scaling (Normalization)
```python
from sklearn.preprocessing import MinMaxScaler

scaler = MinMaxScaler()
df[['age', 'salary']] = scaler.fit_transform(df[['age', 'salary']])
# Rescales values to range [0, 1]
```

**Formula:**
```
X_scaled = (X - X_min) / (X_max - X_min)
```

**Example:**
```
Original ages: [20, 30, 40, 50, 60]
Min = 20, Max = 60
Scaled: [0.0, 0.25, 0.5, 0.75, 1.0]
```

---

#### Method 2: Standardization (Z-score Normalization)
```python
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()
df[['age', 'salary']] = scaler.fit_transform(df[['age', 'salary']])
# Makes data follow standard normal distribution (mean=0, std=1)
```

**Formula:**
```
X_scaled = (X - μ) / σ
where:
  μ = mean
  σ = standard deviation
```

**Example:**
```
Original: [10, 20, 30, 40, 50]
Mean = 30, Std = 14.14
Scaled: [-1.41, -0.71, 0, 0.71, 1.41]
```

---

### When to Use Which Scaling Method?

| Method | When to Use | Algorithms That Need It | Example |
|--------|-------------|------------------------|---------|
| **Min-Max** | When you want bounded range [0,1] | Neural Networks, KNN | Image pixel values (0-255 → 0-1) |
| **Standardization** | When data has outliers or follows normal distribution | SVM, Logistic Regression, PCA | Financial data with outliers |
| **No Scaling** | Tree-based models don't need scaling | Decision Trees, Random Forest, XGBoost | Any dataset |

---

## Data Cleaning Details

### Data in the Real World Is Dirty

**Common Data Quality Issues:**

#### 1. Incomplete Data
**Problem:** Lacking attribute values, lacking certain attributes of interest, or containing only aggregate data

**Examples:**
```
Occupation = "" (missing data)
Email = NULL
Phone = "N/A"
```

**Causes:**
- User didn't provide information
- Data not collected at source
- Instrument failure
- Data integration issues

---

#### 2. Noisy Data
**Problem:** Containing noise, errors, or outliers

**Examples:**
```
Salary = "-10" (impossible value - an error)
Age = "999" (clearly wrong)
Temperature = "150°C" (unlikely for body temperature)
```

**Causes:**
- Instrument faulty
- Human error during data entry
- Transmission error
- Sensor malfunction

---

#### 3. Inconsistent Data
**Problem:** Containing discrepancies in codes or names

**Examples:**
```
Example 1: Conflicting information
Age = "42", Birthday = "03/07/2010" (contradiction!)

Example 2: Changed encoding
Was rating "1, 2, 3", now rating "A, B, C"

Example 3: Duplicate records
Record 1: Name = "John Smith", City = "NY"
Record 2: Name = "J. Smith", City = "New York"
(Same person, different representation)
```

**Causes:**
- Multiple data sources
- Changed data collection methods
- Lack of standardization

---

#### 4. Intentional Issues
**Problem:** Disguised missing data

**Examples:**
```
Birthday = "01/01/1900" (placeholder, not real)
Age = "99" (default value for unknown)
All records have Birthday = "Jan 1" (suspicious!)
```

**Why This Happens:**
- Systems require a value
- Users enter fake data for privacy
- Default values used incorrectly

---

## 4. Feature Engineering

### What is Feature Engineering?

**Definition:**
The process of transforming raw data into meaningful features that improve the performance of machine learning models.

**Key Principle:**
> "Good features can make simple models powerful, while poor features can render complex models useless."

**Role in ML Pipeline:**
Comes after data preprocessing and before model training.

---

### Real-World Example

**Scenario:**
You're building a machine that learns to predict whether a student will pass or fail.

**Raw Data:**
```
Study habits, sleep hours, attendance
```

**Feature Engineering Means:**
1. ✅ **Picking the right information** (features)
2. ✅ **Improving it** (creating better features)
3. ✅ **Removing unnecessary parts** (feature selection)

**Result:**
```
Good feature engineering = Smarter machine learning!
```

---

### What Are Features?

**Definition:**
The information we give to the machine. Features are the **columns in your dataset**.

#### Example: Student Dataset

| Hours Studied | Attendance (%) | Sleep Before Exam | Result |
|--------------|----------------|-------------------|--------|
| 5 | 90 | 8 hours | Pass |
| 0 | 50 | 2 hours | Fail |
| 3 | 75 | 6 hours | Pass |
| 1 | 40 | 3 hours | Fail |

**Features (Input):**
- Hours Studied
- Attendance (%)
- Sleep Hours

**Target (Output):**
- Result (Pass/Fail) ← This is what we want to predict

---

### Why Do We Need Feature Engineering?

#### Reasons:

1. **Machines Don't Understand Raw Data**
   - Need structured, numerical format
   - Can't process text or images directly

2. **Some Features Are Not Helpful**
   - Student's favorite color probably doesn't affect grades
   - Need to remove noise

3. **Some Features Are Confusing**
   - Too many correlated features
   - Inconsistent scales

4. **Some Features Are Hidden**
   - May need to create combinations
   - Example: Study Hours × Attendance = Study Effectiveness

**Goal:**
Make data **clean, useful, and easy to understand** for the machine.

---

## Steps in Feature Engineering

### Overview

```
┌──────────────────────────────────────────┐
│  1️⃣  Cleaning and Preparing Data         │
│  - Handle missing values                  │
│  - Convert text to numbers                │
│  - Remove outliers                        │
└──────────────────────────────────────────┘
              ↓
┌──────────────────────────────────────────┐
│  2️⃣  Choosing the Best Features          │
│  - Feature selection                      │
│  - Remove irrelevant features             │
│  - Keep only useful information           │
└──────────────────────────────────────────┘
              ↓
┌──────────────────────────────────────────┐
│  3️⃣  Creating New Features               │
│  - Feature extraction                     │
│  - Combine existing features              │
│  - Engineer domain-specific features      │
└──────────────────────────────────────────┘
              ↓
┌──────────────────────────────────────────┐
│  4️⃣  Dimensionality Reduction            │
│  - Reduce number of features              │
│  - Keep essential information             │
│  - Use techniques like PCA                │
└──────────────────────────────────────────┘
```

---

### 1. Cleaning and Preparing Data

#### Fill Missing Values
```python
# Use average for numerical data
df['sleep_hours'].fillna(df['sleep_hours'].mean(), inplace=True)

# Use mode for categorical data
df['gender'].fillna(df['gender'].mode()[0], inplace=True)
```

#### Convert Text to Numbers
```python
# Binary encoding
df['result'] = df['result'].map({'Pass': 1, 'Fail': 0})

# One-hot encoding
df = pd.get_dummies(df, columns=['major'])
```

---

### 2. Feature Selection – Picking the Most Helpful Features

**Concept:**
Not all information is useful. Some features may be:
- Repeated (redundant)
- Have little effect on prediction
- Add noise to the model

**Goal:**
Keep only features that actually help the model make better predictions.

---

## Feature Selection Techniques

### Overview

```
Feature Selection Methods
│
├── 1. Variance Threshold
├── 2. Mutual Information
├── 3. SelectKBest
└── 4. Model-Based Selection
```

---

### 1. Variance Threshold

#### Purpose:
Removes all features with **low variance** (features that don't vary much across samples and thus carry little information).

#### Key Idea:
```
If a column has almost the same value for everyone, it's not useful.

Example:
If all students slept 8 hours → not helpful for prediction
```

#### How It Works:
1. Calculate variance of each feature
2. Remove features where variance < threshold (default = 0)

**Formula:**
```
Variance = Σ(x - μ)² / n

where:
  x = each value
  μ = mean
  n = number of samples
```

#### Python Example:
```python
from sklearn.feature_selection import VarianceThreshold

selector = VarianceThreshold(threshold=0.1)
X_filtered = selector.fit_transform(X)

# Removes features with variance < 0.1
```

#### Use Case:
- ✅ Preprocessing step for high-dimensional data
- ✅ Suitable for numerical data
- ✅ Quick and computationally cheap

---

### 2. Mutual Information

#### Purpose:
Measures the **amount of information shared** between a feature and the target variable.

High mutual information = knowing the feature helps predict the target.

#### Key Idea:
```
Find out which features are most related to the target.

Example:
Attendance might be strongly linked to passing the exam.
```

#### Important Distinction:
```
Correlation: Captures only LINEAR relationships
Mutual Information: Captures ANY kind of dependency (linear or non-linear)
```

#### How It Works:
1. Estimate how much information a feature gives about the target
2. Scores range from **0** (no info) to **high value** (perfect info)

**Formula (Simplified):**
```
MI(X,Y) = Σ P(x,y) log(P(x,y) / (P(x)P(y)))

where:
  X = feature
  Y = target
  P(x,y) = joint probability
```

#### Python Example:
```python
from sklearn.feature_selection import mutual_info_classif

# For classification
mi_scores = mutual_info_classif(X, y)

# For regression
from sklearn.feature_selection import mutual_info_regression
mi_scores = mutual_info_regression(X, y)

# Select top features
import pandas as pd
mi_df = pd.DataFrame({'Feature': X.columns, 'MI_Score': mi_scores})
mi_df = mi_df.sort_values('MI_Score', ascending=False)
```

#### Use Case:
- ✅ Works for both **categorical** and **numerical** data
- ✅ Very useful when target is **non-linear** with input features
- ✅ Better than correlation for complex relationships

---

### 3. SelectKBest / SelectPercentile

#### Purpose:
General-purpose selection wrappers that choose **top K features** (or top X percentile) based on a scoring function.

#### Key Idea:
```
Pick the top 'K' best features — like choosing your top 5 ingredients for a recipe!
```

#### How It Works:
1. Calculate a univariate score for each feature using a **statistical test**
2. Select top K features (or top X%)

**Plug-and-play with different scoring functions:**
- **Chi-square** (for categorical)
- **Mutual information**
- **ANOVA F-value** (for numerical)

#### Python Example:
```python
from sklearn.feature_selection import SelectKBest, chi2, f_classif

# Select top 5 features using chi-square
selector = SelectKBest(score_func=chi2, k=5)
X_new = selector.fit_transform(X, y)

# Select top 10% features using ANOVA F-value
from sklearn.feature_selection import SelectPercentile
selector = SelectPercentile(score_func=f_classif, percentile=10)
X_new = selector.fit_transform(X, y)

# Get selected feature names
selected_features = X.columns[selector.get_support()]
print("Selected features:", selected_features)
```

#### Common Scoring Functions:

| Scoring Function | Use For | Description |
|-----------------|---------|-------------|
| **chi2** | Categorical features + Classification | Tests independence between feature and target |
| **f_classif** | Numerical features + Classification | ANOVA F-value between feature and target |
| **f_regression** | Numerical features + Regression | F-statistic of linear regression |
| **mutual_info_classif** | Any type + Classification | Non-linear dependency measure |
| **mutual_info_regression** | Any type + Regression | Non-linear dependency measure |

#### Use Case:
- ✅ Quick filtering based on relevance
- ✅ Works with **classification** or **regression**
- ✅ Easy to experiment with different K values

---

### 4. Model-Based Selection (e.g., Random Forest)

#### Purpose:
Uses a **machine learning model** to determine the importance of features, then selects based on importance scores.

#### Key Idea:
```
Some models (like decision trees and ensembles) can tell you which features 
were most helpful — much like a teacher identifying which exam questions 
contributed the most to determining grades.
```

#### How It Works:
1. Train a model (e.g., Random Forest, Logistic Regression)
2. Access `.feature_importances_` attribute
3. Remove features with low importance

#### Python Example:
```python
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_selection import SelectFromModel

# Train Random Forest
rf = RandomForestClassifier(n_estimators=100, random_state=42)
rf.fit(X_train, y_train)

# Get feature importances
importances = rf.feature_importances_

# Select features using threshold
selector = SelectFromModel(rf, threshold='median', prefit=True)
X_selected = selector.transform(X)

# Get selected feature names
selected_features = X.columns[selector.get_support()]
print("Selected features:", selected_features)

# Visualize feature importance
import pandas as pd
import matplotlib.pyplot as plt

feature_imp = pd.DataFrame({
    'Feature': X.columns,
    'Importance': importances
}).sort_values('Importance', ascending=False)

plt.figure(figsize=(10, 6))
plt.barh(feature_imp['Feature'], feature_imp['Importance'])
plt.xlabel('Importance')
plt.title('Feature Importance from Random Forest')
plt.show()
```

#### Common Models for Feature Selection:

| Model | Provides | Best For |
|-------|----------|----------|
| **Random Forest** | `.feature_importances_` | Classification, Regression |
| **Logistic Regression** | Coefficients | Binary Classification |
| **Lasso Regression** | Sparse coefficients (L1 regularization) | Regression with many features |
| **XGBoost** | `.feature_importances_` | High-performance selection |

#### Use Case:
- ✅ Model automatically identifies important features
- ✅ Works for both classification and regression
- ✅ Can capture **non-linear** relationships
- ✅ More accurate than filter methods

---

## Methods of Feature Selection

### Three Main Categories

```
Feature Selection Methods
│
├── 1️⃣  Filter Methods
│    (Statistical tests, independent of model)
│
├── 2️⃣  Wrapper Methods
│    (Evaluate feature combinations using model)
│
└── 3️⃣  Embedded Methods
│    (Feature selection during model training)
```

---

### 1. Filter Methods

#### Approach:
Select features based on **statistical tests** and **intrinsic properties** of the data — **independent** of any machine learning algorithm.

#### Key Characteristics:
- ✅ **Fast** and computationally efficient
- ✅ Useful for preprocessing large datasets
- ✅ Not tailored to a specific model
- ✅ Good for initial feature screening

#### Common Filter Methods:

| Method | Description | Use Case |
|--------|-------------|----------|
| **Variance Threshold** | Removes low-variance features | Remove constant/quasi-constant features |
| **Correlation Coefficient** | Measures linear relationship with target | Remove highly correlated features |
| **Chi-Square Test** | Tests independence (categorical) | Categorical features + Classification |
| **ANOVA F-Test** | Tests mean differences | Numerical features + Classification |
| **Mutual Information** | Measures dependency (linear + non-linear) | Any type of relationship |

#### Advantages:
- ⚡ Very fast
- 🧮 Simple to implement
- 📊 Works well for exploratory analysis

#### Disadvantages:
- ❌ Ignores feature interactions
- ❌ Doesn't consider model performance
- ❌ May miss important feature combinations

#### Example Workflow:
```python
from sklearn.feature_selection import SelectKBest, chi2

# Select top 10 features using chi-square test
selector = SelectKBest(chi2, k=10)
X_filtered = selector.fit_transform(X, y)
```

---

### 2. Wrapper Methods

#### Approach:
Evaluate **different combinations** of features using a **predictive model**. The performance (e.g., accuracy, RMSE) determines which features to keep.

#### Key Characteristics:
- ✅ **More accurate** than filter methods
- ⚠️ **Computationally expensive**
- ⚠️ Prone to **overfitting** if not carefully tuned
- ✅ Considers **feature interactions**

#### Common Wrapper Methods:

| Method | Description | Strategy |
|--------|-------------|----------|
| **Forward Selection** | Start with 0 features, add one at a time | Greedy addition |
| **Backward Elimination** | Start with all features, remove one at a time | Greedy removal |
| **Recursive Feature Elimination (RFE)** | Recursively removes least important features | Model-guided removal |
| **Exhaustive Search** | Try all possible combinations | Brute force (very slow) |

#### How RFE Works:
```
1. Train model with all features
2. Rank features by importance
3. Remove least important feature
4. Repeat until desired number of features
```

#### Python Example:
```python
from sklearn.feature_selection import RFE
from sklearn.linear_model import LogisticRegression

# Create model
model = LogisticRegression()

# Create RFE selector
rfe = RFE(estimator=model, n_features_to_select=5)
X_rfe = rfe.fit_transform(X, y)

# Get selected features
selected_features = X.columns[rfe.support_]
print("Selected features:", selected_features)

# Get feature ranking (1 = selected, >1 = not selected, ranked by importance)
print("Feature ranking:", rfe.ranking_)
```

#### Advantages:
- ✅ Considers model performance
- ✅ Captures feature interactions
- ✅ Usually better accuracy

#### Disadvantages:
- ❌ Computationally expensive
- ❌ Risk of overfitting
- ❌ Slow for large datasets

---

### 3. Embedded Methods

#### Approach:
Feature selection is **integrated within** the model training process. The model itself selects the important features during learning.

#### Key Characteristics:
- ✅ **Balance** between performance and computational cost
- ✅ **Model-specific**
- ✅ Automatically selects features during training
- ✅ Less prone to overfitting than wrapper methods

#### Common Embedded Methods:

| Method | Description | How It Works |
|--------|-------------|--------------|
| **Lasso (L1 Regularization)** | Shrinks coefficients to zero | Features with zero coefficients are removed |
| **Ridge (L2 Regularization)** | Shrinks coefficients (but not to zero) | Reduces feature impact but doesn't eliminate |
| **Elastic Net** | Combines L1 + L2 | Mix of Lasso and Ridge |
| **Tree-based Feature Importance** | Decision trees rank features | Uses `.feature_importances_` |
| **XGBoost/LightGBM** | Gradient boosting with built-in selection | Efficient and accurate |

#### Lasso Regression Example:
```python
from sklearn.linear_model import Lasso
from sklearn.feature_selection import SelectFromModel

# Train Lasso with regularization
lasso = Lasso(alpha=0.1)
lasso.fit(X_train, y_train)

# Select features with non-zero coefficients
selector = SelectFromModel(lasso, prefit=True)
X_selected = selector.transform(X)

# Get selected features
selected_features = X.columns[selector.get_support()]
print("Selected features:", selected_features)
```

#### Tree-Based Feature Importance:
```python
from sklearn.ensemble import RandomForestClassifier
import pandas as pd

# Train Random Forest
rf = RandomForestClassifier(n_estimators=100)
rf.fit(X_train, y_train)

# Get feature importance
importances = pd.DataFrame({
    'Feature': X.columns,
    'Importance': rf.feature_importances_
}).sort_values('Importance', ascending=False)

print(importances)
```

#### Advantages:
- ✅ Faster than wrapper methods
- ✅ Less overfitting than wrappers
- ✅ Integrated into training process

#### Disadvantages:
- ❌ Model-specific (not universal)
- ❌ Requires understanding of regularization

---

## Filter vs Wrapper vs Embedded

### Comprehensive Comparison Table

| Aspect | Filter Methods | Wrapper Methods | Embedded Methods |
|--------|---------------|-----------------|------------------|
| **Speed** | ⚡⚡⚡ Very Fast | 🐌 Slow | ⚡⚡ Moderate |
| **Accuracy** | ⭐⭐ Moderate | ⭐⭐⭐ High | ⭐⭐⭐ High |
| **Model Dependency** | Independent | Dependent | Dependent |
| **Feature Interactions** | ❌ Ignores | ✅ Considers | ✅ Considers |
| **Overfitting Risk** | Low | High | Moderate |
| **Computational Cost** | Low | High | Moderate |
| **Best For** | Large datasets, initial screening | Small to medium datasets, high accuracy | Balance of speed and accuracy |
| **Examples** | Variance, Correlation, Chi-square | RFE, Forward/Backward Selection | Lasso, Random Forest, XGBoost |

### When to Use Each:

```
┌────────────────────────────────────────┐
│  Use FILTER Methods when:              │
│  - You have a LARGE dataset            │
│  - You want QUICK initial screening    │
│  - You need model-INDEPENDENT results  │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  Use WRAPPER Methods when:             │
│  - You have SMALL to MEDIUM dataset    │
│  - You want MAXIMUM accuracy           │
│  - Computational cost is OK            │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  Use EMBEDDED Methods when:            │
│  - You want BALANCE of speed/accuracy  │
│  - You're using specific models        │
│  - You want integrated selection       │
└────────────────────────────────────────┘
```

---

## Dimensionality Reduction

### What is Dimensionality Reduction?

**Problem:**
When we have **too many features**, it's like giving the machine too many things to think about. Some may even confuse it.

**Solution:**
Dimensionality reduction means:
- ✅ Combining features
- ✅ Removing features
- ✅ Keeping only what's essential

**Goal:**
Reduce the number of features while **preserving** as much important information as possible.

---

### Example Technique: PCA (Principal Component Analysis)

**Think of it as:**
Squeezing a big photo into a smaller one, but still keeping the important parts visible.

#### How PCA Works:
1. Find directions of maximum variance in data
2. Project data onto these directions (principal components)
3. Keep only top components that explain most variance

#### Example:
```
Original: 100 features
After PCA: 10 principal components
Information retained: 95%
Computation: Much faster
```

#### Python Example:
```python
from sklearn.decomposition import PCA
import matplotlib.pyplot as plt

# Apply PCA
pca = PCA(n_components=10)
X_pca = pca.fit_transform(X)

# Check explained variance
print("Explained variance ratio:", pca.explained_variance_ratio_)
print("Cumulative variance:", pca.explained_variance_ratio_.cumsum())

# Visualize
plt.plot(range(1, 11), pca.explained_variance_ratio_.cumsum())
plt.xlabel('Number of Components')
plt.ylabel('Cumulative Explained Variance')
plt.title('PCA Analysis')
plt.show()
```

---

## Feature Selection vs Dimensionality Reduction

### Key Differences

| Aspect | Feature Selection | Dimensionality Reduction |
|--------|------------------|-------------------------|
| **What It Does** | Selects a **subset** of original features | Creates **new features** (combinations) |
| **Original Features** | Preserved (keeps some, removes others) | Transformed (creates new ones) |
| **Interpretability** | ✅ High (features remain same) | ⚠️ Lower (new features are combinations) |
| **Information Loss** | May lose some information | Tries to preserve maximum information |
| **Examples** | SelectKBest, RFE, Lasso | PCA, t-SNE, LDA |
| **Best For** | When you want to keep original features | When you have too many features |
| **Output** | Subset of original features | New set of features (components) |

### Visual Comparison:

```
Feature Selection:
────────────────
Original: [Age, Height, Weight, BMI, BloodPressure]
                     ↓ (Select best 3)
Selected: [Age, Weight, BloodPressure]
(Original features preserved)

Dimensionality Reduction (PCA):
───────────────────────────────
Original: [Age, Height, Weight, BMI, BloodPressure]
                     ↓ (Transform to 2 components)
Reduced: [PC1, PC2]
where:
  PC1 = 0.4×Age + 0.5×Height + 0.3×Weight + ...
  PC2 = 0.2×Age - 0.3×Height + 0.6×Weight + ...
(New features created)
```

### When to Use Each:

```
Use Feature Selection when:
✅ You want to keep interpretability
✅ Domain knowledge is important
✅ You need to explain which features matter
Example: Medical diagnosis (doctors need to understand)

Use Dimensionality Reduction when:
✅ You have many correlated features
✅ Visualization is important (reduce to 2D/3D)
✅ Computational efficiency matters
Example: Image processing (pixels are correlated)
```

---

## 5. Introduction to Models & Model Selection

### What is a Machine Learning Model?

**Definition:**
A model is like a **recipe** or **formula** the computer learns to make predictions.

**Analogy:**
```
Recipe for Cake:
Ingredients (Features) → Recipe (Model) → Cake (Prediction)

ML Model:
Input Data (Features) → Trained Model → Prediction (Output)
```

**How It Works:**
- The model **"learns"** from the data during the training process
- It discovers **patterns** and **relationships**
- Uses these patterns to make **predictions** on new data

---

### How to Select a Model?

#### Factors to Consider:

```
┌─────────────────────────────────────────┐
│  1️⃣  What is the PROBLEM TYPE?          │
│  - Classification (categories)           │
│  - Regression (numbers)                  │
│  - Clustering (grouping)                 │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  2️⃣  How much DATA do you have?         │
│  - Small dataset (<1000 samples)         │
│  - Medium (1000-100K)                    │
│  - Large (>100K samples)                 │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  3️⃣  Do you need EXPLAINABILITY?        │
│  - Yes: Use simpler models               │
│  - No: Can use complex models            │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  4️⃣  ACCURACY vs SPEED?                 │
│  - Need high accuracy: Complex models    │
│  - Need fast prediction: Simple models   │
└─────────────────────────────────────────┘
```

---

### Model Selection Guide

#### For Classification Problems:

| Data Size | Need Explainability? | Recommended Model |
|-----------|---------------------|-------------------|
| Small | Yes | Logistic Regression, Decision Tree |
| Small | No | SVM, KNN |
| Large | Yes | Decision Tree, Random Forest |
| Large | No | Random Forest, XGBoost, Neural Network |

#### For Regression Problems:

| Data Size | Need Explainability? | Recommended Model |
|-----------|---------------------|-------------------|
| Small | Yes | Linear Regression |
| Small | No | SVR, KNN Regression |
| Large | Yes | Decision Tree Regressor |
| Large | No | Random Forest, XGBoost, Neural Network |

#### For Clustering (Unsupervised):

| Data Characteristics | Recommended Model |
|---------------------|-------------------|
| Spherical clusters | K-Means |
| Arbitrary shaped clusters | DBSCAN |
| Hierarchical structure | Agglomerative Clustering |

---

### Common ML Algorithms Overview

```
Supervised Learning
│
├── Classification
│   ├── Logistic Regression (simple, interpretable)
│   ├── Decision Tree (interpretable, handles non-linear)
│   ├── Random Forest (high accuracy, ensemble)
│   ├── SVM (good for high-dimensional data)
│   ├── KNN (simple, instance-based)
│   ├── Naive Bayes (fast, probabilistic)
│   └── Neural Networks (complex patterns)
│
└── Regression
    ├── Linear Regression (simple, interpretable)
    ├── Polynomial Regression (non-linear relationships)
    ├── Ridge/Lasso (with regularization)
    ├── Decision Tree Regressor
    ├── Random Forest Regressor
    └── XGBoost (high performance)

Unsupervised Learning
│
├── Clustering
│   ├── K-Means (partition-based)
│   ├── DBSCAN (density-based)
│   └── Hierarchical (tree-based)
│
└── Dimensionality Reduction
    ├── PCA (linear)
    ├── t-SNE (non-linear, visualization)
    └── Autoencoder (neural network-based)
```

---

## 6. Model Training – Let the Learning Begin

### Step-by-Step: From Data to Model

#### Step 1: Input
```
Cleaned and engineered data
All preprocessing completed
Features selected
```

#### Step 2: Split the Data
```python
from sklearn.model_selection import train_test_split

# Split into training and test sets
X_train, X_test, y_train, y_test = train_test_split(
    X, y, 
    test_size=0.2,    # 20% for testing
    random_state=42   # For reproducibility
)

# Result:
# Training set: 80% (for learning)
# Test set: 20% (for checking performance)
```

**Why Split?**
- **Training set:** Model learns patterns
- **Test set:** Evaluate performance on unseen data
- Prevents overfitting

---

#### Step 3: Train the Model

**What Happens Here?**
The model tries to understand patterns between the **features** and the **target**.

```python
from sklearn.ensemble import RandomForestClassifier

# Create model
model = RandomForestClassifier(
    n_estimators=100,
    max_depth=10,
    random_state=42
)

# Train the model
model.fit(X_train, y_train)

# Model is now trained and ready to make predictions!
```

**During Training:**
1. Model examines training data
2. Learns relationships between features and target
3. Adjusts internal parameters
4. Minimizes prediction error

---

## Hyperparameter Tuning

### What Are Hyperparameters?

#### Definition:

**Parameter:**
- Learned by the model from the data
- Example: Weights in linear regression
- **Set during training**

**Hyperparameter:**
- A setting that you define **before** training the model
- Controls how the learning happens
- **Set before training**

**Analogy:**
```
Think of hyperparameters as the "settings" or "knobs" you can tune 
to improve model performance — like adjusting oven temperature 
when baking a cake.
```

---

### Examples of Hyperparameters

#### Common Hyperparameters by Model:

| Model | Hyperparameters | What They Control |
|-------|----------------|-------------------|
| **Decision Tree** | `max_depth`, `min_samples_split` | Tree complexity, overfitting |
| **Random Forest** | `n_estimators`, `max_depth`, `max_features` | Number of trees, tree depth, features per split |
| **KNN** | `n_neighbors`, `metric` | Number of neighbors, distance measure |
| **SVM** | `C`, `kernel`, `gamma` | Regularization, kernel type, kernel coefficient |
| **Neural Network** | `learning_rate`, `batch_size`, `epochs` | Training speed, data chunk size, training iterations |
| **XGBoost** | `learning_rate`, `max_depth`, `n_estimators` | Boosting speed, tree complexity, number of trees |

---

### Why Tune Hyperparameters?

**Reasons:**

1. ✅ **Improve model performance**
   - Better accuracy, lower error

2. ✅ **Avoid overfitting or underfitting**
   - Balance between too simple and too complex

3. ✅ **Make the model faster and more efficient**
   - Optimize training time and prediction speed

**Key Point:**
> The right hyperparameter values can significantly improve your results 
> without changing the model.

---

### Common Hyperparameter Tuning Techniques

#### 1. Grid Search

**Concept:**
Try **all possible combinations** of hyperparameters from a predefined grid.

**Example:**
```python
from sklearn.model_selection import GridSearchCV
from sklearn.ensemble import RandomForestClassifier

# Define hyperparameter grid
param_grid = {
    'n_estimators': [50, 100, 200],
    'max_depth': [5, 10, 15, None],
    'min_samples_split': [2, 5, 10]
}

# Create Grid Search
grid_search = GridSearchCV(
    estimator=RandomForestClassifier(),
    param_grid=param_grid,
    cv=5,              # 5-fold cross-validation
    scoring='accuracy',
    n_jobs=-1          # Use all CPU cores
)

# Fit and find best parameters
grid_search.fit(X_train, y_train)

# Best hyperparameters
print("Best parameters:", grid_search.best_params_)
print("Best score:", grid_search.best_score_)

# Use best model
best_model = grid_search.best_estimator_
```

**Advantages:**
- ✅ Exhaustive search
- ✅ Guaranteed to find best combination in grid

**Disadvantages:**
- ❌ Very slow for large grids
- ❌ Computationally expensive

---

#### 2. Random Search

**Concept:**
Randomly sample combinations from the hyperparameter space.

**Example:**
```python
from sklearn.model_selection import RandomizedSearchCV
from scipy.stats import randint, uniform

# Define hyperparameter distributions
param_distributions = {
    'n_estimators': randint(50, 300),
    'max_depth': [5, 10, 15, 20, None],
    'min_samples_split': randint(2, 20),
    'min_samples_leaf': randint(1, 10)
}

# Create Random Search
random_search = RandomizedSearchCV(
    estimator=RandomForestClassifier(),
    param_distributions=param_distributions,
    n_iter=100,        # Number of random combinations to try
    cv=5,
    scoring='accuracy',
    random_state=42,
    n_jobs=-1
)

# Fit and find best parameters
random_search.fit(X_train, y_train)

print("Best parameters:", random_search.best_params_)
print("Best score:", random_search.best_score_)
```

**Advantages:**
- ✅ Faster than Grid Search
- ✅ Can explore wider range
- ✅ Often finds good solution quickly

**Disadvantages:**
- ❌ Not exhaustive
- ❌ Might miss optimal combination

---

#### 3. Bayesian Optimization

**Concept:**
Uses previous evaluation results to choose next hyperparameters intelligently.

**Example:**
```python
from skopt import BayesSearchCV
from sklearn.ensemble import RandomForestClassifier

# Define search space
search_spaces = {
    'n_estimators': (50, 300),
    'max_depth': (5, 30),
    'min_samples_split': (2, 20),
    'min_samples_leaf': (1, 10)
}

# Create Bayesian Search
bayes_search = BayesSearchCV(
    estimator=RandomForestClassifier(),
    search_spaces=search_spaces,
    n_iter=50,
    cv=5,
    scoring='accuracy',
    random_state=42,
    n_jobs=-1
)

# Fit
bayes_search.fit(X_train, y_train)

print("Best parameters:", bayes_search.best_params_)
```

**Advantages:**
- ✅ More efficient than Random Search
- ✅ Learns from previous trials
- ✅ Good for expensive models

**Disadvantages:**
- ❌ More complex to implement
- ❌ Requires additional libraries

---

## Cross-Validation

### What is Cross-Validation?

**Problem:**
A single train/test split might give a **lucky or unlucky** result.

**Example:**
```
Split 1: Test set has easy examples → Accuracy = 95% (lucky!)
Split 2: Test set has hard examples → Accuracy = 75% (unlucky!)

Which is the TRUE performance?
```

**Solution:**
Cross-validation helps check if your model performs **consistently**.

**How:**
It splits data **multiple times** and tests the model more than once.

---

### How It Works – K-Fold Cross-Validation

#### Process:

1. **Split data into K equal parts** (called "folds")
2. **Train on K-1 folds**, test on the 1 remaining fold
3. **Repeat K times**, each time changing which fold is used for testing
4. **Calculate average score** = more reliable performance estimate

#### Example: 5-Fold Cross-Validation

```
Fold 1: [Test] [Train] [Train] [Train] [Train] → Accuracy: 85%
Fold 2: [Train] [Test] [Train] [Train] [Train] → Accuracy: 87%
Fold 3: [Train] [Train] [Test] [Train] [Train] → Accuracy: 84%
Fold 4: [Train] [Train] [Train] [Test] [Train] → Accuracy: 86%
Fold 5: [Train] [Train] [Train] [Train] [Test] → Accuracy: 88%

Average Accuracy: (85 + 87 + 84 + 86 + 88) / 5 = 86%
```

**Benefit:**
Train on **80%**, test on **20%**, repeat **5 times** with different splits.

---

### Python Implementation

```python
from sklearn.model_selection import cross_val_score
from sklearn.ensemble import RandomForestClassifier

# Create model
model = RandomForestClassifier(n_estimators=100, random_state=42)

# Perform 5-fold cross-validation
scores = cross_val_score(
    model, 
    X, y, 
    cv=5,              # 5 folds
    scoring='accuracy'
)

print("Cross-validation scores:", scores)
print("Mean accuracy:", scores.mean())
print("Standard deviation:", scores.std())

# Output example:
# Cross-validation scores: [0.85, 0.87, 0.84, 0.86, 0.88]
# Mean accuracy: 0.86
# Standard deviation: 0.015
```

---

### Benefits of Cross-Validation

```
┌────────────────────────────────────────┐
│  ✅ More Reliable Performance Estimate │
│  Uses all data for both training and   │
│  testing (at different times)          │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  ✅ Reduces Overfitting Risk           │
│  Model must perform well on multiple   │
│  different test sets                   │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  ✅ Better Use of Limited Data         │
│  Especially important for small        │
│  datasets                              │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  ✅ Detects Variance in Performance    │
│  Standard deviation shows consistency  │
└────────────────────────────────────────┘
```

---

### Cross-Validation Techniques

#### 1. K-Fold Cross-Validation
**Most common method**

```python
from sklearn.model_selection import KFold, cross_val_score

# Define K-Fold
kfold = KFold(n_splits=5, shuffle=True, random_state=42)

# Perform cross-validation
scores = cross_val_score(model, X, y, cv=kfold)
```

**Use When:**
- ✅ Standard datasets
- ✅ Want reliable estimate
- ✅ Default choice

---

#### 2. Stratified K-Fold
**Maintains class distribution in each fold**

```python
from sklearn.model_selection import StratifiedKFold

# Define Stratified K-Fold
skfold = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)

# Perform cross-validation
scores = cross_val_score(model, X, y, cv=skfold)
```

**Use When:**
- ✅ **Imbalanced datasets**
- ✅ Classification problems
- ✅ Want each fold to have same class ratio

**Example:**
```
Original dataset: 90% Class 0, 10% Class 1

Each fold will have:
- 90% Class 0
- 10% Class 1

(Regular K-Fold might create folds with 95% Class 0)
```

---

#### 3. Leave-One-Out (LOO) Cross-Validation
**Each sample used once as test set**

```python
from sklearn.model_selection import LeaveOneOut

# Define LOO
loo = LeaveOneOut()

# Perform cross-validation
scores = cross_val_score(model, X, y, cv=loo)
```

**Characteristics:**
- If dataset has N samples, creates N folds
- Each fold: 1 test sample, N-1 training samples

**Use When:**
- ✅ **Very small datasets** (<100 samples)
- ⚠️ Computationally expensive for large datasets

**Example:**
```
Dataset: 50 samples

LOO creates 50 folds:
Fold 1:  Test on sample 1,  Train on samples 2-50
Fold 2:  Test on sample 2,  Train on samples 1,3-50
...
Fold 50: Test on sample 50, Train on samples 1-49
```

---

## 7. Model Evaluation

### Why Evaluate Models?

**Problem:**
A model that performs well on **training data** might fail on **new data**.

**Why This Happens:**
- Model memorized training data (overfitting)
- Training data not representative
- Model too simple (underfitting)

**Solution:**
That's why we evaluate using **unseen test data**.

---

### Evaluation Helps Us Answer:

```
┌─────────────────────────────────────────┐
│  ❓ Is the model ACCURATE?              │
│  Does it make correct predictions?      │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  ❓ Is it making too many MISTAKES?     │
│  What type of errors (false positives   │
│  vs false negatives)?                   │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  ❓ Does it work well for ALL types     │
│  of data, not just training examples?   │
└─────────────────────────────────────────┘
```

---

### Common Metrics for Model Evaluation

#### For Classification Problems:

| Metric | Formula | What It Measures | When to Use |
|--------|---------|------------------|-------------|
| **Accuracy** | (TP + TN) / Total | Overall correctness | Balanced datasets |
| **Precision** | TP / (TP + FP) | "Of all positive predictions, how many are correct?" | When false positives are costly |
| **Recall (Sensitivity)** | TP / (TP + FN) | "Of all actual positives, how many did we find?" | When false negatives are costly |
| **F1-Score** | 2 × (Precision × Recall) / (Precision + Recall) | Balance of precision and recall | Imbalanced datasets |
| **ROC-AUC** | Area under ROC curve | Model's ability to distinguish classes | Comparing models |
| **Confusion Matrix** | Visual table of TP, TN, FP, FN | Detailed error analysis | Understanding error types |

**Legend:**
- TP = True Positive
- TN = True Negative
- FP = False Positive
- FN = False Negative

---

#### For Regression Problems:

| Metric | Formula | What It Measures | When to Use |
|--------|---------|------------------|-------------|
| **Mean Absolute Error (MAE)** | (1/n) Σ\|y - ŷ\| | Average absolute difference | Easy to interpret, less sensitive to outliers |
| **Mean Squared Error (MSE)** | (1/n) Σ(y - ŷ)² | Average squared difference | Penalizes large errors more |
| **Root Mean Squared Error (RMSE)** | √MSE | Square root of MSE | Same units as target variable |
| **R² Score** | 1 - (SS_res / SS_tot) | Proportion of variance explained | Overall model goodness-of-fit |
| **Mean Absolute Percentage Error (MAPE)** | (100/n) Σ\|(y - ŷ)/y\| | Percentage error | When relative error matters |

**Legend:**
- y = Actual value
- ŷ = Predicted value
- n = Number of samples

---

### Python Examples

#### Classification Metrics:
```python
from sklearn.metrics import (
    accuracy_score, 
    precision_score, 
    recall_score, 
    f1_score,
    confusion_matrix,
    classification_report
)

# Make predictions
y_pred = model.predict(X_test)

# Calculate metrics
accuracy = accuracy_score(y_test, y_pred)
precision = precision_score(y_test, y_pred)
recall = recall_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)

print(f"Accuracy: {accuracy:.2f}")
print(f"Precision: {precision:.2f}")
print(f"Recall: {recall:.2f}")
print(f"F1-Score: {f1:.2f}")

# Confusion Matrix
cm = confusion_matrix(y_test, y_pred)
print("\nConfusion Matrix:")
print(cm)

# Detailed report
print("\nClassification Report:")
print(classification_report(y_test, y_pred))
```

---

#### Regression Metrics:
```python
from sklearn.metrics import (
    mean_absolute_error,
    mean_squared_error,
    r2_score
)
import numpy as np

# Make predictions
y_pred = model.predict(X_test)

# Calculate metrics
mae = mean_absolute_error(y_test, y_pred)
mse = mean_squared_error(y_test, y_pred)
rmse = np.sqrt(mse)
r2 = r2_score(y_test, y_pred)

print(f"MAE: {mae:.2f}")
print(f"MSE: {mse:.2f}")
print(f"RMSE: {rmse:.2f}")
print(f"R² Score: {r2:.2f}")
```

---

## Overfitting and Underfitting

### What Makes a Good Model?

A good model:
- ✅ **Learns patterns** from training data
- ✅ **Generalizes well** to new (unseen) data
- ✅ Makes **accurate predictions** — not just memorizing

---

### What Is Overfitting?

**Definition:**
Overfitting = The model learns **too much**, including **noise and outliers** in the training data.

**Characteristics:**
- ❌ Too complex — tries to fit everything perfectly
- ✅ Performs **well on training data**
- ❌ Performs **poorly on test data**

**Analogy:**
```
Like a student who memorizes textbook examples word-for-word
but can't solve slightly different problems in the exam.
```

#### Signs of Overfitting:

```
Training Accuracy: 98%  ✅
Test Accuracy:     65%  ❌

→ Large gap indicates overfitting!
```

**Visual Example:**
```
Training Data Points: ●●●●●●●●
Simple Model:         ————————  (straight line)
Overfitted Model:     ∿∿∿∿∿∿∿∿  (wavy line through every point)

The wavy line fits training perfectly but fails on new data.
```

---

### What Is Underfitting?

**Definition:**
Underfitting = The model **doesn't learn enough** from the training data.

**Characteristics:**
- ❌ Too simple — can't capture patterns
- ❌ Performs **poorly on training data**
- ❌ Performs **poorly on test data**

**Analogy:**
```
Like using a ruler to draw a curve — it's too simple 
for the complexity of the data.
```

#### Signs of Underfitting:

```
Training Accuracy: 60%  ❌
Test Accuracy:     58%  ❌

→ Both low indicates underfitting!
```

**Visual Example:**
```
Data Points:    ●  ●●  ●   ●●● (follows curve)
                   ●    ●●
Simple Model:   ————————————— (straight line - misses pattern)

The straight line is too simple to capture the curved pattern.
```

---

### The Sweet Spot: Good Fit

```
Training Accuracy: 85%  ✅
Test Accuracy:     83%  ✅

→ Small gap, both high = Good fit!
```

**Visual Comparison:**

```
┌─────────────────────────────────────────┐
│         UNDERFITTING                     │
│  - Too simple                            │
│  - Misses patterns                       │
│  - High bias, low variance               │
│  Training: Low ❌  Test: Low ❌          │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│         GOOD FIT                         │
│  - Just right complexity                 │
│  - Captures true patterns                │
│  - Balanced                              │
│  Training: High ✅  Test: High ✅        │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│         OVERFITTING                      │
│  - Too complex                           │
│  - Memorizes noise                       │
│  - Low bias, high variance               │
│  Training: High ✅  Test: Low ❌         │
└─────────────────────────────────────────┘
```

---

### How to Fix Underfitting

```
┌────────────────────────────────────────┐
│  1️⃣  Use More Complex Model            │
│  - Increase model capacity              │
│  - Add more layers (neural networks)    │
│  - Use polynomial features              │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  2️⃣  Add More Features                 │
│  - Include more relevant information    │
│  - Feature engineering                  │
│  - Create interaction features          │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  3️⃣  Reduce Regularization             │
│  - Decrease regularization strength     │
│  - Allow model more flexibility         │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  4️⃣  Train Longer                      │
│  - Increase number of epochs            │
│  - Give model more time to learn        │
└────────────────────────────────────────┘
```

**Python Example:**
```python
# Before (Underfitting)
model = DecisionTreeClassifier(max_depth=2)  # Too simple

# After (Better)
model = DecisionTreeClassifier(max_depth=10)  # More complex

# Or switch to more powerful model
from sklearn.ensemble import RandomForestClassifier
model = RandomForestClassifier(n_estimators=100)
```

---

### How to Fix Overfitting

```
┌────────────────────────────────────────┐
│  1️⃣  Get More Training Data            │
│  - Collect more samples                 │
│  - Data augmentation (for images)       │
│  - More data reduces memorization       │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  2️⃣  Simplify the Model                │
│  - Reduce model complexity              │
│  - Decrease number of parameters        │
│  - Use shallower trees                  │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  3️⃣  Use Regularization                │
│  - Add L1/L2 regularization             │
│  - Penalize large weights               │
│  - Prevent over-complex patterns        │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  4️⃣  Feature Selection                 │
│  - Remove irrelevant features           │
│  - Reduce noise in data                 │
│  - Focus on important features          │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  5️⃣  Early Stopping                    │
│  - Stop training when validation        │
│    performance stops improving          │
│  - Prevents memorization                │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  6️⃣  Dropout (Neural Networks)         │
│  - Randomly drop neurons during         │
│    training                             │
│  - Forces network to be more robust     │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  7️⃣  Cross-Validation                  │
│  - Use K-fold cross-validation          │
│  - Ensures consistent performance       │
└────────────────────────────────────────┘
```

**Python Examples:**
```python
# 1. Simplify Model
# Before (Overfitting)
model = DecisionTreeClassifier(max_depth=None)  # Too complex

# After (Better)
model = DecisionTreeClassifier(max_depth=5)     # Limited depth

# 2. Regularization
from sklearn.linear_model import Ridge

# Add L2 regularization
model = Ridge(alpha=1.0)  # Higher alpha = more regularization

# 3. Early Stopping (Neural Networks)
from sklearn.neural_network import MLPClassifier

model = MLPClassifier(
    early_stopping=True,
    validation_fraction=0.2,
    n_iter_no_change=10  # Stop if no improvement for 10 iterations
)

# 4. Cross-Validation
from sklearn.model_selection import cross_val_score

scores = cross_val_score(model, X, y, cv=5)
print(f"CV Score: {scores.mean():.2f} (+/- {scores.std():.2f})")
```

---

## 8. Deployment

### What is Model Deployment?

**Definition:**
Model deployment is the process of taking a machine learning model that has been **trained and tested**, and making it **available for real-world use**.

**Goal:**
Once your model makes accurate predictions, you want it to:
- ✅ Run outside your notebook/development environment
- ✅ Be used by other people (via website, app, or system)
- ✅ Make predictions on new, real-world data
- ✅ Integrate with existing business processes

---

### Why Deploy?

```
Development Environment:
┌────────────────────────────────┐
│  Jupyter Notebook              │
│  model.predict([new_data])     │
│  → Only YOU can use it         │
└────────────────────────────────┘

After Deployment:
┌────────────────────────────────┐
│  Web Application               │
│  Mobile App                    │
│  Cloud Service                 │
│  → ANYONE can use it           │
└────────────────────────────────┘
```

---

### Components of Model Deployment

#### 1. Model Serialization (Saving the Model)

**Save trained model to file:**
```python
import pickle
import joblib

# Method 1: Using Pickle
with open('model.pkl', 'wb') as file:
    pickle.dump(model, file)

# Method 2: Using Joblib (better for large models)
joblib.dump(model, 'model.joblib')

# Load model later
model = joblib.load('model.joblib')
```

---

#### 2. API Development (Make Model Accessible)

**Create a REST API using Flask:**
```python
from flask import Flask, request, jsonify
import joblib
import numpy as np

# Load model
model = joblib.load('model.joblib')

# Create Flask app
app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    # Get data from request
    data = request.get_json()
    features = np.array(data['features']).reshape(1, -1)
    
    # Make prediction
    prediction = model.predict(features)
    
    # Return result
    return jsonify({'prediction': int(prediction[0])})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
```

**Client can now make requests:**
```python
import requests

url = 'http://localhost:5000/predict'
data = {'features': [5, 90, 8]}  # Hours studied, attendance, sleep

response = requests.post(url, json=data)
result = response.json()
print(f"Prediction: {result['prediction']}")
```

---

#### 3. Containerization (Package Everything)

**Use Docker to package model + dependencies:**
```dockerfile
# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY model.joblib .
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
```

**Build and run:**
```bash
docker build -t ml-model-api .
docker run -p 5000:5000 ml-model-api
```

---

#### 4. Cloud Deployment

**Deploy to cloud platforms:**

| Platform | Difficulty | Best For |
|----------|-----------|----------|
| **Heroku** | Easy | Small projects, prototypes |
| **AWS SageMaker** | Medium | Production ML workflows |
| **Google Cloud AI Platform** | Medium | Google ecosystem integration |
| **Azure ML** | Medium | Microsoft ecosystem |
| **Streamlit Cloud** | Very Easy | Quick demos, dashboards |

**Example: Deploy with Streamlit**
```python
import streamlit as st
import joblib

# Load model
model = joblib.load('model.joblib')

# Create UI
st.title('Student Pass/Fail Predictor')

hours = st.slider('Hours Studied', 0, 10, 5)
attendance = st.slider('Attendance %', 0, 100, 80)
sleep = st.slider('Sleep Hours', 0, 12, 7)

if st.button('Predict'):
    features = [[hours, attendance, sleep]]
    prediction = model.predict(features)[0]
    
    if prediction == 1:
        st.success('✅ Prediction: PASS')
    else:
        st.error('❌ Prediction: FAIL')
```

---

#### 5. Monitoring and Logging

**Track model performance in production:**
```python
import logging
from datetime import datetime

logging.basicConfig(filename='predictions.log', level=logging.INFO)

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    features = np.array(data['features']).reshape(1, -1)
    
    # Make prediction
    prediction = model.predict(features)
    
    # Log prediction
    logging.info(f"{datetime.now()} - Input: {features} - Prediction: {prediction[0]}")
    
    return jsonify({'prediction': int(prediction[0])})
```

---

## 8. Post-Deployment: Monitor & Maintain

### Why Monitoring Matters

**Problem:**
Deployment isn't the end — models can degrade over time!

**Reasons for Model Degradation:**
- 📉 **Data drift** - Input data changes over time
- 📉 **Concept drift** - Relationship between features and target changes
- 📉 **New patterns** - Real world evolves, training data becomes outdated

---

### Post-Deployment Tasks

```
┌────────────────────────────────────────┐
│  1️⃣  Monitor Model Performance         │
│  - Track accuracy over time             │
│  - Set up alerts for drops              │
│  - Compare predictions vs actual        │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  2️⃣  Handle User Feedback and Bugs     │
│  - Collect user reports                 │
│  - Fix incorrect predictions            │
│  - Improve edge cases                   │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  3️⃣  Update Model with New Data        │
│  - Retrain periodically                 │
│  - Include recent data                  │
│  - A/B test new vs old model            │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  4️⃣  Version Control                   │
│  - Track model versions                 │
│  - Rollback if needed                   │
│  - Document changes                     │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  5️⃣  Scale as Needed                   │
│  - Handle increased traffic             │
│  - Optimize for speed                   │
│  - Load balancing                       │
└────────────────────────────────────────┘
```

---

### Monitoring Example

```python
from datetime import datetime
import pandas as pd

class ModelMonitor:
    def __init__(self, model, threshold=0.80):
        self.model = model
        self.threshold = threshold
        self.predictions_log = []
        
    def predict_and_log(self, X, y_true=None):
        # Make prediction
        y_pred = self.model.predict(X)
        
        # Log
        log_entry = {
            'timestamp': datetime.now(),
            'prediction': y_pred,
            'actual': y_true
        }
        self.predictions_log.append(log_entry)
        
        # Check performance if actual label available
        if y_true is not None:
            accuracy = (y_pred == y_true).mean()
            
            if accuracy < self.threshold:
                self.send_alert(accuracy)
        
        return y_pred
    
    def send_alert(self, accuracy):
        print(f"⚠️ ALERT: Model accuracy dropped to {accuracy:.2%}")
        print("Consider retraining the model!")
        
    def get_performance_report(self):
        df = pd.DataFrame(self.predictions_log)
        df = df[df['actual'].notna()]
        
        accuracy = (df['prediction'] == df['actual']).mean()
        
        print(f"Overall Accuracy: {accuracy:.2%}")
        print(f"Total Predictions: {len(df)}")
        
        return df

# Usage
monitor = ModelMonitor(model, threshold=0.80)

# Make predictions with monitoring
predictions = monitor.predict_and_log(X_new, y_true=y_actual)

# Get report
report = monitor.get_performance_report()
```

---

## Deployment Workflow Summary

```
┌─────────────────────────────────────────────────┐
│  DEVELOPMENT                                     │
│  1. Train model                                  │
│  2. Evaluate performance                         │
│  3. Save model (pickle/joblib)                   │
└──────────────────┬──────────────────────────────┘
                   ↓
┌─────────────────────────────────────────────────┐
│  PACKAGING                                       │
│  4. Create API (Flask/FastAPI)                   │
│  5. Containerize (Docker)                        │
│  6. Write documentation                          │
└──────────────────┬──────────────────────────────┘
                   ↓
┌─────────────────────────────────────────────────┐
│  DEPLOYMENT                                      │
│  7. Deploy to cloud (AWS/GCP/Azure/Heroku)       │
│  8. Set up monitoring                            │
│  9. Configure logging                            │
└──────────────────┬──────────────────────────────┘
                   ↓
┌─────────────────────────────────────────────────┐
│  MAINTENANCE                                     │
│  10. Monitor performance                         │
│  11. Collect feedback                            │
│  12. Retrain with new data                       │
│  13. Update and redeploy                         │
└─────────────────────────────────────────────────┘
```

---

## Summary: Complete ML Pipeline

### End-to-End Overview

```
1. PROBLEM DEFINITION
   ↓
2. DATA COLLECTION
   ↓
3. DATA PREPROCESSING
   - Handle missing values
   - Encode categorical features
   - Scale numerical features
   ↓
4. FEATURE ENGINEERING
   - Feature selection
   - Feature creation
   - Dimensionality reduction
   ↓
5. MODEL SELECTION
   - Choose algorithm
   - Consider constraints
   ↓
6. MODEL TRAINING
   - Split data
   - Train model
   - Tune hyperparameters
   - Cross-validation
   ↓
7. MODEL EVALUATION
   - Calculate metrics
   - Check for overfitting/underfitting
   - Validate performance
   ↓
8. DEPLOYMENT
   - Save model
   - Create API
   - Deploy to production
   - Monitor and maintain
```

---

## Further Reading and Resources

### Recommended Books

1. **Hands-On Machine Learning with Scikit-Learn, Keras & TensorFlow**
   - **Author:** Aurélien Géron
   - **Best For:** Practical ML implementation
   - **Topics:** Complete ML pipeline, deep learning

2. **Pattern Recognition and Machine Learning**
   - **Author:** Christopher Bishop
   - **Best For:** Theoretical foundations
   - **Topics:** Statistical approaches to ML

3. **The Hundred-Page Machine Learning Book**
   - **Author:** Andriy Burkov
   - **Best For:** Quick comprehensive overview
   - **Topics:** All essential ML concepts

---

### Online Resources

#### Documentation:
- 📚 [Scikit-learn User Guide](https://scikit-learn.org/stable/user_guide.html)
- 📚 [Pandas Documentation](https://pandas.pydata.org/docs/)
- 📚 [NumPy Documentation](https://numpy.org/doc/)

#### Tutorials:
- 🎓 [Kaggle Learn](https://www.kaggle.com/learn)
- 🎓 [Google's ML Crash Course](https://developers.google.com/machine-learning/crash-course)
- 🎓 [Fast.ai Practical Deep Learning](https://www.fast.ai/)

#### Datasets:
- 📊 [Kaggle Datasets](https://www.kaggle.com/datasets)
- 📊 [UCI ML Repository](https://archive.ics.uci.edu/ml/index.php)
- 📊 [Google Dataset Search](https://datasetsearch.research.google.com/)

#### Practice:
- 💻 [Kaggle Competitions](https://www.kaggle.com/competitions)
- 💻 [DrivenData](https://www.drivendata.org/)
- 💻 [ML Contests](https://mlcontests.com/)

---

## Key Takeaways

### Must Remember Concepts:

```
✅ ML Pipeline has 8 main steps:
   Problem → Data → Preprocessing → Features → 
   Model → Training → Evaluation → Deployment

✅ Data Preprocessing is CRUCIAL:
   - Handle missing values
   - Encode categories
   - Scale features

✅ Feature Engineering can make or break a model:
   - Good features > Complex algorithms
   - Use selection and reduction wisely

✅ Always split data:
   - Training set (learn)
   - Test set (evaluate)
   - Use cross-validation for robustness

✅ Watch for overfitting and underfitting:
   - Overfitting: Great on training, poor on test
   - Underfitting: Poor on both
   - Goal: Good generalization

✅ Deployment is not the end:
   - Monitor performance
   - Retrain periodically
   - Handle feedback
```

---

## Practice Exercises

### Exercise 1: Complete Pipeline
```
Task: Build end-to-end ML pipeline for student performance prediction

Dataset: Student grades, study hours, attendance
Target: Pass/Fail

Steps:
1. Load and explore data
2. Handle missing values
3. Encode categorical features
4. Scale numerical features
5. Select best features
6. Train 3 different models
7. Evaluate and compare
8. Choose best model
9. Save and deploy
```

### Exercise 2: Hyperparameter Tuning
```
Task: Optimize Random Forest performance

Steps:
1. Start with default parameters
2. Use GridSearchCV
3. Try RandomizedSearchCV
4. Compare results
5. Analyze which parameters matter most
```

### Exercise 3: Handle Imbalanced Data
```
Task: Classification with 95% one class, 5% other

Techniques to try:
1. Stratified K-Fold CV
2. Class weights
3. SMOTE (oversampling)
4. Undersampling
5. Different evaluation metrics (F1, ROC-AUC)
```

---

## Thank You!

### Course Information
- **Module:** IT2011 - Artificial Intelligence and Machine Learning
- **Lecture:** 4 - Machine Learning Pipeline
- **Lecturer:** Dr. Lakmini Abeywardhana
- **Institution:** SLIIT - Sri Lanka Institute of Information Technology
- **Faculty:** Faculty of Computing
- **Academic Year:** Year 02, Semester 01
- **Student:** IT24103352
- **Date Created:** 2025-10-23

---

### Next Steps

**What's Coming Next:**
- Lecture 5: Introduction to Supervised Learning
- Lecture 6: Unsupervised Learning
- Lecture 7: Neural Networks and Deep Learning

**Recommended Practice:**
1. ✅ Complete hands-on lab exercises
2. ✅ Work on Kaggle datasets
3. ✅ Build your own ML pipeline project
4. ✅ Review all preprocessing techniques

---

### Questions for GitHub Copilot

**If you need help, ask me:**
- "Explain the difference between overfitting and underfitting with examples from my lecture notes"
- "Help me implement cross-validation on my dataset"
- "Review my feature engineering code in `Labs/feature-engineering.py`"
- "Create a checklist for deploying my ML model"
- "Explain when to use Grid Search vs Random Search for hyperparameter tuning"

---

**End of Lecture 4**

**Total Pages:** 64  
**Completion Status:** ✅ Fully converted to Markdown

---
