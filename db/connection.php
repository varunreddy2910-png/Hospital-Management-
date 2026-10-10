<?php

$conn = mysqli_connect(
    "localhost",
    "root",
    "YOUR_PASSWORD",
    "HospitalDB",
    3306
);

if (!$conn) {
    die("Connection Failed: " . mysqli_connect_error());
}

?>