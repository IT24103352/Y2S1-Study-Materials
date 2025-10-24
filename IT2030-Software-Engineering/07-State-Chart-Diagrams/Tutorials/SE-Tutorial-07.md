# Tutorial 07 - State Chart Diagrams

**Module:** IT2030 - Software Engineering  
**Department:** Information Technology, Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 04:00:42

---

## Activity 01: Bug Tracking System - User Account

### Scenario

Read the following scenario and draw a state machine diagram.

A company has a bug tracking system. This system has a User Account class, which represents a user in the system. Once the System Administrator creates a user, a User Account object will be created with a pending state. The User Account object will be active only when the System Manager approves the user. If the System Manager rejects the user, the User Account will be in inactive. The System Manager can call Activate User and Deactivate User to move the User Account object to active or inactive. The system administrator will periodically call Delete User function to delete the User Account objects, which are inactive.

---

### Task

Draw a state machine diagram for the User Account lifecycle.

---

## Activity 02: Electric Iron State Machine

### Scenario

Read the following scenario and draw a state machine diagram.

When Electric iron turned on it goes to the LowHeat state where it sets its max temperature to 180 Celsius. Also it turns on the indicator light in yellow color. While in the state it increases its heat up to 180 Celsius. While in the LowHeat state, it can move to MediumHeat state if press the medium heat switch.

When enters to the Medium Heat state, it sets its max temperature to 200 Celsius and set indicator light to green. While in the MediumHest state the heat goes up to 200 Celsius gradually. When it exits the MediumHeat state, it changes the indicator light color back to yellow.

While in the MediumHeat state and if we press the high heat switch, the iron object moves to HighHeat state which sets the max temperature as 240 Celsius and set the indicator light color to red. When it exits the HighHeat state, it changes the indicator light color back to yellow.

While in the LowHeat, Medium Heat or HighHeat states, the iron object can be turned off by removing the voltage supply. Irrespective of the state, whenever it identified a voltage leakage, the iron object moves to Safe state after 1 minute. Safe state has its own sub states SelfCheck and Recovery respectively. While in the Safe state, the iron object can be moved to Off state if power supply removed. Also it can move to LowHeat state when recovered.

---

### Task

Draw a state machine diagram for the Electric Iron, including composite states.

---

**End of Tutorial 07**
