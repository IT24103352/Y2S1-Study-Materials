# Tutorial 06 - Sequence Diagrams

**Module:** IT2030 - Software Engineering  
**Department:** Information Technology, Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:59:35

---

## Activity 01: Ordering Food

### Use Case Scenario

Answer the questions based on the following "Ordering Food" use case scenario.

**Note:** You may use suitable boundary, control, and entity classes.

---

### Use Case Name: Ordering Food

| | |
|:---|:---|
| **Actor:** | Customer |
| **Main Flow of Events:** | |
| | 1. The customer enters his/her username and password into the LoginUI to log into the system. |
| | 2. The system validates the customer's credentials. |
| | 3. If the login is successful, the system displays a success message. |
| | 4. A customer can order multiple dishes. |
| | 5. For each dish, the customer navigates to the MenuUI, where the system displays the restaurant's menu options. |
| | 6. The customer selects the desired dishes from the menu and submits the order to the system with dish_ID. |
| | 7. The system checks the availability of the selected dishes in dishes_DB and displays the availability of the dish to the customer. |
| | 8. If the dish is available, the customer confirms the order. |
| | 9. Then the system place the order via order_DB which notifies the kitchen to start preparing the order. |
| | 10. Simultaneously the system generates the invoice and display to the customer. |
| **Extension:** | |
| | 3a. If the login is unsuccessful, the system prompts the customer to reenter their login details. |

---

### Tasks

**(a) Draw a sequence diagram to represent step 1 to 3.**

**(b) Draw another sequence diagram to represent the whole scenario by referencing the sequence diagram in part (a).**

---

## Activity 02: National Health Services Derry (NHS-D)

### Background

The National Health Services Derry (NHS-D) stands as a cornerstone of healthcare in Londonderry, Northern Ireland dedicated to delivering swift, compassionate, and dependable medical care to the community. Renowned for its commitment to excellence, NHS-D serves as a trusted lifeline for individuals and families, ensuring that every patient receives the timely and reliable support they deserve.

Analyze the partial requirements of the National Health Services Derry (NHS-D) given below and draw a sequence diagram.

---

### Note

- You may use suitable boundary, control, and entity classes.
- Processes for patient registration and login have already been implemented for you and are available under the modules titled "Register-NHS" and "Login-NHS".

---

### System Requirements

Patients can easily register by providing essential personal details, including their full name, age, home address, contact number, and date of birth. Upon successful registration, each patient is assigned a unique NHS Identification Number. This identification number can be verified through the contact number provided during registration, ensuring both security and accurate identification within the system.

Once logged into the system, patients gain access to a user-friendly interface "ReserveUI" that allows them to search for medical consultants based on specific specializations. These specializations may include areas such as pediatrics, orthopedic surgery, chest medicine, and many others. After entering their desired specialization, the system will access "ResInfo" and display a list of available consultants along with their corresponding doctor codes. This feature helps patients quickly identify and connect with the appropriate healthcare professionals for their medical needs.

To book an appointment with a doctor, the patient must enter the doctor's code and check availability for the preferred date and time. The system will check "DocInfor" and get the doctor's availability and compare it with the patient's requested time slot. If the doctor is available, the patient will receive the availability status. Then they can confirm the appointment and proceed to the payment process. Then the system will get the payment confirmation from Payment Gateway. Once the payment is successful and completed, the system will generate an e-receipt for the patient and send it to the patient. If the doctor is unavailable at the selected date and time, the system will notify the patient of the unavailability and request alternative time slots.

Patients have the flexibility to book appointments with multiple doctors based on their individual healthcare needs and preferences. Whether consulting specialists across different fields or scheduling follow-up visits, the system supports booking with more than one doctor as required.

---

### Task

Draw a sequence diagram for the NHS-D appointment booking system.

---

**End of Tutorial 06**
