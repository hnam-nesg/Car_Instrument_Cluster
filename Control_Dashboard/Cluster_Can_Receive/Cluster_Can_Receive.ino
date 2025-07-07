#include <SPI.h>
#include <mcp_can.h>

#define CAN_INT 2  

MCP_CAN CAN(10);  

unsigned int rawSpeed = 0;
byte coolant = 0;
byte fuel = 0;
byte lightStatus = 0;
byte gear = 0xFF;

void setup() {
  Serial.begin(115200);

  if (CAN_OK == CAN.begin(MCP_ANY, CAN_500KBPS, MCP_16MHZ)) {
    Serial.println("CAN Receiver Initialized Successfully!");
  } else {
    Serial.println("CAN Receiver Initialization Failed!");
    while (1);
  }

  CAN.setMode(MCP_NORMAL);
  pinMode(CAN_INT, INPUT);
}

void loop() {
  if (!digitalRead(CAN_INT)) {
    long unsigned int rxId;
    byte len = 0;
    byte buf[8];

    CAN.readMsgBuf(&rxId, &len, buf);

    switch (rxId) {
      case 0x301:
        rawSpeed = ((unsigned int)buf[0] << 8) | buf[1];
        Serial.print("Speed:");
        Serial.print(int((rawSpeed * 240.0) / 65535.0), 1);
        Serial.println();
        break;

      case 0x302:
        coolant = buf[0];
        Serial.print("Coolant:");
        Serial.print(int((coolant * 100.0) / 255.0), 1);
        Serial.println();
        break;

      case 0x303:
        fuel = buf[0];
        Serial.print("Fuel:");
        Serial.print(int((fuel * 100.0) / 255.0), 1);
        Serial.println();
        break;

      case 0x304:
        lightStatus = buf[0];
        Serial.print("Lights:");
        if (lightStatus & (1 << 0)) Serial.print("Right,"); else Serial.print(" ,");
        if (lightStatus & (1 << 1)) Serial.print("Left,"); else Serial.print(" ,");
        if (lightStatus & (1 << 2)) Serial.print("High,"); else Serial.print(" ,");
        if (lightStatus & (1 << 3)) Serial.print("Low,"); else Serial.print(" ,");
        if (lightStatus & (1 << 4)) Serial.print("Fog,"); else Serial.print(" ,");
        if (lightStatus & (1 << 5)) Serial.print("Hazard"); else Serial.print(" ");
        Serial.println();
        break;

      case 0x305:
        gear = buf[0];
        Serial.print("Gear:");
        if (gear == 0) Serial.println("P");
        else if (gear == 1) Serial.println("N");
        else if (gear == 2) Serial.println("D");
        else if (gear == 3) Serial.println("R");
        else Serial.println("Unknown");
        break;

      default:
        Serial.print("Unknown ID: 0x");
        Serial.println(rxId, HEX);
        break;
    }
  }
}
