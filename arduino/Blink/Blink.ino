#define ESP8266
#include <Veloce.h>

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(OUT_1, OUTPUT);
  pinMode(OUT_2, OUTPUT);
  pinMode(OUT_3, OUTPUT);
  pinMode(OUT_4, OUTPUT);
  Serial.begin(115200);
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  digitalWrite(OUT_1, HIGH);
  digitalWrite(OUT_3, HIGH);
  digitalWrite(OUT_2, LOW);
  digitalWrite(OUT_4, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(OUT_1, LOW);
  digitalWrite(OUT_3, LOW);
  digitalWrite(OUT_2, HIGH);
  digitalWrite(OUT_4, HIGH);

  delay(500);
  Serial.println("loop");
}
