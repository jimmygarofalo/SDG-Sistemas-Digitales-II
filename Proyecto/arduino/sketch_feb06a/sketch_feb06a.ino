byte pinsX[] = {29, 28, 27, 26, 25, 24, 23, 22};
byte pinsY[] = {37, 36, 35, 34, 33, 32, 31, 30};
byte pinsS[] = {45, 44, 43, 42, 41, 40, 39, 38};

void setup() {
  Serial.begin(9600);
  for(int i = 22; i < 30; i++){
    pinMode(i, OUTPUT);
  }
  for(int i = 30; i < 38; i++){
    pinMode(i, OUTPUT);
  }
  for(int i = 38; i < 46; i++){
    pinMode(i, OUTPUT);
  }
}

void loop() {
 int valX = analogRead(A0);
 byte valmapX = map(valX, 0, 1023, 0, 255);
 Serial.print(valmapX);
 Serial.print(" | ");
 for(byte i=0; i<8; i++){
  byte estadoX = bitRead(valmapX, 7-i);
  digitalWrite(pinsX[i], estadoX);
  Serial.print(estadoX);
 }
 Serial.println();

 int valY = analogRead(A1);
 byte valmapY = map(valY, 0, 1023, 0, 255);
 Serial.print(valmapY);
 Serial.print(" | ");
 for(byte i=0; i<8; i++){
  byte estadoY = bitRead(valmapY, 7-i);
  digitalWrite(pinsY[i], estadoY);
  Serial.print(estadoY);
 }
 Serial.println();

 int valS = analogRead(A2);
 byte valmapS = map(valS, 0, 1023, 0, 255);
 Serial.print(valmapS);
 Serial.print(" | ");
 for(byte i=0; i<8; i++){
  byte estadoS = bitRead(valmapS, 7-i);
  digitalWrite(pinsS[i], estadoS);
  Serial.print(estadoS);
 }
 Serial.println(); 
}
