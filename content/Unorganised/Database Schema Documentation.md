## Inherited Tables
*Tables that are inherited by others to reduce redundancy*.

---
### Auditing
*Common auditing fields inherited by other entities*.

- `id` (primary key, converted to UUID for security in ORM).
- `creation_date`.
- `last_update_date`.

---
### Constant
*Represents a constant value, such as those found in lookup tables that remain relatively static, e.g. titles*.

- Inherit [[#Auditing]].
- `name`.
- `description`.

---
### Person
*Represents a person with personal details and auditing information*.

- Inherit [[#Auditing]].
- `title_id` → `Title.id`.
- `pronouns_id` → `Pronoun.id`.
- `first_names` (includes middle names).
- `last_name`.
- `preferred_name`.
- `gender_id` → `Gender.id`.
- `date_of_birth`.
- `image_link`.

---
## Main Entity Tables
*The main entities within the database, i.e. the entities that will be accessed externally*.

---
### Employee
*Details of employees, including applicants (prospective employees)*.

- Inherit [[#Person]].
- `username`.
- `password` (hashed).
- `permission_level_id` → `PermissionLevel.id`.
- `status_id` → `EmployeeStatus.id`.
- `status_change_date`.
- `role_id` → `Role.id`.
- `job_title_id` → `JobTitle.id`.
- `manager_id` → `Employee.id` (nullable).
- `application_comments`.
- `enquiry_id` → `Enquiry.id` (nullable).

**Relationships**:
- **One-to-many** with **Employee** (manager-employee relationship): An employee (manager) can manage many employees; an employee reports to one manager.
- **One-to-many** with **Absence**: An employee has many absences; an absence is associated with one employee.
- **One-to-many** with **Contract**: An employee can have multiple contracts over time; a contract is associated with one employee.
- **One-to-many** with **Disciplinary**: An employee can have multiple disciplinary records; a disciplinary record is linked to one employee.
- **One-to-many** with **Expense**: An employee can submit many expenses; an expense is submitted by one employee.
- **One-to-many** with **Enquiry**: An employee may handle many enquiries; an enquiry is handled by one employee.
- **Many-to-many** with **Address** via **PersonAddress**: An employee can have multiple addresses; an address can be linked to multiple persons.
- **Many-to-many** with **Vacancy** via **EmployeeVacancy**: An employee (applicant) can apply to multiple vacancies; a vacancy can have multiple applicants.

---
### Vacancy
*Represents job vacancies within the company*.

- Inherit [[#Auditing]].
- `job_description_id` → `JobDescription.id`.
- `starting_date`.
- `closing_date`.
- `status_id` → `VacancyStatus.id`.
- `filled_date` (nullable).
- `successful_candidate_id` → `Employee.id` (nullable).
- `candidate_source_id` → `CandidateSource.id` (e.g., internal referral, job board).

**Relationships**:
- **Many-to-many** with **Employee** via **EmployeeVacancy**: A vacancy can have multiple applicants; an employee can apply to multiple vacancies.
- **Many-to-one** with **JobDescription**: A vacancy has one job description; a job description can be associated with multiple vacancies.

---
### Enquiry
*Records potential employees, clients, or service users*.

- Inherit [[#Auditing]].
- `contact_method_id` → `ContactMethod.id`.
- `enquiry_stage_id` → `EnquiryStage.id`.
- `enquiry_type_id` → `EnquiryType.id`.
- `enquiry_source_id` → `EnquirySource.id`.
- `follow_up_needed` (boolean).
- `notes`.
- `attachment_link`.
- `person_id` → `Person.id` (nullable).

**Relationships**:
- **Many-to-one** with **ContactMethod**: An enquiry uses one contact method; a contact method can be used for many enquiries.
- **Many-to-one** with **Person**: An enquiry is made by one person; a person can make multiple enquiries.

---
### Absence
*Tracks employee absences*.

- Inherit [[#Auditing]].
- `employee_id` → `Employee.id`.
- `absence_type_id` → `AbsenceType.id`.
- `absence_status_id` → `AbsenceStatus.id`.
- `start_date`.
- `start_time` (nullable).
- `end_date`.
- `end_time` (nullable).
- `general_absence_reason_id` → `GeneralAbsenceReason.id`.
- `specific_absence_reason_id` → `SpecificAbsenceReason.id`.
- `authorised_by_id` → `Employee.id` (nullable).
- `decline_reason` (nullable).
- `notes`.

**Relationships**:
- **Many-to-one** with **Employee** (as `employee_id`): An absence is linked to one employee; an employee can have many absences.
- **Many-to-one** with **Employee** (as `authorised_by_id`): An absence may be authorized by one employee; an employee can authorize many absences.

---
### Contract
*Details of employee contracts*.

- Inherit [[#Auditing]].
- `employee_id` → `Employee.id`.
- `signed_date`.
- `start_date`.
- `end_date` (nullable).
- `salary_interval_id` → `SalaryInterval.id`.
- `weekly_hours`.
- `salary_amount`.
- `term_time_only` (boolean).
- `authorised_by_id` → `Employee.id`.
- `notes`.
- `attachment_link`.

**Relationships**:
- **Many-to-one** with **Employee** (as `employee_id`): A contract is associated with one employee; an employee can have multiple contracts.
- **Many-to-one** with **Employee** (as `authorised_by_id`): A contract is authorized by one employee; an employee can authorize multiple contracts.

---
### Disciplinary
*Records disciplinary actions*.

- Inherit [[#Auditing]].
- `employee_id` → `Employee.id`.
- `outcome_id` → `DisciplinaryOutcome.id`.
- `date`.
- `notes`.

**Relationships**:
- **Many-to-one** with **Employee**: A disciplinary action is for one employee; an employee can have multiple disciplinary actions.

---
### Expense
*Tracks employee expenses*.

- Inherit [[#Auditing]].
- `employee_id` → `Employee.id`.
- `amount`.
- `date`.
- `expense_type_id` → `ExpenseType.id`.
- `description`.
- `attachment_link` (i.e., receipt).

**Relationships**:
- **Many-to-one** with **Employee**: An expense is incurred by one employee; an employee can have multiple expenses.

---
### ContactMethod
*Stores contact details for persons*.

- Inherit [[#Auditing]].
- `person_id` → `Person.id`.
- `contact_type_id` → `ContactType.id`.
- `contact_value` (e.g., phone number, email).
- `preferred` (boolean).
- `notes`.

**Relationships**:
- **Many-to-one** with **Person**: A contact method belongs to one person; a person can have multiple contact methods.
- **Many-to-one** with **ContactType**: A contact method has one type; a type can belong to multiple contact methods.

---
### Address
*Stores addresses associated with persons*.

- Inherit [[#Auditing]].
- `address_line1`.
- `address_line2` (nullable).
- `address_line3` (nullable).
- `town`.
- `county_id` → `County.id`.
- `country_id` → `Country.id`.
- `postal_code`.
- `latitude` (nullable).
- `longitude` (nullable).
- `notes`.

**Relationships**:
- **Many-to-one** with **County**: An address is in one county; a county can contain multiple addresses.
- **Many-to-one** with **Country**: An address is in one country; a country can contain multiple addresses.

---
### PersonAddress
*Associative table linking persons to addresses*.

- `person_id` → `Person.id`.
- `address_id` → `Address.id`.
- `address_type_id` → `AddressType.id`.
- `date_from`.
- `date_to` (nullable).
- `is_current` (boolean).

**Relationships**:
- **Many-to-one** with **Person**: A person's address record is for one person; a person can have multiple address records.
- **Many-to-one** with **Address**: A person's address record uses one address; an address can be linked to multiple persons.
- **Many-to-one** with **AddressType**: A person's address record has one address type.

---
### ServiceUser
*Details of service users receiving services*.

- Inherit [[#Person]].
- `status_id` → `ServiceUserStatus.id`.
- `status_change_date`.
- `enquiry_id` → `Enquiry.id` (nullable).

**Relationships**:
- **Many-to-many** with **Address** via **PersonAddress**: A service user can have multiple addresses; an address can be linked to multiple persons.
- **One-to-many** with **ContactMethod**: A service user can have multiple contact methods.
- **One-to-many** with **Appointment**: A service user can have multiple appointments.
- **Many-to-one** with **ServiceUserStatus**: A service user has one status; a status can be linked to multiple service users.

---
### Appointment
*Schedules appointments with service users*.

- Inherit [[#Auditing]].
- `service_user_id` → `ServiceUser.id`.
- `therapist_id` → `Employee.id`.
- `appointment_status_id` → `AppointmentStatus.id`.
- `cancellation_reason_id` → `CancellationReason.id` (nullable).
- `cancelled_by_id` → `CancelledBy.id` (nullable).
- `cancellation_notice_id` → `CancellationNotice.id` (nullable).
- `appointment_date`.
- `scheduled_start_time`.
- `actual_start_time` (nullable).
- `scheduled_end_time`.
- `actual_end_time` (nullable).
- `appointment_type_id` → `AppointmentType.id`.
- `notes`.
- `rating` (nullable).

**Relationships**:
- **Many-to-one** with **ServiceUser**: An appointment is for one service user; a service user can have multiple appointments.
- **Many-to-one** with **Employee** (as `therapist_id`): An appointment is conducted by one therapist; a therapist can have multiple appointments.

---
### Client
*Details of clients (parents or organisations)*.

- Inherit [[#Person]].
- `client_type_id` → `ClientType.id`.
- `active_from`.
- `active_to` (nullable).
- `status_id` → `ClientStatus.id`.
- `status_change_date`.
- `enquiry_id` → `Enquiry.id` (nullable).

**Relationships**:
- **Many-to-many** with **Address** via **PersonAddress**: A client can have multiple addresses; an address can be linked to multiple persons.
- **One-to-many** with **ContactMethod**: A client can have multiple contact methods.

---
## Lookup Tables
*Standard definitions for certain attributes*.

---
### Constants inheriting from [[#Constant]]:

- **Title**
	- Examples: Mr., Mrs., Dr.
- **Pronoun**
	- Fields:
	    - `subject_pronoun` (e.g., he, she, they).
	    - `object_pronoun` (e.g., him, her, them).
	    - `possessive_pronoun` (e.g., his, her, their).
	    - `reflexive_pronoun` (e.g., himself, herself, themselves).
- **Gender**
	- Examples: Male, Female, Non-binary.
- **Country**
	- Fields:
	    - `country_code` (e.g., "US", "GB").
	- Examples: United States, United Kingdom.
- **County**
	- Fields:
	    - `country_id` → `Country.id`.
	- Examples: Kent, Essex.
- **PermissionLevel**
	- Examples: Admin, User, Guest.
- **Role**
	- Examples: Therapist, Manager, Administrator.
- **JobTitle**
	- Examples: Speech Therapist, Senior Therapist.
- **SalaryInterval**
	- Examples: Monthly, Annually.
- **DisciplinaryOutcome**
	- Examples: Verbal Warning, Written Warning, Termination.
- **GeneralAbsenceReason**
	- Examples: Personal Leave, Sick Leave.
- **SpecificAbsenceReason**
	- Fields:
	    - `general_absence_reason_id` → `GeneralAbsenceReason.id`.
	- Examples: Flu (linked to Sick Leave), Family Emergency (linked to Personal Leave).
- **JobDescription**
	- Fields:
	    - `responsibilities`.
	    - `qualifications`.
	    - `salary`.
- **AbsenceStatus**
	- Examples: Pending, Approved, Declined.
- **AbsenceType**
	- Examples: Short-term, Long-term.
- **AddressType**
	- Examples: Home, Work, Billing.
- **ApplicantStatus**
	- Examples: Applied, Interviewed, Hired.
- **AppointmentStatus**
	- Examples: Scheduled, Completed, Cancelled.
- **AppointmentType**
	- Examples: Initial Consultation, Follow-up Session.
- **ClientStatus**
	- Examples: Active, Inactive.
- **ClientType**
  - Examples: Individual, Organisation.
- **EmployeeStatus**
	- Examples: Active, On Leave, Terminated.
- **EnquiryStage**
	- Fields:
	    - `stage_number`.
	- Examples: New, Contacted, Qualified.
- **EnquirySource**
	- Examples: Website, Referral.
- **EnquiryType**
	- Examples: Employment, Service Request.
- **ServiceUserStatus**
	- Examples: Active, Inactive, Discharged.
- **VacancyStatus**
	- Examples: Open, Closed, Filled.
- **ContactType**
	- Examples: Phone, Email, LinkedIn.
- **ExpenseType**
	- Examples: Travel, Accommodation.
- **CandidateSource**
	- Examples: Job Board, Employee Referral.

---
## Associative Tables
*Handles many-to-many relationships*.

---
### EmployeeVacancy

- `employee_id` → `Employee.id`.
- `vacancy_id` → `Vacancy.id`.

**Relationships**:
- **Many-to-one** with **Employee**: A record associates one employee; an employee can have multiple applications.
- **Many-to-one** with **Vacancy**: A record associates one vacancy; a vacancy can have multiple applicants.

---
### PersonAddress

- `person_id` → `Person.id`.
- `address_id` → `Address.id`.
- `address_type_id` → `AddressType.id`.
- `date_from`.
- `date_to` (nullable).
- `is_current` (boolean).

**Relationships**:
- **Many-to-one** with **Person**: Associates to one person; a person can have multiple address records.
- **Many-to-one** with **Address**: Associates to one address; an address can relate to multiple persons.
- **Many-to-one** with **AddressType**: Specifies the type of address (e.g., home, work).