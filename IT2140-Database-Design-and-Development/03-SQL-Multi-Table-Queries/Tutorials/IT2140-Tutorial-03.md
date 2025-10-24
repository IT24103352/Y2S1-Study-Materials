# Tutorial 03 - SQL Multi-Table Queries (Joins)

**Course:** IT2140 - Database Design and Development  
**Tutorial:** 03  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Department:** Information Technology  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Time (UTC):** 06:08:40

---

## Learning Outcomes

- Identify data required to answer a given query
- Determine the SQL operators to be used to write a query to satisfy a user requirement
- Write SQL statements to cater a given user requirement

---

## Database Schema

Consider the following schema and write SQL statements for the following questions.

```
Employees (EmployeeID, FirstName, LastName, Place, Country, PhoneNo)
Rooms (RoomID, RoomName, Capacity)
Meetings (MeetingID, TimeFrom, TimeTo, RoomID, MeetingTitle, MeetingDate)
Employees_Meetings (EmployeeID, MeetingID)
```

### Schema Diagram

```
Employees(EmployeeID, FirstName, LastName, Place, Country, PhoneNo)
                │
                │
                ▼
EmployeesMeetings(EmployeeID, MeetingID)
                │
                │
                ▼
Meetings(MeetingID, TimeFrom, TimeTo, RoomID, MeetingTitle, MeetingDate)
                │
                │
                ▼
Rooms(RoomID, RoomName, Capacity)
```

**Relationships:**
- `Meetings.RoomID` → `Rooms.RoomID`
- `EmployeesMeetings.MeetingID` → `Meetings.MeetingID`
- `EmployeesMeetings.EmployeeID` → `Employees.EmployeeID`

---

## Questions

### Question 1
Find the titles and IDs of meetings held in meeting rooms with a capacity over 50.

---

### Question 2
Find the first name and last name of employees who participated in Appraisal meeting on 18th August 2016.

---

### Question 3
For each employee find the titles of the meetings he/she had attended.

---

### Question 4
For each type of meetings, display the total number of employees who had participated.

(Note that there can be several meetings with the same title)

---

### Question 5
Find the number of meetings held in each room in august 2016. Display the room Name and number of meetings.

---

### Question 6
Find the meetings which are attended by more than 5 employees.

---

**End of Tutorial 03**
