# Hospital Appointment and Patient Care Management System

A web-based Hospital Appointment and Patient Care Management System developed using **PHP, MySQL, HTML, CSS, and JavaScript**. The project is designed to simplify hospital operations by managing patient records, doctor details, appointments, treatments, prescriptions, billing, and reports through a centralized database.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Objectives](#objectives)
3. [Features](#features)
4. [Technologies Used](#technologies-used)
5. [Database Design](#database-design)
6. [Project Structure](#project-structure)
7. [System Requirements](#system-requirements)
8. [Installation and Setup](#installation-and-setup)
9. [Database Configuration](#database-configuration)
10. [Running the Application](#running-the-application)
11. [Application Modules](#application-modules)
12. [Database Concepts Implemented](#database-concepts-implemented)
13. [Testing](#testing)
14. [Limitations](#limitations)
15. [Future Enhancements](#future-enhancements)
16. [Conclusion](#conclusion)

## 1. Project Overview

The Hospital Appointment and Patient Care Management System provides a centralized platform for storing and managing hospital information.

Traditional manual record management can cause data duplication, misplaced records, appointment scheduling conflicts, and delays in retrieving patient information. This project uses a relational database to organize hospital records and provides a web interface for accessing and managing them.

The application has a dashboard and separate modules for patients, doctors, appointments, treatments, prescriptions, billing, and reports.

## 2. Objectives

- Maintain patient information electronically.
- Store doctor details and specializations.
- Schedule and manage hospital appointments.
- Maintain treatment and diagnosis records.
- Manage prescriptions linked to treatments.
- Record patient bills and payment statuses.
- Generate summaries of hospital data.
- Apply DBMS concepts through a practical application.
- Reduce manual paperwork and improve data organization.

## 3. Features

- **Dashboard:** Displays hospital statistics and recent appointments.
- **Patient Management:** Add, view, and delete patient records.
- **Doctor Management:** Add, view, and delete doctor records.
- **Appointment Management:** Schedule appointments and associate patients with doctors.
- **Treatment Management:** Store diagnoses, treatment dates, notes, patients, and doctors.
- **Prescription Management:** Store medicine names, dosages, durations, and related treatments.
- **Billing Management:** Record bills, amounts, payment statuses, and associated patients.
- **Reports Dashboard:** Displays counts of patients, doctors, appointments, treatments, prescriptions, and total recorded bill amounts.
- **Relational Database:** Uses primary keys and foreign keys to connect related records.
- **No Authentication:** The current version uses a basic frontend without a login system.

## 4. Technologies Used

| Technology         | Purpose                                                |
| ------------------ | ------------------------------------------------------ |
| HTML5              | Structures web pages and forms                         |
| CSS3               | Provides styling and dashboard layout                  |
| JavaScript         | Supports client-side interactions where implemented    |
| PHP                | Handles server-side processing and database operations |
| MySQL              | Stores hospital data                                   |
| MySQLi             | Connects PHP to MySQL                                  |
| Apache             | Serves the PHP application locally                     |
| XAMPP              | Provides the Apache web server                         |
| Visual Studio Code | Used for editing project files                         |

## 5. Database Design

**Database name:** `hospitaldb`

The database contains six main entities.

### 5.1 PATIENT

Stores patient details.

| Attribute       | Description               |
| --------------- | ------------------------- |
| Patient_ID (PK) | Unique patient identifier |
| Patient_Name    | Patient's name            |
| Gender          | Patient's gender          |
| Date_of_Birth   | Date of birth             |
| Phone           | Contact number            |
| Address         | Residential address       |
| Blood_Group     | Patient's blood group     |

### 5.2 DOCTOR

Stores doctor information.

| Attribute      | Description              |
| -------------- | ------------------------ |
| Doctor_ID (PK) | Unique doctor identifier |
| Doctor_Name    | Doctor's name            |
| Specialization | Medical specialization   |
| Phone          | Contact number           |
| Email          | Email address            |
| Experience     | Years of experience      |

### 5.3 APPOINTMENT

Stores appointment details.

| Attribute           | Description                   |
| ------------------- | ----------------------------- |
| Appointment_ID (PK) | Unique appointment identifier |
| Appointment_Date    | Appointment date              |
| Appointment_Time    | Appointment time              |
| Status              | Appointment status            |
| Patient_ID (FK)     | References PATIENT            |
| Doctor_ID (FK)      | References DOCTOR             |

### 5.4 TREATMENT

Stores treatment and diagnosis information.

| Attribute         | Description                 |
| ----------------- | --------------------------- |
| Treatment_ID (PK) | Unique treatment identifier |
| Diagnosis         | Diagnosis details           |
| Treatment_Date    | Date of treatment           |
| Notes             | Additional treatment notes  |
| Patient_ID (FK)   | References PATIENT          |
| Doctor_ID (FK)    | References DOCTOR           |

### 5.5 PRESCRIPTION

Stores prescription information.

| Attribute            | Description                    |
| -------------------- | ------------------------------ |
| Prescription_ID (PK) | Unique prescription identifier |
| Medicine_Name        | Prescribed medicine            |
| Dosage               | Medicine dosage                |
| Duration             | Prescribed duration            |
| Treatment_ID (FK)    | References TREATMENT           |

### 5.6 BILL

Stores patient billing information.

| Attribute       | Description            |
| --------------- | ---------------------- |
| Bill_ID (PK)    | Unique bill identifier |
| Bill_Date       | Date of the bill       |
| Amount          | Bill amount            |
| Payment_Status  | Payment status         |
| Patient_ID (FK) | References PATIENT     |

### Relationships

- One patient can have multiple appointments.
- One doctor can have multiple appointments.
- One patient can have multiple treatment records.
- One doctor can record multiple treatments.
- One treatment can have multiple prescriptions.
- One patient can have multiple bills.

**PK** means Primary Key. **FK** means Foreign Key.

## 6. Project Structure

The main project files are organized as follows:

```text
HospitalManagment/
│
├── index.php
├── dashboard.php
├── patients.php
├── doctors.php
├── appointments.php
├── treatments.php
├── prescriptions.php
├── billing.php
├── reports.php
├── test_connection.php
│
├── db/
│   └── connection.php
│
├── css/
│   └── style.css
│
└── README.md
```

This structure represents the expected main files. Additional files, folders, or SQL scripts may exist in your local project.

## 7. System Requirements

### Hardware Requirements

- Computer or laptop
- Minimum 4 GB RAM recommended
- Sufficient disk space for the project and database

### Software Requirements

- Windows operating system
- XAMPP with Apache and PHP
- External MySQL Server
- Web browser such as Chrome or Microsoft Edge
- Visual Studio Code or another code editor

**Important:** This project uses an external MySQL server rather than requiring XAMPP's MySQL server. The external MySQL service should remain available on port `3306`.

## 8. Installation and Setup

### Step 1: Install and configure the required software

Install XAMPP, MySQL Server, and a code editor if they are not already installed.

### Step 2: Place the project in the Apache directory

The project must be accessible from the Apache document root.

Expected location:

```text
C:\xampp\htdocs\HospitalManagment
```

If your working copy is in another directory, ensure the files are copied to or otherwise served from the appropriate Apache document root.

### Step 3: Start Apache

1. Open XAMPP Control Panel.
2. Find Apache.
3. Click **Start**.
4. Confirm that Apache is running.

Do not start XAMPP's MySQL module if it conflicts with your external MySQL server.

### Step 4: Check the external MySQL server

Open PowerShell and execute:

```powershell
netstat -ano | findstr 3306
```

If the output contains `LISTENING`, a process is listening on port `3306`.

This confirms that a service is listening on that port, but does not by itself prove that the database credentials or database connection are correct.

### Step 5: Open the project

Open the project folder in Visual Studio Code and verify that the PHP files, `db` folder, and `css` folder are present.

## 9. Database Configuration

Open:

```text
db/connection.php
```

The connection should use the actual MySQL credentials and database name configured on your computer.

Example:

```php
<?php

$host = "localhost";
$username = "root";
$password = "YOUR_MYSQL_PASSWORD";
$database = "hospitaldb";
$port = 3306;

$conn = mysqli_connect(
    $host,
    $username,
    $password,
    $database,
    $port
);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}

?>
```

Replace `YOUR_MYSQL_PASSWORD` with your actual MySQL root password. Do not commit real database passwords to a public GitHub repository.

**Database prerequisite:** The `hospitaldb` database and all six tables must already exist. If they do not exist, run your database creation SQL script using a MySQL client before starting the application.

## 10. Running the Application

### Step 1: Start Apache

Open XAMPP Control Panel and start Apache.

### Step 2: Verify the database connection

Open the following URL in your browser:

```text
http://localhost/HospitalManagment/test_connection.php
```

If your test file is configured correctly, a successful connection should display a message such as:

```text
Connected Successfully
```

### Step 3: Open the dashboard

Visit:

```text
http://localhost/HospitalManagment/index.php
```

The main dashboard should appear.

### Step 4: Open the application modules

| Module        | URL                                                    |
| ------------- | ------------------------------------------------------ |
| Dashboard     | `http://localhost/HospitalManagment/index.php`         |
| Patients      | `http://localhost/HospitalManagment/patients.php`      |
| Doctors       | `http://localhost/HospitalManagment/doctors.php`       |
| Appointments  | `http://localhost/HospitalManagment/appointments.php`  |
| Treatments    | `http://localhost/HospitalManagment/treatments.php`    |
| Prescriptions | `http://localhost/HospitalManagment/prescriptions.php` |
| Billing       | `http://localhost/HospitalManagment/billing.php`       |
| Reports       | `http://localhost/HospitalManagment/reports.php`       |

The `dashboard.php` file may also exist as a separate page. The main dashboard for this project is currently accessed through `index.php`.

## 11. Application Modules

### Dashboard

Displays summary cards for patients, doctors, appointments, and revenue, along with recent appointments and quick-access links.

### Patient Management

Allows hospital staff to enter patient details and view stored patient records.

### Doctor Management

Stores doctor information, including specialization, phone number, email, and experience.

### Appointment Management

Connects patients and doctors through appointment records and displays appointment dates, times, and statuses.

### Treatment Management

Stores diagnoses and treatment notes associated with patients and doctors.

### Prescription Management

Maintains medicine, dosage, and duration details linked to treatment records.

### Billing Management

Stores bill dates, amounts, payment statuses, and patient associations.

### Reports

Displays database summaries, including total records in each major entity and the sum of recorded bill amounts.

## 12. Database Concepts Implemented

The project is intended to demonstrate the following DBMS concepts:

- Database creation and table definition
- Primary key and foreign key constraints
- Data insertion, retrieval, and deletion
- Relational joins
- Views
- Stored procedures
- Triggers
- Aggregate functions and reports
- Entity Relationship modeling
- Relational schema design
- Normalization

The SQL features listed above should be included in your submitted SQL scripts and verified against the actual database before claiming that each one is fully implemented.

## 13. Testing

Use the following test cases to check the application.

| Test ID | Test Case                      | Expected Result                                                |
| ------- | ------------------------------ | -------------------------------------------------------------- |
| TC-01   | Open the dashboard             | Dashboard loads successfully                                   |
| TC-02   | Add a patient                  | Patient record is saved                                        |
| TC-03   | Add a doctor                   | Doctor record is saved                                         |
| TC-04   | Create an appointment          | Appointment is stored with valid patient and doctor references |
| TC-05   | Add a treatment                | Treatment record is saved                                      |
| TC-06   | Add a prescription             | Prescription is linked to a valid treatment                    |
| TC-07   | Add a bill                     | Bill is linked to a valid patient                              |
| TC-08   | Open reports                   | Database totals are displayed                                  |
| TC-09   | Delete a record                | Record is deleted if database constraints permit               |
| TC-10   | Stop MySQL and test connection | The application reports a database connection error            |

Run each test and record the actual result. The expected results above are not a claim that all tests have already passed.

## 14. Limitations

- The current application does not have a login or authentication system.
- Access permissions and user roles are not implemented.
- Online payments are not included.
- Automatic appointment conflict prevention may not be implemented.
- The available editing functionality depends on the current PHP code.
- Database backups and audit logging are not included by default.
- The application is a student project and should not be used to store real patient data without appropriate security, privacy, and operational safeguards.

## 15. Future Enhancements

Possible improvements include:

- Add edit and update functionality to all modules.
- Implement search, sorting, and filtering.
- Prevent duplicate appointments and scheduling conflicts.
- Add PDF and Excel report exports.
- Add dashboard charts and date-based reports.
- Improve input validation and error handling.
- Add automated database backups.
- Add authentication and role-based access control if required.
- Implement audit logs and stronger protection for sensitive medical information.
- Improve mobile responsiveness and accessibility.

## 16. Conclusion

The Hospital Appointment and Patient Care Management System demonstrates how a relational database and web application can be used to organize hospital information. It provides modules for patient management, doctor management, appointment scheduling, treatment records, prescriptions, billing, and reporting.

The project applies database design concepts, including primary keys, foreign keys, relational joins, and normalization, and provides a foundation for future enhancements. By centralizing hospital records, the system aims to improve data organization, reduce manual work, and make information easier to retrieve.

## Author

**Project Title:** Design and Implementation of a Database Management System for Hospital Appointment and Patient Care Management System

**Student:** Varun Reddy

**Course:** B.Tech

## License

This project was developed for academic and educational purposes. Add a specific open-source license if you intend to distribute the code publicly.
