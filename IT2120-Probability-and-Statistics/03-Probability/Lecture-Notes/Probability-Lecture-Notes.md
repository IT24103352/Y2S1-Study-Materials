# Lecture 03 - Probability

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

- [Terminology](#terminology)
- [Events](#events)
- [Probability](#probability)
- [Basic Properties](#basic-properties)
- [Joint Probability](#joint-probability)
- [Marginal Probability](#marginal-probability)
- [Conditional Probability](#conditional-probability)
- [Theorem of Total Probability](#theorem-of-total-probability)
- [Bayes' Theorem](#bayes-theorem)

---

## Terminology

### Experiment

**Definition:**  
A process leading to well-defined observations or outcomes that generates a set of data.

---

### Trial

**Definition:**  
Each repetition, if the experiment can be repeated any number of times under identical conditions.

---

### Sample Space (S)

**Definition:**  
The set containing all possible outcomes of an experiment.

---

### Finite Sample Space

**Definition:**  
Sample space that contains a finite number of outcomes.

---

### Continuous Sample Space

**Definition:**  
Sample space that contains an interval of values.

---

## Events

### Event

**Definition:**  
A subset of the sample space. Usually denoted in upper case letters.

---

### Simple Event

**Definition:**  
An event that corresponds to a single possible outcome.

---

### Joint Events (Compound Events)

**Definition:**  
An event that corresponds to more than a single possible outcome is known as compound event.

**Example:**  
Getting an odd number by rolling a die

---

### Set Operations on Events

**Null Event:**
- The null subset (∅) of S is called an **impossible event**

**Union:**
- The event **A ∪ B** consists of all outcomes that are in A **or** in B **or** in both

**Intersection:**
- The event **A ∩ B** consists of outcomes that are **both** in A **and** B

**Complement:**
- The event **Aᶜ** (the complement of A in S) consists of all outcomes **not** in A, but in S

---

## Types of Events

### Mutually Exclusive Events

**Definition:**  
Two events A and B are said to be **mutually exclusive** or **disjoint** if:

```
A ∩ B = ∅
```

**Meaning:**  
They **cannot happen together**.

---

### Collectively Exhaustive Events

**Definition:**  
One of the events **must occur**. The set of events covers the **entire sample space**.

---

### Independent Events

**Definition:**  
If the occurrence of one event **does not affect** the occurrence of another event, then both events are said to be **independent** with each other.

---

## Example 1: Rolling a Die

**Problem:**  
A balanced/fair die (with all outcomes equally likely) is rolled. Let A be the event that an even number occurs.

**Solution:**

| Component | Answer |
|:---|:---|
| **Experiment** | Rolling a balanced die |
| **Sample Space** | S = {1, 2, 3, 4, 5, 6} |
| **Event (A)** | A = {2, 4, 6} |
| **Type of Event** | Compound event |

---

## Example 2: Deck of Cards

**Problem:**  
Consider a deck of cards. Let:
- A = Aces
- B = Black cards
- C = Diamonds
- D = Hearts

Find collectively exhaustive events and mutually exclusive events.

---

## Probability

### Definition

**Probability:**  
Measure of the chance that an uncertain event will occur.

---

### Notation

The notation for the statement "Probability of the event A" is denoted as:
- **Pr(A)**, or
- **P(A)**

---

### Properties of Probability

**Range:**
```
0 ≤ P(A) ≤ 1
```

**Certain Event:**
- A probability of **1** means that we are **100% sure** of the occurrence of an event

**Impossible Event:**
- A probability of **0** means that we are **100% sure** of the **non-occurrence** of an event

**Sample Space:**
```
Pr(S) = 1
```

**Null Event:**
```
Pr(∅) = 0
```

---

## Definitions of Probability

### 1. Classical Definition of Probability

**Definition:**  
If there are **N** equally likely outcomes, of which one must occur, and **n** of these are regarded as favourable to an event, then the probability of the event is given by:

```
P(Event) = n/N
```

where:
- n = number of favorable outcomes
- N = total number of outcomes

---

### 2. Frequency (Empirical) Definition of Probability

**Definition:**  
The probability of an event is the **proportion of times** the event would occur in a **long run** of repeated experiments.

```
Probability of the Event = Number of favourable outcomes observed / Total number of outcomes observed
```

---

### 3. Subjective Probability

**Definition:**  
An **individual judgement or opinion** about the probability of occurrence.

---

## Examples

### Example 1: Fair Die

**Problem:**  
A balanced/fair die (with all outcomes equally likely) is rolled. Let A be the event that an even number occurs. What is the probability of A?

**Solution:**
```
Pr(A) = Number of outcomes in A / Total number of outcomes in S
      = 3/6
      = 0.5
```

---

### Example 2: Tossing Two Coins

**Problem:**  
Suppose we toss two coins. Assume that all the outcomes are equally likely (fair coins). Let A be the event that at least one of the coins shows up heads. Find P(A).

**Sample Space:**
```
S = {HH, HT, TH, TT}
```

**Event A (at least one head):**
```
A = {HH, HT, TH}
```

**Solution:**
```
Pr(A) = Number of outcomes in A / Total number of outcomes in S
      = 3/4
      = 0.75
```

---

## Basic Properties

Consider two events A and B in S. Then:

### Complement Rule
```
Pr(Aᶜ) = 1 - Pr(A)
```

---

### Addition Rule (General)
```
Pr(A ∪ B) = Pr(A) + Pr(B) - Pr(A ∩ B)
```

---

### Addition Rule (Mutually Exclusive)

If **A ∩ B = ∅** (A and B are mutually exclusive), then:
```
Pr(A ∪ B) = Pr(A) + Pr(B)
```

---

### Extension to Multiple Events

If A₁, A₂, ..., Aₖ are mutually exclusive events, then:
```
Pr(A₁ ∪ A₂ ∪ ... ∪ Aₖ) = Pr(A₁) + Pr(A₂) + ... + Pr(Aₖ)
```

---

### Multiplication Rule (Independent Events)

If A and B are **independent**, then:
```
Pr(A ∩ B) = Pr(A) × Pr(B)
```

---

## Example: University Freshman Profile

**Problem:**  
In a large university, the freshman profile for one year's fall admission says that:
- 40% of the students were in the top 10% of their high school class
- 65% are white
- 25% of the students were white as well as were in the top 10% of their high school class

What is the probability that a freshman student selected randomly from this class either was in the top 10% of his or her high school class or is white?

**Solution:**

Let:
- A = Student in top 10% of high school class
- B = Student is white

Given:
- P(A) = 0.40
- P(B) = 0.65
- P(A ∩ B) = 0.25

Using Addition Rule:
```
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
         = 0.40 + 0.65 - 0.25
         = 0.80
```

---

## Joint Probability

### Definition

The probability of events A and B **occurring together** is defined as **Joint probability of A and B**.

**Formula:**

The probability of a joint event, A and B [Pr(A ∩ B)]:

```
Pr(A and B) = Number of outcomes satisfying A and B / Total number of outcomes in S
```

---

### Examples

#### Example 1: Black Ace

**Problem:**  
Find the probability that you will get a Black-Ace from a playing deck of cards, if a card is drawn at random.

**Solution:**
```
P(Black ∩ Ace) = Number of Black Aces / Total cards
                = 2/52
                = 1/26
```

---

#### Example 2: Red Jack

**Problem:**  
Find the probability that you will get a Red-Jack from a playing deck of cards, if a card is drawn at random.

**Solution:**
```
P(Red ∩ Jack) = Number of Red Jacks / Total cards
               = 2/52
               = 1/26
```

---

## Marginal Probability

### Definition

The probability of a **single event occurring** [Pr(A)], **without the interference of another event** (not conditioned on another event) is known as **marginal probability**.

This can be thought of as an **unconditional probability**.

---

### Examples

#### Example 1: Getting a King

**Problem:**  
Find the probability that you will get a King from a playing deck of cards, if a card is drawn at random.

**Solution:**
```
P(King) = Number of Kings / Total cards
        = 4/52
        = 1/13
```

---

#### Example 2: Getting a Black Card

**Problem:**  
Find the probability that you will get a Black card from a playing deck of cards, if a card is drawn at random.

**Solution:**
```
P(Black) = Number of Black cards / Total cards
         = 26/52
         = 1/2
```

---

### Note

**Contingency Tables** and **Tree Diagrams** can be used to visualize events and make calculations easier.

---

## Contingency Table Example

### Deck of Cards Analysis

| Type | Red | Black | Total |
|:---|:---|:---|:---|
| **Ace** | 2 | 2 [2/52] | 4 |
| **Non-Ace** | 24 [24/52] | 24 | 48 [48/52] |
| **Total** | 26 | 26 [26/52] | 52 |

**Legend:**
- Values in brackets [ ] = **Joint Probabilities**
- Row and column totals = **Marginal Probabilities**

---

## Tree Diagrams

### Example: Deck of Cards

```
                    Sample Space
                         │
                  ┌──────▼──────┐
                  │  Full Deck  │
                  │   of 52     │
                  │    Cards    │
                  └──────┬──────┘
                         │
        ┌────────────────┴────────────────┐
        │                                 │
   Black Card                         Red Card
        │                                 │
   ┌────┴────┐                       ┌────┴────┐
   │         │                       │         │
  Ace    Not Ace                    Ace    Not Ace
   │         │                       │         │
  2/52     24/52                    2/52     24/52
   │         │                       │         │
P(Black∩Ace) P(Black∩Non-Ace)   P(Red∩Ace) P(Red∩Non-Ace)
```

---

## Conditional Probability

### Definition

This is the probability of **one event**, given that **another event has already occurred**.

---

### Notation

The conditional probability of an event A, **given that** an event B has already occurred is denoted by:

```
Pr(A|B)
```

Read as: "Probability of A given B"

---

### Formulas

**Conditional Probability of A given B:**
```
Pr(A|B) = Pr(A ∩ B) / Pr(B)  ;  Pr(B) > 0
```

**Conditional Probability of B given A:**
```
Pr(B|A) = Pr(A ∩ B) / Pr(A)  ;  Pr(A) > 0
```

where:
- P(A ∩ B) = Joint probability of A and B
- P(A) = Marginal probability of A
- P(B) = Marginal probability of B

---

## Examples of Conditional Probability

### Example 1: Cars with AC and CD Player

**Problem:**  
Of the cars on a used car lot:
- 70% have air conditioning
- 40% have a CD player
- 20% of the cars have both

What is the probability that a car has a CD player, **given that** it has AC?

**Solution:**

Let:
- A = Car has AC
- B = Car has CD player

Given:
- P(A) = 0.70
- P(B) = 0.40
- P(A ∩ B) = 0.20

Find: P(B|A)

```
P(B|A) = P(A ∩ B) / P(A)
       = 0.20 / 0.70
       = 2/7
       ≈ 0.286
```

---

### Example 2: Two Dice

**Problem:**  
If two balanced dice are tossed, find the probability that the sum of the face values is 8, **given that** the face value of the first one is 3.

**Solution:**

Let:
- A = Sum is 8
- B = First die shows 3

Given B (first die = 3):
- Possible outcomes: (3,1), (3,2), (3,3), (3,4), (3,5), (3,6)
- Total outcomes given B: 6

For sum = 8 when first die = 3:
- Need second die = 5
- Favorable outcome: (3,5)
- Count: 1

```
P(A|B) = 1/6
```

---

## Properties of Conditional Probability

### Complement Rule
```
Pr(A|B) = 1 - Pr(Aᶜ|B)
```

---

### Addition Rule
```
Pr(B ∪ C|A) = Pr(B|A) + Pr(C|A) - Pr(B ∩ C|A)
```

---

### Multiplication Law
```
Pr(A ∩ B) = Pr(B) × Pr(A|B) = Pr(A) × Pr(B|A)
```

---

### Independence Test

If A and B are **independent**, then:

```
Pr(A|B) = Pr(A)
```

or

```
Pr(B|A) = Pr(B)
```

or

```
Pr(A ∩ B) = Pr(A) × Pr(B)
```

---

### Extension to Multiple Independent Events

For independent events A₁, A₂, ..., Aₖ:

```
Pr(A₁ ∩ A₂ ∩ ... ∩ Aₖ) = Pr(A₁) × Pr(A₂) × ... × Pr(Aₖ)
```

---

## Theorem of Total Probability

### Formula

The marginal probability of an event A:

```
Pr(A) = Pr(A and B₁) + Pr(A and B₂) + ... + Pr(A and Bₖ)
```

Where **B₁, B₂, ..., Bₖ** are k **mutually exclusive** and **collectively exhaustive** events.

**Alternative Form:**

```
Pr(A) = Pr(A|B₁)Pr(B₁) + Pr(A|B₂)Pr(B₂) + ... + Pr(A|Bₖ)Pr(Bₖ)
```

Or in summation notation:

```
Pr(A) = Σ(i=1 to k) Pr(A|Bᵢ)Pr(Bᵢ)
```

---

## Bayes' Theorem

### Formula

```
P(Bᵢ|A) = P(Bᵢ ∩ A) / P(A)

        = [P(Bᵢ) × P(A|Bᵢ)] / [Σ(i=1 to k) P(Bᵢ) × P(A|Bᵢ)]
```

Where **B₁, B₂, ..., Bₖ** are k **mutually exclusive** and **collectively exhaustive** events.

---

### Components

**Numerator:**
```
P(Bᵢ) × P(A|Bᵢ)
```

**Denominator (Total Probability):**
```
Σ(i=1 to k) P(Bᵢ) × P(A|Bᵢ)
```

---

### Interpretation

Bayes' Theorem allows us to **update** our probability estimates based on new information:

- **P(Bᵢ)** = Prior probability (before observing A)
- **P(Bᵢ|A)** = Posterior probability (after observing A)
- **P(A|Bᵢ)** = Likelihood

---

## Summary

### Key Formulas

**Basic Probability:**
```
P(Event) = Favorable outcomes / Total outcomes
```

**Complement:**
```
P(Aᶜ) = 1 - P(A)
```

**Addition Rule:**
```
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
```

**Multiplication Rule (Independent):**
```
P(A ∩ B) = P(A) × P(B)
```

**Conditional Probability:**
```
P(A|B) = P(A ∩ B) / P(B)
```

**Multiplication Law:**
```
P(A ∩ B) = P(A) × P(B|A) = P(B) × P(A|B)
```

**Total Probability:**
```
P(A) = Σ P(A|Bᵢ) × P(Bᵢ)
```

**Bayes' Theorem:**
```
P(Bᵢ|A) = [P(Bᵢ) × P(A|Bᵢ)] / [Σ P(Bᵢ) × P(A|Bᵢ)]
```

---

## Key Concepts Summary

```
PROBABILITY LECTURE:
│
├── Terminology
│   ├── Experiment, Trial, Sample Space
│   └── Events (Simple, Compound)
│
├── Types of Events
│   ├── Mutually Exclusive (A ∩ B = ∅)
│   ├── Collectively Exhaustive
│   └── Independent
│
├── Probability Definitions
│   ├── Classical
│   ├── Frequency (Empirical)
│   └── Subjective
│
├── Types of Probability
│   ├── Joint Probability [P(A ∩ B)]
│   ├── Marginal Probability [P(A)]
│   └── Conditional Probability [P(A|B)]
│
├── Important Theorems
│   ├── Addition Rule
│   ├── Multiplication Rule
│   ├── Total Probability
│   └── Bayes' Theorem
│
└── Visualization Tools
    ├── Contingency Tables
    └── Tree Diagrams
```

---

## Thank You!

**Any Questions?**

---

**End of Lecture 03**

**Total Pages:** 26  
**Completion Status:** ✅ Complete
