int value = random (0, 1023);
int MAX = 1023;
int MIN = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {

//Simulate 10 bits signal.
//Add a random step of -2, +2 
int step = random (-2, 2); 
//Check values do not go outside 10 bits limit
value = value + step; 
if (value > MAX){
  value = MAX; 
}

if (value < MIN) {

 value = MIN; 
}

//Write the frame
Serial.write(1);
Serial.write(2); 
Serial.write(3); 
Serial.write(4);
Serial.write(lowByte(value));
Serial.write(highByte(value)); 

delay (500);

}
