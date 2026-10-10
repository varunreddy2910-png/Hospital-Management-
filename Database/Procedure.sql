DELIMITER //

CREATE PROCEDURE GetPatientAppointments(IN pid INT)
BEGIN
SELECT
p.Patient_Name,
a.Appointment_Date,
a.Appointment_Time
FROM PATIENT p
JOIN APPOINTMENT a
ON p.Patient_ID=a.Patient_ID
WHERE p.Patient_ID=pid;
END //

DELIMITER ;

CALL GetPatientAppointments(101);