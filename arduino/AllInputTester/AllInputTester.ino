#include <Veloce.h>

void setup() {
  for (int i =0; i < N_IN;i++)
    pinMode(IN_PINS[i],INPUT_PULLUP);
  pinMode(BUILTIN_LED, OUTPUT); // DBG
  
  Serial.begin(115200);
  Serial.println("InputTester.ino for Cafe Veloce");
}

void loop(){
  for (int i=0; i < N_IN;i++)
    Serial.print(digitalRead(IN_PINS[i]));

  Serial.println();
  digitalWrite(BUILTIN_LED, HIGH);
  delay(500);
  digitalWrite(BUILTIN_LED, LOW);
  delay(500);
}
