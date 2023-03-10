#include "YoLogHandler.h"

bool YoLogHandler::canHandle(AsyncWebServerRequest *request) {
  Serial.println(String(request->methodToString()) + " " + request->host() + request->url());
  return false;
}

void YoLogHandler::handleRequest(AsyncWebServerRequest *request) {}
