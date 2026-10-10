<?php
include 'db/connection.php';

$result = mysqli_query($conn,"SELECT * FROM PATIENT");
?>

<!DOCTYPE html>
<html>

<head>
<title>Patients</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<h2>Patient Records</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Phone</th>
<th>Blood Group</th>
</tr>

<?php
while($row=mysqli_fetch_assoc($result))
{
?>
<tr>

<td><?php echo $row['Patient_ID']; ?></td>
<td><?php echo $row['Patient_Name']; ?></td>
<td><?php echo $row['Gender']; ?></td>
<td><?php echo $row['Phone']; ?></td>
<td><?php echo $row['Blood_Group']; ?></td>

</tr>

<?php
}
?>

</table>

</body>
</html>