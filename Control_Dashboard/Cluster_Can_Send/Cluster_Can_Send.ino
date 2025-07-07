#include <SPI.h>
#include <mcp_can.h>

//-------------------- MCP2515 --------------------//
MCP_CAN CAN(53);    

//-------------------- Cảm biến analog --------------------//
const int potPin  = A15;  // Speed
const int potPin1 = A13;  // Coolant
const int potPin2 = A14;  // Fuel

//-------------------- Công tắc đèn --------------------//
const int mLight_right  = 30;
const int mLight_left   = 32;
const int mLight_high   = 34;
const int mLight_low    = 36;
const int mLight_fog    = 38;
const int mLight_hazard = 40;

//-------------------- Hộp số --------------------//
const int m_gearP = 22;
const int m_gearN = 24;
const int m_gearD = 26;
const int m_gearR = 28;
unsigned long lastSendTime = 0;
const unsigned long interval = 50;  
int sendStep = 0;

//-------------------- Hàm gửi tốc độ (ID: 0x301) --------------------//
void sendWheelSpeedRaw(int potPin, MCP_CAN &CAN) {
  unsigned int rawSpeed = map(analogRead(potPin), 0, 1023, 0, 65535);
  byte data[8] = {
    (byte)(rawSpeed >> 8),(byte)(rawSpeed & 0xFF),0, 0, 0, 0, 0, 0
  };
  CAN.sendMsgBuf(0x301, 0, 8, data);
  Serial.print("[0x301] Speed raw: "); Serial.println(rawSpeed);
}

//-------------------- Hàm gửi coolant (ID: 0x302) --------------------//
void sendCoolantRaw(int potPin1, MCP_CAN &CAN) {
  int raw = analogRead(potPin1);
  byte val = map(raw, 0, 1023, 0, 255);
  byte data[8] = { val, 0, 0, 0, 0, 0, 0, 0 };
  CAN.sendMsgBuf(0x302, 0, 8, data);
  Serial.print("[0x302] Coolant: "); Serial.println(val);
}

//-------------------- Hàm gửi fuel (ID: 0x303) --------------------//
void sendFuelRaw(int potPin2, MCP_CAN &CAN) {
  int raw = analogRead(potPin2);
  byte val = map(raw, 0, 1023, 0, 255);
  byte data[8] = { val, 0, 0, 0, 0, 0, 0, 0 };
  CAN.sendMsgBuf(0x303, 0, 8, data);
  Serial.print("[0x303] Fuel: "); Serial.println(val);
}

//-------------------- Hàm gửi trạng thái đèn (ID: 0x304) --------------------//
void sendLightStatus(MCP_CAN &CAN) {
  byte lightByte = 0;
  lightByte |= (!digitalRead(mLight_right)  << 0);
  lightByte |= (digitalRead(mLight_left)   << 1);
  lightByte |= (digitalRead(mLight_high)   << 2);
  lightByte |= (digitalRead(mLight_low)    << 3);
  lightByte |= (digitalRead(mLight_fog)    << 4);
  lightByte |= (!digitalRead(mLight_hazard) << 5);
  byte data[8] = { lightByte, 0, 0, 0, 0, 0, 0, 0 };
  CAN.sendMsgBuf(0x304, 0, 8, data);
  Serial.print("[0x304] Light Byte: 0b"); Serial.println(lightByte, BIN);
}

//-------------------- Hàm gửi trạng thái hộp số (ID: 0x305) --------------------//
void sendGearStatus(MCP_CAN &CAN) {
  byte gearValue = 0xFF;
  if (!digitalRead(m_gearP))      gearValue = 0;
  else if (!digitalRead(m_gearN)) gearValue = 1;
  else if (digitalRead(m_gearD))  gearValue = 2;
  else if (!digitalRead(m_gearR)) gearValue = 3;  

  byte data[8] = { gearValue, 0, 0, 0, 0, 0, 0, 0 };
  CAN.sendMsgBuf(0x305, 0, 8, data);

  Serial.print("[0x305] Gear: ");
  if (gearValue == 0) Serial.println("P");
  else if (gearValue == 1) Serial.println("N");
  else if (gearValue == 2) Serial.println("D");
  else if (gearValue == 3) Serial.println("R");
  else Serial.println("Unknown");
}

//-------------------- SETUP --------------------//
void setup() {
  Serial.begin(115200);

  // Khởi tạo MCP2515
  if (CAN_OK == CAN.begin(MCP_ANY, CAN_500KBPS, MCP_16MHZ)) {
    Serial.println("CAN Sender Initialized Successfully!");
  } else {
    Serial.println("CAN Sender Initialization Failed!");
    while (1);
  }

  CAN.setMode(MCP_NORMAL);  

  pinMode(mLight_right,  INPUT_PULLUP);
  pinMode(mLight_left,   INPUT_PULLUP);
  pinMode(mLight_high,   INPUT_PULLUP);
  pinMode(mLight_low,    INPUT_PULLUP);
  pinMode(mLight_fog,    INPUT_PULLUP);
  pinMode(mLight_hazard, INPUT_PULLUP);

  pinMode(m_gearP, INPUT_PULLUP);
  pinMode(m_gearN, INPUT_PULLUP);
  pinMode(m_gearD, INPUT_PULLUP);
  pinMode(m_gearR, INPUT_PULLUP);
}

//-------------------- LOOP --------------------//
void loop() {
  unsigned long currentMillis = millis();

  if (currentMillis - lastSendTime >= interval) {
    lastSendTime = currentMillis;

    switch (sendStep) {
      case 0:
        sendWheelSpeedRaw(potPin, CAN);
        break;
      case 1:
        sendCoolantRaw(potPin1, CAN);
        break;
      case 2:
        sendFuelRaw(potPin2, CAN);
        break;
      case 3:
        sendLightStatus(CAN);
        break;
      case 4:
        sendGearStatus(CAN);
        break;
    }

    sendStep++;
    if (sendStep > 4) sendStep = 0;  // Reset sau khi hết 5 bước
  }
}

