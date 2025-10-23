# LECTURE 3 - Expert Systems and Ontologies

**Module:** IT2011 - Artificial Intelligence and Machine Learning  
**Lecturer:** Dr. Lakmini Abeywardhana  
**Academic Year:** Year 02, Semester 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student:** IT24103352  
**Date:** 2025-10-23

---

## Table of Contents

- [Introduction to Expert Systems](#introduction-to-expert-systems)
- [Data vs Information vs Knowledge](#data-vs-information-vs-knowledge)
- [Expert System Architecture](#expert-system-architecture)
- [Key Components](#key-components)
- [Reasoning Methods](#reasoning-methods)
- [Real-World Applications](#real-world-applications)
- [Introduction to Ontologies](#introduction-to-ontologies)
- [Modern AI Transition](#modern-ai-transition)

---

## Introduction to Expert Systems

### What is an Expert System?

**Definition:**  
An Expert System is a type of computer program designed to simulate the decision-making ability of a human expert in a specific domain (like medicine, engineering, or finance).

**Key Characteristics:**
- Does NOT think like a human
- Follows **if-then rules** to reach conclusions
- Based on expert knowledge stored in its system
- Mimics human expert reasoning in specific domains

---

### Real-World Example: Medical Symptom Checker

#### Scenario: Using WebMD or Mayo Clinic's Symptom Checker

**Step 1: Input**
```
Think of a time when you typed your symptoms into a website 
like WebMD or Mayo Clinic's symptom checker.
```

**Step 2: Processing**
```
You select symptoms like:
- Fever
- Cough  
- Fatigue
```

**Step 3: Output**
```
The system suggests possible illnesses:
- Flu
- COVID-19
- Pneumonia
```

**This is an example of an expert system in action!**

---

## Data vs Information vs Knowledge

### Hierarchy Pyramid

```
                    ▲
                   /|\
                  / | \
                 /  |  \
                / Knowledge \
               /_____|_____\
              /             \
             /  Information  \
            /_________________\
           /                   \
          /        Data         \
         /_______________________\

    Quantity →                    ↑ Abstraction
                                  (Low to High)
```

### Definitions and Examples

#### 1. Data
**Definition:** Raw facts with no context

**Example:**
```
"98.6"
```

**Characteristics:**
- Unprocessed
- No meaning by itself
- Lowest level of abstraction
- Highest quantity

---

#### 2. Information
**Definition:** Organized and contextualized data

**Example:**
```
"Temperature = 98.6°F"
```

**Characteristics:**
- Data with context
- Provides answers to "who, what, where, when"
- Medium abstraction level
- Medium quantity

---

#### 3. Knowledge
**Definition:** Meaningful insights derived from information

**Example:**
```
"98.6°F is a normal body temperature"
```

**Characteristics:**
- Interpreted information
- Provides understanding and meaning
- Highest abstraction level
- Lowest quantity (but highest value)

---

## Conventional vs Expert Systems

### Comparison Table

| Feature | Conventional Computer System | Expert System |
|---------|------------------------------|---------------|
| **Control Mechanism** | Data is used to control | Knowledge is used to control |
| **Storage** | Data and control are stored together | Knowledge is stored in an encoded form called representation |
| **Explanation** | Cannot explain how the decision or conclusion is drawn | Can explain how a decision or conclusion is drawn |
| **Meta Information** | Meta data may be present | Meta knowledge is always present |
| **Decision Making** | Follows predefined algorithms | Mimics human expert reasoning |
| **Flexibility** | Rigid, requires code changes | More flexible through rule updates |

---

## Expert System Architecture

### System Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                    EXPERT SYSTEM                             │
│                                                              │
│  ┌──────────────┐              ┌──────────────┐            │
│  │  Knowledge   │              │   Database   │            │
│  │     Base     │              │              │            │
│  │              │              │              │            │
│  │  Rules:      │              │  Facts       │            │
│  │  IF-THEN     │              │              │            │
│  └──────┬───────┘              └──────┬───────┘            │
│         │                             │                     │
│         └──────────┬──────────────────┘                     │
│                    │                                        │
│            ┌───────▼───────┐                               │
│            │   Inference   │                               │
│            │    Engine     │◄────► External Database       │
│            └───────┬───────┘                               │
│                    │                                        │
│                    │◄────────► External Program            │
│                    │                                        │
│            ┌───────▼───────────┐                           │
│            │   Explanation     │                           │
│            │    Facilities     │                           │
│            └───────┬───────────┘                           │
│                    │                                        │
│         ┌──────────┴───────────┐                           │
│         │                      │                           │
│  ┌──────▼───────┐      ┌──────▼──────────┐               │
│  │     User     │      │   Developer     │               │
│  │  Interface   │      │   Interface     │               │
│  └──────┬───────┘      └──────┬──────────┘               │
└─────────┼──────────────────────┼──────────────────────────┘
          │                      │
      ┌───▼───┐         ┌────────▼─────────┐
      │ User  │         │ Knowledge Engineer│
      └───────┘         │   &   Expert      │
                        └───────────────────┘
```

---

## Key Components

### 1. Knowledge Base

**Definition:**  
A repository of facts and rules collected from domain experts.

**Think of it as:**  
The brain's memory - where the expert's knowledge is stored.

#### Types of Knowledge:

**Declarative Knowledge (Facts):**
```
"Fever is a body temperature > 100.4°F"
```

**Procedural Knowledge (Rules):**
```
IF fever AND sore throat THEN possible flu
```

#### Real-World Example:
In a medical expert system, the knowledge base includes:
- Disease symptoms
- Treatment guidelines
- Diagnostic rules
- Medical protocols

---

### 2. Inference Engine

**Definition:**  
The logical processing unit that applies reasoning to the knowledge base to derive conclusions.

**Think of it as:**  
The brain's reasoning mechanism - it solves problems using "if-then" logic.

#### Supports Two Reasoning Methods:

**Forward Chaining:**
```
From symptoms → disease
(Data-driven reasoning)
```

**Backward Chaining:**
```
From suspected disease → check for symptoms
(Goal-driven reasoning)
```

#### Real-World Example:
In a medical system:
- Patient enters symptoms
- Inference engine finds matching rules
- System concludes the likely illness

---

### 3. Forward Chaining (Data-Driven Reasoning)

#### Concept:
- Start with known facts (input data)
- Apply rules to infer new facts
- Continue until a goal is reached

#### Real-World Example: Diagnosing Flu

**Known Facts (User Input):**
```
✓ The patient has a fever
✓ The patient has a headache
✓ The patient has a runny nose
```

**Rule in Knowledge Base:**
```
IF fever AND headache AND runny nose
THEN possible flu
```

#### How Forward Chaining Works:

1. **Match Facts:** System matches entered facts with rules
2. **Fire Rule:** When all conditions are true, rule executes
3. **Add Conclusion:** New fact (flu diagnosis) added to knowledge base

**Conclusion Reached:**
```
"The patient might have flu."
```

---

### 4. Backward Chaining (Goal-Driven Reasoning)

#### Concept:
- Start with a goal (hypothesis)
- Look for rules that support this goal
- Ask questions to verify rule conditions

#### Real-World Example: Confirming Flu Diagnosis

**Goal:**
```
"Is the patient likely to have flu?"
```

**System Searches for Rule:**
```
IF fever AND headache AND runny nose
THEN flu
```

**System Asks Questions:**
```
1. "Does the patient have a fever?"        → User answers: Yes
2. "Does the patient have a headache?"     → User answers: Yes
3. "Does the patient have a runny nose?"   → User answers: Yes
```

**If All Conditions Confirmed:**
```
Goal is proven true
```

**Conclusion:**
```
"Yes, flu is likely."
```

---

### Forward vs Backward Chaining Comparison

| Feature | Forward Chaining | Backward Chaining |
|---------|------------------|-------------------|
| **Starts From** | Known facts (data) | Goal (hypothesis) |
| **Moves Toward** | Conclusions (goal) | Supporting facts (data) |
| **Reasoning Type** | Data-driven | Goal-driven |
| **Common In** | Monitoring, control systems | Diagnostic and expert advice systems |
| **Example** | From symptoms → find disease | From disease → check if symptoms fit |
| **Use Case** | "What can we conclude from these facts?" | "Is this conclusion true?" |

---

### 5. User Interface

**Definition:**  
The communication bridge between the user and the system.

**Think of it as:**  
A chatbot or form where users input information and receive decisions or suggestions.

#### Interface Types:
- **Text-based:** Command-line interfaces
- **Menu-driven:** Selection from options
- **Graphical:** Visual, interactive forms

#### Real-World Example:
In WebMD's symptom checker:
- Users click checkboxes for symptoms
- System provides likely diagnoses
- User-friendly interface guides interaction

---

### 6. Knowledge Acquisition Module (Developer Interface)

**Definition:**  
The tool that helps experts and engineers input and update knowledge.

**Think of it as:**  
The backstage control panel - where new rules or data are added or removed.

#### Functions:
- Add new rules
- Update existing knowledge
- Remove outdated information
- Maintain knowledge consistency

#### Real-World Example:
Doctors collaborate with developers to:
- Add new disease rules
- Update treatment protocols
- Incorporate latest medical research
- Into medical expert system through developer interface

---

### 7. Explanation Facility

**Definition:**  
The part of the system that explains how and why a certain conclusion was reached.

**Think of it as:**  
A teacher that justifies answers.

#### Example Explanation:
```
"I diagnosed flu because:
- Fever was observed (102°F)
- Cough was reported
- Muscle ache was present
- These match Rule #47 for Influenza"
```

#### Benefits:
- Builds user trust
- Ensures transparency
- Helps users learn
- Allows validation of reasoning

#### Real-World Example:
In legal expert systems:
- Shows which laws were considered
- Explains which facts supported the conclusion
- Provides legal recommendation with justification

---

### 8. Working Memory / Fact Base

**Definition:**  
Temporary memory that stores current facts during a reasoning session.

**Function:**
- Used by inference engine
- Tracks progress of reasoning
- Stores intermediate conclusions
- Maintains session state

#### Real-World Example:
When diagnosing a patient, working memory stores:
```
Current Session Facts:
- fever = true
- headache = true
- nausea = true
- temperature = 102°F
- duration = 3 days
```

---

### 9. External Interfaces (Optional)

**Definition:**  
Links to external databases or software programs.

**Purpose:**
- Fetch live data
- Send results to other systems
- Integrate with existing infrastructure

#### Real-World Example:
In a financial expert system:
- Access real-time stock prices
- Retrieve customer account data
- Connect to trading platforms
- Interface with banking systems

---

## How Expert Systems Work (Step-by-Step)

### Complete Workflow Table

| Step | Component | Role | Example (WebMD-style system) |
|------|-----------|------|------------------------------|
| **1** | **User Interface** | User enters data | You tick boxes for fever, cough, headache |
| **2** | **Knowledge Base** | Stores facts and rules | Rule: "IF fever AND cough THEN flu" |
| **3** | **Inference Engine** | Applies logic to rules | Checks symptoms against all rules |
| **4** | **Working Memory** | Tracks current facts | Stores: fever=yes, cough=yes |
| **5** | **Inference Engine** | Finds matching diagnosis | Rule matches → flu identified |
| **6** | **Explanation Facility** | Explains decision | "This is likely flu because you have fever, cough, and muscle ache" |
| **7** | **User Interface** | Displays results | Shows diagnosis + recommendation |

---

## Reasoning in Expert Systems

### What is Reasoning?

**Definition:**  
Reasoning in expert systems refers to the process of drawing conclusions from known facts and rules. The system uses logical steps to figure out a solution to a problem - similar to how a human expert would "reason" through a case.

### Two Types of Reasoning:

1. **Forward Chaining** (Data-Driven)
   - From facts to conclusions
   - "What can we infer from these facts?"

2. **Backward Chaining** (Goal-Driven)
   - From hypothesis to supporting facts
   - "Is this conclusion supported by evidence?"

---

## Real-World Applications

### Historic Expert Systems

#### 1. MYCIN (Healthcare)
**Domain:** Medical Diagnosis  
**Function:** Diagnosed blood infections

**Features:**
- Rule-based treatment suggestions
- Explanation of diagnosis
- Treatment recommendations

**Example:**
```
IF organism is gram-positive
AND organism is cocci
AND growth conformation is chains
THEN organism is streptococcus (with 70% certainty)
```

**Impact:**
- One of the first successful medical expert systems
- Demonstrated expert-level performance
- Pioneered explanation facilities

---

#### 2. DENDRAL (Chemistry)
**Domain:** Chemical Analysis  
**Function:** Predicted molecular structures using spectra data

**Features:**
- Analyzed mass spectrometry data
- Generated possible molecular structures
- Ranked hypotheses by likelihood

**Impact:**
- First expert system to perform at expert level
- Used in pharmaceutical research
- Demonstrated AI in scientific discovery

---

#### 3. XCON (Computing)
**Domain:** Computer System Configuration  
**Function:** Automated configuration of computer systems

**Features:**
- Configured VAX computer systems
- Ensured component compatibility
- Generated installation layouts

**Impact:**
- **Saved $25 million annually** for Digital Equipment Corporation (DEC)
- Processed thousands of orders per day
- Reduced errors significantly

---

#### 4. HEARSAY (Military/Voice)
**Domain:** Speech Recognition  
**Function:** Voice recognition and submarine sonar detection

**Features:**
- Multi-level speech understanding
- Acoustic signal processing
- Pattern recognition

**Impact:**
- Early success in speech recognition
- Military applications
- Foundation for modern voice AI

---

## Benefits & Limitations of Expert Systems

### Benefits (Pros)

✅ **Efficiency**
- Fast decision-making
- 24/7 availability
- Consistent performance

✅ **Consistency**
- No fatigue or emotional bias
- Same quality every time
- Standardized decisions

✅ **Knowledge Preservation**
- Captures expert knowledge
- Doesn't retire or leave
- Knowledge transfer made easy

✅ **Cost-Effective**
- Reduces need for multiple experts
- Scales across locations
- Lower long-term costs

---

### Limitations (Cons)

❌ **Rigidity**
- Cannot handle situations outside rules
- No common sense reasoning
- Limited adaptability

❌ **No Learning**
- Cannot improve from experience
- Must be manually updated
- Static knowledge base

❌ **Rule Dependency**
- Quality depends on rule quality
- Incomplete rules = poor performance
- Hard to maintain large rule sets

❌ **Limited Scope**
- Only works in narrow domains
- Cannot generalize
- Breaks with unexpected inputs

❌ **Knowledge Engineering Bottleneck**
- Expensive to build
- Time-consuming to develop
- Requires rare expertise

---

## Limitations of Expert Systems (Detailed)

### Why Expert Systems Have Declined

#### 1. Manual Rule Creation
```
Problem: Built entirely using manual rules created by human experts
Result: Slow development, expensive maintenance
```

#### 2. Difficulty Keeping Up-to-Date
```
Problem: Hard to keep current as domains evolve
Result: Outdated knowledge, reduced accuracy
```

#### 3. Cannot Learn from Data
```
Problem: No improvement over time, no adaptation
Result: Static performance, no optimization
```

#### 4. Brittleness
```
Problem: Breaks easily with incomplete or conflicting rules
Result: System failure in edge cases
```

#### 5. Scalability Issues
```
Problem: Not scalable to complex problems like:
- Computer vision
- Natural language understanding
- Speech recognition
Result: Limited to simple, well-defined domains
```

---

## Introduction to Ontologies

### What is an Ontology?

#### Formal Definition (Gruber, 1993)

```
┌─────────────────────────────────────────────────┐
│  "A formal, explicit specification of a        │
│   shared conceptualization."                    │
│                                                  │
│                    — Gruber, 1993               │
└─────────────────────────────────────────────────┘
```

**Breaking Down the Definition:**

**Formal:**
- Follows specific structure and rules
- Machine-readable format
- Mathematically precise

**Explicit:**
- All terms clearly defined
- Relationships stated explicitly
- No ambiguity

**Shared:**
- Agreed upon by community
- Common understanding
- Enables interoperability

**Conceptualization:**
- Reflects how we view the world
- Abstract model of domain
- Structured representation

---

### Complete Definition

**An ontology is:**
A structured way to represent knowledge, including:
- **Concepts** (things)
- **Properties** (features)
- **Relationships** (connections between concepts)

In a way that computers can:
- Understand
- Process
- Reason with

---

## Real-World Analogies

### Analogy 1: Library Catalog (Dewey Decimal System)

**Imagine you walk into a library:**

#### Organization:
```
Books are classified into categories:
├── Science (500-599)
├── History (900-999)
└── Fiction (800-899)
```

#### Each Book Has:
- A unique code (call number)
- Belongs to a subject
- May have relationships to other books

#### Relationships:
```
Example: "History of Science"
- Belongs to: History (primary)
- Related to: Science (secondary)
- Cross-referenced in both sections
```

**This structure is ontology in action:**
- Organizing knowledge
- Easy to search and browse
- Defined relationships
- Systematic retrieval

---

### Analogy 2: Family Tree

**In a family tree structure:**

#### Classes (Categories):
```
- Person
- Parent
- Child
- Sibling
- Grandparent
```

#### Instances (Specific Examples):
```
- "John" is a Person
- "Anna" is a Person
- "John" is Anna's brother
```

#### Relationships:
```
- hasSibling
- isParentOf
- isChildOf
- isGrandparentOf
```

#### Reasoning Example:
```
Facts:
1. John's mother is Mary
2. Anna's mother is Mary

Inferred Knowledge:
∴ John and Anna are siblings
(because they share the same mother)
```

**This is a simple ontology of family relationships:**
- Structured knowledge representation
- Clear relationships
- Enables logical inference
- Computers can reason about connections

---

## Why Ontologies Are Useful in AI

### Key Benefits

#### 1. **Give Meaning to Data**
```
Without Ontology:
"Apple" → just a word

With Ontology:
"Apple" → 
- Is-a: Fruit
- Color: Red/Green
- Taste: Sweet
- RelatedTo: Tree, Orchard
```

Machines don't just see words; they see **relationships and structure**.

---

#### 2. **Help in Reasoning**
```
Known Facts:
- All students are people
- John is a student

Inferred:
∴ John is a person
```

Infer new facts from existing ones through logical deduction.

---

#### 3. **Enable Semantic Interoperability**
```
Hospital A:           Ontology:              Hospital B:
"Patient"       ←→    Person with           ←→   "Client"
                      medicalRecord

Same concept, different terms → Systems can communicate
```

Make data **shareable and understandable** across systems.

---

#### 4. **Support Intelligent Search**
```
User searches: "Fruit that grows on trees"

Without Ontology: Keyword matching
With Ontology: 
- Understands "fruit" concept
- Knows "grows on" relationship
- Links to Tree class
- Returns: Apple, Orange, Mango
```

---

## Real-World Applications of Ontologies

| Domain | Use of Ontologies | Example |
|--------|-------------------|---------|
| **Healthcare** | Standardizes medical terms across systems | **SNOMED CT:** <br>- 350,000+ medical concepts<br>- Enables global health data exchange<br>- Used in electronic health records |
| **E-commerce** | Product categorization and filtering | **Amazon:**<br>- Electronics → Laptops → Gaming Laptops<br>- Smart filtering and recommendations<br>- Cross-category relationships |
| **Search Engines** | Knowledge graphs for smart answers | **Google Knowledge Graph:**<br>- "Who is Albert Einstein?" → Direct answer box<br>- Related concepts, facts, images<br>- Entity relationships |
| **Smart Farming** | Agricultural knowledge management | **AgroVoc:**<br>- Crop, soil, weather data links<br>- Multilingual agricultural thesaurus<br>- 40,000+ concepts in 40+ languages |
| **Semantic Web** | Linked open data | **DBpedia:**<br>- Structured Wikipedia data<br>- Linked data cloud<br>- Machine-readable knowledge |
| **Autonomous Vehicles** | Scene understanding | **Road ontology:**<br>- Vehicle, Pedestrian, Traffic Sign<br>- Spatial relationships<br>- Driving rules |

---

## Components of an Ontology

### Detailed Component Table

| Element | Description | Example (University Domain) | Real-World Analogy |
|---------|-------------|-----------------------------|--------------------|
| **Class** | A group/category of things | Student, Course, Instructor | Like folders in a file system |
| **Instance** | Specific member of a class | John (a Student), CS101 (a Course) | Like individual files in a folder |
| **Property** | Feature or attribute of a class | hasName, hasCredits, hasAge | Like properties of an object |
| **Relationship** | Link between classes or instances | enrolledIn (Student → Course) | Like lines connecting nodes in a graph |
| **Axiom** | Logical rule that must always be true | "A course must have at least 1 instructor" | Like laws that cannot be broken |
| **Restriction** | Constraint on properties or relationships | "Students must enroll in ≤ 5 courses" | Like speed limits on a road |

---

### Detailed Examples

#### 1. Classes
```
University Ontology Classes:
├── Person
│   ├── Student
│   │   ├── UndergraduateStudent
│   │   └── GraduateStudent
│   ├── Faculty
│   │   ├── Professor
│   │   └── Lecturer
│   └── Staff
├── Course
└── Department
```

---

#### 2. Instances
```
Class: Student
Instances:
- IT24103352 (John Silva)
- IT24103353 (Anna Perera)
- IT24103354 (David Fernando)

Class: Course
Instances:
- IT2011 (AI and Machine Learning)
- IT2140 (Database Design)
- IT2120 (Probability and Statistics)
```

---

#### 3. Properties

**Data Properties (Attributes):**
```
Student:
- hasName: "John Silva"
- hasAge: 20
- hasGPA: 3.75
- hasEmail: "john@sliit.lk"
```

**Object Properties (Relationships):**
```
Student → Course
- enrolledIn
- hasCompleted
- isCurrentlyTaking
```

---

#### 4. Relationships
```
enrolledIn(Student, Course)
teaches(Instructor, Course)
belongsTo(Course, Department)
advises(Instructor, Student)

Example:
enrolledIn(IT24103352, IT2011)
"Student IT24103352 is enrolled in course IT2011"
```

---

#### 5. Axioms (Rules)
```
Axiom 1:
∀ course: Course → ∃ instructor: Instructor, teaches(instructor, course)
"Every course must have at least one instructor"

Axiom 2:
∀ student: Student → hasAge(student) ≥ 16
"All students must be at least 16 years old"

Axiom 3:
∀ course: Course → hasCredits(course) > 0
"Every course must have positive credits"
```

---

#### 6. Restrictions
```
Restriction 1:
Student.enrolledIn ≤ 5
"Students can enroll in maximum 5 courses per semester"

Restriction 2:
Course.hasInstructor ≥ 1
"A course must have at least 1 instructor"

Restriction 3:
Student.hasGPA: [0.0, 4.0]
"GPA must be between 0.0 and 4.0"
```

---

## The Ontology Stack

### Hierarchical Structure

```
┌────────────────────────────────────────┐
│   STRUCTURE                             │
│   (semantics / expressiveness)          │
├────────────────────────────────────────┤
│   CONCEPTS                              │
│   (classes)                             │
├────────────────────────────────────────┤
│   PROPERTIES                            │
│   ├─ Relations                          │
│   └─ Attributes                         │
├────────────────────────────────────────┤
│   ENTITIES                              │
│   ├─ Objects                            │
│   └─ Values                             │
└────────────────────────────────────────┘
```

### Layer Descriptions

#### Layer 1: STRUCTURE
**Description:** Defines how knowledge is organized
- Ontology languages (OWL, RDF)
- Logical framework
- Semantic expressiveness

---

#### Layer 2: CONCEPTS (Classes)
**Description:** Categories and types of things
```
Examples:
- Student (class)
- Course (class)
- Instructor (class)
```

---

#### Layer 3: PROPERTIES
**Subdivided into:**

**Relations:**
```
Connections between concepts
Examples:
- enrolledIn
- teaches
- advises
```

**Attributes:**
```
Features of concepts
Examples:
- hasName
- hasAge
- hasCredits
```

---

#### Layer 4: ENTITIES
**Subdivided into:**

**Objects:**
```
Concrete instances
Examples:
- John (instance of Student)
- IT2011 (instance of Course)
```

**Values:**
```
Data values
Examples:
- "John Silva" (name value)
- 3.75 (GPA value)
- 20 (age value)
```

**Source:** [Conceptual and Practical Distinctions in the Attributes Ontology](https://www.mkbergman.com/1842/conceptual-and-practical-distinctions-in-the-attributes-ontology/)

---

## Challenges of Ontologies

### Major Limitations

#### 1. **Require Expert Knowledge**
```
Challenge: Need domain experts to build and maintain
Impact:
- Expensive development
- Time-consuming
- Requires specialized skills
```

---

#### 2. **Best for Structured Knowledge**
```
Suitable for:
✓ Anatomy (well-defined structures)
✓ Curriculum (clear hierarchies)
✓ Legal systems (defined rules)

Not suitable for:
✗ Social media sentiment
✗ Artistic interpretation
✗ Ambiguous language
```

---

#### 3. **Cannot Handle Unstructured Data**
```
Struggles with:
✗ Free-form text
✗ Images
✗ Audio
✗ Video
✗ Sensor data

Reason: Ontologies require explicit structure
```

---

#### 4. **Limited Uncertainty Handling**
```
Problem: Cannot capture probabilistic relationships

Example:
Traditional: "Student enrolledIn Course" (binary: yes/no)
Reality: "Student likely interested in Course" (probability: 0.75)

Cannot express "maybe" or "probably"
```

---

#### 5. **Maintenance Overhead**
```
Issues:
- Knowledge evolves over time
- Manual updates required
- Version control challenges
- Keeping consistency difficult
```

---

#### 6. **Scalability Issues**
```
As ontology grows:
- Reasoning becomes slow
- Complexity increases exponentially
- Conflicts more likely
- Harder to validate
```

---

## From Expert Systems & Ontologies to Modern AI

### Why Move Beyond?

#### Limitations of Traditional Approaches

**Expert Systems:**
❌ Rule-based systems are limited in flexibility and scalability  
❌ Cannot learn from data  
❌ Break easily with incomplete rules  
❌ Require constant manual updates  

**Ontologies:**
❌ Require manual creation and don't adapt to changing data  
❌ Cannot handle uncertainty or probability  
❌ Limited to structured domains  
❌ Expensive to build and maintain  

**Both Share:**
❌ Lack learning capability - they don't improve with experience  
❌ Struggle with unstructured, ambiguous, or noisy real-world data  
   (e.g., images, social media text, sensor data)  
❌ Cannot scale to modern AI challenges  

---

## Modern AI Techniques That Have Taken Over

### 1. Machine Learning (ML)

**Key Advantages:**
✅ Learns patterns from data automatically  
✅ Scales to new problems without explicit reprogramming  
✅ Improves with more data  

**Applications:**
- Email filtering (spam detection)
- Fraud detection (banking)
- Recommendation systems (Netflix, YouTube)
- Credit scoring

**Example:**
```
Traditional Expert System:
IF amount > $10,000 AND location = "foreign" THEN flag_transaction

Machine Learning:
- Learns from millions of transactions
- Discovers complex patterns
- Adapts to new fraud techniques
- No manual rules needed
```

---

### 2. Deep Learning (DL)

**Key Advantages:**
✅ Uses neural networks to handle complex unstructured data  
✅ Excels in pattern recognition  
✅ Automatic feature extraction  

**Excels In:**
- Image recognition (medical imaging, facial recognition)
- Speech processing (Siri, Alexa)
- Natural Language Processing (ChatGPT)
- Video analysis

**Examples:**
- **ChatGPT:** Natural language understanding and generation
- **Facial recognition:** Unlock phones, security systems
- **Medical imaging:** Detect tumors, diagnose diseases

---

### 3. Reinforcement Learning (RL)

**Key Advantages:**
✅ Learns optimal decisions through trial and error  
✅ No need for labeled training data  
✅ Discovers strategies humans might miss  

**Used In:**
- Robotics (walking, grasping, manipulation)
- Autonomous driving (Tesla, Waymo)
- Game AI (AlphaGo, OpenAI Five)
- Resource optimization

**Example - AlphaGo:**
```
Expert System Approach:
- Would need thousands of hand-coded rules
- Cannot adapt to novel strategies

Reinforcement Learning:
- Learned by playing millions of games
- Discovered new strategies
- Beat world champion
- Self-improving
```

---

### 4. Hybrid AI Systems

**Key Advantages:**
✅ Combine symbolic reasoning (from ontologies) with data-driven learning (from ML)  
✅ Enhanced explainability + adaptability  
✅ Best of both worlds  

**Characteristics:**
- **Symbolic AI** provides structure and interpretability
- **Machine Learning** provides adaptation and pattern recognition
- **Together** create more robust systems

**Used In:**
- Explainable AI (healthcare diagnosis with reasoning)
- Smart assistants (Alexa, Google Assistant)
- Autonomous systems (self-driving cars with rule-based safety)
- Industrial AI (combining domain knowledge with data)

**Example - Medical Diagnosis:**
```
Hybrid System:
1. Deep Learning: Analyzes medical images
2. Ontology: Provides medical knowledge structure
3. Reasoning: Explains diagnosis
4. Result: Accurate + Explainable + Trustworthy
```

---

## Evolution Timeline

### From Expert Systems to Modern AI

```
1950s-1980s: Expert Systems Era
├── Rule-based systems
├── Manual knowledge engineering
├── Limited domains
└── No learning

1990s-2000s: Machine Learning Emergence
├── Statistical learning
├── Data-driven approaches
├── Broader applications
└── Some learning capability

2010s: Deep Learning Revolution
├── Neural networks
├── Big data
├── GPU acceleration
└── Human-level performance in specific tasks

2020s: Hybrid AI & Foundation Models
├── Combining approaches
├── Large language models
├── Multimodal AI
└── Explainable + Powerful
```

---

## Comparison: Traditional vs Modern AI

| Aspect | Expert Systems / Ontologies | Modern AI (ML/DL) |
|--------|---------------------------|-------------------|
| **Knowledge Source** | Human experts (manual) | Data (automatic) |
| **Learning** | No learning | Continuous learning |
| **Flexibility** | Rigid, rule-based | Adaptive, pattern-based |
| **Scalability** | Limited | Highly scalable |
| **Maintenance** | Manual updates required | Self-improving |
| **Handling Ambiguity** | Poor | Excellent |
| **Unstructured Data** | Cannot handle | Excels at processing |
| **Explainability** | High (rule-based) | Low (but improving) |
| **Development Cost** | High (expert time) | High (data + compute) |
| **Best For** | Well-defined, structured domains | Complex, data-rich problems |

---

## Summary

### Key Takeaways

#### Expert Systems:
✅ **Strengths:**
- Captured expert knowledge
- Transparent reasoning
- Consistent decisions

❌ **Weaknesses:**
- No learning capability
- Limited flexibility
- Expensive to build and maintain

---

#### Ontologies:
✅ **Strengths:**
- Structured knowledge representation
- Enables reasoning
- Semantic interoperability

❌ **Weaknesses:**
- Manual creation
- Limited to structured domains
- Cannot adapt to change

---

#### Modern AI:
✅ **Advantages:**
- Learns from data
- Handles complexity
- Scales globally
- Improves over time

⚠️ **Challenges:**
- Less explainable
- Requires large datasets
- Computational costs

---

### The Future: Hybrid Approach

**Best of Both Worlds:**
```
Symbolic AI          +     Machine Learning
(Explainability)          (Adaptability)
        ↓                         ↓
           Next-Generation AI
        (Powerful + Understandable)
```

**Applications:**
- Healthcare (accurate + explainable diagnosis)
- Autonomous vehicles (safe + adaptive)
- Legal systems (consistent + learning)
- Scientific discovery (structured + innovative)

---

## References

1. Gruber, T. R. (1993). "A translation approach to portable ontology specifications." *Knowledge Acquisition*, 5(2), 199-220.
2. Feigenbaum, E. A. (1977). "The art of artificial intelligence: Themes and case studies of knowledge engineering."
3. Shortliffe, E. H. (1976). "MYCIN: Computer-based medical consultations."
4. Buchanan, B. G., & Feigenbaum, E. A. (1978). "DENDRAL and Meta-DENDRAL: Their applications dimension."
5. McDermott, J. (1982). "R1: A rule-based configurer of computer systems." *Artificial Intelligence*, 19(1), 39-88.

---

**End of Lecture 3**

---

**Course Information:**
- **Module:** IT2011 - Artificial Intelligence and Machine Learning
- **Institution:** SLIIT - Sri Lanka Institute of Information Technology
- **Faculty:** Faculty of Computing
- **Lecturer:** Dr. Lakmini Abeywardhana
- **Academic Year:** Year 02, Semester 01
- **Student:** IT24103352
- **Date Created:** 2025-10-23
