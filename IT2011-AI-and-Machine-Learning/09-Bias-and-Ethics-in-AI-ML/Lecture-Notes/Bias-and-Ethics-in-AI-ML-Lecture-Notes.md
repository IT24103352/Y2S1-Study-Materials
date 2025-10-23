# LECTURE 9 - Bias and Ethics in Artificial Intelligence (AI) & Machine Learning (ML)

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-10-23  
**Current Time (UTC):** 2025-10-23 10:06:50

---

## Table of Contents

- [Introduction](#introduction)
- [Understanding Bias in AI and ML](#understanding-bias-in-ai-and-ml)
- [Types and Sources of Bias](#types-and-sources-of-bias)
- [Consequences of Bias](#consequences-of-bias)
- [Ethics in AI and ML](#ethics-in-ai-and-ml)
- [Core Ethical Principles](#core-ethical-principles)
- [Bias and Ethics: The Intersection](#bias-and-ethics-the-intersection)
- [Strategies for Addressing Bias](#strategies-for-addressing-bias)
- [Case Studies](#case-studies)
- [Conclusion](#conclusion)

---

## Introduction

### The Promise and Peril of AI/ML

**Revolutionary Impact:**  
Artificial Intelligence (AI) and Machine Learning (ML) are revolutionizing nearly every aspect of society:

```
┌────────────────────────────────────────┐
│  AI/ML Applications:                   │
│                                        │
│  🏥 Healthcare                         │
│  💰 Finance                            │
│  🎓 Education                          │
│  ⚖️  Criminal Justice                  │
│  🏭 Manufacturing                      │
│  🚗 Transportation                     │
│  🛍️  E-commerce                        │
└────────────────────────────────────────┘
```

---

### Promises of AI/ML

```
✅ Efficiency
   - Automate repetitive tasks
   - Process data at scale
   - Faster decision-making

✅ Innovation
   - Discover new patterns
   - Enable new capabilities
   - Drive scientific breakthroughs

✅ New Opportunities
   - Create new industries
   - Enhance existing services
   - Improve quality of life
```

---

### Serious Concerns

**However**, increasing AI influence raises concerns about:

```
⚠️  BIAS
    Systematic unfairness in data or 
    algorithms leading to discriminatory 
    outcomes

⚠️  ETHICS
    Moral and philosophical questions 
    about AI design, development, and 
    deployment
```

---

### Key Definitions

#### Bias in AI/ML

**Definition:**  
Systematic unfairness in data or algorithms that leads to discriminatory outcomes.

**Characteristics:**
- ❌ Not random errors
- ❌ Consistent patterns
- ❌ Can amplify social inequalities

---

#### Ethics in AI/ML

**Definition:**  
Moral and philosophical principles that guide the design, development, and deployment of AI technologies.

**Purpose:**
- ✅ Ensure fairness
- ✅ Protect rights
- ✅ Promote well-being
- ✅ Prevent harm

---

### The Critical Question

```
┌────────────────────────────────────────┐
│                                        │
│  Will AI systems benefit humanity      │
│  FAIRLY?                               │
│                                        │
│         OR                             │
│                                        │
│  Will they PERPETUATE INEQUALITY?      │
│                                        │
└────────────────────────────────────────┘

Answer depends on: Bias + Ethics
```

---

## Understanding Bias in AI and ML

### What is AI Bias?

**Definition:**  
Bias in AI occurs when an algorithm produces results that are **systematically prejudiced** due to assumptions made in the ML process.

---

### Key Characteristics

```
RANDOM ERROR vs BIAS:

Random Error:
  ●  ●     ●
    ●   ●     ●
  ●     ●   ●
  (Scattered, unpredictable)

Bias:
  ●●●●●
  ●●●●●
  ●●●●●
  (Consistent, systematic)
```

**Danger:**  
Bias is **consistent** and can **amplify social inequalities** if left unchecked.

---

### How Bias Manifests

```
INPUT DATA          ALGORITHM           OUTPUT
(Biased)      →    (Learns Bias)   →   (Discriminatory)

Example:
Historical hiring   ML Model learns   Model favors
data (90% male) →  male patterns  →  male candidates
```

---

## Types and Sources of Bias

### Overview

```
BIAS TAXONOMY:
│
├── 1. Data Bias
├── 2. Sampling Bias
├── 3. Labeling Bias
├── 4. Algorithmic Bias
└── 5. Interaction Bias
```

---

### 1. Data Bias (Historical Bias)

**Definition:**  
Historical data reflects past social prejudices and inequalities.

**Example:**
```
Problem: Training a job recommender on past hiring records

Historical Data:
  Tech jobs: 90% men, 10% women
  
ML Model learns:
  "Tech jobs → prefer male candidates"
  
Result:
  Model discriminates against women ❌
```

**Root Cause:**  
Data encodes societal biases from the past.

---

### 2. Sampling Bias (Representation Bias)

**Definition:**  
Training data does not represent the diversity of the population.

**Example:**
```
Healthcare AI for disease diagnosis:

Training Data:
  ✅ 80% Western patients
  ✅ 15% European patients
  ❌ 5% Asian/African patients
  
Result:
  Model performs poorly for 
  underrepresented groups ❌
```

**Consequence:**
```
Model generalizes well:  ✅ Western patients
Model fails:             ❌ Asian/African patients
```

---

### 3. Labeling Bias (Annotation Bias)

**Definition:**  
Human annotators introduce **subjectivity** when labeling data.

**Example:**
```
Criminal justice dataset:

Task: Label "aggressive behavior"

Annotator biases:
  - Stereotypes about race
  - Cultural assumptions
  - Personal experiences
  
Result:
  Labels reflect prejudices, not reality ❌
```

**Key Issue:**
```
"Ground truth" labels are not objective
  ↓
Model learns human prejudices
  ↓
Perpetuates discrimination
```

---

### 4. Algorithmic Bias (Model Bias)

**Definition:**  
Model design choices inadvertently favor **majority classes**.

**Example:**
```
Facial recognition system:

Optimization goal: Maximize overall accuracy

Training data distribution:
  70% Caucasian faces
  20% Asian faces
  10% African faces
  
Model optimization:
  Focuses on majority (Caucasian) ✅
  Underperforms on minorities ❌
  
Result:
  Higher accuracy for Caucasians
  Lower accuracy for Africans
```

**Root Cause:**  
Algorithms optimize for **average performance**, ignoring fairness across groups.

---

### 5. Interaction Bias (Feedback Loop Bias)

**Definition:**  
User feedback reinforces existing stereotypes over time.

**Example:**
```
Search engine / Recommendation system:

Initial state:
  Algorithm shows certain content
  
User interaction:
  Users click on stereotypical content more
  
Algorithm learns:
  "Users prefer this type of content"
  
Feedback loop:
  Algorithm amplifies similar content
  
Result:
  Harmful content gets promoted ❌
```

**Visualization:**
```
Content → Users click → Algorithm learns → More similar content → ...
  ↑                                                               ↓
  └───────────────────── FEEDBACK LOOP ─────────────────────────┘
```

---

### Bias Types Summary Table

| Bias Type | Source | Example | Impact |
|-----------|--------|---------|--------|
| **Data Bias** | Historical prejudice in data | Hiring data: 90% male | Discriminates against women |
| **Sampling Bias** | Non-representative training set | Healthcare AI trained on Western patients | Poor performance on minorities |
| **Labeling Bias** | Human annotator subjectivity | "Aggressive" labels reflect stereotypes | Perpetuates prejudices |
| **Algorithmic Bias** | Model design favoring majority | Facial recognition optimized for Caucasians | Lower accuracy for minorities |
| **Interaction Bias** | User feedback loops | Search results amplify stereotypes | Reinforces harmful content |

---

## Consequences of Bias

### Individual Harm

**Direct Impact on People:**

```
DENIED OPPORTUNITIES:
├── 💼 Jobs (Hiring algorithms reject qualified candidates)
├── 💰 Loans (Credit scoring unfairly denies applications)
├── 🏥 Healthcare (Diagnosis tools misdiagnose minorities)
├── 🎓 Education (Admission systems discriminate)
└── 🏠 Housing (Rental algorithms reject applicants)
```

**Example:**
```
Individual A:
  - Qualified for loan
  - Rejected due to biased algorithm
  - Cannot buy house
  - Life opportunities limited ❌
```

---

### Societal Harm

**Broader Impact:**

```
REINFORCEMENT OF INEQUALITY:
│
├── Stereotypes amplified
│   Example: "Women not suited for tech"
│
├── Social divisions deepened
│   Example: Racial profiling in policing
│
├── Historical injustices perpetuated
│   Example: Redlining in housing
│
└── Power imbalances maintained
    Example: Privileged groups favored
```

**Cycle of Bias:**
```
Biased data → Biased AI → Discriminatory outcomes → 
Reinforces bias in society → New biased data → ...
```

---

### Loss of Trust

**Public Perception:**

```
When people perceive AI as UNFAIR:

❌ Resistance to adoption
   "I don't trust this system"

❌ Reduced engagement
   "I'll avoid using this service"

❌ Social backlash
   "This technology harms us"

Result:
  Beneficial AI applications rejected
  Innovation slowed
  Technology gap widens
```

---

### Legal Risk

**Organizational Consequences:**

```
LEGAL PENALTIES:
├── 💰 Lawsuits
│   Discrimination claims
│   Class action suits
│
├── 📜 Regulatory Fines
│   GDPR violations (EU)
│   Civil Rights Act violations (US)
│
├── 📉 Reputational Damage
│   Public scandals
│   Loss of customers
│
└── 🚫 Operational Restrictions
    Banned from certain markets
    Required audits
```

**Example:**
```
Company uses biased hiring AI
  ↓
Lawsuit: Gender discrimination
  ↓
Settlement: $10 million
  ↓
Reputational damage: Loss of talent
```

---

## Ethics in AI and ML

### Why Ethics Matters

**The Shift in Decision-Making:**

```
PAST:                      PRESENT:
Human decisions      →     AI decisions
                           
Examples:
├── Loan approvals   →     AI credit scoring
├── Hiring           →     AI resume screening
├── Medical diagnosis→     AI diagnostic tools
├── Parole decisions →     AI risk assessment
└── Content moderation→    AI filtering
```

**Key Concern:**
```
AI systems make decisions that were once 
EXCLUSIVELY HUMAN
  ↓
Without ethical safeguards:
  ❌ Violates rights
  ❌ Spreads misinformation
  ❌ Causes harm at SCALE
```

---

### The Scale Problem

**Why AI Ethics is Critical:**

```
HUMAN ERROR:
  Impact: One person at a time
  Example: One unfair hiring decision

AI ERROR:
  Impact: Thousands/Millions simultaneously
  Example: Biased algorithm affects entire 
           applicant pool
  
  HARM AT SCALE ⚠️
```

---

### The Role of Ethics

**Ensuring Alignment:**

```
┌────────────────────────────────────────┐
│                                        │
│  AI SYSTEMS  ←─── ETHICS ───→  HUMAN  │
│  (Technology)     (Bridge)     VALUES  │
│                                        │
└────────────────────────────────────────┘

Ethics ensures AI is aligned with:
  ✅ Fairness
  ✅ Justice
  ✅ Human dignity
  ✅ Social good
```

---

## Core Ethical Principles in AI

### The Seven Pillars

```
ETHICAL AI FRAMEWORK:
│
├── 1. Fairness
├── 2. Transparency & Explainability
├── 3. Accountability
├── 4. Privacy & Data Protection
├── 5. Human Oversight
├── 6. Safety & Security
└── 7. Beneficence & Non-Maleficence
```

---

### 1. Fairness

**Principle:**  
Systems must treat individuals and groups **equitably**.

**Requirements:**
```
✅ Avoid DIRECT discrimination
   Example: "No loans to women"
   
✅ Avoid INDIRECT discrimination
   Example: Using zip code as proxy for race
```

**Fairness Metrics:**
```
Demographic Parity:
  P(positive outcome | Group A) = 
  P(positive outcome | Group B)

Equal Opportunity:
  P(true positive | Group A) = 
  P(true positive | Group B)

Equalized Odds:
  Equal true positive AND false positive rates
```

---

### 2. Transparency & Explainability

**Principle:**  
Users should **understand** how decisions are made.

**The Problem:**
```
"BLACK BOX" MODELS:

Input → [???] → Output
        |___|
         AI
         
User: "Why was I rejected?"
AI: "Computer says no."
Result: Accountability gap ❌
```

**Solution:**
```
EXPLAINABLE AI (XAI):

Input → [Transparent Process] → Output + Explanation
        
User: "Why was I rejected?"
AI: "Your debt-to-income ratio (45%) exceeds 
     our threshold (40%). This factor contributed 
     70% to the decision."
Result: Trust + Understanding ✅
```

---

### 3. Accountability

**Principle:**  
**Responsibility** must be clear if an AI system causes harm.

**Accountability Chain:**
```
┌────────────────────────────────────────┐
│  WHO IS RESPONSIBLE?                   │
│                                        │
│  ├── Developers (code the algorithm)  │
│  ├── Data Scientists (train model)    │
│  ├── Organizations (deploy system)    │
│  ├── Users (operate system)           │
│  └── Regulators (enforce standards)   │
│                                        │
│  ALL SHARE RESPONSIBILITY              │
└────────────────────────────────────────┘
```

**Example:**
```
Self-driving car causes accident

Questions:
  - Was it a software bug? → Developer
  - Was it poor training data? → Data team
  - Was it misuse? → User
  - Was it inadequate regulation? → Government

Clear accountability prevents blame-shifting
```

---

### 4. Privacy & Data Protection

**Principle:**  
Secure handling of **sensitive personal information**.

**Key Requirements:**
```
DATA PROTECTION:
├── Informed Consent
│   Users must agree to data collection
│
├── Data Minimization
│   Collect only what's necessary
│
├── Purpose Limitation
│   Use data only for stated purpose
│
├── Security Measures
│   Protect against breaches
│
└── Right to Deletion
    Users can request data removal
```

**Compliance Frameworks:**
```
GDPR (EU):
  - Right to be forgotten
  - Data portability
  - Breach notification

CCPA (California):
  - Right to know
  - Right to delete
  - Right to opt-out
```

---

### 5. Human Oversight

**Principle:**  
Humans must remain **in control** of critical systems.

**Human-in-the-Loop:**
```
CRITICAL DECISIONS:
├── 🏥 Healthcare diagnoses
│   AI suggests → Doctor decides
│
├── ⚖️  Criminal sentencing
│   AI recommends → Judge decides
│
├── 💣 Military weapons
│   AI targets → Human authorizes
│
└── 🚨 Emergency response
    AI alerts → Human responds
```

**Why Necessary:**
```
AI limitations:
  - Cannot understand context fully
  - Lacks common sense
  - May fail in edge cases
  
Human judgment:
  - Provides ethical oversight
  - Considers nuances
  - Takes responsibility
```

---

### 6. Safety & Security

**Principle:**  
AI must be **robust** against errors, attacks, and misuse.

**Safety Requirements:**
```
ROBUSTNESS:
├── Error handling
│   Graceful degradation
│
├── Adversarial resistance
│   Defend against attacks
│
├── Misuse prevention
│   Safeguards against abuse
│
└── Testing & Validation
    Rigorous quality assurance
```

**Example Threats:**
```
Adversarial Attack:
  Input: Stop sign
  Attack: Add imperceptible noise
  Result: AI sees "Speed Limit 80" ❌
  
  Consequence: Self-driving car accelerates
  Solution: Adversarial training
```

---

### 7. Beneficence & Non-Maleficence

**Principle:**  
**Promote well-being**, **avoid harm**.

**Hippocratic Oath for AI:**
```
BENEFICENCE (Do Good):
  ✅ Design AI to benefit society
  ✅ Improve quality of life
  ✅ Solve important problems

NON-MALEFICENCE (Do No Harm):
  ❌ Prevent discrimination
  ❌ Avoid exploitation
  ❌ Minimize risks
```

**Example:**
```
Medical AI:
  Beneficence: Improve diagnosis accuracy
  Non-Maleficence: Don't replace human doctors
                    Don't create false confidence
                    Don't ignore rare diseases
```

---

## Bias and Ethics: The Intersection

### The Relationship

**Key Insight:**
```
┌────────────────────────────────────────┐
│                                        │
│  BIAS is one of the most PRESSING      │
│  ETHICAL challenges in AI/ML           │
│                                        │
└────────────────────────────────────────┘
```

---

### Two Important Distinctions

#### 1. Unbiased ≠ Ethical

**Example:**
```
Fully autonomous weapons:
  ✅ May be unbiased (treat all targets equally)
  ❌ STILL UNETHICAL (removes human judgment from killing)
```

**Lesson:**  
Bias is not the only ethical concern.

---

#### 2. Biased = Unethical (Always)

**Why:**
```
Biased models VIOLATE:
  ❌ Fairness (discriminate against groups)
  ❌ Justice (perpetuate inequality)
  ❌ Human dignity (treat people unfairly)

Therefore:
  Biased AI is INHERENTLY UNETHICAL
```

---

### Real-World Example: Loan Approval

**Scenario:**
```
Loan approval system systematically 
rejects minority applicants

This reflects:
  1. ALGORITHMIC BIAS
     - Model learned discriminatory patterns
     
  2. ETHICAL FAILURE
     - Violates fairness principle
     - Perpetuates inequality
     - Causes individual harm
```

---

### Key Insight

**The Bottom Line:**
```
┌────────────────────────────────────────┐
│                                        │
│  ETHICAL AI REQUIRES:                  │
│                                        │
│  ✅ Bias detection                     │
│  ✅ Bias mitigation                    │
│  ✅ Fairness-aware design              │
│                                        │
│  Not just accuracy!                    │
│                                        │
└────────────────────────────────────────┘
```

---

## Strategies for Addressing Bias and Promoting Ethics

### Two-Pronged Approach

```
COMPREHENSIVE STRATEGY:
│
├── TECHNICAL SOLUTIONS
│   (Algorithms, tools, methods)
│
└── ORGANIZATIONAL & POLICY
    (Governance, standards, oversight)
```

---

## Technical Solutions

### 1. Fairness-Aware Algorithms

**Approach:**  
Modify models to account for **fairness constraints**.

**Methods:**
```
PRE-PROCESSING:
  Modify training data to reduce bias
  Example: Reweighting, resampling

IN-PROCESSING:
  Add fairness constraints during training
  Example: Adversarial debiasing

POST-PROCESSING:
  Adjust model outputs to ensure fairness
  Example: Threshold optimization
```

**Example:**
```python
# Fairness constraint during training

from fairlearn.reductions import ExponentiatedGradient

fairness_constraint = DemographicParity()
mitigator = ExponentiatedGradient(
    estimator=model,
    constraints=fairness_constraint
)
mitigator.fit(X_train, y_train, sensitive_features=gender)
```

---

### 2. Bias Detection Tools

**Approach:**  
Regular **audits** to identify hidden discrimination.

**Tools:**
```
AI FAIRNESS 360 (IBM):
  - 70+ fairness metrics
  - 10+ bias mitigation algorithms
  
Fairlearn (Microsoft):
  - Assessment tools
  - Mitigation algorithms
  
What-If Tool (Google):
  - Visual bias analysis
  - Counterfactual exploration
```

**Process:**
```
1. Select fairness metrics
   Example: Demographic parity, equal opportunity

2. Measure across groups
   Calculate metrics for each demographic

3. Identify disparities
   Flag groups with unfair outcomes

4. Investigate root causes
   Analyze why bias exists

5. Apply mitigation
   Use fairness-aware algorithms
```

---

### 3. Balanced Datasets

**Approach:**  
Ensure **diversity** and **representation** in training data.

**Strategies:**
```
DATA COLLECTION:
  ✅ Representative sampling
     Ensure all groups included
  
  ✅ Stratified sampling
     Proportional representation
  
  ✅ Oversampling minorities
     Balance class distribution

DATA AUGMENTATION:
  ✅ Generate synthetic data
     For underrepresented groups
  
  ✅ Transfer learning
     Leverage data from similar domains
```

**Example:**
```
Original dataset:
  Male:   90%
  Female: 10%
  
Balanced dataset (via oversampling):
  Male:   50%
  Female: 50%
  
Result: Model learns both genders equally
```

---

### 4. Explainable AI (XAI)

**Approach:**  
Provide **interpretable results** to reveal unfair outcomes.

**Techniques:**
```
LIME (Local Interpretable Model-Agnostic Explanations):
  Explains individual predictions
  
SHAP (SHapley Additive exPlanations):
  Shows feature importance
  
Attention Mechanisms:
  Visualizes what model focuses on
  
Decision Trees:
  Inherently interpretable
```

**Example:**
```
Loan rejection explanation:

SHAP values:
  Credit score:        -0.3 (negative impact)
  Income:              +0.2 (positive impact)
  Zip code:            -0.5 (MAJOR negative impact)
                        ↑
                        Potential proxy for race!
```

---

## Organizational and Policy Approaches

### 1. AI Ethics Boards

**Structure:**
```
INTERNAL COMMITTEE FOR OVERSIGHT:

Composition:
├── Ethicists
├── Legal experts
├── Domain specialists
├── Diverse stakeholders
└── Executive leadership

Responsibilities:
├── Review AI projects
├── Assess ethical risks
├── Approve/reject deployments
├── Monitor ongoing systems
└── Handle complaints
```

---

### 2. Model Cards / Datasheets for Datasets

**Purpose:**  
**Documentation** that improves transparency.

**Model Cards (Google):**
```
CONTENTS:
├── Model details
│   Architecture, training data, performance
│
├── Intended use
│   Appropriate applications
│
├── Limitations
│   Known biases, failure modes
│
├── Performance metrics
│   Accuracy across demographics
│
└── Ethical considerations
    Potential harms, mitigation strategies
```

**Datasheets for Datasets (Microsoft):**
```
CONTENTS:
├── Motivation
│   Why dataset created
│
├── Composition
│   What data included
│
├── Collection process
│   How data gathered
│
├── Preprocessing
│   Cleaning steps applied
│
├── Distribution
│   How dataset shared
│
└── Maintenance
    Update schedule, versioning
```

---

### 3. Adoption of Guidelines

**International Standards:**

**OECD AI Principles:**
```
1. Inclusive growth & well-being
2. Human-centered values
3. Transparency
4. Robustness & safety
5. Accountability
```

**UNESCO Recommendation on AI Ethics:**
```
1. Proportionality
2. Safety & security
3. Fairness & non-discrimination
4. Sustainability
5. Right to privacy
6. Human oversight
7. Transparency & explainability
8. Responsibility & accountability
9. Awareness & literacy
10. Multi-stakeholder governance
```

**EU "Trustworthy AI":**
```
REQUIREMENTS:
├── Human agency & oversight
├── Technical robustness
├── Privacy & data governance
├── Transparency
├── Diversity, non-discrimination, fairness
├── Societal & environmental well-being
└── Accountability
```

---

### 4. Interdisciplinary Collaboration

**Approach:**  
Involve **ethicists**, **domain experts**, and **end-users**.

**Team Composition:**
```
AI DEVELOPMENT TEAM:
├── ML Engineers (technical implementation)
├── Ethicists (moral guidance)
├── Domain Experts (context understanding)
├── End-Users (real-world perspective)
├── Legal Counsel (compliance)
└── Social Scientists (societal impact)
```

**Benefits:**
```
✅ Multiple perspectives
   Identify blind spots

✅ Better problem framing
   Understand true needs

✅ Anticipate issues
   Catch problems early

✅ Inclusive design
   Serve diverse users
```

---

## Case Studies

### Case Study 1: COMPAS Algorithm (US Criminal Justice)

#### Background

**System:** Correctional Offender Management Profiling for Alternative Sanctions (COMPAS)  
**Purpose:** Predict recidivism risk (likelihood of reoffending)  
**Use:** Parole decisions, sentencing recommendations in US courts

---

#### How COMPAS Works

```
┌─────────────────────────────────────┐
│  INPUTS                             │
│  ├── Criminal history               │
│  ├── Age                            │
│  ├── Prior arrests                  │
│  └── Other factors (137 questions)  │
└──────────┬──────────────────────────┘
           ↓
┌─────────────────────────────────────┐
│  COMPAS ALGORITHM                   │
│  (Proprietary black-box)            │
└──────────┬──────────────────────────┘
           ↓
┌─────────────────────────────────────┐
│  OUTPUTS (Risk Score)               │
│  ├── LOW risk                       │
│  ├── MEDIUM risk                    │
│  └── HIGH risk                      │
└─────────────────────────────────────┘
```

---

#### 2016 ProPublica Investigation

**Findings:**

```
FALSE POSITIVE RATES:
(Incorrectly labeled as "high risk")

┌────────────────────────────────┐
│  Black defendants:    45%      │ ██████████████████
│  White defendants:    23%      │ █████████
└────────────────────────────────┘

Black defendants were TWICE as likely 
to be wrongly labeled as high risk
```

**FALSE NEGATIVE RATES:**
(Incorrectly labeled as "low risk")

```
┌────────────────────────────────┐
│  White defendants:    48%      │ ████████████████████
│  Black defendants:    28%      │ ███████████
└────────────────────────────────┘

White defendants more likely to 
reoffend despite low-risk label
```

---

#### Fairness Metrics & Trade-offs

**The Dilemma:**

```
FAIRNESS DEFINITIONS (can't satisfy all simultaneously):

1. Equal FALSE POSITIVE rates
   P(predicted high | actually low-risk, Black) = 
   P(predicted high | actually low-risk, White)

2. Equal FALSE NEGATIVE rates
   P(predicted low | actually high-risk, Black) = 
   P(predicted low | actually high-risk, White)

3. Predictive parity
   P(recidivate | predicted high, Black) = 
   P(recidivate | predicted high, White)

MATHEMATICAL IMPOSSIBILITY:
  Cannot achieve all three if base rates differ
  between groups
```

---

#### Bias Critique

**Issues Identified:**
```
❌ Racial bias in predictions
   Higher false positive rate for Black defendants

❌ Black-box algorithm
   No transparency in how scores calculated

❌ Used in high-stakes decisions
   Influences length of incarceration

❌ Feedback loop
   Biased policing → biased data → biased model
```

**Real-World Impact:**
```
Defendant A (Black):
  - Actual risk: Low
  - COMPAS score: High
  - Result: Denied parole ❌
  - Extra years in prison

Defendant B (White):
  - Actual risk: High
  - COMPAS score: Low
  - Result: Granted parole
  - Reoffends within a year
```

---

#### Ethical Failures

```
VIOLATED PRINCIPLES:
├── ❌ Fairness
│   Discriminated against Black defendants
│
├── ❌ Transparency
│   Proprietary algorithm, no explanation
│
├── ❌ Accountability
│   Company deflected responsibility
│
└── ❌ Human oversight
    Judges over-relied on scores
```

---

#### Courtroom Impact

```
        ┌────────┐
        │ Judge  │
        └───┬────┘
            │
    ┌───────▼──────────┐
    │  COMPAS Score    │
    │  influences      │
    │  decision        │
    └───────┬──────────┘
            │
    ┌───────▼──────────┐
    │  Sentencing /    │
    │  Parole decision │
    └──────────────────┘

Problem: Over-reliance on biased AI
Solution: Human judgment must dominate
```

---

### Case Study 2: Amazon Recruitment AI

#### Background

**System:** Automated resume screening tool  
**Purpose:** Streamline hiring process  
**Development:** 2014-2017  
**Status:** **Abandoned** in 2018

---

#### The Problem

**Intent vs. Reality:**
```
INTENDED:
  Automate hiring → Save time → Find best candidates

ACTUAL:
  Penalized female candidates → Systematic discrimination
```

---

#### How the Bias Emerged

**Step-by-Step:**

```
1. TRAINING DATA:
   ├── Historical resumes (10 years)
   ├── 90% from male applicants
   └── Tech industry male-dominated
   
2. MODEL LEARNING:
   ├── Learned: "Male patterns = successful"
   ├── Learned: "Female indicators = less successful"
   └── Encoded gender bias
   
3. DISCRIMINATORY OUTPUT:
   ├── Penalized resumes with "women's"
   │   (e.g., "women's chess club captain")
   ├── Downrated graduates of women's colleges
   └── Favored traditionally male language
```

---

#### Specific Biases Detected

**Penalized Keywords:**
```
❌ "Women's chess club captain"
❌ "Women's college" (e.g., Wellesley, Smith)
❌ Certain verb choices preferred by women
```

**Favored Patterns:**
```
✅ Male-dominated schools
✅ "Aggressive" action verbs
✅ Sports traditionally associated with men
```

---

#### Amazon's Response

**Attempts to Fix:**
```
1. Remove explicit gender references
   Result: Bias persisted ❌
   
2. Adjust algorithm
   Result: New biases emerged ❌
   
3. Monitor edge cases
   Result: Couldn't guarantee fairness ❌
```

**Final Decision:**
```
2018: Project ABANDONED

Reason: Couldn't ensure non-discriminatory hiring
```

---

#### Diagram: Amazon Recruitment AI

```
┌─────────────────────────────────────┐
│  INPUTS                             │
│  Resumes from applicants            │
└──────────┬──────────────────────────┘
           ↓
┌─────────────────────────────────────┐
│  ALGORITHM                          │
│  (Trained on 90% male resumes)      │
└──────────┬──────────────────────────┘
           ↓
┌─────────────────────────────────────┐
│  BIAS IN DECISION                   │
│  Penalizes female candidates        │
└──────────┬──────────────────────────┘
           ↓
┌─────────────────────────────────────┐
│  OUTCOME                            │
│  Women systematically ranked lower  │
└─────────────────────────────────────┘
           ↓
         ❌ DISCRIMINATION AGAINST WOMEN
```

---

#### Discrimination Details

**Two Main Forms:**

```
1. KEYWORD PENALTIES:
   Resumes containing "women's" downgraded
   Example: "Women's Soccer Team Captain"
   Result: Lower ranking ❌

2. PERSISTENT BIAS:
   Even after adjustments, model found 
   new ways to discriminate
   Result: Couldn't be fully corrected ❌
```

---

#### Ethical Failures

```
VIOLATED PRINCIPLES:
├── ❌ Fairness
│   Systematically discriminated against women
│
├── ❌ Accountability
│   Tool used before bias detected
│
├── ❌ Transparency
│   Bias not immediately visible
│
└── ❌ Non-maleficence
    Caused harm to female applicants
```

---

#### Lessons Learned

```
KEY INSIGHTS:
│
├── Historical data encodes past discrimination
│   Solution: Audit training data
│
├── "Fixing" bias is extremely difficult
│   Solution: Design for fairness from start
│
├── Technical solutions alone insufficient
│   Solution: Human oversight essential
│
└── High-stakes decisions need extra scrutiny
    Solution: Regular fairness audits
```

---

#### Broader Impact

```
IMPLICATIONS FOR AI IN HIRING:

⚠️  Automated hiring tools can perpetuate 
    historical gender/racial imbalances

⚠️  "Objective" algorithms can be more biased 
    than humans

⚠️  Legal liability for discriminatory AI

✅  Need for:
    - Diverse training data
    - Fairness constraints
    - Human review
    - Transparency
```

---

## Conclusion

### Inseparable Relationship

**Core Message:**
```
┌────────────────────────────────────────┐
│                                        │
│  BIAS and ETHICS are INSEPARABLE       │
│  in AI and ML                          │
│                                        │
└────────────────────────────────────────┘
```

---

### The Problem

**Bias undermines:**
```
❌ Fairness
   Treats people/groups inequitably

❌ Trust
   People reject biased systems

❌ Justice
   Perpetuates inequality

❌ Human dignity
   Discriminates systematically
```

---

### The Solution

**Ethics provides:**
```
✅ Guiding principles
   Fairness, transparency, accountability

✅ Design frameworks
   How to build responsible AI

✅ Evaluation criteria
   How to assess AI systems

✅ Governance structures
   How to oversee AI deployment
```

---

### Building Trustworthy Systems

**Three-Pillar Approach:**

```
1. TECHNICAL FAIRNESS SOLUTIONS
   ├── Fairness-aware algorithms
   ├── Bias detection tools
   ├── Balanced datasets
   └── Explainable AI

2. ETHICAL DESIGN PRINCIPLES
   ├── Fairness
   ├── Transparency
   ├── Accountability
   ├── Privacy
   ├── Human oversight
   ├── Safety
   └── Beneficence

3. ROBUST GOVERNANCE FRAMEWORKS
   ├── AI Ethics Boards
   ├── Model cards / Datasheets
   ├── International guidelines
   └── Interdisciplinary collaboration
```

---

### Not Just Technology

**Societal Responsibility:**
```
ETHICAL AI requires cooperation across:

┌────────────────────────────────────────┐
│  🏛️  GOVERNMENTS                        │
│  Regulation, enforcement, standards    │
├────────────────────────────────────────┤
│  🏢 INDUSTRIES                          │
│  Development, deployment, accountability│
├────────────────────────────────────────┤
│  🔬 RESEARCHERS                         │
│  Innovation, evaluation, transparency  │
├────────────────────────────────────────┤
│  👥 COMMUNITIES                         │
│  Input, oversight, advocacy            │
└────────────────────────────────────────┘
```

---

### The Path Forward

**Actionable Steps:**

```
FOR DEVELOPERS:
├── ✅ Audit training data for bias
├── ✅ Use fairness-aware algorithms
├── ✅ Document model limitations
├── ✅ Enable explainability
└── ✅ Seek diverse perspectives

FOR ORGANIZATIONS:
├── ✅ Establish AI ethics boards
├── ✅ Adopt ethical guidelines
├── ✅ Conduct regular audits
├── ✅ Provide transparency
└── ✅ Ensure accountability

FOR POLICYMAKERS:
├── ✅ Develop AI regulations
├── ✅ Enforce anti-discrimination laws
├── ✅ Fund fairness research
├── ✅ Promote standards
└── ✅ Educate public

FOR USERS:
├── ✅ Demand transparency
├── ✅ Report biased systems
├── ✅ Support ethical AI
├── ✅ Stay informed
└── ✅ Hold organizations accountable
```

---

### Final Thoughts

```
┌────────────────────────────────────────┐
│                                        │
│  Ethical AI is not only a             │
│  TECHNOLOGICAL CHALLENGE               │
│                                        │
│  but also a                            │
│  SOCIETAL RESPONSIBILITY               │
│                                        │
│  We must all work together to ensure   │
│  AI benefits humanity FAIRLY           │
│                                        │
└────────────────────────────────────────┘
```

---

## Summary: Key Takeaways

### Bias in AI

```
BIAS = Systematic unfairness

TYPES:
├── Data bias (historical prejudice)
├── Sampling bias (non-representative data)
├── Labeling bias (human subjectivity)
├── Algorithmic bias (model design)
└── Interaction bias (feedback loops)

CONSEQUENCES:
├── Individual harm (denied opportunities)
├── Societal harm (reinforced inequality)
├── Loss of trust (rejected technology)
└── Legal risk (lawsuits, fines)
```

---

### Ethics in AI

```
ETHICS = Moral principles guiding AI

CORE PRINCIPLES:
├── Fairness
├── Transparency & Explainability
├── Accountability
├── Privacy & Data Protection
├── Human Oversight
├── Safety & Security
└── Beneficence & Non-Maleficence

WHY IT MATTERS:
  AI makes decisions at SCALE
  Without ethics → harm at SCALE
```

---

### Solutions

```
TECHNICAL:
├── Fairness-aware algorithms
├── Bias detection tools
├── Balanced datasets
└── Explainable AI

ORGANIZATIONAL:
├── AI Ethics Boards
├── Model cards / Datasheets
├── Ethical guidelines
└── Interdisciplinary teams

POLICY:
├── Regulations (GDPR, etc.)
├── Standards (OECD, UNESCO, EU)
├── Enforcement
└── Public education
```

---

### Case Studies

```
COMPAS (Criminal Justice):
  ❌ Racial bias in recidivism prediction
  ❌ Higher false positive rate for Black defendants
  ❌ Used in high-stakes sentencing decisions
  Lesson: Fairness metrics matter

AMAZON (Hiring):
  ❌ Gender bias in resume screening
  ❌ Penalized female candidates
  ❌ Couldn't be fully corrected
  ❌ Project abandoned
  Lesson: Historical data encodes bias
```

---

## Thank You!

### Course Information
- **Module:** IT2011 - Artificial Intelligence and Machine Learning
- **Lecture:** 8 - Bias and Ethics in AI & ML
- **Lecturer:** Dr. Lakmini Abeywardhana
- **Institution:** SLIIT - Sri Lanka Institute of Information Technology
- **Faculty:** Faculty of Computing
- **Academic Year:** Year 02, Semester 01
- **Student:** IT24103352
- **Date:** 2025-10-23

---

### Further Reading

**Books:**
- "Weapons of Math Destruction" by Cathy O'Neil
- "The Ethical Algorithm" by Michael Kearns & Aaron Roth
- "Artificial Unintelligence" by Meredith Broussard

**Papers:**
- "Fairness and Machine Learning" by Barocas, Hardt, Narayanan
- "Model Cards for Model Reporting" (Google)
- "Datasheets for Datasets" (Microsoft)

**Resources:**
- AI Fairness 360 (IBM)
- Fairlearn (Microsoft)
- Google's Responsible AI Practices

---

### Questions for Reflection

```
1. Can AI ever be completely unbiased?
   
2. Who should be held accountable when 
   AI causes harm?
   
3. How do we balance innovation with 
   ethical responsibility?
   
4. Should certain AI applications be 
   banned entirely?
   
5. How can diverse teams improve AI ethics?
```

---

**End of Lecture 9**

**Total Pages:** 13  
**Completion Status:** ✅ Fully converted to Markdown

---

