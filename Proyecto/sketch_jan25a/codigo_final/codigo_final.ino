void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(22, OUTPUT);
  pinMode(23, OUTPUT);
  pinMode(24, OUTPUT);
  pinMode(25, OUTPUT);
  pinMode(26, OUTPUT);
  pinMode(27, OUTPUT);
  pinMode(28, OUTPUT);
  pinMode(29, OUTPUT);

  pinMode(30, OUTPUT);
  pinMode(31, OUTPUT);
  pinMode(32, OUTPUT);
  pinMode(33, OUTPUT);
  pinMode(34, OUTPUT);
  pinMode(35, OUTPUT);
  pinMode(36, OUTPUT);
  pinMode(37, OUTPUT);

  pinMode(38, OUTPUT);
  pinMode(39, OUTPUT);
  pinMode(40, OUTPUT);
  pinMode(41, OUTPUT);
  pinMode(42, OUTPUT);
  pinMode(43, OUTPUT);
  pinMode(44, OUTPUT);
  pinMode(45, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int potX = analogRead(A0);
  int voltajeX = potX*(255.0/1023.0);
  int potY = analogRead(A1);
  int voltajeY = potY*(255.0/1023.0);
  int potS = analogRead(A2);
  int voltajeS = potS*(255.0/1023.0);
  Serial.println(voltajeS);
  int x = 22;
  int y = 30;
  int s = 38;
  for (int i=0; i<=7; i++){
    if (voltajeX%2 == 0){
      digitalWrite(x, LOW);
    }
    else 
    {
      digitalWrite(x, HIGH);
    }
    voltajeX = voltajeX/2;
    //int valor = digitalRead(x);
    x = x + 1;
   // Serial.println(x);
  } 

  for (int i=0; i<=7; i++){
    if (voltajeY%2 == 0){
      digitalWrite(y, LOW);
    }
    else 
    {
      digitalWrite(y, HIGH);
    }
    voltajeY = voltajeY/2;
    //int valor = digitalRead(x);
    y = y + 1;
    //Serial.println(y);
   } 

   for (int i=0; i<=7; i++){
    if (voltajeS%2 == 0){
      digitalWrite(s, LOW);
    }
    else 
    {
      digitalWrite(s, HIGH);
    }
    voltajeS = voltajeS/2;
    int valor = digitalRead(x);
    s = s + 1;
    //Serial.println(s);
   } 
}
