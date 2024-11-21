Note: clients are parents or organisations, service users are those in receipt of services provided.

Note: not normalised yet.

Note: no archiving.

Note: things that are ==highlighted== are things require attention, like separation, adding, etc. Some are okay, though - just think about it.

Note: if possible, make sure if something is repeated then it's inherited, even if it's only repeated twice. Like maybe inherit a 

## Inherited Tables
*Tables which can be inherited by other tables for commonly used attributes.*

### 1. Auditing
*Allow each table to have accurate auditing information, like creation and last update dates. Also ensures everything has a unique ID*.

- `id`. (this will become a UUID in the ORM for security)
- `creation_date`.
- `last_update_date`.

### 2. Person
*Represent a person with contact details and auditing information, like creation and last update dates. Also ensures everything has a unique ID*.

- inherit [[#1. Auditing|Auditing]],
- `title_id`->`Title.id`,
- `pronouns_id`->`Pronouns.id`,
- `first_names`, (==incl. middle names==)
- `last_name`,
- `preferred_name`,
- `gender_id`->`Gender.id`,

---

## Main Entity Tables
*Represent core data elements, like employee, client, and appointment information*.

- Employee: (includes possible employees, i.e. applicants)
	- inherit [[#2. Person|Person]],
	- `username`,
	- `password`, (should be hashed)
	- `permission_level_id`->`PermissionLevel.id`,
	- `date_of_birth`,
	- `status_id`->`EmployeeStatus.id`,
	- `role_id`->`Role.id`,
	- `job_title_id`->`JobTitle.id`,
	- `manager_id`->`Employee.id`,
	- `image_link`,
	- `status_change_date`,
	- ==`enquiry_id`->`Enquiry.id`==,
	- `contact_id`->`Contact.id`,
	- `application_comments`,
	- Relationships:
		- **One-to-many** with **Employee** (manager-employee relationship).
		- ==**One-to-many** with **Absence**==.
		- ==**One-to-many** with **Contract**==.
		- **One-to-many** with **Contact**.
		- ==**One-to-many** with **Disciplinary**==.
		- **One-to-many** with **Enquiry**.
		- ==Expenses?==
		- **Many-to-many** with **Address** via **EmployeeAddress**.
		- **Many-to-many** with **Vacancy** via **EmployeeVacancy**.
- Vacancy:
	- inherit [[#1. Auditing|Auditing]],
	- `job_description_id`->`JobDescription.id`,
	- `starting_date`,
	- `closing_date`,
	- `status_id`->`VacancyStatus.id`,
	- `filled_date`,
	- `successful_candidate_id`->`Employee.id`,
	- ==`candidate_source`->`ProspectSource.id`==,
	- Relationships:
		- **Many-to-many** with **Employee** via **Employee Vacancy**.
		- **One-to-many** with **JobDescription**.
- ==Enquiry: (potential employees, clients, or service users)==
	- inherit [[#1. Auditing|Auditing]],
	- `contact_id`->`Contact.id`,
	- `enquiry_stage_id`->`EnquiryStage.id`,
	- `enquiry_type_id`->`EnquiryType.id`,
	- `enquiry_source_id`->`EnquirySource.id`,
	- `follow_up_needed`,
	- `notes`,
	- `attachment_link`.
	- Relationships:
		- ==...==
- ==Absence: (incl. cancellations, employee illness, etc.)==
	- inherit [[#1. Auditing|Auditing]],
	- ==`employee_id`->`Employee.id`==,
	- `absence_type_id`->`AbsenceType.id`,
	- `absence_status`->`AbsenceStatus.id`,
	- `start_date`,
	- `start_time`,
	- `end_date`,
	- `end_time`,
	- `general_absence_reason`->`GeneralAbsenceReason.id`,
	- `specific_absence_reason`->`SpecificAbsenceReason.id`,
	- `authorised_by_id`->`Employee.id`,
	- `decline_reason`,
	- `notes`.
	- Relationships:
		- **One-to-one** with **Employee**.
		- ...
- Contract:
	- inherit [[#1. Auditing|Auditing]],
	- `employee_id`->`Employee.id`,
	- `signed_date`,
	- `start_date`,
	- `end_date`,
	- `salary_interval_id`->`SalaryInterval.id`,
	- `weekly_hours`,
	- `salary_amount`,
	- `term_time_only`,
	- `authorised_by_id`->`Employee.id`,
	- `notes`,
	- `attachment_link`,
	- Relationships:
		- **One-to-one** with **Employee**.
		- ...
- Disciplinary:
	- inherit [[#1. Auditing|Auditing]],
	- `employee_id`->`Employee.id`,
	- `outcome_id`->`DisciplinaryOutcome.id`,
	- `date`,
	- `notes`,
	- Relationships:
		- ...
- Contact:
	- inherit [[#1. Auditing|Auditing]],
	- `phone_number`,
	- `email_address`,
	- `website_link`, (==incl. linkedin==)
	- `preferred_method`,
	- `notes`,
	- `employee_id`->`Employee.id`,
	- `service_user_id`->`ServiceUser.id`,
	- `client_id`->`Client.id`,
	- Relationships:
		- **One-to-Many** with **Employee**.
		- **One-to-Many** with **Client**.
		- **One-to-Many** with **Service User**.
		- ==Should have addresses==??
- Address:
	- inherit [[#1. Auditing|Auditing]],
	- `address_type_id`->`AddressType.id`,
	- `date_from`,
	- ==`date_to`, (if NULL then current? Or separate attribute?)==
	- ==`address` (concatenated three lines? Or separate?)==
	- ==`town` (link to a town thing?)==
	- `county_id`->`County.id`,
	- `country_id`->`Country.id`,
	- `post_code`,
	- `latitude_longitude`,
	- `notes`,
	- Relationships:
		- **Many-to-Many** with **Employee** via **EmployeeAddress**.
		- **Many-to-Many** with **Client** via **ClientAddress**.
		- **Many-to-Many** with **ServiceUser** via **ServiceUserAddress**.
- ServiceUser:
	- inherit [[#2. Person|Person]],
	- `date_of_birth`,
	- `status_id`->`ServiceUserStatus.id`,
	- `status_change_date`,
	- `image_link`,
	- ==`enquiry_id`->`Enquiry.id`==,
	- Relationships:
		- **Many-to-Many** with **Address** via **ServiceUserAddress**.
		- **One-to-Many** with **Contact**.
		- **One-to-Many** with **Appointment**.
- Appointment:
	- inherit [[#1. Auditing|Auditing]],
	- `service_user_id`->`ServiceUser.id`,
	- `therapist_id`->`Employee.id`,
	- `appointment_status_id`->`AppointmentStatus.id`,
	- `cancellation_reason_id`->`CancellationReason.id`,
	- `cancelled_by_id`->`CancelledBy.id`,
	- `cancellation_notice_id`->`CancellationNotice.id`,
	- `appointment_date`,
	- `scheduled_start_time`,
	- `actual_start_time`,
	- `scheduled_end_time`,
	- `actual_end_time`,
	- `appointment_type_id`->`AppointmentType.id`,
	- `notes`, (break this down into relevant sections, maybe another table)
	- `rating`,
	- Relationships:
		- ...
- Client
	- inherit [[#2. Person|Person]],
	- `client_type_id`->`ClientType.id`,
	- `active_from`,
	- `active_to`,
	- `status_id`->`ClientStatus.id`,
	- `status_change_date`,
	- Relationships:
		- **Many-to-Many** with **Address** via **ClientAddress**.
		- **One-to-Many** with **Contact**.

---

## Lookup Tables
*Provide standard definitions for certain attributes*.

- Gender: inherit [[#1. Auditing|Auditing]], `gender_name`.
- Title: inherit [[#1. Auditing|Auditing]], `title_name`.
- Pronoun: inherit [[#1. Auditing|Auditing]], `subject_pronoun`, `object_pronoun`, `possessive_pronoun`, `reflexive_pronoun`.
- Country: inherit [[#1. Auditing|Auditing]], `country_name`, `country_code`.
- County: inherit [[#1. Auditing|Auditing]], `county_name`, `country_id`->`Country.id`.

- PermissionLevel: inherit [[#2. DescribedConstant|DescribedConstant]], `level_name`.
- Role: inherit [[#2. DescribedConstant|DescribedConstant]], `role_name`.
- JobTitle: inherit [[#2. DescribedConstant|DescribedConstant]], `job_title_name`.
- SalaryInterval: inherit [[#2. DescribedConstant|DescribedConstant]], `interval_name`.
- DisciplinaryOutcome: inherit [[#2. DescribedConstant|DescribedConstant]].
- GeneralAbsenceReason: inherit [[#2. DescribedConstant|DescribedConstant]].
- SpecificAbsenceReason: inherit [[#2. DescribedConstant|DescribedConstant]], `general_absence_reason_id` -> `GeneralAbsenceReason.id`.
- JobDescription: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]], `responsibilities`, `qualifications`, `salary`.

- AbsenceStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- AbsenceType: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- AddressType: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- ApplicantStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- AppointmentStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- AppointmentType: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- ClientStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- ClientType: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- EmployeeStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- EnquiryStage: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]], `stage_number`.
- EnquirySource: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- EnquiryType: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- ServiceUserStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].
- VacancyStatus: inherit [[#3. NamedDescribedConstant|NamedDescribedConstant]].

## Associative Tables
*Handle many-to-many relationships between entities*.

- EmployeeAddress: `employee_id`->`Employee.id`, `address_id`->`Address.id`.
- ClientAddress: `client_id`->`Client.id`, `address_id`->`Address.id`.
- ServiceUserAddress: `service_user_id`->`ServiceUser.id`, `address_id`->`Address.id`.
- EmployeeVacancy: `employee_id`->`Employee.id`, `vacancy_id`->`Vacancy.id`.

---

### Meeting Notes and Business Requirements

- **Appointments Management**: Handling appointment scheduling, cancellations, notifications, and tracking attendance.
- **Financial Operations**: Managing invoices, payments, expenses, and generating financial reports.
- **Employee Management**: Tracking employee absences, contracts, disciplinary actions, and performance metrics.
- **Client and Service User Data**: Maintaining detailed records for clients and service users, including contact information and service history.
- **Data Analysis**: Providing predictive analytics and reports for operational improvements and strategic decision-making.

### Business Processes

- **Late Cancellation Automation**: Implementing rules for handling late cancellations and tracking strikes per quarter.
- **Notification Flexibility**: Allowing **customisable** notification methods (e.g., text, email).
- **Phased Implementation**: Rolling out the system in phases—prototype, implementation, and migration.
- **Expense Management**: Integrating expense systems and accounting software for streamlined financial operations.
- **Performance Tracking**: Monitoring key performance indicators (KPIs) such as appointment completion rates, employee profitability, and client engagement.