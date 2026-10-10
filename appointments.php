<?php

include 'db/connection.php';

$sql="
SELECT
p.Patient_Name,
d.Doctor_Name,
a.Appointment_Date,
a.Appointment_Time,
a.Status

FROM APPOINTMENT a

JOIN PATIENT p
ON p.Patient_ID=a.Patient_ID

JOIN DOCTOR d
ON d.Doctor_ID=a.Doctor_ID
";

$result=mysqli_query($conn,$sql);

?>

<!DOCTYPE html>
<html>

<head>
<title>Appointments</title>
</head>

<body>

<h2>Appointments</h2>

<table border="1">

<tr>
<th>Patient</th>
<th>Doctor</th>
<th>Date</th>
<th>Time</th>
<th>Status</th>
</tr>

<?php

while($row=mysqli_fetch_assoc($result))
{
?>

<tr>

<td><?php echo $row['Patient_Name']; ?></td>
<td><?php echo $row['Doctor_Name']; ?></td>
<td><?php echo $row['Appointment_Date']; ?></td>
<td><?php echo $row['Appointment_Time']; ?></td>
<td><?php echo $row['Status']; ?></td>

</tr>

<?php
}
?>

</table>

</body>
</html>