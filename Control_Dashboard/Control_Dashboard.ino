const int mLight_right = 2;
const int mLight_left = 10;
const int mLight_high = 4;
const int mLight_low = 6;
const int mLight_fog = 11;
const int mLight_hazard = 3;
const int m_gearP = 5;
const int m_gearN = 7;
const int m_gearD = 9;
const int m_gearR = 12;
int count = 0;
const int potPin = A0;
const int potPin1 = A1;
const int potPin2 = A2;
const int mMotor = 9; 
const int speedMax = 240;
// const int potPin  = A15;  // Speed
// const int potPin1 = A13;  // Coolant
// const int potPin2 = A14;  // Fuel

// //-------------------- Công tắc đèn --------------------//
// const int mLight_right  = 31;
// const int mLight_left   = 29;
// const int mLight_high   = 33;
// const int mLight_low    = 35;
// const int mLight_fog    = 37;
// const int mLight_hazard = 39;

// //-------------------- Hộp số --------------------//
// const int m_gearP = 21;
// const int m_gearN = 23;
// const int m_gearD = 25;
// const int m_gearR = 27;

unsigned long lastPulseTime = 0;
float interval = 1000.0;
unsigned long lastPrintTime = 0;
void setup() {
  pinMode(mLight_right, INPUT_PULLUP);
  pinMode(mLight_left, INPUT_PULLUP);
  pinMode(mLight_high, INPUT_PULLUP);
  pinMode(mLight_low, INPUT_PULLUP);
  pinMode(mLight_fog, INPUT_PULLUP);
  pinMode(mLight_hazard, INPUT_PULLUP);
  //pinMode(mMotor,OUTPUT);
  pinMode(m_gearP, INPUT_PULLUP);
  pinMode(m_gearN, INPUT_PULLUP);
  pinMode(m_gearD, INPUT_PULLUP);
  pinMode(m_gearR, INPUT_PULLUP);
  //digitalWrite(mMotor,LOW);
  Serial.begin(115200);
}

void loop() {
  setModeLight();
 //setSpeed();
}

void setModeLight(){
  int indicator_right = digitalRead(mLight_right);
  int indicator_left = digitalRead(mLight_left);
  int high_beam = digitalRead(mLight_high);
  int low_beam = digitalRead(mLight_low);
  int fog_beam = digitalRead(mLight_fog);
  int hazard = digitalRead(mLight_hazard);
  int gearP = digitalRead(m_gearP);
  //int gearN = digitalRead(m_gearN);
  int gearD = digitalRead(m_gearD);
  int gearR = digitalRead(m_gearR);



  // if (indicator_right == 1){
  //   Serial.println("Right:on");
  // }
  // else{
  //   Serial.println("Right:off");
  // }
  // if(indicator_left == 1){
  //   Serial.println("Left:on");
  // }
  // else{
  //   Serial.println("Left:off");
  // }

  if(high_beam == 1){
    Serial.println("High:on");
  }
  else{
    Serial.println("High:off");
  }
  // if(low_beam == 1){
  //   Serial.println("Low:on");
  // }
  // else{
  //   Serial.println("Low:off");
  // }
  // if(fog_beam == 1){
  //   Serial.println("Fog:on");
  // }
  // else{
  //   Serial.println("Fog:off");
  // }

  // if(hazard == 1){
  //   Serial.println("Hazard:on");
  // }
  // else{
  //   Serial.println("Hazard:off");
  // }

  // if(gearP==1){
  //   Serial.println("Gear:P");
  // }
  // // if(gearN==0){
  // //   Serial.println("Gear:N");
  // // }
  // if(gearD==1){
  //   Serial.println("Gear:D");
  // }
  // if(gearR==1){
  //   Serial.println("Gear:R");
  // }
  
}

void setSpeed(){
  int potValue = analogRead(potPin);
  int potValue1 = analogRead(potPin1);
  int potValue2 = analogRead(potPin2);
  int speed = map(potValue, 0, 1023, 0, speedMax);
  int coolant = map(potValue1, 0, 1023, 0, 100);
  int fuel = map(potValue2, 0, 1023, 0, 100);
  float pulse = speed/3.6;

  if(pulse>0){
    interval = 1000/pulse;
  }
  else {
    interval = 1000000;
  }

  //  if (millis() - lastPulseTime >= interval) {
  //   digitalWrite(mMotor, HIGH);
  //   delayMicroseconds(200); 
  //   digitalWrite(mMotor, LOW);
  //   lastPulseTime = millis();
  // }

  if (millis() - lastPrintTime >= 200) {
    Serial.print("speed: ");
    Serial.println(speed);
    Serial.print("coolant: ");
    Serial.println(coolant);
    Serial.print("fuel:");
    Serial.println(fuel); 
    lastPrintTime = millis();
  }
}
