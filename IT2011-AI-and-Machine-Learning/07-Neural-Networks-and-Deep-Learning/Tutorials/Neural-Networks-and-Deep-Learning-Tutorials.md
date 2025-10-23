# Tutorial 07 - Neural Networks and Perceptrons

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Department:** Information Technology  
**Faculty:** Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-23

---

## Table of Contents

- [Perceptron Model Questions](#perceptron-model-questions)
- [Calculations and Practical Questions](#calculations-and-practical-questions)

---

## Perceptron Model Questions

**A perceptron is shown in the following Figure:**

### Diagram Description:

The diagram illustrates a single perceptron, the fundamental unit of a neural network.

- **On the left:** "Input signals" are shown, labeled x₁, x₂, down to xₘ.
- **In the middle:**
  - Each input signal x has an arrow pointing to a corresponding "Synaptic weight", which are in circles labeled w_{k1}, w_{k2}, down to w_{km}.
  - Arrows from all synaptic weights point to a central "Summing junction", represented by a large circle containing a Sigma symbol (Σ).
  - A separate input, "Bias bₖ", also has an arrow pointing into the summing junction.
- **On the right:**
  - An arrow labeled vₖ exits the summing junction and points to a box labeled "Activation function" which contains the symbol φ(·).
  - An arrow labeled "Output yₖ" exits the activation function box, pointing to the far right.

---

### 1. What is the role of the synaptic weights (w_{k1}, w_{k2}, ..., w_{km}) in this model?

---

### 2. Why is the bias (bₖ) included in the summing junction? What would happen if it were removed?

---

### 3. Explain the function of the activation function φ(·). Why do we need it instead of passing the summation directly as output? (If the activation function were removed, i.e., identity function, what kind of model would this neuron represent?)

---

### 4. What happens if all weights are set to zero?

---

## Calculations and Practical Questions

### 5. Considering the 3-dimensional input signal (X₁), the initial weight vector (W₁), the activation function and the bias given below, calculate the output vₖ of the single neuron shown above.

**Given:**
- inputs: x₁ = 1, x₂ = 2, x₃ = -1
- weights: w_{k1} = 0.3, w_{k2} = -0.5, w_{k3} = 0.8
- bias: bₖ = 0.2

**Calculate the net input vₖ**

---

### 6. If the activation function is sigmoid, what is the output and compute it approximately for vₖ = 0.8

---

### 7. If the learning rate is 0.01 and the expected output is 1, demonstrate how the weight update can be done. You must clearly show all the steps in your calculation.

---

### 8. If the activation function is a step function (output = 1 if vₖ ≥ 0, otherwise 0), compute the final output yₖ for the above example.

---

### 9. Why is this structure considered the building block of Artificial Neural Networks (ANNs)?

---

### 10. Using a suitable illustration, explain how the training of a Multilayer Perceptron happens with the back-propagation algorithm.

---

**End of Tutorial 07**
