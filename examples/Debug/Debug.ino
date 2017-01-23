/*
 * 31 mar 2015
 * This sketch display UDP packets coming from an UDP client.
 * On a Mac the NC command can be used to send UDP. (nc -u 192.168.1.101 2390).
 *
 * Configuration : Enter the ssid and password of your Wifi AP. Enter the port number your server is listening on.
 *
 */

#include <ESP8266WiFi.h>          // https://github.com/esp8266/Arduino

//needed for library
#include "SPISlave.h"
#include "OpenBCI_Wifi.h"

uint8_t lastSS = 0;

void setup() {
  // Start up wifi for OpenBCI
  OpenBCI_Wifi.begin(true);

  Serial.print("Time for wifi's");

  pinMode(15,INPUT);
}

void loop() {
  // Do nothing
}
