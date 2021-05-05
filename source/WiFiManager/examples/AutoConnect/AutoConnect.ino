// Libaries 
#include <ESP8266WiFi.h>          
#include <ESP8266WebServer.h>
#include <WiFiManager.h>   
 #include "DHT.h" // DHT11 temperature and humidity sensor Predefined library        
#include <WiFiClient.h> 
#include <ESP8266HTTPClient.h>
 
#define DHTTYPE DHT11   // DHT 11
#define dht_dpin 0      //GPIO-0 D3 pin of nodemcu      
int Raw       = A0;      //Analog channel A0 as used to measure temperature
int threshold = 16;      //Nodemcu digital pin water sensor read-GPIO16---D0 of NodeMCU
int Solenoid = 13;       // GPIO13---D7 of NodeMCU--Motor connection
int led1 =4;			//GPIO4-----D2 OF NODEMCU LED CONNECTION
DHT dht(dht_dpin, DHTTYPE); 


float h =0.0;  //Humidity level
 float t =0.0;  //Temperature in celcius 
 float f =0.0;  //Temperature in fahrenheit
 float percentage = 0.0; // Calculating percentage of moisture
 float reading    = 0.0; //Analog channel moisture read
String moto;

WiFiServer server(80);

void setup() {
    dht.begin();
    Serial.begin(115200);

    WiFiManager wifiManager;
    wifiManager.autoConnect("AutoConnectAP");
  delay(10);
  pinMode(threshold,INPUT_PULLUP); //Pin#13 as output-Activate pullup at pin 13
  pinMode(Solenoid, OUTPUT);       //D7 as output
  digitalWrite(Solenoid, LOW);     //Deactivate Solenoid
  pinMode(led1,OUTPUT);
  digitalWrite(led1,LOW);
  // Connect to WiFi network
  Serial.println();
  Serial.print("Connecting to ");

  
 while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
 
  // Start the server
  server.begin();
  Serial.println("Server started");
 
  // Print the IP address on serial monitor
  Serial.print("Use this URL to connect: ");
  Serial.print("http://");    //URL IP to be typed in mobile/desktop browser
  Serial.print(WiFi.localIP());
  Serial.println("/");
}



