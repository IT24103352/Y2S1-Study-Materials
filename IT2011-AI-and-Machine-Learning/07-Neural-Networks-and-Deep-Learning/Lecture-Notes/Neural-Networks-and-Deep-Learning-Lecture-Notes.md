# LECTURE 7 - Neural Networks and Deep Learning

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-01-23  
**Current Time (UTC):** 2025-01-23 10:01:40

---

## Table of Contents

- [What is Deep Learning?](#what-is-deep-learning)
- [Introduction to Neural Networks](#introduction-to-neural-networks)
- [The Perceptron](#the-perceptron)
- [Activation Functions](#activation-functions)
- [Multi-Layer Neural Networks](#multi-layer-neural-networks)
- [How Neural Networks Learn](#how-neural-networks-learn)
- [Forward Propagation](#forward-propagation)
- [Backpropagation](#backpropagation)
- [Types of Neural Networks](#types-of-neural-networks)

---

## What is Deep Learning?

### Definition

**Deep Learning** is a way for computers to learn patterns and make decisions, inspired by how the human brain works.

---

### Part of Machine Learning (ML)

#### Traditional ML:
```
┌────────────────────────────────────────┐
│  Algorithms need MANUAL feature        │
│  selection                             │
│                                        │
│  Example:                              │
│  Detecting edges in an image requires  │
│  explicit programming                  │
└────────────────────────────────────────┘
```

#### Deep Learning:
```
┌────────────────────────────────────────┐
│  Learns features AUTOMATICALLY         │
│                                        │
│  Example:                              │
│  Finds eyes, nose, face without        │
│  explicit coding                       │
└────────────────────────────────────────┘
```

---

### Analogy

```
TRADITIONAL ML:
    ┌─────────────────────────┐
    │  Cooking with a recipe  │
    │  Steps are predefined   │
    └─────────────────────────┘

DEEP LEARNING:
    ┌─────────────────────────┐
    │  Chef who experiments   │
    │  Learns by tasting      │
    │  Improves over time     │
    └─────────────────────────┘
```

---

## Biological Inspiration

### Biological Neuron Structure

```
     Dendrites
        ╱│╲
       ╱ │ ╲
      ●──●──●  ← Receives signals
         │
    ┌────▼────┐
    │Cell Body│  ← Processes information
    │(Nucleus)│
    └────┬────┘
         │
      Axon│  ← Transmits signals
         │
    ┌────▼────┐
    │ Synapse │  ← Connection to next neuron
    └─────────┘
```

**Key Components:**
- **Dendrites:** Receive incoming signals
- **Cell Body:** Processes information
- **Axon:** Transmits output signals
- **Synapse:** Connection point to other neurons

---

### Artificial Neuron Model

```
Input Signals → Weights → Weighted Sum → Activation → Output

┌─────────┐
│  x₁     │─────w₁────┐
├─────────┤           │
│  x₂     │─────w₂────┤
├─────────┤           ├──→ Σ w₁x₁ → φ(·) → Output
│  x₃     │─────w₃────┤
├─────────┤           │
│  x₄     │─────w₄────┘
└─────────┘

Steps:
1. Input signals (x₁, x₂, x₃, x₄)
2. Multiply by weights (w₁, w₂, w₃, w₄)
3. Weighted sum: Σ(wᵢxᵢ)
4. Nonlinear activation: φ(sum)
5. Output
```

---

## Introduction to Neural Networks

### What is a Neural Network?

**Definition:**  
A neural network is a computational model inspired by the way biological neural networks in the human brain process information.

**Structure:**  
Made up of **layers** of interconnected **nodes** or "neurons."

---

## Structure of a Neuron

### Mathematical Model

```
Inputs → Weights → Summation → Bias → Activation → Output

x₁ ─────w_{k1}────┐
x₂ ─────w_{k2}────┤
   ⋮        ⋮      ├──→ Σ ──→ + b_k ──→ φ(·) ──→ y_k
x_m ─────w_{km}───┘

Where:
  xᵢ      = Input signals
  w_{ki}  = Synaptic weights
  Σ       = Summation (u_k = Σ w_{ki}x_i)
  b_k     = Bias
  φ(·)    = Activation function
  y_k     = Output
```

---

### Complete Mathematical Representation

**Step 1: Weighted Sum**
```
u_k = Σ(i=1 to m) w_{ki} × x_i
```

**Step 2: Add Bias**
```
v_k = u_k + b_k
```

**Step 3: Apply Activation**
```
y_k = φ(v_k) = φ(u_k + b_k)
```

---

## Basic Terminology

### Core Components

```
┌────────────────────────────────────────┐
│  NEURON (NODE)                         │
│  Smallest processing unit              │
│  Performs: Σ(wᵢxᵢ) + b → φ(·)         │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  LAYERS                                │
│                                        │
│  1. INPUT LAYER                        │
│     Raw data enters                    │
│                                        │
│  2. HIDDEN LAYER(S)                    │
│     Where learning happens             │
│     Can have multiple layers           │
│                                        │
│  3. OUTPUT LAYER                       │
│     Final prediction                   │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  WEIGHTS                               │
│  Strength of connection between neurons│
│  Learned during training               │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  BIAS                                  │
│  Adjustment term                       │
│  Shifts activation function            │
└────────────────────────────────────────┘

┌────────────────────────────────────────┐
│  ACTIVATION FUNCTION                   │
│  Adds non-linearity                    │
│  Enables solving complex problems      │
└────────────────────────────────────────┘
```

---

## Classification Problems

### Definition

**Classification:**  
Identifying which category a given example belongs to.

---

### Types of Classification

#### 1. Binary Classification (Two Classes)

```
Examples:
├── Disease / No Disease
├── Spam / Not Spam
├── Buy / Do Not Buy
├── Pass / Fail
└── Yes / No
```

---

#### 2. Multi-Class Classification (More Than Two Classes)

```
Examples:
├── Hand-written character recognition (0-9, A-Z)
├── Face recognition (Person 1, 2, 3, ...)
├── Animal classification (Cat, Dog, Bird, ...)
└── Product categories (Electronics, Clothing, Food, ...)
```

---

## The Perceptron

### History

**Introduced:** 1958  
**Inventor:** Frank Rosenblatt  
**Type:** Binary classifier  

**Purpose:**  
Determines whether an input belongs to one of two classes.

---

### How Perceptron Works

**Process:**
1. Takes several **binary** or **real-valued** inputs
2. Applies **weights** to them
3. **Sums** the weighted results
4. Adds a **bias**
5. Passes through **activation function** (step function)

---

### Mathematical Representation

```
y = {
  1  if (w · x + b) ≥ 0
  0  otherwise
}

Where:
  y = output (prediction)
  w = weight vector
  x = input vector
  b = bias
  · = dot product
```

---

### Perceptron Diagram

```
Inputs:          Weights:         
x₀ = 1 ─────────→ w₀ (bias) ──┐
x₁ ─────────────→ w₁ ──────────┤
x₂ ─────────────→ w₂ ──────────├──→ Σ z = Σwᵢxᵢ
   ⋮                  ⋮         │
x_m ────────────→ w_m ──────────┘
                                 │
                                 ↓
                         ┌───────────────┐
                         │ Activation    │
                         │ Output = 1    │
                         │   if z ≥ 0    │
                         │ Output = 0    │
                         │   otherwise   │
                         └───────────────┘
```

**Question:**  
Why do we need bias (w₀, x₀=1)?

**Answer:**  
Bias allows the decision boundary to shift, not just pass through origin.

---

### What is a Perceptron? (Simple Terms)

**Simplest form of neural network**

**Components:**
```
┌────────────────────────────────────────┐
│  INPUTS                                │
│  Example: Exam marks, height, etc.     │
└────────────────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  WEIGHTS                               │
│  Importance of each input              │
└────────────────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  BIAS                                  │
│  Adjusts output up/down                │
└────────────────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  ACTIVATION FUNCTION                   │
│  Decides output: YES / NO              │
└────────────────────────────────────────┘
```

---

## Linear Separability

### Linearly Separable Classes

```
      Class C₁
    ●  ●  ●  ●
    
    ─────────────  ← Decision Boundary
                     (Hyperplane/Line)
    
    ○  ○  ○  ○
      Class C₂

✅ Can be separated by a straight line
✅ Perceptron can solve this
```

---

### Non-Linearly Separable Classes

```
    ●  ●
  ●  ○  ○  ●
    ○  ●
  ●  ○  ○  ●
    ●  ●

❌ Cannot be separated by a straight line
❌ Perceptron CANNOT solve this
```

**Mathematical Representation:**
```
y = 1  if (w·x + b) ≥ 0
y = 0  otherwise

Works only when classes can be separated 
by a hyperplane (straight line in 2D)
```

---

### Perceptron Limitation

**Problem:**  
When classes C₁ and C₂ are too close or intermingled, they become **nonlinearly separable**.

**Consequence:**  
Beyond the computing capability of a single perceptron.

**Solution:**  
Multi-layer perceptrons (neural networks with hidden layers).

---

## Perceptron Learning

### Perceptron Convergence Theorem

**Proven by Rosenblatt (1958, 1962):**

**Statement:**  
If training patterns are drawn from **two linearly separable classes**, then the perceptron algorithm:
- ✅ **Converges** (reaches a solution)
- ✅ **Positions** decision surface as hyperplane between classes

**Requirement:**  
Data must be linearly separable!

---

## Perceptron Convergence Algorithm

### Variables and Parameters

```
x(n) = (m+1)-by-1 input vector
     = [+1, x₁(n), x₂(n), ..., x_m(n)]ᵀ

w(n) = (m+1)-by-1 weight vector
     = [b, w₁(n), w₂(n), ..., w_m(n)]ᵀ
     where b = bias

y(n) = actual response (quantized output)
d(n) = desired response (true label)
η    = learning rate (0 < η < 1)
```

---

### Algorithm Steps

#### Step 1: Initialization
```
Set w(0) = 0 (all weights = 0)
Set n = 1 (time step)
```

---

#### Step 2: Activation
```
At time-step n:
- Apply input vector x(n)
- Apply desired response d(n)
```

---

#### Step 3: Compute Actual Response
```
y(n) = sgn[wᵀ(n)x(n)]

where sgn() is the signum function:
  sgn(z) = {
    +1  if z ≥ 0
    -1  if z < 0
  }
```

---

#### Step 4: Adapt Weight Vector
```
w(n+1) = w(n) + η[d(n) - y(n)]x(n)

where desired response:
  d(n) = {
    +1  if x(n) belongs to class φ₁
    -1  if x(n) belongs to class φ₂
  }
```

**Interpretation:**
```
If prediction correct: d(n) = y(n) → no change
If prediction wrong:   d(n) ≠ y(n) → update weights
```

---

#### Step 5: Continuation
```
n = n + 1 (increment time step)
Go back to Step 2
```

**Repeat until:**
- All samples correctly classified, OR
- Maximum iterations reached

---

### Update Rule Breakdown

**Weight Update:**
```
Δw = η × error × input
   = η × [d(n) - y(n)] × x(n)

If correct:  error = 0 → no change
If incorrect: error ≠ 0 → adjust weights
```

---

## Batch Perceptron Algorithm

### Motivation

**Previous algorithm:**
- ❌ No explicit cost function
- ❌ Single-sample correction only

**Batch approach:**
- ✅ Uses cost function
- ✅ Updates based on multiple samples
- ✅ More generalized

---

### Cost Function

**Definition:**
```
J(w) = Σ (-wᵀx(n)d(n))
       x(n)∈𝕏

where:
  𝕏 = set of misclassified samples
```

**Interpretation:**
```
If all samples correctly classified:
  𝕏 = empty set
  J(w) = 0 ✅

If some samples misclassified:
  J(w) > 0 ❌
```

---

### Gradient Vector

**Differentiate J(w) with respect to w:**
```
∇J(w) = Σ (-x(n)d(n))
        x(n)∈𝕏

where ∇ = gradient operator
```

---

### Method of Steepest Descent

**Concept:**  
Adjust weights in direction **opposite** to gradient.

**Why?**
- Gradient points toward **increasing** cost
- We want to **decrease** cost
- Therefore, move in **negative gradient** direction

```
       Cost
        │     ╱╲
        │   ╱    ╲
        │ ╱        ╲
        │╱          ╲
        └─────────────── Weights
         ↓
    Move down gradient
```

---

### Weight Update Rule

**Formula:**
```
w(n+1) = w(n) - η(n)∇J(w)

Substituting gradient:
w(n+1) = w(n) - η(n) Σ (-x(n)d(n))
                    x(n)∈𝕏

Simplifying:
w(n+1) = w(n) + η(n) Σ x(n)d(n)
                    x(n)∈𝕏
```

**Interpretation:**
```
- Start with current weights w(n)
- Calculate gradient from misclassified samples
- Move weights in direction that reduces error
- Step size controlled by learning rate η
```

---

## Activation Functions

### Why Activation Functions?

**Purpose:**
- ✅ Add **non-linearity** to the network
- ✅ Enable learning **complex patterns**
- ✅ Allow **multi-layer** networks to be powerful

**Without activation:**
```
Multiple layers of linear operations 
= Single linear operation
(No advantage to depth!)
```

**With activation:**
```
Non-linear transformations at each layer
→ Can approximate any function
```

---

### Common Activation Functions

#### 1. Sigmoid Function

**Formula:**
```
σ(x) = 1 / (1 + e⁻ˣ)
```

**Graph:**
```
σ(x)
1.0│         ╭────────
   │       ╱
0.5│     ╱
   │   ╱
0.0│╭──
   └─────────────── x
  -10    0    10
```

**Properties:**
- Range: (0, 1)
- S-shaped curve
- Smooth gradient
- Output interpretable as probability

**Use Cases:**
- Binary classification (output layer)
- Probability predictions

**Drawbacks:**
- Vanishing gradient problem
- Not zero-centered
- Computationally expensive

---

#### 2. Tanh (Hyperbolic Tangent)

**Formula:**
```
tanh(x) = (eˣ - e⁻ˣ) / (eˣ + e⁻ˣ)
```

**Graph:**
```
tanh(x)
 1.0│         ╭────────
    │       ╱
 0.0│     ╱
    │   ╱
-1.0│╭──
    └─────────────── x
   -10    0    10
```

**Properties:**
- Range: (-1, 1)
- Zero-centered
- S-shaped curve
- Stronger gradients than sigmoid

**Use Cases:**
- Hidden layers
- When zero-centered output desired

**Drawbacks:**
- Still suffers from vanishing gradient
- Computationally expensive

---

#### 3. ReLU (Rectified Linear Unit)

**Formula:**
```
ReLU(x) = max(0, x) = {
  x  if x ≥ 0
  0  if x < 0
}
```

**Graph:**
```
ReLU(x)
10│        ╱
  │      ╱
 5│    ╱
  │  ╱
 0│─────────
  └─────────────── x
 -10  0  10
```

**Properties:**
- Range: [0, ∞)
- Computationally efficient
- Helps with vanishing gradient
- Sparse activation

**Use Cases:**
- **Most popular** for hidden layers
- Default choice in deep networks

**Advantages:**
- ✅ Fast to compute
- ✅ No vanishing gradient for positive values
- ✅ Sparse activation (some neurons output 0)

**Drawbacks:**
- ❌ "Dying ReLU" problem (neurons can become inactive)
- ❌ Not zero-centered

---

#### 4. Leaky ReLU

**Formula:**
```
Leaky ReLU(x) = {
  x      if x ≥ 0
  αx     if x < 0
}

where α = small constant (e.g., 0.01)
```

**Graph:**
```
Leaky ReLU(x)
10│        ╱
  │      ╱
 5│    ╱
  │  ╱
 0│╱─────────
  └─────────────── x
 -10  0  10
  (slight slope for x < 0)
```

**Properties:**
- Range: (-∞, ∞)
- Small negative slope for x < 0
- Addresses "dying ReLU" problem

**Use Cases:**
- Alternative to ReLU
- When dying ReLU is a problem

**Advantages:**
- ✅ No dying neurons
- ✅ Still computationally efficient

---

### Activation Function Comparison

| Function | Range | Pros | Cons | Best For |
|----------|-------|------|------|----------|
| **Sigmoid** | (0, 1) | Smooth, probabilistic | Vanishing gradient | Output layer (binary) |
| **Tanh** | (-1, 1) | Zero-centered | Vanishing gradient | Hidden layers |
| **ReLU** | [0, ∞) | Fast, no vanishing gradient | Dying ReLU | Hidden layers (default) |
| **Leaky ReLU** | (-∞, ∞) | No dying neurons | Needs tuning α | Hidden layers |

---

## Limitations of Perceptron

### The XOR Problem

**XOR Truth Table:**
```
x₁  x₂  │  XOR
────────┼─────
0   0   │   0
0   1   │   1
1   0   │   1
1   1   │   0
```

**Visualization:**
```
x₂
 1│  1    0
  │
 0│  0    1
  └────────── x₁
   0    1

Cannot draw a single line to separate!
```

**Perceptron Limitation:**
```
❌ Single perceptron CANNOT solve XOR
❌ Problem is NOT linearly separable
```

---

### Solution: Multi-Layer Perceptrons (MLP)

**Add Hidden Layers:**
```
Input → Hidden Layer(s) → Output

With hidden layers:
✅ Can solve XOR
✅ Can learn non-linear patterns
✅ Can approximate any function
```

---

## Types of Neural Networks

### 1. Shallow vs Deep Networks

#### Shallow Neural Networks
```
Input → Hidden Layer → Output
        (single layer)

Characteristics:
- Usually ONE hidden layer
- Fast training
- Less processing power
- Limited complexity
```

#### Deep Neural Networks
```
Input → Hidden → Hidden → ... → Hidden → Output
        Layer 1   Layer 2       Layer N

Characteristics:
- MULTIPLE hidden layers
- Slower training
- More processing power
- Can learn complex patterns
```

---

## Types of Neural Networks (Detailed)

### 1. Feedforward Neural Network (FNN)

**Architecture:**
```
Input Layer → Hidden Layer(s) → Output Layer
     (forward only, no loops)

┌─────┐
│  x₁ │──┐
├─────┤  │  ┌────┐
│  x₂ │──┼─→│ h₁ │──┐
└─────┘  │  ├────┤  │  ┌────┐
         └─→│ h₂ │──┼─→│ y  │
            └────┘  │  └────┘
                    │
                    └─→
```

**How it Works:**
- Information moves in **one direction** only
- From input → hidden → output
- **No feedback loops**

**Use Cases:**
- ✅ Basic classification (spam detection)
- ✅ Simple pattern recognition
- ✅ Function approximation

**Key Point:**
- Simplest type of neural network
- Foundation for more complex architectures

---

### 2. Convolutional Neural Network (CNN)

**Architecture:**
```
Input Image → Conv Layers → Pooling → Fully Connected → Output

[Image] → [Filters/Kernels] → [Feature Maps] → [Classification]
```

**How it Works:**
- Uses **filters (kernels)** to scan through data
- Detects patterns like:
  - **Edges** (low-level features)
  - **Shapes** (mid-level features)
  - **Objects** (high-level features)

**Key Operations:**
1. **Convolution:** Apply filters to detect patterns
2. **Pooling:** Reduce dimensionality
3. **Activation:** Add non-linearity (ReLU)

**Use Cases:**
- ✅ **Image recognition** (cats vs dogs)
- ✅ **Video analysis** (action recognition)
- ✅ **Medical imaging** (tumor detection)
- ✅ **Face recognition**

**Key Point:**
- **Best suited** for image and spatial data
- Automatically learns visual features

---

### 3. Recurrent Neural Network (RNN)

**Architecture:**
```
       ┌──────┐
    ┌─→│Hidden│──┐
    │  │Layer │  │
    │  └──────┘  │
Input     ↓     Output
    └────Loop────┘
    (Recurrence)
```

**How it Works:**
- Has **connections that loop back**
- **Remembers** information from previous steps
- Maintains **internal state** (memory)

**Key Feature:**
```
Time step t-1 → Time step t → Time step t+1
     ↓              ↓              ↓
  Hidden State → Hidden State → Hidden State
  (remembers previous context)
```

**Use Cases:**
- ✅ **Language modeling** (predict next word)
- ✅ **Text prediction** (autocomplete)
- ✅ **Speech recognition** (transcription)
- ✅ **Time-series forecasting** (stock prices)

**Key Point:**
- Good for **sequential data** where order matters

**Limitation:**
- Struggles with **long sequences** (vanishing gradient)

---

### 4. Long Short-Term Memory (LSTM) Networks

**Architecture:**
```
        ┌─────────────────────────┐
        │     LSTM Unit           │
        │  ┌────────────────────┐ │
Input →─┤  │ Forget Gate        │ │
        │  ├────────────────────┤ │
        │  │ Input Gate         │ │→ Output
        │  ├────────────────────┤ │
        │  │ Input Modulation   │ │
        │  ├────────────────────┤ │
        │  │ Output Gate        │ │
        │  └────────────────────┘ │
        └─────────────────────────┘
```

**How it Works:**
- Special type of RNN
- Uses **memory cells** and **gates**:
  - **Forget Gate:** Decides what to forget
  - **Input Gate:** Decides what new info to store
  - **Output Gate:** Decides what to output

**Advantage over RNN:**
```
RNN:  Forgets long-term dependencies
LSTM: Remembers long-term dependencies
```

**Use Cases:**
- ✅ **Machine translation** (English → French)
- ✅ **Chatbot responses** (context-aware)
- ✅ **Predicting stock prices** (long sequences)
- ✅ **Text generation** (writing stories)

**Key Point:**
- Designed to **remember long sequences**
- Solves vanishing gradient problem of RNNs

---

### 5. Generative Adversarial Networks (GANs)

**Architecture:**
```
┌──────────────┐        ┌──────────────┐
│  Generator   │───────→│Discriminator │
│  (Creates    │  Fake  │ (Real or     │
│   fake data) │  Data  │  Fake?)      │
└──────┬───────┘        └──────┬───────┘
       │                       │
       └───── Compete ─────────┘
         (improve each other)
```

**How it Works:**
- **Two networks compete:**
  1. **Generator:** Creates fake data
  2. **Discriminator:** Distinguishes real from fake

**Training Process:**
```
1. Generator creates fake images
2. Discriminator tries to identify fakes
3. Both improve through competition
4. Eventually, fakes become realistic
```

**Use Cases:**
- ✅ **Creating realistic images** (faces, art)
- ✅ **Deepfakes** (video generation)
- ✅ **Data augmentation** (generate training data)
- ✅ **Style transfer** (turn photos into paintings)

**Key Point:**
- Good at **generating new, realistic data**
- Revolutionary for creative AI

---

### 6. Self-Organizing Maps (SOMs)

**How it Works:**
- **Unsupervised network**
- Maps **high-dimensional data** → **low dimension** (2D/3D)
- Preserves topological relationships

**Visualization:**
```
High-D Data      SOM Grid (2D)
●  ●  ●          ┌─┬─┬─┐
●  ●  ●    →     ├─┼─┼─┤
●  ●  ●          └─┴─┴─┘
(100D)           (Visualized)
```

**Use Cases:**
- ✅ **Data clustering** (group similar data)
- ✅ **Feature mapping** (visualize relationships)
- ✅ **Pattern recognition** (find similarities)

**Key Point:**
- Helps **visualize complex data**
- Useful for exploratory analysis

---

### 7. Modular Neural Networks (MNNs)

**How it Works:**
- Splits **big problem** into **smaller parts**
- Each part solved by **separate network**
- Results **combined** at the end

**Architecture:**
```
    Large Problem
         ↓
   ┌─────┴─────┐
   ↓           ↓
Module 1    Module 2   ... Module N
   ↓           ↓           ↓
   └─────┬─────┴───────────┘
         ↓
    Combined Result
```

**Use Cases:**
- ✅ **Robotics** (vision + movement + planning)
- ✅ **Medical diagnosis** (multiple symptoms + tests)
- ✅ **Autonomous systems** (perception + decision + control)

**Key Point:**
- Breaks down **complex problems** into manageable modules
- Each module specializes in specific task

---

## Multi-Layer Neural Networks (MLP)

### What is an MLP?

**Definition:**  
An advanced neural network model with **multiple layers** of interconnected perceptrons.

**Key Difference from Perceptron:**
```
Perceptron:    Single layer
MLP:           Multiple layers stacked
```

**Structure:**
```
Input → Hidden Layer(s) → Output

Each layer:
- Receives input from previous layer
- Applies weights + bias
- Applies activation function
- Passes to next layer
```

---

## MLP Structure - Detailed

### 1. Input Layer

**Purpose:**  
Takes in raw features from dataset

**Example (Image Recognition):**
```
Each pixel value is an input

28×28 image = 784 input neurons
```

**Characteristics:**
- ✅ No computation here
- ✅ Just passes data forward
- ✅ One neuron per feature

---

### 2. Hidden Layers

**Purpose:**  
Transform inputs into useful representations

**Process:**
```
For each hidden layer:
1. Weighted sum: z = Σ(wᵢxᵢ) + b
2. Activation: a = φ(z)
3. Pass to next layer
```

**Learning Hierarchy (Example: Image Recognition):**
```
┌────────────────────────────────┐
│  INPUT LAYER                   │
│  Raw pixel values              │
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  HIDDEN LAYER 1                │
│  Detects: Edges, lines, corners│
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  HIDDEN LAYER 2                │
│  Detects: Shapes (circles, etc)│
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  HIDDEN LAYER 3                │
│  Detects: Objects (faces, cars)│
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  OUTPUT LAYER                  │
│  Final classification          │
└────────────────────────────────┘
```

**Key Insight:**
- Deeper layers learn more abstract features
- Early layers: Low-level features (edges)
- Later layers: High-level features (objects)

---

### 3. Output Layer

**Purpose:**  
Produces final decision/prediction

**Examples:**

#### Binary Classification:
```
Single neuron:
  Output = probability of class 1
  
Example: Cat vs Dog
  [0.9] → 90% chance of Cat
```

#### Multi-Class Classification:
```
Multiple neurons (one per class):
  Output = probability distribution
  
Example: Digit Recognition (0-9)
  [0.1, 0.05, 0.7, 0.05, 0.1, ...]
         ↑
    Highest probability → Predict "2"
```

---

### Complete MLP Example

**Problem:** Predict survival on Titanic

```
INPUT LAYER:
  ┌─────────┐
  │ Age     │ x₀
  ├─────────┤
  │ Gender  │ x₁
  ├─────────┤
  │ PClass  │ x₂
  └─────────┘
       ↓
HIDDEN LAYER 1:
  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐
  │Σwᵢxᵢ │→│ φ(·) │  │Σwᵢxᵢ │→│ φ(·) │  ...
  └──────┘  └──────┘  └──────┘  └──────┘
       ↓
HIDDEN LAYER 2:
  ┌──────┐  ┌──────┐  ┌──────┐  ┌──────┐
  │Σwᵢxᵢ │→│ φ(·) │  │Σwᵢxᵢ │→│ φ(·) │  ...
  └──────┘  └──────┘  └──────┘  └──────┘
       ↓
OUTPUT LAYER:
  ┌──────────┐  ┌──────────┐
  │ P(Die)   │  │P(Survive)│
  │   0.3    │  │   0.9    │
  └──────────┘  └──────────┘
       ↓              ↓
      [0]          [1]
     (Die)      (Survived)
```

**Prediction:** Survived (probability = 0.9)

---

## How Neural Networks Learn

### The Learning Process

```
┌────────────────────────────────────────┐
│  STEP 1: FORWARD PROPAGATION           │
│  Data flows: Input → Hidden → Output  │
└────────┬───────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  STEP 2: COMPUTE LOSS                  │
│  Measure error between prediction      │
│  and actual answer                     │
└────────┬───────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  STEP 3: BACKPROPAGATION               │
│  Send error backward to update weights │
└────────┬───────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  STEP 4: REPEAT                        │
│  Continue until network learns         │
└────────────────────────────────────────┘
```

---

## Forward Propagation

### Concept

**Idea:**  
Data flows **layer by layer** through the network. Each neuron performs:
1. Weighted sum
2. Add bias
3. Apply activation

**Mathematical Process:**

#### For Layer l:

**Step 1: Weights & Bias**
```
W⁽ˡ⁾ = weight matrix for layer l
b⁽ˡ⁾ = bias vector for layer l
```

**Step 2: Pre-Activation (Weighted Sum)**
```
z⁽ˡ⁾ = W⁽ˡ⁾ a⁽ˡ⁻¹⁾ + b⁽ˡ⁾

where:
  a⁽ˡ⁻¹⁾ = activations from previous layer
```

**Step 3: Activation**
```
a⁽ˡ⁾ = f(z⁽ˡ⁾)

where:
  f(·) = activation function (ReLU, sigmoid, etc.)
```

---

### Output Layer

**Binary Classification:**
```
ŷ = σ(z)  (sigmoid activation)

Output: Probability between 0 and 1
```

**Multi-Class Classification:**
```
ŷ = softmax(z)

Output: Probability distribution
  Example: [0.1, 0.7, 0.2] sums to 1.0
```

---

### Example Forward Pass

```
Layer 0 (Input):     a⁽⁰⁾ = [x₁, x₂, x₃]

Layer 1 (Hidden):
  z⁽¹⁾ = W⁽¹⁾·a⁽⁰⁾ + b⁽¹⁾
  a⁽¹⁾ = ReLU(z⁽¹⁾)

Layer 2 (Hidden):
  z⁽²⁾ = W⁽²⁾·a⁽¹⁾ + b⁽²⁾
  a⁽²⁾ = ReLU(z⁽²⁾)

Layer 3 (Output):
  z⁽³⁾ = W⁽³⁾·a⁽²⁾ + b⁽³⁾
  ŷ = sigmoid(z⁽³⁾)

Final prediction: ŷ
```

---

## Loss Function

### Purpose

**Measure "how wrong" the prediction is**

Compare prediction ŷ with true label y.  
The loss is a **single number to minimize**.

---

### Common Loss Functions

#### 1. Binary Cross-Entropy (BCE)

**Use:** Binary classification (2 classes)

**Formula:**
```
L = -[y log(ŷ) + (1-y)log(1-ŷ)]

where:
  y  = true label (0 or 1)
  ŷ  = predicted probability
```

**Example:**
```
True label:   y = 1 (Cat)
Predicted:    ŷ = 0.9

Loss = -[1×log(0.9) + 0×log(0.1)]
     = -log(0.9)
     ≈ 0.105  (small error, good!)

If ŷ = 0.1:
Loss = -[1×log(0.1) + 0×log(0.9)]
     = -log(0.1)
     ≈ 2.30  (large error, bad!)
```

---

#### 2. Categorical Cross-Entropy (CE)

**Use:** Multi-class classification (K classes)

**Formula:**
```
L = -Σ(k=1 to K) yₖ log(ŷₖ)

where:
  yₖ  = true label (one-hot encoded)
  ŷₖ  = predicted probability for class k
```

**Example:**
```
True label:   [0, 1, 0]  (class 2)
Predicted:    [0.1, 0.7, 0.2]

Loss = -[0×log(0.1) + 1×log(0.7) + 0×log(0.2)]
     = -log(0.7)
     ≈ 0.357
```

---

#### 3. Mean Squared Error (MSE)

**Use:** Regression tasks

**Formula:**
```
L = (1/n) Σ(ŷ - y)²

where:
  n  = number of samples
  ŷ  = predicted value
  y  = true value
```

**Example:**
```
True:     y = 5
Predicted: ŷ = 4.5

Loss = (4.5 - 5)²
     = (-0.5)²
     = 0.25
```

---

## Loss Optimization

### The Goal

**Find weights W* that minimize the loss:**

```
W* = argmin_W [ (1/n) Σ L(f(x⁽ⁱ⁾; W), y⁽ⁱ⁾) ]
              i=1 to n

where:
  W           = weights (parameters)
  f(x⁽ⁱ⁾; W)  = model prediction for input x⁽ⁱ⁾
  y⁽ⁱ⁾        = true label for input x⁽ⁱ⁾
  L(·,·)      = loss function
  n           = number of training examples
```

---

### Simplified Notation

```
W* = argmin_W J(W)

where:
  J(W) = cost function (average loss)
```

**Interpretation:**
```
Training a neural network means:
Adjusting weights W so predictions 
are as close as possible to true outputs,
by minimizing the loss (cost) function.
```

---

## Gradient Descent

### Concept

**Update parameters using the gradient of the loss function.**

**Visual Analogy:**
```
     Cost
      │     ╱╲
      │   ╱    ╲
      │ ╱        ╲    ← Start here
      │╱____      ╲
      └──────────────── Weights
         ↓
    Roll down hill
    to find minimum
```

---

### Gradient Descent Surfaces

**3D Cost Surface:**
```
J(w₀, w₁)
   ╱╲  ╱╲
  ╱  ╲╱  ╲   ← Multiple local minima
 ╱    ╱    ╲
╱____╱______╲

Goal: Find lowest valley (global minimum)
```

**Gradient Descent Path:**
```
Starting Point ★
    ↓  ↓  ↓
    ↓  ↓  ↓  (Follow gradient)
    ↓  ↓  ↓
   Minimum ✓
```

---

## Gradient Descent Algorithm

### Algorithm Steps

```python
# Pseudocode

# Step 1: Initialize weights randomly
W = random_normal(0, σ²)

# Step 2: Loop until convergence
while not converged:
    
    # Step 3: Compute gradient
    gradient = ∂J(W)/∂W
    
    # Step 4: Update weights
    W = W - η × gradient
    
# Step 5: Return final weights
return W
```

---

### Mathematical Formula

```
W ← W - η × (∂J(W)/∂W)

where:
  W        = current weight
  η        = learning rate (step size)
  ∂J(W)/∂W = gradient of loss w.r.t weight
  ←        = assignment (update)
```

---

### Update Equation Breakdown

**Current position:**
```
W_current
```

**Gradient (direction of steepest increase):**
```
∂J(W)/∂W
```

**Move in opposite direction:**
```
-η × (∂J(W)/∂W)
```

**New position:**
```
W_new = W_current - η × (∂J(W)/∂W)
```

---

### Learning Rate (η)

**Role:** Controls step size

```
Small η (e.g., 0.001):
  ✅ More stable
  ❌ Slow convergence
  
Large η (e.g., 0.1):
  ✅ Fast convergence
  ❌ May overshoot minimum
  ❌ May diverge

Optimal η:
  Balance speed and stability
```

---

## Backpropagation

### What is Backpropagation?

**Purpose:**  
Compute **gradients** efficiently to update all weights in the network.

**Process:**  
Propagate error **backwards** from output to input.

---

### Chain Rule

**Foundation of backpropagation:**

**Computational Graph:**
```
Input x → Multiply by w₁ → z₁ → ... → ŷ → Loss J(W)
```

**Chain Rule Formula:**
```
∂f(W)/∂w₁ = (∂f(W)/∂ŷ) × (∂ŷ/∂z₁) × (∂z₁/∂w₁)

Propagate gradient backward through each operation
```

---

### Backpropagation Process

```
┌────────────────────────────────────────┐
│  FORWARD PASS                          │
│  x → z₁ → a₁ → z₂ → a₂ → ... → ŷ → L │
└────────────────────────────────────────┘
                ↓
┌────────────────────────────────────────┐
│  COMPUTE LOSS                          │
│  L = loss(ŷ, y)                        │
└────────────────────────────────────────┘
                ↓
┌────────────────────────────────────────┐
│  BACKWARD PASS (Backpropagation)       │
│  ∂L/∂ŷ ← ∂L/∂a₂ ← ∂L/∂z₂ ← ... ← ∂L/∂w│
└────────────────────────────────────────┘
                ↓
┌────────────────────────────────────────┐
│  UPDATE WEIGHTS                        │
│  W ← W - η×(∂L/∂W)                     │
└────────────────────────────────────────┘
```

---

### Example: 3-Layer Network

**Forward Pass:**
```
Layer 0 (Input):
  a⁽⁰⁾ = [x₁, x₂]

Layer 1 (Hidden):
  z⁽¹⁾ = W⁽¹⁾a⁽⁰⁾ + b⁽¹⁾
  a⁽¹⁾ = ReLU(z⁽¹⁾)

Layer 2 (Output):
  z⁽²⁾ = W⁽²⁾a⁽¹⁾ + b⁽²⁾
  ŷ = σ(z⁽²⁾)

Loss:
  L = BCE(ŷ, y)
```

---

**Backward Pass:**
```
Output Layer:
  ∂L/∂ŷ = -(y/ŷ) + (1-y)/(1-ŷ)
  ∂L/∂z⁽²⁾ = ∂L/∂ŷ × σ'(z⁽²⁾)
  ∂L/∂W⁽²⁾ = ∂L/∂z⁽²⁾ × a⁽¹⁾ᵀ
  ∂L/∂b⁽²⁾ = ∂L/∂z⁽²⁾

Hidden Layer:
  ∂L/∂a⁽¹⁾ = W⁽²⁾ᵀ × ∂L/∂z⁽²⁾
  ∂L/∂z⁽¹⁾ = ∂L/∂a⁽¹⁾ × ReLU'(z⁽¹⁾)
  ∂L/∂W⁽¹⁾ = ∂L/∂z⁽¹⁾ × a⁽⁰⁾ᵀ
  ∂L/∂b⁽¹⁾ = ∂L/∂z⁽¹⁾
```

---

**Update Weights:**
```
W⁽²⁾ ← W⁽²⁾ - η × ∂L/∂W⁽²⁾
b⁽²⁾ ← b⁽²⁾ - η × ∂L/∂b⁽²⁾
W⁽¹⁾ ← W⁽¹⁾ - η × ∂L/∂W⁽¹⁾
b⁽¹⁾ ← b⁽¹⁾ - η × ∂L/∂b⁽¹⁾
```

---

### Visualization

```
┌──────────────────────────────────────┐
│  Input Layer                         │
│  ● ●  (x₁, x₂, bias)                │
└────┬─────────────────────────────────┘
     │ W⁽¹⁾, b⁽¹⁾
┌────▼─────────────────────────────────┐
│  Hidden Layer                        │
│  ● ● ●  (h₁, h₂, h₃)                │
└────┬─────────────────────────────────┘
     │ W⁽²⁾, b⁽²⁾
┌────▼─────────────────────────────────┐
│  Output Layer                        │
│  ●  (y₁, y₂)                         │
└──────────────────────────────────────┘

Forward: Data flows ↓ (compute predictions)
Backward: Gradients flow ↑ (compute ∂L/∂W)
```

---

## Summary

### Key Concepts Covered

```
NEURAL NETWORKS:
├── Inspired by biological neurons
├── Layers of interconnected nodes
├── Weights + Bias + Activation
└── Learn through training

PERCEPTRON:
├── Simplest neural network
├── Binary classifier
├── Linear separability limitation
└── Foundation for deep learning

ACTIVATION FUNCTIONS:
├── Sigmoid (0, 1)
├── Tanh (-1, 1)
├── ReLU [0, ∞) - Most popular
└── Leaky ReLU (-∞, ∞)

LEARNING PROCESS:
├── Forward Propagation (make prediction)
├── Loss Function (measure error)
├── Backpropagation (compute gradients)
└── Gradient Descent (update weights)

TYPES OF NETWORKS:
├── Feedforward (FNN)
├── Convolutional (CNN) - Images
├── Recurrent (RNN/LSTM) - Sequences
└── GANs - Generation
```

---

## Thank You!

### Course Information
- **Module:** IT2011 - Artificial Intelligence and Machine Learning
- **Lecture:** 7 - Neural Networks and Deep Learning
- **Lecturer:** Dr. Lakmini Abeywardhana
- **Institution:** SLIIT - Sri Lanka Institute of Information Technology
- **Faculty:** Faculty of Computing
- **Academic Year:** Year 02, Semester 01
- **Student:** IT24103352
- **Date:** 2025-01-23

---

### Next Steps

**What's Coming:**
- Lecture 8: Advanced Neural Network Architectures (CNN, RNN, LSTM)
- Practical implementation of neural networks
- Deep learning frameworks (TensorFlow, PyTorch)

**Recommended Practice:**
1. ✅ Implement perceptron from scratch
2. ✅ Build simple multi-layer network
3. ✅ Experiment with different activation functions
4. ✅ Understand backpropagation mathematically
5. ✅ Try different loss functions
6. ✅ Visualize learning process

---

**End of Lecture 7**

**Total Pages:** 37  
**Completion Status:** ✅ Fully converted to Markdown
