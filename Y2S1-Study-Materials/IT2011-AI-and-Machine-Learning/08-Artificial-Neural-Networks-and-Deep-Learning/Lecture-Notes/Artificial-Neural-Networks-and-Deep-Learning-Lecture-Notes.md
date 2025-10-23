# LECTURE 8 - Artificial Neural Networks and Deep Learning

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-10-23  
**Current Time (UTC):** 2025-10-23 10:34:50

---

## Table of Contents

- [What is Deep Learning? (Recap)](#what-is-deep-learning-recap)
- [Biological Inspiration](#biological-inspiration)
- [Introduction to Neural Networks](#introduction-to-neural-networks)
- [Perceptron Detailed](#perceptron-detailed)
- [Batch Perceptron Algorithm](#batch-perceptron-algorithm)
- [Loss Optimization](#loss-optimization)
- [Gradient Descent](#gradient-descent)
- [Activation Functions](#activation-functions)
- [Multi-Layer Neural Networks](#multi-layer-neural-networks)
- [How Neural Networks Learn](#how-neural-networks-learn)
- [Forward Propagation](#forward-propagation)
- [Loss Functions](#loss-functions)
- [Backpropagation](#backpropagation)
- [Learning Rate](#learning-rate)
- [Building Neural Networks (Practical)](#building-neural-networks-practical)
- [Overfitting and Regularization](#overfitting-and-regularization)
- [Types of Neural Networks](#types-of-neural-networks)

---

## What is Deep Learning? (Recap)

### Relationship with Machine Learning

```
┌────────────────────────────────────┐
│                                    │
│         ML (Machine Learning)      │
│  ┌──────────────────────────┐     │
│  │                          │     │
│  │   DL (Deep Learning)     │     │
│  │   Concepts built on      │     │
│  │   top of ML              │     │
│  │                          │     │
│  └──────────────────────────┘     │
│                                    │
└────────────────────────────────────┘
```

---

### Key Concepts

**Building Blocks:**
- **Perceptron** = Single neuron
- **Deep Learning** = Many perceptrons organized in layers

---

### Comparison

#### Traditional ML:
```
┌────────────────────────────────────┐
│  Cooking with a recipe             │
│  Steps are predefined              │
│                                    │
│  Process:                          │
│  1. Manually select features       │
│     Example: Detect edges in image │
│  2. Define transformations         │
│  3. Train model                    │
└────────────────────────────────────┘
```

#### Deep Learning:
```
┌────────────────────────────────────┐
│  Chef who experiments              │
│  Learns by tasting                 │
│  Improves over time                │
│                                    │
│  Process:                          │
│  1. Learns features automatically  │
│     Example: Finds eyes, nose,     │
│              face without coding   │
│  2. Discovers patterns on its own  │
│  3. Improves with more data        │
└────────────────────────────────────┘
```

---

## Biological Inspiration

### Biological Neuron

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

**Components:**
- **Dendrites:** Receive incoming signals
- **Cell Body (Soma):** Processes information
- **Nucleus:** Contains cell's genetic material
- **Axon:** Long fiber transmitting output signals
- **Synapse:** Junction connecting to other neurons

---

### Artificial Neuron Model

```
Input Signals → Weights → Weighted Sum → Activation → Output

x₁ ──────w₁────┐
x₂ ──────w₂────┤
x₃ ──────w₃────├──→ Σ wᵢxᵢ → φ(·) → Output
x₄ ──────w₄────┘
```

**Mathematical Process:**

**Step 1: Weighted Sum**
```
Σ(i=1 to 4) wᵢxᵢ
```

**Step 2: Nonlinear Activation**
```
Output = φ(Σ wᵢxᵢ)
```

---

### Linear Separability

**Key Concept:**  
Biological neurons inspired artificial neurons, but single neurons can only solve **linearly separable** problems.

```
LINEARLY SEPARABLE:
  Class 1: ●●●
           ──────  ← Can draw a line
  Class 2: ○○○
  
  ✅ Single neuron works

NON-LINEARLY SEPARABLE:
  ● ○ ●
  ○ ● ○
  ● ○ ●
  
  ❌ Single neuron fails
  ✅ Need multiple layers
```

---

## Introduction to Neural Networks

### What is a Neural Network?

**Definition:**  
A computational model inspired by biological neural networks in the human brain.

**Structure:**  
Made up of **layers** of interconnected **nodes** or **"neurons"**.

---

## Neuron Model (Detailed)

### Mathematical Representation

```
Inputs → Weights → Summation → Bias → Activation → Output

x₁ ─────W_{k1}────┐
x₂ ─────W_{k2}────┤
   ⋮        ⋮      ├──→ Σ ──→ + bₖ ──→ φ(·) ──→ yₖ
xₘ ─────W_{km}────┘

Where:
  xᵢ      = Input signals
  W_{ki}  = Synaptic weights
  Σ       = Summation junction
  bₖ      = Bias
  φ(·)    = Activation function (signum)
  yₖ      = Output
```

---

### Step-by-Step Process

#### Step 1: Weighted Sum
```
uₖ = Σ(j=1 to m) W_{kj} × xⱼ
```

#### Step 2: Add Bias
```
vₖ = uₖ + bₖ
```

#### Step 3: Activation Function (Signum)
```
yₖ = Sgn(vₖ) = φ(uₖ + bₖ)

where:
  Sgn(vₖ) = {
    -1  if vₖ < 0
     0  if vₖ = 0
    +1  if vₖ > 0
  }
```

---

### Example Calculation

**Given:**
```
uₖ + bₖ = vₖ = 0.67
```

**Question:**  
What is Sgn(vₖ)?

**Answer:**
```
Since vₖ = 0.67 > 0
→ Sgn(0.67) = +1
```

---

## Perceptron Detailed

### Linear Separability Revisited

#### Case (a): Linearly Separable ✅

```
      Class C₁
    ●  ●  ●  ●
    
    ─────────────  ← Decision Boundary (Hyperplane)
                     
    ○  ○  ○  ○
      Class C₂

Mathematical Representation:
  y = 1  if (w·x + b) ≥ 0
  y = 0  otherwise
  
✅ Perceptron can solve this
```

---

#### Case (b): Non-Linearly Separable ❌

```
    ●  ●
  ●  ○  ○  ●
    ○  ●
  ●  ○  ○  ●
    ●  ●

Cannot draw a straight line to separate

❌ Perceptron CANNOT solve this
✅ Need advanced (multi-layer) networks
```

**Key Insight:**  
When classes C₁ and C₂ are too close or intermingled, they become **nonlinearly separable** — beyond the perceptron's capability.

---

## Perceptron Convergence Algorithm

### Variables and Parameters

```
x(n) = (m+1)-by-1 input vector
     = [+1, x₁(n), x₂(n), ..., xₘ(n)]ᵀ

w(n) = (m+1)-by-1 weight vector
     = [b, w₁(n), w₂(n), ..., wₘ(n)]ᵀ
     where b = bias

y(n) = actual response (predicted, quantized)
d(n) = desired response (actual result)
η    = learning rate (0 < η < 1)
```

---

### Algorithm Steps

#### Step 1: Initialization
```
Set w(0) = [0, 0, ..., 0]ᵀ
(All weights start at zero)
```

---

#### Step 2: Activation
```
At time-step n:
- Apply input vector x(n)
- Apply desired response d(n)
```

**Note:**  
This is for **linearly separable data**.

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

**Interpretation:**
- Calculates **predicted result**
- Compares with **actual result**

---

#### Step 4: Adaptation of Weight Vector
```
w(n+1) = w(n) + η[d(n) - y(n)]x(n)

where desired response:
  d(n) = {
    +1  if x(n) belongs to class φ₁
    -1  if x(n) belongs to class φ₂
  }
```

**Update Logic:**
```
If prediction correct: d(n) = y(n)
  → d(n) - y(n) = 0
  → No weight update

If prediction wrong: d(n) ≠ y(n)
  → d(n) - y(n) ≠ 0
  → Adjust weights
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

### Example: Perceptron Training

**Dataset:**

| x₁ | x₂ | Class |
|----|----|----|
| 1 | 1.5 | +1 |
| 1.5 | 2.5 | +1 |
| 2 | 1 | +1 |
| 2.5 | 4 | -1 |
| 3 | 2.5 | -1 |
| 5 | 2 | -1 |

---

**Iteration 0: Initialize**

```
x(0) = [+1, +1, +1.5]ᵀ  (first row with bias)
w(0) = [0, 0, 0]ᵀ       (all zeros)
```

**Compute:**
```
v = wᵀx = [0, 0, 0] · [+1, +1, +1.5]
  = 0×1 + 0×1 + 0×1.5
  = 0

y(0) = sgn(v) = sgn(0) = 0
```

**Desired:**
```
d(0) = +1  (from dataset)
```

**Update:**
```
w(1) = w(0) + η[d(0) - y(0)]x(0)
     = [0,0,0] + η[1-0][1,1,1.5]
     = η[1,1,1.5]
```

---

**After Training (Final Weights):**

| b | w₁ | w₂ |
|---|----|----|
| 1.8 | -0.3 | -0.5 |

**Decision Boundary:**
```
1.8 - 0.3x₁ - 0.5x₂ = 0

Rearranged:
x₂ = 3.6 - 0.6x₁
```

---

### Visualization

```
x₂
 4│     ×       ← Class -1
  │   ×   ×
 3│  ×
  │
 2│    ○  ○     ← Class +1
  │○  ────────  Decision Boundary
 1│
  └──────────────── x₁
   0  1  2  3  4  5

○ = Class +1 (blue circles)
× = Class -1 (red x's)
```

---

## Batch Perceptron Algorithm

### Motivation

**Previous algorithm:**
- ❌ No explicit cost function
- ❌ Single-sample correction

**Batch approach:**
- ✅ Uses cost function
- ✅ Updates based on **multiple samples**
- ✅ More generalized

---

### Cost Function for Perceptron

**Definition:**
```
J(w) = Σ (-wᵀx(n)d(n))
       x(n)∈𝕏

where:
  𝕏 = set of MISCLASSIFIED samples
```

**Interpretation:**
```
If all samples correctly classified:
  𝕏 = empty set
  J(w) = 0 ✅

If some samples misclassified:
  J(w) > 0 ❌
  
Number of misclassified samples ↑
→ J(w) ↑
```

---

### Understanding Misclassification

**For misclassified samples:**

```
SCENARIO 1: True class = C₁ (+1)
  wᵀ(n)·x(n) > 0  (predicted +1, correct!)
  wᵀ(n)·x(n) < 0  (predicted -1, WRONG!)
  
SCENARIO 2: True class = C₂ (-1)
  wᵀ(n)·x(n) < 0  (predicted -1, correct!)
  wᵀ(n)·x(n) > 0  (predicted +1, WRONG!)
```

**Unified Condition for Misclassification:**
```
wᵀ(n)·x(n)·d(n) < 0

Therefore:
-wᵀ(n)·x(n)·d(n) > 0

Cost Function:
J(w) = Σ (-wᵀ·x(n)·d(n))
       for all misclassified samples
```

---

### Gradient Vector

**Differentiate J(w) with respect to w:**
```
∇J(w) = ∂J(w)/∂w
      = Σ (-x(n)d(n))
        x(n)∈𝕏
```

---

### Weight Update (Batch)

**Single Sample Update:**
```
w(n+1) = w(n) + η(x(n)d(n))
```

**Batch Update (All Misclassified):**
```
w(n+1) = w(n) + η Σ (x(n)d(n))
                   x∈𝕏

where:
  𝕏 = set of incorrectly classified samples
```

**Note:**  
These samples are **selected randomly** from the misclassified set.

---

## Loss Optimization

### The Optimization Problem

**Goal:**
```
Find weights W* that minimize the loss

W* = argmin_W [ (1/n) Σ L(f(x⁽ⁱ⁾; W), y⁽ⁱ⁾) ]
              i=1 to n
```

**Components:**
- **W:** Weights (parameters) of the neural network
- **f(x⁽ⁱ⁾; W):** Model's prediction for input x⁽ⁱ⁾ using weights W
- **y⁽ⁱ⁾:** True label for input x⁽ⁱ⁾
- **L(·,·):** Loss function (e.g., MSE, cross-entropy)
- **(1/n) Σ ...:** Average loss over all training examples

---

### Simplified Notation

```
W* = argmin_W J(W)

where:
  J(W) = cost function (average loss)
```

---

### Training Interpretation

**Bottom Line:**
```
Training a neural network means:

Adjusting weights W so the model's 
predictions are as CLOSE as possible 
to the true outputs, by MINIMIZING 
the loss (cost) function.
```

---

## Gradient Descent

### Visual Intuition

```
    Cost J(w)
      │     ╱╲
      │   ╱    ╲
      │ ╱        ╲    ← Start here
      │╱____      ╲
      └──────────────── Weights w
         ↓
    Roll down hill
    to find minimum
```

**Analogy:**  
Finding the lowest point in a valley by always stepping downhill.

---

### The Gradient

**Gradient = Direction of steepest ASCENT**

**Therefore:**  
Move in **opposite** direction to descend!

```
Gradient: ∂J(w)/∂w  (points up)
Update:   -η × (∂J(w)/∂w)  (go down)
```

---

### Update Rule

```
w ← w - η × (∂J(w)/∂w)

where:
  w        = current weight
  η        = learning rate (step size)
  ∂J(w)/∂w = gradient of loss w.r.t. weight
  ←        = assignment (update)
```

---

### Example: Single Weight

**Cost Function:**
```
J(w) = convex curve
```

**Steps:**
1. Start at weight w
2. Calculate gradient g = ∂J(w)/∂w
3. Update: w_new = w - η×g
4. Repeat until minimum

**Visualization:**
```
J(w)
 │    ╱╲
 │  ╱    ╲
 │╱  w    ╲
 │    ↓     ╲
 │   w_new   ╲
 └────────────── w
      Gradient
      descent
      step
```

---

### Three Scenarios

```
SCENARIO A: w₁ (left of minimum)
  g₁ = negative slope
  w_x = w₁ - g₁  (moves right) ✅
  
SCENARIO B: w₂ (closer to minimum)
  g₂ = smaller negative slope
  w_x = w₂ - g₂  (smaller step right) ✅
  
SCENARIO C: w₃ (right of minimum)
  g₃ = positive slope
  w_x = w₃ - g₃  (moves left) ✅

All converge to minimum!
```

---

### Gradient Calculation

**For perceptron cost function:**
```
J(w) = -[wᵀ·x(n)·d(n)]  (for misclassified)

∂J(w)/∂w = -(x(n)d(n))
```

**Update:**
```
w(n+1) = w(n) - η(-x(n)d(n))
       = w(n) + η(x(n)d(n))
```

**Key Insight:**  
The **slope** tells you **how much to move**.

---

## Activation Functions

### Why Activation Functions?

**Without activation:**
```
Multiple linear layers = Single linear layer
(No benefit to depth!)
```

**With activation:**
```
Non-linear transformations
→ Can learn complex patterns
→ Deep networks become powerful
```

---

### 1. Sigmoid Function

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
```
Range: (0, 1)
Interpretation: Can be used as probability

If x > 0:  0.5 ≤ y ≤ 1
If x ≤ 0:  0 ≤ y ≤ 0.5
```

**Use Cases:**
- Output layer (binary classification)
- Historical hidden layers (now less common)

---

### 2. Tanh Function

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
```
Range: (-1, 1)
Zero-centered (advantage over sigmoid)
```

---

### 3. ReLU (Rectified Linear Unit)

**Formula:**
```
ReLU(x) = max(0, x) = {
  x  if x > 0
  0  if x ≤ 0
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
```
Range: [0, ∞)
Computationally efficient
Most popular for hidden layers

If Σxᵢwᵢ > 0:  y = Σxᵢwᵢ
If Σxᵢwᵢ ≤ 0:  y = 0
```

**Advantages:**
- ✅ Fast to compute
- ✅ No vanishing gradient (for positive values)
- ✅ Sparse activation

**Drawback:**
- ❌ "Dying ReLU" (neurons can become inactive)

---

### 4. Leaky ReLU

**Formula:**
```
Leaky ReLU(x) = {
  x      if x > 0
  αx     if x ≤ 0
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
 0│╱─────────  (slight slope for x<0)
  └─────────────── x
 -10  0  10
```

**Properties:**
```
Range: (-∞, ∞)
Addresses "dying ReLU" problem
```

---

## Multi-Layer Neural Networks

### What is an MLP?

**Definition:**  
Advanced model with **multiple layers** stacked on top of each other.

**Key Difference from Perceptron:**
```
Perceptron:  Single neuron
MLP:         Multiple layers of neurons
```

---

### Types Based on Depth

#### Shallow Neural Network

```
Input Layer → Hidden Layer → Output Layer
              (single layer)

Characteristics:
- Usually ONE hidden layer
- Fast training
- Less processing power
- Limited complexity
```

**Example Architecture:**
```
Input Layer (4 nodes):
  x₁, x₂, x₃, x₄
  ↓  ↓  ↓  ↓
Hidden Layer (5 nodes):
  Perceptron₁ (Σ, φ)
  Perceptron₂ (Σ, φ)
  Perceptron₃ (Σ, φ)
  Perceptron₄ (Σ, φ)
  Perceptron₅ (Σ, φ)
  ↓
Output Layer (1 node):
  Output

Weights:
  W₁₁, W₁₂, W₁₃, W₁₄ (to first hidden neuron)
  ...
```

---

#### Deep Neural Network

```
Input → Hidden₁ → Hidden₂ → ... → Hidden_N → Output
        (multiple layers)

Characteristics:
- MULTIPLE hidden layers
- Slower training
- More processing power
- Can learn complex patterns
```

**Example Architecture:**
```
Input Nodes:   a₁, a₂, ..., a_N
  ↓
Layer 1:       b₁, b₂, ..., b_V
  ↓
Layer k:       k₁, k₂, ..., k_Z
  ↓
Layer l:       l₁, l₂, ..., l_W
  ↓
Output Nodes:  n₁, n₂, ..., n_V
```

---

### Fully Connected / Dense Layers

**Definition:**  
All inputs are **densely connected** to all outputs.

```
Layer i          Layer i+1
  ●────────────→●
  ●──┬─────────→●
  ●──┼──┬──────→●
  ●──┼──┼──┬───→●
     │  │  │
Every neuron connected to every next neuron
```

---

## MLP Structure - Detailed

### Input Layer

**Purpose:**  
Takes in raw features from dataset

**Example (Image Recognition):**
```
28×28 grayscale image:
  - 784 pixels
  - Each pixel = 1 input
  - Values: 0-255 (grayscale intensity)

Colored image (height × width × 3):
  - 3 channels: Red, Green, Blue
  - Each channel = separate inputs
```

**Characteristics:**
- ✅ No computation
- ✅ Just passes data forward
- ✅ One neuron per feature

---

### Hidden Layers

**Purpose:**  
Transform inputs into useful representations

**Process:**
```
For each hidden layer:
1. Weighted sum: z = Σ(wᵢxᵢ) + b
2. Activation: a = φ(z)  (e.g., ReLU)
3. Pass to next layer
```

**Learning Hierarchy (Image Example):**
```
┌────────────────────────────────┐
│  INPUT LAYER                   │
│  Raw pixel values (0-255)      │
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  HIDDEN LAYER 1                │
│  Detects: Low-level features   │
│  - Edges                       │
│  - Lines                       │
│  - Corners                     │
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  HIDDEN LAYER 2                │
│  Detects: Mid-level features   │
│  - Shapes (circles, rectangles)│
│  - Textures                    │
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  HIDDEN LAYER 3                │
│  Detects: High-level features  │
│  - Objects (faces, cars)       │
│  - Complex patterns            │
└────────┬───────────────────────┘
         ↓
┌────────────────────────────────┐
│  OUTPUT LAYER                  │
│  Final classification          │
└────────────────────────────────┘
```

---

### Output Layer

**Purpose:**  
Produces final decision/prediction

**Binary Classification:**
```
Single neuron with sigmoid:
  Output = probability of class 1
  
Example: Cat vs Not-Cat
  [0.9] → 90% chance of Cat
  [0.1] → 10% chance of Not-Cat
  
Decision: If P ≥ 0.5 → Cat
          If P < 0.5 → Not-Cat
```

**Multi-Class Classification:**
```
Multiple neurons with softmax:
  Output = probability distribution
  
Example: Cat/Dog classification (4 classes)
  [0.5 (cat), 0.3 (dog), 0.1, 0.1]
  Σ = 1.0
  
Decision: argmax → Cat
```

---

## Building Neural Networks (Practical)

### Example: 4 → 5 → 1 MLP

**Architecture:**
- Input: 4 features
- Hidden: 5 neurons (ReLU)
- Output: 1 neuron (Sigmoid)

---

### TensorFlow/Keras Implementation

```python
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

# Define model
model = keras.Sequential([
    layers.Input(shape=(4,)),           # Input layer: 4 features
    layers.Dense(5, activation="relu"),  # Hidden: 5 neurons (ReLU)
    layers.Dense(1, activation="sigmoid") # Output: 1 neuron (Sigmoid)
])

# Compile model
model.compile(
    optimizer="adam",                # Optimizer (adaptive learning rate)
    loss="binary_crossentropy",      # Loss function (binary classification)
    metrics=["accuracy"]             # Evaluation metric
)

# View architecture
model.summary()
```

**Output:**
```
Model: "sequential"
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
dense (Dense)                (None, 5)                 25        
dense_1 (Dense)              (None, 1)                 6         
=================================================================
Total params: 31
Trainable params: 31
Non-trainable params: 0
```

---

### PyTorch Implementation

```python
import torch
import torch.nn as nn

# Define model
model = nn.Sequential(
    nn.Linear(4, 5),      # Input layer: 4 → 5
    nn.ReLU(),            # Hidden activation
    nn.Linear(5, 1),      # Hidden → Output: 5 → 1
    nn.Sigmoid()          # Output activation
)

# View architecture
print(model)
```

---

### Visualization

```
Input Layer (4):
  ● ● ● ●
  │ │ │ │
  └─┴─┴─┼─────┐
        │     │
Hidden Layer (5):
  ● ● ● ● ●
  [Σ,ReLU] each
  │ │ │ │ │
  └─┴─┴─┴─┘
        │
Output Layer (1):
  ●
  [Σ,Sigmoid]
        │
  Prediction
```

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
│  Measure error                         │
└────────┬───────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  STEP 3: BACKPROPAGATION               │
│  Send error backward                   │
└────────┬───────────────────────────────┘
         ↓
┌────────────────────────────────────────┐
│  STEP 4: ADJUST WEIGHTS                │
│  Use gradient descent                  │
└────────────────────────────────────────┘
```

---

### Step 1: Forward Propagation

**Process:**  
Data flows layer by layer

**Example:**
```
Image (pixels) → Layer 1 → Layer 2 → ... → Prediction
```

---

### Step 2: Loss Function

**Measures error between prediction and actual**

**Example:**
```
Predicted: "Cat" (0.7)
Actual:    "Dog" (0.0 for Cat)

Error: Large! ❌
```

---

### Step 3: Backpropagation

**Error sent backward to update weights**

Uses **Gradient Descent** to minimize error step by step

---

### Step 4: Training

**Repeat forward + backward many times**

```
Epoch 1: 1000 images → calculate loss → update weights
Epoch 2: Same 1000 images → lower loss → update weights
...
Epoch 20: Loss minimized → stop
```

---

## Forward Propagation (Details)

### Idea

Data flows **layer by layer**. Each neuron:
1. Weighted sum
2. Add bias
3. Apply activation

Outputs of one layer → Inputs to next

---

### Math (for layer l)

**Weights & Bias:**
```
W⁽ˡ⁾, b⁽ˡ⁾
```

**Pre-Activation:**
```
z⁽ˡ⁾ = W⁽ˡ⁾ a⁽ˡ⁻¹⁾ + b⁽ˡ⁾

where:
  a⁽ˡ⁻¹⁾ = activations from previous layer
```

**Activation:**
```
a⁽ˡ⁾ = f(z⁽ˡ⁾)

where:
  f(·) = activation function (ReLU, sigmoid, etc.)
```

---

### Output Layer

**Binary Classification:**
```
ŷ = σ(z)  (sigmoid)

Output: Probability (0-1)
```

**Multi-Class Classification:**
```
ŷ = softmax(z)

Output: Probability distribution
  Example: [0.6, 0.2, 0.1, 0.1] (sums to 1.0)
```

**Example:**
```
4-class output:
  Dog:  0.6
  Cat:  0.2
  Cow:  0.1
  Goat: 0.1
  ────
  Sum = 1.0 ✓
```

---

## Loss Functions

### Purpose

**Compare prediction ŷ with true label y**

The loss is a **single number to minimize**.

---

### 1. Binary Cross-Entropy (BCE)

**Use:** Binary classification (2 classes)

**Formula:**
```
L = -[y log(ŷ) + (1-y)log(1-ŷ)]

where:
  y  = true label (0 or 1)
  ŷ  = predicted probability
```

---

### 2. Categorical Cross-Entropy (CCE)

**Use:** Multi-class classification (K classes)

**Formula:**
```
L = -Σ(k=1 to K) yₖ log(ŷₖ)

where:
  yₖ  = true label (one-hot encoded)
  ŷₖ  = predicted probability for class k
```

---

### 3. Mean Squared Error (MSE)

**Use:** Regression

**Formula:**
```
L = (1/n) Σ(ŷ - y)²

where:
  n  = number of samples
  ŷ  = predicted value
  y  = true value
```

---

## Gradient Descent (Detailed)

### Visualization

```
     Cost J(w)
      │     ╱╲
      │   ╱    ╲
      │ ╱   ?    ╲    ← Where to start?
      │╱____      ╲
      └──────────────── Weights
         ↓
    Roll down hill
```

---

### 3D Surface

```
J(w₀, w₁)
   ╱╲  ╱╲
  ╱  ╲╱  ╲   ← Multiple local minima
 ╱    ╱    ╲

Path: × → × → × → minimum
     (step by step)
```

---

## Gradient Descent Algorithm

### Pseudocode

```python
# Algorithm

# 1. Initialize weights randomly
W = random_normal(0, σ²)

# 2. Loop until convergence
while not converged:
    
    # 3. Compute gradient (using backpropagation)
    gradient = ∂J(W)/∂W
    
    # 4. Update weights
    W = W - η × gradient
    
# 5. Return final weights
return W
```

---

### Parameters

```
W        = current weight
η        = learning rate (step size)
∂J(W)/∂W = gradient of loss w.r.t. weight
```

---

### Update Visualization

```
J(w)
 │    ╱╲
 │  ╱    ╲
 │╱  W    ╲
 │    ↓     ╲
 │   W_new   ╲
 └────────────── w

Step = η × gradient
```

---

## Backpropagation (Details)

### Computational Graph

```
Input x → Multiply by w₁ → z₁ → ... → ŷ → Loss J(W)
```

**Chain Rule:**
```
∂J(W)/∂w₁ = (∂J(W)/∂ŷ) × (∂ŷ/∂z₁) × (∂z₁/∂w₁)

Propagate gradient backward through each operation
```

---

### Backpropagation Flow

```
FORWARD PASS:
  Input x → Hidden → Output ŷ → Loss L

BACKWARD PASS:
  ∂L/∂ŷ ← ∂L/∂hidden ← ∂L/∂w
  
  Backpropagate all gradients from output to input
```

---

### Example: 3-Layer Network

**Architecture:**
```
Input Layer → Hidden Layer → Output Layer
  (X₁, X₂)      (N₁₁, N₁₂, N₁₃)     (O/P)
```

**Weights:**
```
w₁, w₃, w₄, w₅, ... (connecting layers)
```

**Backpropagation:**
```
∂J/∂w computed layer by layer
Starting from output, working backward
```

---

## Learning Rate

### What is Learning Rate?

**Definition:**  
A hyperparameter that controls the **speed** at which a neural network learns.

**Measure:**  
How much weights are updated each time the model is trained.

---

### Values

```
Typical range: 0.000001 to 0.001

Examples:
  0.000001  (very small)
  0.0001
  0.001     (common default)
```

---

### Low Learning Rate

```
J(θ)
 │    ╱╲
 │  ╱    ╲
 │╱ →→→→→ ╲
 └────────── θ

Small steps (→)

Pros:
  ✅ More stable
  ✅ Less overshooting

Cons:
  ❌ Slow convergence
  ❌ May get stuck
```

---

### High Learning Rate

```
J(θ)
 │    ╱╲
 │  ╱ ↔↔ ╲
 │╱   ↔   ╲
 └────────── θ

Large steps (↔)

Pros:
  ✅ Fast convergence

Cons:
  ❌ Overshoots minimum
  ❌ May diverge
```

---

### Decent Learning Rate

```
J(θ)
 │    ╱╲
 │  ╱ → ╲
 │╱→  → →╲
 └────────── θ

Balanced steps

✅ Good convergence
✅ Reaches minimum
```

---

### Techniques for Handling Learning Rate

#### 1. Learning Rate Finder

**Approach:**  
Empirically search for suitable rate

**Process:**
```
Test range: 0.0001 to 1.0
Observe loss behavior
Choose rate where loss decreases fastest
```

---

#### 2. Adaptive Learning Rate Methods

**Optimizers that adjust automatically:**

```
ADAM (Adaptive Moment Estimation):
  - Adapts learning rate per parameter
  - Considers past gradients
  - Most popular

RMSprop:
  - Root Mean Square Propagation
  - Adapts based on gradient magnitude

AdaGrad:
  - Adaptive Gradient
  - Larger updates for infrequent features
```

**Advantage:**  
Adapts to the "landscape" of the loss function.

---

## Building Neural Networks - Complete Example

### Architecture: 4 → 5 → 1

```python
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

# Define model
model = keras.Sequential([
    layers.Input(shape=(4,)),           # Input: 4 features
    layers.Dense(5, activation="relu"),  # Hidden: 5 neurons (ReLU)
    layers.Dense(1, activation="sigmoid") # Output: 1 neuron (Sigmoid)
])

# Compile model
model.compile(
    optimizer="adam",              # Adaptive learning rate
    loss="binary_crossentropy",    # BCE loss (binary classification)
    metrics=["accuracy"]           # Track accuracy
)

# View architecture
model.summary()
```

---

### Visualization

```
Input:
  ● (input)
  ↓ Sig(1)
  ● (output)
```

---

### Hyperparameters

**What are hyperparameters?**
```
Parameters set BEFORE training:
  - Learning rate
  - Number of layers
  - Number of neurons per layer
  - Activation functions
  - Batch size
  - Number of epochs
```

---

## Good Practices in Neural Networks

### 1. Use Mini-Batches

**Why?**
```
✅ More accurate gradient estimation
✅ Faster training
✅ Better generalization
```

**Example:**
```
Dataset: 1000 images

Batch training:
  - Process all 1000 at once
  - Slow, memory-intensive

Mini-batch training:
  - Process 20-100 images at a time
  - Update weights after each mini-batch
  - Much faster
```

---

## Overfitting and Regularization

### The Problem of Overfitting

**Definition:**  
Model learns training data **too well**, including noise.

---

### Visual Example

```
UNDERFITTING:
  Y│  ●   ●
   │●  ●
   │ ●
   └────── X
   
  Model: ──────  (straight line)
  Too simple, misses pattern

BALANCED:
  Y│  ●   ●
   │●  ●
   │ ●
   └────── X
   
  Model: ∿∿∿∿  (smooth curve)
  Captures general trend

OVERFITTING:
  Y│  ●   ●
   │●  ●
   │ ●
   └────── X
   
  Model: ∿∿∿∿∿∿∿  (wiggly line)
  Fits every point, captures noise
```

---

## How to Avoid Overfitting

### 1. Adding Dropouts

**Concept:**  
Randomly "drop out" neurons during training

**Diagram:**
```
STANDARD NETWORK:
  ●──●──●──●
  ●──●──●──●
  ●──●──●──●

NETWORK WITH DROPOUT:
  ●──○──●──●  (○ = dropped out)
  ●──●──○──●
  ○──●──●──○
```

**Implementation:**
```python
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

# 4 → 4 → 4 → 1 with Dropout

model = keras.Sequential([
    layers.Input(shape=(4,)),
    layers.Dense(4, activation="relu"),
    layers.Dropout(0.5),                 # Drop 50% of units
    layers.Dense(4, activation="relu"),
    layers.Dropout(0.5),                 # Drop 50% again
    layers.Dense(1, activation="sigmoid")
])

model.compile(
    optimizer="adam",
    loss="binary_crossentropy",
    metrics=["accuracy"]
)
```

---

### 2. Early Stopping

**Concept:**  
Stop training when validation loss starts increasing

**Graph:**
```
Loss
 │
 │  Training Loss ──────────  (keeps decreasing)
 │             ╲
 │              ╲
 │  Validation Loss ∿∿∿∿∿∿  (starts increasing)
 │             ╱     ↑
 │  Underfitting  STOP HERE  Overfitting
 │                (Early stopping)
 └─────────────────────────── Epochs
```

**Implementation:**
```python
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

# Define model
model = keras.Sequential([
    layers.Input(shape=(4,)),
    layers.Dense(4, activation="relu"),
    layers.Dropout(0.5),
    layers.Dense(4, activation="relu"),
    layers.Dropout(0.5),
    layers.Dense(1, activation="sigmoid")
])

model.compile(
    optimizer="adam",
    loss="binary_crossentropy",
    metrics=["accuracy"]
)

# Early stopping callback
early_stop = keras.callbacks.EarlyStopping(
    monitor="val_loss",              # Watch validation loss
    patience=5,                      # Stop if no improvement for 5 epochs
    mode="min",                      # Minimize validation loss
    restore_best_weights=True        # Use best model seen during training
)

# Train with early stopping
model.fit(
    X_train, y_train,
    validation_data=(X_val, y_val),
    epochs=100,
    callbacks=[early_stop]
)
```

---

## Types of Neural Networks

### 1. Feedforward Neural Network (FNN)

**Architecture:**
```
Input Layer → Hidden Layer → Output Layer
  (Forward only, no loops)

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
- Information moves **one direction**
- Input → Hidden → Output
- **No feedback loops**

**Use Cases:**
- ✅ Basic classification (spam detection)
- ✅ Simple pattern recognition
- ✅ Function approximation

**Key Point:**  
Simplest type of neural network

---

### 2. Recurrent Neural Network (RNN)

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
- Connections **loop back**
- **Remembers** information from previous steps
- Maintains internal state (memory)

**Use Cases:**
- ✅ Language modeling
- ✅ Text prediction
- ✅ Speech recognition
- ✅ Time-series forecasting

**Key Point:**  
Good for **sequential data** where order matters

---

### 3. Long Short-Term Memory (LSTM)

**Comparison with RNN:**

```
RNN UNIT:
  Simple loop
  h_{t-1} → σ → h_t
  Short-term memory only

LSTM UNIT:
  Complex internal structure
  ├── Forget Gate (σ)
  ├── Input Gate (σ)
  ├── Input Modulation Gate (φ)
  └── Output Gate (σ)
  
  c_{t-1} (cell state) → c_t
  Long-term memory preserved
```

**How it Works:**
- Special type of RNN
- Avoids "forgetting" long sequences
- Uses **memory cells** and **gates**

**Use Cases:**
- ✅ Machine translation
- ✅ Chatbot responses
- ✅ Predicting stock prices

**Key Point:**  
Designed to **remember long sequences**

---

### 4. Generative Adversarial Networks (GANs)

**How it Works:**
- Two networks compete:
  1. **Generator:** Creates fake data
  2. **Discriminator:** Checks if data is real or fake

**Use Cases:**
- ✅ Creating realistic images
- ✅ Deepfakes
- ✅ Art generation
- ✅ Data augmentation

**Key Point:**  
Good at **generating new, realistic data**

---

### 5. Self-Organizing Maps (SOMs)

**How it Works:**
- Unsupervised network
- Maps **high-dimensional data** → **low dimension** (2D/3D)
- Preserves topological relationships

**Use Cases:**
- ✅ Data clustering
- ✅ Feature mapping
- ✅ Pattern recognition

**Key Point:**  
Helps **visualize complex data**

---

### 6. Modular Neural Networks (MNNs)

**How it Works:**
- Splits big problem into **smaller parts**
- Each part solved by **separate network**
- Results **combined** at the end

**Use Cases:**
- ✅ Robotics
- ✅ Medical diagnosis
- ✅ Large, complex systems

**Key Point:**  
Breaks down **complex problems** into manageable modules

---

## Summary

### Key Concepts

```
DEEP LEARNING:
├── Built on top of ML
├── Learns features automatically
├── Inspired by biological neurons
└── Uses multiple layers

PERCEPTRON:
├── Single neuron
├── Linear separability limitation
├── Foundation for deep learning
└── Uses convergence algorithm

NEURAL NETWORKS:
├── Multiple layers (input, hidden, output)
├── Weights + Bias + Activation
├── Forward propagation (predictions)
├── Backpropagation (learning)
└── Gradient descent (optimization)

ACTIVATION FUNCTIONS:
├── Sigmoid (0,1) - output layer
├── Tanh (-1,1) - hidden layers
├── ReLU [0,∞) - most popular
└── Leaky ReLU (-∞,∞) - addresses dying ReLU

TRAINING:
├── Forward pass (make prediction)
├── Compute loss (measure error)
├── Backward pass (compute gradients)
├── Update weights (gradient descent)
└── Repeat until convergence

REGULARIZATION:
├── Dropout (randomly drop neurons)
├── Early stopping (stop when overfitting begins)
├── Batch normalization
└── Weight decay

TYPES OF NETWORKS:
├── FNN (feedforward)
├── RNN (recurrent)
├── LSTM (long short-term memory)
├── GAN (generative adversarial)
├── SOM (self-organizing map)
└── MNN (modular)
```

---

## Thank You!


---

### Next Steps

**Practice:**
1. ✅ Implement perceptron from scratch
2. ✅ Build multi-layer networks in TensorFlow/PyTorch
3. ✅ Experiment with different architectures
4. ✅ Understand backpropagation mathematically
5. ✅ Try different activation functions
6. ✅ Apply regularization techniques

---

**End of Lecture 8**



---

**Congratulations!** 🎉  
You now have **ALL LECTURES** (including both parts of Lecture 8) fully converted to comprehensive Markdown format, ready for your GitHub repository!
