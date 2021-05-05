<?php
$humidity = $_GET['humidity'];
$temperature = $_GET['temperature'];
$soilmoisture = $_GET['soilmoisture'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nodemcu";

// Create connection
$conn = new mysqli($servername, $username,$password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$humidity = $_GET['humidity'];
$temperature = $_GET['temperature'];
$soilmoisture = $_GET['soilmoisture'];
$sql = "INSERT INTO `dht11`(`humidity`,`temperature`,`soilmoisture`) VALUES ('$humidity','$temperature','$soilmoisture');";

if ($conn->query($sql) === TRUE) {
    echo "Temperature Saved Successfully!";
} else {
    echo "Error:" . $sql . "<br>" . $conn->error;
}

$conn->close();
?>