# Tutorial 05 - Activity Diagrams

**Module:** IT2030 - Software Engineering  
**Department:** Information Technology, Faculty of Computing  
**Institution:** Sri Lanka Institute of Information Technology (SLIIT)  
**Academic Year:** Year 02, Semester 01 (2025)  
**Student:** IT24103352  
**Date:** 2025-10-24  
**Current Time (UTC):** 03:58:23

---

## Activity 01: Ambulance Request Handler (ARH) System

### Scenario

Analyze the scenario given below and answer the subsequent questions.

**Note:** State any assumptions clearly in your answer.

"1990" is an ambulance service initiated by the government of Sri Lanka. People who meet with road accidents, heart and kidney issues and any other emergency can call the number 1990 and request for an ambulance. There will be no call charge for this service. A call center handles all the requests coming through 1990 with a software system called Ambulance Request Handler (ARH). The process of handling such requests is given below.

When a person calls through "1990", a Call Center Agent (CCA) receives the call. The CCA requests the details from the caller and enters the details into the system forms. The details include name, address, phone number and the incident. Once CCA enters these details to the ARH system, the system will send the address details to an external system called Address Locator. The Address Locator will verify the address and the route to the address will be sent back to the ARH system.

Once the Address Locator finds the route details, the ARH system scans the surrounding area and finds all the ambulances close by. For the ambulances found, ARH then checks whether they are available or whether they are already allocated. From the available ambulances, the nearest ambulance is chosen.

If the ARH system could not find an available ambulance within three minutes of the time the route details are received, the incident details will be sent to a private ambulance service. The details of this service will be given to the customer.

After allocating the nearest ambulance, ARH system will process the following tasks concurrently. Send allocation information containing name, address, phone number and the incident to the ambulance driver as a text message. Update the selected ambulance status in the system as allocated. Then ARH system tracks the ambulance using GPS. Tracking the system will be continued till the ambulance reaches the destination. Once the ambulance reaches the destination, the CCA will notify the customer.

---

### Tasks

**i. Write two (02) of the most important non-functional requirements for the ARH system.**

**ii. Justify the reasons for selecting each non-functional requirement stated in part (a).**

**iii. Draw an Activity Diagram for the above scenario. Include all key processes from call reception to ambulance dispatch, private service referral, and arrival notification.**

---

## Activity 02: FindMyJob - Online Job Portal

### Scenario

You are required to create a requirement analysis for "FindMyJob," the most widely used job-search website. Examine the requirements below and answer the following questions.

Undergraduates can register on the well-known online employment portal "FindMyJob" and search for relevant internships, vacancies, and careers. The identity form is the first form that every undergraduate can complete as part of the registration process. Undergraduates must then enter evidence of payment. This can be submitted as a picture of a bank deposit or as an online payment receipt.

The payment proof will be validated by the system; in case it appears invalid, a bank confirmation letter must be submitted. Then the confirmation letter will be verified by the system to proceed with registration. The system will permit undergraduates to proceed with the submission if it is valid only.

To continue, the system saves the registration information. After that, the registration division publishes the candidate profile in their public forum to be visible to recruitment agents. Additionally, to introduce applicants to one another and allow them to compare skills, the system will automatically display candidate profiles in the internal profiles block. It is not required to publish public profile after or before publishing in the internal block.

The system can send an email including an OTP code upon successful confirmation of a profile that has been published on both the public forum and internal block. Undergraduates can then use OTP to request specific employment categories and fields. After that, the registration division sends the profiles to the appropriate agents meanwhile, and the system saves the data in the registration database. After all activities, the system will indicate that the registration process has closed.

---

### Task

Draw an Activity Diagram with swimlanes for the above scenario.

**Include swimlanes for:**
- Student
- System
- Registration Division

**Note:** Clearly indicate alternate flows and decisions.

---

**End of Tutorial 05**
