
int pot1Pin = 1;
int pot2Pin = 2;
int pot3Pin = 3;
int val1 = 0;
int val2 = 0;
int val3 = 0;
int nval1 = 0;
int nval2 = 0;
int nval3 = 0;

//salidas digitales//

int sal1 = 22;
int sal2 = 23;
int sal3 = 24;
int sal4 = 25;
int sal5 = 26;
int sal6 = 27;
int sal7 = 28;
int sal8 = 29;

int sal9 = 30;
int sal10 = 31;
int sal11 = 32;
int sal12 = 33;
int sal13 = 34;
int sal14 = 35;
int sal15 = 36;
int sal16 = 37;

int sal17 = 38;
int sal18 = 39;
int sal19 = 40;
int sal20 = 41;
int sal21 = 42;
int sal22 = 43;
int sal23 = 44;
int sal24 = 45;

void setup()
{
  Serial.begin(9600);
  pinMode(sal1, OUTPUT);
  pinMode(sal2, OUTPUT);
  pinMode(sal3, OUTPUT);
  pinMode(sal4, OUTPUT);
  pinMode(sal5, OUTPUT);
  pinMode(sal6, OUTPUT);
  pinMode(sal7, OUTPUT);
  pinMode(sal8, OUTPUT);

  pinMode(sal9, OUTPUT);
  pinMode(sal10, OUTPUT);
  pinMode(sal11, OUTPUT);
  pinMode(sal12, OUTPUT);
  pinMode(sal13, OUTPUT);
  pinMode(sal14, OUTPUT);
  pinMode(sal15, OUTPUT);
  pinMode(sal16, OUTPUT);

  pinMode(sal17, OUTPUT);
  pinMode(sal18, OUTPUT);
  pinMode(sal19, OUTPUT);
  pinMode(sal20, OUTPUT);
  pinMode(sal21, OUTPUT);
  pinMode(sal22, OUTPUT);
  pinMode(sal23, OUTPUT);
  pinMode(sal24, OUTPUT);
}

void loop()
{
  val1 = analogRead(pot1Pin);
  val2 = analogRead(pot2Pin);
  val3 = analogRead(pot3Pin);
  nval1 = map(val1,0,1023,0,255);
  nval2 = map(val2,0,1023,0,255);
  nval3 = map(val3,0,1023,0,255);
  
  for (int i = 0; i<=7; i++);
  {
    int j = 29;
    if (nval1%2 == 1)
    {
      digitalWrite(j, HIGH);
    }
    else
    {
      digitalWrite(j, LOW);
    }
    nval1 = nval1 / 2;
    j = j - 1;
  }

  for (int i = 0; i<=7; i++);
  {
    int j = 37;
    if (nval2%2 == 1)
    {
      digitalWrite(j, HIGH);
    }
    else
    {
      digitalWrite(j, LOW);
    }
    nval2 = nval2 / 2;
    j = j - 1;
  }

  for (int i = 0; i<=7; i++);
  {
    int j = 45;
    if (nval3%2 == 1)
    {
      digitalWrite(j, HIGH);
    }
    else
    {
      digitalWrite(j, LOW);
    }
    nval3 = nval3 / 2;
    j = j - 1;
  }
  
}



