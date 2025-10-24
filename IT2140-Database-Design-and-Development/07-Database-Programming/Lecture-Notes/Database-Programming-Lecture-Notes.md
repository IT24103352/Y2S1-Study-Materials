# Lecture 07 - Database Programming

**Course:** IT2140 - Database Design and Development  
**Lecture:** 07  
**Topic:** Database Programming (Views, Functions, Procedures, Triggers)  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 05:35:22

---

## Table of Contents

- [Lecture Content](#lecture-content)
- [Learning Outcomes](#learning-outcomes)
- [Views](#views)
- [T-SQL Programming](#programming-in-t-sql)
- [Stored Functions and Procedures](#stored-functionsprocedures)
- [Triggers](#triggers)
- [Summary](#summary)

---

## Lecture Content

- Views
- SQL extensions (specifically T-SQL)
- Functions & Procedures
- Triggers

---

## Learning Outcomes

At the end of this lecture, students should be able to:

- **Identify situations** where views, functions, stored procedures and triggers are applicable
- **Write syntactically correct SQL statements** to create functions, procedures and triggers on RDBMS to cater user requirements

---

## Views

### Definition

A **view** is a **virtual table** which is derived from other tables which are called **base tables** or **defining tables**.

**Key Point:**
- A view does **not necessarily exist in a physical form**

---

### Creating Views

In SQL, **CREATE VIEW** statement is used to define views.

**Syntax:**

```sql
CREATE VIEW <view_name> AS
SELECT <column_name(s)>
FROM <table_name>
WHERE <condition>;
```

---

### Example: Department Information View

**Given Tables:**
- `emp (eid, ename, age, salary)`
- `dept (did, dname, budget, managerId)`
- `works (eid, did, pct_time)`

**Task:** Create a view named `dept_info` that contains name of the department, budget and manager's name

**Solution:**

```sql
CREATE VIEW dept_info(dname, budget, manager)
AS
SELECT d.dname, d.budget, e.ename 
FROM emp e, dept d
WHERE e.eid = d.managerId;
```

---

## Exercise 1: Employee Information View

### Task

Create a view named `emp_info` which contains eid, name, salary and total percentage of time.

**Given Tables:**
- `emp (eid, ename, age, salary)`
- `dept (did, dname, budget, managerId)`
- `works (eid, did, pct_time)`

---

### Solution

```sql
CREATE VIEW emp_info(eid, name, salary, tot_pct)
AS
SELECT e.eid, e.ename, e.salary, SUM(w.pct_time) AS tot_pct
FROM emp e, works w
WHERE e.eid = w.eid
GROUP BY e.eid, e.ename, e.salary;
```

---

## Querying and Deleting a View

### Querying a View

Querying a view can be done **similar to a table**.

**Example 1:**

```sql
SELECT * FROM dept_info;
```

**Example 2:**

```sql
SELECT dname 
FROM dept_info 
WHERE budget > 500000;
```

---

### Dropping a View

**Syntax:**

```sql
DROP VIEW <view_name>;
```

**Example:**

```sql
DROP VIEW dept_info;
```

---

## Updating Views

### Problem: Ambiguity

**Updating a view can be ambiguous...**

---

### Case 1: Views with Aggregate Functions

Views containing **aggregate functions** are **NOT updateable**.

**Example:**

```sql
UPDATE emp_info
SET tot_pct = 90
WHERE eid = 1000;
```

**Problem:** ❌ **This is not possible**

**Reason:**
- `tot_pct` is computed using `SUM()` aggregate function
- Cannot directly update an aggregated value

---

### Case 2: Views with Joins

Views containing a **join** can be **ambiguous**.

**Example:**

**Tables:**

**Table A:**

| **A** | **B** |
|:---:|:---:|
| b | 1 |

**Table B:**

| **B** | **C** |
|:---:|:---:|
| 1 | d |
| 1 | e |

**View V1:**

```sql
CREATE VIEW V1 AS
SELECT A.A, A.B, B.C
FROM A JOIN B ON A.B = B.B;
```

**Result:**

| **A** | **B** | **C** |
|:---:|:---:|:---:|
| b | 1 | d |
| b | 1 | e |

---

**Update Attempt:**

```sql
UPDATE V1
SET A = 'a'
WHERE C = 'e';
```

**Problem:** ❌ **Ambiguous**

**Reason:**
- Which row in base table A should be updated?
- The view has 2 rows, but base table A has only 1 row
- Update would affect multiple rows in unpredictable ways

---

### General Rule

**Thus, in many DBMSs, views are updateable only if:**
- They are defined on a **single base table**
- No aggregate functions
- No DISTINCT
- No GROUP BY/HAVING

---

## Why Views?

### Advantages

**1. Security:**
- Each user can be given permission to access the database only through a **small set of views**
- Views contain the **specific data** the user is **authorized to see**
- **Restricts** the user's access to stored data

**Example:**
- HR department sees only HR-related data
- Finance department sees only finance-related data

---

**2. Query Simplicity:**
- A view can **draw data from several different tables** and present it as a **single table**
- Turns **multi-table queries** into **single-table queries** against the view

**Example:**

**Without View:**

```sql
SELECT e.ename, d.dname, d.budget
FROM emp e, dept d, works w
WHERE e.eid = w.eid AND w.did = d.did;
```

**With View:**

```sql
CREATE VIEW emp_dept_info AS
SELECT e.ename, d.dname, d.budget
FROM emp e, dept d, works w
WHERE e.eid = w.eid AND w.did = d.did;

-- Simple query
SELECT * FROM emp_dept_info;
```

---

### Disadvantages

**1. Performance:**
- Views create the **appearance of a table**
- DBMS must still **translate queries** against the view into queries against the **underlying source tables**
- If the view is defined by a **complex, multi-table query**, then simple queries on the views may take **considerable time**

**2. Update Restrictions:**
- Limited ability to update views
- Views with joins, aggregates cannot be updated

---

## Programming in T-SQL

### Introduction

Similar to a programming language, certain **extensions** have been made in SQL to program **simple server-side logic**.

---

### T-SQL Statements

Some of the statements include:

**1. Variables**
- Declare and use variables

**2. Selection Conditions**
- `IF (...) ... ELSE ...`

**3. Looping**
- `WHILE (...)`

---

## T-SQL: Variables

### Definition

A **Transact-SQL local variable** is an object that can hold a **single data value** of a **specific type**.

---

### Uses of Variables

Variables in scripts are typically used:

**1. As a counter**
- To count the number of times a loop is performed
- To control how many times the loop is performed

**2. To hold a data value**
- To be tested by a control-of-flow statement

**3. To save a data value**
- To be returned by a stored procedure return code

---

## T-SQL: Variables (Declaring & Assigning)

### Declaring Variables

The **DECLARE** statement initializes a Transact-SQL variable.

**Syntax:**

```sql
DECLARE @<variable_name> <data_type>;
```

**Example:**

```sql
DECLARE @DName VARCHAR(20);
```

**Note:** The created variable will be holding a **null value**

---

### Assigning Values

To **assign a value** to a variable, use the **SET** statement.

**Syntax:**

```sql
SET @<variable_name> = <value>;
```

**Example:**

```sql
SET @DName = 'SESD';
```

---

## T-SQL: Variables (Using in Queries)

### Using Variables in Scripts

The declared variables could be used in **SQL statements**.

---

### Example 1: Using Variable in WHERE Clause

```sql
DECLARE @DName VARCHAR(20);
SET @DName = 'SESD';

SELECT budget
FROM Dept
WHERE dname = @DName;
```

---

### Example 2: Assigning Query Result to Variable

```sql
DECLARE @empId INT;

SELECT @empId = MAX(eid)
FROM emp;

PRINT @empId;
```

---

## T-SQL: IF Statement

### Definition

Imposes **conditions** on the execution of a Transact-SQL statement.

---

### Syntax

```sql
IF <condition>
BEGIN
    -- statements
END
ELSE
BEGIN
    -- statements
END
```

---

### Example

```sql
IF (SELECT COUNT(eid) FROM emp) > 1000
BEGIN
    PRINT 'Inside the IF statement';
    PRINT 'There are more than 1000 employees';
END
ELSE
BEGIN
    PRINT 'There are 1000 or fewer employees!';
END
```

---

## T-SQL: WHILE Statement

### Definition

Sets a **condition** for the **repeated execution** of an SQL statement or statement block.

The statements are executed **repeatedly** as long as the **specified condition is true**.

---

### Control Keywords

The execution of statements in the WHILE loop can be controlled from inside the loop with:

**1. BREAK**
- Causes an **exit** from the innermost WHILE loop
- Any statements appearing **after the END** keyword, marking the end of the loop, are executed

**2. CONTINUE**
- Causes the WHILE loop to **restart**
- **Ignores** any statements after the CONTINUE keyword

---

### Syntax

```sql
WHILE <condition>
BEGIN
    -- statements
    
    -- Optional: BREAK or CONTINUE
END
```

---

### Example

```sql
DECLARE @count INT;
SET @count = 1;

WHILE @count <= 100
BEGIN
    INSERT INTO Employees 
    VALUES(@count, CONCAT('Employee', @count));
    
    SET @count = @count + 1;
END
```

---

## Stored Functions/Procedures

### Purpose

**Business logic** is maintained in **database tier** for **data intensive operations**.

**Example:**
- Calculating all interest earned in bank accounts

---

### Implementation Languages

In **SQL Server 2005**, Stored Procedure/Functions can be written in:

**1. T-SQL** (we will study only this)

**2. Any .NET Language**

---

## Stored Functions/Procedures (Syntax)

### Function Syntax

```sql
CREATE FUNCTION <function_name>
(
    -- parameters
)
RETURNS <return_type>
AS
BEGIN
    -- function body
    RETURN <value>;
END
```

**Parameter Mode:**
- Parameters for functions is **IN**
- **IN** parameters allow the calling code to **pass values into** the procedure

---

### Procedure Syntax

```sql
CREATE PROCEDURE <procedure_name>
(
    -- parameters
)
AS
BEGIN
    -- procedure body
END
```

**Parameter Modes:**

Each parameter to a procedure should have:
- A **data type**
- A **parameter mode** (IN or OUT)

**IN:**
- This is the **default mode**
- IN parameters allow the calling code to **pass values into** the procedure

**OUT:**
- OUT parameters allow the procedure to **pass values back to** the calling code

---

## Functions

### Example: Get Employee Count

**Task:** Create a function that returns the number of employees in a given department.

---

### Function Components

```sql
CREATE FUNCTION getEmpCount (@did CHAR(12)) 
RETURNS INT
AS
BEGIN
    DECLARE @ecount INT;
    
    SELECT @ecount = COUNT(*)
    FROM works w
    WHERE w.did = @did;
    
    RETURN @ecount;
END
```

**Components:**
- **Function name:** `getEmpCount`
- **Input parameters:** `@did CHAR(12)`
- **Return data type:** `INT`

---

### Calling the Function

```sql
DECLARE @result INT;

EXEC @result = getEmpCount 'Admin';

PRINT @result;
```

**Alternative (in SELECT):**

```sql
SELECT dbo.getEmpCount('Admin') AS EmployeeCount;
```

---

## Exercise 2: Total Percentage Function

### Task

Create a function to return the **total percentage of time** a person works given the **employee id**.

**Given Tables:**
- `emp (eid, ename, age, salary)`
- `works (eid, did, pct_time)`

---

### Solution

```sql
CREATE FUNCTION getTotalPct (@eid INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @totPct FLOAT;
    
    SELECT @totPct = SUM(pct_time)
    FROM works
    WHERE eid = @eid;
    
    RETURN @totPct;
END
```

**Calling:**

```sql
DECLARE @result FLOAT;
EXEC @result = getTotalPct 1000;
PRINT @result;
```

---

## Stored Procedures

### Example: Salary Increment

**Task:** Create a procedure to give a salary increment to all employees by a given percentage from their existing salary.

---

### Solution

```sql
CREATE PROCEDURE increaseSalary (@pct FLOAT)
AS
BEGIN
    UPDATE emp
    SET salary = salary + salary * (@pct / 100);
END;
```

---

### Calling the Procedure

```sql
EXEC increaseSalary 10;
```

**Result:**
- All employee salaries increased by 10%

---

## Stored Procedures (Output Parameters)

### Example: Salary Statistics

**Task:** Create a procedure that outputs statistics of salary (min, max) for a given department.

---

### Solution

```sql
CREATE PROCEDURE get_stats
(
    @did VARCHAR(12),
    @maxm REAL OUTPUT,
    @minm REAL OUTPUT
)
AS
BEGIN
    SELECT 
        @maxm = MAX(e.salary),
        @minm = MIN(e.salary)
    FROM dept d, works w, emp e
    WHERE d.did = w.did 
      AND w.eid = e.eid 
      AND d.did = @did;
END
```

---

### Calling with Output Parameters

```sql
DECLARE @max INT, @min INT;

EXEC get_stats 'Admin', @max OUTPUT, @min OUTPUT;

PRINT @max;
PRINT @min;
```

**Result:**
- `@max` contains maximum salary in Admin department
- `@min` contains minimum salary in Admin department

---

## Exercise 3: Manager Information

### Task

Create a procedure that outputs the **name of the manager** and **his/her salary** in a given department.

**Given Tables:**
- `emp (eid, ename, age, salary)`
- `dept (did, dname, budget, managerId)`

---

### Solution

```sql
CREATE PROCEDURE getManagerInfo
(
    @did VARCHAR(12),
    @mgrName VARCHAR(50) OUTPUT,
    @mgrSalary FLOAT OUTPUT
)
AS
BEGIN
    SELECT 
        @mgrName = e.ename,
        @mgrSalary = e.salary
    FROM dept d, emp e
    WHERE d.managerId = e.eid
      AND d.did = @did;
END
```

**Calling:**

```sql
DECLARE @name VARCHAR(50), @salary FLOAT;

EXEC getManagerInfo 'Admin', @name OUTPUT, @salary OUTPUT;

PRINT 'Manager: ' + @name;
PRINT 'Salary: ' + CAST(@salary AS VARCHAR);
```

---

## Triggers

### Definition

**Triggers** are useful in enforcing **business rules** and **data integrity**.

They are **more powerful** than general constraints.

---

### Example Use Case

**Business Rule:**
- The employee's salary is always **less than** his/her manager's salary

**Solution:**
- Create a trigger to check this constraint whenever salary is updated

---

## T-SQL: Triggers

### Definition

A **trigger** is a **special type of stored procedure** that **automatically takes effect** when the data in a specified table is modified.

---

### Types of Triggers

A trigger is invoked in response to:

**1. DDL statement**
- CREATE, ALTER, etc.

**2. DML statement**
- INSERT, UPDATE, or DELETE statement

**We will learn DML triggers...**

---

## T-SQL: Trigger Syntax

### Basic Syntax

```sql
CREATE TRIGGER trigger_name
ON { table | view }
{
    { FOR | AFTER | INSTEAD OF }
    { [INSERT] [,] [UPDATE] [,] [DELETE] }
}
AS
BEGIN
    -- sql_statement(s)
END
```

---

### Trigger Types

**1. FOR / AFTER**
- **AFTER** specifies that the DML trigger is fired **only when all operations** specified in the triggering SQL statement have **executed successfully**
- **AFTER** is the default when **FOR** is the only keyword specified
- **AFTER triggers cannot be defined on views**

**2. INSTEAD OF**
- Specifies that the trigger is executed **instead of** the triggering SQL statement
- **Overrides the actions** of the triggering statements
- At most, **one INSTEAD OF** trigger per INSERT, UPDATE, or DELETE statement can be defined on a table or view

---

### Trigger Events

```sql
[DELETE] [,] [INSERT] [,] [UPDATE]
```

Are keywords that specify which **data modification statements**, when attempted against this table or view, **activate the trigger**.

**At least one option must be specified.**

---

## Triggers: INSERTED/DELETED Tables

### Virtual Tables

When a trigger is executed, SQL Server creates **two virtual tables** called **INSERTED** and **DELETED**.

---

### DELETED Table

The **deleted** table stores copies of the affected rows during:
- **DELETE** statements
- **UPDATE** statements (old values)

---

### INSERTED Table

The **inserted** table stores copies of the affected rows during:
- **INSERT** statements
- **UPDATE** statements (new values)

---

### Example Process

**When inserting a record to a table:**

1. SQL Server creates a virtual table called **INSERTED**
2. Loads data into the **inserted** table
3. Executes the **trigger statements**
4. Writes the related **data pages**

---

### Table Structure

**The format** of the inserted and deleted tables is the **same as the format** of the table on which the trigger is defined.

**Each column** in the inserted and deleted tables **maps directly** to a column in the base table.

---

## Triggers: How Do They Work?

### Flow Diagram

```
┌─────────────────────────────────────┐
│ Insert/Update/Delete value x on    │
│ table t                             │
└──────────────┬──────────────────────┘
               │
               │ Insert/delete x to 
               │ inserted/deleted table
               ▼
        ┌──────────────┐
        │  INSERTED /  │
        │   DELETED    │
        │   tables     │
        └──────┬───────┘
               │
               ▼
          ┌────────┐
          │Decision│
          └───┬─┬──┘
              │ │
   ┌──────────┘ └──────────┐
   │                       │
   │ [For Trigger on t]    │ [Instead of Trigger on t]
   │                       │
   ▼                       │
┌────────┐                 │
│ Table  │                 │
└───┬────┘                 │
    │                      │
    │ Insert/delete/       │
    │ update x to t        │
    │                      │
    ▼                      ▼
┌────────────────────────────┐
│ Logic                      │
│ Execute the logic          │
│ specified in the trigger   │
└────────────────────────────┘
```

---

## T-SQL: Triggers - Example 1

### Account Audit Trigger

**Given Tables:**
- `Account (accountNo, custId, branch, balance)`
- `AccountAudit (accountNo, balance, date)`

**Task:** Create a trigger to track all inserts/updates done to the balance field of an Account table at a bank in the AccountAudit table.

---

### Solution

```sql
CREATE TRIGGER account_audit_trigg
ON Account
FOR INSERT, UPDATE
AS
BEGIN
    DECLARE @ano INT;
    DECLARE @balance FLOAT;
    
    SELECT @ano = accountNo, @balance = balance 
    FROM inserted;
    
    INSERT INTO AccountAudit 
    VALUES (@ano, @balance, GETDATE());
END
```

---

### How It Works

**When INSERT or UPDATE occurs on Account table:**

1. New values are stored in **INSERTED** virtual table
2. Trigger extracts `accountNo` and `balance` from **INSERTED**
3. Inserts audit record into **AccountAudit** table with current date

---

## T-SQL: Triggers - Example 2

### Limit Departments per Employee

**Given Tables:**
- `Emp (eid, ename, age, salary)`
- `Works (eid, did, pct_time)`
- `Dept (did, budget, managerId)`

**Task:** Create a trigger to ensure that an employee doesn't work in **more than 2 departments**.

---

### Solution

```sql
CREATE TRIGGER check_dept_count
ON Works
FOR INSERT, UPDATE
AS
BEGIN
    DECLARE @eid INT;
    DECLARE @deptCount INT;
    
    SELECT @eid = eid FROM inserted;
    
    SELECT @deptCount = COUNT(DISTINCT did)
    FROM Works
    WHERE eid = @eid;
    
    IF @deptCount > 2
    BEGIN
        RAISERROR('Employee cannot work in more than 2 departments', 16, 1);
        ROLLBACK TRANSACTION;
    END
END
```

---

## Exercise 4: Withdrawal Limit Trigger

### Task

**Given Table:**
- `Transaction (tid, accountNo, type, amount, date)`
- Type may contain **'credit'** or **'debit'**

**Constraint:**
Assuming that the bank's **maximum withdrawal limit per day is 40000**, write a trigger to ensure that no customer withdraws more than the given limit.

---

### Solution

```sql
CREATE TRIGGER check_withdrawal_limit
ON Transaction
FOR INSERT
AS
BEGIN
    DECLARE @accountNo INT;
    DECLARE @amount FLOAT;
    DECLARE @type VARCHAR(10);
    DECLARE @totalWithdrawal FLOAT;
    
    SELECT 
        @accountNo = accountNo,
        @amount = amount,
        @type = type
    FROM inserted;
    
    IF @type = 'debit'
    BEGIN
        -- Calculate total withdrawals for today
        SELECT @totalWithdrawal = SUM(amount)
        FROM Transaction
        WHERE accountNo = @accountNo
          AND type = 'debit'
          AND CAST(date AS DATE) = CAST(GETDATE() AS DATE);
        
        IF @totalWithdrawal > 40000
        BEGIN
            RAISERROR('Daily withdrawal limit of 40000 exceeded', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END
END
```

---

## Exercise 5: Salary Constraint Trigger

### Task

**Given Tables:**
- `Employee (nic, name, salary, dno)`
- `Dept (dno, dname, mgrNic)`

**Constraint:**
Create a trigger to ensure that **no employee has a salary greater than his/her manager**.

---

### Solution

```sql
CREATE TRIGGER check_salary_constraint
ON Employee
FOR INSERT, UPDATE
AS
BEGIN
    DECLARE @nic VARCHAR(20);
    DECLARE @salary FLOAT;
    DECLARE @dno INT;
    DECLARE @mgrSalary FLOAT;
    
    SELECT 
        @nic = nic,
        @salary = salary,
        @dno = dno
    FROM inserted;
    
    -- Get manager's salary
    SELECT @mgrSalary = e.salary
    FROM Employee e, Dept d
    WHERE d.dno = @dno
      AND d.mgrNic = e.nic;
    
    -- Check if employee salary exceeds manager salary
    IF @salary > @mgrSalary
    BEGIN
        RAISERROR('Employee salary cannot exceed manager salary', 16, 1);
        ROLLBACK TRANSACTION;
    END
END
```

---

## Summary

### Key Concepts Covered

**1. Views**
- Virtual tables derived from base tables
- Security and query simplification
- Limited update capability

**2. T-SQL Extensions**
- Variables (DECLARE, SET)
- Control structures (IF...ELSE)
- Loops (WHILE, BREAK, CONTINUE)

**3. Stored Functions**
- Reusable code that returns a value
- IN parameters only
- Used in SELECT statements

**4. Stored Procedures**
- Reusable code that performs actions
- IN and OUT parameters
- Called with EXEC

**5. Triggers**
- Automatic execution on INSERT, UPDATE, DELETE
- FOR/AFTER vs INSTEAD OF
- INSERTED and DELETED virtual tables
- Enforce complex business rules

---

### Views vs Functions vs Procedures vs Triggers

| **Feature** | **View** | **Function** | **Procedure** | **Trigger** |
|:---|:---|:---|:---|:---|
| **Returns** | Result set | Single value | Nothing (or OUT params) | N/A |
| **Parameters** | No | Yes (IN) | Yes (IN/OUT) | No |
| **Can be called in SELECT** | Yes | Yes | No | No |
| **Automatic execution** | No | No | No | Yes |
| **Can modify data** | Limited | No | Yes | Yes |
| **Use case** | Simplify queries | Calculate values | Complex logic | Enforce constraints |

---

### When to Use What

**Use Views:**
- Simplify complex queries
- Provide security (hide columns/rows)
- Present data from multiple tables

**Use Functions:**
- Calculate and return a single value
- Reusable calculations
- Used in SELECT, WHERE clauses

**Use Procedures:**
- Complex business logic
- Batch operations
- Need to return multiple values

**Use Triggers:**
- Automatically enforce business rules
- Audit changes
- Maintain data integrity
- Cascade operations

---

**End of Lecture 07**
