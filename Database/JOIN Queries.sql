SELECT
p.Patient_Name,
d.Doctor_Name,
a.Appointment_Date,
a.Appointment_Time
FROM PATIENT p
JOIN APPOINTMENT a
ON p.Patient_ID=a.Patient_ID
JOIN DOCTOR d
ON a.Doctor_ID=d.Doctor_ID;

SELECT
p.Patient_Name,
d.Doctor_Name,
t.Diagnosis
FROM TREATMENT t
JOIN PATIENT p
ON t.Patient_ID=p.Patient_ID
JOIN DOCTOR d
ON t.Doctor_ID=d.Doctor_ID;