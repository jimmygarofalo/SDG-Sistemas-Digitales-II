byte pinsX[] = {29, 28, 27, 26, 25, 24, 23, 22};

void setup() {
  Serial.begin(9600);
  for(int i = 22; i < 30; i++){
    pinMode(i, OUTPUT);
  }
}

void loop() {
 int valX = analogRead(A0);
 byte valmapX = map(valX, 0, 1023, 0, 255);
 Serial.print(valmapX);
 Serial.print("|");
 for(byte i=0; i<8; i++){
  byte estadoX = bitRead(valmapX, 7-i);
  digitalWrite(pinsX[i], estadoX);
  Serial.print(estadoX);
 }
 Serial.println(); 
}
