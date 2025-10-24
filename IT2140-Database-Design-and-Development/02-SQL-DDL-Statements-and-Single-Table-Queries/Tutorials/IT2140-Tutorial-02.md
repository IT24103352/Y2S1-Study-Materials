# Tutorial 02 - SQL DDL and DML Operations

**Course:** IT2140 - Database Design and Development  
**Tutorial:** 02  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Department:** Information Technology  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Time (UTC):** 06:07:32

---

## Learning Outcomes

- Create relational tables with appropriate constraints (e.g., NOT NULL, CHECK)
- Perform data manipulation using INSERT, UPDATE, and DELETE statements
- Modify table structures and enforce referential integrity using foreign key constraints
- Write SELECT queries to retrieve, filter, sort, from tables

---

## Database Schema

```
Employee (eid, ename, salary, dept, phone)
Department (deptNo, dname, location, mgrID)
```

---

## Questions

### Question 1
Create the Employee table and Department tables with following constraints:

(a) Employees' name cannot be null  
(b) Employees' salary should be greater than zero  
(c) Department location can be 'Colombo', 'Kandy' or 'Galle'

**Do not add the foreign key constraints to the table at this point

---

### Question 2
Insert following rows to the Employee table:

| **eid** | **ename** | **salary** | **dept** | **phone** |
|:---|:---|:---:|:---:|:---|
| E0001 | Kumari | 45000 | 3 | 0112123456 |
| E0002 | Anushka | 63000 | 1 | 0112123457 |
| E0003 | Anura | 27000 | 2 | 0112123458 |
| E0004 | Niranjala | 36000 | 3 | 0112123459 |
| E0005 | Sampath | 50000 | 1 | 0112123450 |

---

### Question 3
Insert the following rows to the Department table:

| **deptNo** | **dname** | **location** | **mgrID** |
|:---|:---|:---|:---|
| 1 | Administration | Colombo | E0002 |
| 2 | Sales | Kandy | E0002 |
| 3 | Finance | Colombo | E0005 |

---

### Question 4
Add the foreign key constraints to the created tables.

---

### Question 5
Add a column named bdate to the employee table to store the birth dates of employees.

---

### Question 6
Update the salary of Kumari to 35000.

---

### Question 7
Delete Sampath from Employee table.

---

### Question 8
Display the employee names and their salaries sorted by their names.

---

### Question 9
Display the names of the employees who obtain a salary greater than 50,000.

---

### Question 10
Display the employee's name and the id of the department he/she is working in.

---

**End of Tutorial 02**
