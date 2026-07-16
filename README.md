RAP Managed scenario

The company "Global Logistics Corp" needs a system to track their vehicle fleet and the maintenance work performed on each vehicle. 
You are tasked with building a RAP-based application that manages a Vehicle (Header) and its Maintenance Logs (Items).

1. Data Schema
You need to create two database tables:

Table A: ZFLT_VEHICLE (Header)
VehicleUUID (Key)
VIN (Vehicle Identification Number)
ModelName (e.g., 'Volvo FH16')
LastServiceDate (Date)
TotalCost (Currency/Amount)

Table B: ZFLT_MAINT_LOG (Item)
LogUUID (Key)
VehicleUUID (Parent Key)
MaintDate (Date of service)
MaintType (Type of service)
Cost (Currency/Amount)
Status (e.g., 'New', 'In Progress', 'Completed')

2. Business Requirements (The Challenge)

Task 1: Value Help (UX)
The field MaintType in the Maintenance Log must not be a simple text input.
Requirement: Create a Value Help (F4) that provides a fixed list of options: Oil Change, Tire Rotation, Engine Check, Brake Inspection.

Task 2: Validation (Data Integrity)
We must ensure data quality during the "Save" sequence.
Requirement: Create a validation named validateServiceDate.
Logic: If a user enters a MaintDate that is in the future (greater than today's date), the system must block the save, highlight the field in red, 
       and display an error message: "Service date cannot be in the future."

Task 3: Determination (Automation)
The Header table contains a field LastServiceDate which should always reflect the most recent service performed.
Requirement: Create a determination named calculateLastService.
Logic: Whenever a Maintenance Log is created or its date is updated, the system should automatically find the latest MaintDate 
       among all logs for that vehicle and update the LastServiceDate field in the Vehicle Header.

3. Technical Constraints
Use the Managed RAP implementation.
The LastServiceDate and TotalCost in the Header should be set to readonly in the UI (since they are calculated by the system).
Ensure the association between Vehicle and Maintenance Log is properly defined (Composition).


procedures

creation of domain for each data element
creation of data element
creation of 3 table vehicle,maintlog , maint type
creation of class with internal tables to enter the values
creation of 3 cds with composition and association of 3 tables root vehicle, maintlog, maint type
creation of 2 projection view with projection  of 2 tables root vehicle, maintlog
creation of 1 behaviour definition and do validation in that on behaviour definition name ctrl + 1 to do (1) implementation in class and activate it.
creation of 2 metadata extension for the root vehicle and maint log from projection view as reference for UI creation.
creation of 1 service definition for the root vehicle from projection view as reference in that expose both ZC_ of vehicle and maint log with alise.
creation of 1 service binding with service definition of root vehicle and activate.
then finally fioir app created with master table vehicle with logs linked of each vehicle data 
