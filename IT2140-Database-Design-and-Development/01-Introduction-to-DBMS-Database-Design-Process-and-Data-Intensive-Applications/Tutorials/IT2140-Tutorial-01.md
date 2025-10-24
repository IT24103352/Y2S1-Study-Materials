# Tutorial 01 - SQL Queries

**Course:** IT2140 - Database Design and Development  
**Tutorial:** 01  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Faculty:** Faculty of Computing  
**Department:** Information Technology  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student ID:** IT24103352  
**Date:** 2025-10-24  
**Time (UTC):** 06:03:45

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

---

## Questions

### Question 1
Find the first name of employees from India whose last name start with K.

---

### Question 2
Find the names of Rooms with a capacity over 50.

---

### Question 3
Find the IDs of meeting with a duration more than 3 hours.

---

### Question 4
Find the IDs of rooms with a capacity over 50.

---

### Question 5
Display the highest and the lowest capacities among rooms.

---

### Question 6
Find the number of employees from India.

---

### Question 7
Find the number of employees from different countries.

---

### Question 8
Find the country which has more than 20 employees from.

---

### Question 9
Find the number of rooms used for each meeting title.

---

### Question 10
Find all meeting titles that have been held in more than one room, along with the number of rooms for each title.

---

**End of Tutorial 01**
