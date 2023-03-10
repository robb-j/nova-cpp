#include <Arduino.h>

void debug(String message) {
// #ifdef DEBUG
  Serial.println(message);
// #endif
}
