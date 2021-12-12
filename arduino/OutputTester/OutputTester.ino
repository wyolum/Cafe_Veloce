#include <Veloce.h>

void setup() {
  for(int ii=0; ii< N_OUT; ii++){
    pinMode(OUT_PINS[ii], OUTPUT);
  }
  
  Serial.begin(115200);

  //test common ground theory
  while(false){
    digitalWrite(OUT_PINS[1], HIGH);
    digitalWrite(OUT_PINS[2], LOW);
    delay(1000);
    digitalWrite(OUT_PINS[1], LOW);
    digitalWrite(OUT_PINS[2], HIGH);
    delay(1000);
  }

  /// test each output sequentially

  while(1){
    for(int ii=0; ii < 8; ii++){
      digitalWrite(OUT_PINS[ii], HIGH);
      delay(1000);
      digitalWrite(OUT_PINS[ii], LOW);
    }
  }
}

void loop(){
}
