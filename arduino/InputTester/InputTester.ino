#include <Veloce.h>

void setup() {
  pinMode(LEFT_IN, INPUT_PULLUP);
  pinMode(RIGHT_IN, INPUT_PULLUP);
  pinMode(BRAKE_IN, INPUT_PULLUP);

  pinMode(BUILTIN_LED, OUTPUT); // DBG
  
  Serial.begin(115200);
  Serial.println("InputTester.ino for Cafe Veloce");
}

void loop(){
  Serial.print(digitalRead(LEFT_IN));
  Serial.print(digitalRead(RIGHT_IN));
  Serial.print(digitalRead(BRAKE_IN));

  Serial.println();
  digitalWrite(BUILTIN_LED, HIGH);
  delay(500);
  digitalWrite(BUILTIN_LED, LOW);
  delay(500);
}
