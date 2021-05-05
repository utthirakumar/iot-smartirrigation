<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nodemcu";

// Create connection
$conn = new mysqli($servername, $username,$password, $dbname);
// Check connection
if ($conn-> connect_error) {
    die("Connection failed: " . $conn-> connect_error);
} 
$humidity = $_GET['h'];
$temperature = $_GET['t'];
$soilmoisture = $_GET['percentage'];
$moto_status=$_GET['moto'];
echo $humidity;
echo $temperature;
echo $soilmoisture;
echo $moto_status;

$sql = "INSERT INTO `dht11`(`humidity`,`temperature`,`soilmoisture`,`moto_status`) VALUES ('$humidity','$temperature','$soilmoisture','$moto_status')";

$result = $conn -> query($sql); 

if ($result == 1) {
	echo "row inserted";
}
else
{
	echo "not inserted";
}


$conn->close();
?>