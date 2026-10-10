CREATE VIEW PatientAppointmentView AS
SELECT p.Patient_Name,
       d.Doctor_Name,
       a.Appointment_Date,
       a.Appointment_Time
FROM PATIENT p
JOIN APPOINTMENT a
ON p.Patient_ID=a.Patient_ID
JOIN DOCTOR d
ON a.Doctor_ID=d.Doctor_ID;

SELECT * FROM PatientAppointmentView;