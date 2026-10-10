SELECT COUNT(*) AS TotalPatients
FROM PATIENT;

SELECT COUNT(*) AS TotalDoctors
FROM DOCTOR;

SELECT SUM(Amount) AS TotalRevenue
FROM BILL
WHERE Payment_Status='Paid';

SELECT *
FROM BILL
WHERE Payment_Status='Pending';

SELECT
d.Doctor_Name,
COUNT(a.Appointment_ID) AS TotalAppointments
FROM DOCTOR d
LEFT JOIN APPOINTMENT a
ON d.Doctor_ID=a.Doctor_ID
GROUP BY d.Doctor_Name;