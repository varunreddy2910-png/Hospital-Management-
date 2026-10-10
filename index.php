<?php

include("db/connection.php");

if(isset($_POST['save']))
{
    $id=$_POST['Patient_ID'];
    $name=$_POST['Patient_Name'];
    $gender=$_POST['Gender'];
    $dob=$_POST['Date_of_Birth'];
    $phone=$_POST['Phone'];
    $address=$_POST['Address'];
    $blood=$_POST['Blood_Group'];

    $sql="INSERT INTO PATIENT
    VALUES(
    '$id',
    '$name',
    '$gender',
    '$dob',
    '$phone',
    '$address',
    '$blood'
    )";

    mysqli_query($conn,$sql);
}

$result=mysqli_query(
$conn,
"SELECT * FROM PATIENT"
);

?>

<!DOCTYPE html>
<html>

<head>

<title>Patients</title>

<link rel="stylesheet"
href="css/style.css">

</head>

<body>

<div class="header">
<h1>Patient Management</h1>
</div>

<div class="container">

<form method="POST">

<label>Patient ID</label>
<input type="number"
name="Patient_ID">

<label>Name</label>
<input type="text"
name="Patient_Name">

<label>Gender</label>

<select name="Gender">
<option>Male</option>
<option>Female</option>
</select>

<label>Date Of Birth</label>
<input type="date"
name="Date_of_Birth">

<label>Phone</label>
<input type="text"
name="Phone">

<label>Address</label>
<textarea
name="Address">
</textarea>

<label>Blood Group</label>
<input type="text"
name="Blood_Group">

<input
type="submit"
name="save"
value="Save Patient"
class="btn">

</form>

<br>

<h2>Patient Records</h2>

<table>

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

<td>
<?php
echo $row['Patient_ID'];
?>
</td>

<td>
<?php
echo $row['Patient_Name'];
?>
</td>

<td>
<?php
echo $row['Gender'];
?>
</td>

<td>
<?php
echo $row['Phone'];
?>
</td>

<td>
<?php
echo $row['Blood_Group'];
?>
</td>

</tr>

<?php
}
?>

</table>

</div>

</body>
</html>