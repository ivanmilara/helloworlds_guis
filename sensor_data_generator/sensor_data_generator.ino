/*The MIT License (MIT)
Copyright © 2021 Iván Sánchez Milara

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

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
