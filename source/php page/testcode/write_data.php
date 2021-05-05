<?php
class dht11{
 public $link='';
 function __construct($temperature, $humidity, $soilmoisture){
  $this->connect();
  $this->storeInDB($temperature, $humidity, $soilmoisture);
 }
 
 function connect(){
  $this->link = mysqli_connect('localhost','root','') or die('Cannot connect to the DB');
  mysqli_select_db($this->link,'nodeMCU') or die('Cannot select the DB');
 }
 
 function storeInDB($temperature, $humidity, $soilmoisture){
  $query = "insert into DHT11 set humidity='".$humidity."', temperature='".$temperature."',soilmoisture='".$soilmoisture."'";
  $result = mysqli_query($this->link,$query) or die('Errant query:  '.$query);
 }
 
}
if($_GET['temperature'] != '' and  $_GET['humidity'] != '' and $_GET['soilmoisture'] != '' ){
 $dht11=new dht11($_GET['temperature'],$_GET['humidity'],$_GET['soilmoisture']);
}


?>
