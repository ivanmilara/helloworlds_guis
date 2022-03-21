/*The MIT License (MIT)
Copyright © 2021 Iván Sánchez Milara

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import processing.serial.*;

//For serial communication 
Serial myPort;
int byte1, byte2, byte3, byte4, high, low;
int value = 0;


void setup() {
  //Setup serial communication
  String portName = Serial.list()[0];
  println("Port Name "+ portName);
  final String PORT = "COM18";
  myPort = new Serial(this, PORT, 9600);
  
  // Create the image
  size(640, 360);
  // Create the font
  //textFont(createFont("SourceCodePro-Regular.ttf", 36));
}

void draw() {
  background(0); // Set background to black
  // Draw the letter to the center of the screen
  textSize(20);
  text("Last value received", 220, 100);
  textSize(36);
  text(str(value), 280, 120, 300, 300);
    
  }
  
  void serialEvent(Serial p){
    byte1 = byte2;
    byte2 = byte3;
    byte3 = byte4;
    byte4 = low;
    low = high;
    high = myPort.read();        
    
    if ((byte1 == 1) & (byte2 == 2) & (byte3 == 3) & (byte4 ==4)){
      //Reset the preamble.
      byte1=byte2=byte3=byte4=0;
      value = ((256*high)+low);
      println("Counter is "+ value);
    }
  }

  
