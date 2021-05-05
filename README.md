# iot-smartirrigation

# IOT BASED SMART IRRIGATION
    In the “IOT BASED SMART IRRIGATION” project. The main concept is to help farmers and save the water, time & work also based on the IOT (Internet Of Things) by using a sensors DHT11 (temperature ,humidity ) and soil moisture sensor controlled by NodeMCU module . The sensor collects the data and uploads to the website and also stores in a database in real time monitoring. The traditional method of agricultural procedure results large amount of water wastage. In the dry areas and shortage of the land water due to the lack of rainfall, irrigation becomes difficult. For in this reason, we use this automation water irrigation, temperature and soil water monitor is very useful in all climates and handled by remotely by farmer. India is the agriculture is the back bone of our country most people are completely depend on the agriculture. The main aim of the project is to automate plant water irrigation it will be reduce the water usage and time. 
    
    
## software installation


```
1.Ardunio (https://www.arduino.cc/en/Main/Software)
2.Mysql
3.xampp sever 
4.•	Microsoft Windows XP with SP2, Windows 7, Windows 8/8.1 and Windows 10 operating system.
•	Microsoft .NET Framework 3.5 or higher.
•	Xampp control panel
•	PROGRAMINO IDE for Arduino

```
 
## hardware components
1.	NodeMCU (Esp8266):
     ![image](https://user-images.githubusercontent.com/39646701/117167084-94786900-ade4-11eb-947a-b8b5e498acdf.png)
2.	DHT11 sensor:
	![image](https://user-images.githubusercontent.com/39646701/117167173-a3f7b200-ade4-11eb-86e8-6a3531837ad0.png)
3. Soil moisture sensor:
  ![image](https://user-images.githubusercontent.com/39646701/117167212-ace88380-ade4-11eb-80e5-09c7ea7b55cc.png)
4.2 Channel 5V Relay Module:
  ![image](https://user-images.githubusercontent.com/39646701/117167348-ce496f80-ade4-11eb-8b0c-1a5340a17459.png)
5.Water pump motor
  ![image](https://user-images.githubusercontent.com/39646701/117167405-d9040480-ade4-11eb-824e-266fb47a6fd0.png)\
6.Jumper cables:
  ![image](https://user-images.githubusercontent.com/39646701/117167471-e6b98a00-ade4-11eb-9673-01f8b997ef45.png)



design like this:

.![image](https://user-images.githubusercontent.com/39646701/117166626-2c298780-ade4-11eb-83de-beafbe2e22f1.png)



# Read Me First:
````

1.install the Arduino software on your pc.
2.first you need to download the zip file & extract.
3.WiFiManager folder  copy & paste it on C:\Users\username\Documents\Arduino\"WiFiManager"
4.inside a Arduino folder paste a file 
5.connect a NodeMCU (Esp8266) to pc 
6.open Arduino software file->examples 
7.find the  "WiFiManager" open code
8.tools ->set  Board "Generic Esp8266 module"
9.Select your serial port.                                                                                                     
                    Select the serial device of the Arduino board. Go to Tools → Serial Port menu. This is likely to be COM3 or higher (COM1 and COM2 are usually reserved for hardware serial ports). To find out, you can disconnect your Arduino board and re-open the menu, the entry that disappears should be of the Arduino board. Reconnect the board and select that serial port.
 set serial to  "115200"
 
 10. start to flash the file into NodeMCU (Esp8266)
 
````
##steps
11.extracted zip folder source->php page->testcode folder
12.copy & paste into C:\xampp\htdocs
13.run xamp software open any webbrowser 
14.access the testcode folder 

![image](https://user-images.githubusercontent.com/39646701/117170318-8bd56200-ade7-11eb-88cd-b370db1d4336.png)

go to extracted zip folder source->php page->sql database folder
open the file & see the data base name -- Database: `nodemcu`
open phpmyadmin create a database  Database: `nodemcu`
import the file it will automatically load the strcture 

15.Turn on NodeMCU module 
16.it will turn on the tempory hostpot 
17.![image](https://user-images.githubusercontent.com/39646701/117170348-91cb4300-ade7-11eb-93a9-38dc0c9db7b1.png)

18.now connect your pc to that 
![image](https://user-images.githubusercontent.com/39646701/117170372-9859ba80-ade7-11eb-8b24-3c2923eab5e0.png)
19.set ssid & password
20.![image](https://user-images.githubusercontent.com/39646701/117170434-a60f4000-ade7-11eb-8569-f932504f2b54.png)
21.serial moniter generate a ip address:
22.![image](https://user-images.githubusercontent.com/39646701/117170520-b9baa680-ade7-11eb-993c-63ed4c700816.png)
23.copy & paste to the web browser
24.![image](https://user-images.githubusercontent.com/39646701/117170602-ca6b1c80-ade7-11eb-9d7a-9a025b3b2c62.png)
25.now you can see & access to the nodemcu 
26.data will automatically stored to the mysql data base now you can see through the website also
27.![image](https://user-images.githubusercontent.com/39646701/117170853-fe464200-ade7-11eb-95a5-6b78282c5f7b.png)
