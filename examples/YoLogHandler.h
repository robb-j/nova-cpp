#pragma once

#include "ESPAsyncWebServer.h"

class YoLogHandler : public AsyncWebHandler
{
public:
  YoLogHandler() {}
  virtual ~YoLogHandler() {}

  bool canHandle(AsyncWebServerRequest *request);
  void handleRequest(AsyncWebServerRequest *request);
};
