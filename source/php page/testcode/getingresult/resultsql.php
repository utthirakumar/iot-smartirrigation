
<!DOCTYPE html>
<html>
<head><title>
</title></head>
<body>
	<link rel="stylesheet" type="text/css" href="style.css">
	<div>
<table >
	<tr class="not">
		<th>id</th>
		<th>name</th>
		<th>email</th>
		<th>phone number</th>
		<th>website</th>
		<th>message</th>
	</tr>
<?php
$conn = new mysqli("localhost","root","","formvalue");
if ($conn-> connect_error) 
{
	echo $conn -> connect_error;
	die("<br>connection failed" . $conn -> connect_error);
	# code...
}


$sql="SELECT * from `data`";
$result=$conn -> query($sql);
if ($result == !0)
{
	while($row = $result-> fetch_assoc())
	{
		echo "<tr><td>" . $row["id"] . "</td><td> " . $row["name"] . "</td><td>" . $row["email"] . "</td><td>" . $row["phnumber"] ."</td><td>" . $row["website"] . 	"</td><td>" . $row["message"] . "</td></tr>";
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