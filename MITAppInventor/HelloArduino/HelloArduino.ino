#include <SoftwareSerial.h>

SoftwareSerial BT(10, 11); // RX, TX

void setup() {
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Native USB only
  }
  BT.begin(9600);
  pinMode(13, OUTPUT); // LED connected to 13th pin
}

void loop() {
  if (BT.available()) {
      String value = BT.readString(); //read the input
      Serial.print(value);
      //if (value=="on\r\n"){
      if (value=="on"){
        digitalWrite(13, HIGH);
      }
      //else if (value=="off\r\n"){
      else if (value=="off"){
        digitalWrite(13,LOW);
      }
  }
 }
