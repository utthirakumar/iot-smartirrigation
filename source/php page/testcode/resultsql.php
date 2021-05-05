
<!DOCTYPE html>
<html>
<head><title>
</title></head>
<body>
	<link rel="stylesheet" type="text/css" href="style.css">
	<div>
		<div align="center">
			<h1>LOG file</h1>
		</div>
<table >
	<tr class="not">
		<th>id</th>
		<th>humidity</th>
		<th>tempertaure</th>
		<th>soil mositure</th>
		<th>moto_status</th>
		<th>date</th>
	</tr>
<?php
$conn = new mysqli("localhost","root","","nodemcu");
if ($conn-> connect_error) 
{
	echo $conn -> connect_error;
	die("<br>connection failed" . $conn -> connect_error);
	# code...
}


$sql="SELECT * from `dht11`";
$result=$conn -> query($sql);
if ($result == !0)
{
	while($row = $result-> fetch_assoc())
	{
		echo "<tr><td>" . $row["ID"] . "</td><td> " . $row["humidity"] . "</td><td>" . $row["temperature"] . "</td><td>" . $row["soilmoisture"] ."</td><td>" . $row["moto_status"] ."</td><td>" . $row["date"] . 	"</td></tr>";
	}  echo "</table>";
}
 
	else
	{
		echo "0 results";
	}
$conn->close();
?>
</table></div>
</body></html>