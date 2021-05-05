import processing.serial.*;

//For serial communication 
Serial myPort;
int byte1, byte2, byte3, byte4, high, low;
int value = 0;


void setup() {
  //Setup serial communication
  String portName = Serial.list()[0];
  println("Port Name "+ portName);
  final String PORT = "COM5";
  myPort = new Serial(this, PORT, 9600);
  
  // Create the image
  size(640, 360);
  // Create the font
  //textFont(createFont("SourceCodePro-Regular.ttf", 36));
}

void draw() {
  background(0); // Set background to black
  
  // Receive the data
  while( myPort.available() > 0) {  // If data is available,
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

  // Draw the letter to the center of the screen
  textSize(20);
  text("Last value received", 220, 100);
  textSize(36);
  text(str(value), 280, 120, 300, 300);
}
