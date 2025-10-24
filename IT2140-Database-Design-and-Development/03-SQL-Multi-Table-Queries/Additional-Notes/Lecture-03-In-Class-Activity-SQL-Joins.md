# In-Class Activity - SQL Joins

**Course:** IT2140 - Database Design and Development  
**Activity:** Lecture 03 SQL Joins In-Class Activities  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Department:** Information Technology  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Time (UTC):** 09:10:46

---

## Database Schema

Consider the following schema:

```
Emp (eid: integer, ename: string, age: integer, salary: real)
Works (eid: integer, did: string, pct_time: integer)
Dept (did: string, budget: real, managerid: integer)
```

**Description:**
An employee can work in more than one department; the pct_time field of the Works relation shows the percentage of time that a given employee works in a given department. Managerid field shows the employee id of the manager who manages the department.

---

## Sample Data

### Emp Table

| **eid** | **ename** | **age** | **salary** |
|:---|:---|:---:|:---:|
| 1000 | Lakmal | 33 | 90000 |
| 1001 | Nadeeka | 24 | 28000 |
| 1002 | Amila | 26 | 35000 |
| 1003 | Nishani | 28 | 60000 |
| 1004 | Krishan | 36 | 95000 |
| 1005 | Surangi | 37 | 22000 |
| 1006 | Shanika | 24 | 18000 |
| 1007 | Amali | 21 | 20000 |
| 1008 | Charith | 28 | 35000 |
| 1009 | Prasad | 40 | 95000 |

---

### Works Table

| **eid** | **did** | **Pct_time** |
|:---|:---|:---:|
| 1000 | Admin | 40 |
| 1000 | ITSD | 50 |
| 1001 | Admin | 100 |
| 1002 | Academic | 100 |
| 1003 | Academic | 20 |
| 1003 | Admin | 20 |
| 1003 | ITSD | 45 |
| 1004 | Academic | 60 |
| 1004 | Finance | 30 |
| 1006 | Finance | 30 |
| 1006 | Maintenance | 52 |
| 1008 | Finance | 35 |
| 1008 | ITSD | 30 |
| 1008 | Maintenance | 30 |
| 1009 | Admin | 100 |

---

### Dept Table

| **did** | **budget** | **Manager_id** |
|:---|:---:|:---:|
| Academic | 900000 | 1002 |
| Admin | 120000 | 1000 |
| Finance | 3000000 | 1008 |
| ITSD | 4500000 | 1000 |
| Maintenance | 40000 | 1004 |
| SESD | 20000 | 1004 |
| Marketing | 90000 | 1008 |

---

## Questions

### Question 1
Display the employee names who work in department 'Finance'.

---

### Question 2
Display the names and ages of employees who work in departments whose IDs start with the capital letter 'A'.

---

### Question 3
List each employee's name and salary only once, even if they work in multiple departments starting with 'A'.

---

### Question 4
For each department display the department name and the name of the manager.

---

### Question 5
For each employee who is earning more than 75000 display the name of the employee and the id of the manager.

---

### Question 6
Display the employees' name and the total percentage he/she has worked in total.

---

### Question 7
Display the names of the employee who work more than 90%.

---

### Question 8
Display all department names and the number of employees working in them, including departments with no employees.

---

### Question 9
List all departments and the employees working in them, including departments with no employees.

---

### Question 10
Display the name of departments who have the total of salary exceeding 100000 LKR.

---

**End of In-Class Activity**
