SELECT * FROM PATIENT;

SELECT p.Patient_Name,
       d.Doctor_Name,
       a.Appointment_Date,
       a.Appointment_Time
FROM APPOINTMENT a
JOIN PATIENT p ON a.Patient_ID=p.Patient_ID
JOIN DOCTOR d ON a.Doctor_ID=d.Doctor_ID;

SELECT p.Patient_Name,
       b.Amount
FROM PATIENT p
JOIN BILL b
ON p.Patient_ID=b.Patient_ID
WHERE b.Payment_Status='Pending';