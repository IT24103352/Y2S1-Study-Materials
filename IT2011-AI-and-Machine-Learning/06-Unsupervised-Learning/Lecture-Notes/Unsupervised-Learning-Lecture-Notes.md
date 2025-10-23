# LECTURE 6 - Introduction to Unsupervised Learning

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-01-23

---

## Table of Contents

- [What is Unsupervised Learning?](#what-is-unsupervised-learning)
- [K-Means Clustering](#k-means-clustering)
- [Hierarchical Clustering](#hierarchical-clustering)
- [Other Clustering Methods](#other-clustering-methods)

---

## What is Unsupervised Learning?

### Definition

**Unsupervised learning** is a type of machine learning where the algorithm is trained on **unlabeled data**, meaning the data does not come with predefined outputs or categories.

**Key Characteristic:**  
The system tries to **discover hidden patterns, structures, or relationships** within the data on its own.

---

### Comparison: Supervised vs Unsupervised

```
SUPERVISED LEARNING:
┌────────────────────────────────┐
│  Input: Features + Labels      │
│  Example: (Height, Weight) → Class│
│  Goal: Learn mapping           │
│  Output: Predictions           │
└────────────────────────────────┘

UNSUPERVISED LEARNING:
┌────────────────────────────────┐
│  Input: Features only          │
│  Example: (Height, Weight)     │
│  Goal: Find patterns           │
│  Output: Groups/Structures     │
└────────────────────────────────┘
```

---

### Key Differences

| Aspect | Supervised Learning | Unsupervised Learning |
|--------|--------------------|-----------------------|
| **Data** | Labeled (with answers) | Unlabeled (no answers) |
| **Goal** | Predict output | Discover patterns |
| **Examples** | Classification, Regression | Clustering, Dimensionality Reduction |
| **Guidance** | Teacher provides feedback | Self-guided discovery |
| **Use Cases** | Spam detection, Price prediction | Customer segmentation, Anomaly detection |

---

### Types of Unsupervised Learning

```
Unsupervised Learning
│
├── 1. Clustering
│   ├── K-Means
│   ├── Hierarchical
│   ├── DBSCAN
│   └── Gaussian Mixture Models
│
├── 2. Dimensionality Reduction
│   ├── PCA (Principal Component Analysis)
│   ├── t-SNE
│   └── Autoencoders
│
└── 3. Association Rule Learning
    ├── Apriori Algorithm
    └── Market Basket Analysis
```

---

## K-Means Clustering

### Overview

**Definition:**  
K-means clustering is a popular unsupervised machine learning algorithm used for **data segmentation** and **grouping similar data points** into clusters.

**Applications:**
- 📊 Data analysis
- 🖼️ Image processing
- 👥 Customer segmentation
- 📍 Location-based grouping
- 🏷️ Product categorization

---

### What is K?

**K = Number of clusters**

```
Example:
  K = 2 → Two groups
  K = 3 → Three groups
  K = 5 → Five groups
```

**Key Question:**  
How many groups should we divide the data into?

---

## K-Means Algorithm - Step by Step

### Example Data Visualization

**Initial Data:**
```
      y
  6   │    ●
      │  ●   ●
  4   │●      
      │    ●
  2   │  ●  ●
      │ ●
  0   └──────────── x
      0  2  4  6  8

8 data points scattered in 2D space
```

---

### Step 1: Initialization

**Randomly select K initial centroids**

**For K=2:**
```
      y
  6   │    ●
      │  ●   ●
  4   │●   C1🔴  
      │    ●
  2   │  ●  ●      C2🟢
      │ ●
  0   └──────────── x
      0  2  4  6  8

C1 = Red centroid (randomly placed)
C2 = Green centroid (randomly placed)
```

---

### Step 2: Assignment

**Assign each point to nearest centroid**

**Method:**  
Calculate **Euclidean distance** from each point to each centroid.

**Formula:**
```
d = √[(x₂ - x₁)² + (y₂ - y₁)²]
```

**Result:**
```
      y
  6   │    🔴
      │  🔴   🔴
  4   │🔴   C1  
      │    🟢
  2   │  🟢  🟢      C2
      │ 🟢
  0   └──────────── x
      0  2  4  6  8

Red points assigned to C1
Green points assigned to C2
```

---

### Step 3: Update Centroids

**Recalculate centroids** by taking the **mean** of all points in each cluster.

**New Centroid Position:**
```
New C1 = Mean of all red points
New C2 = Mean of all green points
```

**Visualization:**
```
      y
  6   │    🔴
      │  🔴   🔴
  4   │🔴   ✖️  
      │    🟢
  2   │  🟢  🟢      ➕
      │ 🟢
  0   └──────────── x
      0  2  4  6  8

✖️ = New C1 (moved to center of red cluster)
➕ = New C2 (moved to center of green cluster)
```

---

### Step 4: Repeat

**Iterate Steps 2 and 3** until stopping criteria met.

**Final Result:**
```
      y
  6   │    🔴
      │  🔴   🔴
  4   │🔴   ✖️  
      │
  2   │  🟢  🟢      ➕
      │ 🟢   🟢
  0   └──────────── x
      0  2  4  6  8

Points stabilized into final clusters
```

---

## Stopping Criteria

**Algorithm stops when:**

```
┌────────────────────────────────────────┐
│  1️⃣  Centroids Don't Change            │
│  New centroids = Old centroids         │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  2️⃣  Points Don't Reassign             │
│  All points stay in same cluster       │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  3️⃣  Maximum Iterations Reached        │
│  Predefined limit (e.g., 100 iterations)│
└────────────────────────────────────────┘
```

---

## Detailed Example with Calculations

### Dataset

|   | X1 | X2 |
|---|----|----|
| A | 2  | 3  |
| B | 6  | 1  |
| C | 1  | 2  |
| D | 3  | 1  |
| E | 6  | 4  |

**Assumption:** K = 2

---

### Iteration 1: Initial Centroids

**Randomly select 2 points as initial centroids:**
- **Centroid 1:** Point A (2, 3)
- **Centroid 2:** Point B (6, 1)

---

### Calculate Distances

**Distance from A to all points:**
```
d(A,A) = √[(2-2)² + (3-3)²] = 0
d(A,B) = √[(6-2)² + (1-3)²] = √[16 + 4] = √20 = 4.47
d(A,C) = √[(1-2)² + (2-3)²] = √[1 + 1] = √2 = 1.41
d(A,D) = √[(3-2)² + (1-3)²] = √[1 + 4] = √5 = 2.24
d(A,E) = √[(6-2)² + (4-3)²] = √[16 + 1] = √17 = 4.12
```

**Distance from B to all points:**
```
d(B,A) = 4.47
d(B,B) = 0
d(B,C) = √[(1-6)² + (2-1)²] = √[25 + 1] = √26 = 5.10
d(B,D) = √[(3-6)² + (1-1)²] = √[9 + 0] = 3.00
d(B,E) = √[(6-6)² + (4-1)²] = √[0 + 9] = 3.00
```

---

### Distance Matrix

|     | A    | B    | C    | D    | E    |
|-----|------|------|------|------|------|
| **A** | 0    | 4.47 | 1.41 | 2.24 | 4.12 |
| **B** | 4.47 | 0    | 5.10 | 3.00 | 3.00 |

---

### Assign to Nearest Cluster

**For each point, compare distances:**

```
Point A: d(A,A)=0    < d(A,B)=4.47 → Cluster 1 ✓
Point B: d(B,B)=0    < d(B,A)=4.47 → Cluster 2 ✓
Point C: d(C,A)=1.41 < d(C,B)=5.10 → Cluster 1 ✓
Point D: d(D,A)=2.24 < d(D,B)=3.00 → Cluster 1 ✓
Point E: d(E,A)=4.12 > d(E,B)=3.00 → Cluster 2 ✓
```

**Result:**
```
Cluster 1: A, C, D
Cluster 2: B, E
```

---

### Update Centroids

**Calculate mean of each cluster:**

**Cluster 1 (A, C, D):**
```
New Centroid 1:
  X1 = (2 + 1 + 3) / 3 = 6/3 = 2.0
  X2 = (3 + 2 + 1) / 3 = 6/3 = 2.0
  → C1 = (2.0, 2.0)
```

**Cluster 2 (B, E):**
```
New Centroid 2:
  X1 = (6 + 6) / 2 = 12/2 = 6.0
  X2 = (1 + 4) / 2 = 5/2 = 2.5
  → C2 = (6.0, 2.5)
```

**New Centroids:**

|            | X1  | X2  |
|------------|-----|-----|
| Centroid 1 | 2.0 | 2.0 |
| Centroid 2 | 6.0 | 2.5 |

---

### Iteration 2: Recalculate Distances

**Distance from C1 (2.0, 2.0) to all points:**
```
d(C1,A) = √[(2-2)² + (3-2)²] = 1.00
d(C1,B) = √[(6-2)² + (1-2)²] = √[16+1] = 4.12
d(C1,C) = √[(1-2)² + (2-2)²] = 1.00
d(C1,D) = √[(3-2)² + (1-2)²] = √[1+1] = 1.41
d(C1,E) = √[(6-2)² + (4-2)²] = √[16+4] = 4.47
```

**Distance from C2 (6.0, 2.5) to all points:**
```
d(C2,A) = √[(2-6)² + (3-2.5)²] = √[16+0.25] = 4.03
d(C2,B) = √[(6-6)² + (1-2.5)²] = √[0+2.25] = 1.50
d(C2,C) = √[(1-6)² + (2-2.5)²] = √[25+0.25] = 5.02
d(C2,D) = √[(3-6)² + (1-2.5)²] = √[9+2.25] = 3.35
d(C2,E) = √[(6-6)² + (4-2.5)²] = √[0+2.25] = 1.50
```

---

### Distance Matrix (Iteration 2)

|      | A    | B    | C    | D    | E    |
|------|------|------|------|------|------|
| **C1** | 1.00 | 4.12 | 1.00 | 1.41 | 4.47 |
| **C2** | 4.03 | 1.50 | 5.02 | 3.35 | 1.50 |

---

### Assign to Nearest Cluster (Iteration 2)

```
Point A: d(A,C1)=1.00 < d(A,C2)=4.03 → Cluster 1 ✓
Point B: d(B,C1)=4.12 > d(B,C2)=1.50 → Cluster 2 ✓
Point C: d(C,C1)=1.00 < d(C,C2)=5.02 → Cluster 1 ✓
Point D: d(D,C1)=1.41 < d(D,C2)=3.35 → Cluster 1 ✓
Point E: d(E,C1)=4.47 > d(E,C2)=1.50 → Cluster 2 ✓
```

**Result:**
```
Cluster 1: A, C, D (same as before)
Cluster 2: B, E     (same as before)
```

**Centroids also remain the same!**

**✅ STOP:** Clusters are stable.

---

## Evaluating Clustering

### Challenge

**Problem:**  
Unlike supervised learning, there's no clear "accuracy" metric (no labels to compare against).

**Solution:**  
Use internal validation metrics:
1. **Inertia**
2. **Dunn Index**

---

### 1. Inertia (Within-Cluster Sum of Squares)

**Definition:**  
Sum of **squared distances** of all points within a cluster from the centroid of that cluster.

**Formula:**
```
Inertia = Σ Σ ||xᵢ - cⱼ||²

where:
  xᵢ = data point i
  cⱼ = centroid of cluster j
  ||·|| = Euclidean distance
```

**Visualization:**
```
        ●
    ●   ✖️   ●
        ●

Intra-cluster distance:
Distance from each point (●) to centroid (✖️)
```

**Interpretation:**
- **Lower inertia** = tighter clusters (better)
- **Higher inertia** = spread out clusters (worse)

**Python Code:**
```python
from sklearn.cluster import KMeans

kmeans = KMeans(n_clusters=3)
kmeans.fit(X)

inertia = kmeans.inertia_
print(f"Inertia: {inertia}")
```

---

### 2. Dunn Index

**Definition:**  
Ratio of **minimum inter-cluster distance** to **maximum intra-cluster distance**.

**Formula:**
```
Dunn Index = min(Inter-cluster distance) / max(Intra-cluster distance)
```

**Components:**

#### Intra-cluster Distance:
```
        ●
    ●   ✖️   ●  ← Distance within cluster
        ●
```

#### Inter-cluster Distance:
```
    ●●●              ○○○
     ✖️  ←─────────→  ⊕
    ●●●              ○○○

Distance between two cluster centroids
```

---

### Dunn Index Interpretation

```
Higher Dunn Index = Better clustering

Why?
- Larger distance between clusters (well-separated)
- Smaller distance within clusters (compact)
```

**Example:**
```
Dunn Index = 0.8 → Good separation, compact clusters
Dunn Index = 0.2 → Poor separation, spread clusters
```

---

## Selecting Optimal K (Elbow Method)

### The Problem

**Question:**  
How many clusters (K) should we use?

**Answer:**  
Use the **Elbow Method**.

---

### Elbow Method Process

**Steps:**
1. Try different values of K (e.g., K = 1, 2, 3, ..., 10)
2. Calculate **inertia** for each K
3. Plot inertia vs K
4. Look for the "elbow point"

---

### Elbow Plot

```
Inertia
  │
  │●
  │ ●
  │  ●
  │   ●
  │    ●─────●─────●─────●
  │           ⭕ Elbow Point
  └─────────────────────────── K
   1  2  3  4  5  6  7  8  9  10

At K=3: Curve starts to flatten
→ Optimal K = 3
```

**Interpretation:**
```
Before Elbow: Adding clusters significantly reduces inertia
After Elbow:  Diminishing returns (not much improvement)
```

---

### Why Elbow Point?

**Trade-off:**

```
Too Few Clusters (K small):
- High inertia
- Underfitting
- Clusters too broad

Optimal K (at elbow):
- Balanced inertia
- Good fit
- Meaningful clusters

Too Many Clusters (K large):
- Low inertia but...
- Overfitting
- Too fragmented
```

---

## Hierarchical Clustering

### Overview

**Definition:**  
Hierarchical clustering is a data analysis technique that organizes data objects into a **tree-like structure** based on their similarity.

**Applications:**
- 🧬 Biology (taxonomy, phylogenetics)
- 👥 Social sciences (community detection)
- 🖼️ Image analysis (segmentation)
- 📊 Understanding data hierarchies

---

### Two Types

#### 1. Agglomerative (Bottom-Up) ⬆️

**Most commonly used**

**Process:**
```
Start: Individual points
  A    B    C

Step 1: Merge closest
  (A,C)  B

Step 2: Continue merging
  (A,C,B)

End: Single cluster
```

**Approach:** Start small, build up

---

#### 2. Divisive (Top-Down) ⬇️

**Less common**

**Process:**
```
Start: All points together
  (A,B,C)

Step 1: Split into groups
  (A,B)  C

Step 2: Continue splitting
  A  B  C

End: Individual points
```

**Approach:** Start big, break down

---

## Agglomerative Hierarchical Clustering - Example

### Dataset

|   | X1   | X2   |
|---|------|------|
| A | 0.40 | 0.53 |
| B | 0.22 | 0.38 |
| C | 0.35 | 0.32 |
| D | 0.26 | 0.19 |
| E | 0.08 | 0.41 |
| F | 0.45 | 0.30 |

---

### Visualization

```
X2
0.6 │
    │
0.5 │  A①
    │
0.4 │     E⑤  B②
    │
0.3 │        C③ F⑥
    │
0.2 │     D④
    │
0.0 └─────────────────── X1
    0.0  0.2  0.4  0.6
```

---

### Step 1: Calculate Distance Matrix

**Using Euclidean distance:**

|   | A    | B    | C    | D    | E    | F    |
|---|------|------|------|------|------|------|
| **A** | 0    |      |      |      |      |      |
| **B** | 0.23 | 0    |      |      |      |      |
| **C** | 0.22 | 0.15 | 0    |      |      |      |
| **D** | 0.37 | 0.20 | 0.15 | 0    |      |      |
| **E** | 0.34 | 0.14 | 0.28 | 0.29 | 0    |      |
| **F** | 0.23 | 0.25 | 0.11 | 0.22 | 0.39 | 0    |

**Minimum distance:** 0.11 (between C and F)

---

### Step 2: Merge C and F

**First merge:** C and F → (C,F)

**New distance matrix needed:**

|       | A    | B    | (C,F) | D    | E    |
|-------|------|------|-------|------|------|
| **A**     | 0    |      |       |      |      |
| **B**     | 0.23 | 0    |       |      |      |
| **(C,F)** | ?    | ?    | 0     |      |      |
| **D**     | 0.37 | 0.20 | ?     | 0    |      |
| **E**     | 0.34 | 0.14 | ?     | 0.29 | 0    |

**Question:**  
How to calculate distance from (C,F) to other points?

---

## Linkage Methods

**Three common methods to calculate distance between clusters:**

### 1. Single Linkage (Minimum)
```
Distance = Minimum distance between any two points

d(A, (C,F)) = Min(d(A,C), d(A,F))
```

**Use case:** Finding connected components

---

### 2. Complete Linkage (Maximum)
```
Distance = Maximum distance between any two points

d(A, (C,F)) = Max(d(A,C), d(A,F))
```

**Use case:** Compact clusters

---

### 3. Average Linkage (Mean)
```
Distance = Average of all pairwise distances

d(A, (C,F)) = Avg(d(A,C), d(A,F))
```

**Use case:** Balanced approach

---

### Comparison Table

| Linkage | Example Calculation | Characteristics |
|---------|---------------------|-----------------|
| **Single** | Min(d[A,C], d[A,F]) | ✅ Handles non-spherical shapes<br>❌ Sensitive to outliers |
| **Complete** | Max(d[A,C], d[A,F]) | ✅ Creates compact clusters<br>❌ Sensitive to outliers |
| **Average** | Avg(d[A,C], d[A,F]) | ✅ Balanced, robust<br>✅ Most commonly used |

---

## Example Continued (Using Single Linkage)

### Calculate New Distances

**For (C,F) to A:**
```
d(A, (C,F)) = Min(d(A,C), d(A,F))
             = Min(0.22, 0.23)
             = 0.22
```

**For (C,F) to B:**
```
d(B, (C,F)) = Min(d(B,C), d(B,F))
             = Min(0.15, 0.25)
             = 0.15
```

**For (C,F) to D:**
```
d(D, (C,F)) = Min(d(D,C), d(D,F))
             = Min(0.15, 0.22)
             = 0.15
```

**For (C,F) to E:**
```
d(E, (C,F)) = Min(d(E,C), d(E,F))
             = Min(0.28, 0.39)
             = 0.28
```

---

### Updated Distance Matrix

|       | A    | B    | (C,F) | D    | E    |
|-------|------|------|-------|------|------|
| **A**     | 0    |      |       |      |      |
| **B**     | 0.23 | 0    |       |      |      |
| **(C,F)** | 0.22 | 0.15 | 0     |      |      |
| **D**     | 0.37 | 0.20 | 0.15  | 0    |      |
| **E**     | 0.34 | 0.14 | 0.28  | 0.29 | 0    |

**Minimum distance:** 0.14 (between B and E)

---

### Step 3: Merge B and E

**Second merge:** B and E → (B,E)

|         | A    | (B,E) | (C,F) | D    |
|---------|------|-------|-------|------|
| **A**       | 0    |       |       |      |
| **(B,E)**   | 0.23 | 0     |       |      |
| **(C,F)**   | 0.22 | 0.15  | 0     |      |
| **D**       | 0.37 | 0.20  | 0.15  | 0    |

**Minimum distance:** 0.15 (between (B,E) and (C,F), or (C,F) and D)

---

### Step 4: Continue Merging

**Third merge:** (B,E) and (C,F) → (B,E,C,F)

|             | A    | (B,E,C,F) | D    |
|-------------|------|-----------|------|
| **A**           | 0    |           |      |
| **(B,E,C,F)**   | 0.22 | 0         |      |
| **D**           | 0.37 | 0.15      | 0    |

---

**Fourth merge:** (B,E,C,F) and D → (B,E,C,F,D)

|               | A    | (B,E,C,F,D) |
|---------------|------|-------------|
| **A**             | 0    |             |
| **(B,E,C,F,D)**   | 0.22 | 0           |

---

**Final merge:** All points → (A,B,C,D,E,F)

|                   | (A,B,C,D,E,F) |
|-------------------|---------------|
| **(A,B,C,D,E,F)** | 0             |

---

## Dendrogram

### What is a Dendrogram?

**Definition:**  
A tree diagram showing the hierarchical relationship between clusters.

**Reading a Dendrogram:**
```
Height = Distance at which clusters merge
Width  = Individual data points or clusters
```

---

### Example Dendrogram

```
Distance
   │
0.4│
   │         ┌────────┐
0.3│     ┌───┤        │
   │     │   │        ├────────┐
0.2│  ┌──┤   │        │        │
   │  │  │   │        │        │
0.1│ ─┴──┴───┴────────┴────────┴─
   └─ 3  6  2  5      4        1
      C  F  B  E      D        A

Merging order:
1. C and F merge at distance 0.11
2. B and E merge at distance 0.14
3. (B,E) and (C,F) merge at distance 0.15
4. (B,E,C,F) and D merge at distance 0.15
5. Everything merges with A at distance 0.22
```

---

### Cutting the Dendrogram

**To get K clusters:**  
Draw a horizontal line at desired height.

```
Distance
   │
0.3│     ┌───┐        ─────────  Cut here
   │  ┌──┤   │      ├────────┐   for K=2
0.2│  │  │   │      │        │
   │  │  │   │      │        │
0.1│ ─┴──┴───┴──────┴────────┴─
   └─ 3  6  2  5    4        1

Result: 2 clusters
  Cluster 1: {C, F, B, E, D}
  Cluster 2: {A}
```

---

## Other Clustering Methods

### 1. DBSCAN (Density-Based Spatial Clustering)

**Full Name:**  
Density-Based Spatial Clustering of Applications with Noise

**Key Features:**
- ✅ Groups together points that are **densely packed**
- ✅ Can find **arbitrarily shaped** clusters
- ✅ **Identifies outliers** (noise points)
- ✅ No need to specify number of clusters

**How it Works:**
```
Core Points:   Points with many neighbors
Border Points: Near core points but fewer neighbors
Noise Points:  Not enough neighbors (outliers)
```

**Parameters:**
- **ε (epsilon):** Radius to search for neighbors
- **MinPts:** Minimum points to form cluster

**Example Use Case:**
```
Detecting unusual customer spending patterns
- Normal customers form dense clusters
- Fraudulent transactions appear as noise points
```

---

### 2. OPTICS (Ordering Points To Identify Clustering Structure)

**Key Features:**
- Extension of DBSCAN
- ✅ Handles clusters of **varying density** better
- ✅ Builds a **cluster ordering** rather than fixed clusters
- ✅ More flexible than DBSCAN

**Advantage:**
```
DBSCAN:  Fixed density threshold
OPTICS:  Adapts to different densities
```

**Visualization:**
```
Reachability Plot:
│    ╱╲
│   ╱  ╲    ╱╲
│  ╱    ╲  ╱  ╲
│ ╱      ╲╱    ╲
└─────────────────

Valleys = Clusters
Peaks = Gaps between clusters
```

---

### 3. Mean Shift Clustering

**Key Features:**
- ✅ Finds **"peaks"** (high-density regions) in data
- ✅ **Doesn't need** the number of clusters in advance
- ✅ Can find arbitrarily shaped clusters

**How it Works:**
```
1. Start with random points
2. Shift each point towards area of highest density
3. Points that converge to same peak = same cluster
```

**Analogy:**
```
Imagine rolling balls down a hilly landscape.
All balls ending in same valley belong to same cluster.
```

**Applications:**
- Image segmentation
- Object tracking in videos
- Feature analysis

---

### 4. Gaussian Mixture Models (GMMs)

**Key Features:**
- **Probabilistic model** where each cluster follows a Gaussian (normal) distribution
- ✅ Provides **soft clustering** (a point can partly belong to multiple clusters)
- ✅ Flexible cluster shapes (elliptical)

**Soft Clustering Example:**
```
Point P:
  70% probability in Cluster 1
  30% probability in Cluster 2

(vs hard clustering: 100% in one cluster)
```

**Mathematical Foundation:**
```
Each cluster k has:
- Mean (μₖ)
- Covariance (Σₖ)
- Weight (πₖ)

P(x) = Σ πₖ N(x | μₖ, Σₖ)
```

**Applications:**
- Speaker recognition
- Customer segmentation
- Image classification

---

### 5. Spectral Clustering

**Key Features:**
- Uses **graph theory** and **eigenvalues** of similarity matrix
- ✅ Very powerful for **non-convex** clusters
- ✅ Can find clusters that aren't spherical

**Process:**
```
1. Create similarity graph
2. Compute graph Laplacian
3. Find eigenvectors
4. Cluster in reduced space
```

**Strength:**
```
Can separate these clusters:
    ●●●●●
   ●     ●
  ●   ○○○ ●
   ●     ●
    ●●●●●

(Concentric circles)
```

**Applications:**
- Social network analysis
- Image segmentation
- Community detection

---

### 6. BIRCH (Balanced Iterative Reducing and Clustering)

**Full Name:**  
Balanced Iterative Reducing and Clustering using Hierarchies

**Key Features:**
- ✅ Handles **large datasets** efficiently
- ✅ Builds a tree structure (CF tree)
- ✅ Clusters data **incrementally**
- ✅ Memory efficient

**How it Works:**
```
1. Scan dataset once
2. Build Clustering Feature (CF) Tree
3. Apply clustering algorithm to CF Tree
```

**CF (Clustering Feature):**
```
CF = (N, LS, SS)
where:
  N  = Number of points
  LS = Linear sum of points
  SS = Sum of squared points
```

**Advantage:**
```
Traditional K-Means: Requires multiple full scans
BIRCH:              Single scan + tree operations
                    → Much faster for large data
```

**Applications:**
- Large-scale data mining
- Real-time clustering
- Stream data processing

---

## Clustering Methods Comparison

### Summary Table

| Method | Cluster Shape | Handles Outliers | K Required? | Best For |
|--------|---------------|------------------|-------------|----------|
| **K-Means** | Spherical | ❌ No | ✅ Yes | Large datasets, spherical clusters |
| **Hierarchical** | Any | ⚠️ Somewhat | ❌ No | Small datasets, dendrograms |
| **DBSCAN** | Arbitrary | ✅ Yes | ❌ No | Non-spherical, noisy data |
| **OPTICS** | Arbitrary | ✅ Yes | ❌ No | Varying density |
| **Mean Shift** | Arbitrary | ✅ Yes | ❌ No | Image segmentation |
| **GMM** | Elliptical | ⚠️ Somewhat | ✅ Yes | Soft clustering, probabilistic |
| **Spectral** | Non-convex | ⚠️ Somewhat | ✅ Yes | Complex shapes |
| **BIRCH** | Spherical | ⚠️ Somewhat | ✅ Yes | Very large datasets |

---

### Choosing the Right Algorithm

```
┌────────────────────────────────────────┐
│  Use K-MEANS when:                     │
│  - Data is numeric and spherical       │
│  - You know K                          │
│  - Speed is important                  │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  Use HIERARCHICAL when:                │
│  - Small dataset                       │
│  - Want to visualize dendrogram        │
│  - Don't know K                        │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  Use DBSCAN when:                      │
│  - Arbitrary cluster shapes            │
│  - Noisy data with outliers            │
│  - Don't know K                        │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  Use GMM when:                         │
│  - Need probabilistic assignments      │
│  - Elliptical clusters                 │
│  - Soft clustering required            │
└────────────────────────────────────────┘
```

---

## Summary

### Key Concepts

```
UNSUPERVISED LEARNING:
├── No labels in training data
├── Discovers hidden patterns
└── Main task: Clustering

K-MEANS:
├── Partition-based
├── Fast and simple
├── Requires K
└── Spherical clusters

HIERARCHICAL:
├── Creates tree structure
├── No K required
├── Dendrogram visualization
└── Two types: Agglomerative & Divisive

OTHER METHODS:
├── DBSCAN (density-based)
├── GMM (probabilistic)
├── Spectral (graph-based)
└── Mean Shift (mode-seeking)
```

---

## Key Takeaways

### When to Use Unsupervised Learning

```
✅ Customer segmentation
✅ Anomaly detection
✅ Data exploration
✅ Feature engineering
✅ Dimensionality reduction
✅ Pattern discovery
```

### Algorithm Selection Flowchart

```
Do you know K?
├─ YES → Spherical clusters?
│        ├─ YES → K-Means
│        └─ NO  → GMM or Spectral
│
└─ NO  → Need hierarchy?
         ├─ YES → Hierarchical
         └─ NO  → Arbitrary shapes?
                  ├─ YES → DBSCAN
                  └─ NO  → Mean Shift
```

---

## Thank You!

### Course Information
- **Module:** IT2011 - Artificial Intelligence and Machine Learning
- **Lecture:** 6 - Introduction to Unsupervised Learning
- **Lecturer:** Dr. Lakmini Abeywardhana
- **Institution:** SLIIT - Sri Lanka Institute of Information Technology
- **Faculty:** Faculty of Computing
- **Academic Year:** Year 02, Semester 01
- **Student:** IT24103352
- **Date:** 2025-01-23

---

### Next Steps

**What's Coming:**
- Lecture 7: Neural Networks and Deep Learning
- Practical implementation of clustering algorithms
- Advanced unsupervised techniques

**Recommended Practice:**
1. ✅ Implement K-Means from scratch
2. ✅ Experiment with different K values
3. ✅ Try hierarchical clustering with different linkages
4. ✅ Compare algorithms on real datasets
5. ✅ Visualize clustering results

---

**End of Lecture 6**

**Total Pages:** 42  
**Completion Status:** ✅ Fully converted to Markdown
