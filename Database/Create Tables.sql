CREATE TABLE PATIENT (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Gender VARCHAR(10),
    Date_of_Birth DATE,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Blood_Group VARCHAR(5)
);

CREATE TABLE DOCTOR (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(50) NOT NULL,
    Specialization VARCHAR(50),
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(50) UNIQUE,
    Experience INT CHECK (Experience >= 0)
);

CREATE TABLE APPOINTMENT (
    Appointment_ID INT PRIMARY KEY,
    Appointment_Date DATE NOT NULL,
    Appointment_Time TIME NOT NULL,
    Status VARCHAR(20) DEFAULT 'Scheduled',

    Patient_ID INT,
    Doctor_ID INT,

    FOREIGN KEY (Patient_ID)
    REFERENCES PATIENT(Patient_ID),

    FOREIGN KEY (Doctor_ID)
    REFERENCES DOCTOR(Doctor_ID)
);

CREATE TABLE TREATMENT (
    Treatment_ID INT PRIMARY KEY,
    Diagnosis VARCHAR(100),
    Treatment_Date DATE,
    Notes VARCHAR(200),

    Patient_ID INT,
    Doctor_ID INT,

    FOREIGN KEY (Patient_ID)
    REFERENCES PATIENT(Patient_ID),

    FOREIGN KEY (Doctor_ID)
    REFERENCES DOCTOR(Doctor_ID)
);

CREATE TABLE PRESCRIPTION (
    Prescription_ID INT PRIMARY KEY,
    Medicine_Name VARCHAR(50),
    Dosage VARCHAR(50),
    Duration VARCHAR(50),
    Treatment_ID INT,
    FOREIGN KEY (Treatment_ID) REFERENCES TREATMENT(Treatment_ID)
);

CREATE TABLE BILL (
    Bill_ID INT PRIMARY KEY,
    Bill_Date DATE,
    Amount DECIMAL(10,2),
    Payment_Status VARCHAR(20),
    Patient_ID INT,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID)
);