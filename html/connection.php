<?php
$servername = "localhost";
$username = "alert";
$password = "colin$31";
$db="alert";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//echo "success";

?>
