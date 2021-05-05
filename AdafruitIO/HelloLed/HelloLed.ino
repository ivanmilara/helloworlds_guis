// Adafruit IO Subscription Example
//
// Adafruit invests time and resources providing this open source code.
// Please support Adafruit and open source hardware by purchasing
// products from Adafruit!
//
// Written by Todd Treece for Adafruit Industries
// Copyright (c) 2016 Adafruit Industries
// Licensed under the MIT license.
//
// All text above must be included in any redistribution.

/*
  Code written by Iván Sánchez Milara based on example code adafruitio_01_subscribe
  Tutorials: 
    - https://learn.adafruit.com/using-ifttt-with-adafruit-io/
    - https://learn.adafruit.com/adafruit-io-basics-esp8266-arduino/
   
  This example code is in public domain.

 *************************************************************
  This example runs directly on NodeMCU.

  Note: This requires ESP8266 support package:
    https://github.com/esp8266/Arduino

And the following libraries: 
  - Adafruit IO Arduino
  - Adafruit MQTT library 

 *************************************************************/

#include <ESP8266WiFi.h>
/************************** Configuration ***********************************/

// edit the config.h tab and enter your Adafruit IO credentials
// and any additional configuration needed for WiFi, cellular,
// or ethernet clients.
#include "config.h"

// set up the feed
AdafruitIO_Feed *feed = io.feed(IO_FEED_NAME);

void setup()
{
  // Set pin output
  pinMode(D1,OUTPUT);

  
  // start the serial connection
  Serial.begin(115200);

  // wait for serial monitor to open
  while(! Serial);

  Serial.print("Connecting to Adafruit IO");

  // start MQTT connection to io.adafruit.com
  io.connect();

  // set up a message handler for the count feed.
  // the handleMessage function (defined below)
  // will be called whenever a message is
  // received from adafruit io.
  feed->onMessage(handleMessage);

  // wait for an MQTT connection
  // NOTE: when blending the HTTP and MQTT API, always use the mqttStatus
  // method to check on MQTT connection status specifically
  while(io.mqttStatus() < AIO_CONNECTED) {
    Serial.print(".");
    delay(500);
  }

  // Because Adafruit IO doesn't support the MQTT retain flag, we can use the
  // get() function to ask IO to resend the last value for this feed to just
  // this MQTT client after the io client is connected.
  feed->get();

  // we are connected
  Serial.println();
  Serial.println(io.statusText());

}

void loop()
{
  
  // io.run(); is required for all sketches.
  // it should always be present at the top of your loop
  // function. it keeps the client connected to
  // io.adafruit.com, and processes any incoming data.
  io.run();

  // Because this sketch isn't publishing, we don't need
  // a delay() in the main program loop.

}

// this function is called whenever a 'feed' message
// is received from Adafruit IO. it was attached to
// the counter feed in the setup() function above.
void handleMessage(AdafruitIO_Data *data) {
 // When received a position
  Serial.print("received <- ");
  String value = data->value();  
  Serial.println(value);
  //Turn LED ON / OFF depending on the value received.
  if(value == "ON"){
    digitalWrite(D1,HIGH);
  }

  else if (value == "OFF"){
    digitalWrite(D1,LOW);
  }

}