void loop() {
    // put your main code here, to run repeatedly: 
     // Check if a client has connected
    WiFiClient client = server.available();
  if (!client) {
    return;
  } 
  // Wait until the client sends some data
  Serial.println("new client");
  while(!client.available()){
    delay(1);
  }
  // Read the first line of the request
  String request = client.readStringUntil('\r');
  Serial.println(request);
  client.flush();

 t = dht.readTemperature(); // Gets the values of the temperature
  h = dht.readHumidity();
   Serial.println((String)"humidity value " + h );
  f = (h * 1.8) + 32;
 	reading = analogRead(Raw); //Analog pin reading output voltage by water moisture rain sensor
   Serial.println((String)"reading a analogn value " + reading );
     percentage = 100-(reading/1024) * 100; 
     int valuess = LOW;

     if (percentage<=55){  // If less mositure in soil start the motor otherwise stop
    digitalWrite(Solenoid, LOW);
    valuess = LOW;
    }
    else {
    
    digitalWrite(Solenoid, HIGH);
    valuess = HIGH;
    }

 
  // Match the request
   
  if (request.indexOf("/Up=ON") != -1)  {
     h = dht.readHumidity();    //Read humidity level
     t = dht.readTemperature(); //Read temperature in celcius
     f = (h * 1.8) + 32;        //Temperature converted to Fahrenheit
     reading = analogRead(Raw); //Analog pin reading output voltage by water moisture rain sensor
     percentage = 100-(reading/1024) * 100;   //Converting the raw value in percentage



     if (percentage<=55){  // If less mositure in soil start the motor otherwise stop
    digitalWrite(Solenoid, LOW);
    valuess = LOW;
    }
    else {
    
    digitalWrite(Solenoid, HIGH);
    valuess = HIGH;
    }

   /* if (percentage>=70){  // If less mositure in soil start the motor otherwise stop
    digitalWrite(Solenoid, HIGH);
    valuess = HIGH;
    }
    else {
    digitalWrite(Solenoid, LOW);
    valuess = LOW;
    } */
    
  }

  if (request.indexOf("/Solenoid=ON") != -1)  {   //Motor ON
    digitalWrite(Solenoid, HIGH);
    valuess = HIGH;
  }
  if (request.indexOf("/Solenoid=OFF") != -1)  {  //Motor OFF
    digitalWrite(Solenoid, LOW);
    valuess = LOW;
  }
  if (request.indexOf("/led1=ON") != -1)  {   //Motor ON
    digitalWrite(led1, HIGH);
    
  }
  if (request.indexOf("/led1=OFF") != -1)  {  //Motor OFF
    digitalWrite(led1, LOW);
    
  }

 
    
   
  // Return the response
 
  client.println("HTTP/1.1 200 OK");
  client.println("Connection: close");
  client.println("Refresh: 10"); 
  client.println("Content-Type: text/html");
  client.println(""); //  do not forget this one
  client.println("<!DOCTYPE HTML>");
  client.println("<html>");
  client.println("<h1 align=center>IOT BASED SMART IRRIGATION</h1><br><br>");
  client.println("<center>");
  client.print("<b>Temperature in Celsius =</b>");
  client.println(t);
  client.println("<br><br>");
  client.print("<b>Temperature in Fahrenheit =</b>");
  client.println(f);
  client.println("<br><br>");
  client.print("<b>Humidity =<b>");
  client.println(h);
  client.print(" %");   
  client.println("<br><br>");  
  client.println();
  client.print("<b>Moisture Level Percentage =<b>");
  client.print(percentage);
  client.print("%");
 client.println("<br>"); 

client.println("<br><br>");

 //if(digitalRead(threshold)==HIGH){ // Read digital output of soil sensor
  //client.println("Threshold Reached = Rain detected / Moisture exceeded / Water detected");
  //}


    if(valuess == HIGH)
    { 
      client.print("Motor/Pump at Halt");
    client.println();
    moto="OFF";
}
   else {
    client.println("Motor/Pump Operational");
    client.println();
    moto="ON";
}
  client.println(moto);
  client.println("<br><br>");
  client.println("<a href=\"/Up=ON\"\"><button>Update = Temperature  Humidity Moisture Values</button></a><br><br />"); 
  client.println("<a href=\"/Solenoid=ON\"\"><button>Motor Pump on </button></a>");
  client.println("<a href=\"/Solenoid=OFF\"\"><button>Motor Pump Off </button></a><br />"); 
  client.println("<br>");
  client.println("led button");
  client.println("<a href=\"/led1=ON\"\"><button>led Off </button></a>");
  client.println("<a href=\"/led1=OFF\"\"><button>led On </button></a><br />");
  client.println("<br/><a href=\"http://192.168.43.61/testcode/resultsql.php\"><button>show log </button></a><br />");

  client.println("</center>");
  //databse upload
      HTTPClient http;
   //values send to the string value
     String url = "http://192.168.43.61/testcode/add.php?h="+String(h)+"&t="+String(t)+"&percentage="+String(percentage)+"&moto="+String(moto);
Serial.println(url);     
      http.begin(url);

int httpCode = http.GET();
Serial.println(httpCode);
     
     if(httpCode > 0)
      {
          Serial.printf("[HTTP] GET...code: %d\n", httpCode);
            if(httpCode == HTTP_CODE_OK)
            {
              String payload = http.getString();
              Serial.println(payload);
            }
      }
         else
         {
            Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
         }
          http.end();
       //delay(3000);
  client.println("</html>");
  Serial.println("Client disonnected");
  Serial.println("");
}

