#include <Veloce.h>

void setup() {
  for(int ii = 0; ii < 8; ii++){
    pinMode(IN_PINS[ii], INPUT);
  }

  pinMode(BUILTIN_LED, OUTPUT); // DBG
  
  Serial.begin(115200);
  Serial.println("InputTester.ino for Cafe Veloce");
}

void loop(){
  for(int ii = 0; ii < 8; ii++){
    Serial.print(digitalRead(IN_PINS[ii]));
  }
  Serial.println();
  digitalWrite(BUILTIN_LED, HIGH);
  delay(500);
  digitalWrite(BUILTIN_LED, LOW);
  delay(500);
}
