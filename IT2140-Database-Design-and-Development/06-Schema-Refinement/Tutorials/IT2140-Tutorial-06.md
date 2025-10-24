# Tutorial 06 - ER/EER to Relational Model Mapping

**Course:** IT2140 - Database Design and Development  
**Tutorial:** 06  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Department:** Information Technology  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Time (UTC):** 06:15:28

---

## Learning Outcomes

- Translate EER diagrams into an equivalent relational model, preserving entity relationships, attributes, and constraints
- Convert advanced EER features such as ISA hierarchies, aggregation into appropriate relational representations

---

## Questions

### Question 1
Convert the following EER diagram to the relational model. State any assumptions that you make.

**EER Diagram Description:**

**Entities:**
- **Movie Person** (id, name, birthday, address)
  - id is underlined (primary key)

**ISA Hierarchy:**
- **Movie Person** (superclass)
  - **Actor** (subclass)
    - Additional attributes: salary, picture
  - **Director** (subclass)
    - No additional attributes

**Entity:**
- **Film** (year, title, type)

**Relationships:**
- **Acted** (M:N relationship)
  - Connects Actor and Film
  - Cardinality: M on Actor side, N on Film side

- **Direct** (1:N relationship)
  - Connects Director and Film
  - Cardinality: 1 on Director side, N on Film side

---

### Question 2
Convert the following EER diagram to the relational model. State any assumptions that you make.

**EER Diagram Description:**

**Entities:**
- **Patient** (ID, Name, Sex, ContactNo)
  - ID is underlined (primary key)
  - Name is composite (FName, LName)
  - ContactNo is multivalued (double-lined ellipse)

- **Room** (ID, Type, extension)
  - ID is underlined (primary key)

- **Employee** (ID, Name, Salary, phone, Qualification, Experience)
  - ID is underlined (primary key)

- **Medicine** (Code, Description)
  - Code is underlined (primary key)

- **Treatment** (ID, Result, Time)
  - ID is underlined (primary key)

**ISA Hierarchy 1:**
- **Employee** (superclass)
  - **Doctor** (subclass)
    - Additional attributes: Specialty, Workplace
  - **Receptionist** (subclass)
    - Additional attributes: Extension (multivalued)
  - **Nurse** (subclass)
    - No additional attributes

**ISA Hierarchy 2:**
- **Doctor** (superclass)
  - **Visiting** (subclass)
    - Additional attributes: Hour
  - **Permanent** (subclass)
    - No additional attributes

**Relationships:**
- **Assigne** (1:1 relationship)
  - Connects Patient and Room
  - Cardinality: 1 on Patient side, 1 on Room side
  - Attributes: Admit_date, Discharge_date

- **Atten** (N:1 relationship)
  - Connects Patient and Employee
  - Cardinality: N on Patient side, 1 on Employee side
  - Attributes: Ave

- **Taken care by** (N:M relationship)
  - Connects Room and Nurse
  - Cardinality: N on Room side, M on Nurse side

- **Billed_for** (Ternary relationship)
  - Connects Patient, Medicine, and Treatment
  - Attributes: Date

---

**End of Tutorial 06**
